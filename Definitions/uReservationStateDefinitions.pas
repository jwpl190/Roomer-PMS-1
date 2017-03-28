﻿unit uReservationStateDefinitions;

interface

uses
  Graphics
  , CLasses
  , uRoomerDefinitions
  ;

type
  ///	<summary>
  ///	  Possible states of a reservation
  ///	</summary>
  ///	<remarks>
  ///	  See
  ///	  <see href="https://promoir.atlassian.net/wiki/display/RP1/Explanation+of+Reservation+States+used+in+Roomer" />
  ///	   for a full explanation of the meaning of all states and the relation with states in the backend
  ///	</remarks>
  TReservationState = (
    rsUnKnown,

    rsReservation,

    rsGuests,

    rsDeparted,

    rsOptionalBooking,

    rsAllotment,

    rsNoShow,

    rsBlocked,

    rsCancelled,

    rsTmp1,

    rsAwaitingPayment,

    rsAwaitingPayConfirm,

    rsMixed,

    rsWaitingList,

    rsDeleted
  );

    TReservationStateSet = set of TReservationState;

    TReservationStateHelper = record helper for TReservationState
  private
    public
      // constructor
      /// <summary>
      ///   Create a TReservationState from a single character or status string
      /// </summary>
      class function FromResStatus(const statusChar : char) : TReservationState; overload; static;
      class function FromResStatus(const statusStr : string) : TReservationState; overload; static;
      /// <summary>
      ///   Return a TReservationState based in index. Note that this does now work with the itemlist returned by AsStrings as this
      ///  list only contains UserSelectable TReservationStates
      /// </summary>
      class function FromItemIndex(aIndex: integer) : TReservationState; static;

      /// <summary>
      ///   Fill a TStrings with translated descriptions in order of enumeration. Can by used to populate a TCombobox.<br />
      ///  The objects list of aItemList will contain the ord() of the state cast to an TObject
      /// </summary>
      class procedure AsStrings(aItemList: TStrings); static;
      /// <summary>
      ///   Return the itemindex of TReservationState as it would have in the itemlist created by AsStrings
      /// </summary>
      function ToItemIndex: integer;

      /// <summary>
      ///   Return a single character statusstring
      /// </summary>
      function AsStatusChar: Char;
      /// <summary>
      ///   Return the translated displaystring for a ReservationState
      /// </summary>
      function AsReadableString : string;
      /// <summary>
      ///   Return the translated displaystring for a ReservationState, used in Reservation hint<br />
      ///  Texts used in ReservationHint are slightly different than those use in AsReadableString
      /// </summary>
      function AsStatusText : string;
      /// <summary>
      ///   Return the colors (back and front) set for hotel to be used for displaying reservation data
      /// </summary>
      function ToColor(var backColor, fontColor : TColor) : boolean;
      /// <summary>
      ///   Return wether this state can be set by the user of PMS or only by backend
      /// </summary>
      function IsUserSelectable: boolean;

      /// <summary>
      ///   Return the status attribute regarding colors and fonts.
      /// </summary>
      function AsStatusAttribute : recStatusAttr;

      /// <summary>
      ///   Can the current state be changed into aNewState
      /// </summary>
      function CanChangeTo(aNewState: TReservationState): boolean;

      /// <summary>
      ///   Returns a TReservationState set with all states that are allowed to change into the Self state
      /// </summary>
      function StatesAllowedToChangeIntoThis: TReservationStateSet;

      /// <summary>
      ///   True if a reservation with this state has influence on the room availability
      /// </summary>
      function InfluencesAvailability: boolean;

      /// <summary>
      ///   True if changing the reservationstate of a reservation from this into newState could change the
      ///   availability of rooms
      /// </summary>
      function AffectsAvailabilityWhenChangingTo(anewState: TReservationState): boolean;

    end;

    TReservationStateSetHelper = record helper for TReservationStateSet
      /// <summary>
      ///   Returns a string containing a set definition as used in SQL statements, i.e. ('P, 'C')
      /// </summary>
      function AsSQLString: string;
    end;

const
	STATUS_NOT_ARRIVED = 'P';
  STATUS_ARRIVED = 'G';
  STATUS_CHECKED_OUT = 'D';
  STATUS_CANCELLED = 'C';
  STATUS_OPTIONAL = 'O';
  STATUS_NO_SHOW = 'N';
  STATUS_ALLOTMENT = 'A';
  STATUS_BLOCKED = 'B';
  STATUS_CANCELED = 'C';  //*HJ 140210
  STATUS_TMP1 = 'W';  //*HJ 140210
  STATUS_AWAITING_PAYMENT = 'Z';  //*BG 140304
  STATUS_DELETED = 'X';  //*BG 140304
  STATUS_WAITING_LIST = 'L';

implementation

uses
    PrjConst
  , SysUtils
  , uG
  , uUtils;


function TReservationStateHelper.AsStatusAttribute: recStatusAttr;
begin
  case Self of
    rsReservation:        result := g.qStatusAttr_Order;
    rsGuests:             result := g.qStatusAttr_GuestStaying;
    rsDeparted:           result := g.qStatusAttr_Departed;
    rsOptionalBooking:    result := g.qStatusAttr_Option;
    rsAllotment:           result := g.qStatusAttr_Allotment;
    rsNoShow:             result := g.qStatusAttr_NoShow;
    rsBlocked:            result := g.qStatusAttr_Blocked;
    rsCancelled:          result := g.qStatusAttr_Canceled;
    rsTmp1:               result := g.qStatusAttr_TMP1;
    rsAwaitingPayment:    result := g.qStatusAttr_TMP2;
    rsAwaitingPayConfirm: result := g.qStatusAttr_TMP2;
    rsWaitingList:        result := g.qStatusAttr_WaitingList;
    else
        result := g.qStatusAttr_GuestStaying;
    end;

end;

function TReservationStateHelper.AsStatusChar: Char;
const
  cReservationStateChars : Array[TReservationState] of char =
      ('P','P','G','D','O','A','N','B','C','W','Z','Q', 'M', 'L', 'X');
begin
  Result := cReservationStateChars[Self];
end;


class procedure TReservationStateHelper.AsStrings(aItemList: TStrings);
var
  s: TReservationState;
begin
  aItemList.Clear;
  for s := TReservationState(1) to high(s) do // dont use rsUnkown and rsMixed
    if s <> rsMixed then
      aItemList.AddObject(s.AsReadableString, TObject(ord(s)));
end;

function TReservationStateHelper.CanChangeTo(aNewState: TReservationState): boolean;
begin
  //This is the implementation of the change-state matrix in https://promoir.atlassian.net/wiki/display/RP1/Explanation+of+Reservation+States+used+in+Roomer
  Result := Self <> aNewState;
  if Result then
    case Self of
      rsUnknown:            Result := aNewState in [rsReservation, rsGuests, rsOptionalBooking, rsAllotment, rsNoShow, rsBlocked, rsCancelled, rsWaitingList];
      rsReservation:        Result := aNewState in [rsGuests, rsOptionalBooking, rsNoShow, rsBlocked, rsCancelled, rsWaitingList];
      rsGuests:             Result := aNewState in [rsReservation, rsDeparted];
      rsDeparted:           Result := aNewState in [rsGuests];
      rsOptionalBooking:    Result := aNewState in [rsReservation, rsGuests, rsNoShow, rsBlocked, rsCancelled, rsWaitingList];
      rsAllotment:          Result := aNewState in [rsCancelled];
      rsNoShow:             Result := aNewState in [rsReservation, rsCancelled];
      rsBlocked:            Result := aNewState in [rsReservation, rsOptionalBooking, rsBlocked, rsWaitingList];
      rsCancelled:          Result := aNewState in [rsReservation, rsAllotment];
      rsTmp1:               Result := aNewState in [rsReservation, rsGuests, rsOptionalBooking, rsNoShow, rsBlocked, rsCancelled, rsWaitingList];
      rsAwaitingPayment:    result := False;
      rsAwaitingPayConfirm: result := False;
      rsMixed:              result := false;
      rsWaitingList:        Result := aNewState in [rsReservation, rsGuests, rsOptionalBooking, rsNoShow, rsBlocked, rsCancelled];
    else
      Result := false;
    end;
end;

class function TReservationStateHelper.FromItemIndex(aIndex: integer): TReservationState;
begin
  if aIndex = -1 then
    Result := rsUnKnown
  else
    Result := TReservationState(aIndex+1);
end;

class function TReservationStateHelper.FromResStatus(const statusStr: string): TReservationState;
begin
  if statusStr.IsEmpty then
    Result := rsUnKnown
  else
    Result := FromResStatus(statusStr.Chars[0]);
end;

function TReservationStateHelper.InfluencesAvailability: boolean;
begin
  case Self of
    rsReservation:        result := True;
    rsGuests:             result := True;
    rsDeparted:           result := True;
    rsOptionalBooking:    result := False;
    rsAllotment:          result := True;
    rsNoShow:             result := False;
    rsBlocked:            result := True;
    rsCancelled:          result := False;
    rsTmp1:               result := False;
    rsAwaitingPayment:    result := True;
    rsAwaitingPayConfirm: result := True;
    rsMixed:              result := True;
    rsWaitingList:        result := True;
    rsDeleted:            result := false;
  else
    Result := True;
  end;

end;

function TReservationStateHelper.AffectsAvailabilityWhenChangingTo(anewState: TReservationState): boolean;
begin
  Result := (Self.influencesAvailability <> aNewState.influencesAvailability);
end;

function TReservationStateHelper.IsUserSelectable: boolean;
begin
  case Self of
    rsReservation:        result := True;
    rsGuests:             result := True;
    rsDeparted:           result := True;
    rsOptionalBooking:    result := True;
    rsAllotment:          result := True;
    rsNoShow:             result := True;
    rsBlocked:            result := True;
    rsCancelled:          result := True;
    rsTmp1:               result := False;
    rsAwaitingPayment:    result := False;
    rsAwaitingPayConfirm: result := False;
    rsMixed:              result := false;
    rsWaitingList:        result := True;
    rsDeleted:            result := False;
  else
    Result := false;
  end;

end;

function TReservationStateHelper.StatesAllowedToChangeIntoThis: TReservationStateSet;
var
  lState: TReservationState;
begin
  Result := [];
  for lState := low(TReservationstate) to high(TReservationState) do
    if lState.CanChangeTo(Self) then
      include(Result, lState);
end;

function TReservationStateHelper.AsReadableString : string;
begin
  case Self of
    rsReservation:        result := GetTranslatedText('shTx_G_Reservation');
    rsGuests:             result := GetTranslatedText('shTx_G_CheckedIn');
    rsDeparted:           result := GetTranslatedText('shTx_G_Departed');
    rsOptionalBooking:    result := GetTranslatedText('shTx_G_WaitingList');
    rsAllotment:           result := GetTranslatedText('shTx_G_Alotment');
    rsNoShow:             result := GetTranslatedText('shTx_G_NoShow');
    rsBlocked:            result := GetTranslatedText('shTx_G_Blocked');
    rsCancelled:          result := GetTranslatedText('shTx_G_Canceled');
    rsTmp1:               result := GetTranslatedText('shTx_G_Tmp1');
    rsAwaitingPayment:    result := GetTranslatedText('shTx_G_AwaitingPayment');
    rsAwaitingPayConfirm: result := GetTranslatedText('shTx_G_AwaitingPayConfirm');
    rsMixed:              result := GetTranslatedText('shTx_G_Mixed');
    rsWaitingList:        result := GetTranslatedText('shTx_G_WaitingListNonOptional');
  else
    Result := '';
  end;
end;

function TReservationStateHelper.AsStatusText : string;
begin
  case Self of
    rsReservation:        result := GetTranslatedText('shTx_G_NotArrived');
    rsDeparted:           result := GetTranslatedText('shTx_G_CheckedOut');
    rsAwaitingPayment:    result := GetTranslatedText('shTx_G_Tmp2');
  else
    result := AsReadableString;
  end;
end;

class function TReservationStateHelper.FromResStatus(const statusChar : char) : TReservationState;
begin
  case UpperCase(statusChar)[1] of
    'P': result := rsReservation;
    'G': result := rsGuests;
    'D': result := rsDeparted;
    'O': result := rsOptionalBooking;
    'A': result := rsAllotment;
    'N': result := rsNoShow;
    'B': result := rsBlocked;
    'C': result := rsCancelled;
    'W': result := rsTmp1;
    'Z': result := rsAwaitingPayment;
    'Q': result := rsAwaitingPayConfirm;
    'L': result := rsWaitingList;
    'X': result := rsDeleted;
  else
    result := rsUnKnown;
  end;
end;


function TReservationStateHelper.ToColor(var backColor, fontColor : TColor) : boolean;
begin
  result := false;

  case Self of
    rsReservation :
      begin
        backColor := g.qStatusAttr_Order.backgroundColor; //clRed;
        fontColor := g.qStatusAttr_Order.fontColor; //clWhite
        result := true;
      end;
    rsGuests :
      begin
        backColor := g.qStatusAttr_GuestStaying.backgroundColor; //clGreen;
        fontColor := g.qStatusAttr_GuestStaying.fontColor; //clWhite;
        result := true;
      end;
    rsDeparted :
      begin
        backColor := g.qStatusAttr_Departed.backgroundColor;
        fontColor := g.qStatusAttr_Departed.fontColor;  //clWhite;
        result := true;
      end;
    rsOptionalBooking :
      begin
        backColor := g.qStatusAttr_Option.backgroundColor; //clYellow;
        fontColor := g.qStatusAttr_Option.fontColor; //clBlack;
        result := true;
      end;
    rsNoShow :
      begin
        backColor := g.qStatusAttr_NoShow.backgroundColor; //clRed;
        fontColor := g.qStatusAttr_NoShow.fontColor;//clYellow;
        result := true;
      end;
    rsAllotment :
      begin
        backColor := g.qStatusAttr_Allotment.backgroundColor; //clWhite;
        fontColor := g.qStatusAttr_Allotment.fontColor;   //clRed;
        result := true;
      end;
    rsBlocked :
      begin
        backColor := g.qStatusAttr_Blocked.backgroundColor; //_tinyIntToColor(55);
        fontColor := g.qStatusAttr_Blocked.fontColor;  //_tinyIntToColor(0);
        result := true;
      end;
    rsCancelled :
      begin
        backColor := g.qStatusAttr_Canceled.backgroundColor; //;  //*HJ 140210
        fontColor := g.qStatusAttr_Canceled.fontColor;//;
        result := true;
      end;
    rsTmp1:
      begin
        backColor := g.qStatusAttr_TMP1.backgroundColor; //;  //*HJ 140210
        fontColor := g.qStatusAttr_TMP1.fontColor;//;
        result := true;
      end;
    rsAwaitingPayment :
      begin
        backColor := g.qStatusAttr_TMP2.backgroundColor; //;   //*HJ 140210
        fontColor := g.qStatusAttr_TMP2.fontColor;//;
        result := true;
      end;
    rsWaitingList :
      begin
        backColor := g.qStatusAttr_WaitingList.backgroundColor;
        fontColor := g.qStatusAttr_WaitingList.fontColor;
        result := true;
      end;
    else
      begin
        backColor := g.qStatusAttr_GuestStaying.backgroundColor; //clBlue;
        fontColor := g.qStatusAttr_GuestStaying.fontColor; // clYellow;
      end;
    end;
end;


function TReservationStateHelper.ToItemIndex: integer;
begin
  if Self = rsUnknown then
    Result := -1
  else
    Result := ord(Self)-1;
end;

{ TReservationStateSetHelper }

function TReservationStateSetHelper.AsSQLString: string;
var
  lStr: TStringList;
  stat: TReservationState;
begin
  lStr := TStringlist.Create;
  try
    for stat in Self do
      lStr.Add(Quotedstr( stat.AsStatusChar));

    lStr.Delimiter := ',';
    Result := '(' + lStr.DelimitedText +')';
  finally
    lStr.Free;
  end;
end;

end.