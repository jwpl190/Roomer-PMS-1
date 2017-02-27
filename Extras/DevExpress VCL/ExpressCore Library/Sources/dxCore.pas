{********************************************************************}
{                                                                    }
{       Developer Express Visual Component Library                   }
{       ExpressCoreLibrary                                           }
{                                                                    }
{       Copyright (c) 1998-2014 Developer Express Inc.               }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{   The entire contents of this file is protected by U.S. and        }
{   International Copyright Laws. Unauthorized reproduction,         }
{   reverse-engineering, and distribution of all or any portion of   }
{   the code contained in this file is strictly prohibited and may   }
{   result in severe civil and criminal penalties and will be        }
{   prosecuted to the maximum extent possible under the law.         }
{                                                                    }
{   RESTRICTIONS                                                     }
{                                                                    }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES            }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE     }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS    }
{   LICENSED TO DISTRIBUTE THE EXPRESSCORELIBRARY AND ALL            }
{   ACCOMPANYING VCL CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY. }
{                                                                    }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED       }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE         }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE        }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT   }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                       }
{                                                                    }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON        }
{   ADDITIONAL RESTRICTIONS.                                         }
{                                                                    }
{********************************************************************}

unit dxCore;

{$I cxVer.inc}

interface

uses
  Windows, Classes, SysUtils, Variants, Contnrs,
{$IFDEF DELPHI18}
  AnsiStrings, 
{$ENDIF}
  Graphics, Types;

const
  dxBuildNumber: Cardinal = 20130108;
  dxUnicodePrefix: Word = $FEFF;
  dxCRLF = #13#10;

type
{$IFNDEF DELPHI17}
  TVerticalAlignment = (taAlignTop, taAlignBottom, taVerticalCenter);
{$IFNDEF DELPHI12}
  TBytes = array of Byte;
  TRecordBuffer = PAnsiChar;
  TValueBuffer = Pointer;
{$ENDIF}
{$ENDIF}
  TColors = array of TColor;
  TPoints = array of TPoint; 
  TRects = array of TRect;
  TRGBColors = array of TRGBQuad;
  PdxNativeInt = ^TdxNativeInt;
  TdxNativeInt = {$IFDEF DELPHI16}NativeInt{$ELSE}Longint{$ENDIF};
  PdxNativeUInt = ^TdxNativeUInt;
  TdxNativeUInt = {$IFDEF DELPHI16}NativeUInt{$ELSE}Cardinal{$ENDIF};

  TdxDefaultBoolean = (bFalse, bTrue, bDefault);
  TdxCorner = (coTopLeft, coTopRight, coBottomLeft, coBottomRight);
  TdxOrientation = (orHorizontal, orVertical);
  TdxSortOrder = (soNone, soAscending, soDescending);

  IdxLocalizerListener = interface
  ['{2E926681-1A56-4599-E8E0-B02D62740E56}']
    procedure TranslationChanged;
  end;

  TdxAnsiCharSet = set of AnsiChar;

  { TdxStream }

  TdxStream = class(TStream)
  private
    FIsUnicode: Boolean;
    FStream: TStream;
  protected
  {$IFDEF DELPHI7}
    function GetSize: Int64; override;
  {$ENDIF}
  public
    constructor Create(AStream: TStream); virtual;
    function Read(var Buffer; Count: Longint): Longint; override;
    function Seek(Offset: Longint; Origin: Word): Longint; override;
    function Write(const Buffer; Count: Longint): Longint; override;

    property IsUnicode: Boolean read FIsUnicode;
    property Stream: TStream read FStream;
  end;

  TdxProductResourceStrings = class;

  TdxAddResourceStringsProcedure = procedure(AProduct: TdxProductResourceStrings);

  TdxProductResourceStrings = class
  private
    FName: string;
    FInitializeProc: TdxAddResourceStringsProcedure;
    FResStringNames: TStrings;

    function GetNames(AIndex: Integer): string;
    function GetResStringsCount: Integer;
    procedure SetTranslation(AIndex: Integer);
    function GetValues(AIndex: Integer): string;
    procedure InitializeResStringNames;
  protected
    procedure Translate;
  public
    constructor Create(const AName: string; AInitializeProc: TdxAddResourceStringsProcedure); virtual;
    destructor Destroy; override;
    procedure Add(const AResStringName: string; AResStringAddr: Pointer);
    procedure Clear;
    function GetIndexByName(const AName: string): Integer;

    property Name: string read FName;
    property Names[AIndex: Integer]: string read GetNames;
    property ResStringsCount: Integer read GetResStringsCount;
    property Values[AIndex: Integer]: string read GetValues;
  end;

  TdxLocalizationTranslateResStringEvent = procedure(const AResStringName: string; AResString: Pointer) of object;

  TdxResourceStringsRepository = class
  private
    FListeners: TList;
    FProducts: TObjectList;
    FOnTranslateResString: TdxLocalizationTranslateResStringEvent;

    function GetProducts(AIndex: Integer): TdxProductResourceStrings;
    function GetProductsCount: Integer;
  public
    constructor Create; virtual;
    destructor Destroy; override;

    procedure AddListener(AListener: IdxLocalizerListener);
    procedure RemoveListener(AListener: IdxLocalizerListener);
    procedure NotifyListeners;

    procedure RegisterProduct(const AProductName: string; AAddStringsProc: TdxAddResourceStringsProcedure);
    function GetProductIndexByName(const AName: string): Integer;
    function GetOriginalValue(const AName: string): string;
    procedure Translate;
    procedure UnRegisterProduct(const AProductName: string);

    property Products[Index: Integer]: TdxProductResourceStrings read GetProducts;
    property ProductsCount: Integer read GetProductsCount;
    property OnTranslateResString: TdxLocalizationTranslateResStringEvent read FOnTranslateResString write FOnTranslateResString;
  end;

  { TdxUnitsLoader }

  TdxProc = procedure;

  TdxUnitsLoader = class
  protected
    FinalizeList: TList;
    InitializeList: TList;
    procedure CallProc(AProc: TdxProc);
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddUnit(const AInitializeProc, AFinalizeProc: Pointer);
    procedure RemoveUnit(const AFinalizeProc: Pointer);
    procedure Finalize;
    procedure Initialize;
  end;

  EdxException = class(Exception);

  EdxTestException = class(EdxException);

procedure dxAbstractError;
procedure dxTestCheck(AValue: WordBool; const AMessage: string);
procedure dxCheckOrientation(var AValue: TdxOrientation; ADefaultOrientation: TdxOrientation);

procedure dxCallNotify(ANotifyEvent: TNotifyEvent; ASender: TObject);
function dxGetTickCount: Int64;
function dxSameMethods(const Method1, Method2): Boolean; {$IFDEF DELPHI9} inline; {$ENDIF}

// string functions
function dxBinToHex(const ABuffer: AnsiString): AnsiString; overload;
function dxBinToHex(const ABuffer: PAnsiChar; ABufSize: Integer): AnsiString; overload;
function dxHexToBin(const AText: AnsiString): AnsiString; overload;
function dxHexToBin(const AText: PAnsiChar): AnsiString; overload;
function dxHexToByte(const AHex: string): Byte;
function dxCharCount(const S: string): Integer; {$IFDEF DELPHI9} inline;{$ENDIF}
function dxCharInSet(C: Char; const ACharSet: TdxAnsiCharSet): Boolean; {$IFDEF DELPHI9} inline;{$ENDIF}
function dxStringSize(const S: string): Integer; {$IFDEF DELPHI9} inline;{$ENDIF}

function dxAnsiIsAlpha(Ch: AnsiChar): Boolean;
function dxCharIsAlpha(Ch: Char): Boolean;
function dxWideIsAlpha(Ch: WideChar): Boolean;
function dxAnsiIsNumeric(Ch: AnsiChar): Boolean;
function dxCharIsNumeric(Ch: Char): Boolean;
function dxWideIsNumeric(Ch: WideChar): Boolean;

function dxStrComp(const Str1, Str2: PAnsiChar): Integer; {$IFDEF DELPHI9} inline; {$ENDIF}
function dxStrCopy(ADest: PAnsiChar; const ASource: PAnsiChar): PAnsiChar; {$IFDEF DELPHI9} inline; {$ENDIF}
function dxStrLCopy(ADest: PAnsiChar; const ASource: PAnsiChar; AMaxLen: Cardinal): PAnsiChar; {$IFDEF DELPHI9} inline; {$ENDIF}
function dxStrLen(const AStr: PAnsiChar): Cardinal; {$IFDEF DELPHI9} inline; {$ENDIF}

function dxGetCodePageFromCharset(ACharset: Integer): Integer;
function dxGetStringTypeA(Locale: LCID; dwInfoType: DWORD; const lpSrcStr: PAnsiChar;
  cchSrc: Integer; var lpCharType): BOOL;
function dxGetStringTypeW(dwInfoType: DWORD; const lpSrcStr: PWideChar;
  cchSrc: Integer; var lpCharType): BOOL;
function dxGetAnsiCharCType1(Ch: AnsiChar): Word;
function dxGetWideCharCType1(Ch: WideChar): Word;

// string conversions
function dxAnsiStringToWideString(const ASource: AnsiString; ACodePage: Cardinal = CP_ACP;
  ASrcLength: Integer = -1): WideString;
function dxWideStringToAnsiString(const ASource: WideString; ACodePage: Cardinal = CP_ACP;
  ASrcLength: Integer = -1): AnsiString;

function dxAnsiStringToString(const S: AnsiString; ACodePage: Integer = CP_ACP): string; {$IFDEF DELPHI9} inline;{$ENDIF}
function dxStringToAnsiString(const S: string; ACodePage: Integer = CP_ACP): AnsiString; {$IFDEF DELPHI9} inline;{$ENDIF}

function dxShortStringToString(const S: ShortString): string; {$IFDEF DELPHI9} inline;{$ENDIF}
function dxStringToShortString(const S: string): ShortString; {$IFDEF DELPHI9} inline;{$ENDIF}

function dxStringToWideString(const S: string; ACodePage: Integer = CP_ACP): WideString; {$IFDEF DELPHI9} inline;{$ENDIF}
function dxWideStringToString(const S: WideString; ACodePage: Integer = CP_ACP): string; {$IFDEF DELPHI9} inline;{$ENDIF}

function dxVariantToString(const V: Variant): string;
function dxVariantToAnsiString(const V: Variant): AnsiString;
function dxVariantToWideString(const V: Variant): WideString;

function dxVarIsBlob(const V: Variant): Boolean;

function dxConcatenateStrings(const AStrings: array of PChar): string;
procedure dxStringToBytes(const S: string; var Buf);

function dxUTF8StringToAnsiString(const S: UTF8String): AnsiString;
function dxUTF8StringToString(const S: UTF8String): string;
function dxUTF8StringToWideString(const S: UTF8String): WideString;
function dxAnsiStringToUTF8String(const S: AnsiString): UTF8String;
function dxStringToUTF8String(const S: string): UTF8String;
function dxWideStringToUTF8String(const S: WideString): UTF8String;

// streaming
function dxIsUnicodeStream(AStream: TStream): Boolean;
procedure dxWriteStandardEncodingSignature(AStream: TStream);
procedure dxWriteStreamType(AStream: TStream);

function dxReadStr(Stream: TStream; AIsUnicode: Boolean): string;
procedure dxWriteStr(Stream: TStream; const S: string);

procedure dxCompressStream(ASourceStream, ADestStream: TStream; ACompressMethod: Byte; ASize: Integer = 0);
procedure dxDecompressStream(ASourceStream, ADestStream: TStream);

function dxResourceStringsRepository: TdxResourceStringsRepository;

// graphic functions
function dxColorToRGBQuad(AColor: TColor; AReserved: Byte = 0): TRGBQuad;
function dxRGBQuadToColor(const ARGB: TRGBQuad): TColor;
function cxGetBitmapPixelFormat(ABitmap: TBitmap): Integer;
procedure dxFillBitmapInfoHeader(out AHeader: TBitmapInfoHeader; ABitmap: TBitmap; ATopDownDIB: WordBool); overload;
procedure dxFillBitmapInfoHeader(out AHeader: TBitmapInfoHeader; AWidth, AHeight: Integer; ATopDownDIB: WordBool); overload;
function GetBitmapBits(ABitmap: TBitmap; var AColors: TRGBColors; ATopDownDIB: Boolean): Boolean;
procedure GetBitmapBitsByScanLine(ABitmap: TBitmap; var AColors: TRGBColors);
procedure SetBitmapBits(ABitmap: TBitmap; const AColors: TRGBColors; ATopDownDIB: Boolean);
function dxIsAlphaUsed(ABitmap: TBitmap): Boolean;

// memory functions
procedure cxZeroMemory(ADestination: Pointer; ACount: Integer);
function cxAllocMem(Size: Cardinal): Pointer;
procedure cxFreeMem(P: Pointer);
procedure dxFillChar(var ADest; Count: Integer; const APattern: Char);
procedure dxFreeAndNil(var AObject);

procedure cxCopyData(ASource, ADestination: Pointer; ACount: Integer); overload;
procedure cxCopyData(ASource, ADestination: Pointer; ASourceOffSet, ADestinationOffSet, ACount: Integer); overload;
function ReadBoolean(ASource: Pointer; AOffset: Integer = 0): WordBool;
function ReadByte(ASource: Pointer; AOffset: Integer = 0): Byte;
function ReadInteger(ASource: Pointer; AOffset: Integer = 0): Integer;
function ReadPointer(ASource: Pointer): Pointer;
function ReadWord(ASource: Pointer; AOffset: Integer = 0): Word;
procedure WriteBoolean(ADestination: Pointer; AValue: WordBool; AOffset: Integer = 0);
procedure WriteByte(ADestination: Pointer; AValue: Byte; AOffset: Integer = 0);
procedure WriteInteger(ADestination: Pointer; AValue: Integer; AOffset: Integer = 0);
procedure WritePointer(ADestination: Pointer; AValue: Pointer);
procedure WriteWord(ADestination: Pointer; AValue: Word; AOffset: Integer = 0);

function ReadBufferFromStream(AStream: TStream; ABuffer: Pointer; Count: Integer): Boolean;
function ReadStringFromStream(AStream: TStream; out AValue: AnsiString): Longint;
function WriteBufferToStream(AStream: TStream; ABuffer: Pointer; ACount: Longint): Longint;
function WriteCharToStream(AStream: TStream; AValue: AnsiChar): Longint;
function WriteDoubleToStream(AStream: TStream; AValue: Double): Longint;
function WriteIntegerToStream(AStream: TStream; AValue: Integer): Longint;
function WriteSmallIntToStream(AStream: TStream; AValue: SmallInt): Longint;
function WriteStringToStream(AStream: TStream; const AValue: AnsiString): Longint;

procedure ExchangeLongWords(var AValue1, AValue2);
procedure ExchangePointers(var AValue1, AValue2);
function ShiftPointer(P: Pointer; AOffset: Integer): Pointer; {$IFDEF DELPHI9} inline; {$ENDIF}
function dxPointToLParam(P: TPoint): LPARAM;
function dxLParamToPoint(AParam: LPARAM): TPoint;

// List functions
procedure dxAppendList(ASource, ADestination: TList);
procedure dxCopyList(ASource, ADestination: TList);

// locale functions
function dxElfHash(const S: AnsiString; ALangID: Cardinal = CP_ACP): Integer; overload;
function dxElfHash(const S: WideString; ALangID: Cardinal = CP_ACP): Integer; overload;
function dxElfHash(P: PWideChar; ALength: Integer; ALangID: Cardinal = CP_ACP): Integer; overload;
function dxElfHash(P: PWideChar; ALength: Integer; AUpperCaseBuffer: PWideChar;
  AUpperCaseBufferLength: Integer; ALangID: Cardinal = CP_ACP): Integer; overload;

function dxGetLocaleInfo(ALocale, ALocaleType: Integer; const ADefaultValue: string = ''): string;

//compare functions
function dxCompareValues(A, B: Pointer): Integer; overload; {$IFDEF DELPHI9} inline; {$ENDIF}
function dxCompareValues(A, B: Integer): Integer; overload; {$IFDEF DELPHI9} inline; {$ENDIF}

function dxGetBuildNumberAsString: string;
function dxGetShortBuildNumberAsString: string;
procedure dxFactorizeBuildNumber(ABuildNumber: Cardinal; out AMajor, AMinor, ABuild: Integer);

function dxUnitsLoader: TdxUnitsLoader;
procedure dxInitialize; stdcall;
procedure dxFinalize; stdcall;

var
// platform info
  IsWin9X: Boolean;
  IsWin95, IsWin98, IsWinMe: Boolean;

  IsWinNT: Boolean;
  IsWin2K, IsWin2KOrLater: Boolean;
  IsWinXP, IsWinXPOrLater: Boolean;
  IsWin2KOrXP: Boolean;

  IsWinVista, IsWinVistaOrLater: Boolean;
  IsWinSeven, IsWinSevenOrLater: Boolean;
  IsWin8, IsWin8OrLater: Boolean;
  
  IsWin64Bit: Boolean;


implementation

uses
  StrUtils, SysConst, Dialogs, DateUtils;

type
  TdxStreamHeader = array[0..5] of AnsiChar;

const
  StreamFormatANSI: TdxStreamHeader = 'DXAFMT';
  StreamFormatUNICODE: TdxStreamHeader = 'DXUFMT';

var
  FdxResourceStringsRepository: TdxResourceStringsRepository;
  FNotified: Boolean = False;
  IsInitialized: Boolean;
  UnitsLoader: TdxUnitsLoader;

function GetStringTypeW(dwInfoType: DWORD; const lpSrcStr: PWideChar;
  cchSrc: Integer; var lpCharType): BOOL; stdcall; external kernel32 name 'GetStringTypeW';

function GetStringTypeA(ALocale: Cardinal; dwInfoType: DWORD; const lpSrcStr: PAnsiChar;
  cchSrc: Integer; var lpCharType): BOOL; stdcall; external kernel32 name 'GetStringTypeA';
function IsDLL: Boolean;
begin
  Result := ModuleIsLib and not ModuleIsPackage;
end;

 { TdxResourceStringsRepository }

constructor TdxResourceStringsRepository.Create;
begin
  FProducts := TObjectList.Create;
  FListeners := TList.Create;
end;

destructor TdxResourceStringsRepository.Destroy;
begin
  FListeners.Free;
  FProducts.Free;
end;

procedure TdxResourceStringsRepository.AddListener(AListener: IdxLocalizerListener);
begin
  if FListeners.IndexOf(Pointer(AListener)) = -1 then
    FListeners.Add(Pointer(AListener));
end;

procedure TdxResourceStringsRepository.RemoveListener(AListener: IdxLocalizerListener);
begin
  FListeners.Remove(Pointer(AListener));
end;

procedure TdxResourceStringsRepository.NotifyListeners;
var
  I: Integer;
begin
  for I := 0 to FListeners.Count - 1 do
    IdxLocalizerListener(FListeners[I]).TranslationChanged;
end;

procedure TdxResourceStringsRepository.RegisterProduct(const AProductName: string; AAddStringsProc: TdxAddResourceStringsProcedure);
begin
  FProducts.Add(TdxProductResourceStrings.Create(AProductName, AAddStringsProc));
end;

function TdxResourceStringsRepository.GetProductIndexByName(const AName: string): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := 0 to ProductsCount - 1 do
    if Products[I].Name = AName then
    begin
      Result := I;
      Break;
    end;
end;

function TdxResourceStringsRepository.GetOriginalValue(const AName: string): string;
var
  I, AIndex: Integer;
begin
  Result := '';
  for I := 0 to ProductsCount - 1 do
  begin
    AIndex := Products[I].GetIndexByName(AName);
    if AIndex <> -1 then
    begin
      Result := Products[I].Values[AIndex];
      Break;
    end;
  end;
end;

procedure TdxResourceStringsRepository.Translate;
var
  I: Integer;
begin
  if Assigned(FOnTranslateResString) then
  begin
    for I := 0 to ProductsCount - 1 do
      Products[I].Translate;
  end;
end;

procedure TdxResourceStringsRepository.UnRegisterProduct(const AProductName: string);
var
  AIndex: Integer;
begin
  AIndex := GetProductIndexByName(AProductName);
  if AIndex <> -1 then
    FProducts.Delete(AIndex);
end;

function TdxResourceStringsRepository.GetProducts(AIndex: Integer): TdxProductResourceStrings;
begin
  Result := TdxProductResourceStrings(FProducts[AIndex]);
end;

function TdxResourceStringsRepository.GetProductsCount: Integer;
begin
  Result := FProducts.Count;
end;

function dxVarIsBlob(const V: Variant): Boolean;
begin
  Result := VarIsStr(V) or (VarIsArray(V) and (VarArrayDimCount(V) = 1));
end;

function dxShortStringToString(const S: ShortString): string;
begin
  Result := {$IFDEF DELPHI12}UTF8ToString{$ENDIF}(S);
end;

function dxStringToShortString(const S: string): ShortString;
begin
  Result := {$IFDEF DELPHI12}UTF8EncodeToShortString{$ENDIF}(S);
end;

type
  TRGBA = packed record
    R: Byte;
    G: Byte;
    B: Byte;
    A: Byte;
  end;
  
function dxColorToRGBQuad(AColor: TColor; AReserved: Byte = 0): TRGBQuad;
var
  ATemp: TRGBA;
begin
  DWORD(ATemp) := ColorToRGB(AColor);
  Result.rgbBlue := ATemp.B;
  Result.rgbRed := ATemp.R;
  Result.rgbGreen := ATemp.G;
  Result.rgbReserved := AReserved;
end;

function dxRGBQuadToColor(const ARGB: TRGBQuad): TColor;
var
  ATemp: TRGBA;
begin
  ATemp.B := ARGB.rgbBlue;
  ATemp.R := ARGB.rgbRed;
  ATemp.G := ARGB.rgbGreen;
  ATemp.A := ARGB.rgbReserved;
  Result := DWORD(ATemp);
end;

function cxGetBitmapPixelFormat(ABitmap: TBitmap): Integer;
const
  ABitCounts: array [pf1Bit..pf32Bit] of Byte = (1,4,8,16,16,24,32);
begin
  case ABitmap.PixelFormat of
    pf1bit..pf32Bit: Result := ABitCounts[ABitmap.PixelFormat]
  else
    Result := GetDeviceCaps(ABitmap.Canvas.Handle, BITSPIXEL);
  end;
end;

procedure dxFillBitmapInfoHeader(out AHeader: TBitmapInfoHeader; AWidth, AHeight: Integer; ATopDownDIB: WordBool);
begin
  cxZeroMemory(@AHeader, SizeOf(AHeader));
  AHeader.biSize := SizeOf(TBitmapInfoHeader);
  AHeader.biWidth := AWidth;
  if ATopDownDIB then
    AHeader.biHeight := -AHeight
  else
    AHeader.biHeight := AHeight;
  AHeader.biPlanes := 1;
  AHeader.biBitCount := 32;
  AHeader.biCompression := BI_RGB;
end;

procedure dxFillBitmapInfoHeader(out AHeader: TBitmapInfoHeader; ABitmap: TBitmap; ATopDownDIB: WordBool);
begin
  dxFillBitmapInfoHeader(AHeader, ABitmap.Width, ABitmap.Height, ATopDownDIB);
end;

function InternalGetDIB(ABitmap: TBitmap; const AColors: TRGBColors; ATopDownDIB: WordBool): Boolean;

  function GetStartScan(AIndex: Integer): Integer;
  begin
    if ATopDownDIB then
      Result := ABitmap.Height - 1 - AIndex
    else
      Result := AIndex;
  end;

var
  ADC: HDC;
  ABitmapInfo: TBitmapInfo;
  I: Integer;
  AScanLineResult: boolean;
  P: Pointer;
begin
  if (ABitmap.Width <> 0) and (ABitmap.Height <> 0) then
  begin
    dxFillBitmapInfoHeader(ABitmapInfo.bmiHeader, ABitmap, ATopDownDIB);
    ADC := CreateCompatibleDC(0);
    try
      Result := GetDIBits(ADC, ABitmap.Handle, 0, ABitmap.Height, AColors, ABitmapInfo, DIB_RGB_COLORS) <> 0;
      if not Result then
      begin
        Result := True;
        for I := 0 to ABitmap.Height - 1 do
        begin
          AScanLineResult := GetDIBits(ADC, ABitmap.Handle, GetStartScan(I), 1, @AColors[ABitmap.Width * I], ABitmapInfo, DIB_RGB_COLORS) <> 0;
          if not AScanLineResult then
          begin
            P := cxAllocMem(ABitmap.Width * SizeOf(TRGBQuad));
            try
              AScanLineResult := GetDIBits(ADC, ABitmap.Handle, GetStartScan(I), 1, P, ABitmapInfo, DIB_RGB_COLORS) <> 0;
              cxCopyData(P, @AColors[ABitmap.Width * I], ABitmap.Width * SizeOf(TRGBQuad));
            finally
              cxFreeMem(P);
            end;
          end;
          Result := Result and AScanLineResult;
        end;
      end;
    finally
      DeleteDC(ADC);
    end;
  end
  else
    Result := False;
end;

function InternalSetDIB(ABitmap: TBitmap; const AColors: TRGBColors; ATopDownDIB: WordBool): Boolean;
var
  ADC: HDC;
  ABitmapInfo: TBitmapInfo;
begin
  if (ABitmap.Width <> 0) and (ABitmap.Height <> 0) then
  begin
    dxFillBitmapInfoHeader(ABitmapInfo.bmiHeader, ABitmap, ATopDownDIB);
    ADC := CreateCompatibleDC(0);
    try
      Result := SetDIBits(ADC, ABitmap.Handle, 0, ABitmap.Height, AColors, ABitmapInfo, DIB_RGB_COLORS) <> 0;
    finally
      DeleteDC(ADC);
    end;
  end
  else
    Result := False;
end;

function GetBitmapBits(ABitmap: TBitmap; var AColors: TRGBColors; ATopDownDIB: Boolean): Boolean;
begin
  SetLength(AColors, ABitmap.Width * ABitmap.Height);
  Result := InternalGetDIB(ABitmap, AColors, ATopDownDIB);
end;

procedure GetBitmapBitsByScanLine(ABitmap: TBitmap; var AColors: TRGBColors);
var
  AIndex: Integer;
  AQuad: PRGBQuad;
  I, J: Integer;
begin
  // todo: try to get bitmap bits if GetDIBits fail
  if ABitmap.PixelFormat = pf32bit then
  begin
    if Length(AColors) <> ABitmap.Width * ABitmap.Height then
      SetLength(AColors, ABitmap.Width * ABitmap.Height);
    AIndex := 0;
    for J := 0 to ABitmap.Height - 1 do
    begin
      AQuad := ABitmap.ScanLine[J];
      for I := 0 to ABitmap.Width - 1 do
      begin
        AColors[AIndex] := AQuad^;
        Inc(AQuad);
        Inc(AIndex);
      end;
    end;
  end;
end;

procedure SetBitmapBits(ABitmap: TBitmap; const AColors: TRGBColors; ATopDownDIB: Boolean);
begin
  InternalSetDIB(ABitmap, AColors, ATopDownDIB);
end;

function dxIsAlphaUsed(ABitmap: TBitmap): Boolean;

  function InternalIsBitmapAlphaUsed: Boolean;
  var
    AColors: TRGBColors;
    I: Integer;
  begin
    Result := False;
    GetBitmapBits(ABitmap, AColors, False);
    for I := Low(AColors) to High(AColors) do
    begin
      Result := AColors[I].rgbReserved <> 0;
      if Result then
        Break;
    end;
  end;

begin
  Result := (cxGetBitmapPixelFormat(ABitmap) >= 32) and InternalIsBitmapAlphaUsed;
end;

function WriteBufferToStream(AStream: TStream; ABuffer: Pointer; ACount: Longint): Longint;
var
  AData: TBytes;
begin
  SetLength(AData, ACount);
  if ABuffer <> nil then
    cxCopyData(ABuffer, AData, ACount);

  Result := AStream.Write(AData[0], ACount);
end;

function WriteCharToStream(AStream: TStream; AValue: AnsiChar): Longint;
begin
  Result := AStream.Write(AValue, 1);
end;

function WriteDoubleToStream(AStream: TStream; AValue: Double): Longint;
begin
  Result := AStream.Write(AValue, SizeOf(Double));
end;

function WriteIntegerToStream(AStream: TStream; AValue: Integer): Longint;
begin
  Result := AStream.Write(AValue, SizeOf(Integer));
end;

function WriteSmallIntToStream(AStream: TStream; AValue: SmallInt): Longint;
begin
  Result := AStream.Write(AValue, SizeOf(SmallInt));
end;

function WriteStringToStream(AStream: TStream; const AValue: AnsiString): Longint;
begin
  Result := AStream.Write(PAnsiChar(AValue)^, Length(AValue));
end;

  { TdxProductResourceStrings }

constructor TdxProductResourceStrings.Create(const AName: string; AInitializeProc: TdxAddResourceStringsProcedure);
begin
  FName := AName;
  FResStringNames := TStringList.Create;
  TStringList(FResStringNames).Sorted := True;
  FInitializeProc := AInitializeProc;
  InitializeResStringNames;
end;

destructor TdxProductResourceStrings.Destroy;
begin
  FInitializeProc := nil;
  FResStringNames.Free;
end;

procedure TdxProductResourceStrings.Add(const AResStringName: string; AResStringAddr: Pointer);
begin
  FResStringNames.AddObject(AResStringName, AResStringAddr);
end;

procedure TdxProductResourceStrings.Clear;
begin
  FResStringNames.Clear;
end;

function TdxProductResourceStrings.GetIndexByName(const AName: string): Integer;
begin
  if not TStringList(FResStringNames).Find(AName, Result) then
    Result := -1;
end;

procedure TdxProductResourceStrings.Translate;
var
  I: Integer;
begin
  for I := 0 to ResStringsCount - 1 do
    SetTranslation(I);
end;

function TdxProductResourceStrings.GetNames(AIndex: Integer): string;
begin
  Result := FResStringNames[AIndex];
end;

function TdxProductResourceStrings.GetResStringsCount: Integer;
begin
  Result := FResStringNames.Count;
end;

procedure TdxProductResourceStrings.SetTranslation(AIndex: Integer);
begin
  dxResourceStringsRepository.OnTranslateResString(Names[AIndex], FResStringNames.Objects[AIndex]);
end;

function TdxProductResourceStrings.GetValues(AIndex: Integer): string;
begin
  Result := LoadResString(PResStringRec(FResStringNames.Objects[AIndex]));
end;

procedure TdxProductResourceStrings.InitializeResStringNames;
begin
  if Assigned(FInitializeProc) then
    FInitializeProc(Self);
end;

function ReadBufferFromStream(AStream: TStream; ABuffer: Pointer; Count: Integer): Boolean;
begin
  Result := AStream.Read(ABuffer^, Count) = Count;
end;

function ReadStringFromStream(AStream: TStream; out AValue: AnsiString): Longint;
begin
  SetLength(AValue, AStream.Size);
  Result := AStream.Read(AValue[1], AStream.Size);
end;

{ TdxStream }

constructor TdxStream.Create(AStream: TStream);
begin
  FIsUnicode := dxIsUnicodeStream(AStream);
  FStream := AStream;
end;

{$IFDEF DELPHI7}
function TdxStream.GetSize: Int64;
begin
  Result := FStream.Size;
end;
{$ENDIF}

function TdxStream.Read(var Buffer; Count: Longint): Longint;
begin
  Result := FStream.Read(Buffer, Count);
end;

function TdxStream.Seek(Offset: Longint; Origin: Word): Longint;
begin
  Result := FStream.Seek(Offset, Origin);
end;

function TdxStream.Write(const Buffer; Count: Longint): Longint;
begin
  Result := FStream.Write(Buffer, Count);
end;

procedure WriteBoolean(ADestination: Pointer; AValue: WordBool; AOffset: Integer = 0);
begin
  cxCopyData(@AValue, ADestination, 0, AOffset, SizeOf(WordBool));
end;

procedure WriteByte(ADestination: Pointer; AValue: Byte; AOffset: Integer = 0);
begin
  cxCopyData(@AValue, ADestination, 0, AOffset, SizeOf(Byte));
end;

procedure WriteInteger(ADestination: Pointer; AValue: Integer; AOffset: Integer = 0);
begin
  cxCopyData(@AValue, ADestination, 0, AOffset, SizeOf(Integer));
end;

procedure WritePointer(ADestination: Pointer; AValue: Pointer);
begin
  Pointer(ADestination^) := AValue;
end;

procedure WriteWord(ADestination: Pointer; AValue: Word; AOffset: Integer = 0);
begin
  cxCopyData(@AValue, ADestination, 0, AOffset, SizeOf(Word));
end;

function ShiftPointer(P: Pointer; AOffset: Integer): Pointer;
begin
  Result := Pointer(TdxNativeInt(P) + AOffset);
end;

function dxPointToLParam(P: TPoint): LPARAM;
begin
{$IFDEF DELPHI11}
  Result := PointToLParam(P);
{$ELSE}
  Result := LPARAM((P.X and $0000ffff) or (P.Y shl 16));
{$ENDIF}
end;

function dxLParamToPoint(AParam: LPARAM): TPoint;
begin
{$IFDEF CPUX64}
  Result := TSmallPoint(LongWord(AParam));
{$ELSE}
  Result := SmallPointToPoint(TSmallPoint(AParam));
{$ENDIF}
end;

type
  TSeekMode = (smDup, smUnique);
const
  AModeMap: array[Boolean] of TSeekMode = (smDup, smUnique);
  AModeMask: array[TSeekMode] of Byte = (0, 128);

function ReadStreamByte(AStream: TStream; AMaxPos: Integer; var AByte: Byte): Boolean;
begin
  Result := AStream.Position < AMaxPos;
  if Result then
    AStream.Read(AByte, SizeOf(Byte));
end;

procedure WriteStreamByte(AStream: TStream; AByte: Byte);
begin
  AStream.Write(AByte, SizeOf(Byte));
end;

function CompareBlock(ABlock1, ABlock2: TBytes): Boolean;
begin
  Result := (Length(ABlock1) = Length(ABlock2)) and CompareMem(ABlock1, ABlock2, Length(ABlock1));
end;

function ReadStreamBlock(AStream: TStream; AMaxPos: Integer; var ABlock: TBytes; ABlockSize: Integer): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ABlockSize - 1 do
    Result := Result and ReadStreamByte(AStream, AMaxPos, ABlock[I]);
end;

procedure WriteStreamBlock(AStream: TStream; ABlock: TBytes; ABlockSize: Integer);
var
  I: Integer;
begin
  for I := 0 to ABlockSize - 1 do
    WriteStreamByte(AStream, ABlock[I]);
end;

procedure dxCompressStream(ASourceStream, ADestStream: TStream; ACompressMethod: Byte; ASize: Integer);

  procedure CompressByBlock(ASourceStream, ADestStream: TStream; ASize, ABlockSize: Integer);

    function GetCounter(ASeekBlock: TBytes; AMode: TSeekMode; AMaxPos: Integer): Integer;
    var
      ABlock: TBytes;
    begin
      Result := 1;
      SetLength(ABlock, ABlockSize);
      while (Result < 125) and ReadStreamBlock(ASourceStream, AMaxPos, ABlock, ABlockSize) do
      begin
        if (AMode = smDup) and CompareBlock(ABlock, ASeekBlock) or (AMode = smUnique) and not CompareBlock(ABlock, ASeekBlock) then
          Inc(Result)
        else
        begin
          if AMode = smUnique then
            Dec(Result);
          Break;
        end;
        cxCopyData(ABlock, ASeekBlock, ABlockSize);
      end;
    end;

  var
    AReadBlock1, AReadBlock2: TBytes;
    ACounter, AReadedCount: Integer;
    AStreamPos, AMaxPos: Integer;
    AMode: TSeekMode;
  begin
    AMaxPos := ASourceStream.Position + ASize;

    SetLength(AReadBlock1, ABlockSize);
    SetLength(AReadBlock2, ABlockSize);

    while ReadStreamBlock(ASourceStream, AMaxPos, AReadBlock1, ABlockSize) do
    begin
      AReadedCount := ABlockSize;
      AStreamPos := ASourceStream.Position - ABlockSize;
      if ReadStreamBlock(ASourceStream, AMaxPos, AReadBlock2, ABlockSize) then
      begin
        Inc(AReadedCount, ABlockSize);
        AMode := AModeMap[(AReadedCount = ABlockSize) or not CompareBlock(AReadBlock1, AReadBlock2)];
        ASourceStream.Position := ASourceStream.Position - (AReadedCount - ABlockSize);
        ACounter := GetCounter(AReadBlock1, AMode, AMaxPos);
      end
      else
      begin
        AMode := smUnique;
        ACounter := 1;
      end;

      WriteStreamByte(ADestStream, ACounter or AModeMask[AMode]);
      case AMode of
        smUnique:
          begin
            ASourceStream.Position := AStreamPos;
            ADestStream.CopyFrom(ASourceStream, ACounter * ABlockSize);
          end;
        smDup:
          WriteStreamBlock(ADestStream, AReadBlock1, ABlockSize);
      end;
      ASourceStream.Position := AStreamPos + ACounter * ABlockSize;
    end;
  end;

var
  ABlockSize, AShift: Byte;
  APrevPosition: Integer;
begin
  if ASize = 0 then
    ASize := ASourceStream.Size - ASourceStream.Position;
  APrevPosition := ADestStream.Position;
  ADestStream.Position := ADestStream.Position + SizeOf(Integer);
  WriteStreamByte(ADestStream, ACompressMethod);
  if (ACompressMethod >= 1) and (ACompressMethod <= 4) then
  begin
    ABlockSize := ACompressMethod;
    AShift := ASize mod ABlockSize;
    WriteStreamByte(ADestStream, AShift);
    if AShift > 0 then
      ADestStream.CopyFrom(ASourceStream, AShift);
    CompressByBlock(ASourceStream, ADestStream, ASize - AShift, ABlockSize);
  end
  else
{    if ACompressMethod = 5 then
    begin

    end;
    else
    }
      ADestStream.CopyFrom(ASourceStream, ASize);
  ASize := ADestStream.Position - APrevPosition;
  ADestStream.Position := APrevPosition;
  ADestStream.Write(ASize, SizeOf(ASize));
  ADestStream.Position := APrevPosition + ASize;
end;

procedure dxDecompressStream(ASourceStream, ADestStream: TStream);

  procedure DecompressByBlock(ASourceStream, ADestStream: TStream; ASize, ABlockSize: Integer);
  var
    ACode: Byte;
    AReadBlob: TBytes;
    AMaxPos: Integer;
    I: Integer;
    ACounter: Integer;
  begin
    AMaxPos := ASourceStream.Position + ASize;

    SetLength(AReadBlob, ABlockSize);

    while ReadStreamByte(ASourceStream, AMaxPos, ACode) do
    begin
      ACounter := ACode and 127;
      if (ACode and AModeMask[smUnique]) <> 0 then
        ADestStream.CopyFrom(ASourceStream, ACounter * ABlockSize)
      else
      begin
        ReadStreamBlock(ASourceStream, AMaxPos, AReadBlob, ABlockSize);
        for I := 0 to ACounter - 1 do
          WriteStreamBlock(ADestStream, AReadBlob, ABlockSize);
      end;
    end;
  end;

var
  ASize: Integer;
  ACompressMethod, AShift: Byte;
begin
  ASourceStream.Read(ASize, SizeOf(ASize));
  ASourceStream.Read(ACompressMethod, SizeOf(ACompressMethod));
  if (ACompressMethod >= 1) and (ACompressMethod <= 4) then
  begin
    ASourceStream.Read(AShift, SizeOf(AShift));
    if AShift > 0 then
      ADestStream.CopyFrom(ASourceStream, AShift);
    DecompressByBlock(ASourceStream, ADestStream, ASize - 6 - AShift, ACompressMethod);
  end
  else
    ADestStream.CopyFrom(ASourceStream, ASize - 5);
end;

function dxGetAnsiCharCType1(Ch: AnsiChar): Word;
begin
  if not dxGetStringTypeA(GetThreadLocale, CT_CTYPE1, @Ch, 1, Result) then
    Result := 0;
end;

function dxGetWideCharCType1(Ch: WideChar): Word;
begin
  if not dxGetStringTypeW(CT_CTYPE1, @Ch, 1, Result) then
    Result := 0;
end;


procedure ExchangeLongWords(var AValue1, AValue2);
var
  ATempValue: LongWord;
begin
  ATempValue := LongWord(AValue1);
  LongWord(AValue1) := LongWord(AValue2);
  LongWord(AValue2) := ATempValue;
end;

procedure ExchangePointers(var AValue1, AValue2);
var
  ATempValue: Pointer;
begin
  ATempValue := Pointer(AValue1);
  Pointer(AValue1) := Pointer(AValue2);
  Pointer(AValue2) := ATempValue;
end;


procedure dxAbstractError;
begin
  dxTestCheck(False, SAbstractError);
end;

procedure dxTestCheck(AValue: WordBool; const AMessage: string);
begin
//do nothing    
end;

procedure dxCheckOrientation(var AValue: TdxOrientation; ADefaultOrientation: TdxOrientation);
begin
  if Ord(AValue) = -1 then
    AValue := ADefaultOrientation;
end;

function dxElfHash(const S: AnsiString; ALangID: Cardinal = CP_ACP): Integer;
begin
  Result := dxElfHash(dxAnsiStringToWideString(S, ALangID), ALangID);
end;

function dxElfHash(const S: WideString; ALangID: Cardinal = CP_ACP): Integer;
begin
  Result := dxElfHash(PWideChar(S), Length(S), ALangID);
end;

function dxElfHash(P: PWideChar; ALength: Integer; ALangID: Cardinal = CP_ACP): Integer;
var
  ATempBuffer: PWideChar;
begin
  ATempBuffer := AllocMem((ALength + 1) * SizeOf(WideChar));
  try
    Result := dxElfHash(P, ALength, ATempBuffer, ALength + 1, ALangID);
  finally
    FreeMem(ATempBuffer);
  end;
end;

function dxElfHash(P: PWideChar; ALength: Integer; AUpperCaseBuffer: PWideChar;
  AUpperCaseBufferLength: Integer; ALangID: Cardinal = CP_ACP): Integer;
var
  I: Integer;
begin
  Result := 0;
  if P = nil then
    Exit;
  if AUpperCaseBuffer <> nil then
  begin
    LCMapStringW(ALangID, LCMAP_UPPERCASE, P, ALength + 1, AUpperCaseBuffer, AUpperCaseBufferLength);
    P := AUpperCaseBuffer;
  end;
  while P^ <> #$00 do
  begin
    Result := (Result shl 4) + Ord(P^);
    I := Result and $F0000000;
    if (I <> 0) then
      Result := Result xor (I shr 24);
    Result := Result and (not I);
    Inc(P);
  end;
end;

function dxGetLocaleInfo(ALocale, ALocaleType: Integer; const ADefaultValue: string = ''): string;
var
  ABuffer: string;
  ABufferSize: Integer;
begin
  ABufferSize := GetLocaleInfo(ALocale, ALocaleType, nil, 0);
  if ABufferSize = 0 then
    Result := ADefaultValue
  else
  begin
    SetLength(ABuffer, ABufferSize);
    GetLocaleInfo(ALocale, ALocaleType, PChar(ABuffer), ABufferSize);
    Result := Copy(ABuffer, 1, ABufferSize - 1)
  end;
end;

procedure dxCallNotify(ANotifyEvent: TNotifyEvent; ASender: TObject);
begin
  if Assigned(ANotifyEvent) then
    ANotifyEvent(ASender);
end;

function dxGetTickCount: Int64;
begin
  if not QueryPerformanceCounter(Result) then
    Result := GetTickCount
  else
    Result := Result div 1000;
end;

function dxSameMethods(const Method1, Method2): Boolean;
begin
  Result := (TMethod(Method1).Code = TMethod(Method2).Code) and
    (TMethod(Method1).Data = TMethod(Method2).Data);
end;

function dxBinToHex(const ABuffer: AnsiString): AnsiString;
begin
  Result := dxBinToHex(PAnsiChar(ABuffer), Length(ABuffer));
end;

function dxBinToHex(const ABuffer: PAnsiChar; ABufSize: Integer): AnsiString;
begin
  SetLength(Result, ABufSize * 2);
  BinToHex(ABuffer, PAnsiChar(Result), ABufSize);
end;

function dxHexToBin(const AText: AnsiString): AnsiString;
begin
  Result := dxHexToBin(PAnsiChar(AText));
end;

function dxHexToBin(const AText: PAnsiChar): AnsiString;
begin
  SetLength(Result, Length(AText) div 2);
  HexToBin(AText, PAnsiChar(Result), Length(Result));
end;

function dxHexToByte(const AHex: string): Byte;
var
  S: string;
begin
  S := DupeString('0', 2 - Length(AHex)) + AHex;
  HexToBin(PChar(S), @Result, SizeOf(Result));
end;

function dxCharCount(const S: string): Integer;
begin
{$IFDEF DELPHI12}
  Result := ElementToCharLen(S, Length(S));
{$ELSE}
  Result := ByteToCharLen(S, Length(S));
{$ENDIF}
end;

function dxIsUnicodeStream(AStream: TStream): Boolean;
var
  B: TdxStreamHeader;
begin
  Result := False;
  if (AStream.Size - AStream.Position) >= SizeOf(TdxStreamHeader) then
  begin
    AStream.ReadBuffer(B, SizeOf(TdxStreamHeader));
    Result := B = StreamFormatUNICODE;
    if not Result and (B <> StreamFormatANSI) then
      AStream.Position := AStream.Position - SizeOf(TdxStreamHeader);
  end;
end;


procedure InitPlatformInfo;
{$IFNDEF CPUX64}
var
  AIsWow64Process: function (AHandle: THandle; AWow64Process: PBOOL): BOOL; stdcall;
  AIsWow64: BOOL;
{$ENDIF CPUX64}
begin
  IsWin9X := Win32Platform = VER_PLATFORM_WIN32_WINDOWS;

  IsWin95 := IsWin9X and (Win32MinorVersion = 0);
  IsWin98 := IsWin9X and (Win32MinorVersion = 10);
  IsWinMe := IsWin9X and (Win32MinorVersion = 90);

  IsWinNT := Win32Platform = VER_PLATFORM_WIN32_NT;

  IsWin2K := IsWinNT and (Win32MajorVersion = 5) and (Win32MinorVersion = 0);
  IsWin2KOrLater := IsWinNT and (Win32MajorVersion >= 5);
  IsWinXP := IsWinNT and (Win32MajorVersion = 5) and (Win32MinorVersion > 0);
  IsWinXPOrLater := IsWinNT and (Win32MajorVersion >= 5) and not IsWin2K;
  IsWin2KOrXP := IsWin2K or IsWinXP;

  IsWinVista := IsWinNT and (Win32MajorVersion = 6) and (Win32MinorVersion = 0);
  IsWinVistaOrLater := IsWinNT and (Win32MajorVersion >= 6);
  IsWinSeven := IsWinNT and (Win32MajorVersion = 6) and (Win32MinorVersion = 1);
  IsWinSevenOrLater := IsWinVistaOrLater and not IsWinVista;
  IsWin8 := IsWinNT and (Win32MajorVersion = 6) and (Win32MinorVersion = 2);
  IsWin8OrLater := IsWinSevenOrLater and not IsWinSeven;

  // IsWow64Process
{$IFDEF CPUX64}
  IsWin64Bit := True;
{$ELSE}
  AIsWow64Process := GetProcAddress(GetModuleHandle(kernel32), 'IsWow64Process');
  if Assigned(AIsWow64Process) and AIsWow64Process(GetCurrentProcess, @AIsWow64) then
    IsWin64Bit := AIsWow64
  else
    IsWin64Bit := False;
{$ENDIF CPUX64}
end;

function dxCompareValues(A, B: Integer): Integer;
begin
  if A < B then
    Result := -1
  else
    if A > B then
      Result := 1
    else
      Result := 0;
end;

function dxCompareValues(A, B: Pointer): Integer;
begin
  if TdxNativeUInt(A) < TdxNativeUInt(B) then
    Result := -1
  else
    if TdxNativeUInt(A) > TdxNativeUInt(B) then
      Result := 1
    else
      Result := 0;
end;

function dxGetBuildNumberAsString: string;
var
  AMajor, AMinor, ABuild: Integer;
begin
  dxFactorizeBuildNumber(dxBuildNumber, AMajor, AMinor, ABuild);
  Result := Format('%d.%d.%d', [AMajor mod 100, AMinor, ABuild]);
end;

function dxGetShortBuildNumberAsString: string;
var
  AMajor, AMinor, ABuild: Integer;
begin
  dxFactorizeBuildNumber(dxBuildNumber, AMajor, AMinor, ABuild);
  Result := Format('%d.%d', [AMajor mod 1000, AMinor]);
end;

procedure dxFactorizeBuildNumber(ABuildNumber: Cardinal; out AMajor, AMinor, ABuild: Integer);
var
  AMinorAndBuild: Integer;
begin
  if ABuildNumber = 0 then
    ABuildNumber := dxBuildNumber;

  AMajor := ABuildNumber div 10000;
  AMinorAndBuild := ABuildNumber mod 10000;
  AMinor := AMinorAndBuild div 100;
  ABuild := AMinorAndBuild mod 100;
end;


procedure dxWriteStreamType(AStream: TStream);
begin
{$IFNDEF STREAMANSIFORMAT}
  {$IFDEF DELPHI12}
     AStream.WriteBuffer(StreamFormatUNICODE, SizeOf(TdxStreamHeader));
  {$ELSE}
     AStream.WriteBuffer(StreamFormatANSI, SizeOf(TdxStreamHeader));
  {$ENDIF}
{$ENDIF}
end;

function dxCharInSet(C: Char; const ACharSet: TdxAnsiCharSet): Boolean;
begin
  {$IFDEF DELPHI12}
    Result := CharInSet(C, ACharSet);
  {$ELSE}
    Result := C in ACharSet;
  {$ENDIF}
end;

function dxStringSize(const S: string): Integer;
begin
  Result := Length(S) * SizeOf(Char);
end;

function dxGetStringTypeA(Locale: LCID; dwInfoType: DWORD; const lpSrcStr: PAnsiChar;
  cchSrc: Integer; var lpCharType): BOOL;
begin
  Result := GetStringTypeA(Locale, dwInfoType, lpSrcStr, cchSrc, lpCharType);
end;

function dxGetStringTypeW(dwInfoType: DWORD; const lpSrcStr: PWideChar;
  cchSrc: Integer; var lpCharType): BOOL;
begin
  Result := GetStringTypeW(dwInfoType, lpSrcStr, cchSrc, lpCharType);
end;

function dxResourceStringsRepository: TdxResourceStringsRepository;
begin
  if FdxResourceStringsRepository = nil then
    FdxResourceStringsRepository := TdxResourceStringsRepository.Create;
  Result := FdxResourceStringsRepository;
end;

function dxAnsiStringToString(const S: AnsiString; ACodePage: Integer = CP_ACP): string;
begin
  Result := {$IFDEF DELPHI12} dxAnsiStringToWideString(S, ACodePage) {$ELSE} S {$ENDIF};
end;

function dxStringToAnsiString(const S: string; ACodePage: Integer = CP_ACP): AnsiString;
begin
  Result := {$IFDEF DELPHI12} dxWideStringToAnsiString(S, ACodePage) {$ELSE} S {$ENDIF};
end;

function dxVariantToString(const V: Variant): string;
begin
  Result := {$IFDEF DELPHI12}dxVariantToWideString{$ELSE}dxVariantToAnsiString{$ENDIF}(V);
end;

function dxVariantToAnsiString(const V: Variant): AnsiString;
var
  ASize: Integer;
begin
  if VarIsArray(V) and (VarArrayDimCount(V) = 1) then
  begin
    ASize := VarArrayHighBound(V, 1) - VarArrayLowBound(V, 1) + 1;
    SetLength(Result, ASize);
    Move(VarArrayLock(V)^, Result[1], ASize);
    VarArrayUnlock(V);
  end
  else
    if VarType(V) = varString then
      Result := AnsiString(TVarData(V).VString)
    else
      Result := dxStringToAnsiString(VarToStr(V))
end;

function dxVariantToWideString(const V: Variant): WideString;
begin
  if VarIsStr(V) then
    Result := VarToStr(V)
  else
    Result := dxAnsiStringToString(dxVariantToAnsiString(V));
end;

function dxAnsiIsAlpha(Ch: AnsiChar): Boolean;
begin
  Result := dxGetAnsiCharCType1(Ch) and C1_ALPHA > 0;
end;

function dxCharIsAlpha(Ch: Char): Boolean;
begin
  Result := {$IFDEF DELPHI12}dxWideIsAlpha{$ELSE}dxAnsiIsAlpha{$ENDIF}(Ch);
end;

function dxWideIsAlpha(Ch: WideChar): Boolean;
begin
  Result := dxGetWideCharCType1(Ch) and C1_ALPHA > 0;
end;

function dxAnsiIsNumeric(Ch: AnsiChar): Boolean;
begin
  Result := dxGetAnsiCharCType1(Ch) and C1_DIGIT > 0;
end;

function dxCharIsNumeric(Ch: Char): Boolean;
begin
  Result := {$IFDEF DELPHI12}dxWideIsNumeric{$ELSE}dxAnsiIsNumeric{$ENDIF}(Ch);
end;

function dxWideIsNumeric(Ch: WideChar): Boolean;
begin
  Result := dxGetWideCharCType1(Ch) and C1_DIGIT > 0;
end;

function dxStrComp(const Str1, Str2: PAnsiChar): Integer;
begin
  Result := {$IFDEF DELPHI18}AnsiStrings.{$ENDIF}StrComp(Str1, Str2);
end;

function dxStrCopy(ADest: PAnsiChar; const ASource: PAnsiChar): PAnsiChar;
begin
  Result := {$IFDEF DELPHI18}AnsiStrings.{$ENDIF}StrCopy(ADest, ASource)
end;

function dxStrLCopy(ADest: PAnsiChar; const ASource: PAnsiChar; AMaxLen: Cardinal): PAnsiChar;
begin
  Result := {$IFDEF DELPHI18}AnsiStrings.{$ENDIF}StrLCopy(ADest, ASource, AMaxLen)
end;

function dxStrLen(const AStr: PAnsiChar): Cardinal;
begin
  Result := {$IFDEF DELPHI18}AnsiStrings.{$ENDIF}StrLen(AStr);
end;

function dxGetCodePageFromCharset(ACharset: Integer): Integer;
begin
  if (ACharset = DEFAULT_CHARSET) or (ACharset = ANSI_CHARSET) then //speedup
  begin
    Result := 0;
    Exit;
  end;
  case ACharset of
    THAI_CHARSET:
      Result := 874;
    SHIFTJIS_CHARSET:
      Result := 932;
    GB2312_CHARSET:
      Result := 936;
    HANGEUL_CHARSET, JOHAB_CHARSET:
      Result := 949;
    CHINESEBIG5_CHARSET:
      Result := 950;
    EASTEUROPE_CHARSET:
      Result := 1250;
    RUSSIAN_CHARSET:
      Result := 1251;
    GREEK_CHARSET:
      Result := 1253;
    TURKISH_CHARSET:
      Result := 1254;
    HEBREW_CHARSET:
      Result := 1255;
    ARABIC_CHARSET:
      Result := 1256;
    BALTIC_CHARSET:
      Result := 1257;
  else
    Result := 0;
  end;
end;

function dxAnsiStringToWideString(const ASource: AnsiString; ACodePage: Cardinal = CP_ACP;
  ASrcLength: Integer = -1): WideString;
const
  ConversionFlags: array[Boolean] of Integer = (MB_PRECOMPOSED, 0);
var
  ADestLength: Integer;
begin
  Result := '';
  if ASource = '' then Exit;
  if not IsWinNT and (ACodePage = CP_UTF8) then //CP_UTF8 not supported on Windows 95
    {$IFDEF DELPHI12}
      Result := UTF8ToString(ASource)
    {$ELSE}
      Result := UTF8Decode(ASource)
    {$ENDIF}
  else
  begin
    if ASrcLength < 0 then
      ASrcLength := Length(ASource);
    ADestLength := MultiByteToWideChar(ACodePage, 0, PAnsiChar(ASource), ASrcLength, nil, 0);
    SetLength(Result, ADestLength);
    MultiByteToWideChar(ACodePage, ConversionFlags[ACodePage = CP_UTF8],
      PAnsiChar(ASource), ASrcLength, PWideChar(Result), ADestLength);
  end;
end;

function dxWideStringToAnsiString(const ASource: WideString; ACodePage: Cardinal = CP_ACP;
  ASrcLength: Integer = -1): AnsiString;
var
  ADestLength: Integer;
begin
  Result := '';
  if ASource = '' then Exit;
  if not IsWinNT and (ACodePage = CP_UTF8) then //CP_UTF8 not supported on Windows 95
      Result := UTF8Encode(ASource)
  else
  begin
    if ASrcLength < 0 then
      ASrcLength := Length(ASource);
    ADestLength := WideCharToMultiByte(ACodePage, 0, PWideChar(ASource), ASrcLength, nil, 0, nil, nil);
    SetLength(Result, ADestLength);
    WideCharToMultiByte(ACodePage, 0, PWideChar(ASource), ASrcLength, PAnsiChar(Result), ADestLength, nil, nil);
  end;
end;

function dxStringToWideString(const S: string; ACodePage: Integer = CP_ACP): WideString;
begin
  Result := {$IFDEF DELPHI12} S {$ELSE} dxAnsiStringToWideString(S, ACodePage) {$ENDIF};
end;

function dxWideStringToString(const S: WideString; ACodePage: Integer = CP_ACP): string;
begin
  Result := {$IFDEF DELPHI12} S {$ELSE} dxWideStringToAnsiString(S, ACodePage) {$ENDIF};
end;

function dxConcatenateStrings(const AStrings: array of PChar): string;
var
  I: Integer;
begin
  for I := 0 to High(AStrings) - 1 do
    Result := Result + AStrings[I];
end;

procedure dxStringToBytes(const S: string; var Buf);
begin
  if Length(S) > 0 then
    Move(S[1], Buf, dxStringSize(S));
end;

function dxUTF8StringToAnsiString(const S: UTF8String): AnsiString;
begin
  Result := {$IFDEF DELPHI12}dxWideStringToAnsiString{$ENDIF}(Utf8ToAnsi(S));
end;

function dxUTF8StringToString(const S: UTF8String): string;
begin
  Result := {$IFDEF DELPHI12}dxUTF8StringToWideString{$ELSE}dxUTF8StringToAnsiString{$ENDIF}(S);
end;

function dxUTF8StringToWideString(const S: UTF8String): WideString;
begin
  Result := {$IFDEF DELPHI12}UTF8ToWideString{$ELSE}UTF8Decode{$ENDIF}(S);
end;

function dxAnsiStringToUTF8String(const S: AnsiString): UTF8String;
begin
  Result := UTF8Encode({$IFDEF DELPHI12}dxAnsiStringToWideString{$ENDIF}(S));
end;

function dxStringToUTF8String(const S: string): UTF8String;
begin
  Result := {$IFDEF DELPHI12}dxWideStringToUTF8String{$ELSE}dxAnsiStringToUTF8String{$ENDIF}(S);
end;

function dxWideStringToUTF8String(const S: WideString): UTF8String;
begin
  Result := UTF8Encode(S);
end;

procedure dxWriteStr(Stream: TStream; const S: string);
var
  L: Integer;
{$IFDEF STREAMANSIFORMAT}
  SA: AnsiString;
{$ENDIF}
begin
  L := Length(S);
  if L > $FFFF then L := $FFFF;
  Stream.WriteBuffer(L, SizeOf(Word));
  if L > 0 then
  begin
  {$IFDEF STREAMANSIFORMAT}
    {$IFDEF DELPHI12}
      SA := UTF8Encode(S);
    {$ELSE}
      SA := S;
    {$ENDIF}
    Stream.WriteBuffer(SA[1], L);
  {$ELSE}
    Stream.WriteBuffer(S[1], L * SizeOf(Char));
  {$ENDIF}
  end;
end;

procedure dxWriteStandardEncodingSignature(AStream: TStream);
begin
{$IFDEF DELPHI12}
  AStream.WriteBuffer(dxUnicodePrefix, SizeOf(dxUnicodePrefix));
{$ENDIF}
end;

function dxReadStr(Stream: TStream; AIsUnicode: Boolean): string;
var
  L: Word;
  SA: AnsiString;
  SW: WideString;
begin
  Stream.ReadBuffer(L, SizeOf(Word));
  if AIsUnicode then
  begin
    SetLength(SW, L);
    if L > 0 then Stream.ReadBuffer(SW[1], L * 2);
    Result := SW;
  end
  else
  begin
    SetLength(SA, L);
    if L > 0 then Stream.ReadBuffer(SA[1], L);
  {$IFDEF DELPHI12}
    Result := UTF8ToWideString(SA);
  {$ELSE}
    Result := SA;
  {$ENDIF}
  end;
end;

procedure cxZeroMemory(ADestination: Pointer; ACount: Integer);
begin
  ZeroMemory(ADestination, ACount);
end;

function cxAllocMem(Size: Cardinal): Pointer;
begin
  GetMem(Result, Size);
  cxZeroMemory(Result, Size);
end;

procedure cxFreeMem(P: Pointer);
begin
  FreeMem(P);
end;

procedure dxFillChar(var ADest; Count: Integer; const APattern: Char);
{$IFDEF DELPHI12}
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    PWordArray(@ADest)^[I] := Word(APattern);
{$ELSE}
begin
  FillChar(ADest, Count, APattern);
{$ENDIF}
end;

procedure dxFreeAndNil(var AObject);
begin
  TObject(AObject).Free;
  Pointer(AObject) := nil;
end;

procedure dxAppendList(ASource, ADestination: TList);
var
  APrevDestinationCount: Integer;
begin
  APrevDestinationCount := ADestination.Count;
  ADestination.Count := ADestination.Count + ASource.Count;
  cxCopyData(ASource.List, ADestination.List, 0, APrevDestinationCount * SizeOf(Pointer),
    ASource.Count * SizeOf(Pointer));
end;

procedure dxCopyList(ASource, ADestination: TList);
begin
  ADestination.Count := ASource.Count;
  cxCopyData(ASource.List, ADestination.List, ASource.Count * SizeOf(Pointer));
end;

procedure cxCopyData(ASource, ADestination: Pointer; ACount: Integer);
begin
  Move(ASource^, ADestination^, ACount);
end;

procedure cxCopyData(ASource, ADestination: Pointer; ASourceOffSet, ADestinationOffSet, ACount: Integer);
begin
  if ASourceOffSet > 0 then
    ASource := ShiftPointer(ASource, ASourceOffSet);
  if ADestinationOffSet > 0 then
    ADestination := ShiftPointer(ADestination, ADestinationOffSet);
  cxCopyData(ASource, ADestination, ACount);
end;

function ReadBoolean(ASource: Pointer; AOffset: Integer = 0): WordBool;
begin
  cxCopyData(ASource, @Result, AOffset, 0, SizeOf(WordBool));
end;

function ReadByte(ASource: Pointer; AOffset: Integer = 0): Byte;
begin
  cxCopyData(ASource, @Result, AOffset, 0, SizeOf(Byte));
end;

function ReadInteger(ASource: Pointer; AOffset: Integer = 0): Integer;
begin
  cxCopyData(ASource, @Result, AOffset, 0, SizeOf(Integer));
end;

function ReadPointer(ASource: Pointer): Pointer;
begin
  Result := Pointer(ASource^);
end;

function ReadWord(ASource: Pointer; AOffset: Integer = 0): Word;
begin
  cxCopyData(ASource, @Result, AOffset, 0, SizeOf(Word));
end;


{ TdxLoader }

constructor TdxUnitsLoader.Create;
begin
  inherited Create;
  FinalizeList := TList.Create;
  InitializeList := TList.Create;
end;

destructor TdxUnitsLoader.Destroy;
begin
  Finalize;
  FreeAndNil(InitializeList);
  FreeAndNil(FinalizeList);
  inherited Destroy;
end;

procedure TdxUnitsLoader.AddUnit(const AInitializeProc, AFinalizeProc: Pointer);
var
  AProc: TdxProc;
begin
  if AInitializeProc <> nil then
  begin
    AProc := AInitializeProc;
    if not IsDLL then
    begin
      IsInitialized := True;
      AProc;
    end
    else
      InitializeList.Add(AInitializeProc);
  end;
  if AFinalizeProc <> nil then
    FinalizeList.Add(AFinalizeProc);
end;

procedure TdxUnitsLoader.CallProc(AProc: TdxProc);
begin
  if Assigned(AProc) then AProc;
end;

procedure TdxUnitsLoader.RemoveUnit(const AFinalizeProc: Pointer);
var
  AProc: TdxProc;
begin
  AProc := AFinalizeProc;
  if FinalizeList.Remove(AFinalizeProc) >= 0 then
  begin
    if IsInitialized then
      CallProc(AProc);
  end;
end;

procedure TdxUnitsLoader.Finalize;
var
  I: Integer;
begin
  if IsInitialized then
  begin
    for I := FinalizeList.Count - 1 downto 0 do
      CallProc(TdxProc(FinalizeList[I]));
  end;
  IsInitialized := False;
  FinalizeList.Clear;
end;

procedure TdxUnitsLoader.Initialize;
var
  I: Integer;
begin
  for I := 0 to InitializeList.Count - 1 do
    CallProc(TdxProc(InitializeList[I]));
  InitializeList.Clear;
  IsInitialized := True;
end;

function dxUnitsLoader: TdxUnitsLoader;
begin
  if UnitsLoader = nil then
    UnitsLoader := TdxUnitsLoader.Create;
  Result := UnitsLoader;
end;


procedure dxInitialize;
begin
  dxUnitsLoader.Initialize;
end;

procedure dxFinalize;
begin
  dxUnitsLoader.Finalize;
end;

initialization
  InitPlatformInfo;

finalization
  FreeAndNil(FdxResourceStringsRepository);
  if IsDLL and (UnitsLoader.FinalizeList.Count > 0) then
    raise Exception.Create('Need call dxFinalize before free library!');
  FreeAndNil(UnitsLoader);

end.
