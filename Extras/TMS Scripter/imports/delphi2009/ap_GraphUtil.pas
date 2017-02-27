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
//unit ap_GraphUtil;

interface

uses
  Windows,
  Graphics,
  Classes,
  GraphUtil,
  Variants,
  ap_Types,
  atScript;

{$WARNINGS OFF}

type
  TatGraphUtilLibrary = class(TatScripterLibrary)
    procedure __GetHighLightColor(AMachine: TatVirtualMachine);
    procedure __GetShadowColor(AMachine: TatVirtualMachine);
    procedure __DrawCheck(AMachine: TatVirtualMachine);
    procedure __DrawChevron(AMachine: TatVirtualMachine);
    procedure __DrawArrow(AMachine: TatVirtualMachine);
    procedure __ColorRGBToHLS(AMachine: TatVirtualMachine);
    procedure __ColorHLSToRGB(AMachine: TatVirtualMachine);
    procedure __ColorAdjustLuma(AMachine: TatVirtualMachine);
    procedure __GradientFillCanvas(AMachine: TatVirtualMachine);
    procedure __ScaleImage(AMachine: TatVirtualMachine);
    procedure __ColorToWebColorStr(AMachine: TatVirtualMachine);
    procedure __ColorToWebColorName(AMachine: TatVirtualMachine);
    procedure __WebColorToRGB(AMachine: TatVirtualMachine);
    procedure __RGBToWebColorStr(AMachine: TatVirtualMachine);
    procedure __RGBToWebColorName(AMachine: TatVirtualMachine);
    procedure __WebColorNameToColor(AMachine: TatVirtualMachine);
    procedure __WebColorStrToColor(AMachine: TatVirtualMachine);
    procedure __DrawTransparentBitmap(AMachine: TatVirtualMachine);
    procedure __SplitTransparentBitmap(AMachine: TatVirtualMachine);
    procedure __LoadCompressedResourceBitmap(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatGraphUtilLibrary.__GetHighLightColor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := Integer(GraphUtil.GetHighLightColor(TColor(VarToInteger(GetInputArg(0)))));
2: AResult := Integer(GraphUtil.GetHighLightColor(TColor(VarToInteger(GetInputArg(0))),VarToInteger(GetInputArg(1))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__GetShadowColor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := Integer(GraphUtil.GetShadowColor(TColor(VarToInteger(GetInputArg(0)))));
2: AResult := Integer(GraphUtil.GetShadowColor(TColor(VarToInteger(GetInputArg(0))),VarToInteger(GetInputArg(1))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__DrawCheck(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      3: GraphUtil.DrawCheck(TCanvas(VarToObject(GetInputArg(0))),TPointWrapper(integer(GetInputArg(1))).ObjToRec,VarToInteger(GetInputArg(2)));
      4: GraphUtil.DrawCheck(TCanvas(VarToObject(GetInputArg(0))),TPointWrapper(integer(GetInputArg(1))).ObjToRec,VarToInteger(GetInputArg(2)),GetInputArg(3));
    end;
  end;
end;

procedure TatGraphUtilLibrary.__DrawChevron(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    GraphUtil.DrawChevron(TCanvas(VarToObject(GetInputArg(0))),TScrollDirection(VarToInteger(GetInputArg(1))),TPointWrapper(integer(GetInputArg(2))).ObjToRec,VarToInteger(GetInputArg(3)));
  end;
end;

procedure TatGraphUtilLibrary.__DrawArrow(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    GraphUtil.DrawArrow(TCanvas(VarToObject(GetInputArg(0))),TScrollDirection(VarToInteger(GetInputArg(1))),TPointWrapper(integer(GetInputArg(2))).ObjToRec,VarToInteger(GetInputArg(3)));
  end;
end;

procedure TatGraphUtilLibrary.__ColorRGBToHLS(AMachine: TatVirtualMachine);
  var
  Param1: Word;
  Param2: Word;
  Param3: Word;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
Param2 := VarToInteger(GetInputArg(2));
Param3 := VarToInteger(GetInputArg(3));
    GraphUtil.ColorRGBToHLS(VarToInteger(GetInputArg(0)),Param1,Param2,Param3);
    SetInputArg(1,Integer(Param1));
    SetInputArg(2,Integer(Param2));
    SetInputArg(3,Integer(Param3));
  end;
end;

procedure TatGraphUtilLibrary.__ColorHLSToRGB(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(GraphUtil.ColorHLSToRGB(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__ColorAdjustLuma(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(GraphUtil.ColorAdjustLuma(TColor(VarToInteger(GetInputArg(0))),VarToInteger(GetInputArg(1)),GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__GradientFillCanvas(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    GraphUtil.GradientFillCanvas(TCanvas(VarToObject(GetInputArg(0))),TColor(VarToInteger(GetInputArg(1))),TColor(VarToInteger(GetInputArg(2))),TRectWrapper(integer(GetInputArg(3))).ObjToRec,TGradientDirection(VarToInteger(GetInputArg(4))));
  end;
end;

procedure TatGraphUtilLibrary.__ScaleImage(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    GraphUtil.ScaleImage(TBitmap(VarToObject(GetInputArg(0))),TBitmap(VarToObject(GetInputArg(1))),GetInputArg(2));
  end;
end;

procedure TatGraphUtilLibrary.__ColorToWebColorStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(GraphUtil.ColorToWebColorStr(TColor(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__ColorToWebColorName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(GraphUtil.ColorToWebColorName(TColor(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__WebColorToRGB(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(GraphUtil.WebColorToRGB(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__RGBToWebColorStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(GraphUtil.RGBToWebColorStr(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__RGBToWebColorName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(GraphUtil.RGBToWebColorName(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__WebColorNameToColor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(GraphUtil.WebColorNameToColor(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__WebColorStrToColor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(GraphUtil.WebColorStrToColor(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__DrawTransparentBitmap(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    GraphUtil.DrawTransparentBitmap(TBitmap(VarToObject(GetInputArg(0))),TCanvas(VarToObject(GetInputArg(1))),TRectWrapper(integer(GetInputArg(2))).ObjToRec,VarToInteger(GetInputArg(3)));
  end;
end;

procedure TatGraphUtilLibrary.__SplitTransparentBitmap(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(GraphUtil.SplitTransparentBitmap(TBitmap(VarToObject(GetInputArg(0))),TRectWrapper(integer(GetInputArg(1))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.__LoadCompressedResourceBitmap(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(GraphUtil.LoadCompressedResourceBitmap(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatGraphUtilLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('GetHighLightColor',2,tkEnumeration,nil,__GetHighLightColor,false,1,'Color: TColor; Luminance: Integer = 19');
    DefineMethod('GetShadowColor',2,tkEnumeration,nil,__GetShadowColor,false,1,'Color: TColor; Luminance: Integer = -50');
    DefineMethod('DrawCheck',4,tkNone,nil,__DrawCheck,false,1,'ACanvas: TCanvas; Location: TPoint; Size: Integer; Shadow: Boolean = True');
    DefineMethod('DrawChevron',4,tkNone,nil,__DrawChevron,false,0,'ACanvas: TCanvas; Direction: TScrollDirection; Location: TPoint; Size: Integer');
    DefineMethod('DrawArrow',4,tkNone,nil,__DrawArrow,false,0,'ACanvas: TCanvas; Direction: TScrollDirection; Location: TPoint; Size: Integer');
    DefineMethod('ColorRGBToHLS',4,tkNone,nil,__ColorRGBToHLS,false,0,'clrRGB: TColorRef; Hue: Word; Luminance: Word; Saturation: Word').SetVarArgs([1,2,3]);
    DefineMethod('ColorHLSToRGB',3,tkInteger,nil,__ColorHLSToRGB,false,0,'Hue: Word; Luminance: Word; Saturation: Word');
    DefineMethod('ColorAdjustLuma',3,tkEnumeration,nil,__ColorAdjustLuma,false,0,'clrRGB: TColor; n: Integer; fScale: BOOL');
    DefineMethod('GradientFillCanvas',5,tkNone,nil,__GradientFillCanvas,false,0,'ACanvas: TCanvas; AStartColor: TColor; AEndColor: TColor; ARect: TRect; Direction: TGradientDirection');
    DefineMethod('ScaleImage',3,tkNone,nil,__ScaleImage,false,0,'SourceBitmap: TBitmap; ResizedBitmap: TBitmap; ScaleAmount: Double');
    DefineMethod('ColorToWebColorStr',1,tkVariant,nil,__ColorToWebColorStr,false,0,'Color: TColor');
    DefineMethod('ColorToWebColorName',1,tkVariant,nil,__ColorToWebColorName,false,0,'Color: TColor');
    DefineMethod('WebColorToRGB',1,tkInteger,nil,__WebColorToRGB,false,0,'WebColor: Integer');
    DefineMethod('RGBToWebColorStr',1,tkVariant,nil,__RGBToWebColorStr,false,0,'RGB: Integer');
    DefineMethod('RGBToWebColorName',1,tkVariant,nil,__RGBToWebColorName,false,0,'RGB: Integer');
    DefineMethod('WebColorNameToColor',1,tkEnumeration,nil,__WebColorNameToColor,false,0,'WebColorName: string');
    DefineMethod('WebColorStrToColor',1,tkEnumeration,nil,__WebColorStrToColor,false,0,'WebColor: string');
    DefineMethod('DrawTransparentBitmap',4,tkNone,nil,__DrawTransparentBitmap,false,0,'Source: TBitmap; Destination: TCanvas; DestRect: TRect; Opacity: Byte');
    DefineMethod('SplitTransparentBitmap',2,tkClass,TBitmap,__SplitTransparentBitmap,false,0,'Source: TBitmap; SourceRect: TRect');
    DefineMethod('LoadCompressedResourceBitmap',1,tkClass,TBitmap,__LoadCompressedResourceBitmap,false,0,'ResID: string');
    AddConstant('sdLeft',sdLeft);
    AddConstant('sdRight',sdRight);
    AddConstant('sdUp',sdUp);
    AddConstant('sdDown',sdDown);
    AddConstant('atSolid',atSolid);
    AddConstant('atArrows',atArrows);
    AddConstant('gdHorizontal',gdHorizontal);
    AddConstant('gdVertical',gdVertical);
    AddConstant('stHue',stHue);
    AddConstant('stSaturation',stSaturation);
    AddConstant('stLuminance',stLuminance);
    AddConstant('stRed',stRed);
    AddConstant('stGreen',stGreen);
    AddConstant('stBlue',stBlue);
    AddConstant('stCombo',stCombo);
    AddConstant('WebNamedColorsCount',WebNamedColorsCount);
  end;
end;

class function TatGraphUtilLibrary.LibraryName: string;
begin
  result := 'GraphUtil';
end;

initialization
  RegisterScripterLibrary(TatGraphUtilLibrary, True);

{$WARNINGS ON}

end.

