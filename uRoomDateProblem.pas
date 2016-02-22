unit uRoomDateProblem;

interface

uses
    Windows
  , Messages
  , SysUtils
  , Variants
  , Classes
  , Graphics
  , Controls
  , Forms
  , Dialogs
  , StdCtrls
  , ExtCtrls

  , ADODB

  , hData
  , ug
  , _glob
  , Grids
  , BaseGrid
  , AdvGrid

  , AdvObj


  //

  , cmpRoomerDataSet
  , cmpRoomerConnection
  , uUtils, sGroupBox, sButton, sPanel, AdvUtil
  ;

type
  TfrmRoomDateProblem = class(TForm)
    LMDSimplePanel1: TsPanel;
    btnOK: TsButton;
    btnCancel: TsButton;
    LMDBackPanel1: TsPanel;
    rgrOption: TsRadioGroup;
    gr: TAdvStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure grGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  private
    { Private declarations }
    procedure GridInit;
    procedure GridFill;

  public
    { Public declarations }
    lst : TStringList;
    zNewArrival   : Tdate;
    zNewDeparture : Tdate;
    zOldArrival   : Tdate;
    zOldDeparture : Tdate;
    zRoom         : string;
  end;

var
  frmRoomDateProblem: TfrmRoomDateProblem;

implementation

{$R *.dfm}

uses
   ud
  , uAppGlobal
  , uSqlDefinitions
  , PrjConst
  , uDImages;

//function StatusToColor(status : string;var backColor, fontColor : Tcolor ) : boolean;
//var
//  ch : char;
//begin
//  status := trim(status);
//  result := false;
//  if length(status) < 1 then exit;
//  ch := status[1];
//
//  case ch of
//    '1' : begin
//            backColor := clGreen;
//            fontColor := clWhite;
//            result := true;
//          end;
//    '2' : begin
//            backColor := clPurple;
//            fontColor := clWhite;
//            result := true;
//          end;
//    '3' : begin
//            backColor := clFuchsia;
//            fontColor := clWhite;
//            result := true;
//          end;
//    'C' : begin
//            backColor := clMaroon;
//            fontColor := clWhite;
//            result := true;
//          end;
//    'U' : begin
//            backColor := clNavy;
//            fontColor := clWhite;
//            result := true;
//          end;
//    'O' : begin
//            backColor := clRed;
//            fontColor := clWhite;
//            result := true;
//          end;
//   end;
//end;
//
//
//function ResStatusToColor(status : string; ascindex, descindex : integer; var backColor, fontColor : Tcolor ) : boolean;
//var
//  ch : char;
//begin
//  status := trim(status);
//  result := false;
//  if length(status) < 1 then exit;
//  ch := status[1];
//
//  case ch of
//    'P' : begin
//            backColor := clRed;
//            fontColor := clWhite;
//            result := true;
//          end;
//    'G' : begin
//            backColor := clGreen;
//            fontColor := clWhite;
//            result := true;
//          end;
//    STATUS_CHECKED_OUT : begin
//            backColor := clTeal;
//            fontColor := clWhite;
//            result := true;
//          end;
//    'O' : begin
//            backColor := clYellow;
//            fontColor := clBlack;
//            result := true;
//          end;
//    'N' : begin
//            backColor := clRed;
//            fontColor := clYellow;
//            result := true;
//          end;
//    'A' : begin
//            backColor := clWhite;
//            fontColor := clRed;
//            result := true;
//          end;
//    'B' : begin  //*ATH
//            backColor := clOlive;
//            fontColor := clWhite;
//            result := true;
//          end;
//    'C' : begin
//            backColor := clBlack;
//            fontColor := clSilver;
//            result := true;
//          end;
//    'W' : begin
//            backColor := clPurple;
//            fontColor := clWhite;
//            result := true;
//          end;
//    'Z' : begin
//            backColor := clFuchsia;
//            fontColor := clBlack;
//            result := true;
//          end;
//     else
//        begin
//          backColor := clBlue;
//          fontColor := clYellow;
//        end;
//   end;
//end;
//
//
//function ResStatusToString(status : string) :String;
//var
//  ch : char;
//begin
//  status := trim(status);
//  result := 'N/A';
//  if length(status) < 1 then exit;
//  ch := status[1];
//
//  case ch of
// (*   'P' : begin
//            result := 'Ekki kominn';
//          end;
//    'G' : begin
//            result := 'Gestur';
//          end;
//    'D' : begin
//            result := 'Farinn';
//          end;
//    'O' : begin
//            result := 'Yfirb�kunn';
//          end;
//    'N' : begin
//            result := 'No Show';
//          end;
//    'A' : begin
//            result := 'Allotment';
//          end; *)
//		     'P' : begin
//            result := GetTranslatedText('shTx_RoomDateProblem_NotArrived');
//          end;
//    'G' : begin
//            result := GetTranslatedText('shTx_RoomDateProblem_Guest');
//          end;
//    STATUS_CHECKED_OUT : begin
//            result := GetTranslatedText('shTx_RoomDateProblem_Gone');
//          end;
//    'O' : begin
//            result := GetTranslatedText('shTx_RoomDateProblem_OverBooked');
//          end;
//    'N' : begin
//            result := GetTranslatedText('shTx_RoomDateProblem_NoShow');
//          end;
//    'A' : begin
//            result := GetTranslatedText('shTx_RoomDateProblem_Allotment');
//          end;
//     else
//        begin
//          result := Status+'???'
//        end;
//   end;
//end;


procedure TfrmRoomDateProblem.GridInit;
begin
  gr.ColCount  := 8;
  gr.RowCount  := 2;
  gr.FixedCols := 0;

  gr.Cells[0,0] := 'Herb.';
  gr.Cells[1,0] := 'Teg.';
  gr.Cells[2,0] := 'P�ntunn';
  gr.Cells[3,0] := 'Sta�a';
  gr.Cells[4,0] := 'Koma';
  gr.Cells[5,0] := 'Brottf�r';
  gr.Cells[6,0] := 'S';
  gr.Cells[7,0] := '7';


  gr.ColumnSize.Stretch := true;
  gr.ColumnSize.StretchColumn := 2;
end;


procedure TfrmRoomDateProblem.GridFill;
var
  i  : integer;
  iRoomReservation : integer;

  sRoom         : string;
  sRoomType     : string;
  sStatus       : string;
  sStatusText   : string;
  sArrival      : string;
  sDeparture    : string;
  sGuest        : string;
  sCustomerName : string;

  rSet   : TRoomerDataSet;
  rrList : string;

  s      : string;
  dtTemp : TdateTime;
  roomStatus  : string;


begin
  GridInit;
  rSet := CreateNewDataSet;
  try
    
    rSet.CommandType := cmdText;
    if rSet.Active then rSet.Close;

    iRoomReservation := 0;
    rrList := '';
    for i := 0 to lst.Count-1 do
    begin
      try
        iRoomReservation := strToInt(lst[i]);
      except
        continue;
      end;
      rrList := rrList+inttostr(iRoomReservation)+','
    end;

    if length(rrList) = 0 then exit;
    delete(rrList,length(rrList),1);

//    s := '';
//    s := s+ ' SELECT ';
//    s := s+ '       RoomReservations.RoomReservation ';
//    s := s+ '     , RoomReservations.Room  ';
//    s := s+ '     , RoomReservations.Reservation ';
//    s := s+ '     , RoomReservations.Status ';
//    s := s+ '     , RoomReservations.rrArrival ';
//    s := s+ '     , RoomReservations.rrDeparture ';
//    s := s+ '     , Reservations.Customer ';
//    s := s+ '     , Reservations.Name As CustomerName ';
//    s := s+ ' FROM ';
//    s := s+ '   RoomReservations ';
//    s := s+ '   RIGHT OUTER JOIN ';
//    s := s+ '         Reservations ON RoomReservations.Reservation = Reservations.Reservation ';
//    s := s+ ' WHERE (RoomReservation in ('+rrList+') ) ';

    s := format(select_RoomDateProblem_GridFill , [rrList]);
    // CopyToClipboard(s);
    // DebugMessage(''#10#10+s);
    hData.rSet_bySQL(rSet,s);

    while not rSet.Eof do
    begin
      iRoomReservation := rSet.fieldbyname('Roomreservation').AsInteger;
      sRoom            := rSet.fieldbyname('Room').AsString;
      sRoomType        := hdata.GET_RoomsType_byRoom(sRoom);

      dtTemp           := rSet.fieldbyname('rrArrival').AsDateTime;
      dateTimeToString(sArrival,'dd mmm',dtTemp);

      dtTemp           := rSet.fieldbyname('rrDeparture').AsDateTime;
      dateTimeToString(sDeparture,'dd mmm',dtTemp);

      sGuest           := d.RR_GetFirstGuestName(iRoomReservation);
      sCustomerName    := rSet.fieldbyname('CustomerName').AsString;
      sStatus          := rSet.fieldbyname('status').AsString;
      sStatusText      := '';//ATH g.Status2StatusText(sStatus);
      roomStatus       := d.GET_roomstatus(sRoom);


      gr.cells[0,gr.RowCount-1] := sRoom;
      gr.cells[1,gr.RowCount-1] := sRoomType;
      gr.cells[2,gr.RowCount-1] := sCustomerName+' / '+sGuest;
      gr.cells[3,gr.RowCount-1] := sStatusText;
      gr.cells[4,gr.RowCount-1] := sArrival;
      gr.cells[5,gr.RowCount-1] := sDeparture;
      gr.cells[6,gr.RowCount-1] := sStatus;
      gr.cells[7,gr.RowCount-1] := roomStatus;

      rSet.next;
      if not rSet.eof then gr.AddRow;
    end;

  finally
    freeandnil(rSet);
  end;

  gr.AutoSizeColumns(false,1);
  gr.HideColumn(6);
  gr.HideColumn(7);

//  gr.ColumnSize.Stretch := true;
//  gr.ColumnSize.StretchColumn := 2;

end;


//******************************************************************************
//  FORM
//******************************************************************************

procedure TfrmRoomDateProblem.FormCreate(Sender: TObject);
begin
  RoomerLanguage.TranslateThisForm(self);
   glb.PerformAuthenticationAssertion(self);
  lst := TstringList.Create;
  rgroption.ItemIndex := 0;
end;

procedure TfrmRoomDateProblem.FormShow(Sender: TObject);
begin
  //**
  GridFill;
end;

procedure TfrmRoomDateProblem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //**
end;

procedure TfrmRoomDateProblem.FormDestroy(Sender: TObject);
begin
  //**
  lst.Free;
end;

//******************************************************************************
//  Btn
//******************************************************************************



procedure TfrmRoomDateProblem.btnOKClick(Sender: TObject);
begin
  //**
end;

procedure TfrmRoomDateProblem.btnCancelClick(Sender: TObject);
begin
  rgroption.ItemIndex := 2;
end;

procedure TfrmRoomDateProblem.grGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
  status : string;
  BColor : Tcolor;
  FColor : Tcolor;
  ascIndex  : integer;
  descIndex : integer;
  roomStatus : string;
  aStyle : TFontStyles;
begin
   status     := gr.cells[6,arow];
   roomStatus := gr.cells[7,arow];

  if ACol = 0 then
  begin
    Fcolor := clNone;
    BColor := clNone;
    aStyle := aFont.Style;
    if StatusToColor(roomStatus,BColor, Fcolor,aStyle) then
    begin
      ABrush.Color := BColor;
      AFont.Color  := FColor;
      AFont.Style := AStyle;
    end;
  end;


   if (ACol = 2) then
   begin
     Fcolor := clred;
     BColor := clred;
     if ResStatusToColor(status,BColor, Fcolor) then
     begin
       ABrush.Color := BColor;
       AFont.Color  := FColor;
     end;
   end;

end;

end.
