unit uRoomerDataConvertMain;

interface

uses
    Winapi.Windows
  , Generics.Collections
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , Data.DB
  , Data.Win.ADODB

  , cmpRoomerDataSet

  , Vcl.ExtCtrls
  , UbuntuProgress

  , sPanel

  , cxGraphics
  , cxControls
  , cxLookAndFeels
  , cxLookAndFeelPainters
  , cxClasses
  , cxCustomData
  , cxStyles
  , cxEdit
  , dxSkinsCore
  , dxSkinCaramel
  , dxSkinCoffee
  , dxSkinDarkSide
  , dxSkinTheAsphaltWorld
  , dxSkinsDefaultPainters

  , Vcl.StdCtrls

  , sEdit
  , sLabel
  , sButton

  , kbmMemTable
  , dxmdaset
  , cxPivotGridCustomDataSet
  , cxPivotGridSummaryDataSet
  , cxCustomPivotGrid
  , cxDBPivotGrid
  , cxExportPivotGridLink

  , WinApi.ShellApi

  , sComboBox

  , dxSkinDarkRoom
  , sSkinProvider
  , sSkinManager
  , sCheckBox
  , sGroupBox, cxPropertiesStore, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, sMaskEdit, sCustomComboEdit, sTooledit, Vcl.ComCtrls, sPageControl, sMemo, sSplitter,
  acProgressBar
  ;

type
  TfrmRoomerDataConvertMain = class(TForm)
    RoomsDateDS: TDataSource;
    sLabel1: TsLabel;
    edtUsername: TsEdit;
    sLabel2: TsLabel;
    edtPassword: TsEdit;
    topPanel: TsPanel;
    bottomPanel: TsPanel;
    btnLogin: TsButton;
    btnLogout: TsButton;
    btnExcel: TsButton;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    StoreLogin: TcxPropertiesStore;
    edtHotel: TsEdit;
    sLabel3: TsLabel;
    btnProcessIntoRoomer: TsButton;
    prgWorking: TUbuntuProgress;
    sPageControl2: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet3: TsTabSheet;
    sPanel1: TsPanel;
    sSplitter1: TsSplitter;
    sPageControl1: TsPageControl;
    sTabSheet2: TsTabSheet;
    sLabel4: TsLabel;
    sPanel5: TsPanel;
    btnImportReservations: TsButton;
    btnImportCustomers: TsButton;
    edFilename: TsFilenameEdit;
    sPanel2: TsPanel;
    memoResult: TsMemo;
    sPanel3: TsPanel;
    sButton2: TsButton;
    sPageControl3: TsPageControl;
    sTabSheet4: TsTabSheet;
    sTabSheet5: TsTabSheet;
    lbStatus: TsLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnEuropa92Click(Sender: TObject);
    procedure btnStandardReservationImportClick(Sender: TObject);
    procedure btnProcessIntoRoomerClick(Sender: TObject);
    procedure btnImportCustomersClick(Sender: TObject);
    procedure edFilenameAfterDialog(Sender: TObject; var Name: string; var Action: Boolean);
    procedure sButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure getCounters(var ResId, RoomResId, PersId: Integer);
    procedure saveCounters(ResId, RoomResId, PersId: Integer);
    procedure getCustomerInfo(var custNum, custPId: String; var defaultChannel : String);
    procedure ExecStandardReservationImport(lines: TStrings; SkipEmtypRooms : boolean = False);
    procedure ExecStandardCustomersImport(lines: TStrings);
    procedure PositionProgressBar;

    { Private declarations }
  public
    { Public declarations }
    CSVFileContent : TStringList;
    procedure Breathe(iNum: Integer);
  end;

var
  frmRoomerDataConvertMain: TfrmRoomerDataConvertMain;

function LoadGridFromCSVFile(AFilename: String;
  ADelimiter:Char=';'; WithHeader:boolean=true;AddRows:boolean=true; startAt : integer = 0; endAt : Integer = 0) : TStrings;
// Loads (quasi)CSV document in AFilename into Grid, using ADelimiter as
// delimiter. If WithHeader is true, it won't import the first row.
// If AddRows is true, it will add rows if the existing grid is too short.

implementation

{$R *.dfm}

uses uDataUnit,
     DateUtils,
     uStringUtils,
     uDataBuilder,
     uCSVData
    ;


procedure TfrmRoomerDataConvertMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if btnLogout.Enabled then
      btnLogout.Click;
  except
   // Ignore exceptions
  end;
end;

procedure TfrmRoomerDataConvertMain.FormCreate(Sender: TObject);
begin
  PrepareRoomerConnection;
  CSVFileContent := TStringList.Create;
end;

procedure TfrmRoomerDataConvertMain.FormResize(Sender: TObject);
begin
  PositionProgressBar;
end;

procedure TfrmRoomerDataConvertMain.FormShow(Sender: TObject);
begin
  PositionProgressBar;
end;

procedure TfrmRoomerDataConvertMain.saveCounters(ResId, RoomResId, PersId : Integer);
var rSet : TRoomerDataSet;
begin
  rSet := RoomerDataSet.CreateNewDataset;
  try
    rSet.CommandType := cmdText;
    RoomerDataSet.DoCommand(format('UPDATE control SET LastReservation=%d, LastRoomRes=%d, LastPerson=%d', [ResId, RoomResId, PersId]));
  finally
    FreeAndNil(rSet);
  end;
end;

procedure TfrmRoomerDataConvertMain.Breathe(iNum : Integer);
begin
  if iNum mod 10 = 0 then Application.ProcessMessages;
end;

procedure TfrmRoomerDataConvertMain.sButton2Click(Sender: TObject);
var
  aFilename : string;
begin
  aFilename := ChangeFileExt(edFilename.FileName, '.sql');
  memoresult.Lines.SaveToFile(afilename);
end;

procedure TfrmRoomerDataConvertMain.btnProcessIntoRoomerClick(Sender: TObject);
var rSet : TRoomerDataSet;
    list : TList<String>;
  i: Integer;
    sList : TStrings;
    processed : TStringList;
begin
  Cursor := crHourglass;
  Application.ProcessMessages;
  try
    rSet := RoomerDataSet.CreateNewDataset;
    try
      rSet.SystemStartTransaction;
      try
        processed := TStringList.Create;
        list := TList<String>.Create;
        sList := TStringList.Create;
        sList.AddStrings(getCustomersSqlList);
        sList.AddStrings(getReservationsSqlList);
        if sList.Count=0 then exit;
        try
          lbStatus.Caption := 'Processing data into Roomer...'; lbStatus.Font.Color := clGreen; lbStatus.Update;
          prgWorking.Max := sList.Count;
          prgWorking.Position := 0;
          for i := 0 to sList.Count - 1 do
            if sList[i] <> '' then
            begin
              list.Add(sList[i]);
              prgWorking.StepIt; prgWorking.Update;
              Breathe(i);

              if list.Count > 200 then
              begin
                prgWorking.ColorSet := csBlue; prgWorking.Update;
                rSet.SystemFreeExecuteMultiple(list);
                list.Clear;
                prgWorking.ColorSet := csOriginal; prgWorking.Update;
              end;
            end;

          if list.Count > 0 then
          begin
            prgWorking.ColorSet := csBlue; prgWorking.Update;
            rSet.SystemFreeExecuteMultiple(list);
            list.Clear;
            prgWorking.ColorSet := csOriginal; prgWorking.Update;
          end;


          if packageDeals.Count > 0 then
          begin
            for i := 0 to PackageDeals.Count - 1 do
            if processed.IndexOf(PackageDeals[i].RefID) < 0 then
            begin
              rSet.CommandType := cmdText;
              rSet.CommandText := format('SELECT RoomReservation FROM roomreservations WHERE Reservation IN (SELECT Reservation FROM reservations WHERE invRefrence=''%s'')', [PackageDeals[i].RefID]) ;
              rSet.open(false);
              rSet.First;
              while NOT rSet.Eof do
              begin
                rSet.SystempackagesAdd(PackageDeals[i].Package, rSet['RoomReservation'], rSet['RoomReservation'], PackageDeals[i].Rate);
                rSet.Next;
              end;
              processed.Add(PackageDeals[i].RefID);
            end;
          end;
        finally
          sList.Free;
          list.Clear;
          list.Free;
          processed.Free;
        end;
        rSet.SystemCommitTransaction;
        lbStatus.Caption := 'Processing done!'; lbStatus.Font.Color := clBlue; lbStatus.Update;
      except
        rSet.SystemRollbackTransaction;
        lbStatus.Caption := 'ERROR: Not able to Process data into Roomer!'; lbStatus.Font.Color := clRed; lbStatus.Update;
      end;
    finally
      FreeAndNil(rSet);
    end;

    memoResult.Lines.Clear;

    memoResult.Lines.Add('');
    memoResult.Lines.Add('Import successful');

    btnLogout.Click;
  finally
    Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmRoomerDataConvertMain.PositionProgressBar;
begin
  prgWorking.Left := btnExcel.Left + btnExcel.Width + 10;
  prgWorking.Width := btnProcessIntoRoomer.Left - (btnExcel.Left + btnExcel.Width) - 20;
end;

procedure TfrmRoomerDataConvertMain.getCounters(var ResId, RoomResId, PersId : Integer);
var rSet : TRoomerDataSet;
begin
  rSet := RoomerDataSet.CreateNewDataset;
  try
    rSet.CommandType := cmdText;
    rSet.CommandText := 'SELECT (SELECT MAX(Reservation) FROM reservations) AS LastReservation, LastRoomRes, LastPerson FROM control LIMIT 1';
    rSet.open(false);

    ResId := rSet['LastReservation'];
    RoomResId := rSet['LastRoomRes'];
    PersId := rSet['LastPerson'];
  finally
    FreeAndNil(rSet);
  end;
end;

procedure TfrmRoomerDataConvertMain.getCustomerInfo(var custNum, custPId : String; var defaultChannel : String);
var rSet : TRoomerDataSet;
begin
  rSet := RoomerDataSet.CreateNewDataset;
  try
    rSet.CommandType := cmdText;
    rSet.CommandText := 'SELECT c.RackCustomer, ' +
                        '(SELECT PID FROM customers WHERE Customer=c.RackCustomer LIMIT 1) AS PID, ' +
                        '(SELECT channelManagerId FROM channels WHERE defaultchannel=1 LIMIT 1) AS defaultChannel ' +
                        'FROM control c LIMIT 1';
    rSet.open(false);

    custNum := rSet['RackCustomer'];
    custPID := rSet['PID'];
    defaultChannel := rSet['defaultChannel'];
  finally
    FreeAndNil(rSet);
  end;
end;


procedure TfrmRoomerDataConvertMain.ExecStandardCustomersImport(lines : TStrings);
var i : Integer;
begin
  start(lines[0], RoomerDataSet);
  for i := 1 to lines.Count - 1 do
     CreateStandardCustomerLine(Lines[i]);

  memoResult.lines.Clear;
  memoResult.Lines.Add('USE home100_' + Lowercase(edtHotel.Text) + ';');
  memoResult.Lines.Add('');
  memoResult.Lines.Add('-- Customers to add');
  memoResult.Lines.AddStrings(getCustomersSqlList);
end;

procedure TfrmRoomerDataConvertMain.ExecStandardReservationImport(lines : TStrings; SkipEmtypRooms : boolean = False);
var i : Integer;
    ResId, RoomResId, PersId : Integer;
    defaultChannel, custNum, custPId : String;
begin
  getCounters(ResId, RoomResId, PersId);
  getCustomerInfo(custNum, custPId, defaultChannel);

  start(lines[0], RoomerDataSet);
  for i := 1 to lines.Count - 1 do
     CreateStandardReservationsLine(Lines[i], edtUsername.Text, ResId, RoomResId, PersId, custNum, custPID, defaultChannel, SkipEmtypRooms);

  memoResult.lines.Clear;
  memoResult.lines.AddStrings(getReservationsSqlList);
  if MessageDlg('Update Control table?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    saveCounters(ResId, RoomResId, PersId);
  end;
end;

procedure TfrmRoomerDataConvertMain.btnEuropa92Click(Sender: TObject);
//var i : Integer;
//    ResId, RoomResId, PersId : Integer;
begin
//  getCounters(ResId, RoomResId, PersId);
//
//  start;
//  for i := 0 to memoEu92.Lines.Count - 1 do
//     CreateE92ReservationsLine(memoEu92.Lines[i], edtUsername.Text, ResId, RoomResId, PersId);
//
//  memoResult.Lines.Clear;
//  memoResult.Lines.AddStrings(getReservationsSqlList);
//  if MessageDlg('Update Control table?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//  begin
//    saveCounters(ResId, RoomResId, PersId);
//  end;
end;

procedure TfrmRoomerDataConvertMain.btnImportCustomersClick(Sender: TObject);
begin
  Cursor := crHourglass;
  Application.ProcessMessages;
  try
    CSVFileContent.LoadFromFile(edFilename.FileName);
    ExecStandardCustomersImport(CSVFileContent);
    btnProcessIntoRoomer.Enabled := True;
  finally
    Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmRoomerDataConvertMain.btnStandardReservationImportClick(Sender: TObject);
var i : Integer;
    ResId, RoomResId, PersId : Integer;
    defaultChannel, custNum, custPId : String;
    MissingField : String;

    max : integer;

    custList : TStrings;
    resList : TStrings;

begin
  Cursor := crHourglass;
  Application.ProcessMessages;
  try
    CSVFileContent.LoadFromFile(edFilename.FileName);
    getCounters(ResId, RoomResId, PersId);
    getCustomerInfo(custNum, custPId, defaultChannel);

    memoResult.Lines.Clear;
    start(CSVFileContent[0], RoomerDataSet);
    for i := 1 to CSVFileContent.Count - 1 do
    begin
      MissingField := CheckReservationOfLine(CSVFileContent[i]);
      if MissingField <> '' then
      begin
        ShowMessage('Cannot continue because field(s) is/are missing: ' + #13#13 +
                    MissingField+#13#13+'Line :'+inttostr(i));
        exit;
      end;
    end;

    lbStatus.Caption := 'Reading reservations...'; lbStatus.Font.Color := clGreen; lbStatus.Update;
    prgWorking.Max := CSVFileContent.Count;
    prgWorking.Position := 0;

    memoResult.Lines.BeginUpdate;
    try
      for i := 1 to CSVFileContent.Count - 1 do
      begin
         memoResult.Text := inttostr(i);
         memoResult.Text := memoResult.Text + '  ' + CSVFileContent[i];
         CreateStandardReservationsLine(CSVFileContent[i], edtUsername.Text, ResId, RoomResId, PersId, custNum, custPID, defaultChannel, false);
         prgWorking.StepIt; prgWorking.Update;
         Breathe(i);
      end;
    finally
      memoResult.Lines.EndUpdate;
    end;
//    showmessage('Ok to continue');
    memoResult.Lines.Clear;
    memoResult.Lines.Add('USE home100_' + Lowercase(edtHotel.Text) + ';');
    memoResult.Lines.Add('');
    custList := getCustomersSqlList;
    if custList.Count > 0 then
    begin
      memoResult.Lines.Add('-- Customers to add');
      memoResult.Lines.AddStrings(custList);
    end;
    memoResult.Lines.Add('');
    resList := getReservationsSqlList;
    if resList.Count > 0 then
    begin
      memoResult.Lines.Add('-- Reservations to add');
      lbStatus.Caption := 'Creation done. Reading SQL statements into list...'; lbStatus.Font.Color := clPurple; lbStatus.Update;
      memoResult.Lines.BeginUpdate;
      try
        memoResult.Lines.AddStrings(resList);
      finally
        memoResult.Lines.EndUpdate;
      end;
    end;

  //  if MessageDlg('Update Control table?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  //  begin
    lbStatus.Caption := 'Reading SQL statements done. Saving new reservation counter...'; lbStatus.Font.Color := clGreen; lbStatus.Update;
    saveCounters(ResId, RoomResId, PersId);
    btnProcessIntoRoomer.Enabled := True;

    lbStatus.Caption := 'Preparation done - ready for [Process into Roomer]!';
    lbStatus.Font.Color := clBlue; lbStatus.Update;
  //  end;
  finally
    Cursor := crDefault;
    Application.ProcessMessages;
  end;
end;

procedure TfrmRoomerDataConvertMain.edFilenameAfterDialog(Sender: TObject; var Name: string; var Action: Boolean);
begin
  memoResult.Lines.LoadFromFile(Name);
end;

procedure TfrmRoomerDataConvertMain.btnLoginClick(Sender: TObject);
begin
  RoomerDataSet.ApplicationId := 'DATA_CONVERT';
  RoomerDataSet.Login(edtHotel.Text, edtUsername.Text, edtPassword.Text, '1.0.0.0');
  btnLogout.Enabled := True;
  btnLogin.Enabled := NOT btnLogout.Enabled;
  btnImportCustomers.Enabled := btnLogout.Enabled;
  btnImportReservations.Enabled := btnLogout.Enabled;
end;

procedure TfrmRoomerDataConvertMain.btnLogoutClick(Sender: TObject);
begin
  RoomerDataSet.Logout;
  btnLogin.Enabled := True;
  btnLogout.Enabled := NOT btnLogin.Enabled;
  btnImportCustomers.Enabled := btnLogout.Enabled;
  btnImportReservations.Enabled := btnLogout.Enabled;
end;

function LoadGridFromCSVFile(AFilename: String;
  ADelimiter:Char=';'; WithHeader:boolean=true;AddRows:boolean=true; startAt : integer = 0; endAt : Integer = 0) : TStrings;
const
  DefaultRowCount=10; //Number of rows to show by default
var
  Parser: TCSVData;
  line : String;
  iCol, iRow : Integer;
  TTempStringList : TStringList;
  iStart, iEnd : Integer;
  i: Integer;
begin
  if NOT FileExists(AFilename) then exit;

  result := TStringList.Create;
  TTempStringList := TStringList.Create;
  TTempStringList.LoadFromFile(AFilename);

  line := '';
  iStart := 1;

  iEnd := TTempStringList.Count - 1;
  if startAt > iStart then
     iStart := startAt;
  if (endAt <> 0) AND (endAt < iEnd) then
     iEnd := endAt;

  for i := iStart - 1 downto 1 do
    TTempStringList.Delete(i);
  for i := TTempStringList.Count - 1 downto iEnd + 1 do
    TTempStringList.Delete(i);

  Parser:=TCSVData.Create;
  try
    Parser.Delim:=ADelimiter;
    Parser.Quote := '"';
    Parser.LoadFromStrings(TTempStringList);
    ShowMessage(inttostr(Parser.Rows));
    ShowMessage(inttostr(Parser.Cols));
//    ShowMessage(Parser.Cell[0,0]);
    for iRow := 0 to Parser.Rows - 1 do
    begin

      // Actual data import into grid cell, minding fixed rows and header
      line := '';

      for iCol := 0 to Parser.Cols do
      begin
        if line = '' then
          line := line + Parser.Cell[iRow,iCol].Replace(ADelimiter, '|')
        else
          line := line + ';' + Parser.Cell[iRow,iCol].Replace(ADelimiter, '|');
      end;

      result.Add(line);
    end;

  finally
    TTempStringList.Free;
    Parser.Free;
  end;
end;

end.
