unit uFrmSelectCloudConfiguration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, cxPropertiesStore, Vcl.StdCtrls, sButton, sComboBox, sLabel;

type
  TFrmSelectCloudConfiguration = class(TForm)
    sLabel1: TsLabel;
    cbxEnvironment: TsComboBox;
    btnOk: TsButton;
    StoreMain: TcxPropertiesStore;
    sButton1: TsButton;
    procedure cbxEnvironmentChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareList(files : TStrings);
  end;

var
  FrmSelectCloudConfiguration: TFrmSelectCloudConfiguration;

function SelectConfigurationEnvironment(files : TStrings) : String;

implementation

{$R *.dfm}

uses Inifiles, System.IOUtils, uUtils, uVCLUtils;

function SelectConfigurationEnvironment(files : TStrings) : String;
var _FrmSelectCloudConfiguration: TFrmSelectCloudConfiguration;
begin
  _FrmSelectCloudConfiguration := TFrmSelectCloudConfiguration.Create(nil);
  try
    _FrmSelectCloudConfiguration.PrepareList(files);
    if _FrmSelectCloudConfiguration.ShowModal = mrOK then
      result := files[_FrmSelectCloudConfiguration.cbxEnvironment.ItemIndex]
    else
      Result := '';
  finally
    FreeAndNil(_FrmSelectCloudConfiguration);
  end;
end;

{ TFrmSelectCloudConfiguration }

procedure TFrmSelectCloudConfiguration.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := Application.Handle;
end;

procedure TFrmSelectCloudConfiguration.cbxEnvironmentChange(Sender: TObject);
begin
  btnOk.Enabled := cbxEnvironment.ItemIndex >= 0;
end;

procedure TFrmSelectCloudConfiguration.FormShow(Sender: TObject);
begin
  PlaceFormOnVisibleMonitor(self);
end;

procedure TFrmSelectCloudConfiguration.PrepareList(files: TStrings);
var
  path : String;
begin
  cbxEnvironment.Items.Clear;
  for path in files do
  begin
    with TInifile.Create(TPath.Combine(ExtractFilePath(Application.ExeName), path)) do
    try
      cbxEnvironment.Items.Add(ReadString('System', 'EnvironmentName', '<Unknown>'));
    finally
      free;
    end;
  end;
  StoreMain.RestoreFrom;
  cbxEnvironmentChange(nil);
end;

end.
