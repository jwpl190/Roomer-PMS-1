unit uStaffEdit2;

interface

uses
    Winapi.Windows
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , Vcl.StdCtrls
  , Vcl.Mask
  , Vcl.Buttons

  , _Glob
  , Hdata
  , ug

  , sCheckBox
  , sEdit
  , sGroupBox
  , sButton
  , Vcl.ExtCtrls
  , sPanel
  , sLabel
  , sSpeedButton
  , sMaskEdit
  , sCustomComboEdit
  , sCurrEdit
  , sSkinProvider
  , sSpinEdit
  , sComboBox, Vcl.ComCtrls, sPageControl, sBevel, sMemo, uFraCountryPanel, uFraLookupPanel

  ;

type
  TfrmStaffEdit2 = class(TForm)
    panBtn: TsPanel;
    btnCancel: TsButton;
    BtnOk: TsButton;
    pageMain: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    gbxLoginInfo: TsGroupBox;
    clabInitials: TsLabel;
    clabPassword: TsLabel;
    edInitials: TsEdit;
    edPassword: TsEdit;
    cbxName: TsGroupBox;
    clabName: TsLabel;
    clabStaffPID: TsLabel;
    edName: TsEdit;
    edStaffPID: TsEdit;
    gbxAddress: TsGroupBox;
    edAddress1: TsEdit;
    edAddress2: TsEdit;
    edAddress3: TsEdit;
    edAddress4: TsEdit;
    gbxLanguage: TsGroupBox;
    clabStaffLanguage: TsLabel;
    clabCountry: TsLabel;
    labStaffLanguage: TsLabel;
    __cbxLanguage: TsComboBox;
    sGroupBox2: TsGroupBox;
    cbxContact: TsGroupBox;
    gbxContact: TsLabel;
    clabTel2: TsLabel;
    clabFax: TsLabel;
    clabEmail: TsLabel;
    edMobile: TsEdit;
    edTel2: TsEdit;
    edTel1: TsEdit;
    edEmailAddress: TsEdit;
    sGroupBox1: TsGroupBox;
    cLabStaffType: TsLabel;
    labStaffType: TsLabel;
    cLabStaffType1: TsLabel;
    labStaffType1: TsLabel;
    cLabStaffType2: TsLabel;
    cLabStaffType3: TsLabel;
    labStaffType2: TsLabel;
    labStaffType3: TsLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    cLabStaffType4: TsLabel;
    sSpeedButton5: TsSpeedButton;
    labStaffType4: TsLabel;
    edStaffType: TsEdit;
    edStaffType1: TsEdit;
    edStaffType2: TsEdit;
    edStaffType3: TsEdit;
    edStaffType4: TsEdit;
    memIPAddresses: TsMemo;
    sPanel1: TsPanel;
    btnAddCurrent: TsButton;
    edtRepeatPassword: TsEdit;
    lblRepeatPassword: TsLabel;
    fraCountry: TfraCountryPanel;
    pnlChecks: TsPanel;
    chkActive: TsCheckBox;
    chkWindowsAuth: TsCheckBox;
    chkPmsOnly: TsCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure btnGetStaffType2Click(Sender: TObject);
    procedure btnGetStaffType1Click(Sender: TObject);
    procedure btnGetStaffType3Click(Sender: TObject);
    procedure btnGetStaffTypeClick(Sender: TObject);
    procedure btnGetStaffType4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddCurrentClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }

    tmpHolder : recStaffMemberHolder;
    zCanClose  : boolean;

    procedure initEdits;
    function FindLanguageIdInCombobox(id : Integer): Integer;
    procedure FillLanguageCombo;


  public
    { Public declarations }
    zData   : recStaffMemberHolder;
    zInsert : boolean;
  end;


  function openStaffMemberEdit(var theData : recStaffMemberHolder; isInsert : boolean) : boolean;


implementation

{$R *.dfm}

uses
    uD
  , uCurrencies
  , uCountries
  , uPriceCodes
  , uCustomerTypes2
  , uAppGlobal
  , uStaffTypes2
  , PrjConst
  , uRoomerLanguage
  , uUtils
  , uDImages;


function openStaffMemberEdit(var theData : recStaffMemberHolder; isInsert : boolean) : boolean;
var
  frmStaffEdit2: TfrmStaffEdit2;
begin
  result := false;
  frmStaffEdit2 := TfrmStaffEdit2.Create(nil);
  try
    frmStaffEdit2.zData := theData;
    frmStaffEdit2.zInsert := isInsert;
    frmStaffEdit2.ShowModal;
    if frmStaffEdit2.modalresult = mrOk then
    begin
      theData := frmStaffEdit2.zData;
      result := true;
    end
  finally
    frmStaffEdit2.Free;
  end;
end;

procedure TfrmStaffEdit2.initEdits;
begin
  pagemain.ActivePageIndex := 0;

  // Customer
  edInitials.MaxLength := 5;
  edInitials.CharCase  := ecUpperCase;
  edInitials.Enabled   := zInsert;

  edPassword.MaxLength := 20;
  edPassword.PasswordChar := '*';
  edtRepeatPassword.MaxLength := 20;
  edtRepeatPassword.PasswordChar := '*';

  edStaffPID.MaxLength := 20;
  edStaffPID.CharCase  := ecUpperCase;

  edName.MaxLength  := 100;

  edAddress1.MaxLength  := 100;
  edAddress2.MaxLength  := 100;
  edAddress3.MaxLength  := 100;
  edAddress4.MaxLength  := 100;

  edTel1.MaxLength      := 15;
  edTel2.MaxLength      := 15;
  edMobile.MaxLength       := 15;
end;


///////////////////////////////////////////////////////////////////////////////////
///
///
///////////////////////////////////////////////////////////////////////////////////


procedure TfrmStaffEdit2.FormCreate(Sender: TObject);
begin
  RoomerLanguage.TranslateThisForm(self);
  glb.PerformAuthenticationAssertion(self);
  PlaceFormOnVisibleMonitor(self);
end;

procedure TfrmStaffEdit2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmStaffEdit2.FormShow(Sender: TObject);
begin
  zcanClose := true;

  tmpHolder := zData;
  initEdits;

  if zInsert then
  begin
    activeControl := edInitials;
  end else
  begin
    activeControl := edStaffPId;
  end;

  FillLanguageCombo;

  chkActive.checked    := zData.Active          ;
  edInitials.Text      := zData.Initials        ;
  edPassword.Text      := zData.Password        ;
  edtRepeatPassword.Text := zData.Password        ;
  edStaffPID.Text      := zData.StaffPID        ;
  edName.Text          := zData.Name            ;
  edAddress1.Text      := zData.Address1        ;
  edAddress2.Text      := zData.Address2        ;
  edAddress3.Text      := zData.Address3        ;
  edAddress4.Text      := zData.Address4        ;
  fraCountry.Code := zData.Country         ;
  edTel1.Text          := zData.Tel1            ;
  edTel2.Text          := zData.Tel2            ;
  edMobile.Text        := zData.Mobile             ;
  __cbxLanguage.ItemIndex := FindLanguageIdInCombobox(zData.StaffLanguage);
  edStaffType.Text     := zData.StaffType       ;
  edStaffType1.Text    := zData.StaffType1      ;
  edStaffType2.Text    := zData.StaffType2      ;
  edStaffType3.Text    := zData.StaffType3      ;
  edStaffType4.Text    := zData.StaffType4      ;
  memIpAddresses.Text   :=  zData.IPAddresses   ;
  chkPmsOnly.checked    :=  zData.PmsOnly       ;
  ChkWindowsAuth.checked:=  zData.WindowsAuth   ;

  sTabSheet2.TabVisible := glb.ValidateHelpContext(4);
end;

procedure TfrmStaffEdit2.FillLanguageCombo;
var i : Integer;
begin
  __cbxLanguage.Items.Clear;
  for i := 0 to RoomerLanguage.LanguageCount - 1 do
    if RoomerLanguage.Language[i].Active then
      __cbxLanguage.Items.AddObject(RoomerLanguage.Language[i].EnglishName, RoomerLanguage.Language[i]);
end;


function TfrmStaffEdit2.FindLanguageIdInCombobox(id : Integer) : Integer;
var i : integer;
begin
  result := -1;
  for i := 0 to __cbxLanguage.Items.Count - 1 do
    if TRoomerLanguageItem(__cbxLanguage.Items.Objects[i]).id = id then
    begin
      result := i;
      Break;
    end;
end;


procedure TfrmStaffEdit2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  canclose := zCanClose;
end;

procedure TfrmStaffEdit2.btnGetStaffType2Click(Sender: TObject);
var
  theData : recStaffTypeHolder;
begin
  theData.StaffType := edStaffType2.text;
  openStaffTypes(actlookup,theData);
  if theData.StaffType <> '' then
  begin
    edStaffType2.text := theData.StaffType;
    labStaffType2.caption  := theData.description;
  end;
end;


procedure TfrmStaffEdit2.btnAddCurrentClick(Sender: TObject);
var MyIpAddress : String;
begin
  MyIpAddress := d.roomerMainDataSet.MyIpAddress;
  if POS(MyIpAddress, memIPAddresses.Lines.Text) < 1 then
  begin
    if TRIM(memIPAddresses.Lines.Text) = '' then
      memIPAddresses.Lines.Text := MyIpAddress
    else
      memIPAddresses.Lines.Text := memIPAddresses.Lines.Text + ',' + MyIpAddress
  end;
end;

procedure TfrmStaffEdit2.btnCancelClick(Sender: TObject);
begin
  zCanClose := true;
end;

procedure TfrmStaffEdit2.btnGetStaffType1Click(Sender: TObject);
var
  theData : recStaffTypeHolder;
begin
  theData.StaffType := edStaffType1.text;
  openStaffTypes(actlookup,theData);
  if theData.StaffType <> '' then
  begin
    edStaffType1.text := theData.StaffType;
    labStaffType1.caption  := theData.description;
  end;
end;

procedure TfrmStaffEdit2.btnGetStaffTypeClick(Sender: TObject);
var
  theData : recStaffTypeHolder;
begin
  theData.StaffType := edStaffType.text;
  openStaffTypes(actlookup,theData);
  if theData.StaffType <> '' then
  begin
    edStaffType.text := theData.StaffType;
    labStaffType.caption  := theData.description;
  end;
end;


procedure TfrmStaffEdit2.btnGetStaffType3Click(Sender: TObject);
var
  theData : recStaffTypeHolder;
begin
  theData.StaffType := edStaffType3.text;
  openStaffTypes(actlookup,theData);
  if theData.StaffType <> '' then
  begin
    edStaffType3.text := theData.StaffType;
    labStaffType3.caption  := theData.description;
  end;
end;

procedure TfrmStaffEdit2.btnGetStaffType4Click(Sender: TObject);
var
  theData : recStaffTypeHolder;
begin
  theData.StaffType := edStaffType4.text;
  openStaffTypes(actlookup,theData);
  if theData.StaffType <> '' then
  begin
    edStaffType4.text := theData.StaffType;
    labStaffType4.caption  := theData.description;
  end;
end;

procedure TfrmStaffEdit2.BtnOkClick(Sender: TObject);
var
  lFocusControl: TWincontrol;
  lParent: TWinControl;
begin
  zCanClose := false;
  lFocusControl := nil;

  if trim(edInitials.Text) = '' then
  begin
  //  showmessage('Initials is required');
	  showmessage(GetTranslatedText('shTx_StaffEdit2_InitialsRequired'));
    lFocusControl := edInitials;
  end
  else if (edInitials.text <> tmpHolder.Initials) and StaffMemberExist(edInitials.text) then
  begin
    showmessage(GetTranslatedText('shTx_StaffEdit2_InitialExists'));
    lFocusControl := edInitials;
  end
  else if (edPassword.Text <> edtRepeatPassword.Text) then
  begin
	  showmessage(GetTranslatedText('shTx_StaffEdit2_PasswordsNoEqual'));
    lFocusControl := edPassword;
  end
  else if trim(edName.Text) = '' then
  begin
   // showmessage('Name is required');
	  showmessage(GetTranslatedText('shTx_StaffEdit2_NameRequired'));
    lFocusControl := edName;
  end
  else if (trim(edStaffType.Text) = '') and
     (trim(edStaffType1.Text) = '') and
     (trim(edStaffType2.Text) = '') and
     (trim(edStaffType3.Text) = '') and
     (trim(edStaffType4.Text) = '')
  then
  begin
   // showmessage('Name is required');
	  showmessage(GetTranslatedText('shTx_StaffEdit2_RightsRequired'));
    lFocusControl := edStaffType;
  end
  else if __cbxLanguage.ItemIndex = -1 then
  begin
   // showmessage('Name is required');
	  showmessage(GetTranslatedText('shTx_StaffEdit2_LanguageRequired'));
    lFocusControl := __cbxLanguage
  end
  else
    zCanClose := true;

  if zCanClose then
  begin
    zData.Active        :=  chkActive.checked     ;
    zData.Initials       :=  edInitials.Text       ;
    zData.Password       :=  edPassword.Text       ;
    zData.StaffPID       :=  edStaffPID.Text       ;
    zData.Name           :=  edName.Text           ;
    zData.Address1       :=  edAddress1.Text       ;
    zData.Address2       :=  edAddress2.Text       ;
    zData.Address3       :=  edAddress3.Text       ;
    zData.Address4       :=  edAddress4.Text       ;
    zData.Country        :=  fraCountry.Code;
    zData.Tel1           :=  edTel1.Text           ;
    zData.Tel2           :=  edTel2.Text           ;
    zData.Mobile            :=  edMobile.Text            ;
    zData.StaffLanguage  :=  TRoomerLanguageItem(__cbxLanguage.Items.Objects[__cbxLanguage.ItemIndex]).id;
    zData.StaffType      :=  edStaffType.Text      ;
    zData.StaffType1     :=  edStaffType1.Text     ;
    zData.StaffType2     :=  edStaffType2.Text     ;
    zData.StaffType3     :=  edStaffType3.Text     ;
    zData.StaffType4     :=  edStaffType4.Text     ;
    zData.IPAddresses    :=  memIpAddresses.Text   ;
    zData.PmsOnly        :=  chkPmsOnly.checked    ;
    zData.WindowsAuth    :=  ChkWindowsAuth.checked;
  end
  else if (lFocusControl <> nil) then
  begin
    //Find Tabsheet of control to set focus to
    lParent := lFocusControl.Parent;
    while (lParent <> nil) and not (lParent is TTabsheet) do
      lParent := lParent.Parent;

    if (lParent <> nil) then
    begin
      pageMain.ActivePageIndex := TTabSheet(lParent).PageIndex;
      lFocusControl.SetFocus;
    end;
  end;


end;



///////////////////////////////////////////////////////////////////////////////////
///
///
///////////////////////////////////////////////////////////////////////////////////

end.
