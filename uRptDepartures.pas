unit uRptDepartures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, kbmMemTable, cxClasses, cxPropertiesStore, Vcl.StdCtrls, sRadioButton,
  acPNG, sLabel, Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sGroupBox, sButton, Vcl.ExtCtrls, sPanel,
  uDImages, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  dxStatusBar, cxGridDBTableView, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, _glob,
  cxCurrencyEdit;

type
  TfrmDeparturesReport = class(TForm)
    FormStore: TcxPropertiesStore;
    kbmDeparturesList: TkbmMemTable;
    DeparturesListDS: TDataSource;
    pnlFilter: TsPanel;
    btnRefresh: TsButton;
    gbxSelectDates: TsGroupBox;
    rbToday: TsRadioButton;
    rbTomorrow: TsRadioButton;
    rbManualRange: TsRadioButton;
    dtDateFrom: TsDateEdit;
    dtDateTo: TsDateEdit;
    pnlExportButtons: TsPanel;
    btnExcel: TsButton;
    dxStatusBar: TdxStatusBar;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btnCheckIn: TsButton;
    btnProfile: TsButton;
    btnInvoice: TsButton;
    pmnuInvoiceMenu: TPopupMenu;
    R1: TMenuItem;
    G1: TMenuItem;
    pnmuGridMenu: TPopupMenu;
    mnuCheckin: TMenuItem;
    mnuProfile: TMenuItem;
    mnuInvoice: TMenuItem;
    mnuRoomInvoice: TMenuItem;
    mnuGroupInvoice: TMenuItem;
    lvDeparturesList: TcxGridLevel;
    grDeparturesList: TcxGrid;
    tvDeparturesList: TcxGridDBBandedTableView;
    tvDeparturesListCheckOutDate: TcxGridDBBandedColumn;
    tvDeparturesListRoomerReservationId: TcxGridDBBandedColumn;
    tvDeparturesListRoomerRoomReservationId: TcxGridDBBandedColumn;
    tvDeparturesListRoom: TcxGridDBBandedColumn;
    tvDeparturesListRoomType: TcxGridDBBandedColumn;
    tvDeparturesListGuestName: TcxGridDBBandedColumn;
    tvDeparturesListNumGuests: TcxGridDBBandedColumn;
    tvDeparturesListArrival: TcxGridDBBandedColumn;
    tvDeparturesListDeparture: TcxGridDBBandedColumn;
    tvDeparturesListExpectedCheckOutTime: TcxGridDBBandedColumn;
    tvDeparturesListCustomer: TcxGridDBBandedColumn;
    tvDeparturesListCompanyName: TcxGridDBBandedColumn;
    tvDeparturesListNumNights: TcxGridDBBandedColumn;
    tvDeparturesListAverageRatePerNight: TcxGridDBBandedColumn;
    tvDeparturesListTotalRent: TcxGridDBBandedColumn;
    tvDeparturesListTotalSale: TcxGridDBBandedColumn;
    tvDeparturesListTotalPayments: TcxGridDBBandedColumn;
    tvDeparturesListBalance: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbRadioButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure kbmDeparturesListAfterScroll(DataSet: TDataSet);
    procedure btnCheckInClick(Sender: TObject);
    procedure mnuRoomInvoiceClick(Sender: TObject);
    procedure btnProfileClick(Sender: TObject);
    procedure mnuGroupInvoiceClick(Sender: TObject);
    procedure grDeparturessListDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dtDateFromCloseUp(Sender: TObject);
    procedure dtDateToCloseUp(Sender: TObject);
    procedure tvDeparturesListAverageRatePerNightGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
  private
    FRefreshingdata: boolean;
    { Private declarations }
    procedure UpdateControls;
    procedure SetManualDates(aFrom, aTo: TDate);
    procedure RefreshData;
    function ConstructSQL2: string;
    function getsql(DateFrom,DateTo : Tdate) : string;
  protected
    procedure WndProc(var message: TMessage); override;
  public
    { Public declarations }
  end;


/// <summary>
///   Global access point for showing the arrival report form, If Modalresult is OK then True is returned
/// </summary>
function ShowDeparturesReport: boolean;

implementation

{$R *.dfm}

uses
    uRoomerLanguage
  , uAppGlobal
  , uG
  , uUtils
  , cxGridExportLink
  , ShellApi
  , cmpRoomerDataset
  , uD
  , PrjConst
  , hData
  , uAlerts
  , uProvideARoom2
  , uGuestCheckInForm
  , uInvoice
  , uReservationProfile
  ;


const

WM_REFRESH_DATA = WM_User + 51;

function TfrmDeparturesReport.getsql(DateFrom,DateTo : Tdate) : string;
var
 s : string;
begin
  s := s+'SELECT ';
  s := s+'    CAST(CheckOutDate AS DATE) AS CheckOutDate, ';
  s := s+'    Reservation AS RoomerReservationId, ';
  s := s+'    RoomReservation AS RoomerRoomReservationId, ';
  s := s+'    Room, ';
  s := s+'    RoomType, ';
  s := s+'    GuestName, ';
  s := s+'    NumGuests, ';
  s := s+'    CAST(Arrival AS DATE) AS Arrival, ';
  s := s+'    CAST(Departure AS DATE) AS Departure, ';
  s := s+'    ExpectedCheckOutTime, ';
  s := s+'    Customer, ';
  s := s+'    CompanyName, ';
  s := s+'    NumNights, ';
  s := s+'    TotalRent / NumNights AS AverageRatePerNight, ';
  s := s+'    TotalRent, ';
  s := s+'    TotalSale, ';
  s := s+'    TotalPayments, ';
  s := s+'    TotalRent + TotalSale - TotalPayments AS Balance, ';
  s := s+'    Currency, ';
  s := s+'    CurrencyRate ';
  s := s+'FROM ';
  s := s+'    (SELECT ';
  s := s+'        ADate AS CheckOutDate, ';
  s := s+'            yyy.Reservation, ';
  s := s+'            yyy.RoomReservation, ';
  s := s+'            yyy.Room, ';
  s := s+'            yyy.RoomType, ';
  s := s+'            pe.Name AS GuestName, ';
  s := s+'            cu.Customer, ';
  s := s+'            cu.Surname AS CompanyName, ';
  s := s+'            DATE((SELECT ';
  s := s+'                    ADate ';
  s := s+'                FROM ';
  s := s+'                    roomsdate ';
  s := s+'                WHERE ';
  s := s+'                    RoomReservation = yyy.RoomReservation ';
  s := s+'                        AND ResFlag = yyy.ResFlag ';
  s := s+'                ORDER BY ADate ';
  s := s+'                LIMIT 1)) AS Arrival, ';
  s := s+'            DATE(DATE_ADD((SELECT ';
  s := s+'                    ADate ';
  s := s+'                FROM ';
  s := s+'                    roomsdate ';
  s := s+'                WHERE ';
  s := s+'                    RoomReservation = yyy.RoomReservation ';
  s := s+'                        AND ResFlag = yyy.ResFlag ';
  s := s+'                ORDER BY ADate DESC ';
  s := s+'                LIMIT 1), INTERVAL 1 DAY)) AS Departure, ';
  s := s+'            ROUND(SUM(RateWithDiscount + IFNULL(IF(CityTaxIncl, 0, CityTaxPerDay), 0.00)), 2) * CurrencyRate AS TotalRent, ';
  s := s+'            IFNULL((SELECT ';
  s := s+'                    SUM(Number * Price) ';
  s := s+'                FROM ';
  s := s+'                    invoicelines il ';
  s := s+'                WHERE ';
  s := s+'                    InvoiceNumber = - 1 ';
  s := s+'                        AND RoomReservation = yyy.RoomReservation), 0.00) AS TotalSale, ';
  s := s+'            IFNULL((SELECT ';
  s := s+'                    SUM(Amount) ';
  s := s+'                FROM ';
  s := s+'                    payments ';
  s := s+'                WHERE ';
  s := s+'                    InvoiceNumber = - 1 ';
  s := s+'                        AND RoomReservation = yyy.RoomReservation), 0.00) AS TotalPayments, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(id) ';
  s := s+'                FROM ';
  s := s+'                    persons pe1 ';
  s := s+'                WHERE ';
  s := s+'                    pe1.RoomReservation = yyy.RoomReservation) AS NumGuests, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(id) ';
  s := s+'                FROM ';
  s := s+'                    roomsdate rd1 ';
  s := s+'                WHERE ';
  s := s+'                    rd1.RoomReservation = yyy.RoomReservation ';
  s := s+'                        AND rd1.ResFlag = yyy.ResFlag) AS NumNights, ';

                                                    // ATH
  s := s+'            IFNULL(rr.ExpectedCheckOutTime, ''12:00'') AS ExpectedCheckOutTime, ';
  s := s+'            yyy.Currency, ';
  s := s+'            yyy.CurrencyRate ';
  s := s+'    FROM ';
  s := s+'        (SELECT ';
  s := s+'        Currency, ';
  s := s+'        CurrencyRate, ';
  s := s+'        ADate, ';
  s := s+'            ResFlag, ';
  s := s+'            RateExcl, ';
  s := s+'            RateIncl - RateExcl AS VAT, ';
  s := s+'            RateIncl, ';
  s := s+'            IF(Discount > 0, IF(isPercentage, RateIncl - (RateIncl * Discount / 100), RateIncl - Discount), RateIncl) AS RateWithDiscount, ';
  s := s+'            CityTaxInCl, ';
  s := s+'            NumNights, ';
  s := s+'            NumGuests, ';
  s := s+'            IF(CityTaxIncl, 0, IF(taxPercentage, taxBaseAmount * taxAmount / 100, taxAmount) * IF(taxRoomNight, 1, IF(taxGuestNight, NumGuests, IF(taxGuestNight, NumGuests / NumNights, IF(taxBooking, 1 / NumNights, 1))))) / CurrencyRate AS CityTaxPerDay, ';
  s := s+'           taxPercentage, ';
  s := s+'            taxRetaxable, ';
  s := s+'            taxRoomNight, ';
  s := s+'            taxGuestNight, ';
  s := s+'            taxGuest, ';
  s := s+'            taxBooking, ';
  s := s+'            taxNettoAmountBased, ';
  s := s+'            xxx.RoomReservation, ';
  s := s+'            xxx.Reservation, ';
  s := s+'            xxx.Room, ';
  s := s+'            xxx.RoomType ';
  s := s+'    FROM ';
  s := s+'        (SELECT ';
  s := s+'        DATE_ADD((SELECT ';
  s := s+'                    rd1.ADate ';
  s := s+'                FROM ';
  s := s+'                    roomsdate rd1 ';
  s := s+'                WHERE ';
  s := s+'                    rd1.RoomReservation = rd.RoomReservation ';
  s := s+'                ORDER BY rd1.ADate DESC ';
  s := s+'                LIMIT 1), INTERVAL 1 DAY) AS ADate, ';
  s := s+'            rd.ResFlag, ';
  s := s+'            RoomRate AS RateIncl, ';
  s := s+'            RoomRate / (1 + vc.VATPercentage / 100) AS RateExcl, ';
  s := s+'            TO_BOOL(IF(tx.INCL_EXCL = ''INCLUDED'' ';
  s := s+'                OR (tx.INCL_EXCL = ''PER_CUSTOMER'' ';
  s := s+'                AND cu.StayTaxIncluted), 1, 0)) AS CityTaxInCl, ';
  s := s+'            tx.AMOUNT AS taxAmount, ';
  s := s+'            TO_BOOL(IF(tx.TAX_TYPE = ''FIXED_AMOUNT'', 0, 1)) AS taxPercentage, ';
  s := s+'            TO_BOOL(IF(tx.RETAXABLE = ''FALSE'', 0, 1)) AS taxRetaxable, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = ''ROOM_NIGHT'', 1, 0)) AS taxRoomNight, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = ''GUEST_NIGHT'', 1, 0)) AS taxGuestNight, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = ''GUEST'', 1, 0)) AS taxGuest, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = ''BOOKING'', 1, 0)) AS taxBooking, ';
  s := s+'            TO_BOOL(IF(tx.NETTO_AMOUNT_BASED = ''FALSE'', 0, 1)) AS taxNettoAmountBased, ';
  s := s+'            IF(tx.NETTO_AMOUNT_BASED = ''FALSE'', RoomRate, RoomRate / (1 + vc.VATPercentage / 100)) AS taxBaseAmount, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(rd1.ID) ';
  s := s+'                FROM ';
  s := s+'                    roomsdate rd1 ';
  s := s+'                WHERE ';
  s := s+'                    rd1.RoomReservation = rr.RoomReservation ';
  s := s+'                        AND NOT rd1.ResFlag IN (''X'' , ''C'') ';
  s := s+'                GROUP BY rd1.RoomReservation) AS NumNights, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(pe.ID) ';
  s := s+'                FROM ';
  s := s+'                    persons pe ';
  s := s+'                WHERE ';
  s := s+'                    pe.RoomReservation = rr.RoomReservation ';
  s := s+'                GROUP BY pe.RoomReservation) AS NumGuests, ';
  s := s+'            cur.Currency AS Currency, ';
  s := s+'            cur.AValue AS CurrencyRate, ';
  s := s+'            rd.Discount, ';
  s := s+'            rd.isPercentage, ';
  s := s+'            rd.RoomReservation, ';
  s := s+'            rd.Reservation, ';
  s := s+'            rd.Room, ';
  s := s+'            rd.RoomType ';
  s := s+'    FROM ';
  s := s+'        roomsdate rd ';
  s := s+'    JOIN currencies cur ON cur.Currency = rd.Currency ';
  s := s+'    JOIN roomreservations rr ON rr.RoomReservation = rd.RoomReservation ';
  s := s+'    JOIN reservations r ON r.Reservation = rd.Reservation ';
  s := s+'    JOIN customers cu ON cu.Customer = r.Customer ';
  s := s+'    JOIN control co ';
  s := s+'    JOIN home100.TAXES tx ON HOTEL_ID = co.CompanyId ';
  s := s+'        AND VALID_FROM <= rd.ADate ';
  s := s+'        AND VALID_TO >= rd.ADate ';
  s := s+'    JOIN items i ON i.Item = co.RoomRentItem ';
  s := s+'    JOIN itemtypes it ON it.ItemType = i.ItemType ';
  s := s+'    JOIN vatcodes vc ON vc.VATCode = it.VATCode, ';

  s := s+'(SELECT ';
  s := s+'   '+_dateToSqlDate(DateFrom)+' AS StartDate, '+_dateToSqlDate(DateFrom)+' AS EndDate) AS params ';
  s := s+'    WHERE ';
  s := s+'        rd.RoomReservation IN (SELECT ';
  s := s+'                RoomReservation ';
  s := s+'            FROM ';
  s := s+'                roomsdate rd ';
  s := s+'            WHERE ';
  s := s+'                rd.ADate BETWEEN DATE_ADD(params.StartDate, INTERVAL - 1 DAY) AND DATE_ADD(params.EndDate, INTERVAL - 1 DAY) ';
  s := s+'                    AND rd.ResFlag = ''G'' ';
  s := s+'                    AND (SELECT ';
  s := s+'                        rd1.ADate ';
  s := s+'                    FROM ';
  s := s+'                        roomsdate rd1 ';
  s := s+'                    WHERE ';
  s := s+'                        rd1.RoomReservation = rd.RoomReservation ';
  s := s+'                    ORDER BY rd1.ADate DESC ';
  s := s+'                    LIMIT 1) = rd.ADate) ';
  s := s+'            AND NOT ResFlag IN (''X'' , ''C'') ';
  s := s+'            AND rd.Paid = 0) xxx) yyy ';
  s := s+'    JOIN roomreservations rr ON rr.RoomReservation = yyy.RoomReservation ';
  s := s+'    JOIN reservations r ON r.Reservation = yyy.Reservation ';
  s := s+'    JOIN customers cu ON cu.Customer = r.Customer AND cu.Active ';
  s := s+'    JOIN persons pe ON pe.RoomReservation = yyy.RoomReservation ';
  s := s+'        AND pe.MainName = 1 ';
  s := s+'    JOIN channels ch ON ch.Id = r.Channel ';
  s := s+'    JOIN hotelconfigurations ho ';
  s := s+'    GROUP BY yyy.RoomReservation , CheckOutDate) zzz ';
  s := s+'ORDER BY CheckOutDate , Room ';
  result := s;
end;


function ShowDeparturesReport: boolean;
var
  frm: TfrmDeparturesReport;
begin
  frm := TfrmDeparturesReport.Create(nil);
  try
    frm.ShowModal;
    Result := (frm.modalresult = mrOk);
  finally
    frm.Free;
  end;
end;

procedure TfrmDeparturesReport.btnCheckInClick(Sender: TObject);
var s : String;
    Room : String;
    Reservation, RoomReservation : Integer;
    NoRoom, bContinue : Boolean;
begin
  Room := kbmDeparturesList['Room'];
  NoRoom := Copy(Room, 1, 1) = '<';
  Reservation := kbmDeparturesList['RoomerReservationID'];
  RoomReservation := kbmDeparturesList['RoomerRoomReservationID'];
  ShowAlertsForReservation(Reservation, RoomReservation, atCHECK_OUT);
  if d.CheckOutRoom(Reservation, RoomReservation, Room) then
    postMessage(handle, WM_REFRESH_DATA, 0, 0);
end;

procedure TfrmDeparturesReport.btnExcelClick(Sender: TObject);
var
  sFilename : string;
  s         : string;
begin
  dateTimeToString(s, 'yyyymmddhhnn', now);
  sFilename := g.qProgramPath + s + '_DeparturesList';
  ExportGridToExcel(sFilename, grDeparturesList, true, true, true);
  ShellExecute(Handle, 'OPEN', PChar(sFilename + '.xls'), nil, nil, sw_shownormal);
end;

procedure TfrmDeparturesReport.btnProfileClick(Sender: TObject);
begin
  if EditReservation(kbmDeparturesList['RoomerReservationID'], kbmDeparturesList['RoomerRoomReservationID']) then
    postMessage(handle, WM_REFRESH_DATA, 0, 0);
end;

procedure TfrmDeparturesReport.btnRefreshClick(Sender: TObject);
begin
  postMessage(handle, WM_REFRESH_DATA, 0, 0);
end;


function TfrmDeparturesReport.ConstructSQL2: string;
var s : String;
begin
//  if rbToday.Checked OR rbTomorrow.Checked then
//  begin
////    s := Format(sSql, [FormatDateTime('yyyy-mm-dd', dtDateFrom.Date)])
//    s := Format(sSql, [dtDateFrom.Date,dtDateTo.Date]);
//
//  end else
//  begin
//    s := Format(sSql, [FormatDateTime('yyyy-mm-dd', dtDateFrom.Date),
//                                   FormatDateTime('yyyy-mm-dd', dtDateTo.Date)]);
//  end;
//  Result := s;
//  {$ifdef DEBUG}
//    CopyToClipboard(Result);
//  {$endif}
end;



procedure TfrmDeparturesReport.dtDateFromCloseUp(Sender: TObject);
begin
 if dtDateFrom.Date > dtDateTo.Date then
   dtDateTo.Date := dtDateFrom.Date;
end;

procedure TfrmDeparturesReport.dtDateToCloseUp(Sender: TObject);
begin
 if dtDateFrom.Date > dtDateTo.Date then
   dtDateFrom.Date := dtDateTo.Date;
end;

procedure TfrmDeparturesReport.FormCreate(Sender: TObject);
begin
  RoomerLanguage.TranslateThisForm(self);
  glb.PerformAuthenticationAssertion(self);
  PlaceFormOnVisibleMonitor(self);
end;

procedure TfrmDeparturesReport.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmDeparturesReport.FormShow(Sender: TObject);
begin
  UpdateControls;
  postMessage(handle, WM_REFRESH_DATA, 0, 0);
end;

procedure TfrmDeparturesReport.mnuGroupInvoiceClick(Sender: TObject);
begin
  EditInvoice(kbmDeparturesList['RoomerReservationID'], 0, 0, 0, 0, 0, false, true,false);
end;

procedure TfrmDeparturesReport.grDeparturessListDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnProfile.Click;
end;

procedure TfrmDeparturesReport.kbmDeparturesListAfterScroll(DataSet: TDataSet);
begin
  UpdateControls;
end;

procedure TfrmDeparturesReport.mnuRoomInvoiceClick(Sender: TObject);
begin
  EditInvoice(kbmDeparturesList['RoomerReservationID'], kbmDeparturesList['RoomerRoomReservationID'], 0, 0, 0, 0, false, true,false);
end;

procedure TfrmDeparturesReport.rbRadioButtonClick(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrmDeparturesReport.RefreshData;
var
  s    : string;
  rset1: TRoomerDataset;
begin
  if NOT btnRefresh.Enabled then exit;

  btnRefresh.Enabled := False;
  Screen.Cursor := crHourglass;
  try

    kbmDeparturesList.DisableControls;
    try
      FRefreshingdata := True; // UpdateControls still called when updating dataset, despite DisableControls
      rSet1 := CreateNewDataSet;
      try
        // s := ConstructSQL2;
        s := getsql(dtDateFrom.Date,dtDateTo.Date);
        copyToClipboard(s);

        hData.rSet_bySQL(rSet1, s, false);
        rSet1.First;
        if not kbmDeparturesList.Active then
          kbmDeparturesList.Open;
        LoadKbmMemtableFromDataSetQuiet(kbmDeparturesList,rSet1,[]);

      finally
        FreeAndNil(rSet1);
      end;

      kbmDeparturesList.First;

    finally
      FRefreshingdata := False;
      kbmDeparturesList.EnableControls;
    end;
  finally
    btnRefresh.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmDeparturesReport.SetManualDates(aFrom, aTo: TDate);
begin
  dtDateFrom.Date := aFrom;
  dtDateTo.Date := aTo;
end;

procedure TfrmDeparturesReport.tvDeparturesListAverageRatePerNightGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  AProperties := d.getCurrencyProperties(g.qNativeCurrency);
end;

procedure TfrmDeparturesReport.UpdateControls;
var
  lDataAvailable: boolean;
begin
  if FRefreshingData then
    Exit;

  dtDateFrom.Enabled := rbManualRange.Checked;
  dtDateTo.Enabled := rbManualRange.Checked;

  if rbToday.Checked then
    SetManualDates(Now, now)
  else if rbTomorrow.Checked then
    SetManualDates(Now+1, Now+1);

  lDataAvailable := kbmDeparturesList.Active and NOT kbmDeparturesList.Eof;
  btnCheckIn.Enabled := lDataAvailable;
  btnProfile.Enabled := lDataAvailable;
  btnInvoice.Enabled := lDataAvailable;
end;

procedure TfrmDeparturesReport.WndProc(var message: TMessage);
begin
  if message.Msg = WM_REFRESH_DATA then
    RefreshData;
  inherited WndProc(message);
end;

end.



(*

  s := s+'SELECT ';
  s := s+'    cast(CheckOutDate as date) AS CheckOutDate';
  s := s+'  , Reservation AS RoomerReservationId ';
  s := s+'  , RoomReservation AS RoomerRoomReservationId ';
  s := s+'  , Room ';
  s := s+'  , RoomType ';
  s := s+'  , GuestName ';
  s := s+'  , NumGuests ';
  s := s+'  , cast(Arrival AS date) AS Arrival ';
  s := s+'  , cast(Departure AS Date) AS Departure ';
  s := s+'  , ExpectedCheckOutTime ';
  s := s+'  , Customer ';
  s := s+'  , CompanyName ';
  s := s+'  , NumNights ';
  s := s+'  , TotalRent / NumNights AS AverageRatePerNight ';
  s := s+'  , TotalRent ';
  s := s+'  , TotalSale ';
  s := s+'  , TotalPayments ';
  s := s+'  , TotalRent+TotalSale-TotalPayments AS Balance ';
  s := s+'FROM (SELECT ';
  s := s+'         ADate AS CheckOutDate ';
  s := s+'       ,yyy.Reservation ';
  s := s+'       ,yyy.RoomReservation ';
  s := s+'       ,yyy.Room ';
  s := s+'       ,yyy.RoomType ';
  s := s+'       ,pe.Name AS GuestName ';
  s := s+'       ,cu.Customer ';
  s := s+'       ,cu.Surname AS CompanyName ';
  s := s+'       ,DATE((SELECT ADate FROM roomsdate WHERE RoomReservation=yyy.RoomReservation AND ResFlag=yyy.ResFlag ORDER BY ADate LIMIT 1)) AS Arrival ';
  s := s+'       ,DATE(DATE_ADD((SELECT ADate FROM roomsdate WHERE RoomReservation=yyy.RoomReservation AND ResFlag=yyy.ResFlag ORDER BY ADate DESC LIMIT 1), INTERVAL 1 DAY)) AS Departure ';
  s := s+'       ,ROUND(SUM(RateWithDiscount + IFNULL(IF(CityTaxIncl, 0, CityTaxPerDay), 0.00)) , 2) AS TotalRent ';
  s := s+'       ,IFNULL((SELECT SUM(Number*Price) FROM invoicelines il WHERE InvoiceNumber=-1 AND RoomReservation=yyy.RoomReservation), 0.00) AS TotalSale ';
  s := s+'       ,IFNULL((SELECT SUM(Amount) FROM payments WHERE InvoiceNumber=-1 AND RoomReservation=yyy.RoomReservation), 0.00) AS TotalPayments ';
  s := s+'       ,(SELECT COUNT(id) FROM persons pe1 WHERE pe1.RoomReservation=yyy.RoomReservation) AS NumGuests ';
  s := s+'       ,(SELECT COUNT(id) FROM roomsdate rd1 WHERE rd1.RoomReservation=yyy.RoomReservation AND rd1.ResFlag=yyy.ResFlag) AS NumNights ';
  s := s+'       ,IFNULL(rr.ExpectedCheckOutTime, ''12:00'') AS ExpectedCheckOutTime ';
  s := s+'     FROM(SELECT ';
  s := s+'             ADate ';
  s := s+'           , ResFlag ';
  s := s+'           , RateExcl ';
  s := s+'           , RateIncl - RateExcl AS VAT ';
  s := s+'           , RateIncl ';
  s := s+'           , IF(Discount > 0, IF(isPercentage, RateIncl - (RateIncl * Discount / 100), RateIncl - Discount), RateIncl) AS RateWithDiscount ';
  s := s+'           , CityTaxInCl ';
  s := s+'           , NumNights ';
  s := s+'           , NumGuests ';
  s := s+'           , IF(CityTaxIncl, 0, IF(taxPercentage, taxBaseAmount * taxAmount / 100, taxAmount) *  IF(taxRoomNight, 1, ';
  s := s+'                                 IF(taxGuestNight, NumGuests,IF(taxGuestNight, NumGuests / NumNights,IF(taxBooking, 1 / NumNights,1 ))))) / CurrencyRate AS CityTaxPerDay ';
  s := s+'           , taxPercentage ';
  s := s+'           , taxRetaxable ';
  s := s+'           , taxRoomNight ';
  s := s+'           , taxGuestNight ';
  s := s+'           , taxGuest ';
  s := s+'           , taxBooking ';
  s := s+'           , taxNettoAmountBased ';
  s := s+'           , xxx.RoomReservation ';
  s := s+'           , xxx.Reservation ';
  s := s+'           , xxx.Room ';
  s := s+'           , xxx.RoomType ';
  s := s+' FROM (SELECT ';
  s := s+'           DATE_ADD((SELECT rd1.ADate FROM roomsdate rd1 WHERE rd1.RoomReservation = rd.RoomReservation ORDER BY rd1.ADate DESC LIMIT 1), INTERVAL 1 DAY) AS ADate ';
  s := s+'        ,rd.ResFlag ';
  s := s+'        ,RoomRate AS RateIncl ';
  s := s+'        ,RoomRate / (1 + vc.VATPercentage/100) AS RateExcl ';
  s := s+'        ,to_bool(IF(tx.INCL_EXCL=''INCLUDED'' OR (tx.INCL_EXCL=''PER_CUSTOMER'' AND cu.StayTaxIncluted), 1, 0)) AS CityTaxInCl ';
  s := s+'        ,tx.AMOUNT AS taxAmount ';
  s := s+'        ,to_bool(IF(tx.TAX_TYPE=''FIXED_AMOUNT'', 0, 1)) AS taxPercentage,to_bool(IF(tx.RETAXABLE=''FALSE'', 0, 1)) AS taxRetaxable, to_bool(IF(tx.TAX_BASE=''ROOM_NIGHT'', 1, 0)) AS taxRoomNight ';
  s := s+'        ,to_bool(IF(tx.TAX_BASE=''GUEST_NIGHT'', 1, 0)) AS taxGuestNight, to_bool(IF(tx.TAX_BASE=''GUEST'', 1, 0)) AS taxGuest, to_bool(IF(tx.TAX_BASE=''BOOKING'', 1, 0)) AS taxBooking ';
  s := s+'        ,to_bool(IF(tx.NETTO_AMOUNT_BASED=''FALSE'', 0, 1)) AS taxNettoAmountBased , IF(tx.NETTO_AMOUNT_BASED=''FALSE'', RoomRate, RoomRate / (1 + vc.VATPercentage/100)) AS taxBaseAmount ';
  s := s+'        ,(SELECT COUNT(rd1.ID) FROM roomsdate rd1 WHERE rd1.RoomReservation = rr.RoomReservation AND NOT rd1.ResFlag IN (''X'',''C'') GROUP BY rd1.RoomReservation) AS NumNights ';
  s := s+'        ,(SELECT COUNT(pe.ID) FROM persons pe WHERE pe.RoomReservation = rr.RoomReservation GROUP BY pe.RoomReservation) AS NumGuests ';
  s := s+'        ,cur.Currency AS Currency ';
  s := s+'        ,cur.AValue AS CurrencyRate ';
  s := s+'        ,rd.Discount, rd.isPercentage ';
  s := s+'        ,rd.RoomReservation ';
  s := s+'        ,rd.Reservation ';
  s := s+'        ,rd.Room ';
  s := s+'        ,rd.RoomType ';
  s := s+'       FROM roomsdate rd ';
  s := s+'         JOIN currencies cur ON cur.Currency=rd.Currency ';
  s := s+'         JOIN roomreservations rr ON rr.RoomReservation=rd.RoomReservation ';
  s := s+'         JOIN reservations r ON r.Reservation=rd.Reservation ';
  s := s+'         JOIN customers cu ON cu.Customer=r.Customer ';
  s := s+'         JOIN control co ';
  s := s+'         JOIN home100.TAXES tx ON HOTEL_ID=co.CompanyId AND VALID_FROM<=rd.ADate AND VALID_TO>=rd.ADate ';
  s := s+'         JOIN items i ON i.Item=co.RoomRentItem ';
  s := s+'         JOIN itemtypes it ON it.ItemType=i.ItemType ';
  s := s+'         JOIN vatcodes vc ON vc.VATCode=it.VATCode, ';
  s := s+'(SELECT ';
  s := s+'   '+_dateToSqlDate(DateFrom)+' AS StartDate, '+_dateToSqlDate(DateFrom)+' AS EndDate) AS params ';
  s := s+' WHERE rd.RoomReservation IN ';
  s := s+'   (SELECT ';
  s := s+'      RoomReservation ';
  s := s+'    FROM ';
  s := s+'      roomsdate rd ';
  s := s+'    WHERE ';
  s := s+'        rd.ADate BETWEEN DATE_ADD(params.StartDate, INTERVAL -1 DAY) AND DATE_ADD(params.EndDate, INTERVAL -1 DAY) ';
  s := s+'      AND rd.ResFlag=''G'' ';
  s := s+'      AND (SELECT rd1.ADate FROM roomsdate rd1 WHERE rd1.RoomReservation = rd.RoomReservation ORDER BY rd1.ADate DESC LIMIT 1) = rd.ADate) ';
  s := s+'      AND NOT ResFlag IN (''X'',''C'') ';
  s := s+'      AND rd.Paid=0 ';
  s := s+'    ) xxx ';
  s := s+'   ) yyy ';
  s := s+' JOIN roomreservations rr ON rr.RoomReservation=yyy.RoomReservation ';
  s := s+' JOIN reservations r ON r.Reservation=yyy.Reservation ';
  s := s+' JOIN customers cu ON cu.Customer=r.Customer AND cu.Active ';
  s := s+' JOIN persons pe ON pe.RoomReservation=yyy.RoomReservation AND pe.MainName=1 ';
  s := s+' JOIN channels ch ON ch.Id=r.Channel ';
  s := s+' JOIN hotelconfigurations ho ';
  s := s+' GROUP BY yyy.RoomReservation, CheckOutDate ';
  s := s+') zzz ';
  s := s+'ORDER BY ';
  s := s+'  CheckOutDate, Room ';



  s := s+'SELECT ';
  s := s+'    CAST(CheckOutDate AS DATE) AS CheckOutDate, ';
  s := s+'    Reservation AS RoomerReservationId, ';
  s := s+'    RoomReservation AS RoomerRoomReservationId, ';
  s := s+'    Room, ';
  s := s+'    RoomType, ';
  s := s+'    GuestName, ';
  s := s+'    NumGuests, ';
  s := s+'    CAST(Arrival AS DATE) AS Arrival, ';
  s := s+'    CAST(Departure AS DATE) AS Departure, ';
  s := s+'    ExpectedCheckOutTime, ';
  s := s+'    Customer, ';
  s := s+'    CompanyName, ';
  s := s+'    NumNights, ';
  s := s+'    TotalRent / NumNights AS AverageRatePerNight, ';
  s := s+'    TotalRent, ';
  s := s+'    TotalSale, ';
  s := s+'    TotalPayments, ';
  s := s+'    TotalRent + TotalSale - TotalPayments AS Balance, ';
  s := s+'    Currency, ';
  s := s+'    CurrencyRate ';
  s := s+'FROM ';
  s := s+'    (SELECT ';
  s := s+'        ADate AS CheckOutDate, ';
  s := s+'            yyy.Reservation, ';
  s := s+'            yyy.RoomReservation, ';
  s := s+'            yyy.Room, ';
  s := s+'            yyy.RoomType, ';
  s := s+'            pe.Name AS GuestName, ';
  s := s+'            cu.Customer, ';
  s := s+'            cu.Surname AS CompanyName, ';
  s := s+'            DATE((SELECT ';
  s := s+'                    ADate ';
  s := s+'                FROM ';
  s := s+'                    roomsdate ';
  s := s+'                WHERE ';
  s := s+'                    RoomReservation = yyy.RoomReservation ';
  s := s+'                        AND ResFlag = yyy.ResFlag ';
  s := s+'                ORDER BY ADate ';
  s := s+'                LIMIT 1)) AS Arrival, ';
  s := s+'            DATE(DATE_ADD((SELECT ';
  s := s+'                    ADate ';
  s := s+'                FROM ';
  s := s+'                    roomsdate ';
  s := s+'                WHERE ';
  s := s+'                    RoomReservation = yyy.RoomReservation ';
  s := s+'                        AND ResFlag = yyy.ResFlag ';
  s := s+'                ORDER BY ADate DESC ';
  s := s+'                LIMIT 1), INTERVAL 1 DAY)) AS Departure, ';
  s := s+'            ROUND(SUM(RateWithDiscount + IFNULL(IF(CityTaxIncl, 0, CityTaxPerDay), 0.00)), 2) * CurrencyRate AS TotalRent, ';
  s := s+'            IFNULL((SELECT ';
  s := s+'                    SUM(Number * Price) ';
  s := s+'                FROM ';
  s := s+'                    invoicelines il ';
  s := s+'                WHERE ';
  s := s+'                    InvoiceNumber = - 1 ';
  s := s+'                        AND RoomReservation = yyy.RoomReservation), 0.00) AS TotalSale, ';
  s := s+'            IFNULL((SELECT ';
  s := s+'                    SUM(Amount) ';
  s := s+'                FROM ';
  s := s+'                    payments ';
  s := s+'                WHERE ';
  s := s+'                    InvoiceNumber = - 1 ';
  s := s+'                        AND RoomReservation = yyy.RoomReservation), 0.00) AS TotalPayments, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(id) ';
  s := s+'                FROM ';
  s := s+'                    persons pe1 ';
  s := s+'                WHERE ';
  s := s+'                    pe1.RoomReservation = yyy.RoomReservation) AS NumGuests, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(id) ';
  s := s+'                FROM ';
  s := s+'                    roomsdate rd1 ';
  s := s+'                WHERE ';
  s := s+'                    rd1.RoomReservation = yyy.RoomReservation ';
  s := s+'                        AND rd1.ResFlag = yyy.ResFlag) AS NumNights, ';
  s := s+'            IFNULL(rr.ExpectedCheckOutTime, '12:00') AS ExpectedCheckOutTime, ';
  s := s+'            yyy.Currency, ';
  s := s+'            yyy.CurrencyRate ';
  s := s+'    FROM ';
  s := s+'        (SELECT ';
  s := s+'        Currency, ';
  s := s+'        CurrencyRate, ';
  s := s+'        ADate, ';
  s := s+'            ResFlag, ';
  s := s+'            RateExcl, ';
  s := s+'            RateIncl - RateExcl AS VAT, ';
  s := s+'            RateIncl, ';
  s := s+'            IF(Discount > 0, IF(isPercentage, RateIncl - (RateIncl * Discount / 100), RateIncl - Discount), RateIncl) AS RateWithDiscount, ';
  s := s+'            CityTaxInCl, ';
  s := s+'            NumNights, ';
  s := s+'            NumGuests, ';
  s := s+'            IF(CityTaxIncl, 0, IF(taxPercentage, taxBaseAmount * taxAmount / 100, taxAmount) * IF(taxRoomNight, 1, IF(taxGuestNight, NumGuests, IF(taxGuestNight, NumGuests / NumNights, IF(taxBooking, 1 / NumNights, 1))))) / CurrencyRate AS CityTaxPerDay, ';
  s := s+'           taxPercentage, ';
  s := s+'            taxRetaxable, ';
  s := s+'            taxRoomNight, ';
  s := s+'            taxGuestNight, ';
  s := s+'            taxGuest, ';
  s := s+'            taxBooking, ';
  s := s+'            taxNettoAmountBased, ';
  s := s+'            xxx.RoomReservation, ';
  s := s+'            xxx.Reservation, ';
  s := s+'            xxx.Room, ';
  s := s+'            xxx.RoomType ';
  s := s+'    FROM ';
  s := s+'        (SELECT ';
  s := s+'        DATE_ADD((SELECT ';
  s := s+'                    rd1.ADate ';
  s := s+'                FROM ';
  s := s+'                    roomsdate rd1 ';
  s := s+'                WHERE ';
  s := s+'                    rd1.RoomReservation = rd.RoomReservation ';
  s := s+'                ORDER BY rd1.ADate DESC ';
  s := s+'                LIMIT 1), INTERVAL 1 DAY) AS ADate, ';
  s := s+'            rd.ResFlag, ';
  s := s+'            RoomRate AS RateIncl, ';
  s := s+'            RoomRate / (1 + vc.VATPercentage / 100) AS RateExcl, ';
  s := s+'            TO_BOOL(IF(tx.INCL_EXCL = 'INCLUDED' ';
  s := s+'                OR (tx.INCL_EXCL = 'PER_CUSTOMER' ';
  s := s+'                AND cu.StayTaxIncluted), 1, 0)) AS CityTaxInCl, ';
  s := s+'            tx.AMOUNT AS taxAmount, ';
  s := s+'            TO_BOOL(IF(tx.TAX_TYPE = 'FIXED_AMOUNT', 0, 1)) AS taxPercentage, ';
  s := s+'            TO_BOOL(IF(tx.RETAXABLE = 'FALSE', 0, 1)) AS taxRetaxable, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = 'ROOM_NIGHT', 1, 0)) AS taxRoomNight, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = 'GUEST_NIGHT', 1, 0)) AS taxGuestNight, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = 'GUEST', 1, 0)) AS taxGuest, ';
  s := s+'            TO_BOOL(IF(tx.TAX_BASE = 'BOOKING', 1, 0)) AS taxBooking, ';
  s := s+'            TO_BOOL(IF(tx.NETTO_AMOUNT_BASED = 'FALSE', 0, 1)) AS taxNettoAmountBased, ';
  s := s+'            IF(tx.NETTO_AMOUNT_BASED = 'FALSE', RoomRate, RoomRate / (1 + vc.VATPercentage / 100)) AS taxBaseAmount, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(rd1.ID) ';
  s := s+'                FROM ';
  s := s+'                    roomsdate rd1 ';
  s := s+'                WHERE ';
  s := s+'                    rd1.RoomReservation = rr.RoomReservation ';
  s := s+'                        AND NOT rd1.ResFlag IN ('X' , 'C') ';
  s := s+'                GROUP BY rd1.RoomReservation) AS NumNights, ';
  s := s+'            (SELECT ';
  s := s+'                    COUNT(pe.ID) ';
  s := s+'                FROM ';
  s := s+'                    persons pe ';
  s := s+'                WHERE ';
  s := s+'                    pe.RoomReservation = rr.RoomReservation ';
  s := s+'                GROUP BY pe.RoomReservation) AS NumGuests, ';
  s := s+'            cur.Currency AS Currency, ';
  s := s+'            cur.AValue AS CurrencyRate, ';
  s := s+'            rd.Discount, ';
  s := s+'            rd.isPercentage, ';
  s := s+'            rd.RoomReservation, ';
  s := s+'            rd.Reservation, ';
  s := s+'            rd.Room, ';
  s := s+'            rd.RoomType ';
  s := s+'    FROM ';
  s := s+'        roomsdate rd ';
  s := s+'    JOIN currencies cur ON cur.Currency = rd.Currency ';
  s := s+'    JOIN roomreservations rr ON rr.RoomReservation = rd.RoomReservation ';
  s := s+'    JOIN reservations r ON r.Reservation = rd.Reservation ';
  s := s+'    JOIN customers cu ON cu.Customer = r.Customer ';
  s := s+'    JOIN control co ';
  s := s+'    JOIN home100.TAXES tx ON HOTEL_ID = co.CompanyId ';
  s := s+'        AND VALID_FROM <= rd.ADate ';
  s := s+'        AND VALID_TO >= rd.ADate ';
  s := s+'    JOIN items i ON i.Item = co.RoomRentItem ';
  s := s+'    JOIN itemtypes it ON it.ItemType = i.ItemType ';
  s := s+'    JOIN vatcodes vc ON vc.VATCode = it.VATCode, (SELECT '2016-06-30' AS StartDate, '2016-06-30' AS EndDate) AS params ';
  s := s+'    WHERE ';
  s := s+'        rd.RoomReservation IN (SELECT ';
  s := s+'                RoomReservation ';
  s := s+'            FROM ';
  s := s+'                roomsdate rd ';
  s := s+'            WHERE ';
  s := s+'                rd.ADate BETWEEN DATE_ADD(params.StartDate, INTERVAL - 1 DAY) AND DATE_ADD(params.EndDate, INTERVAL - 1 DAY) ';
  s := s+'                    AND rd.ResFlag = 'G' ';
  s := s+'                    AND (SELECT ';
  s := s+'                        rd1.ADate ';
  s := s+'                    FROM ';
  s := s+'                        roomsdate rd1 ';
  s := s+'                    WHERE ';
  s := s+'                        rd1.RoomReservation = rd.RoomReservation ';
  s := s+'                    ORDER BY rd1.ADate DESC ';
  s := s+'                    LIMIT 1) = rd.ADate) ';
  s := s+'            AND NOT ResFlag IN ('X' , 'C') ';
  s := s+'            AND rd.Paid = 0) xxx) yyy ';
  s := s+'    JOIN roomreservations rr ON rr.RoomReservation = yyy.RoomReservation ';
  s := s+'    JOIN reservations r ON r.Reservation = yyy.Reservation ';
  s := s+'    JOIN customers cu ON cu.Customer = r.Customer AND cu.Active ';
  s := s+'    JOIN persons pe ON pe.RoomReservation = yyy.RoomReservation ';
  s := s+'        AND pe.MainName = 1 ';
  s := s+'    JOIN channels ch ON ch.Id = r.Channel ';
  s := s+'    JOIN hotelconfigurations ho ';
  s := s+'    GROUP BY yyy.RoomReservation , CheckOutDate) zzz ';
  s := s+'ORDER BY CheckOutDate , Room ';

