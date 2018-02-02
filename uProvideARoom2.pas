﻿ unit uProvideARoom2;

interface

uses
    Windows
  , Messages
  , SysUtils
  , Classes
  , Graphics
  , Controls
  , Forms
  , Dialogs
  , ExtCtrls
  , ComCtrls
  , StdCtrls
  , Buttons
  , Grids
  , dbTables
  , ADODB
  , BaseGrid
  , DB
  , uReservationObjects
  , hdata
  ,  _glob
  , ug

  , AdvObj
  , AdvGrid

  , cmpRoomerDataSet
  , uUtils

  , cmpRoomerConnection
  , sGroupBox
  , sBitBtn
  , sPanel
  , sLabel, sButton, AdvUtil, sCheckBox, RoomerExceptionHandling
  ;

type
  ERoomerMoveRoomException = class(ERoomerUserException);

  TfrmProvideARoom2 = class(TForm)
    agrRooms : TAdvStringGrid;
    Panel2: TsPanel;
    rgrOptions: TsRadioGroup;
    sGroupBox1: TsGroupBox;
    lblArrivalCaption: TsLabel;
    lblArrival: TsLabel;
    lblDepartureCaption: TsLabel;
    lblDeparture: TsLabel;
    panBtn: TsPanel;
    btnCancel: TsButton;
    BtnOk: TsButton;
    btnRemoveRoomNumber: TsBitBtn;
    cbIncludeNonCleanRooms: TsCheckBox;
    lblResnrCaption: TsLabel;
    lblReservationNr: TsLabel;
    lbCurrentRoomCaption: TsLabel;
    lblCurrentRoom: TsLabel;
    lblRoomTypeCaption: TsLabel;
    lblRoomtype: TsLabel;
    procedure FormShow(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure agrRoomsGetCellColor(Sender : TObject; ARow, ACol : Integer; AState : TGridDrawState; ABrush : TBrush; AFont : TFont);
    procedure agrRoomsGridHint(Sender : TObject; ARow, ACol : Integer; var hintstr : string);
    procedure rgrOptionsClick(Sender: TObject);
    procedure agrRoomsDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbIncludeNonCleanRoomsClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    zReservation : Integer;
    zRoomReservation : Integer;
    zDateFrom : Tdate;
    zDateTo : Tdate;

    zRoom : string;
    zRoomType : string;
    zStatus : string;

    zOpList : tstringList;

    procedure Display;
    function SelectedRoom: string;
  end;


function ProvideARoom2(RoomReservation : Integer; var newRoom: string; aShowUncleanRooms: boolean = True) : integer; overload;
function ProvideARoom2(RoomReservation : Integer; aShowUncleanRooms: boolean = true): integer; overload;
function MoveToRoomEnh2(RoomReservation : Integer; newRoom : string) : boolean;

implementation

uses
  ud,
  uSqlDefinitions,
  uMain
  , uAppGlobal
  , PrjConst
  , uRoomerDefinitions
  , uAvailabilityPerDay
  , uReservationStateDefinitions
  , uSQLUtils
  , UITypes
  , uRoomerLanguage
  ;

{$R *.DFM}

function ProvideARoom2(RoomReservation : Integer; aShowUncleanRooms: boolean = true): integer;
var
  dummy: string;
begin
  Result := ProvideARoom2(RoomReservation, dummy, aShowUncleanRooms);
end;

function ProvideARoom2(RoomReservation : Integer; var newRoom: string; aShowUncleanRooms: boolean = True) : integer;
var
  frm: TfrmProvideARoom2;

  status : TReservationState;

  rSet : TRoomerDataSet;
  iReservation: integer;
  sRoom : string;
  sRoomType : string;
  sStatus : string;
  dtArrival : Tdate;
  dtDeparture : Tdate;

  s : string;
  isNoRoom : boolean;
  blockMove : Boolean;

begin
  Result := mrCancel;
  rSet := CreateNewDataSet;
  try
    s := format(select_ProvideARoom2_MoveToRoomEnh2 , [RoomReservation]);
    hData.rSet_bySQL(rSet,s);
    rSet.First;

    blockMove := rSet.fieldbyname('blockMove').AsBoolean;
    sRoom := trim(rSet.fieldbyname('room').AsString);
    if blockMove AND
      (Copy(sRoom, 1, 1) <> '<') then
    begin
      MessageDlg(GetTranslatedText('shTx_FrmMain_UserCannotMoveTheRoomReservation'), mtError, [mbOk], 0);
      exit;
    end;
    iReservation := rSet.fieldbyname('reservation').AsInteger;
    sRoomType := rSet.fieldbyname('roomtype').AsString;
    sStatus := rSet.fieldbyname('status').AsString;
    dtArrival := trunc(rSet.fieldbyname('Arrival').AsDateTime);
    dtDeparture := trunc(rSet.fieldbyname('Departure').AsDateTime);
  finally
    freeandnil(rSet);
  end;

  isNoRoom := sROom.IsEmpty or sROom.StartsWith('<');

  // -- Check if the status allows for a move without interference...
  status := TReservationState.fromResStatus(sStatus);

  if (status = rsGuests) and (MessageDlg(GetTranslatedText('shTx_ProvideARoom_RoomCheckedin'), mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
      exit;

  if (status = rsDeparted) and (MessageDlg(GetTranslatedText('shTx_ProvideARoom_RoomCheckedout'), mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
      exit;

  frm := TfrmProvideARoom2.Create(nil);
  try
    frm.zReservation := iReservation;
    frm.zRoomReservation := RoomReservation;

    frm.zDateFrom := dtArrival;
    frm.zDateTo := dtDeparture;

    frm.zRoom := sRoom;
    frm.zRoomType := sRoomType;
    frm.zStatus := sStatus;

    frm.btnRemoveRoomNumber.enabled := not isNoRoom;
    frm.cbIncludeNonCleanRooms.Checked := aShowUncleanRooms;

    Result := frm.ShowModal;
    if (Result in [mrOK, mrYes]) then
    begin
      if Result = mrYes then // set to NoRoom
        newRoom := ''
      else
        newRoom := frm.SelectedRoom;
      if MoveToRoomEnh2(RoomReservation, newRoom) then
        Result := mrOk
      else
        result := mrCancel;
    end;
  finally
    frm.free;
  end;
end;



procedure TfrmProvideARoom2.Display;
var
  rSet : TRoomerDataSet;
  i : Integer;
  s : string;

  roomType : string;
  orStr : string;

begin
  try
    agrRooms.RowCount := 2;
    agrRooms.ColCount := 30;

    agrRooms.FixedCols := 1;

    agrRooms.Cells[1, 0] := GetTranslatedText('shTxProvideRoom_Short');
    agrRooms.Cells[2, 0] := GetTranslatedText('shTxProvideRoom_Description');
    agrRooms.Cells[3, 0] := GetTranslatedText('shTxProvideRoom_Type');
    agrRooms.Cells[4, 0] := GetTranslatedText('shTxProvideRoom_TypeDescription');
    agrRooms.Cells[5, 0] := GetTranslatedText('shTxProvideRoom_NumRooms');
    agrRooms.Cells[6, 0] := GetTranslatedText('shTxProvideRoom_Utilities');
    agrRooms.Cells[7, 0] := GetTranslatedText('shTxProvideRoom_Location');
    agrRooms.Cells[8, 0] := GetTranslatedText('shTxProvideRoom_Floor');

    agrRooms.Cells[09, 0] := GetTranslatedText('shTxProvideRoom_Bath');
    agrRooms.Cells[10, 0] := GetTranslatedText('shTxProvideRoom_Shower');
    agrRooms.Cells[11, 0] := GetTranslatedText('shTxProvideRoom_Safe');
    agrRooms.Cells[12, 0] := GetTranslatedText('shTxProvideRoom_Television');
    agrRooms.Cells[13, 0] := GetTranslatedText('shTxProvideRoom_Video');
    agrRooms.Cells[14, 0] := GetTranslatedText('shTxProvideRoom_Radio');
    agrRooms.Cells[15, 0] := GetTranslatedText('shTxProvideRoom_CDPlayer');
    agrRooms.Cells[16, 0] := GetTranslatedText('shTxProvideRoom_Telephone');
    agrRooms.Cells[17, 0] := GetTranslatedText('shTxProvideRoom_Fax');
    agrRooms.Cells[18, 0] := GetTranslatedText('shTxProvideRoom_NetPlug');
    agrRooms.Cells[19, 0] := GetTranslatedText('shTxProvideRoom_Kitchen');
    agrRooms.Cells[20, 0] := GetTranslatedText('shTxProvideRoom_Minibar');
    agrRooms.Cells[21, 0] := GetTranslatedText('shTxProvideRoom_Fridge');
    agrRooms.Cells[22, 0] := GetTranslatedText('shTxProvideRoom_Coffemachine');
    agrRooms.Cells[23, 0] := GetTranslatedText('shTxProvideRoom_ClothingPress');
    agrRooms.Cells[24, 0] := GetTranslatedText('shTxProvideRoom_Hairdryer');
    agrRooms.Cells[25, 0] := GetTranslatedText('shTxProvideRoom_Status1');
    agrRooms.Cells[26, 0] := GetTranslatedText('shTxProvideRoom_Status');


    if d.GetRoomList_Occupied(zDateFrom, zDateTo, zRoomReservation, zOpList) then
    begin
      for i := 0 to zOpList.Count - 1 do
      begin
        orStr := orStr + ' AND (room <> ' + _db(zOpList[i]) + ') '#10;
      end;
    end;

    case rgrOptions.itemIndex of
      0 : roomType := zRoomType;
      1 : roomType := '';
      2 : begin
            roomType := zRoomType;
            orStr := '';
          end;
      3 : begin
            roomType := '';
            orStr := '';
          end;
    end;

    lblReservationNr.Caption := IntToStr(zRoomReservation);
    if zRoom.StartsWith('<') then
      lblCurrentRoom.Caption := GetTranslatedText('shNoROom')
    else
      lblCurrentRoom.Caption := zRoom;
    lblRoomtype.Caption := zRoomType;
    lblArrival.Caption := DateToStr(zDateFrom);
    lblDeparture.Caption := DateToStr(zDateTo);

    if not cbIncludeNonCleanRooms.Checked then
      orStr := orStr + ' AND (rooms.status = ''C'') '#10;

    s := '';

    rSet := CreateNewDataSet;
    try
      s := select_ProvideARoom2_Display(orStr, Roomtype);
      s := format(s, [_db(zRoom),_db(roomType)]);

      hData.rSet_bySQL(rSet,s);

      rSet.First;
      while not rSet.eof do
      begin
        agrRooms.Cells[1, agrRooms.RowCount - 1] := rSet.fieldbyname('Room').AsString;
        agrRooms.Cells[2, agrRooms.RowCount - 1] := rSet.fieldbyname('RoomDescription').AsString;
        agrRooms.Cells[3, agrRooms.RowCount - 1] := rSet.fieldbyname('RoomType').AsString;
        agrRooms.Cells[4, agrRooms.RowCount - 1] := rSet.fieldbyname('RoomTypeDescription').AsString;
        agrRooms.Cells[5, agrRooms.RowCount - 1] := rSet.fieldbyname('NumberGuests').AsString;
        agrRooms.Cells[6, agrRooms.RowCount - 1] := rSet.fieldbyname('Equipments').AsString;
        agrRooms.Cells[7, agrRooms.RowCount - 1] := rSet.fieldbyname('LocationDescription').AsString;
        agrRooms.Cells[8, agrRooms.RowCount - 1] := rSet.fieldbyname('Floor').AsString;

        if rSet['bath'] then
          agrRooms.Cells[09, agrRooms.RowCount - 1] := 'X';
        if rSet['Shower'] then
          agrRooms.Cells[10, agrRooms.RowCount - 1] := 'X';
        if rSet['Safe'] then
          agrRooms.Cells[11, agrRooms.RowCount - 1] := 'X';

        if rSet['TV'] then
          agrRooms.Cells[12, agrRooms.RowCount - 1] := 'X';
        if rSet['Video'] then
          agrRooms.Cells[13, agrRooms.RowCount - 1] := 'X';
        if rSet['Radio'] then
          agrRooms.Cells[14, agrRooms.RowCount - 1] := 'X';
        if rSet['CDPlayer'] then
          agrRooms.Cells[15, agrRooms.RowCount - 1] := 'X';

        if rSet['Telephone'] then
          agrRooms.Cells[16, agrRooms.RowCount - 1] := 'X';
        if rSet['Fax'] then
          agrRooms.Cells[17, agrRooms.RowCount - 1] := 'X';
        if rSet['InternetPlug'] then
          agrRooms.Cells[18, agrRooms.RowCount - 1] := 'X';

        if rSet['Kitchen'] then
          agrRooms.Cells[19, agrRooms.RowCount - 1] := 'X';
        if rSet['Minibar'] then
          agrRooms.Cells[20, agrRooms.RowCount - 1] := 'X';
        if rSet['Fridge'] then
          agrRooms.Cells[21, agrRooms.RowCount - 1] := 'X';
        if rSet['Coffee'] then
          agrRooms.Cells[22, agrRooms.RowCount - 1] := 'X';

        if rSet['Press'] then
          agrRooms.Cells[23, agrRooms.RowCount - 1] := 'X';
        if rSet['Hairdryer'] then
          agrRooms.Cells[24, agrRooms.RowCount - 1] := 'X';

        agrRooms.Cells[25, agrRooms.RowCount - 1] := '';
        agrRooms.Cells[26, agrRooms.RowCount - 1] := rSet.fieldbyname('Status').AsString;

        rSet.Next;
        if not rSet.eof then
          agrRooms.AddRow;
      end;
      agrRooms.AutoSizeColumns(true, 1);

      if rSet.IsEmpty and not cbIncludeNonCleanRooms.Checked and (MessageDlg(GetTranslatedText('shProvideaRoomCleanToo'), mtConfirmation, mbYesNo, 0)=mrYes) then
        cbIncludeNonCleanRooms.Checked := True;
    finally
      freeandnil(rSet);
    end;
  finally
  end;
end;

procedure TfrmProvideARoom2.FormShow(Sender : TObject);
begin
  Display;
end;

procedure TfrmProvideARoom2.rgrOptionsClick(Sender: TObject);
begin
  Display;
end;

function TfrmProvideARoom2.SelectedRoom: string;
begin
  Result := agrRooms.Cells[1, agrRooms.Row];
end;

procedure TfrmProvideARoom2.FormCreate(Sender : TObject);
begin
  RoomerLanguage.TranslateThisForm(self);
   glb.PerformAuthenticationAssertion(self); PlaceFormOnVisibleMonitor(self);
  zOpList := tstringList.Create;
end;

procedure TfrmProvideARoom2.FormDestroy(Sender: TObject);
begin
  zOpList.free;
end;

procedure TfrmProvideARoom2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

function GetProblemRooms(Room : string; dtArrival, dtDeparture : Tdate; var lst : tstringList) : Integer;

var
  rSet : TRoomerDataSet;
  s : string;
  sql : string;
begin
  lst.Clear;
  rSet := CreateNewDataSet;
  try

    rSet.CommandType := cmdText;

    sql:=
    '  SELECT DISTINCT '+
    '     RoomReservation '+
    '  FROM '+
    '    roomsdate '+
    '  WHERE    (Room =  %s ) '+
    '           AND '+
    '      ( ( ADate >= %s ) '+
    '   AND (ADate < %s ) )' +
    '   AND (ResFlag <> '+_db(STATUS_DELETED)+' ) '; //**zxhj b�tti vi�

//    '   AND (ResFlag <> '+_db(STATUS_CANCELED)+' ) '; //**zxhj b�tti vi�

    s := format(sql , [_db(Room),_db(dtArrival, true),_db(dtDeparture, true)]);
    hData.rSet_bySQL(rSet,s);

    rSet.First;
    while not rSet.eof do
    begin
      lst.Add(rSet.fieldbyname('RoomReservation').AsString);
      rSet.Next;
    end;
  finally
    freeandnil(rSet);
  end;
  result := lst.Count;
end;

function MoveToRoomEnh2(RoomReservation : Integer; newRoom : string) : boolean;
var
  i : Integer;

  rSet : TRoomerDataSet;
  lstProblems : tstringList;

  ProblemAction : Integer;
  doMove : boolean;
  iRR : Integer;
  s : string;

  FromDate : TdateTime;
  ToDate : TdateTime;
  CurrentRoom : String;

  CurrentRoomType,
  NewRoomType : String;

begin
  if NOT d.roomerMainDataSet.OfflineMode then
  begin
    Result := false;
    rSet := CreateNewDataSet;
    try
      s := format(select_ProvideARoom2_MoveToRoomEnhs , [RoomReservation]);
      hData.rSet_bySQL(rSet,s);

      rSet.First;
      if not rSet.eof then
      begin
        FromDate := trunc(rSet.fieldbyname('Arrival').AsDateTime);
        ToDate := trunc(rSet.fieldbyname('Departure').AsDateTime);
        CurrentRoomType := trim(rSet.fieldbyname('RoomType').AsString);
        CurrentRoom := trim(rSet.fieldbyname('Room').AsString);
      end
      else
        Exit;
    finally
      freeandnil(rSet);
    end;

    NewRoomType := '';
    // Warn when moving guest to a different room type?
    if g.qWarnMoveRoomToNewRoomtype AND
       (((newRoom <> '') AND (Copy(NewRoom, 1, 1) <> '<')) AND
       glb.LocateSpecificRecordAndGetValue('rooms', 'Room', NewRoom, 'RoomType', newRoomType)) then
    begin
      if AnsiLowerCase(CurrentRoomType) <> AnsiLowerCase(NewRoomType)  then
      begin
        s := format(getTranslatedText('shTx_Various_DifferentRoomType'), [CurrentRoomType, NewRoomType]);
        if MessageDlg(s, mtWarning, [mbYes, mbCancel], 0) <> mrYes then exit;
      end;
    end;

    if g.qWarnWhenOverbooking AND
     (((newRoom <> '') AND (Copy(NewRoom, 1, 1) <> '<')) AND
     glb.LocateSpecificRecordAndGetValue('rooms', 'Room', NewRoom, 'RoomType', newRoomType)) then
    begin
      if NOT IsAvailabilityThere(CurrentRoomType, newRoomType, FromDate, ToDate) then exit;
    end;



    lstProblems := tstringList.Create;
    try
      result := true;
      doMove := true;

      if GetProblemRooms(newRoom, FromDate, ToDate, lstProblems) > 0 then
      begin
        ProblemAction := g.OpenResProblem(lstProblems);

        case ProblemAction of
          0 : // N� b�kun v�kur
            begin
              d.SetAsNoRoom(RoomReservation);
              doMove := false; // �arf ekker a� gera b�i� a� setja b�kunina utan herbergja
            end;

          1 : // Eldri b�kanir v�kja
            begin
              for i := 0 to lstProblems.Count - 1 do
              begin
                iRR := strToInt(lstProblems[i]);
                if not d.SetAsNoRoom(iRR) then
                  raise ERoomerMoveRoomException.CreateFmt(GetTranslatedText('shTx_ProvideARoomErrorMoving'), [iRR]);
              end;
              doMove := true;
            end;

          2 : // H�tta vi�
            begin
              doMove := false;
            end;

        end;
      end;

      if doMove then
      begin
        d.MoveRoom(RoomReservation, newRoom)
      end;
    finally
      lstProblems.free;
    end;
  end else
  begin
    result := d.MoveRoom(RoomReservation, newRoom) //?? When executed when offline???
  end;

end;

procedure TfrmProvideARoom2.agrRoomsDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  if ACol > 0 then
    if btnOK.Enabled then
      btnOK.Click;
end;

procedure TfrmProvideARoom2.agrRoomsGetCellColor(Sender : TObject; ARow, ACol : Integer; AState : TGridDrawState; ABrush : TBrush;
  AFont : TFont);

var
  Fcolor : Tcolor;
  BColor : Tcolor;
  status : string;
  Room : string;
  i : Integer;
  fStyle : TFontStyles;

begin

  Room := agrRooms.Cells[1, ARow];

  status := agrRooms.Cells[26, ARow];

  Fcolor := agrRooms.FixedFont.Color;
  BColor := agrRooms.FixedColor;
  fStyle := [];

  if ARow = 0 then
    exit;

  Fcolor := frmMain.sSkinManager1.GetGlobalFontColor; // agrRooms.FixedFont.Color;
  BColor := frmMain.sSkinManager1.GetGlobalColor; // agrRooms.FixedColor;

  if (ACol = 1) then
  begin
    StatusToColor(status, BColor, Fcolor, fStyle);
    ABrush.Color := BColor;
    AFont.Color := Fcolor;
    AFont.Style := fStyle;
  end;

  if (ACol = 2) then
  begin
    for i := 0 to zOpList.Count - 1 do
    begin
      if zOpList[i] = Room then
      begin
        ABrush.Color := clRed;
        AFont.Color := clYellow;
      end;
    end;
  end;

  if (ACol > 8) and (ACol < 25) and (ARow > 0) then
  begin
    if agrRooms.Cells[ACol, ARow] = 'X' then
    begin
      ABrush.Color := frmMain.sSkinManager1.GetActiveEditColor; // GetHighLightColor; // clGreen;
      AFont.Color := frmMain.sSkinManager1.GetActiveEditFontColor; // GetHighLightFontColor; // clYellow;
    end
  end;

end;

procedure TfrmProvideARoom2.agrRoomsGridHint(Sender : TObject; ARow, ACol : Integer; var hintstr : string);
var
  sHint : string;
  isWith : boolean;

begin

  if (ACol > 8) and (ACol < 25) and (ARow > 0) then
  begin

    isWith := agrRooms.Cells[ACol, ARow] = 'X';

    if isWith then
      sHint := GetTranslatedText('shTx_ProvideARoom_RoomWith')
    else
      sHint := GetTranslatedText('shTx_ProvideARoom_RoomWithout');

    case ACol of
      09 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Bath')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Baths');
        end;
      10 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Shower')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Shower');
        end;
      11 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Safe')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Safe');
        end;
      12 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_TV')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_TVs');
        end;
      13 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_VCR')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_VCRs');
        end;
      14 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Radio')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Radios');
        end;
      15 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_CDPlayer')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_CDPlayer');
        end;
      16 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Phone')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Phone');
        end;
      17 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Fax')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Faxs');
        end;
      18 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_InternetPlug')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_InternetPlugs');
        end;
      19 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Kitchen')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Kitchens');
        end;
      20 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Minibar')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Minibars');
        end;
      21 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Fridge')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Fridges');
        end;
      22 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_CoffeeMachine')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_CoffeeMachines');
        end;
      23 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Iron')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Iron');
        end;
      24 :
        begin
          if isWith then
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Hairdryer')
          else
            hintstr := sHint + GetTranslatedText('shTx_ProvideARoom_Hairdryer');
        end;
    end;
  end;
end;

procedure TfrmProvideARoom2.cbIncludeNonCleanRoomsClick(Sender: TObject);
begin
  Display;
end;

end.
