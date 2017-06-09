unit uUpgradeDeamonMainForm;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  Vcl.Forms,
  ALHttpClient,
  ALWininetHttpClient,
  AlHttpCommon,
  uRoomerHttpClient,
  SysUtils,
  Vcl.ExtCtrls,
  Data.DB,
  Data.Win.ADODB,
  Vcl.Controls,
  Vcl.ComCtrls,
  acProgressBar,
  Vcl.StdCtrls,
  sLabel,
  dxGDIPlusClasses,
  System.Classes,
  URIParser, Vcl.Menus, sMemo, OverbyteIcsWndControl, OverbyteIcsHttpSrv;

type
  TfrmUpgradeDaemon = class(TForm)
    Image2: TImage;
    pbDownloadProgress: TsProgressBar;
    lblDownloaded: TsLabel;
    lblURL: TsLabel;
    timeUpgradeCheck: TTimer;
    timPerformRequest: TTimer;
    pmnuLogsMenu: TPopupMenu;
    mnuShowHide: TMenuItem;
    N1: TMenuItem;
    mnuExit: TMenuItem;
    tiTrayIcon: TTrayIcon;
    memLogs: TsMemo;
    mnuCopyLogs: TMenuItem;
    HttpServer: THttpServer;
    procedure FormCreate(Sender: TObject);
    procedure WndProc(var message: TMessage); override;
    procedure timPerformRequestTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure mnuShowHideClick(Sender: TObject);
    procedure timeUpgradeCheckTimer(Sender: TObject);
    procedure mnuCopyLogsClick(Sender: TObject);
    procedure HttpServerGetDocument(Sender, Client: TObject; var Flags: THttpGetFlag);
    procedure HttpServerClientConnect(Sender, Client: TObject; Error: Word);
    procedure HttpServerClientDisconnect(Sender, Client: TObject; Error: Word);
    procedure HttpServerServerStarted(Sender: TObject);
    procedure HttpServerServerStopped(Sender: TObject);
  private
    httpCLient: TRoomerHttpClient;
    activeSince : TDateTime;
    URIProcessor : TURIProcessor;
    FDownloadActive: Boolean;
    FCountRequests : Integer;
    function DownloadFile(const Url, filename: String): Boolean;
    procedure RemoveLanguagesFiles;
    procedure RemoveAllRoomerCaches;
    function TryCopyFile(localFilename, exeName: PWideChar): Boolean;
    procedure DownloadProgress(Sender: TObject; Read, Total: Integer);
    procedure PerformDownloadOfUpdate;
    procedure NullifyScreen;
    procedure UpdateNow;
    procedure SetDownloadActive(const Value: Boolean);
    procedure AddLog(logText: String);

    property DownloadActive : Boolean read FDownloadActive write SetDownloadActive;
  public
    { Public declarations }
  end;

var
  frmUpgradeDaemon: TfrmUpgradeDaemon;

implementation

{$R *.dfm}

uses
  Vcl.Graphics,
  IOUtils,
  Vcl.Dialogs,
  Types,
  ShellAPI,
  uStringUtils,
  uFileSystemUtils,
  UITypes,
  uDateUtils
  ;

const

  ROOMER_EXE_URI = 'Roomer.exe';
  ROOMER_XML_URI = 'Roomer.xml';

  _K = 1024; // byte
  _B = 1; // byte
  _KB = _K * _B; // kilobyte
  _MB = _K * _KB; // megabyte
  _GB = _K * _MB; // gigabyte

  WM_START_HTTP_LISTENER = WM_User + 191;
  HTTP_SERVICE_DEFAULT_PORT = 62999;


function FormatByteSize(const bytes: Longword): string;
begin

  if bytes > _GB then
    result := FormatFloat('#.## GB', bytes / _GB)
  else if bytes > _MB then
    result := FormatFloat('#.## MB', bytes / _MB)
  else if bytes > _KB then
    result := FormatFloat('#.## KB', bytes / _KB)
  else
    result := FormatFloat('#.## Bytes', bytes);
end;

procedure TfrmUpgradeDaemon.FormCreate(Sender: TObject);
begin
  memLogs.Lines.Clear;
  FCountRequests := 0;
  FDownloadActive := False;
  URIProcessor := TURIProcessor.Create;
  httpCLient := TRoomerHttpClient.Create(Self);

  with httpCLient do
  begin
    ConnectTimeout := 900;
    SendTimeout := 900;
    ReceiveTimeout := 900;
    OnDownloadProgress := DownloadProgress;
    InternetOptions := [wHttpIo_Async, wHttpIo_Ignore_cert_cn_invalid, wHttpIo_Ignore_cert_date_invalid, wHttpIo_Keep_connection,
      wHttpIo_Need_file, wHttpIo_No_cache_write, wHttpIo_Pragma_nocache, wHttpIo_Reload];
  end;

  postMessage(handle, WM_START_HTTP_LISTENER, 0, HTTP_SERVICE_DEFAULT_PORT);
end;

procedure TfrmUpgradeDaemon.WndProc(var message: TMessage);
var iPort : Integer;
begin
  if Message.Msg = WM_START_HTTP_LISTENER then
  begin
    try
      HttpServer.Port := IntToStr(message.LParam);
      HttpServer.Start;
      activeSince := Now;
    except
      if message.LParam > 62000 then
      begin
        postMessage(handle, WM_START_HTTP_LISTENER, 0, message.LParam - 1);
      end;
    end;

  end;
  inherited WndProc(message);
end;


procedure TfrmUpgradeDaemon.FormDestroy(Sender: TObject);
begin
  URIProcessor.Free;
  httpCLient.Free;
end;

procedure TfrmUpgradeDaemon.HttpServerClientConnect(Sender, Client: TObject; Error: Word);
begin
  AddLog('HTTP client connected.');
end;

procedure TfrmUpgradeDaemon.HttpServerClientDisconnect(Sender, Client: TObject; Error: Word);
begin
  AddLog('HTTP client disconnected.');
end;

procedure TfrmUpgradeDaemon.HttpServerGetDocument(Sender, Client: TObject; var Flags: THttpGetFlag);
var ClientCnx  : THttpConnection;
    AnswerString : String;
begin
  if Flags = hg401 then
      Exit;
  { It's easyer to do the cast one time. Could use with clause... }
  ClientCnx := THttpConnection(Client);
  { Count request and display a message }
  InterlockedIncrement(FCountRequests);
  AddLog('[' + FormatDateTime('HH:NN:SS', Now) + ' ' +
          ClientCnx.GetPeerAddr + '] ' + IntToStr(FCountRequests) +
          ': ' + ClientCnx.Version + ' GET ' + ClientCnx.Path);

  try
    AddLog('Received URI: ' + ClientCnx.Path);
    if FDownloadActive then
      AnswerString := 'BUSY'
    else begin
      FDownloadActive := True;
      try
        if URIProcessor.Process(ClientCnx.Path) then
        begin
          timPerformRequest.Enabled := False;
          AnswerString := URIProcessor.ProcessResult;
          timPerformRequest.Interval := 200;
          timPerformRequest.Tag := ORD(URIProcessor.ActionType);
          timPerformRequest.Enabled := True;
        end else
          AddLog('Unable to process provided URI');
      finally
        FDownloadActive := False;
      end;
    end;
  except
    ON e: Exception do
    begin
      AddLog('Error: ' + e.Message);
      AnswerString := 'ERROR';
    end;
  end;
  AddLog('Returning to caller with: ' + AnswerString);
  ClientCnx.AnswerString(Flags, '', '', '', AnswerString);
end;

procedure TfrmUpgradeDaemon.HttpServerServerStarted(Sender: TObject);
begin
  AddLog('HTTP service started on port ' + HttpServer.Port);
end;

procedure TfrmUpgradeDaemon.HttpServerServerStopped(Sender: TObject);
begin
  AddLog('HTTP service stopped on ' + HttpServer.Port);
end;

procedure TfrmUpgradeDaemon.AddLog(logText : String);
var logTime : String;
  i: Integer;
begin
  logTime := DateTimeToStr(now) + ' | ';
  memLogs.Lines.Insert(0, logTime + logText);
  for i := 5000 to memLogs.Lines.Count - 1 do
    memLogs.Lines.Delete(i);
end;

procedure TfrmUpgradeDaemon.mnuShowHideClick(Sender: TObject);
begin
  if Visible then
    Hide
  else
    Show;
end;

procedure TfrmUpgradeDaemon.SetDownloadActive(const Value: Boolean);
begin
  FDownloadActive := Value;
end;

procedure TfrmUpgradeDaemon.timeUpgradeCheckTimer(Sender: TObject);
begin
  timeUpgradeCheck.Enabled := False;
  try
    try
      if NOT FDownloadActive then
        if URIProcessor.Process('CheckForUpgrade/Roomer.exe') then
        begin
          AddLog('Event fired: Check for upgrade of Roomer.exe');
          PerformDownloadOfUpdate;
        end;
    except
      ON e: Exception do
        AddLog('Error: ' + e.Message);
    end;
  finally
    timeUpgradeCheck.Enabled := True;
  end;
end;

procedure TfrmUpgradeDaemon.timPerformRequestTimer(Sender: TObject);
var URIActionType : TURIActionType;
begin
  DownloadActive := True;
  try
    try
      timPerformRequest.Enabled := False;
      URIActionType := TURIActionType(timPerformRequest.Tag);
      case URIActionType of
        atCheckForUpgrade : begin
                              //
                               PerformDownloadOfUpdate;
                            end;
        atUpdateNow : begin
                              //
                               Sleep(5000);
                               UpdateNow;
                      end;
        atClose : begin
                              //
                               Close;
                            end;
      end;
    except
      ON e: Exception do
        AddLog('Error: ' + e.Message);
    end;
  finally
    DownloadActive := False;
  end;
end;

procedure TfrmUpgradeDaemon.DownloadProgress(Sender: TObject; Read, Total: Integer);
var
  value: Extended;
begin
  // lblDownloaded.Caption := FormatFloat('0',Read) + ' bytes';
  if Total < 1 then
    Total := 70 * _MB;
  if pbDownloadProgress.Max <> Total then
  begin
    pbDownloadProgress.Max := Total;
    pbDownloadProgress.Tag := 0;
  end;
  pbDownloadProgress.Position := Read;
  value := 100 * (Read / Total);
  if value > 100 then
    value := 100;
  lblDownloaded.Caption := FormatFloat('0.00', value) + '% of ~' + FormatByteSize(Total);
  lblDownloaded.Update;
  pbDownloadProgress.Update;
  pbDownloadProgress.Tag := pbDownloadProgress.Tag + 1;
  if pbDownloadProgress.Tag >= 20 then
  begin
    Application.ProcessMessages;
    pbDownloadProgress.Tag := 0;
  end;
end;

procedure TfrmUpgradeDaemon.mnuExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUpgradeDaemon.mnuCopyLogsClick(Sender: TObject);
begin
  memLogs.SelectAll;
  memLogs.CopyToClipboard;
  memLogs.SelLength := 0;
end;

function TfrmUpgradeDaemon.DownloadFile(const Url, filename: String): Boolean;
var
  stream: TFileStream;
  lResponseContentHeader: TALHTTPResponseHeader;
begin
  lblURL.Caption := Url;
  lResponseContentHeader := TALHTTPResponseHeader.Create;
  stream := TFileStream.Create(filename, fmCreate);
  try
    try
      httpCLient.Get(AnsiString(Url), stream, lResponseContentHeader);
      result := true;
    except
      result := false;
    end;
  finally
    stream.Free;
    lResponseContentHeader.Free;
  end;
end;

procedure TfrmUpgradeDaemon.RemoveAllRoomerCaches;
var
  files: TStringDynArray;
  i: Integer;
begin
  try
    files := TDirectory.GetFiles(RoomerAppDataPath + '\', '*.src', TSearchOption.soAllDirectories);
    for i := LOW(files) to HIGH(files) do
      SysUtils.DeleteFile(files[i]);
  except
    // Ignore - Not a vital problem
  end;
end;

procedure TfrmUpgradeDaemon.RemoveLanguagesFiles;
var
  path: String;
begin
  try
    path := TPath.Combine(RoomerAppDataPath, 'Languages');
    forceDirectories(path);
    DeleteAllFiles(TPath.Combine(path, 'RoomerLanguage*.src'));
  except
    On E: Exception do
       AddLog('Error: ' + E.Message);
  end;
end;

function TfrmUpgradeDaemon.TryCopyFile(localFilename, exeName: PWideChar): Boolean;
begin
  result := false;
  while true do
  begin
    try
      if CopyFile(localFilename, exeName, false) then
      begin
        result := true;
        Break;
      end
      else
        RaiseLastOSError;

    except on E: Exception do
      if MessageDlg('Unable to upgrade Roomer executable' + #13 +
        'at ' + exeName + #13#13 +
        'Error: ' + E.Message + #13#13 +
        '[Retry] = Try to automatically close Roomer and retry the upgrade.' + #13 +
        '[Cancel] = Cancel the upgrade for now.', mtConfirmation, [mbRetry, mbCancel], 0) = mrCancel then
      begin
        result := false;
        Break;
      end;
    end;
    KillTask(ExtractFilename(exeName));
    sleep(2000);
  end;
end;

procedure TfrmUpgradeDaemon.UpdateNow;
var
  exeName: String;
  UpgradeFilename: PWideChar;
begin
  if (NOT URIProcessor.FUpgradeFileManager.UpgradeFinished) AND
     (URIProcessor.FUpgradeFileManager.UpgradeMD5 <> '') then
  begin
    AddLog('Starting local update to version ' + URIProcessor.UpgradeFileManager.UpgradeVersion + '...');
    try
      if URIProcessor.ClearLanguage then
      begin
        AddLog('Removing languages');
        RemoveLanguagesFiles;
      end;
      if URIProcessor.ClearCache then
      begin
        AddLog('Removing all Roomer cache');
        RemoveAllRoomerCaches;
      end;

      exeName := URIProcessor.FileExePath;
      AddLog('Removing old exe file: ' + exeName);
      SysUtils.DeleteFile(exeName);
      UpgradeFilename := PWideChar(URIProcessor.UpgradeExePathName);
      if NOT TryCopyFile(UpgradeFilename, PChar(exeName)) then
        exit;
      AddLog('Touching new exe file with ' + DateTimeToStr(URIProcessor.UpgradeFileManager.UpgradeTimeStamp));
      TouchFile(exeName, URIProcessor.UpgradeFileManager.UpgradeTimeStamp);
      URIProcessor.UpgradeFileManager.Upgraded(URIProcessor.FileExeName,
            URIProcessor.UpgradeFileManager.UpgradeTimeStamp,
            URIProcessor.UpgradeFileManager.UpgradeTTL_Minutes,
            URIProcessor.UpgradeFileManager.UpgradeMD5,
            URIProcessor.UpgradeFileManager.UpgradeVersion);
      ShellExecute(Handle, 'open', PChar(exeName), nil, nil, SW_SHOWNORMAL);
      AddLog('Local update done.');
    except
      On E: Exception do
      begin
        AddLog('Error: ' + E.Message);
{$IFDEF DEBUG}
        ShowMessage('Error: ' + E.Message);
{$ENDIF}
      end;
    end;
  end;
end;


procedure TfrmUpgradeDaemon.NullifyScreen;
begin
  pbDownloadProgress.Position := 0;
  lblDownloaded.Show;
  lblDownloaded.Caption := '';
end;

procedure TfrmUpgradeDaemon.PerformDownloadOfUpdate;
var
  exeName: String;
  tempFileXML: String;
  tempFileEXE: String;

  aVersion,
  serverMD5: string;
  ttl : Integer;
  timeStamp : TDateTime;
  MD5OfDownloadedFile : String;
begin
  exeName := URIProcessor.FileExeName;

  try
   // 1. Get the XML file with the version info of thge Roomer executables...
    tempFileXML := TPath.GetTempFileName;
    SysUtils.DeleteFile(tempFileXML);
    try
      AddLog('Downloading ' + ROOMER_XML_URI + ' from ' + URIProcessor.RoomerStore );
      if DownloadFile(URIProcessor.RoomerStore + ROOMER_XML_URI, tempFileXML) then
      begin
        URIProcessor.RoomerUpgradeFileDependencymanager.FileVersionOnServer(tempFileXML,
              URIProcessor.FileExeName,
              aVersion,
              serverMD5,
              ttl,
              timeStamp);

        AddLog(format('Version found on server: Version=%s, MD5=%s, since=%s, ttl=%d',
            [
              aVersion,
              serverMD5,
              dateTimeToStr(timeStamp),
              ttl
            ]));
       // 2. Check if the currently downloaded version is the same as on server...
        if (serverMD5 <> URIProcessor.FUpgradeFileManager.UpgradeMD5)
           OR (uDateUtils.dateTimeToXmlString(timeStamp) <> uDateUtils.dateTimeToXmlString(URIProcessor.FUpgradeFileManager.UpgradeTimeStamp))
           then
        begin
         // 3. A new version is available on server.
         //    Download the release...
          tempFileEXE := TPath.GetTempFileName;
          SysUtils.DeleteFile(tempFileEXE);
          try
            AddLog('Downloading new version of ' + URIProcessor.FileExeName + ' from ' + URIProcessor.RoomerStore );
            if DownloadFile(URIProcessor.RoomerStore + URIProcessor.FileExeName, tempFileEXE) then
            begin
              lblDownloaded.Hide;
              lblDownloaded.Update;

             // 4. And make it available in the local upgrades store
              MD5OfDownloadedFile := FileMD5(tempFileEXE);
              if MD5OfDownloadedFile = serverMD5 then
                URIProcessor.FUpgradeFileManager.NewUpgrade(tempFileEXE, URIProcessor.FileExeName, timeStamp, ttl, serverMD5, aVersion)
              else
                AddLog('Error: Downloaded MD5 "' + MD5OfDownloadedFile + '" differs from MD5 provided from server, "' + serverMD5 + '"');
                URIProcessor.ClearLocalUpgradeInformation;
            end;
          finally
            if FileExists(tempFileEXE) then
              SysUtils.DeleteFile(tempFileEXE);
          end;
        end else
          AddLog('Version already exists locally.');

      end;
    finally
      if FileExists(tempFileXML) then
        SysUtils.DeleteFile(tempFileXML);
    end;
  except
    On E: Exception do
    begin
        AddLog('Error: ' + E.Message);
{$IFDEF DEBUG}
      ShowMessage('Error: ' + E.Message);
{$ENDIF}
    end;
  end;

  NullifyScreen;
end;

end.
