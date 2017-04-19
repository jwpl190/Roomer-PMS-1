unit objDayFreeRooms;

interface


uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Contnrs,
  Dialogs,
  NativeXML,
  ADODB
  , System.Generics.Collections
  , uDateUtils
  , hData
  , cmpRoomerDataSet
  , cmpRoomerConnection
  ;

{$M+}
TYPE

  TFreeRoomItem = class
  private
    FRoom                : string    ;
    FStatus              : string    ;
    FNextOcc             : string    ;

    function getRoom                : string    ;
    function getStatus              : string    ;
    function getNextOcc             : string    ;

    procedure SetRoom(Value    : string);
    procedure SetStatus(Value  : string);
    procedure SetNextOcc(Value : string);

  published
    // **
  public
    constructor Create;
    destructor Destroy; override;

    property Room               : string    read  getRoom                  write setRoom               ;
    property Status             : string    read  getStatus                write setStatus             ;
    property NextOcc            : string    read  getNextOcc               write setNextOcc            ;
  end;


//////////////////////////////////////////////////////////////////////////////
//  TRoomItem
//
//
//////////////////////////////////////////////////////////////////////////////



  TFreeRoomItemsList = TObjectDictionary<String,TFreeRoomItem>;


  //////////////////////////////////////////////////////////////////////////////////////
  ///
  ///
  ///
  /////////////////////////////////////////////////////////////////////////////////////

  TFreeRooms = class
  private
    FXmlFileName : string;

    FRoomCount : integer;
    FRoomList : TFreeRoomItemsList;

    FHotelcode       : string ;
    FsDate           : string ;
    FOccRooms        : string ;

    function getRoomCount : integer;
    procedure FillList(sDate : TDateTime;occRooms : string; var RoomCount: integer); overload;
    procedure FillList(var rSet : TRoomerDataSet); overload;
    procedure ClearRoomList;

  public
    constructor Create(HotelCode : String;sDate : TDateTime;occRooms : string);
    destructor Destroy; override;

    property XmlFileName : string read FXmlFileName write FXmlFileName;

    property Hotelcode      : string    read FHotelcode      write FHotelcode;
    property sDate          : string    read FsDate          write FsDate;
    property occRooms       : string    read FOccRooms       write FOccRooms ;

    function FindRoomFromRoomNumber(RoomNumber : string) : TFreeRoomItem;
//    function FindRoomFromRoomNumber(RoomNumber : string; StartAt : integer; caseSensitive : Boolean = false) : integer;

    function FindRoomStatus(RoomNumber: string): string;
    function FindRoomNextOcc(RoomNumber: string): string;


    property RoomItemsList : TFreeRoomItemsList read FRoomList write FRoomList;
    property RoomCount : integer read getRoomCount;

  end;




implementation

uses //uDSp
  ug
  ,_glob
  ,uD
  , uMain
  ;



//////////////////////////////////////////////////////////////////////////////
//  TRoomItem
//
//
//////////////////////////////////////////////////////////////////////////////

constructor  TFreeRoomItem.Create;
begin

end;

destructor TFreeRoomItem.Destroy;
begin

  inherited;
end;



function TFreeRoomItem.getRoom: string;
begin
  result := FRoom
end;


function TFreeRoomItem.getStatus: string;
begin
  result := FStatus
end;


function TFreeRoomItem.getNextOcc: String;
begin
  result := FNextOcc;
end;



////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////



procedure TFreeRoomItem.SetRoom(Value: string);
begin
  FRoom := value
end;

procedure TFreeRoomItem.SetStatus(Value: string);
begin
  FStatus := value
end;

procedure TFreeRoomItem.SetNextOcc(Value: String);
begin
  FNextOcc := value
end;



//////////////////////////////////////////////////////////////////////
//
//
//////////////////////////////////////////////////////////////////////
constructor TFreeRooms.Create(HotelCode : String;sDate : TDateTime;occRooms : string);
begin
  inherited Create;

  FRoomList := TFreeRoomItemsList.Create([doOwnsValues]);

  FHotelCode := HotelCode;
  FsDate     := uDateUtils.dateToSqlString(sDate);
  FoccRooms  := occRooms;


  FRoomCount := 0;

  FillList(sDate,FoccRooms,FRoomCount);

end;

destructor TFreeRooms.Destroy;
begin
  ClearRoomList;
  freeandnil(FRoomList);
  inherited;
end;

procedure TFreeRooms.ClearRoomList;
begin
  FRoomList.Clear;
end;

procedure TFreeRooms.FillList(sDate : TDateTime;occRooms : string; var RoomCount: integer);
var
  rSet : TRoomerDataSet;
begin
  ClearRoomList;
  if frmMain.OfflineMode then
    exit;
  rSet := d.roomerMainDataSet.ActivateNewDataset(
    d.roomerMainDataSet.SystemNextBookingDates(sDate, occRooms));

  FillList(rSet);
end;

procedure TFreeRooms.FillList(var rSet : TRoomerDataSet);
var
  RoomItem : TFreeRoomItem;

  Room                : string  ;
  Status              : string  ;
  NextOcc             : string  ;

begin
  ClearRoomList;
  FRoomCount := 0;
  if frmMain.OfflineMode then
    exit;
  try
    Rset.First;
    While not rSet.Eof do
    begin
      Room                 := Rset.fieldbyname('Room').asString;
      Status               := Rset.fieldbyname('Status').asString;
      NextOcc              := Rset.fieldbyname('NextOcc').asString;

      RoomItem := TFreeRoomItem.Create;
      try
        RoomItem.SetRoom(LowerCase(Room));
        RoomItem.SetStatus(Status);
        RoomItem.SetNextOcc(NextOcc);
        FRoomList.AddOrSetValue(Room, RoomItem);
//        FRoomList.Add(RoomItem);
      except
         // logga
      end;
      rSet.Next;
    end;
    FRoomCount := FRoomList.Count;
  finally
    freeandNil(rSet);
  end;
end;


function TFreeRooms.FindRoomFromRoomNumber(RoomNumber: string): TFreeRoomItem;
var
  i : integer;
  Room : string;
  FreeRoomItem : TFreeRoomItem;
begin
  result := nil;
  if FRoomList.TryGetValue(LowerCase(RoomNumber), FreeRoomItem) then
    result := FreeRoomITem;
//
//  result := -1;
//
//  if StartAt > FRoomList.Count-1 then exit;
//
//  if not caseSensitive then
//  begin
//    RoomNumber := ansiLowercase(RoomNumber);
//  end;
//
//
//  for i := startAt to FRoomList.Count -1 do
//  begin
//    Room := FRoomList[i].FRoom;
//
//    if not caseSensitive then
//    begin
//      Room := ansiLowercase(room);
//    end;
//
//    if RoomNumber = room then
//    begin
//      result := i;
//      Break;
//    end;
//  end;
end;

//function TFreeRooms.FindRoomFromRoomNumber(RoomNumber: string; StartAt: integer; caseSensitive: Boolean): integer;
//var
//  i : integer;
//  Room : string;
//begin
//  result := -1;
//
//  if StartAt > FRoomList.Count-1 then exit;
//
//  if not caseSensitive then
//  begin
//    RoomNumber := ansiLowercase(RoomNumber);
//  end;
//
//
//  for i := startAt to FRoomList.Count -1 do
//  begin
//    Room := FRoomList[i].FRoom;
//
//    if not caseSensitive then
//    begin
//      Room := ansiLowercase(room);
//    end;
//
//    if RoomNumber = room then
//    begin
//      result := i;
//      Break;
//    end;
//  end;
//end;

function TFreeRooms.FindRoomNextOcc(RoomNumber: string): string;
var
  i : integer;
  Room : string;
  Status : string;
  FreeRoomItem : TFreeRoomItem;
begin
  result := '';

  RoomNumber := ansiLowercase(RoomNumber);
  FreeRoomItem := FindRoomFromRoomNumber(RoomNumber);
  if Assigned(FreeRoomItem) then
    result := FreeRoomItem.NextOcc;

//  for i := 0 to FRoomList.Count -1 do
//  begin
//    Room   := ansiLowercase(FRoomList[i].FRoom);
//    status := ansiLowercase(FRoomList[i].FStatus);
//
//    if (RoomNumber = room) and (status <> 'x') then //zxhj breytti h�r
//    begin
//      result := FRoomList[i].NextOcc;
//      Break;
//    end;
//  end;
end;

function TFreeRooms.FindRoomStatus(RoomNumber: string): string;
var
  i : integer;
  Room : string;
  FreeRoomItem : TFreeRoomItem;
begin
  result := '';

  RoomNumber := ansiLowercase(RoomNumber);
  FreeRoomItem := FindRoomFromRoomNumber(RoomNumber);
  if Assigned(FreeRoomItem) then
    result := FreeRoomItem.FStatus;

//  for i := 0 to FRoomList.Count -1 do
//  begin
//    Room := FRoomList[i].FRoom;
//    Room := ansiLowercase(room);
//
//    if RoomNumber = room then
//    begin
//      result := FRoomList[i].FStatus;
//      Break;
//    end;
//  end;
end;


function TFreeRooms.getRoomCount: integer;
begin
  result := FRoomList.Count;
end;

end.
