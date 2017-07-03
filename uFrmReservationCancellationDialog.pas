unit uFrmReservationCancellationDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sLabel, sCheckBox, sMemo, sButton, Vcl.ExtCtrls, sPanel, cxClasses, cxPropertiesStore;

type
  TFrmReservationCancellationDialog = class(TForm)
    sLabel1: TsLabel;
    lblResName: TsLabel;
    sLabel3: TsLabel;
    lblContact: TsLabel;
    sLabel5: TsLabel;
    lblArrival: TsLabel;
    sLabel7: TsLabel;
    lblDeparture: TsLabel;
    sLabel9: TsLabel;
    lblRooms: TsLabel;
    sLabel11: TsLabel;
    lblGuests: TsLabel;
    sPanel1: TsPanel;
    sButton1: TsButton;
    sButton2: TsButton;
    sLabel2: TsLabel;
    mmoReason: TsMemo;
    sCheckBox1: TsCheckBox;
    FormStore: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AllowCancel : Boolean;
    procedure ShowReservation;
    { Private declarations }
  public
    { Public declarations }
    Reservation : Integer;
  end;

var
  FrmReservationCancellationDialog: TFrmReservationCancellationDialog;

function CancelBookingDialog(Reservation : Integer) : Boolean;

implementation

{$R *.dfm}

uses uReservationEmailingDialog,
     cmpRoomerDataSet,
     uRoomerLanguage,
     uAppGlobal,
     uD,
     hData,
     uUtils,
     uRoomerConfirmationDialogs,
     PrjConst,
     UITypes
     ;


function CancelBookingDialog(Reservation : Integer) : Boolean;
var
  _FrmReservationCancellationDialog: TFrmReservationCancellationDialog;
  var userName, password : string;
begin
  result := False;
  _FrmReservationCancellationDialog := TFrmReservationCancellationDialog.Create(nil);
  try
    _FrmReservationCancellationDialog.Reservation := Reservation;
    if _FrmReservationCancellationDialog.ShowModal = mrOK then
    begin
      userName := '';
      password := '';
      if _FrmReservationCancellationDialog.AllowCancel OR
        ((MessageDlg(GetTranslatedText('shTxRemoveReservationWarning'), mtWarning, [mbYes, mbNo], 0) = mrYes) AND
         openLogin(userName, password, 1)) then
      begin
        d.roomerMainDataSet.SystemCancelReservation(Reservation, Format('User %s changed state to cancelled on %s',
          [d.roomerMainDataSet.userName, DateTimeToStr(now)]) + #13 + ReplaceString(_FrmReservationCancellationDialog.mmoReason.Text, '''','\'''));
        if _FrmReservationCancellationDialog.sCheckBox1.Checked then
          SendCancellationConfirmation(Reservation);
        result := True;
      end;
    end;
  finally
    FreeAndNil(_FrmReservationCancellationDialog);
  end;
end;
procedure TFrmReservationCancellationDialog.ShowReservation;
var rSet : TRoomerDataset;
    sql : String;
begin
  rSet := CreateNewDataset;
  sql := format(
           'SELECT r.Name, r.ContactName, ' +
           'DATE(rr.Arrival) AS Arrival, ' +
           'DATE(rr.Departure) AS Departure, ' +
           '(SELECT COUNT(RoomReservation) FROM roomreservations r1 WHERE r1.Reservation=r.Reservation) AS NumRooms, ' +
           '(SELECT COUNT(Person) FROM persons pe WHERE pe.Reservation=r.Reservation) AS NumGuests, ' +
           'channel ' +
           'FROM reservations r ' +
           'INNER JOIN roomreservations rr ON rr.Reservation=r.Reservation ' +
           'INNER JOIN persons p ON p.MainName=1 AND p.RoomReservation=rr.RoomReservation ' +
           'WHERE r.Reservation = %d ',
           [Reservation]
         );

  if hData.rSet_bySQL(rSet, sql) then
  begin
    lblResName.Caption := rSet['Name'];
    lblContact.Caption := rSet['ContactName'];
    lblArrival.Caption := DateToStr(rSet['Arrival']);
    lblDeparture.Caption := DateToStr(rSet['Departure']);
    lblRooms.Caption := inttostr(rSet['NumRooms']);
    lblGuests.Caption := inttostr(rSet['NumGuests']);
    AllowCancel := NOT glb.GetBooleanValueOfFieldFromId('channels', 'managedByChannelManager', rSet['channel']);
  end;
end;

procedure TFrmReservationCancellationDialog.FormCreate(Sender: TObject);
begin
  RoomerLanguage.TranslateThisForm(self);
  glb.PerformAuthenticationAssertion(self); PlaceFormOnVisibleMonitor(self);
end;

procedure TFrmReservationCancellationDialog.FormShow(Sender: TObject);
begin
  ShowReservation;
end;

end.
