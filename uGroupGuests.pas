unit uGroupGuests;

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
  , Vcl.ExtCtrls
  , Vcl.ComCtrls

  , Data.DB
  , hData

  , kbmMemTable
  , shellApi
  , cmpRoomerDataSet
  , cmpRoomerConnection

  , _glob
  , ug
  , uUtils
  , uappGlobal

  , sPageControl
  , sButton
  , sPanel

  , cxGraphics
  , cxControls
  , cxLookAndFeels
  , cxLookAndFeelPainters
  , cxStyles
  , cxCustomData
  , cxFilter
  , cxData
  , cxDataStorage
  , cxEdit
  , cxNavigator
  , cxDBData
  , cxGridCustomView
  , cxGridCustomTableView
  , cxGridTableView
  , cxGridBandedTableView
  , cxGridDBBandedTableView
  , cxClasses
  , cxGridLevel
  , cxGrid
  , dxSkinsCore
  , cxGridExportLink


  , dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue

  , dxSkinscxPCPainter, sGroupBox, sEdit, sLabel, sCheckBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, Vcl.Menus, dxPSCore, dxPScxCommon, cxPropertiesStore, cxButtonEdit, dxPScxPivotGridLnk,
  dxmdaset, cxMemo, cxDropDownEdit, sMemo

  , Generics.Collections, cxGridDBTableView, uReservationStateDefinitions
  , uRoomerGridForm, System.Actions, Vcl.ActnList, sStatusBar, sSplitter, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  cxTextEdit
  ;

type
  TfrmGroupGuests = class(TfrmBaseRoomerGridForm)
    pnlSelection: TsPanel;
    pnlGridButtons: TsPanel;
    lvGuests: TcxGridLevel;
    tvGuests: TcxGridDBBandedTableView;
    dsGuests: TDataSource;
    rgrShow: TsRadioGroup;
    btnExcel: TsButton;
    sButton1: TsButton;
    btnExpand: TsButton;
    btnCollapse: TsButton;
    btnEdit: TsButton;
    btnOther: TsButton;
    btnClearAddress: TsButton;
    chkCompactView: TsCheckBox;
    tvGuestsId: TcxGridDBBandedColumn;
    tvGuestsPerson: TcxGridDBBandedColumn;
    tvGuestsPersonsProfilesId: TcxGridDBBandedColumn;
    tvGueststitle: TcxGridDBBandedColumn;
    tvGuestsname: TcxGridDBBandedColumn;
    tvGuestsAddress1: TcxGridDBBandedColumn;
    tvGuestsAddress2: TcxGridDBBandedColumn;
    tvGuestsAddress3: TcxGridDBBandedColumn;
    tvGuestsAddress4: TcxGridDBBandedColumn;
    tvGuestsCountry: TcxGridDBBandedColumn;
    tvGuestsTel1: TcxGridDBBandedColumn;
    tvGuestsTel2: TcxGridDBBandedColumn;
    tvGuestsFax: TcxGridDBBandedColumn;
    tvGuestsEmail: TcxGridDBBandedColumn;
    tvGuestsNationality: TcxGridDBBandedColumn;
    tvGuestsPID: TcxGridDBBandedColumn;
    tvGuestsMainName: TcxGridDBBandedColumn;
    tvGuestsCustomer: TcxGridDBBandedColumn;
    tvGuestsState: TcxGridDBBandedColumn;
    tvGuestsPersonalIdentificationId: TcxGridDBBandedColumn;
    tvGuestsDateOfBirth: TcxGridDBBandedColumn;
    tvGuestsSocialSecurityNumber: TcxGridDBBandedColumn;
    pmnuOther: TPopupMenu;
    mnuiPrint: TMenuItem;
    N2: TMenuItem;
    mGuests: TdxMemData;
    mGuestsId: TIntegerField;
    mGuestsPerson: TIntegerField;
    mGuestsRoomReservation: TIntegerField;
    mGuestsPersonsProfilesId: TIntegerField;
    mGueststitle: TWideStringField;
    mGuestsName: TWideStringField;
    mGuestsAddress1: TWideStringField;
    mGuestsAddress2: TWideStringField;
    mGuestsAddress3: TWideStringField;
    mGuestsAddress4: TWideStringField;
    mGuestsCountry: TWideStringField;
    mGueststel1: TWideStringField;
    mGueststel2: TWideStringField;
    mGuestsFax: TWideStringField;
    mGuestsEmail: TWideStringField;
    mGuestsNationality: TWideStringField;
    mGuestsPID: TWideStringField;
    mGuestsMainName: TBooleanField;
    mGuestsCustomer: TWideStringField;
    mGuestsState: TWideStringField;
    mGuestsPersonalIdentificationId: TWideStringField;
    mGuestsDateOfBirth: TDateTimeField;
    mGuestsSocialSecurityNumber: TWideStringField;
    mGuestsCompanyName: TStringField;
    mGuestsCompVATNumber: TWideStringField;
    mGuestsCompAddress1: TStringField;
    mGuestsCompAddress2: TWideStringField;
    mGuestsCompZip: TWideStringField;
    mGuestsCompCity: TWideStringField;
    mGuestsCompCountry: TWideStringField;
    mGuestsCompTel: TWideStringField;
    mGuestsCompFax: TWideStringField;
    mGuestsCompEmail: TWideStringField;
    mCompare: TdxMemData;
    mCompareId: TIntegerField;
    mComparePerson: TIntegerField;
    mCompareRoomReservation: TIntegerField;
    mComparePersonsProfilesId: TIntegerField;
    mComparetitle: TWideStringField;
    mCompareName: TWideStringField;
    mCompareAddress1: TWideStringField;
    mCompareAddress2: TWideStringField;
    mCompareAddress3: TWideStringField;
    mCompareAddress4: TWideStringField;
    mCompareCountry: TWideStringField;
    mComparetel1: TWideStringField;
    mComparetel2: TWideStringField;
    mCompareFax: TWideStringField;
    mCompareEmail: TWideStringField;
    mCompareNationality: TWideStringField;
    mComparePID: TWideStringField;
    mCompareMainName: TBooleanField;
    mCompareCustomer: TWideStringField;
    mCompareState: TWideStringField;
    mComparePersonalIdentificationId: TWideStringField;
    mCompareDateOfBirth: TDateTimeField;
    mCompareSocialSecurityNumber: TWideStringField;
    mCompareCompanyName: TStringField;
    mCompareCompVATNumber: TWideStringField;
    mCompareCompAddress1: TStringField;
    mCompareCompAddress2: TWideStringField;
    mCompareCompZip: TWideStringField;
    mCompareCompCity: TWideStringField;
    mCompareCompCountry: TWideStringField;
    mCompareCompTel: TWideStringField;
    mCompareCompFax: TWideStringField;
    mCompareCompEmail: TWideStringField;
    mRooms: TdxMemData;
    mRoomsRoomReservation: TIntegerField;
    mRoomsRoom: TWideStringField;
    mRomsBreakfast: TWideStringField;
    mRoomsArrival: TDateTimeField;
    mRoomsDeparture: TDateTimeField;
    mRoomsNumGuests: TIntegerField;
    mRoomsRoomDescription: TWideStringField;
    mRoomsStatus: TWideStringField;
    mRoomsRoomDetails: TWideStringField;
    mRoomsRoomtype: TWideStringField;
    mRoomsRoomNotes: TWideMemoField;
    tvRoomsRecId: TcxGridDBBandedColumn;
    tvRoomsRoomReservation: TcxGridDBBandedColumn;
    tvRoomsRoom: TcxGridDBBandedColumn;
    tvRoomsBreakfast: TcxGridDBBandedColumn;
    tvRoomsrrArrival: TcxGridDBBandedColumn;
    tvRoomsrrDeparture: TcxGridDBBandedColumn;
    tvRoomsnumGuests: TcxGridDBBandedColumn;
    tvRoomsRoomDescription: TcxGridDBBandedColumn;
    tvRoomsStatusText: TcxGridDBBandedColumn;
    tvRoomsroomDetails: TcxGridDBBandedColumn;
    tvRoomsRoomType: TcxGridDBBandedColumn;
    mRoomsCompare: TdxMemData;
    IntegerField7: TIntegerField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    BooleanField3: TWideStringField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    IntegerField8: TIntegerField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    mRoomsCompareRoomNotes: TWideMemoField;
    tvguestsRoomreservation: TcxGridDBBandedColumn;
    mRoomsReservation: TIntegerField;
    mRoomsCompareReservation: TIntegerField;
    pnlNotes: TsPanel;
    memReservationPMInfo: TsMemo;
    memRoomNotes: TDBMemo;
    lblReservationNotes: TsLabel;
    lblRoomNotes: TsLabel;
    memReservationInformation: TsMemo;
    splClient: TsSplitter;
    mGuestsReservation: TIntegerField;
    cxMasterBackground: TcxStyle;
    tvGuestsRecId: TcxGridDBBandedColumn;
    mRoomsGuestName: TWideStringField;
    tvRoomsGuestName: TcxGridDBBandedColumn;
    procedure chkCompactViewClick(Sender: TObject);
    procedure rgrShowClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure btnExpandClick(Sender: TObject);
    procedure btnCollapseClick(Sender: TObject);
    procedure btnClearAddressClick(Sender: TObject);
    procedure tvGuestsCountryPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tvGuestsCountryPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure tvGuestsNationalityPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tvGuestsNationalityPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnEditClick(Sender: TObject);
    procedure tvRoomsStatusTextGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnOKClick(Sender: TObject);
    procedure mRoomsBeforePost(DataSet: TDataSet);
    procedure mGuestsAfterPost(DataSet: TDataSet);
    procedure tvGuestsCompCountryPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tvGuestsDblClick(Sender: TObject);
    procedure tvRoomsBreakfastGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    { Private declarations }
    FHasUnsavedChanges: boolean;
    FUpdatingMainName: boolean;
    function  updateSQL(id : integer) : string;
    procedure SaveChanges;
    function CountryValidate(country : string) : boolean;
    procedure DefineFilterOnMainName;

  protected
    procedure DoLoadData; override;
    procedure DoUpdateControls; override;
    procedure DoShow; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;

  public
    zReservation : integer;
    zRoomreservation : integer;
  end;

function GroupGuests(reservation,roomreservation : integer) : boolean;

implementation

{$R *.dfm}

uses
   uD
   ,uGuestCheckInForm
   ,uEditGuest
   ,uCountries
   , uSQLUtils
   , PrjConst
   , UITypes, uBreakfastTypeDefinitions;


function TfrmGroupGuests.CountryValidate(country : string) : boolean;
begin
  result :=  glb.LocateCountry(country);
end;


function GroupGuests(reservation,roomreservation : integer) : boolean;
var
  frm: TfrmGroupGuests;
begin
  frm := TfrmGroupGuests.Create(nil);
  try
    frm.zReservation     := Reservation;
    frm.zRoomreservation := RoomReservation;
    frm.ShowModal;
    Result := (frm.modalresult = mrOk);
  finally
    frm.Free;
  end;
end;

procedure TfrmGroupGuests.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    if mRooms.State = dsEdit then
    begin
      mRooms.Cancel;
      Key := 0;
    end
    else if mGuests.State = dsEdit then
    begin
      mGuests.Cancel;
      Key := 0;
    end;

  inherited;
end;

procedure TfrmGroupGuests.mGuestsAfterPost(DataSet: TDataSet);
begin
  inherited;
  FHasUnsavedChanges := true;
end;

procedure TfrmGroupGuests.mRoomsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if LoadingData or FUpdatingMainName then
    Exit;

  if mRoomsGuestName.OldValue <> mRoomsGuestName.AsString then
  begin
    mGuests.DisableControls;
    try
      FUpdatingMainName := True;
      if mGuests.Locate('roomreservation;mainname', VarArrayOf([mRoomsRoomReservation.AsInteger, True]), []) then
      begin
        mGuests.Edit;
        try
          mGuestsName.AsString := mRoomsGuestName.AsString;
          mGuests.Post;
        except
          mGuests.Cancel;
          raise;
        end;
      end;
    finally
      mGuests.EnableControls;
      FUpdatingMainName := False;
    end;
  end;

  if mRoomsNumGuests.OldValue <> mRoomsNumGuests.AsInteger then
  begin
    if (mRoomsNumGuests.OldValue < mRoomsNumGuests.AsInteger) or
       (MessageDlg(GetTranslatedText('shDecreaseRoomResGuestCount'), mtConfirmation, mbYesNo, 0) = mrYes) then
    begin
      d.RR_ChangeGuestCount(mRoomsRoomReservation.AsInteger, mGuests, mRoomsNumGuests.AsInteger);
      RefreshData;
    end
    else
      Abort
  end
  else
    FHasUnsavedChanges := true;

end;

procedure TfrmGroupGuests.DoShow;
begin
  inherited;
  DefineFilterOnMainName;
  pmnuOther.Items.Add(GridExporter.ExportSubMenu);
  DialogButtons := mbOKCancel;
end;

procedure TfrmGroupGuests.DoLoadData;
var
  s : string;
  rSet : TroomerDataset;
  lExecPlan: TRoomerExecutionPlan;
begin
  if zReservation = 0 then
    Exit;

  if FHasUnsavedChanges then
    case MessageDlg(GetTranslatedText('shSaveChangesBeforeReloadingData'), mtConfirmation, mbYesNoCancel, 0) of
      mrYes:    SaveChanges;
      mrNo:     begin end;
      mrCancel: Exit;
    end;

  lExecPLan := d.roomerMainDataSet.CreateExecutionPlan;
  try
    s := '';
    s := s+'SELECT '#10;
    s := s+'   pe.ID '#10;
    s := s+'  ,pe.Person '#10;
    s := s+'  ,pe.Reservation '#10;
    s := s+'  ,pe.RoomReservation '#10;
    s := s+'  ,pe.PersonsProfilesId '#10;
    s := s+'  ,pe.title '#10;
    s := s+'  ,pe.Name '#10;
    s := s+'  ,pe.Address1 '#10;
    s := s+'  ,pe.Address2 '#10;
    s := s+'  ,pe.Address3 '#10;
    s := s+'  ,pe.Address4 '#10;
    s := s+'  ,pe.Country '#10;
    s := s+'  ,pe.Tel1 '#10;
    s := s+'  ,pe.Tel2 '#10;
    s := s+'  ,pe.Fax '#10;
    s := s+'  ,pe.Email '#10;
    s := s+'  ,pe.Nationality '#10;
    s := s+'  ,pe.PID '#10;
    s := s+'  ,pe.MainName '#10;
    s := s+'  ,pe.Customer '#10;
    s := s+'  ,pe.CompanyName '#10;
    s := s+'  ,pe.CompVATNumber '#10;
    s := s+'  ,pe.CompAddress1 '#10;
    s := s+'  ,pe.CompAddress2 '#10;
    s := s+'  ,pe.CompZip '#10;
    s := s+'  ,pe.CompCity '#10;
    s := s+'  ,pe.CompCountry '#10;
    s := s+'  ,pe.CompTel '#10;
    s := s+'  ,pe.CompFax '#10;
    s := s+'  ,pe.CompEmail '#10;
    s := s+'  ,pe.state '#10;
    s := s+'  ,pe.PersonalIdentificationId '#10;
    s := s+'  ,pe.DateOfBirth '#10;
    s := s+'  ,pe.SocialSecurityNumber '#10;
    s := s+' FROM '#10;
    s := s+'  persons pe '#10;
    s := s+' JOIN roomreservations rr on rr.roomreservation = pe.roomreservation and rr.status not in (''X'', ''C'') '#10;
    s := s+' WHERE '#10;
    s := s+'  (pe.Reservation='+_db(zReservation)+') '#10;

    if rgrShow.itemindex = 1 then
      s := s + '  AND pe.MainName '#10;

    s := s+'  ORDER BY Mainname desc, person asc'#10;
    CopyToClipboard(s);
    lExecPLan.AddQuery(s);

    s :=      'SELECT '#10;
    s := s+'   rr.reservation '#10;
    s := s+'  ,rr.roomreservation '#10;
    s := s+'  ,rr.room '#10;
    s := s+'  ,rr.roomType '#10;
    s := s+'  ,rr.Breakfast AS Breakfast'#10;
    s := s+'  ,RR_Arrival(rr.roomreservation, false) as Arrival '#10;
    s := s+'  ,RR_Departure(rr.roomreservation, false) as Departure '#10;
    s := s+'  ,(SELECT count(*) from persons p where p.roomreservation = rr.roomreservation) as numGuests '#10;
    s := s+'  ,rr.status '#10;
    s := s+'  ,rooms.description as RoomDescription '#10;
    s := s+'  ,concat(rr.room," - ", rooms.description," - ",rr.numGuests,". Guests") as roomDetails '#10;
    s := s+'  ,rr.HiddenInfo as roomNotes'#10;
    s := s+'  ,(SELECT name FROM persons pe WHERE pe.MainName AND pe.roomreservation = rr.roomreservation LIMIT 1) AS GuestName'#10;
    s := s+' FROM '#10;
    s := s+'  roomreservations rr '#10;
    s := s+' LEFT JOIN rooms on rooms.room = rr.room'#10;
    s := s+' WHERE '#10;
    s := s+'  (rr.Reservation='+_db(zReservation)+') '#10;
    s := s+'  AND rr.status not in (''X'', ''C'') '#10;
    s := s+'  ORDER BY rr.room asc '#10;
    CopyToClipboard(s);
    lExecPLan.AddQuery(s);

    s := 'SELECT information, pminfo from reservations where reservation ='+_db(zReservation);
    lExecPLan.AddQuery(s);

    if lExecPlan.Execute() then
    begin
      rSet := lExecPlan.Results[1];
      mROoms.DisableControls;
      try
        if mRooms.active then mRooms.Close;
        if mRoomsCompare.active then mRoomsCompare.Close;
        mRoomsCompare.open;
        mRooms.open;
        rSet.First;
        mRooms.LoadFromDataSet(rset);
        mRooms.First;
        rSet.First;
        mRoomsCompare.LoadFromDataSet(rset);
        mRooms.First;
      finally
        mRooms.EnableControls;
      end;

      rSet := lExecPlan.Results[0];
      mGuests.disableControls;
      try
        if mGuests.active then mGuests.Close;
        if mCompare.active then mCompare.Close;
        mCompare.open;
        mGuests.open;
        rSet.First;
        mGuests.LoadFromDataSet(rset);
        mGuests.First;
        rSet.First;
        mCompare.LoadFromDataSet(rset);
      finally
        mGuests.enableControls;
      end;

      rSet := lExecPlan.Results[2];
      memReservationPMInfo.Lines.Text := rSet.FieldByName('pminfo').AsString;
      memReservationInformation.Lines.Text := rSet.FieldByName('information').asString;

      FHasUnsavedChanges := false;
    end;
  finally
    lExecPlan.Free;
  end;
end;

procedure TfrmGroupGuests.rgrShowClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TfrmGroupGuests.DefineFilterOnMainName;
begin
  with tvGuests.DataController.Filter do
  begin
    Options := [fcoCaseInsensitive];
    Root.Clear;
    Root.AddItem(tvGuestsMainName, foEqual, True, 'True');
  end;
end;

function TfrmGroupGuests.updateSQL(id : integer) : string;
var
  s : string;
begin
  s := '';
  s := s+'UPDATE persons '#10;
  s := s+'SET '#10;
  s := s+' PersonsProfilesId =  '+_db(mGuests.FieldByName('PersonsProfilesId').asInteger)+' '#10;
  s := s+',title = '+_db(mGuests.FieldByName('title').asString)+' '#10;
  s := s+',Name =  '+_db(mGuests.FieldByName('Name').asString)+' '#10;
  s := s+',Address1 = '+_db(mGuests.FieldByName('Address1').asString)+' '#10;
  s := s+',Address2 = '+_db(mGuests.FieldByName('Address2').asString)+' '#10;
  s := s+',Address3 = '+_db(mGuests.FieldByName('Address3').asString)+' '#10;
  s := s+',Address4 = '+_db(mGuests.FieldByName('Address4').asString)+' '#10;
  s := s+',Country = '+_db(mGuests.FieldByName('Country').asString)+' '#10;
  s := s+',Tel1 = '+_db(mGuests.FieldByName('Tel1').asString)+' '#10;
  s := s+',Tel2 = '+_db(mGuests.FieldByName('Tel2').asString)+' '#10;
  s := s+',Fax = '+_db(mGuests.FieldByName('Fax').asString)+' '#10;
  s := s+',Email = '+_db(mGuests.FieldByName('Email').asString)+' '#10;
  s := s+',Nationality = '+_db(mGuests.FieldByName('Nationality').asString)+' '#10;
  s := s+',PID = '+_db(mGuests.FieldByName('PID').asString)+' '#10;
  s := s+',MainName = '+_db(mGuests.FieldByName('MainName').asBoolean)+' '#10;
  s := s+',CompanyName = '+_db(mGuests.FieldByName('CompanyName').asString)+' '#10;
  s := s+',CompVATNumber = '+_db(mGuests.FieldByName('CompVATNumber').asString)+' '#10;
  s := s+',CompAddress1 = '+_db(mGuests.FieldByName('CompAddress1').asString)+' '#10;
  s := s+',CompAddress2 = '+_db(mGuests.FieldByName('CompAddress2').asString)+' '#10;
  s := s+',CompZip = '+_db(mGuests.FieldByName('CompZip').asString)+' '#10;
  s := s+',CompCity = '+_db(mGuests.FieldByName('CompCity').asString)+' '#10;
  s := s+',CompCountry = '+_db(mGuests.FieldByName('CompCountry').asString)+' '#10;
  s := s+',CompTel = '+_db(mGuests.FieldByName('CompTel').asString)+' '#10;
  s := s+',CompFax = '+_db(mGuests.FieldByName('CompFax').asString)+' '#10;
  s := s+',CompEmail = '+_db(mGuests.FieldByName('CompEmail').asString)+' '#10;
  s := s+',state = '+_db(mGuests.FieldByName('state').asString)+' '#10;
  s := s+',PersonalIdentificationId = '+_db(mGuests.FieldByName('PersonalIdentificationId').asString)+' '#10;
  s := s+',DateOfBirth = '+_db(mGuests.FieldByName('DateOfBirth').asDateTime)+' '#10;
  s := s+',SocialSecurityNumber = '+_db(mGuests.FieldByName('SocialSecurityNumber').asString)+' '#10;
  s := s+'WHERE '#10;
  s := s+'  ID = '+_db(id)+' ';
  result := s;
end;


procedure TfrmGroupGuests.btnClearAddressClick(Sender: TObject);
begin
  if not mGuests.eof then
  begin
    mGuests.edit;
    mGuests.FieldByName('Address1').AsString := '';
    mGuests.FieldByName('Address2').AsString := '';
    mGuests.FieldByName('Address3').AsString := '';
    mGuests.FieldByName('Address4').AsString := '';
    mGuests.post;
  end;
end;

procedure TfrmGroupGuests.btnCollapseClick(Sender: TObject);
begin
  tvData.ViewData.Collapse(false);
end;

procedure TfrmGroupGuests.btnEditClick(Sender: TObject);
var
  PersonRec : recPersonHolder;
begin
  initPersonHolder(personRec);
  PersonRec.name     := mGuests['name'   ];
  PersonRec.Address1 := mGuests['Address1'];
  PersonRec.Address2 := mGuests['Address2'];
  PersonRec.Address3 := mGuests['Address3'];
  PersonRec.Address4 := mGuests['Address4'];

  PersonRec.title      := mGuests.FieldByName('title').AsString        ;
  PersonRec.Nationality:= mGuests.FieldByName('Nationality').AsString  ;
  PersonRec.DateOfBirth:= mGuests.FieldByName('DateOfBirth').AsDateTime;

  PersonRec.PersonalIdentificationId := mGuests.FieldByName('PersonalIdentificationId').AsString ;
  PersonRec.SocialSecurityNumber     := mGuests.FieldByName('SocialSecurityNumber').AsString     ;
  PersonRec.Country                  := mGuests.FieldByName('Country').AsString                  ;
  PersonRec.Nationality              := mGuests.FieldByName('Nationality').AsString              ;
  PersonRec.Tel1                     := mGuests.FieldByName('tel1').AsString                     ;
  PersonRec.Tel2                     := mGuests.FieldByName('tel2').AsString                     ;
  PersonRec.Fax                      := mGuests.FieldByName('fax').AsString                      ;
  PersonRec.Email                    := mGuests.FieldByName('Email').AsString                    ;

  PersonRec.CompanyName     :=   mGuests.FieldByName('CompanyName').AsString     ;
  PersonRec.CompVATNumber   :=   mGuests.FieldByName('CompVATNumber').AsString   ;
  PersonRec.CompTel         :=   mGuests.FieldByName('CompTel').AsString         ;
  PersonRec.CompFax         :=   mGuests.FieldByName('CompFax').AsString         ;
  PersonRec.CompEmail       :=   mGuests.FieldByName('CompEmail').AsString       ;
  PersonRec.CompAddress1    :=   mGuests.FieldByName('CompAddress1').AsString    ;
  PersonRec.CompAddress2    :=   mGuests.FieldByName('CompAddress2').AsString    ;
  PersonRec.CompZip         :=   mGuests.FieldByName('CompZip').AsString         ;
  PersonRec.CompCity        :=   mGuests.FieldByName('CompCity').AsString        ;
  PersonRec.CompCountry     :=   mGuests.FieldByName('CompCountry').AsString     ;

  if OpenEditPerson(personRec) then
  begin
    mGuests.Edit;
    try
      mGuests.FieldByName('name').AsString     :=  PersonRec.name;
      mGuests.FieldByName('Address1').AsString :=  PersonRec.Address1;
      mGuests.FieldByName('Address2').AsString :=  PersonRec.Address2;
      mGuests.FieldByName('Address3').AsString :=  PersonRec.Address3;
      mGuests.FieldByName('Address4').AsString :=  PersonRec.Address4;

      mGuests.FieldByName('title').AsString        :=  PersonRec.title;
      mGuests.FieldByName('Nationality').AsString  := PersonRec.Nationality;
      mGuests.FieldByName('DateOfBirth').AsDateTime:= PersonRec.DateOfBirth;

      mGuests.FieldByName('PersonalIdentificationId').AsString  := PersonRec.PersonalIdentificationId;
      mGuests.FieldByName('SocialSecurityNumber').AsString      := PersonRec.SocialSecurityNumber;
      mGuests.FieldByName('Country').AsString                   := PersonRec.Country;
      mGuests.FieldByName('nationality').AsString               := PersonRec.Nationality;
      mGuests.FieldByName('tel1').AsString                      := PersonRec.Tel1;
      mGuests.FieldByName('tel2').AsString                      := PersonRec.Tel2;
      mGuests.FieldByName('fax').AsString                       := PersonRec.Fax;
      mGuests.FieldByName('Email').AsString                     := PersonRec.Email;

      mGuests.FieldByName('CompanyName'  ).AsString    := PersonRec.CompanyName     ;
      mGuests.FieldByName('CompVATNumber').AsString    := PersonRec.CompVATNumber   ;
      mGuests.FieldByName('CompTel'      ).AsString    := PersonRec.CompTel         ;
      mGuests.FieldByName('CompFax'      ).AsString    := PersonRec.CompFax         ;
      mGuests.FieldByName('CompEmail'    ).AsString    := PersonRec.CompEmail       ;
      mGuests.FieldByName('CompAddress1' ).AsString    := PersonRec.CompAddress1    ;
      mGuests.FieldByName('CompAddress2' ).AsString    := PersonRec.CompAddress2    ;
      mGuests.FieldByName('CompZip'      ).AsString    := PersonRec.CompZip         ;
      mGuests.FieldByName('CompCity'     ).AsString    := PersonRec.CompCity        ;
      mGuests.FieldByName('CompCountry'  ).AsString    := PersonRec.CompCountry     ;
      mGuests.Post;

      grData.Refresh;
    except
      mGuests.Cancel;
      raise;
    end;
  end;
end;

procedure TfrmGroupGuests.btnExcelClick(Sender: TObject);
begin
  GridExporter.ExportToExcel;
end;

procedure TfrmGroupGuests.btnExpandClick(Sender: TObject);
begin
  tvData.ViewData.Expand(true);
end;

procedure TfrmGroupGuests.btnOKClick(Sender: TObject);
begin
  inherited;
  SaveChanges;
end;

procedure TfrmGroupGuests.chkCompactViewClick(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrmGroupGuests.sButton1Click(Sender: TObject);
begin
  g.openresMemo(mRoomsReservation.AsInteger);
end;


procedure TfrmGroupGuests.tvGuestsCompCountryPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  theData : recCountryHolder;
begin
  theData.country := mGuests.fieldbyname('CompCountry').asstring;
  Countries(actlookup,theData);
  if theData.country <> '' then
  begin
    if tvGuests.DataController.DataSource.State <> dsInsert then mGuests.Edit;
    mGuests.FieldByName('CompCountry').asstring   := theData.country;
    mGuests.post;
  end;
end;

procedure TfrmGroupGuests.tvGuestsCountryPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  theData : recCountryHolder;
begin
  theData.country := mGuests.fieldbyname('Country').asstring;
  Countries(actlookup,theData);
  if theData.country <> '' then
  begin
    if tvGuests.DataController.DataSource.State <> dsInsert then mGuests.Edit;
    mGuests.FieldByName('Country').asstring   := theData.country;
    mGuests.post;
  end;
end;

procedure TfrmGroupGuests.tvGuestsCountryPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  error := not countryValidate(DisplayValue);
end;

procedure TfrmGroupGuests.tvGuestsDblClick(Sender: TObject);
begin
  inherited;
  btnEdit.CLick;
end;

procedure TfrmGroupGuests.tvGuestsNationalityPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  theData : recCountryHolder;
begin
  theData.country := mGuests.fieldbyname('Nationality').asstring;
  Countries(actlookup,theData);
  if theData.country <> '' then
  begin
    if tvGuests.DataController.DataSource.State <> dsInsert then mGuests.Edit;
    mGuests.FieldByName('Nationality').asstring   := theData.country;
    mGuests.post;
  end;
end;

procedure TfrmGroupGuests.tvGuestsNationalityPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  error := not countryValidate(DisplayValue);
end;

procedure TfrmGroupGuests.tvRoomsBreakfastGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  aText := TBreakfastType.FromDBString(aRecord.values[sender.Index]).AsReadableString;
end;

procedure TfrmGroupGuests.tvRoomsStatusTextGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  aText := TReservationState.FromResStatus(mRoomsStatus.AsString).asReadableString;
end;

procedure TfrmGroupGuests.SaveChanges;
var
  s : string;
  diff : boolean;
  ExecutionPlan: TRoomerExecutionPlan;
begin
  if tvData.DataController.DataSet.State = dsInActive then
    Exit;

  if FHasUnsavedChanges then

  mGuests.CheckBrowseMode;
  mRooms.CheckBrowseMode;

  ExecutionPlan := d.roomerMainDataSet.CreateExecutionPlan;
  try
    try
      mGuests.DisableControls;
      mRooms.DisableControls;
      try
        mGuests.First;
        mCompare.First;
        s := '';
        while not mGuests.eof do
        begin
          diff := false;
          if mCompare.Locate('person', mGuestsPerson.AsInteger, []) then
          begin
            if mGuests.FieldByName('title').AsString                    <> mCompare.FieldByName('title').AsString then diff := true;
            if mGuests.FieldByName('Name').AsString                     <> mCompare.FieldByName('Name').AsString then diff := true;
            if mGuests.FieldByName('Address1').AsString                 <> mCompare.FieldByName('Address1').AsString then diff := true;
            if mGuests.FieldByName('Address2').AsString                 <> mCompare.FieldByName('Address1').AsString then diff := true;
            if mGuests.FieldByName('Address3').AsString                 <> mCompare.FieldByName('Address1').AsString then diff := true;
            if mGuests.FieldByName('Address4').AsString                 <> mCompare.FieldByName('Address1').AsString then diff := true;
            if mGuests.FieldByName('Country').AsString                  <> mCompare.FieldByName('Country').AsString then diff := true;
            if mGuests.FieldByName('Tel1').AsString                     <> mCompare.FieldByName('Tel1').AsString then diff := true;
            if mGuests.FieldByName('Tel2').AsString                     <> mCompare.FieldByName('Tel2').AsString then diff := true;
            if mGuests.FieldByName('Fax').AsString                      <> mCompare.FieldByName('Fax').AsString then diff := true;
            if mGuests.FieldByName('Email').AsString                    <> mCompare.FieldByName('Email').AsString then diff := true;
            if mGuests.FieldByName('Nationality').AsString              <> mCompare.FieldByName('Nationality').AsString then diff := true;
            if mGuests.FieldByName('PersonalIdentificationId').AsString <> mCompare.FieldByName('PersonalIdentificationId').AsString then diff := true;
            if mGuests.FieldByName('DateOfBirth').AsString              <> mCompare.FieldByName('DateOfBirth').AsString then diff := true;
            if mGuests.FieldByName('SocialSecurityNumber').AsString     <> mCompare.FieldByName('SocialSecurityNumber').AsString then diff := true;
            if mGuests.FieldByName('State').AsString                    <> mCompare.FieldByName('State').AsString then diff := true;

            if mGuests.FieldByName('CompanyName'  ).AsString      <> mCompare.FieldByName('CompanyName'  ).AsString then diff := true;
            if mGuests.FieldByName('CompVATNumber').AsString      <> mCompare.FieldByName('CompVATNumber').AsString then diff := true;
            if mGuests.FieldByName('CompTel'      ).AsString      <> mCompare.FieldByName('CompTel'      ).AsString then diff := true;
            if mGuests.FieldByName('CompFax'      ).AsString      <> mCompare.FieldByName('CompFax'      ).AsString then diff := true;
            if mGuests.FieldByName('CompEmail'    ).AsString      <> mCompare.FieldByName('CompEmail'    ).AsString then diff := true;
            if mGuests.FieldByName('CompAddress1' ).AsString      <> mCompare.FieldByName('CompAddress1' ).AsString then diff := true;
            if mGuests.FieldByName('CompAddress2' ).AsString      <> mCompare.FieldByName('CompAddress2' ).AsString then diff := true;
            if mGuests.FieldByName('CompZip'      ).AsString      <> mCompare.FieldByName('CompZip'      ).AsString then diff := true;
            if mGuests.FieldByName('CompCity'     ).AsString      <> mCompare.FieldByName('CompCity'     ).AsString then diff := true;
            if mGuests.FieldByName('CompCountry'  ).AsString      <> mCompare.FieldByName('CompCountry'  ).AsString then diff := true;
            if mGuests.FieldByName('CompCountry'  ).AsString      <> mCompare.FieldByName('CompCountry'  ).AsString then diff := true;
          end;

          if diff then
          begin
            s := updateSQL(mGuests.FieldByName('ID').AsInteger);
            ExecutionPlan.AddExec(s);
          end;

          mGuests.Next;
          mCompare.Next;
        end;

        s := 'UPDATE roomreservations SET hiddeninfo = %s WHERE roomreservation = %d ';
        mRooms.First;
        while not mRooms.eof do
        begin
          if mRoomsCompare.Locate('roomreservation', mRoomsRoomReservation.AsInteger, []) and
             not mRoomsRoomNotes.AsString.Equals(mRoomsCompareRoomNotes.AsString) then
          begin
            ExecutionPlan.AddExec(Format(s, [_db(mRoomsRoomNotes.AsString), mRoomsRoomreservation.AsInteger]));
          end;

          mRooms.Next;
        end;

        if not ExecutionPlan.Execute(ptExec, True, True) then
          raise Exception.Create(ExecutionPlan.ExecException);

        FHasUnsavedChanges := false;
      finally
        mGuests.EnableControls;
        mRooms.EnableControls;
        tvGuests.applyBestFit;
      end;
    except
      on e: exception do
      begin
        showMessage('Error on Updating Person : '+e.message);
      end;
    end;
  finally
    freeandNil(ExecutionPlan);
  end;
end;

procedure TfrmGroupGuests.DoUpdateControls;
begin
  inherited;

  tvGuests.DataController.Filter.Active := (rgrShow.ItemIndex = 1);

  //Contact
  tvGuests.Bands[1].Visible := not  chkCompactView.Checked;
  tvGuestsTel1.Visible  := not  chkCompactView.Checked;
  tvGuestsTel2.Visible  := not  chkCompactView.Checked;
  tvGuestsFax.Visible   := not  chkCompactView.Checked;
  tvGuestsEmail.Visible := not  chkCompactView.Checked;

  //Address
  tvGuests.Bands[2].Visible := not  chkCompactView.Checked;
  tvGuestsAddress1.Visible    := not  chkCompactView.Checked;
  tvGuestsAddress2.Visible    := not  chkCompactView.Checked;
  tvGuestsAddress3.Visible    := not  chkCompactView.Checked;
  tvGuestsAddress4.Visible    := not  chkCompactView.Checked;
  tvGuestsState.Visible       := not  chkCompactView.Checked;
  tvGuestsCountry.Visible     := not  chkCompactView.Checked;
  tvGuestsNationality.Visible := not  chkCompactView.Checked;


  //Other
  tvGuests.Bands[3].Visible := not  chkCompactView.Checked;
  tvGuestsCustomer.Visible                 := not  chkCompactView.Checked;
  tvGuestsPID.Visible                      := not  chkCompactView.Checked;
  tvGuestsDateOfBirth.Visible              := not  chkCompactView.Checked;
  tvGuestsPersonalIdentificationId.Visible := not  chkCompactView.Checked;
  tvGuestsSocialSecurityNumber.Visible     := not  chkCompactView.Checked;
  tvGuests.applyBestFit;

  btnClearAddress.visible :=  not  chkCompactView.Checked;

  btnCollapse.Enabled := rgrShow.ItemIndex = 0;
  btnExpand.Enabled   := rgrShow.ItemIndex = 0;

end;

end.



