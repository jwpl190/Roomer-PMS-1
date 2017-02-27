{***************************************************************************}
{ This source code was generated automatically by                           }
{ Pas file import tool for Scripter Studio (Pro)                            }
{                                                                           }
{ Scripter Studio and Pas file import tool for Scripter Studio              }
{ written by TMS Software                                                   }
{            copyright � 1997 - 2010                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}
//unit ap_Graphics;

interface

uses
  Windows,
  SysUtils,
  Classes,
  Graphics,
  Variants,
  ap_Types,
  atScript;

{$WARNINGS OFF}

type
  TatGraphicsLibrary = class(TatScripterLibrary)
    procedure __TGraphicsObjectHandleAllocated(AMachine: TatVirtualMachine);
    procedure __TFontCreate(AMachine: TatVirtualMachine);
    procedure __TFontDestroy(AMachine: TatVirtualMachine);
    procedure __TFontAssign(AMachine: TatVirtualMachine);
    procedure __GetTFontHandle(AMachine: TatVirtualMachine);
    procedure __SetTFontHandle(AMachine: TatVirtualMachine);
    procedure __GetTFontPixelsPerInch(AMachine: TatVirtualMachine);
    procedure __SetTFontPixelsPerInch(AMachine: TatVirtualMachine);
    procedure __TPenCreate(AMachine: TatVirtualMachine);
    procedure __TPenDestroy(AMachine: TatVirtualMachine);
    procedure __TPenAssign(AMachine: TatVirtualMachine);
    procedure __GetTPenHandle(AMachine: TatVirtualMachine);
    procedure __SetTPenHandle(AMachine: TatVirtualMachine);
    procedure __TBrushCreate(AMachine: TatVirtualMachine);
    procedure __TBrushDestroy(AMachine: TatVirtualMachine);
    procedure __TBrushAssign(AMachine: TatVirtualMachine);
    procedure __GetTBrushBitmap(AMachine: TatVirtualMachine);
    procedure __SetTBrushBitmap(AMachine: TatVirtualMachine);
    procedure __GetTBrushHandle(AMachine: TatVirtualMachine);
    procedure __SetTBrushHandle(AMachine: TatVirtualMachine);
    procedure __TFontRecallCreate(AMachine: TatVirtualMachine);
    procedure __TPenRecallCreate(AMachine: TatVirtualMachine);
    procedure __TBrushRecallCreate(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasArc(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasArcTo(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasAngleArc(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasBrushCopy(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasChord(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasDraw(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasDrawFocusRect(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasEllipse(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasFillRect(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasFloodFill(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasFrameRect(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasLineTo(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasLock(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasMoveTo(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasPie(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasRectangle(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasRefresh(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasRoundRect(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasStretchDraw(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasTextExtent(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasTextHeight(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasTextOut(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasTextRect(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasTextWidth(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasTryLock(AMachine: TatVirtualMachine);
    procedure __TCustomCanvasUnlock(AMachine: TatVirtualMachine);
    procedure __GetTCustomCanvasClipRect(AMachine: TatVirtualMachine);
    procedure __GetTCustomCanvasLockCount(AMachine: TatVirtualMachine);
    procedure __GetTCustomCanvasCanvasOrientation(AMachine: TatVirtualMachine);
    procedure __GetTCustomCanvasPenPos(AMachine: TatVirtualMachine);
    procedure __SetTCustomCanvasPenPos(AMachine: TatVirtualMachine);
    procedure __GetTCustomCanvasPixels(AMachine: TatVirtualMachine);
    procedure __SetTCustomCanvasPixels(AMachine: TatVirtualMachine);
    procedure __GetTCustomCanvasTextFlags(AMachine: TatVirtualMachine);
    procedure __SetTCustomCanvasTextFlags(AMachine: TatVirtualMachine);
    procedure __TCanvasCreate(AMachine: TatVirtualMachine);
    procedure __TCanvasDestroy(AMachine: TatVirtualMachine);
    procedure __TCanvasArc(AMachine: TatVirtualMachine);
    procedure __TCanvasArcTo(AMachine: TatVirtualMachine);
    procedure __TCanvasAngleArc(AMachine: TatVirtualMachine);
    procedure __TCanvasBrushCopy(AMachine: TatVirtualMachine);
    procedure __TCanvasChord(AMachine: TatVirtualMachine);
    procedure __TCanvasCopyRect(AMachine: TatVirtualMachine);
    procedure __TCanvasDraw(AMachine: TatVirtualMachine);
    procedure __TCanvasDrawFocusRect(AMachine: TatVirtualMachine);
    procedure __TCanvasEllipse(AMachine: TatVirtualMachine);
    procedure __TCanvasFillRect(AMachine: TatVirtualMachine);
    procedure __TCanvasFloodFill(AMachine: TatVirtualMachine);
    procedure __TCanvasFrameRect(AMachine: TatVirtualMachine);
    procedure __TCanvasHandleAllocated(AMachine: TatVirtualMachine);
    procedure __TCanvasLineTo(AMachine: TatVirtualMachine);
    procedure __TCanvasMoveTo(AMachine: TatVirtualMachine);
    procedure __TCanvasPie(AMachine: TatVirtualMachine);
    procedure __TCanvasRectangle(AMachine: TatVirtualMachine);
    procedure __TCanvasRefresh(AMachine: TatVirtualMachine);
    procedure __TCanvasRoundRect(AMachine: TatVirtualMachine);
    procedure __TCanvasStretchDraw(AMachine: TatVirtualMachine);
    procedure __TCanvasTextExtent(AMachine: TatVirtualMachine);
    procedure __TCanvasTextOut(AMachine: TatVirtualMachine);
    procedure __TCanvasTextRect(AMachine: TatVirtualMachine);
    procedure __GetTCanvasHandle(AMachine: TatVirtualMachine);
    procedure __SetTCanvasHandle(AMachine: TatVirtualMachine);
    procedure __TGraphicCreate(AMachine: TatVirtualMachine);
    procedure __TGraphicEquals(AMachine: TatVirtualMachine);
    procedure __TGraphicLoadFromFile(AMachine: TatVirtualMachine);
    procedure __TGraphicSaveToFile(AMachine: TatVirtualMachine);
    procedure __TGraphicLoadFromStream(AMachine: TatVirtualMachine);
    procedure __TGraphicSaveToStream(AMachine: TatVirtualMachine);
    procedure __TGraphicLoadFromClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TGraphicSaveToClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TGraphicSetSize(AMachine: TatVirtualMachine);
    procedure __GetTGraphicEmpty(AMachine: TatVirtualMachine);
    procedure __GetTGraphicHeight(AMachine: TatVirtualMachine);
    procedure __SetTGraphicHeight(AMachine: TatVirtualMachine);
    procedure __GetTGraphicModified(AMachine: TatVirtualMachine);
    procedure __SetTGraphicModified(AMachine: TatVirtualMachine);
    procedure __GetTGraphicPalette(AMachine: TatVirtualMachine);
    procedure __SetTGraphicPalette(AMachine: TatVirtualMachine);
    procedure __GetTGraphicPaletteModified(AMachine: TatVirtualMachine);
    procedure __SetTGraphicPaletteModified(AMachine: TatVirtualMachine);
    procedure __GetTGraphicTransparent(AMachine: TatVirtualMachine);
    procedure __SetTGraphicTransparent(AMachine: TatVirtualMachine);
    procedure __GetTGraphicWidth(AMachine: TatVirtualMachine);
    procedure __SetTGraphicWidth(AMachine: TatVirtualMachine);
    procedure __GetTGraphicSupportsPartialTransparency(AMachine: TatVirtualMachine);
    procedure __TPictureCreate(AMachine: TatVirtualMachine);
    procedure __TPictureDestroy(AMachine: TatVirtualMachine);
    procedure __TPictureLoadFromFile(AMachine: TatVirtualMachine);
    procedure __TPictureSaveToFile(AMachine: TatVirtualMachine);
    procedure __TPictureLoadFromClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TPictureSaveToClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TPictureSupportsClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TPictureAssign(AMachine: TatVirtualMachine);
    procedure __GetTPictureBitmap(AMachine: TatVirtualMachine);
    procedure __SetTPictureBitmap(AMachine: TatVirtualMachine);
    procedure __GetTPictureGraphic(AMachine: TatVirtualMachine);
    procedure __SetTPictureGraphic(AMachine: TatVirtualMachine);
    procedure __GetTPictureHeight(AMachine: TatVirtualMachine);
    procedure __GetTPictureIcon(AMachine: TatVirtualMachine);
    procedure __SetTPictureIcon(AMachine: TatVirtualMachine);
    procedure __GetTPictureMetafile(AMachine: TatVirtualMachine);
    procedure __SetTPictureMetafile(AMachine: TatVirtualMachine);
    procedure __GetTPictureWidth(AMachine: TatVirtualMachine);
    procedure __TMetafileCanvasCreate(AMachine: TatVirtualMachine);
    procedure __TMetafileCanvasCreateWithComment(AMachine: TatVirtualMachine);
    procedure __TMetafileCanvasDestroy(AMachine: TatVirtualMachine);
    procedure __TSharedImageDestroy(AMachine: TatVirtualMachine);
    procedure __TMetafileImageDestroy(AMachine: TatVirtualMachine);
    procedure __TMetafileCreate(AMachine: TatVirtualMachine);
    procedure __TMetafileDestroy(AMachine: TatVirtualMachine);
    procedure __TMetafileClear(AMachine: TatVirtualMachine);
    procedure __TMetafileHandleAllocated(AMachine: TatVirtualMachine);
    procedure __TMetafileLoadFromStream(AMachine: TatVirtualMachine);
    procedure __TMetafileSaveToFile(AMachine: TatVirtualMachine);
    procedure __TMetafileSaveToStream(AMachine: TatVirtualMachine);
    procedure __TMetafileLoadFromClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TMetafileSaveToClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TMetafileAssign(AMachine: TatVirtualMachine);
    procedure __TMetafileReleaseHandle(AMachine: TatVirtualMachine);
    procedure __TMetafileSetSize(AMachine: TatVirtualMachine);
    procedure __GetTMetafileCreatedBy(AMachine: TatVirtualMachine);
    procedure __GetTMetafileDescription(AMachine: TatVirtualMachine);
    procedure __GetTMetafileEnhanced(AMachine: TatVirtualMachine);
    procedure __SetTMetafileEnhanced(AMachine: TatVirtualMachine);
    procedure __GetTMetafileHandle(AMachine: TatVirtualMachine);
    procedure __SetTMetafileHandle(AMachine: TatVirtualMachine);
    procedure __GetTMetafileMMWidth(AMachine: TatVirtualMachine);
    procedure __SetTMetafileMMWidth(AMachine: TatVirtualMachine);
    procedure __GetTMetafileMMHeight(AMachine: TatVirtualMachine);
    procedure __SetTMetafileMMHeight(AMachine: TatVirtualMachine);
    procedure __GetTMetafileInch(AMachine: TatVirtualMachine);
    procedure __SetTMetafileInch(AMachine: TatVirtualMachine);
    procedure __TBitmapImageDestroy(AMachine: TatVirtualMachine);
    procedure __TBitmapCreate(AMachine: TatVirtualMachine);
    procedure __TBitmapDestroy(AMachine: TatVirtualMachine);
    procedure __TBitmapAssign(AMachine: TatVirtualMachine);
    procedure __TBitmapDormant(AMachine: TatVirtualMachine);
    procedure __TBitmapFreeImage(AMachine: TatVirtualMachine);
    procedure __TBitmapHandleAllocated(AMachine: TatVirtualMachine);
    procedure __TBitmapLoadFromClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TBitmapLoadFromStream(AMachine: TatVirtualMachine);
    procedure __TBitmapMask(AMachine: TatVirtualMachine);
    procedure __TBitmapReleaseHandle(AMachine: TatVirtualMachine);
    procedure __TBitmapReleaseMaskHandle(AMachine: TatVirtualMachine);
    procedure __TBitmapReleasePalette(AMachine: TatVirtualMachine);
    procedure __TBitmapSaveToClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TBitmapSaveToStream(AMachine: TatVirtualMachine);
    procedure __TBitmapSetSize(AMachine: TatVirtualMachine);
    procedure __TBitmapLoadFromResourceName(AMachine: TatVirtualMachine);
    procedure __TBitmapLoadFromResourceID(AMachine: TatVirtualMachine);
    procedure __GetTBitmapCanvas(AMachine: TatVirtualMachine);
    procedure __GetTBitmapHandle(AMachine: TatVirtualMachine);
    procedure __SetTBitmapHandle(AMachine: TatVirtualMachine);
    procedure __GetTBitmapHandleType(AMachine: TatVirtualMachine);
    procedure __SetTBitmapHandleType(AMachine: TatVirtualMachine);
    procedure __GetTBitmapIgnorePalette(AMachine: TatVirtualMachine);
    procedure __SetTBitmapIgnorePalette(AMachine: TatVirtualMachine);
    procedure __GetTBitmapMaskHandle(AMachine: TatVirtualMachine);
    procedure __SetTBitmapMaskHandle(AMachine: TatVirtualMachine);
    procedure __GetTBitmapMonochrome(AMachine: TatVirtualMachine);
    procedure __SetTBitmapMonochrome(AMachine: TatVirtualMachine);
    procedure __GetTBitmapPixelFormat(AMachine: TatVirtualMachine);
    procedure __SetTBitmapPixelFormat(AMachine: TatVirtualMachine);
    procedure __GetTBitmapTransparentColor(AMachine: TatVirtualMachine);
    procedure __SetTBitmapTransparentColor(AMachine: TatVirtualMachine);
    procedure __GetTBitmapTransparentMode(AMachine: TatVirtualMachine);
    procedure __SetTBitmapTransparentMode(AMachine: TatVirtualMachine);
    procedure __GetTBitmapAlphaFormat(AMachine: TatVirtualMachine);
    procedure __SetTBitmapAlphaFormat(AMachine: TatVirtualMachine);
    procedure __TIconImageDestroy(AMachine: TatVirtualMachine);
    procedure __TIconCreate(AMachine: TatVirtualMachine);
    procedure __TIconDestroy(AMachine: TatVirtualMachine);
    procedure __TIconAssign(AMachine: TatVirtualMachine);
    procedure __TIconAssignTo(AMachine: TatVirtualMachine);
    procedure __TIconHandleAllocated(AMachine: TatVirtualMachine);
    procedure __TIconLoadFromClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TIconLoadFromStream(AMachine: TatVirtualMachine);
    procedure __TIconReleaseHandle(AMachine: TatVirtualMachine);
    procedure __TIconSaveToClipboardFormat(AMachine: TatVirtualMachine);
    procedure __TIconSaveToStream(AMachine: TatVirtualMachine);
    procedure __TIconSetSize(AMachine: TatVirtualMachine);
    procedure __TIconLoadFromResourceName(AMachine: TatVirtualMachine);
    procedure __TIconLoadFromResourceID(AMachine: TatVirtualMachine);
    procedure __GetTIconHandle(AMachine: TatVirtualMachine);
    procedure __SetTIconHandle(AMachine: TatVirtualMachine);
    procedure __ColorToRGB(AMachine: TatVirtualMachine);
    procedure __ColorToString(AMachine: TatVirtualMachine);
    procedure __StringToColor(AMachine: TatVirtualMachine);
    procedure __ColorToIdent(AMachine: TatVirtualMachine);
    procedure __IdentToColor(AMachine: TatVirtualMachine);
    procedure __CharsetToIdent(AMachine: TatVirtualMachine);
    procedure __IdentToCharset(AMachine: TatVirtualMachine);
    procedure __GetDIBSizes(AMachine: TatVirtualMachine);
    procedure __GetDIB(AMachine: TatVirtualMachine);
    procedure __CopyPalette(AMachine: TatVirtualMachine);
    procedure __PaletteChanged(AMachine: TatVirtualMachine);
    procedure __FreeMemoryContexts(AMachine: TatVirtualMachine);
    procedure __GetDefFontCharSet(AMachine: TatVirtualMachine);
    procedure __TransparentStretchBlt(AMachine: TatVirtualMachine);
    procedure __AllocPatternBitmap(AMachine: TatVirtualMachine);
    procedure __BytesPerScanline(AMachine: TatVirtualMachine);
    procedure __GetDefFontData(AMachine: TatVirtualMachine);
    procedure __SetDefFontData(AMachine: TatVirtualMachine);
    procedure __GetSystemPalette16(AMachine: TatVirtualMachine);
    procedure __SetSystemPalette16(AMachine: TatVirtualMachine);
    procedure __GetDDBsOnly(AMachine: TatVirtualMachine);
    procedure __SetDDBsOnly(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  EInvalidGraphicClass = class of EInvalidGraphic;
  EInvalidGraphicOperationClass = class of EInvalidGraphicOperation;
  TGraphicsObjectClass = class of TGraphicsObject;
  TFontClass = class of TFont;
  TPenClass = class of TPen;
  TBrushClass = class of TBrush;
  TFontRecallClass = class of TFontRecall;
  TPenRecallClass = class of TPenRecall;
  TBrushRecallClass = class of TBrushRecall;
  TCustomCanvasClass = class of TCustomCanvas;
  TCanvasClass = class of TCanvas;
  TGraphicClass = class of TGraphic;
  TPictureClass = class of TPicture;
  TMetafileCanvasClass = class of TMetafileCanvas;
  TSharedImageClass = class of TSharedImage;
  TMetafileImageClass = class of TMetafileImage;
  TMetafileClass = class of TMetafile;
  TBitmapImageClass = class of TBitmapImage;
  TBitmapClass = class of TBitmap;
  TIconImageClass = class of TIconImage;
  TIconClass = class of TIcon;


  TCursorOrIconWrapper = class(TatRecordWrapper)
  private
    FReserved: Word;
    FwType: Word;
    FCount: Word;
  public
    constructor Create(ARecord: TCursorOrIcon);
    function ObjToRec: TCursorOrIcon;
  published
    property Reserved: Word read FReserved write FReserved;
    property wType: Word read FwType write FwType;
    property Count: Word read FCount write FCount;
  end;
  
  TIconRecWrapper = class(TatRecordWrapper)
  private
    FWidth: Byte;
    FHeight: Byte;
    FColors: Word;
    FReserved1: Word;
    FReserved2: Word;
    FDIBSize: Longint;
    FDIBOffset: Longint;
  public
    constructor Create(ARecord: TIconRec);
    function ObjToRec: TIconRec;
  published
    property Width: Byte read FWidth write FWidth;
    property Height: Byte read FHeight write FHeight;
    property Colors: Word read FColors write FColors;
    property Reserved1: Word read FReserved1 write FReserved1;
    property Reserved2: Word read FReserved2 write FReserved2;
    property DIBSize: Longint read FDIBSize write FDIBSize;
    property DIBOffset: Longint read FDIBOffset write FDIBOffset;
  end;
  
  TResDataWrapper = class(TatRecordWrapper)
  private
    FHandle: THandle;
  public
    constructor Create(ARecord: TResData);
    function ObjToRec: TResData;
  published
    property Handle: THandle read FHandle write FHandle;
  end;
  
  TFontDataWrapper = class(TatRecordWrapper)
  private
    FHandle: HFont;
    FHeight: Integer;
    FOrientation: Integer;
    FPitch: TFontPitch;
    FStyle: TFontStylesBase;
    FCharset: TFontCharset;
    FQuality: TFontQuality;
  public
    constructor Create(ARecord: TFontData);
    function ObjToRec: TFontData;
  published
    property Handle: HFont read FHandle write FHandle;
    property Height: Integer read FHeight write FHeight;
    property Orientation: Integer read FOrientation write FOrientation;
    property Pitch: TFontPitch read FPitch write FPitch;
    property Style: TFontStylesBase read FStyle write FStyle;
    property Charset: TFontCharset read FCharset write FCharset;
    property Quality: TFontQuality read FQuality write FQuality;
  end;
  
  TPenDataWrapper = class(TatRecordWrapper)
  private
    FHandle: HPen;
    FColor: TColor;
    FWidth: Integer;
    FStyle: TPenStyle;
  public
    constructor Create(ARecord: TPenData);
    function ObjToRec: TPenData;
  published
    property Handle: HPen read FHandle write FHandle;
    property Color: TColor read FColor write FColor;
    property Width: Integer read FWidth write FWidth;
    property Style: TPenStyle read FStyle write FStyle;
  end;
  
  TBrushDataWrapper = class(TatRecordWrapper)
  private
    FHandle: HBrush;
    FColor: TColor;
    FBitmap: TBitmap;
    FStyle: TBrushStyle;
    FOwnsBitmap: Boolean;
  public
    constructor Create(ARecord: TBrushData);
    function ObjToRec: TBrushData;
  published
    property Handle: HBrush read FHandle write FHandle;
    property Color: TColor read FColor write FColor;
    property Bitmap: TBitmap read FBitmap write FBitmap;
    property Style: TBrushStyle read FStyle write FStyle;
    property OwnsBitmap: Boolean read FOwnsBitmap write FOwnsBitmap;
  end;
  

implementation

constructor TCursorOrIconWrapper.Create(ARecord: TCursorOrIcon);
begin
  inherited Create;
  FReserved := ARecord.Reserved;
  FwType := ARecord.wType;
  FCount := ARecord.Count;
end;

function TCursorOrIconWrapper.ObjToRec: TCursorOrIcon;
begin
  result.Reserved := FReserved;
  result.wType := FwType;
  result.Count := FCount;
end;

constructor TIconRecWrapper.Create(ARecord: TIconRec);
begin
  inherited Create;
  FWidth := ARecord.Width;
  FHeight := ARecord.Height;
  FColors := ARecord.Colors;
  FReserved1 := ARecord.Reserved1;
  FReserved2 := ARecord.Reserved2;
  FDIBSize := ARecord.DIBSize;
  FDIBOffset := ARecord.DIBOffset;
end;

function TIconRecWrapper.ObjToRec: TIconRec;
begin
  result.Width := FWidth;
  result.Height := FHeight;
  result.Colors := FColors;
  result.Reserved1 := FReserved1;
  result.Reserved2 := FReserved2;
  result.DIBSize := FDIBSize;
  result.DIBOffset := FDIBOffset;
end;

constructor TResDataWrapper.Create(ARecord: TResData);
begin
  inherited Create;
  FHandle := ARecord.Handle;
end;

function TResDataWrapper.ObjToRec: TResData;
begin
  result.Handle := FHandle;
end;

constructor TFontDataWrapper.Create(ARecord: TFontData);
begin
  inherited Create;
  FHandle := ARecord.Handle;
  FHeight := ARecord.Height;
  FOrientation := ARecord.Orientation;
  FPitch := ARecord.Pitch;
  FStyle := ARecord.Style;
  FCharset := ARecord.Charset;
  FQuality := ARecord.Quality;
end;

function TFontDataWrapper.ObjToRec: TFontData;
begin
  result.Handle := FHandle;
  result.Height := FHeight;
  result.Orientation := FOrientation;
  result.Pitch := FPitch;
  result.Style := FStyle;
  result.Charset := FCharset;
  result.Quality := FQuality;
end;

constructor TPenDataWrapper.Create(ARecord: TPenData);
begin
  inherited Create;
  FHandle := ARecord.Handle;
  FColor := ARecord.Color;
  FWidth := ARecord.Width;
  FStyle := ARecord.Style;
end;

function TPenDataWrapper.ObjToRec: TPenData;
begin
  result.Handle := FHandle;
  result.Color := FColor;
  result.Width := FWidth;
  result.Style := FStyle;
end;

constructor TBrushDataWrapper.Create(ARecord: TBrushData);
begin
  inherited Create;
  FHandle := ARecord.Handle;
  FColor := ARecord.Color;
  FBitmap := ARecord.Bitmap;
  FStyle := ARecord.Style;
  FOwnsBitmap := ARecord.OwnsBitmap;
end;

function TBrushDataWrapper.ObjToRec: TBrushData;
begin
  result.Handle := FHandle;
  result.Color := FColor;
  result.Bitmap := FBitmap;
  result.Style := FStyle;
  result.OwnsBitmap := FOwnsBitmap;
end;



procedure TatGraphicsLibrary.__TGraphicsObjectHandleAllocated(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TGraphicsObject(CurrentObject).HandleAllocated;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TFontCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TFontClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TFontDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFont(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TFontAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFont(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__GetTFontHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TFont(CurrentObject).Handle));
  end;
end;

procedure TatGraphicsLibrary.__SetTFontHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFont(CurrentObject).Handle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTFontPixelsPerInch(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TFont(CurrentObject).PixelsPerInch));
  end;
end;

procedure TatGraphicsLibrary.__SetTFontPixelsPerInch(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFont(CurrentObject).PixelsPerInch:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__TPenCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TPenClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TPenDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPen(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TPenAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPen(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__GetTPenHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TPen(CurrentObject).Handle));
  end;
end;

procedure TatGraphicsLibrary.__SetTPenHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPen(CurrentObject).Handle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__TBrushCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TBrushClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TBrushDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBrush(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TBrushAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBrush(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__GetTBrushBitmap(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TBrush(CurrentObject).Bitmap));
  end;
end;

procedure TatGraphicsLibrary.__SetTBrushBitmap(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBrush(CurrentObject).Bitmap:=TBitmap(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTBrushHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBrush(CurrentObject).Handle));
  end;
end;

procedure TatGraphicsLibrary.__SetTBrushHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBrush(CurrentObject).Handle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__TFontRecallCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TFontRecallClass(CurrentClass.ClassRef).Create(TFont(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TPenRecallCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TPenRecallClass(CurrentClass.ClassRef).Create(TPen(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TBrushRecallCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TBrushRecallClass(CurrentClass.ClassRef).Create(TBrush(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasArc(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Arc(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasArcTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).ArcTo(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasAngleArc(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).AngleArc(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),GetInputArg(3),GetInputArg(4));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasBrushCopy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).BrushCopy(TRectWrapper(integer(GetInputArg(0))).ObjToRec,TBitmap(VarToObject(GetInputArg(1))),TRectWrapper(integer(GetInputArg(2))).ObjToRec,TColor(VarToInteger(GetInputArg(3))));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasChord(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Chord(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasDraw(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Draw(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),TGraphic(VarToObject(GetInputArg(2))));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasDrawFocusRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).DrawFocusRect(TRectWrapper(integer(GetInputArg(0))).ObjToRec);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasEllipse(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Ellipse(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasFillRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).FillRect(TRectWrapper(integer(GetInputArg(0))).ObjToRec);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasFloodFill(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).FloodFill(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),TColor(VarToInteger(GetInputArg(2))),TFillStyle(VarToInteger(GetInputArg(3))));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasFrameRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).FrameRect(TRectWrapper(integer(GetInputArg(0))).ObjToRec);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasLineTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).LineTo(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasLock(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Lock;
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasMoveTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).MoveTo(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasPie(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Pie(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasRectangle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Rectangle(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasRefresh(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Refresh;
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasRoundRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).RoundRect(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasStretchDraw(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).StretchDraw(TRectWrapper(integer(GetInputArg(0))).ObjToRec,TGraphic(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasTextExtent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(tagSIZEWrapper.Create(TCustomCanvas(CurrentObject).TextExtent(VarToStr(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasTextHeight(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TCustomCanvas(CurrentObject).TextHeight(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasTextOut(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).TextOut(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToStr(GetInputArg(2)));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasTextRect(AMachine: TatVirtualMachine);
  var
  Param0Rec: TObject;
  Param0: TRect;
  Param1: string;
  Param2: TTextFormat;
begin
  with AMachine do
  begin
Param0Rec := TObject(integer(GetInputArg(0)));
if not Assigned(Param0Rec) or not (Param0Rec is TRectWrapper) then 
  Param0Rec := TRectWrapper.Create(Param0);
Param0 := TRectWrapper(Param0Rec).ObjToRec;
Param1 := VarToStr(GetInputArg(1));
IntToSet(Param2, VarToInteger(GetInputArg(2)), SizeOf(Param2));
    Case InputArgCount of
      2: TCustomCanvas(CurrentObject).TextRect(Param0,Param1);
      3: TCustomCanvas(CurrentObject).TextRect(Param0,Param1,Param2);
    end;
    SetInputArg(0,integer(TRectWrapper.Create(Param0)));
    SetInputArg(1,string(Param1));
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasTextWidth(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TCustomCanvas(CurrentObject).TextWidth(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasTryLock(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TCustomCanvas(CurrentObject).TryLock;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCustomCanvasUnlock(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Unlock;
  end;
end;

procedure TatGraphicsLibrary.__GetTCustomCanvasClipRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TRectWrapper.Create(TCustomCanvas(CurrentObject).ClipRect)));
  end;
end;

procedure TatGraphicsLibrary.__GetTCustomCanvasLockCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomCanvas(CurrentObject).LockCount));
  end;
end;

procedure TatGraphicsLibrary.__GetTCustomCanvasCanvasOrientation(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomCanvas(CurrentObject).CanvasOrientation));
  end;
end;

procedure TatGraphicsLibrary.__GetTCustomCanvasPenPos(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TPointWrapper.Create(TCustomCanvas(CurrentObject).PenPos)));
  end;
end;

procedure TatGraphicsLibrary.__SetTCustomCanvasPenPos(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).PenPos:=TPointWrapper(integer(GetInputArg(0))).ObjToRec;
  end;
end;

procedure TatGraphicsLibrary.__GetTCustomCanvasPixels(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomCanvas(CurrentObject).Pixels[VarToInteger(GetArrayIndex(0)),VarToInteger(GetArrayIndex(1))]));
  end;
end;

procedure TatGraphicsLibrary.__SetTCustomCanvasPixels(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).Pixels[VarToInteger(GetArrayIndex(0)),VarToInteger(GetArrayIndex(1))]:=TColor(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTCustomCanvasTextFlags(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomCanvas(CurrentObject).TextFlags));
  end;
end;

procedure TatGraphicsLibrary.__SetTCustomCanvasTextFlags(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomCanvas(CurrentObject).TextFlags:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCanvasClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCanvasDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TCanvasArc(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Arc(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasArcTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).ArcTo(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasAngleArc(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).AngleArc(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),GetInputArg(3),GetInputArg(4));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasBrushCopy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).BrushCopy(TRectWrapper(integer(GetInputArg(0))).ObjToRec,TBitmap(VarToObject(GetInputArg(1))),TRectWrapper(integer(GetInputArg(2))).ObjToRec,TColor(VarToInteger(GetInputArg(3))));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasChord(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Chord(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasCopyRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).CopyRect(TRectWrapper(integer(GetInputArg(0))).ObjToRec,TCanvas(VarToObject(GetInputArg(1))),TRectWrapper(integer(GetInputArg(2))).ObjToRec);
  end;
end;

procedure TatGraphicsLibrary.__TCanvasDraw(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Draw(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),TGraphic(VarToObject(GetInputArg(2))));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasDrawFocusRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).DrawFocusRect(TRectWrapper(integer(GetInputArg(0))).ObjToRec);
  end;
end;

procedure TatGraphicsLibrary.__TCanvasEllipse(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Ellipse(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasFillRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).FillRect(TRectWrapper(integer(GetInputArg(0))).ObjToRec);
  end;
end;

procedure TatGraphicsLibrary.__TCanvasFloodFill(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).FloodFill(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),TColor(VarToInteger(GetInputArg(2))),TFillStyle(VarToInteger(GetInputArg(3))));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasFrameRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).FrameRect(TRectWrapper(integer(GetInputArg(0))).ObjToRec);
  end;
end;

procedure TatGraphicsLibrary.__TCanvasHandleAllocated(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TCanvas(CurrentObject).HandleAllocated;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCanvasLineTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).LineTo(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasMoveTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).MoveTo(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasPie(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Pie(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasRectangle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Rectangle(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasRefresh(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Refresh;
  end;
end;

procedure TatGraphicsLibrary.__TCanvasRoundRect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).RoundRect(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasStretchDraw(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).StretchDraw(TRectWrapper(integer(GetInputArg(0))).ObjToRec,TGraphic(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasTextExtent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(tagSIZEWrapper.Create(TCanvas(CurrentObject).TextExtent(VarToStr(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TCanvasTextOut(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).TextOut(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToStr(GetInputArg(2)));
  end;
end;

procedure TatGraphicsLibrary.__TCanvasTextRect(AMachine: TatVirtualMachine);
  var
  Param0Rec: TObject;
  Param0: TRect;
  Param1: string;
  Param2: TTextFormat;
begin
  with AMachine do
  begin
Param0Rec := TObject(integer(GetInputArg(0)));
if not Assigned(Param0Rec) or not (Param0Rec is TRectWrapper) then 
  Param0Rec := TRectWrapper.Create(Param0);
Param0 := TRectWrapper(Param0Rec).ObjToRec;
Param1 := VarToStr(GetInputArg(1));
IntToSet(Param2, VarToInteger(GetInputArg(2)), SizeOf(Param2));
    Case InputArgCount of
      2: TCanvas(CurrentObject).TextRect(Param0,Param1);
      3: TCanvas(CurrentObject).TextRect(Param0,Param1,Param2);
    end;
    SetInputArg(0,integer(TRectWrapper.Create(Param0)));
    SetInputArg(1,string(Param1));
  end;
end;

procedure TatGraphicsLibrary.__GetTCanvasHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCanvas(CurrentObject).Handle));
  end;
end;

procedure TatGraphicsLibrary.__SetTCanvasHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCanvas(CurrentObject).Handle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__TGraphicCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TGraphicClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TGraphicEquals(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TGraphic(CurrentObject).Equals(TObject(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TGraphicLoadFromFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).LoadFromFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__TGraphicSaveToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).SaveToFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__TGraphicLoadFromStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).LoadFromStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TGraphicSaveToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).SaveToStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TGraphicLoadFromClipboardFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).LoadFromClipboardFormat(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
  end;
end;

procedure TatGraphicsLibrary.__TGraphicSaveToClipboardFormat(AMachine: TatVirtualMachine);
  var
  Param0: Word;
  Param1: THandle;
  Param2: HPALETTE;
begin
  with AMachine do
  begin
Param0 := VarToInteger(GetInputArg(0));
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
    TGraphic(CurrentObject).SaveToClipboardFormat(Param0,Param1,Param2);
    SetInputArg(0,Integer(Param0));
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatGraphicsLibrary.__TGraphicSetSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).SetSize(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicEmpty(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TGraphic(CurrentObject).Empty);
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicHeight(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TGraphic(CurrentObject).Height));
  end;
end;

procedure TatGraphicsLibrary.__SetTGraphicHeight(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).Height:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicModified(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TGraphic(CurrentObject).Modified);
  end;
end;

procedure TatGraphicsLibrary.__SetTGraphicModified(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).Modified:=GetInputArg(0);
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicPalette(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TGraphic(CurrentObject).Palette));
  end;
end;

procedure TatGraphicsLibrary.__SetTGraphicPalette(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).Palette:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicPaletteModified(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TGraphic(CurrentObject).PaletteModified);
  end;
end;

procedure TatGraphicsLibrary.__SetTGraphicPaletteModified(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).PaletteModified:=GetInputArg(0);
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicTransparent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TGraphic(CurrentObject).Transparent);
  end;
end;

procedure TatGraphicsLibrary.__SetTGraphicTransparent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).Transparent:=GetInputArg(0);
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicWidth(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TGraphic(CurrentObject).Width));
  end;
end;

procedure TatGraphicsLibrary.__SetTGraphicWidth(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TGraphic(CurrentObject).Width:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTGraphicSupportsPartialTransparency(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TGraphic(CurrentObject).SupportsPartialTransparency);
  end;
end;

procedure TatGraphicsLibrary.__TPictureCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TPictureClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TPictureDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TPictureLoadFromFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).LoadFromFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__TPictureSaveToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).SaveToFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__TPictureLoadFromClipboardFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).LoadFromClipboardFormat(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
  end;
end;

procedure TatGraphicsLibrary.__TPictureSaveToClipboardFormat(AMachine: TatVirtualMachine);
  var
  Param0: Word;
  Param1: THandle;
  Param2: HPALETTE;
begin
  with AMachine do
  begin
Param0 := VarToInteger(GetInputArg(0));
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
    TPicture(CurrentObject).SaveToClipboardFormat(Param0,Param1,Param2);
    SetInputArg(0,Integer(Param0));
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatGraphicsLibrary.__TPictureSupportsClipboardFormat(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TPictureClass(CurrentClass.ClassRef).SupportsClipboardFormat(VarToInteger(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TPictureAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__GetTPictureBitmap(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TPicture(CurrentObject).Bitmap));
  end;
end;

procedure TatGraphicsLibrary.__SetTPictureBitmap(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).Bitmap:=TBitmap(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTPictureGraphic(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TPicture(CurrentObject).Graphic));
  end;
end;

procedure TatGraphicsLibrary.__SetTPictureGraphic(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).Graphic:=TGraphic(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTPictureHeight(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TPicture(CurrentObject).Height));
  end;
end;

procedure TatGraphicsLibrary.__GetTPictureIcon(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TPicture(CurrentObject).Icon));
  end;
end;

procedure TatGraphicsLibrary.__SetTPictureIcon(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).Icon:=TIcon(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTPictureMetafile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TPicture(CurrentObject).Metafile));
  end;
end;

procedure TatGraphicsLibrary.__SetTPictureMetafile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPicture(CurrentObject).Metafile:=TMetafile(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTPictureWidth(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TPicture(CurrentObject).Width));
  end;
end;

procedure TatGraphicsLibrary.__TMetafileCanvasCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TMetafileCanvasClass(CurrentClass.ClassRef).Create(TMetafile(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TMetafileCanvasCreateWithComment(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TMetafileCanvasClass(CurrentClass.ClassRef).CreateWithComment(TMetafile(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1)),VarToStr(GetInputArg(2)),VarToStr(GetInputArg(3))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TMetafileCanvasDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafileCanvas(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TSharedImageDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TSharedImage(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TMetafileImageDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafileImage(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TMetafileCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TMetafileClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TMetafileDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TMetafileClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).Clear;
  end;
end;

procedure TatGraphicsLibrary.__TMetafileHandleAllocated(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TMetafile(CurrentObject).HandleAllocated;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TMetafileLoadFromStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).LoadFromStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TMetafileSaveToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).SaveToFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__TMetafileSaveToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).SaveToStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TMetafileLoadFromClipboardFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).LoadFromClipboardFormat(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
  end;
end;

procedure TatGraphicsLibrary.__TMetafileSaveToClipboardFormat(AMachine: TatVirtualMachine);
  var
  Param0: Word;
  Param1: THandle;
  Param2: HPALETTE;
begin
  with AMachine do
  begin
Param0 := VarToInteger(GetInputArg(0));
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
    TMetafile(CurrentObject).SaveToClipboardFormat(Param0,Param1,Param2);
    SetInputArg(0,Integer(Param0));
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatGraphicsLibrary.__TMetafileAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TMetafileReleaseHandle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TMetafile(CurrentObject).ReleaseHandle);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TMetafileSetSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).SetSize(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__GetTMetafileCreatedBy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TMetafile(CurrentObject).CreatedBy));
  end;
end;

procedure TatGraphicsLibrary.__GetTMetafileDescription(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TMetafile(CurrentObject).Description));
  end;
end;

procedure TatGraphicsLibrary.__GetTMetafileEnhanced(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TMetafile(CurrentObject).Enhanced);
  end;
end;

procedure TatGraphicsLibrary.__SetTMetafileEnhanced(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).Enhanced:=GetInputArg(0);
  end;
end;

procedure TatGraphicsLibrary.__GetTMetafileHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TMetafile(CurrentObject).Handle));
  end;
end;

procedure TatGraphicsLibrary.__SetTMetafileHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).Handle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTMetafileMMWidth(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TMetafile(CurrentObject).MMWidth));
  end;
end;

procedure TatGraphicsLibrary.__SetTMetafileMMWidth(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).MMWidth:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTMetafileMMHeight(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TMetafile(CurrentObject).MMHeight));
  end;
end;

procedure TatGraphicsLibrary.__SetTMetafileMMHeight(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).MMHeight:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTMetafileInch(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TMetafile(CurrentObject).Inch));
  end;
end;

procedure TatGraphicsLibrary.__SetTMetafileInch(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMetafile(CurrentObject).Inch:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapImageDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmapImage(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TBitmapCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TBitmapClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TBitmapDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TBitmapAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapDormant(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).Dormant;
  end;
end;

procedure TatGraphicsLibrary.__TBitmapFreeImage(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).FreeImage;
  end;
end;

procedure TatGraphicsLibrary.__TBitmapHandleAllocated(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBitmap(CurrentObject).HandleAllocated;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TBitmapLoadFromClipboardFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).LoadFromClipboardFormat(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapLoadFromStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).LoadFromStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapMask(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).Mask(TColor(VarToInteger(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapReleaseHandle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBitmap(CurrentObject).ReleaseHandle);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TBitmapReleaseMaskHandle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBitmap(CurrentObject).ReleaseMaskHandle);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TBitmapReleasePalette(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBitmap(CurrentObject).ReleasePalette);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TBitmapSaveToClipboardFormat(AMachine: TatVirtualMachine);
  var
  Param0: Word;
  Param1: THandle;
  Param2: HPALETTE;
begin
  with AMachine do
  begin
Param0 := VarToInteger(GetInputArg(0));
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
    TBitmap(CurrentObject).SaveToClipboardFormat(Param0,Param1,Param2);
    SetInputArg(0,Integer(Param0));
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapSaveToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).SaveToStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapSetSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).SetSize(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapLoadFromResourceName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).LoadFromResourceName(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TBitmapLoadFromResourceID(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).LoadFromResourceID(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapCanvas(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TBitmap(CurrentObject).Canvas));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBitmap(CurrentObject).Handle));
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).Handle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapHandleType(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBitmap(CurrentObject).HandleType));
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapHandleType(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).HandleType:=TBitmapHandleType(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapIgnorePalette(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TBitmap(CurrentObject).IgnorePalette);
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapIgnorePalette(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).IgnorePalette:=GetInputArg(0);
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapMaskHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBitmap(CurrentObject).MaskHandle));
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapMaskHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).MaskHandle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapMonochrome(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TBitmap(CurrentObject).Monochrome);
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapMonochrome(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).Monochrome:=GetInputArg(0);
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapPixelFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBitmap(CurrentObject).PixelFormat));
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapPixelFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).PixelFormat:=TPixelFormat(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapTransparentColor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBitmap(CurrentObject).TransparentColor));
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapTransparentColor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).TransparentColor:=TColor(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapTransparentMode(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBitmap(CurrentObject).TransparentMode));
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapTransparentMode(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).TransparentMode:=TTransparentMode(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__GetTBitmapAlphaFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBitmap(CurrentObject).AlphaFormat));
  end;
end;

procedure TatGraphicsLibrary.__SetTBitmapAlphaFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBitmap(CurrentObject).AlphaFormat:=TAlphaFormat(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatGraphicsLibrary.__TIconImageDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIconImage(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TIconCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TIconClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TIconDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).Destroy;
  end;
end;

procedure TatGraphicsLibrary.__TIconAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TIconAssignTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).AssignTo(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TIconHandleAllocated(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TIcon(CurrentObject).HandleAllocated;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TIconLoadFromClipboardFormat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).LoadFromClipboardFormat(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
  end;
end;

procedure TatGraphicsLibrary.__TIconLoadFromStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).LoadFromStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TIconReleaseHandle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TIcon(CurrentObject).ReleaseHandle);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TIconSaveToClipboardFormat(AMachine: TatVirtualMachine);
  var
  Param0: Word;
  Param1: THandle;
  Param2: HPALETTE;
begin
  with AMachine do
  begin
Param0 := VarToInteger(GetInputArg(0));
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
    TIcon(CurrentObject).SaveToClipboardFormat(Param0,Param1,Param2);
    SetInputArg(0,Integer(Param0));
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatGraphicsLibrary.__TIconSaveToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).SaveToStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatGraphicsLibrary.__TIconSetSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).SetSize(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TIconLoadFromResourceName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).LoadFromResourceName(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__TIconLoadFromResourceID(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).LoadFromResourceID(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatGraphicsLibrary.__GetTIconHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TIcon(CurrentObject).Handle));
  end;
end;

procedure TatGraphicsLibrary.__SetTIconHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TIcon(CurrentObject).Handle:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__ColorToRGB(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Graphics.ColorToRGB(TColor(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__ColorToString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(Graphics.ColorToString(TColor(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__StringToColor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Graphics.StringToColor(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__ColorToIdent(AMachine: TatVirtualMachine);
  var
  Param1: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1));
AResult := Graphics.ColorToIdent(VarToInteger(GetInputArg(0)),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,string(Param1));
  end;
end;

procedure TatGraphicsLibrary.__IdentToColor(AMachine: TatVirtualMachine);
  var
  Param1: Longint;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
AResult := Graphics.IdentToColor(VarToStr(GetInputArg(0)),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatGraphicsLibrary.__CharsetToIdent(AMachine: TatVirtualMachine);
  var
  Param1: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1));
AResult := Graphics.CharsetToIdent(VarToInteger(GetInputArg(0)),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,string(Param1));
  end;
end;

procedure TatGraphicsLibrary.__IdentToCharset(AMachine: TatVirtualMachine);
  var
  Param1: Longint;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
AResult := Graphics.IdentToCharset(VarToStr(GetInputArg(0)),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatGraphicsLibrary.__GetDIBSizes(AMachine: TatVirtualMachine);
  var
  Param1: DWORD;
  Param2: DWORD;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
    Graphics.GetDIBSizes(VarToInteger(GetInputArg(0)),Param1,Param2);
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatGraphicsLibrary.__GetDIB(AMachine: TatVirtualMachine);
  var
  Param2: Variant;
  Param3: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := GetInputArg(2);
Param3 := GetInputArg(3);
AResult := Graphics.GetDIB(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),Param2,Param3);
    ReturnOutputArg(AResult);
    SetInputArg(2,Param2);
    SetInputArg(3,Param3);
  end;
end;

procedure TatGraphicsLibrary.__CopyPalette(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Graphics.CopyPalette(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__PaletteChanged(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Graphics.PaletteChanged;
  end;
end;

procedure TatGraphicsLibrary.__FreeMemoryContexts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Graphics.FreeMemoryContexts;
  end;
end;

procedure TatGraphicsLibrary.__GetDefFontCharSet(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Graphics.GetDefFontCharSet);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__TransparentStretchBlt(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Graphics.TransparentStretchBlt(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)),VarToInteger(GetInputArg(4)),VarToInteger(GetInputArg(5)),VarToInteger(GetInputArg(6)),VarToInteger(GetInputArg(7)),VarToInteger(GetInputArg(8)),VarToInteger(GetInputArg(9)),VarToInteger(GetInputArg(10)),VarToInteger(GetInputArg(11)),VarToInteger(GetInputArg(12)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__AllocPatternBitmap(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(Graphics.AllocPatternBitmap(TColor(VarToInteger(GetInputArg(0))),TColor(VarToInteger(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__BytesPerScanline(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Graphics.BytesPerScanline(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphicsLibrary.__GetDefFontData(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TFontDataWrapper.Create(Graphics.DefFontData)));
  end;
end;

procedure TatGraphicsLibrary.__SetDefFontData(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Graphics.DefFontData:=TFontDataWrapper(integer(GetInputArg(0))).ObjToRec;
  end;
end;

procedure TatGraphicsLibrary.__GetSystemPalette16(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(Graphics.SystemPalette16));
  end;
end;

procedure TatGraphicsLibrary.__SetSystemPalette16(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Graphics.SystemPalette16:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatGraphicsLibrary.__GetDDBsOnly(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Graphics.DDBsOnly);
  end;
end;

procedure TatGraphicsLibrary.__SetDDBsOnly(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Graphics.DDBsOnly:=GetInputArg(0);
  end;
end;

procedure TatGraphicsLibrary.Init;
begin
  With Scripter.DefineClass(EInvalidGraphic) do
  begin
  end;
  With Scripter.DefineClass(EInvalidGraphicOperation) do
  begin
  end;
  With Scripter.DefineClass(TGraphicsObject) do
  begin
    DefineMethod('HandleAllocated',0,tkVariant,nil,__TGraphicsObjectHandleAllocated,false,0,'');
  end;
  With Scripter.DefineClass(TFont) do
  begin
    DefineMethod('Create',0,tkClass,TFont,__TFontCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TFontDestroy,false,0,'');
    DefineMethod('Assign',1,tkNone,nil,__TFontAssign,false,0,'Source: TPersistent');
    DefineProp('Handle',tkInteger,__GetTFontHandle,__SetTFontHandle,nil,false,0);
    DefineProp('PixelsPerInch',tkInteger,__GetTFontPixelsPerInch,__SetTFontPixelsPerInch,nil,false,0);
  end;
  With Scripter.DefineClass(TPen) do
  begin
    DefineMethod('Create',0,tkClass,TPen,__TPenCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TPenDestroy,false,0,'');
    DefineMethod('Assign',1,tkNone,nil,__TPenAssign,false,0,'Source: TPersistent');
    DefineProp('Handle',tkInteger,__GetTPenHandle,__SetTPenHandle,nil,false,0);
  end;
  With Scripter.DefineClass(TBrush) do
  begin
    DefineMethod('Create',0,tkClass,TBrush,__TBrushCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TBrushDestroy,false,0,'');
    DefineMethod('Assign',1,tkNone,nil,__TBrushAssign,false,0,'Source: TPersistent');
    DefineProp('Bitmap',tkClass,__GetTBrushBitmap,__SetTBrushBitmap,TBitmap,false,0);
    DefineProp('Handle',tkInteger,__GetTBrushHandle,__SetTBrushHandle,nil,false,0);
  end;
  With Scripter.DefineClass(TFontRecall) do
  begin
    DefineMethod('Create',1,tkClass,TFontRecall,__TFontRecallCreate,true,0,'AFont: TFont');
  end;
  With Scripter.DefineClass(TPenRecall) do
  begin
    DefineMethod('Create',1,tkClass,TPenRecall,__TPenRecallCreate,true,0,'APen: TPen');
  end;
  With Scripter.DefineClass(TBrushRecall) do
  begin
    DefineMethod('Create',1,tkClass,TBrushRecall,__TBrushRecallCreate,true,0,'ABrush: TBrush');
  end;
  With Scripter.DefineClass(TCustomCanvas) do
  begin
    DefineMethod('Arc',8,tkNone,nil,__TCustomCanvasArc,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('ArcTo',8,tkNone,nil,__TCustomCanvasArcTo,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('AngleArc',5,tkNone,nil,__TCustomCanvasAngleArc,false,0,'X: Integer; Y: Integer; Radius: Cardinal; StartAngle: Single; SweepAngle: Single');
    DefineMethod('BrushCopy',4,tkNone,nil,__TCustomCanvasBrushCopy,false,0,'Dest: TRect; Bitmap: TBitmap; Source: TRect; Color: TColor');
    DefineMethod('Chord',8,tkNone,nil,__TCustomCanvasChord,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('Draw',3,tkNone,nil,__TCustomCanvasDraw,false,0,'X: Integer; Y: Integer; Graphic: TGraphic');
    DefineMethod('DrawFocusRect',1,tkNone,nil,__TCustomCanvasDrawFocusRect,false,0,'Rect: TRect');
    DefineMethod('Ellipse',4,tkNone,nil,__TCustomCanvasEllipse,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer');
    DefineMethod('FillRect',1,tkNone,nil,__TCustomCanvasFillRect,false,0,'Rect: TRect');
    DefineMethod('FloodFill',4,tkNone,nil,__TCustomCanvasFloodFill,false,0,'X: Integer; Y: Integer; Color: TColor; FillStyle: TFillStyle');
    DefineMethod('FrameRect',1,tkNone,nil,__TCustomCanvasFrameRect,false,0,'Rect: TRect');
    DefineMethod('LineTo',2,tkNone,nil,__TCustomCanvasLineTo,false,0,'X: Integer; Y: Integer');
    DefineMethod('Lock',0,tkNone,nil,__TCustomCanvasLock,false,0,'');
    DefineMethod('MoveTo',2,tkNone,nil,__TCustomCanvasMoveTo,false,0,'X: Integer; Y: Integer');
    DefineMethod('Pie',8,tkNone,nil,__TCustomCanvasPie,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('Rectangle',4,tkNone,nil,__TCustomCanvasRectangle,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer');
    DefineMethod('Refresh',0,tkNone,nil,__TCustomCanvasRefresh,false,0,'');
    DefineMethod('RoundRect',6,tkNone,nil,__TCustomCanvasRoundRect,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer');
    DefineMethod('StretchDraw',2,tkNone,nil,__TCustomCanvasStretchDraw,false,0,'Rect: TRect; Graphic: TGraphic');
    DefineMethod('TextExtent',1,tkVariant,nil,__TCustomCanvasTextExtent,false,0,'Text: string');
    DefineMethod('TextHeight',1,tkInteger,nil,__TCustomCanvasTextHeight,false,0,'Text: string');
    DefineMethod('TextOut',3,tkNone,nil,__TCustomCanvasTextOut,false,0,'X: Integer; Y: Integer; Text: string');
    DefineMethod('TextRect',3,tkNone,nil,__TCustomCanvasTextRect,false,1,'Rect: TRect; Text: string; TextFormat: TTextFormat = []').SetVarArgs([0,1]);
    DefineMethod('TextWidth',1,tkInteger,nil,__TCustomCanvasTextWidth,false,0,'Text: string');
    DefineMethod('TryLock',0,tkVariant,nil,__TCustomCanvasTryLock,false,0,'');
    DefineMethod('Unlock',0,tkNone,nil,__TCustomCanvasUnlock,false,0,'');
    DefineProp('ClipRect',tkVariant,__GetTCustomCanvasClipRect,nil,nil,false,0);
    DefineProp('LockCount',tkInteger,__GetTCustomCanvasLockCount,nil,nil,false,0);
    DefineProp('CanvasOrientation',tkEnumeration,__GetTCustomCanvasCanvasOrientation,nil,nil,false,0);
    DefineProp('PenPos',tkVariant,__GetTCustomCanvasPenPos,__SetTCustomCanvasPenPos,nil,false,0);
    DefineProp('Pixels',tkEnumeration,__GetTCustomCanvasPixels,__SetTCustomCanvasPixels,nil,false,2);
    DefineProp('TextFlags',tkInteger,__GetTCustomCanvasTextFlags,__SetTCustomCanvasTextFlags,nil,false,0);
  end;
  With Scripter.DefineClass(TCanvas) do
  begin
    DefineMethod('Create',0,tkClass,TCanvas,__TCanvasCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TCanvasDestroy,false,0,'');
    DefineMethod('Arc',8,tkNone,nil,__TCanvasArc,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('ArcTo',8,tkNone,nil,__TCanvasArcTo,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('AngleArc',5,tkNone,nil,__TCanvasAngleArc,false,0,'X: Integer; Y: Integer; Radius: Cardinal; StartAngle: Single; SweepAngle: Single');
    DefineMethod('BrushCopy',4,tkNone,nil,__TCanvasBrushCopy,false,0,'Dest: TRect; Bitmap: TBitmap; Source: TRect; Color: TColor');
    DefineMethod('Chord',8,tkNone,nil,__TCanvasChord,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('CopyRect',3,tkNone,nil,__TCanvasCopyRect,false,0,'Dest: TRect; Canvas: TCanvas; Source: TRect');
    DefineMethod('Draw',3,tkNone,nil,__TCanvasDraw,false,0,'X: Integer; Y: Integer; Graphic: TGraphic');
    DefineMethod('DrawFocusRect',1,tkNone,nil,__TCanvasDrawFocusRect,false,0,'Rect: TRect');
    DefineMethod('Ellipse',4,tkNone,nil,__TCanvasEllipse,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer');
    DefineMethod('FillRect',1,tkNone,nil,__TCanvasFillRect,false,0,'Rect: TRect');
    DefineMethod('FloodFill',4,tkNone,nil,__TCanvasFloodFill,false,0,'X: Integer; Y: Integer; Color: TColor; FillStyle: TFillStyle');
    DefineMethod('FrameRect',1,tkNone,nil,__TCanvasFrameRect,false,0,'Rect: TRect');
    DefineMethod('HandleAllocated',0,tkVariant,nil,__TCanvasHandleAllocated,false,0,'');
    DefineMethod('LineTo',2,tkNone,nil,__TCanvasLineTo,false,0,'X: Integer; Y: Integer');
    DefineMethod('MoveTo',2,tkNone,nil,__TCanvasMoveTo,false,0,'X: Integer; Y: Integer');
    DefineMethod('Pie',8,tkNone,nil,__TCanvasPie,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer; X4: Integer; Y4: Integer');
    DefineMethod('Rectangle',4,tkNone,nil,__TCanvasRectangle,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer');
    DefineMethod('Refresh',0,tkNone,nil,__TCanvasRefresh,false,0,'');
    DefineMethod('RoundRect',6,tkNone,nil,__TCanvasRoundRect,false,0,'X1: Integer; Y1: Integer; X2: Integer; Y2: Integer; X3: Integer; Y3: Integer');
    DefineMethod('StretchDraw',2,tkNone,nil,__TCanvasStretchDraw,false,0,'Rect: TRect; Graphic: TGraphic');
    DefineMethod('TextExtent',1,tkVariant,nil,__TCanvasTextExtent,false,0,'Text: string');
    DefineMethod('TextOut',3,tkNone,nil,__TCanvasTextOut,false,0,'X: Integer; Y: Integer; Text: string');
    DefineMethod('TextRect',3,tkNone,nil,__TCanvasTextRect,false,1,'Rect: TRect; Text: string; TextFormat: TTextFormat = []').SetVarArgs([0,1]);
    DefineProp('Handle',tkInteger,__GetTCanvasHandle,__SetTCanvasHandle,nil,false,0);
  end;
  With Scripter.DefineClass(TGraphic) do
  begin
    DefineMethod('Create',0,tkClass,TGraphic,__TGraphicCreate,true,0,'');
    DefineMethod('Equals',1,tkVariant,nil,__TGraphicEquals,false,0,'Obj: TObject');
    DefineMethod('LoadFromFile',1,tkNone,nil,__TGraphicLoadFromFile,false,0,'Filename: string');
    DefineMethod('SaveToFile',1,tkNone,nil,__TGraphicSaveToFile,false,0,'Filename: string');
    DefineMethod('LoadFromStream',1,tkNone,nil,__TGraphicLoadFromStream,false,0,'Stream: TStream');
    DefineMethod('SaveToStream',1,tkNone,nil,__TGraphicSaveToStream,false,0,'Stream: TStream');
    DefineMethod('LoadFromClipboardFormat',3,tkNone,nil,__TGraphicLoadFromClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE');
    DefineMethod('SaveToClipboardFormat',3,tkNone,nil,__TGraphicSaveToClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE').SetVarArgs([0,1,2]);
    DefineMethod('SetSize',2,tkNone,nil,__TGraphicSetSize,false,0,'AWidth: Integer; AHeight: Integer');
    DefineProp('Empty',tkVariant,__GetTGraphicEmpty,nil,nil,false,0);
    DefineProp('Height',tkInteger,__GetTGraphicHeight,__SetTGraphicHeight,nil,false,0);
    DefineProp('Modified',tkVariant,__GetTGraphicModified,__SetTGraphicModified,nil,false,0);
    DefineProp('Palette',tkInteger,__GetTGraphicPalette,__SetTGraphicPalette,nil,false,0);
    DefineProp('PaletteModified',tkVariant,__GetTGraphicPaletteModified,__SetTGraphicPaletteModified,nil,false,0);
    DefineProp('Transparent',tkVariant,__GetTGraphicTransparent,__SetTGraphicTransparent,nil,false,0);
    DefineProp('Width',tkInteger,__GetTGraphicWidth,__SetTGraphicWidth,nil,false,0);
    DefineProp('SupportsPartialTransparency',tkVariant,__GetTGraphicSupportsPartialTransparency,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TPicture) do
  begin
    DefineMethod('Create',0,tkClass,TPicture,__TPictureCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TPictureDestroy,false,0,'');
    DefineMethod('LoadFromFile',1,tkNone,nil,__TPictureLoadFromFile,false,0,'Filename: string');
    DefineMethod('SaveToFile',1,tkNone,nil,__TPictureSaveToFile,false,0,'Filename: string');
    DefineMethod('LoadFromClipboardFormat',3,tkNone,nil,__TPictureLoadFromClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE');
    DefineMethod('SaveToClipboardFormat',3,tkNone,nil,__TPictureSaveToClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE').SetVarArgs([0,1,2]);
    DefineMethod('SupportsClipboardFormat',1,tkVariant,nil,__TPictureSupportsClipboardFormat,true,0,'AFormat: Word');
    DefineMethod('Assign',1,tkNone,nil,__TPictureAssign,false,0,'Source: TPersistent');
    DefineProp('Bitmap',tkClass,__GetTPictureBitmap,__SetTPictureBitmap,TBitmap,false,0);
    DefineProp('Graphic',tkClass,__GetTPictureGraphic,__SetTPictureGraphic,TGraphic,false,0);
    DefineProp('Height',tkInteger,__GetTPictureHeight,nil,nil,false,0);
    DefineProp('Icon',tkClass,__GetTPictureIcon,__SetTPictureIcon,TIcon,false,0);
    DefineProp('Metafile',tkClass,__GetTPictureMetafile,__SetTPictureMetafile,TMetafile,false,0);
    DefineProp('Width',tkInteger,__GetTPictureWidth,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TMetafileCanvas) do
  begin
    DefineMethod('Create',2,tkClass,TMetafileCanvas,__TMetafileCanvasCreate,true,0,'AMetafile: TMetafile; ReferenceDevice: HDC');
    DefineMethod('CreateWithComment',4,tkClass,TMetafileCanvas,__TMetafileCanvasCreateWithComment,true,0,'AMetafile: TMetafile; ReferenceDevice: HDC; CreatedBy: String; Description: String');
    DefineMethod('Destroy',0,tkNone,nil,__TMetafileCanvasDestroy,false,0,'');
  end;
  With Scripter.DefineClass(TSharedImage) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TSharedImageDestroy,false,0,'');
  end;
  With Scripter.DefineClass(TMetafileImage) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TMetafileImageDestroy,false,0,'');
  end;
  With Scripter.DefineClass(TMetafile) do
  begin
    DefineMethod('Create',0,tkClass,TMetafile,__TMetafileCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TMetafileDestroy,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TMetafileClear,false,0,'');
    DefineMethod('HandleAllocated',0,tkVariant,nil,__TMetafileHandleAllocated,false,0,'');
    DefineMethod('LoadFromStream',1,tkNone,nil,__TMetafileLoadFromStream,false,0,'Stream: TStream');
    DefineMethod('SaveToFile',1,tkNone,nil,__TMetafileSaveToFile,false,0,'Filename: String');
    DefineMethod('SaveToStream',1,tkNone,nil,__TMetafileSaveToStream,false,0,'Stream: TStream');
    DefineMethod('LoadFromClipboardFormat',3,tkNone,nil,__TMetafileLoadFromClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE');
    DefineMethod('SaveToClipboardFormat',3,tkNone,nil,__TMetafileSaveToClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE').SetVarArgs([0,1,2]);
    DefineMethod('Assign',1,tkNone,nil,__TMetafileAssign,false,0,'Source: TPersistent');
    DefineMethod('ReleaseHandle',0,tkInteger,nil,__TMetafileReleaseHandle,false,0,'');
    DefineMethod('SetSize',2,tkNone,nil,__TMetafileSetSize,false,0,'AWidth: Integer; AHeight: Integer');
    DefineProp('CreatedBy',tkVariant,__GetTMetafileCreatedBy,nil,nil,false,0);
    DefineProp('Description',tkVariant,__GetTMetafileDescription,nil,nil,false,0);
    DefineProp('Enhanced',tkVariant,__GetTMetafileEnhanced,__SetTMetafileEnhanced,nil,false,0);
    DefineProp('Handle',tkInteger,__GetTMetafileHandle,__SetTMetafileHandle,nil,false,0);
    DefineProp('MMWidth',tkInteger,__GetTMetafileMMWidth,__SetTMetafileMMWidth,nil,false,0);
    DefineProp('MMHeight',tkInteger,__GetTMetafileMMHeight,__SetTMetafileMMHeight,nil,false,0);
    DefineProp('Inch',tkInteger,__GetTMetafileInch,__SetTMetafileInch,nil,false,0);
  end;
  With Scripter.DefineClass(TBitmapImage) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TBitmapImageDestroy,false,0,'');
  end;
  With Scripter.DefineClass(TBitmap) do
  begin
    DefineMethod('Create',0,tkClass,TBitmap,__TBitmapCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TBitmapDestroy,false,0,'');
    DefineMethod('Assign',1,tkNone,nil,__TBitmapAssign,false,0,'Source: TPersistent');
    DefineMethod('Dormant',0,tkNone,nil,__TBitmapDormant,false,0,'');
    DefineMethod('FreeImage',0,tkNone,nil,__TBitmapFreeImage,false,0,'');
    DefineMethod('HandleAllocated',0,tkVariant,nil,__TBitmapHandleAllocated,false,0,'');
    DefineMethod('LoadFromClipboardFormat',3,tkNone,nil,__TBitmapLoadFromClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE');
    DefineMethod('LoadFromStream',1,tkNone,nil,__TBitmapLoadFromStream,false,0,'Stream: TStream');
    DefineMethod('Mask',1,tkNone,nil,__TBitmapMask,false,0,'TransparentColor: TColor');
    DefineMethod('ReleaseHandle',0,tkInteger,nil,__TBitmapReleaseHandle,false,0,'');
    DefineMethod('ReleaseMaskHandle',0,tkInteger,nil,__TBitmapReleaseMaskHandle,false,0,'');
    DefineMethod('ReleasePalette',0,tkInteger,nil,__TBitmapReleasePalette,false,0,'');
    DefineMethod('SaveToClipboardFormat',3,tkNone,nil,__TBitmapSaveToClipboardFormat,false,0,'Format: Word; Data: THandle; APalette: HPALETTE').SetVarArgs([0,1,2]);
    DefineMethod('SaveToStream',1,tkNone,nil,__TBitmapSaveToStream,false,0,'Stream: TStream');
    DefineMethod('SetSize',2,tkNone,nil,__TBitmapSetSize,false,0,'AWidth: Integer; AHeight: Integer');
    DefineMethod('LoadFromResourceName',2,tkNone,nil,__TBitmapLoadFromResourceName,false,0,'Instance: THandle; ResName: String');
    DefineMethod('LoadFromResourceID',2,tkNone,nil,__TBitmapLoadFromResourceID,false,0,'Instance: THandle; ResID: Integer');
    DefineProp('Canvas',tkClass,__GetTBitmapCanvas,nil,TCanvas,false,0);
    DefineProp('Handle',tkInteger,__GetTBitmapHandle,__SetTBitmapHandle,nil,false,0);
    DefineProp('HandleType',tkEnumeration,__GetTBitmapHandleType,__SetTBitmapHandleType,nil,false,0);
    DefineProp('IgnorePalette',tkVariant,__GetTBitmapIgnorePalette,__SetTBitmapIgnorePalette,nil,false,0);
    DefineProp('MaskHandle',tkInteger,__GetTBitmapMaskHandle,__SetTBitmapMaskHandle,nil,false,0);
    DefineProp('Monochrome',tkVariant,__GetTBitmapMonochrome,__SetTBitmapMonochrome,nil,false,0);
    DefineProp('PixelFormat',tkEnumeration,__GetTBitmapPixelFormat,__SetTBitmapPixelFormat,nil,false,0);
    DefineProp('TransparentColor',tkEnumeration,__GetTBitmapTransparentColor,__SetTBitmapTransparentColor,nil,false,0);
    DefineProp('TransparentMode',tkEnumeration,__GetTBitmapTransparentMode,__SetTBitmapTransparentMode,nil,false,0);
    DefineProp('AlphaFormat',tkEnumeration,__GetTBitmapAlphaFormat,__SetTBitmapAlphaFormat,nil,false,0);
  end;
  With Scripter.DefineClass(TIconImage) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TIconImageDestroy,false,0,'');
  end;
  With Scripter.DefineClass(TIcon) do
  begin
    DefineMethod('Create',0,tkClass,TIcon,__TIconCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TIconDestroy,false,0,'');
    DefineMethod('Assign',1,tkNone,nil,__TIconAssign,false,0,'Source: TPersistent');
    DefineMethod('AssignTo',1,tkNone,nil,__TIconAssignTo,false,0,'Dest: TPersistent');
    DefineMethod('HandleAllocated',0,tkVariant,nil,__TIconHandleAllocated,false,0,'');
    DefineMethod('LoadFromClipboardFormat',3,tkNone,nil,__TIconLoadFromClipboardFormat,false,0,'AFormat: Word; AData: THandle; APalette: HPALETTE');
    DefineMethod('LoadFromStream',1,tkNone,nil,__TIconLoadFromStream,false,0,'Stream: TStream');
    DefineMethod('ReleaseHandle',0,tkInteger,nil,__TIconReleaseHandle,false,0,'');
    DefineMethod('SaveToClipboardFormat',3,tkNone,nil,__TIconSaveToClipboardFormat,false,0,'Format: Word; Data: THandle; APalette: HPALETTE').SetVarArgs([0,1,2]);
    DefineMethod('SaveToStream',1,tkNone,nil,__TIconSaveToStream,false,0,'Stream: TStream');
    DefineMethod('SetSize',2,tkNone,nil,__TIconSetSize,false,0,'AWidth: Integer; AHeight: Integer');
    DefineMethod('LoadFromResourceName',2,tkNone,nil,__TIconLoadFromResourceName,false,0,'Instance: THandle; ResName: String');
    DefineMethod('LoadFromResourceID',2,tkNone,nil,__TIconLoadFromResourceID,false,0,'Instance: THandle; ResID: Integer');
    DefineProp('Handle',tkInteger,__GetTIconHandle,__SetTIconHandle,nil,false,0);
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('ColorToRGB',1,tkInteger,nil,__ColorToRGB,false,0,'Color: TColor');
    DefineMethod('ColorToString',1,tkVariant,nil,__ColorToString,false,0,'Color: TColor');
    DefineMethod('StringToColor',1,tkEnumeration,nil,__StringToColor,false,0,'S: string');
    DefineMethod('ColorToIdent',2,tkVariant,nil,__ColorToIdent,false,0,'Color: Longint; Ident: string').SetVarArgs([1]);
    DefineMethod('IdentToColor',2,tkVariant,nil,__IdentToColor,false,0,'Ident: string; Color: Longint').SetVarArgs([1]);
    DefineMethod('CharsetToIdent',2,tkVariant,nil,__CharsetToIdent,false,0,'Charset: Longint; Ident: string').SetVarArgs([1]);
    DefineMethod('IdentToCharset',2,tkVariant,nil,__IdentToCharset,false,0,'Ident: string; Charset: Longint').SetVarArgs([1]);
    DefineMethod('GetDIBSizes',3,tkNone,nil,__GetDIBSizes,false,0,'Bitmap: HBITMAP; InfoHeaderSize: DWORD; ImageSize: DWORD').SetVarArgs([1,2]);
    DefineMethod('GetDIB',4,tkVariant,nil,__GetDIB,false,0,'Bitmap: HBITMAP; Palette: HPALETTE; BitmapInfo; Bits').SetVarArgs([2,3]);
    DefineMethod('CopyPalette',1,tkInteger,nil,__CopyPalette,false,0,'Palette: HPALETTE');
    DefineMethod('PaletteChanged',0,tkNone,nil,__PaletteChanged,false,0,'');
    DefineMethod('FreeMemoryContexts',0,tkNone,nil,__FreeMemoryContexts,false,0,'');
    DefineMethod('GetDefFontCharSet',0,tkEnumeration,nil,__GetDefFontCharSet,false,0,'');
    DefineMethod('TransparentStretchBlt',13,tkVariant,nil,__TransparentStretchBlt,false,0,'DstDC: HDC; DstX: Integer; DstY: Integer; DstW: Integer; DstH: Integer; SrcDC: HDC; SrcX: Integer; SrcY: Integer; SrcW: Integer; SrcH: Integer; MaskDC: HDC; MaskX: Integer; MaskY: Integer');
    DefineMethod('AllocPatternBitmap',2,tkClass,TBitmap,__AllocPatternBitmap,false,0,'BkColor: TColor; FgColor: TColor');
    DefineMethod('BytesPerScanline',3,tkInteger,nil,__BytesPerScanline,false,0,'PixelsPerScanline: Longint; BitsPerPixel: Longint; Alignment: Longint');
    DefineProp('DefFontData',tkVariant,__GetDefFontData,__SetDefFontData,nil,false,0);
    DefineProp('SystemPalette16',tkInteger,__GetSystemPalette16,__SetSystemPalette16,nil,false,0);
    DefineProp('DDBsOnly',tkVariant,__GetDDBsOnly,__SetDDBsOnly,nil,false,0);
    AddConstant('fpDefault',fpDefault);
    AddConstant('fpVariable',fpVariable);
    AddConstant('fpFixed',fpFixed);
    AddConstant('fqDefault',fqDefault);
    AddConstant('fqDraft',fqDraft);
    AddConstant('fqProof',fqProof);
    AddConstant('fqNonAntialiased',fqNonAntialiased);
    AddConstant('fqAntialiased',fqAntialiased);
    AddConstant('fqClearType',fqClearType);
    AddConstant('fqClearTypeNatural',fqClearTypeNatural);
    AddConstant('fsBold',fsBold);
    AddConstant('fsItalic',fsItalic);
    AddConstant('fsUnderline',fsUnderline);
    AddConstant('fsStrikeOut',fsStrikeOut);
    AddConstant('psSolid',psSolid);
    AddConstant('psDash',psDash);
    AddConstant('psDot',psDot);
    AddConstant('psDashDot',psDashDot);
    AddConstant('psDashDotDot',psDashDotDot);
    AddConstant('psClear',psClear);
    AddConstant('psInsideFrame',psInsideFrame);
    AddConstant('psUserStyle',psUserStyle);
    AddConstant('psAlternate',psAlternate);
    AddConstant('pmBlack',pmBlack);
    AddConstant('pmWhite',pmWhite);
    AddConstant('pmNop',pmNop);
    AddConstant('pmNot',pmNot);
    AddConstant('pmCopy',pmCopy);
    AddConstant('pmNotCopy',pmNotCopy);
    AddConstant('pmMergePenNot',pmMergePenNot);
    AddConstant('pmMaskPenNot',pmMaskPenNot);
    AddConstant('pmMergeNotPen',pmMergeNotPen);
    AddConstant('pmMaskNotPen',pmMaskNotPen);
    AddConstant('pmMerge',pmMerge);
    AddConstant('pmNotMerge',pmNotMerge);
    AddConstant('pmMask',pmMask);
    AddConstant('pmNotMask',pmNotMask);
    AddConstant('pmXor',pmXor);
    AddConstant('pmNotXor',pmNotXor);
    AddConstant('bsSolid',bsSolid);
    AddConstant('bsClear',bsClear);
    AddConstant('bsHorizontal',bsHorizontal);
    AddConstant('bsVertical',bsVertical);
    AddConstant('bsFDiagonal',bsFDiagonal);
    AddConstant('bsBDiagonal',bsBDiagonal);
    AddConstant('bsCross',bsCross);
    AddConstant('bsDiagCross',bsDiagCross);
    AddConstant('fsSurface',fsSurface);
    AddConstant('fsBorder',fsBorder);
    AddConstant('fmAlternate',fmAlternate);
    AddConstant('fmWinding',fmWinding);
    AddConstant('csHandleValid',csHandleValid);
    AddConstant('csFontValid',csFontValid);
    AddConstant('csPenValid',csPenValid);
    AddConstant('csBrushValid',csBrushValid);
    AddConstant('coLeftToRight',coLeftToRight);
    AddConstant('coRightToLeft',coRightToLeft);
    AddConstant('tfBottom',tfBottom);
    AddConstant('tfCalcRect',tfCalcRect);
    AddConstant('tfCenter',tfCenter);
    AddConstant('tfEditControl',tfEditControl);
    AddConstant('tfEndEllipsis',tfEndEllipsis);
    AddConstant('tfPathEllipsis',tfPathEllipsis);
    AddConstant('tfExpandTabs',tfExpandTabs);
    AddConstant('tfExternalLeading',tfExternalLeading);
    AddConstant('tfLeft',tfLeft);
    AddConstant('tfModifyString',tfModifyString);
    AddConstant('tfNoClip',tfNoClip);
    AddConstant('tfNoPrefix',tfNoPrefix);
    AddConstant('tfRight',tfRight);
    AddConstant('tfRtlReading',tfRtlReading);
    AddConstant('tfSingleLine',tfSingleLine);
    AddConstant('tfTop',tfTop);
    AddConstant('tfVerticalCenter',tfVerticalCenter);
    AddConstant('tfWordBreak',tfWordBreak);
    AddConstant('psStarting',psStarting);
    AddConstant('psRunning',psRunning);
    AddConstant('psEnding',psEnding);
    AddConstant('bmDIB',bmDIB);
    AddConstant('bmDDB',bmDDB);
    AddConstant('pfDevice',pfDevice);
    AddConstant('pf1bit',pf1bit);
    AddConstant('pf4bit',pf4bit);
    AddConstant('pf8bit',pf8bit);
    AddConstant('pf15bit',pf15bit);
    AddConstant('pf16bit',pf16bit);
    AddConstant('pf24bit',pf24bit);
    AddConstant('pf32bit',pf32bit);
    AddConstant('pfCustom',pfCustom);
    AddConstant('afIgnored',afIgnored);
    AddConstant('afDefined',afDefined);
    AddConstant('afPremultiplied',afPremultiplied);
    AddConstant('tmAuto',tmAuto);
    AddConstant('tmFixed',tmFixed);
    AddConstant('clSystemColor',clSystemColor);
    AddConstant('clScrollBar',clScrollBar);
    AddConstant('clBackground',clBackground);
    AddConstant('clActiveCaption',clActiveCaption);
    AddConstant('clInactiveCaption',clInactiveCaption);
    AddConstant('clMenu',clMenu);
    AddConstant('clWindow',clWindow);
    AddConstant('clWindowFrame',clWindowFrame);
    AddConstant('clMenuText',clMenuText);
    AddConstant('clWindowText',clWindowText);
    AddConstant('clCaptionText',clCaptionText);
    AddConstant('clActiveBorder',clActiveBorder);
    AddConstant('clInactiveBorder',clInactiveBorder);
    AddConstant('clAppWorkSpace',clAppWorkSpace);
    AddConstant('clHighlight',clHighlight);
    AddConstant('clHighlightText',clHighlightText);
    AddConstant('clBtnFace',clBtnFace);
    AddConstant('clBtnShadow',clBtnShadow);
    AddConstant('clGrayText',clGrayText);
    AddConstant('clBtnText',clBtnText);
    AddConstant('clInactiveCaptionText',clInactiveCaptionText);
    AddConstant('clBtnHighlight',clBtnHighlight);
    AddConstant('cl3DDkShadow',cl3DDkShadow);
    AddConstant('cl3DLight',cl3DLight);
    AddConstant('clInfoText',clInfoText);
    AddConstant('clInfoBk',clInfoBk);
    AddConstant('clHotLight',clHotLight);
    AddConstant('clGradientActiveCaption',clGradientActiveCaption);
    AddConstant('clGradientInactiveCaption',clGradientInactiveCaption);
    AddConstant('clMenuHighlight',clMenuHighlight);
    AddConstant('clMenuBar',clMenuBar);
    AddConstant('clBlack',clBlack);
    AddConstant('clMaroon',clMaroon);
    AddConstant('clGreen',clGreen);
    AddConstant('clOlive',clOlive);
    AddConstant('clNavy',clNavy);
    AddConstant('clPurple',clPurple);
    AddConstant('clTeal',clTeal);
    AddConstant('clGray',clGray);
    AddConstant('clSilver',clSilver);
    AddConstant('clRed',clRed);
    AddConstant('clLime',clLime);
    AddConstant('clYellow',clYellow);
    AddConstant('clBlue',clBlue);
    AddConstant('clFuchsia',clFuchsia);
    AddConstant('clAqua',clAqua);
    AddConstant('clLtGray',clLtGray);
    AddConstant('clDkGray',clDkGray);
    AddConstant('clWhite',clWhite);
    AddConstant('StandardColorsCount',StandardColorsCount);
    AddConstant('clMoneyGreen',clMoneyGreen);
    AddConstant('clSkyBlue',clSkyBlue);
    AddConstant('clCream',clCream);
    AddConstant('clMedGray',clMedGray);
    AddConstant('ExtendedColorsCount',ExtendedColorsCount);
    AddConstant('clNone',clNone);
    AddConstant('clDefault',clDefault);
    AddConstant('clWebSnow',clWebSnow);
    AddConstant('clWebFloralWhite',clWebFloralWhite);
    AddConstant('clWebLavenderBlush',clWebLavenderBlush);
    AddConstant('clWebOldLace',clWebOldLace);
    AddConstant('clWebIvory',clWebIvory);
    AddConstant('clWebCornSilk',clWebCornSilk);
    AddConstant('clWebBeige',clWebBeige);
    AddConstant('clWebAntiqueWhite',clWebAntiqueWhite);
    AddConstant('clWebWheat',clWebWheat);
    AddConstant('clWebAliceBlue',clWebAliceBlue);
    AddConstant('clWebGhostWhite',clWebGhostWhite);
    AddConstant('clWebLavender',clWebLavender);
    AddConstant('clWebSeashell',clWebSeashell);
    AddConstant('clWebLightYellow',clWebLightYellow);
    AddConstant('clWebPapayaWhip',clWebPapayaWhip);
    AddConstant('clWebNavajoWhite',clWebNavajoWhite);
    AddConstant('clWebMoccasin',clWebMoccasin);
    AddConstant('clWebBurlywood',clWebBurlywood);
    AddConstant('clWebAzure',clWebAzure);
    AddConstant('clWebMintcream',clWebMintcream);
    AddConstant('clWebHoneydew',clWebHoneydew);
    AddConstant('clWebLinen',clWebLinen);
    AddConstant('clWebLemonChiffon',clWebLemonChiffon);
    AddConstant('clWebBlanchedAlmond',clWebBlanchedAlmond);
    AddConstant('clWebBisque',clWebBisque);
    AddConstant('clWebPeachPuff',clWebPeachPuff);
    AddConstant('clWebTan',clWebTan);
    AddConstant('clWebYellow',clWebYellow);
    AddConstant('clWebDarkOrange',clWebDarkOrange);
    AddConstant('clWebRed',clWebRed);
    AddConstant('clWebDarkRed',clWebDarkRed);
    AddConstant('clWebMaroon',clWebMaroon);
    AddConstant('clWebIndianRed',clWebIndianRed);
    AddConstant('clWebSalmon',clWebSalmon);
    AddConstant('clWebCoral',clWebCoral);
    AddConstant('clWebGold',clWebGold);
    AddConstant('clWebTomato',clWebTomato);
    AddConstant('clWebCrimson',clWebCrimson);
    AddConstant('clWebBrown',clWebBrown);
    AddConstant('clWebChocolate',clWebChocolate);
    AddConstant('clWebSandyBrown',clWebSandyBrown);
    AddConstant('clWebLightSalmon',clWebLightSalmon);
    AddConstant('clWebLightCoral',clWebLightCoral);
    AddConstant('clWebOrange',clWebOrange);
    AddConstant('clWebOrangeRed',clWebOrangeRed);
    AddConstant('clWebFirebrick',clWebFirebrick);
    AddConstant('clWebSaddleBrown',clWebSaddleBrown);
    AddConstant('clWebSienna',clWebSienna);
    AddConstant('clWebPeru',clWebPeru);
    AddConstant('clWebDarkSalmon',clWebDarkSalmon);
    AddConstant('clWebRosyBrown',clWebRosyBrown);
    AddConstant('clWebPaleGoldenrod',clWebPaleGoldenrod);
    AddConstant('clWebLightGoldenrodYellow',clWebLightGoldenrodYellow);
    AddConstant('clWebOlive',clWebOlive);
    AddConstant('clWebForestGreen',clWebForestGreen);
    AddConstant('clWebGreenYellow',clWebGreenYellow);
    AddConstant('clWebChartreuse',clWebChartreuse);
    AddConstant('clWebLightGreen',clWebLightGreen);
    AddConstant('clWebAquamarine',clWebAquamarine);
    AddConstant('clWebSeaGreen',clWebSeaGreen);
    AddConstant('clWebGoldenRod',clWebGoldenRod);
    AddConstant('clWebKhaki',clWebKhaki);
    AddConstant('clWebOliveDrab',clWebOliveDrab);
    AddConstant('clWebGreen',clWebGreen);
    AddConstant('clWebYellowGreen',clWebYellowGreen);
    AddConstant('clWebLawnGreen',clWebLawnGreen);
    AddConstant('clWebPaleGreen',clWebPaleGreen);
    AddConstant('clWebMediumAquamarine',clWebMediumAquamarine);
    AddConstant('clWebMediumSeaGreen',clWebMediumSeaGreen);
    AddConstant('clWebDarkGoldenRod',clWebDarkGoldenRod);
    AddConstant('clWebDarkKhaki',clWebDarkKhaki);
    AddConstant('clWebDarkOliveGreen',clWebDarkOliveGreen);
    AddConstant('clWebDarkgreen',clWebDarkgreen);
    AddConstant('clWebLimeGreen',clWebLimeGreen);
    AddConstant('clWebLime',clWebLime);
    AddConstant('clWebSpringGreen',clWebSpringGreen);
    AddConstant('clWebMediumSpringGreen',clWebMediumSpringGreen);
    AddConstant('clWebDarkSeaGreen',clWebDarkSeaGreen);
    AddConstant('clWebLightSeaGreen',clWebLightSeaGreen);
    AddConstant('clWebPaleTurquoise',clWebPaleTurquoise);
    AddConstant('clWebLightCyan',clWebLightCyan);
    AddConstant('clWebLightBlue',clWebLightBlue);
    AddConstant('clWebLightSkyBlue',clWebLightSkyBlue);
    AddConstant('clWebCornFlowerBlue',clWebCornFlowerBlue);
    AddConstant('clWebDarkBlue',clWebDarkBlue);
    AddConstant('clWebIndigo',clWebIndigo);
    AddConstant('clWebMediumTurquoise',clWebMediumTurquoise);
    AddConstant('clWebTurquoise',clWebTurquoise);
    AddConstant('clWebCyan',clWebCyan);
    AddConstant('clWebAqua',clWebAqua);
    AddConstant('clWebPowderBlue',clWebPowderBlue);
    AddConstant('clWebSkyBlue',clWebSkyBlue);
    AddConstant('clWebRoyalBlue',clWebRoyalBlue);
    AddConstant('clWebMediumBlue',clWebMediumBlue);
    AddConstant('clWebMidnightBlue',clWebMidnightBlue);
    AddConstant('clWebDarkTurquoise',clWebDarkTurquoise);
    AddConstant('clWebCadetBlue',clWebCadetBlue);
    AddConstant('clWebDarkCyan',clWebDarkCyan);
    AddConstant('clWebTeal',clWebTeal);
    AddConstant('clWebDeepskyBlue',clWebDeepskyBlue);
    AddConstant('clWebDodgerBlue',clWebDodgerBlue);
    AddConstant('clWebBlue',clWebBlue);
    AddConstant('clWebNavy',clWebNavy);
    AddConstant('clWebDarkViolet',clWebDarkViolet);
    AddConstant('clWebDarkOrchid',clWebDarkOrchid);
    AddConstant('clWebMagenta',clWebMagenta);
    AddConstant('clWebFuchsia',clWebFuchsia);
    AddConstant('clWebDarkMagenta',clWebDarkMagenta);
    AddConstant('clWebMediumVioletRed',clWebMediumVioletRed);
    AddConstant('clWebPaleVioletRed',clWebPaleVioletRed);
    AddConstant('clWebBlueViolet',clWebBlueViolet);
    AddConstant('clWebMediumOrchid',clWebMediumOrchid);
    AddConstant('clWebMediumPurple',clWebMediumPurple);
    AddConstant('clWebPurple',clWebPurple);
    AddConstant('clWebDeepPink',clWebDeepPink);
    AddConstant('clWebLightPink',clWebLightPink);
    AddConstant('clWebViolet',clWebViolet);
    AddConstant('clWebOrchid',clWebOrchid);
    AddConstant('clWebPlum',clWebPlum);
    AddConstant('clWebThistle',clWebThistle);
    AddConstant('clWebHotPink',clWebHotPink);
    AddConstant('clWebPink',clWebPink);
    AddConstant('clWebLightSteelBlue',clWebLightSteelBlue);
    AddConstant('clWebMediumSlateBlue',clWebMediumSlateBlue);
    AddConstant('clWebLightSlateGray',clWebLightSlateGray);
    AddConstant('clWebWhite',clWebWhite);
    AddConstant('clWebLightgrey',clWebLightgrey);
    AddConstant('clWebGray',clWebGray);
    AddConstant('clWebSteelBlue',clWebSteelBlue);
    AddConstant('clWebSlateBlue',clWebSlateBlue);
    AddConstant('clWebSlateGray',clWebSlateGray);
    AddConstant('clWebWhiteSmoke',clWebWhiteSmoke);
    AddConstant('clWebSilver',clWebSilver);
    AddConstant('clWebDimGray',clWebDimGray);
    AddConstant('clWebMistyRose',clWebMistyRose);
    AddConstant('clWebDarkSlateBlue',clWebDarkSlateBlue);
    AddConstant('clWebDarkSlategray',clWebDarkSlategray);
    AddConstant('clWebGainsboro',clWebGainsboro);
    AddConstant('clWebDarkGray',clWebDarkGray);
    AddConstant('clWebBlack',clWebBlack);
    AddConstant('WebColorsCount',WebColorsCount);
    AddConstant('cmBlackness',cmBlackness);
    AddConstant('cmDstInvert',cmDstInvert);
    AddConstant('cmMergeCopy',cmMergeCopy);
    AddConstant('cmMergePaint',cmMergePaint);
    AddConstant('cmNotSrcCopy',cmNotSrcCopy);
    AddConstant('cmNotSrcErase',cmNotSrcErase);
    AddConstant('cmPatCopy',cmPatCopy);
    AddConstant('cmPatInvert',cmPatInvert);
    AddConstant('cmPatPaint',cmPatPaint);
    AddConstant('cmSrcAnd',cmSrcAnd);
    AddConstant('cmSrcCopy',cmSrcCopy);
    AddConstant('cmSrcErase',cmSrcErase);
    AddConstant('cmSrcInvert',cmSrcInvert);
    AddConstant('cmSrcPaint',cmSrcPaint);
    AddConstant('cmWhiteness',cmWhiteness);
    AddConstant('rc3_StockIcon',rc3_StockIcon);
    AddConstant('rc3_Icon',rc3_Icon);
    AddConstant('rc3_Cursor',rc3_Cursor);
  end;
end;

class function TatGraphicsLibrary.LibraryName: string;
begin
  result := 'Graphics';
end;

initialization
  RegisterScripterLibrary(TatGraphicsLibrary, True);

{$WARNINGS ON}

end.

