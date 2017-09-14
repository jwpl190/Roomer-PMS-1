unit uPCITokenReport;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,

  dateUtils,
  Menus,
  shellapi,
  DB,
  ADODB,

  _glob,
  hData,
  ug,
  dxCore,
  cxGridExportLink,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxControls,
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxButtons,
  cxPCdxBarPopupMenu,
  cxGroupBox,
  dxStatusBar,
  cxPC,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxDBData,
  cxClasses,
  cxCustomPivotGrid,
  cxDBPivotGrid,
  cxGridLevel,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxLabel,
  dxmdaset,
  cxPivotGridCustomDataSet,
  cxPivotGridSummaryDataSet,
  cxRadioGroup,
  cxCurrencyEdit,
  cxCalc,
  cxGridChartView,
  cxGridDBChartView,
  cxNavigator,

  ppVar,
  ppCtrls,
  ppPrnabl,
  ppClass,
  ppBands,
  ppCache,
  ppDB,
  ppDesignLayer,
  ppParameter,
  ppDBPipe,
  ppComm,
  ppRelatv,
  ppProd,
  ppReport,
  ppStrtch,
  ppSubRpt,
  ppPageBreak,
  cxCheckBox,

  //fix wwdbdatetimepicker,
  kbmMemTable, AdvEdit, AdvEdBtn, PlannerDatePicker
  , uUtils
  , cmpRoomerDataSet
  , cmpRoomerConnection, dxSkinsCore, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinMcSkin, dxSkinOffice2013White,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, cxPropertiesStore, sLabel, sGroupBox, sCheckBox, sPanel,
  Vcl.ComCtrls, sPageControl, sButton, Vcl.Mask, sMaskEdit, sCustomComboEdit, sTooledit, sStatusBar, sComboBox, dxSkinCaramel, dxSkinCoffee, dxSkinTheAsphaltWorld,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinDarkRoom, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  uRoomerForm, dxPScxCommon, dxPScxGridLnk

  ;

type
  TfrmPCITokenReport = class(TfrmBaseRoomerForm)
    pageMain: TsPageControl;
    sheetMain: TsTabSheet;
    Panel1: TsPanel;
    btnExcelS1: TsButton;
    btnReportS1: TsButton;
    Panel3: TsPanel;
    gbxPeriodSelection: TsGroupBox;
    cbxMonth: TsComboBox;
    cbxYear: TsComboBox;
    btnRefresh: TsButton;
    mTokenUsage: TdxMemData;
    mTokenUsageReservation: TIntegerField;
    mTokenUsageCustomer: TWideStringField;
    mTokenUsageName: TWideStringField;
    mTokenUsageDS: TDataSource;
    tvTokenUsage : TcxGridDBTableView;
    lvTokenUsage : TcxGridLevel;
    gTokenUsage : TcxGrid;
    rptbLodgingtaxList : TppReport;
    dplMTokenUsage : TppDBPipeline;
    ppParameterList1 : TppParameterList;
    ppDesignLayers1 : TppDesignLayers;
    ppDesignLayer1 : TppDesignLayer;
    ppHeaderBand1 : TppHeaderBand;
    ppDetailBand1 : TppDetailBand;
    ppFooterBand1 : TppFooterBand;
    rlabHeader: TppLabel;
    ppLabel3 : TppLabel;
    ppSummaryBand1 : TppSummaryBand;
    ppLabel4 : TppLabel;
    rlabMionthAndYear : TppLabel;
    rLabHotelName : TppLabel;
    rLabTimeCreated : TppLabel;
    rlabUser : TppLabel;
    ppLine1 : TppLine;
    ppSystemVariable2 : TppSystemVariable;
    ppLabel2 : TppLabel;
    ppLine3 : TppLine;
    ppLine4 : TppLine;
    ppLine5 : TppLine;
    ppLine6 : TppLine;
    ppLabel5 : TppLabel;
    ppLine7 : TppLine;
    ppLabel7 : TppLabel;
    ppLine8 : TppLine;
    ppLabel8 : TppLabel;
    ppLine9 : TppLine;
    ppLine10 : TppLine;
    rlabNumCreations: TppLabel;
    rlabNumViews: TppLabel;
    rlabNumCharges: TppLabel;
    ppDBText2 : TppDBText;
    ppDBText3 : TppDBText;
    rlabCaption_number : TppLabel;
    ppLine2 : TppLine;
    rlabCaption_date : TppLabel;
    rlabCaption_customer : TppLabel;
    ppDBText4 : TppDBText;
    ppLabel18 : TppLabel;
    ppDBCalc5 : TppDBCalc;
    ppLabel23 : TppLabel;
    chkPageBreak: TsCheckBox;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    StoreMain: TcxPropertiesStore;
    btnShowReservation: TsButton;
    mTokenUsageGuestName: TWideStringField;
    mTokenUsageVIEWS: TIntegerField;
    mTokenUsageCREATIONS: TIntegerField;
    mTokenUsageUSER_ID: TWideStringField;
    mTokenUsageIP_NUMBER: TStringField;
    mTokenUsageMACHINE_NAME: TStringField;
    mTokenUsageEVENT: TStringField;
    mTokenUsageCOST_IN_EUR: TFloatField;
    mTokenUsageTSTAMP: TDateTimeField;
    mTokenUsageContactName: TWideStringField;
    mTokenUsageArrival: TDateField;
    mTokenUsageDeparture: TDateField;
    mTokenUsageBookingId: TWideStringField;
    mTokenUsageRoom: TWideStringField;
    mTokenUsageRoomType: TWideStringField;
    mTokenUsageRoomClass: TWideStringField;
    mTokenUsageNumGuests: TIntegerField;
    tvTokenUsageRecId: TcxGridDBColumn;
    tvTokenUsageReservation: TcxGridDBColumn;
    tvTokenUsageCustomer: TcxGridDBColumn;
    tvTokenUsageName: TcxGridDBColumn;
    tvTokenUsageGuestName: TcxGridDBColumn;
    tvTokenUsageVIEWS: TcxGridDBColumn;
    tvTokenUsageCREATIONS: TcxGridDBColumn;
    tvTokenUsageUSER_ID: TcxGridDBColumn;
    tvTokenUsageIP_NUMBER: TcxGridDBColumn;
    tvTokenUsageMACHINE_NAME: TcxGridDBColumn;
    tvTokenUsageEVENT: TcxGridDBColumn;
    tvTokenUsageCOST_IN_EUR: TcxGridDBColumn;
    tvTokenUsageTSTAMP: TcxGridDBColumn;
    tvTokenUsageContactName: TcxGridDBColumn;
    tvTokenUsageArrival: TcxGridDBColumn;
    tvTokenUsageDeparture: TcxGridDBColumn;
    tvTokenUsageBookingId: TcxGridDBColumn;
    tvTokenUsageRoom: TcxGridDBColumn;
    tvTokenUsageRoomType: TcxGridDBColumn;
    tvTokenUsageRoomClass: TcxGridDBColumn;
    tvTokenUsageNumGuests: TcxGridDBColumn;
    ppDBText1: TppDBText;
    ppLabel9: TppLabel;
    rlabCostCreations: TppLabel;
    rlabCostViews: TppLabel;
    rlabCostCharges: TppLabel;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLabel14: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    rlabNumTotal: TppLabel;
    rlabCostTotal: TppLabel;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    mTokenUsageCharges: TIntegerField;
    tvTokenUsageCharges: TcxGridDBColumn;
    procedure btnRefreshClick(Sender : TObject);
    procedure btnShowReservationClick(Sender : TObject);
    procedure btnReportS1Click(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure ppHeaderBand1BeforePrint(Sender : TObject);
    procedure tvTokenUsageDblClick(Sender : TObject);
    procedure btnExcelS1Click(Sender : TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxYearCloseUp(Sender: TObject);
    procedure mTokenUsageAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure DoShow; override;
    procedure DoLoadData; override;
    procedure DoUpdateControls; override;
  public
    { Public declarations }
  end;

procedure ShowPCITokenReport;

implementation

uses
    uD
  , uReservationProfile
  , uFinishedInvoices2
  , uInvoice
  , uGuestProfile2
  , uRptbViewer
  , uSqlDefinitions
  , uAppGlobal
  , uDImages
  , uMain
  , uSQLUtils
  , uFrmOptInMessage;


{$R *.dfm}

procedure ShowPCITokenReport;
var _frmPCITokenReport : TfrmPCITokenReport;
begin
  if glb.PCIContractNotOpen then
     OpenOptInDialog(OITPCI)
  else begin
    _frmPCITokenReport := TfrmPCITokenReport.Create(nil);
    try
      _frmPCITokenReport.ShowModal;
    finally
      _frmPCITokenReport.Free;
    end;
  end;
end;

procedure TfrmPCITokenReport.btnExcelS1Click(Sender : TObject);
var
  sFilename : string;
  s : string;
begin
  dateTimeToString(s, 'yyyymmddhhnn', now);
  sFilename := g.qProgramPath + s + '_LodgingTax';
  try
    ExportGridToExcel(sFilename, gTokenUsage, true, true, true,'xls');
    ShellExecute(Handle, 'OPEN', PChar(sFilename + '.xls'), nil, nil, sw_shownormal);
  except
    on e: exception do
    begin
      showMessage('Exporting '+sFilename+' '+e.message);
    end;
  end;
end;


procedure TfrmPCITokenReport.mTokenUsageAfterScroll(DataSet: TDataSet);
begin
  UpdateControls;
end;

procedure TfrmPCITokenReport.btnRefreshClick(Sender : TObject);
begin
  RefreshData;
end;

procedure TfrmPCITokenReport.DoLoadData;
var
  xml : string;
  rSet : TRoomerDataSet;
begin
  screen.Cursor := crHourGlass;
  mTokenUsage.DisableControls;
  try
    d.roomerMainDataSet.SetTimeZoneComparedToUTC('');
    xml := d.roomerMainDataSet.downloadUrlAsString(  d.roomerMainDataSet.RoomerUri + format('paycard/token/usage/%s/%d', [cbxYear.Items[cbxYear.ItemIndex], cbxMonth.ItemIndex]));
    rSet := d.roomerMainDataSet.ActivateNewDataset(xml);
    try
      if mTokenUsage.Active then
        mTokenUsage.Close;
      mTokenUsage.open;
      rSet.First;
      while NOT rSet.Eof do
      begin
        mTokenUsage.Append;

        mTokenUsageReservation.Asinteger  := rSet['Reservation'];
        mTokenUsageCustomer.AsString      := rSet['Customer'];
        mTokenUsageName.AsString          := rSet['Name'];
        mTokenUsageGuestName.AsString     := rSet['GuestName'];
        mTokenUsageVIEWS.AsInteger        := rSet['VIEWS'];
        mTokenUsageCREATIONS.AsInteger    := rSet['CREATIONS'];
        mTokenUsageCharges.AsInteger      := rSet['CHARGES'];
        mTokenUsageUSER_ID.AsString       := rSet['USER_ID'];
        mTokenUsageIP_NUMBER.AsString     := rSet['IP_NUMBER'];
        mTokenUsageMACHINE_NAME.AsString  := rSet['MACHINE_NAME'];
        mTokenUsageEVENT.AsString         := rSet['EVENT'];
        mTokenUsageCOST_IN_EUR.AsFloat    := rSet['COST_IN_EUR'];
        mTokenUsageTSTAMP.AsDateTime      := rSet.fieldByName('TSTAMP').AsDateTime;
        mTokenUsageContactName.AsString   := rSet['ContactName'];
        mTokenUsageArrival.AsDateTime     := trunc(rSet.fieldByName('Arrival').AsDateTime);
        mTokenUsageDeparture.AsDateTime   := trunc(rSet.fieldByName('Departure').AsDateTime);
        mTokenUsageBookingId.AsString     := rSet['BookingId'];
        mTokenUsageRoom.AsString          := rSet['Room'];
        mTokenUsageRoomType.AsString      := rSet['RoomType'];
        mTokenUsageRoomClass.AsString     := rSet['RoomClass'];
        mTokenUsageNumGuests.AsInteger    := rSet['NumGuests'];

        mTokenUsage.Post;

        rSet.Next;
      end;
    finally
      freeandNil(rSet);
    end;
  finally
    mTokenUsage.EnableControls;
    d.roomerMainDataSet.SetTimeZoneComparedToUTC('UTC');
    screen.Cursor := crDefault;
  end;
end;


procedure TfrmPCITokenReport.tvTokenUsageDblClick(Sender : TObject);
begin
  btnShowReservation.Click;
end;

procedure TfrmPCITokenReport.cbxYearCloseUp(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrmPCITokenReport.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  if frmRptbViewer <> nil then
    freeandNil(frmRptbViewer);
end;

procedure TfrmPCITokenReport.FormCreate(Sender: TObject);
begin
  glb.fillListWithMonthsLong(cbxMonth.Items, 1);
  glb.fillListWithYears(cbxYear.Items, 1, False);
end;

procedure TfrmPCITokenReport.DoShow;
begin
  cbxMonth.ItemIndex := Month(Now);
  cbxYear.ItemIndex := cbxYear.Items.IndexOf(inttostr(Year(Now)));
  cbxYearCloseUp(cbxYear);
  inherited;
end;

procedure TfrmPCITokenReport.DoUpdateControls;
begin
  btnExcelS1.Enabled := NOT (mTokenUsage.Eof OR mTokenUsage.Bof);
  btnReportS1.Enabled := NOT (mTokenUsage.Eof OR mTokenUsage.Bof);
  btnShowReservation.Enabled := NOT (mTokenUsage.Eof OR mTokenUsage.Bof);
  btnRefresh.Enabled := (cbxYear.ItemIndex >= 0) AND (cbxMonth.ItemIndex >= 0);
end;

procedure TfrmPCITokenReport.ppHeaderBand1BeforePrint(Sender : TObject);
var
  s : string;
begin
  rlabMionthAndYear.Caption := inttostr(cbxMonth.ItemIndex) + '/' + cbxYear.Text;

  rLabHotelName.Caption := g.qHotelName;

  dateTimeToString(s, 'dd mmm yyyy hh:nn', now);

  s := 'Created : ' + s;
  rLabTimeCreated.Caption := s;

  s := 'User : ' + g.qUser;
  if g.qusername <> '' then
    s := s + ' - ' + g.qusername;
  rlabUser.Caption := s;
end;

procedure TfrmPCITokenReport.btnReportS1Click(Sender : TObject);
var
  aReport      : TppReport;
  sFilter      : string;

  totNumCreations,
  totNumViews,
  totNumCharges,
  totNumTotal : Integer;

  totCostCreations,
  totCostViews,
  totCostCharges,
  totCostTotal : Double;

  m : TdxMemData;
begin
  if mTokenUsage.RecordCount = 0 then
    exit;

  mTokenUsage.DisableControls;
  try
    sFilter := tvTokenUsage.DataController.Filter.FilterText;

    m := mTokenUsage;
    m.Filtered := false;

    if sFilter <> '' then
    begin
      m.Filter := sFilter ;
      m.Filtered := true;
      m.First;
    end;

    ppSummaryBand1.NewPage := chkPageBreak.Checked;

    if frmRptbViewer <> nil then
      freeandNil(frmRptbViewer);
    frmRptbViewer := TfrmRptbViewer.Create(nil);
    frmRptbViewer.show;

    totNumCreations := 0;
    totNumViews := 0;
    totNumCharges := 0;
    totNumTotal := 0;

    totCostCreations := 0.0;
    totCostViews := 0.0;
    totCostCharges := 0.0;
    totCostTotal := 0.0;

    m.First;
    while NOT m.Eof do
    begin
      totNumCreations := totNumCreations + IIF(m.FieldByName('EVENT').AsString='CREATE', 1, 0);
      totNumViews := totNumViews + IIF(m.FieldByName('EVENT').AsString='VIEW', 1, 0);
      totNumCharges := totNumCharges + IIF(m.FieldByName('EVENT').AsString='CHARGE', 1, 0);
      totNumTotal := totNumTotal + 1;

      totCostCreations := totCostCreations + IIF(m.FieldByName('EVENT').AsString='CREATE', m.FieldByName('COST_IN_EUR').AsFloat, 0.0);
      totCostViews := totCostViews + IIF(m.FieldByName('EVENT').AsString='VIEW', m.FieldByName('COST_IN_EUR').AsFloat, 0.0);
      totCostCharges := totCostCharges + IIF(m.FieldByName('EVENT').AsString='CHARGE', m.FieldByName('COST_IN_EUR').AsFloat, 0.0);
      totCostTotal := totCostTotal + m.FieldByName('COST_IN_EUR').AsFloat;
      m.Next;
    end;

    rlabNumCreations.Caption := IntToStr(totNumCreations);
    rlabNumViews.Caption := IntToStr(totNumViews);
    rlabNumCharges.Caption := IntToStr(totNumCharges);
    rlabNumTotal.Caption := IntToStr(totNumTotal);

    rlabCostCreations.Caption := Trim(FloatToStrF(totCostCreations, ffCurrency, 12, 2));
    rlabCostViews.Caption := Trim(FloatToStrF(totCostViews, ffCurrency, 12, 2));
    rlabCostCharges.Caption := Trim(FloatToStrF(totCostCharges, ffCurrency, 12, 2));
    rlabCostTotal.Caption := Trim(FloatToStrF(totCostTotal, ffCurrency, 12, 2));

    screen.Cursor := crHourglass;
    try
      aReport := rptbLodgingtaxList;
      frmRptbViewer.ppViewer1.Reset;
      frmRptbViewer.ppViewer1.Report := aReport;
      frmRptbViewer.ppViewer1.GotoPage(1);
      aReport.PrintToDevices;
    finally
      screen.Cursor := crDefault;
    end;
  finally
    mTokenUsage.EnableControls;
  end;
end;

// -------------------------------------------------------------------------------
//
// Buttons
//
//
// --------------------------------------------------------------------------------

procedure TfrmPCITokenReport.btnShowReservationClick(Sender : TObject);
begin
  if mTokenUsage.RecordCount = 0 then
    exit;
  if (mTokenUsage.Eof OR mTokenUsage.Bof) then
    exit;

  EditReservation(mTokenUsageReservation.AsInteger, -1);
end;

end.
