unit uFrmCheckOut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.ExtCtrls, sPanel,
  uInvoiceContainer, cxClasses, cxPropertiesStore, sLabel, sCheckBox;

type
  TFrmCheckOut = class(TForm)
    StoreMain: TcxPropertiesStore;
    sLabel1: TsLabel;
    pnlRoomBalance: TsPanel;
    __lblRoomBalance: TsLabel;
    sLabel33: TsLabel;
    lbRoomRent: TsLabel;
    lbSales: TsLabel;
    sLabel36: TsLabel;
    sLabel41: TsLabel;
    lbTaxes: TsLabel;
    sLabel38: TsLabel;
    sLabel40: TsLabel;
    lbPAyments: TsLabel;
    lbSubTotal: TsLabel;
    lbBalance: TsLabel;
    sLabel42: TsLabel;
    Shape1: TShape;
    Shape2: TShape;
    lbCurrency: TsLabel;
    btnRoomInvoice: TsButton;
    pnlGroupBalance: TsPanel;
    __lblGroupBalance: TsLabel;
    sLabel2: TsLabel;
    lbRoomRentGr: TsLabel;
    lbSalesGr: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    lbTaxesGr: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    lbPaymentsGr: TsLabel;
    lbSubTotalGr: TsLabel;
    lbBalanceGr: TsLabel;
    sLabel13: TsLabel;
    Shape3: TShape;
    Shape4: TShape;
    lbCurrencyGr: TsLabel;
    btnGroupInvoice: TsButton;
    cbxForce: TsCheckBox;
    panBtn: TsPanel;
    btnCancel: TsButton;
    BtnCheckOut: TsButton;
    procedure cbxForceClick(Sender: TObject);
    procedure btnRoomInvoiceClick(Sender: TObject);
    procedure btnGroupInvoiceClick(Sender: TObject);
    procedure BtnCheckOutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FReservation: Integer;
    FRoomReservation: Integer;
    FRoomNumber: String;
    FRoomInvoice: TInvoice;
    FGroupInvoice: TInvoice;
    procedure prepareInvoice;
    procedure DisplayInvoice;
    procedure ReloadInvoiceStatuses;
    { Private declarations }
  public
    { Public declarations }
    property Reservation: Integer read FReservation write FReservation;
    property RoomReservation: Integer read FRoomReservation write FRoomReservation;
    property RoomNumber: String read FRoomNumber write FRoomNumber;

    property RoomInvoice: TInvoice read FRoomInvoice write FRoomInvoice;
    property GroupInvoice: TInvoice read FGroupInvoice write FGroupInvoice;
  end;

var
  FrmCheckOut: TFrmCheckOut;

procedure CheckoutGuestWithDialog(Reservation, RoomReservation: Integer; RoomNumber: String);

implementation

{$R *.dfm}

uses
    _Glob
  , uD
  , PrjConst
  , uInvoice
  , uRoomerLanguage
  , uAppGlobal
  , uUtils
  , Math
  ;

procedure CheckoutGuestWithDialog(Reservation, RoomReservation: Integer; RoomNumber: String);
var
  _FrmCheckOut: TFrmCheckOut;
begin
  _FrmCheckOut := TFrmCheckOut.Create(nil);
  try
    _FrmCheckOut.Reservation := Reservation;
    _FrmCheckOut.RoomReservation := RoomReservation;
    _FrmCheckOut.RoomNumber := RoomNumber;

    _FrmCheckOut.ShowModal;
    _FrmCheckOut.BringToFront;
  finally
    FreeandNil(_FrmCheckOut);
  end;

end;

procedure TFrmCheckOut.cbxForceClick(Sender: TObject);
begin
  BtnCheckOut.Enabled := ((NOT pnlRoomBalance.Visible) AND (cbxForce.Checked));
end;

procedure TFrmCheckOut.DisplayInvoice;
begin
  sLabel1.Visible := False;
  pnlRoomBalance.Visible := False;
  pnlGroupBalance.Visible := False;

  if FRoomInvoice.InvoiceLines.Count > 0 then with FRoomInvoice do
  begin
    pnlRoomBalance.Visible := (Balance <> 0);
    if pnlRoomBalance.Visible then
    begin
      lbCurrency.Caption    := Currency;
      lbRoomRent.Caption    := TotalRoomRent.AsDisplayString;// lCurrencyHandler.FormattedValue(TotalRoomRent);
      lbSales.Caption       := TotalSales.AsDisplayString; // lCurrencyHandler.FormattedValue(TotalSales);
      lbTaxes.Caption       := TotalTaxes.AsDisplayString; // lCurrencyHandler.FormattedValue(TotalTaxes);
      lbSubTotal.Caption    := (TotalRoomRent + TotalSales + TotalTaxes).asDisplayString;
                                //lCurrencyHandler.FormattedValue(lCurrencyHandler.RoundedValue(TotalRoomRent) +
                               //                                lCurrencyHandler.RoundedValue(TotalSales) +
                               //                                lCurrencyHandler.RoundedValue(TotalTaxes));
      lbPayments.Caption    := TotalPaymentsNative.AsDisplayString; // lCurrencyHandler.FormattedValue(TotalPaymentsNative);
      lbBalance.Caption     := Balance.AsDisplayString; //.FormattedValue(Balance);

      __lblGroupBalance.Caption := format(GetTranslatedText('shUI_Checkout_RoomHeader'), [RoomNumber]);
    end;
  end;

  if FGroupInvoice.InvoiceLines.Count > 0 then with FGroupInvoice do
  begin
    pnlGroupBalance.Visible := (Balance <> 0);
    if pnlGroupBalance.Visible then
    begin
      lbCurrencyGr.Caption  := Currency;
      lbRoomRentGr.Caption  := TotalRoomRent.AsDisplayString;
      lbSalesGr.Caption     := TotalSales.AsDisplayString;
      lbTaxesGr.Caption     := TotalTaxes.AsDisplayString;
      lbSubTotalGr.Caption  := (TotalRoomRent + TotalSales + TotalTaxes).AsDisplayString;
      lbPaymentsGr.Caption  := TotalPaymentsNative.AsDisplayString;
      lbBalanceGr.Caption   := Balance.AsDisplayString;

      __lblGroupBalance.Caption := format(GetTranslatedText('shUI_Checkout_GroupHeader'), [NumberOfRentLines]);
    end;
  end;

  sLabel1.Visible := not (pnlRoomBalance.Visible or pnlGroupBalance.Visible);
  if sLabel1.Visible then
  begin
    sLabel1.Left := 5;
    sLabel1.Top := (Height - panBtn.Height) div 2;
    Width := sLabel1.Width + 20;
  end
  else
    // NB: using pnlRoomBalance.Width twice because pnlGroupBalance has Align=alClient and its width would become 626
    Width := pnlRoomBalance.Width * iif(pnlRoomBalance.Visible, 1, 0) + pnlRoomBalance.Width * iif(pnlGroupBalance.Visible, 1, 0) + 6;

  cbxForce.Visible := (FRoomInvoice.Balance = 0) AND (FGroupInvoice.Balance <> 0);
  if cbxForce.Visible then
    cbxForce.Left := pnlGroupBalance.Left + (pnlGroupBalance.Width - cbxForce.Width) div 2;
  BtnCheckOut.Enabled := ((NOT pnlRoomBalance.Visible) AND (NOT pnlGroupBalance.Visible or cbxForce.Checked));

end;

procedure TFrmCheckOut.FormCreate(Sender: TObject);
begin
  RoomerLanguage.TranslateThisForm(self);
  glb.PerformAuthenticationAssertion(self);
  PlaceFormOnVisibleMonitor(self);
end;

procedure TFrmCheckOut.FormDestroy(Sender: TObject);
begin
  FRoomInvoice.Free;
  FGroupInvoice.Free;
end;

procedure TFrmCheckOut.FormShow(Sender: TObject);
begin
  prepareInvoice;
end;

procedure TFrmCheckOut.prepareInvoice;
begin
  Screen.Cursor := crHourglass;
  try
    FRoomInvoice := TInvoice.Create(ritRoom, -1, Reservation, RoomReservation, 0, -1, RoomNumber, False);
    FGroupInvoice := TInvoice.Create(ritGroup, -1, Reservation, RoomReservation, 0, -1, RoomNumber, False);
    DisplayInvoice;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCheckOut.ReloadInvoiceStatuses;
begin
  FRoomInvoice.Free;
  FGroupInvoice.Free;
  prepareInvoice;
end;


procedure TFrmCheckOut.BtnCheckOutClick(Sender: TObject);
begin
  d.CheckOutGuest(RoomReservation, RoomNumber);
end;

procedure TFrmCheckOut.btnGroupInvoiceClick(Sender: TObject);
begin
  EditInvoice(Reservation, 0, 0, 0, 0, 0, false);
  ReloadInvoiceStatuses;
end;

procedure TFrmCheckOut.btnRoomInvoiceClick(Sender: TObject);
begin
  EditInvoice(Reservation, RoomReservation, 0, 0, 0, 0, false);
  ReloadInvoiceStatuses;
end;

end.
