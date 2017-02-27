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
//unit ap_Math;

interface

uses
  SysUtils,
  Types,
  Math,
  Variants,
  atScript;

{$WARNINGS OFF}

type
  TatMathLibrary = class(TatScripterLibrary)
    procedure __ArcCos(AMachine: TatVirtualMachine);
    procedure __ArcSin(AMachine: TatVirtualMachine);
    procedure __ArcTan2(AMachine: TatVirtualMachine);
    procedure __SinCos(AMachine: TatVirtualMachine);
    procedure __Tan(AMachine: TatVirtualMachine);
    procedure __Cotan(AMachine: TatVirtualMachine);
    procedure __Secant(AMachine: TatVirtualMachine);
    procedure __Cosecant(AMachine: TatVirtualMachine);
    procedure __Hypot(AMachine: TatVirtualMachine);
    procedure __RadToDeg(AMachine: TatVirtualMachine);
    procedure __RadToGrad(AMachine: TatVirtualMachine);
    procedure __RadToCycle(AMachine: TatVirtualMachine);
    procedure __DegToRad(AMachine: TatVirtualMachine);
    procedure __DegToGrad(AMachine: TatVirtualMachine);
    procedure __DegToCycle(AMachine: TatVirtualMachine);
    procedure __GradToRad(AMachine: TatVirtualMachine);
    procedure __GradToDeg(AMachine: TatVirtualMachine);
    procedure __GradToCycle(AMachine: TatVirtualMachine);
    procedure __CycleToRad(AMachine: TatVirtualMachine);
    procedure __CycleToDeg(AMachine: TatVirtualMachine);
    procedure __CycleToGrad(AMachine: TatVirtualMachine);
    procedure __Cot(AMachine: TatVirtualMachine);
    procedure __Sec(AMachine: TatVirtualMachine);
    procedure __Csc(AMachine: TatVirtualMachine);
    procedure __Cosh(AMachine: TatVirtualMachine);
    procedure __Sinh(AMachine: TatVirtualMachine);
    procedure __Tanh(AMachine: TatVirtualMachine);
    procedure __CotH(AMachine: TatVirtualMachine);
    procedure __SecH(AMachine: TatVirtualMachine);
    procedure __CscH(AMachine: TatVirtualMachine);
    procedure __ArcCot(AMachine: TatVirtualMachine);
    procedure __ArcSec(AMachine: TatVirtualMachine);
    procedure __ArcCsc(AMachine: TatVirtualMachine);
    procedure __ArcCosh(AMachine: TatVirtualMachine);
    procedure __ArcSinh(AMachine: TatVirtualMachine);
    procedure __ArcTanh(AMachine: TatVirtualMachine);
    procedure __ArcCotH(AMachine: TatVirtualMachine);
    procedure __ArcSecH(AMachine: TatVirtualMachine);
    procedure __ArcCscH(AMachine: TatVirtualMachine);
    procedure __LnXP1(AMachine: TatVirtualMachine);
    procedure __Log10(AMachine: TatVirtualMachine);
    procedure __Log2(AMachine: TatVirtualMachine);
    procedure __LogN(AMachine: TatVirtualMachine);
    procedure __IntPower(AMachine: TatVirtualMachine);
    procedure __Power(AMachine: TatVirtualMachine);
    procedure __Frexp(AMachine: TatVirtualMachine);
    procedure __Ldexp(AMachine: TatVirtualMachine);
    procedure __Ceil(AMachine: TatVirtualMachine);
    procedure __Floor(AMachine: TatVirtualMachine);
    procedure __Min(AMachine: TatVirtualMachine);
    procedure __Max(AMachine: TatVirtualMachine);
    procedure __RandG(AMachine: TatVirtualMachine);
    procedure __IsNan(AMachine: TatVirtualMachine);
    procedure __IsInfinite(AMachine: TatVirtualMachine);
    procedure __Sign(AMachine: TatVirtualMachine);
    procedure __CompareValue(AMachine: TatVirtualMachine);
    procedure __SameValue(AMachine: TatVirtualMachine);
    procedure __IsZero(AMachine: TatVirtualMachine);
    procedure __IfThen(AMachine: TatVirtualMachine);
    procedure __RandomRange(AMachine: TatVirtualMachine);
    procedure __InRange(AMachine: TatVirtualMachine);
    procedure __EnsureRange(AMachine: TatVirtualMachine);
    procedure __DivMod(AMachine: TatVirtualMachine);
    procedure __RoundTo(AMachine: TatVirtualMachine);
    procedure __SimpleRoundTo(AMachine: TatVirtualMachine);
    procedure __DoubleDecliningBalance(AMachine: TatVirtualMachine);
    procedure __FutureValue(AMachine: TatVirtualMachine);
    procedure __InterestPayment(AMachine: TatVirtualMachine);
    procedure __InterestRate(AMachine: TatVirtualMachine);
    procedure __NumberOfPeriods(AMachine: TatVirtualMachine);
    procedure __Payment(AMachine: TatVirtualMachine);
    procedure __PeriodPayment(AMachine: TatVirtualMachine);
    procedure __PresentValue(AMachine: TatVirtualMachine);
    procedure __SLNDepreciation(AMachine: TatVirtualMachine);
    procedure __SYDDepreciation(AMachine: TatVirtualMachine);
    procedure __GetRoundMode(AMachine: TatVirtualMachine);
    procedure __SetRoundMode(AMachine: TatVirtualMachine);
    procedure __GetPrecisionMode(AMachine: TatVirtualMachine);
    procedure __SetPrecisionMode(AMachine: TatVirtualMachine);
    procedure __GetExceptionMask(AMachine: TatVirtualMachine);
    procedure __SetExceptionMask(AMachine: TatVirtualMachine);
    procedure __ClearExceptions(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  EInvalidArgumentClass = class of EInvalidArgument;



implementation



procedure TatMathLibrary.__ArcCos(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcCos(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcSin(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcSin(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcTan2(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcTan2(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SinCos(AMachine: TatVirtualMachine);
  var
  Param1: Extended;
  Param2: Extended;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
Param2 := GetInputArg(2);
    Math.SinCos(GetInputArg(0),Param1,Param2);
    SetInputArg(1,Param1);
    SetInputArg(2,Param2);
  end;
end;

procedure TatMathLibrary.__Tan(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Tan(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Cotan(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Cotan(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Secant(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Secant(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Cosecant(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Cosecant(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Hypot(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Hypot(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__RadToDeg(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.RadToDeg(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__RadToGrad(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.RadToGrad(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__RadToCycle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.RadToCycle(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__DegToRad(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.DegToRad(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__DegToGrad(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.DegToGrad(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__DegToCycle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.DegToCycle(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__GradToRad(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.GradToRad(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__GradToDeg(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.GradToDeg(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__GradToCycle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.GradToCycle(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__CycleToRad(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.CycleToRad(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__CycleToDeg(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.CycleToDeg(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__CycleToGrad(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.CycleToGrad(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Cot(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Cot(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Sec(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Sec(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Csc(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Csc(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Cosh(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Cosh(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Sinh(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Sinh(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Tanh(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Tanh(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__CotH(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.CotH(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SecH(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.SecH(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__CscH(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.CscH(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcCot(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcCot(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcSec(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcSec(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcCsc(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcCsc(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcCosh(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcCosh(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcSinh(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcSinh(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcTanh(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcTanh(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcCotH(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcCotH(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcSecH(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcSecH(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ArcCscH(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.ArcCscH(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__LnXP1(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.LnXP1(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Log10(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Log10(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Log2(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Log2(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__LogN(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.LogN(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__IntPower(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.IntPower(GetInputArg(0),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Power(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Power(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Frexp(AMachine: TatVirtualMachine);
  var
  Param1: Extended;
  Param2: Integer;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
Param2 := VarToInteger(GetInputArg(2));
    Math.Frexp(GetInputArg(0),Param1,Param2);
    SetInputArg(1,Param1);
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatMathLibrary.__Ldexp(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Ldexp(GetInputArg(0),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Ceil(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.Ceil(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Floor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.Floor(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Min(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.Min(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Max(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.Max(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__RandG(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.RandG(GetInputArg(0),GetInputArg(1));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__IsNan(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.IsNan(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__IsInfinite(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.IsInfinite(GetInputArg(0));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Sign(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.Sign(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__CompareValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
2: AResult := Integer(Math.CompareValue(GetInputArg(0),GetInputArg(1)));
3: AResult := Integer(Math.CompareValue(GetInputArg(0),GetInputArg(1),GetInputArg(2)));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SameValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
2: AResult := Math.SameValue(GetInputArg(0),GetInputArg(1));
3: AResult := Math.SameValue(GetInputArg(0),GetInputArg(1),GetInputArg(2));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__IsZero(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := Math.IsZero(GetInputArg(0));
2: AResult := Math.IsZero(GetInputArg(0),GetInputArg(1));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__IfThen(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
2: AResult := Integer(Math.IfThen(GetInputArg(0),VarToInteger(GetInputArg(1))));
3: AResult := Integer(Math.IfThen(GetInputArg(0),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__RandomRange(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.RandomRange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__InRange(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.InRange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__EnsureRange(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.EnsureRange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__DivMod(AMachine: TatVirtualMachine);
  var
  Param2: Word;
  Param3: Word;
begin
  with AMachine do
  begin
Param2 := VarToInteger(GetInputArg(2));
Param3 := VarToInteger(GetInputArg(3));
    Math.DivMod(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),Param2,Param3);
    SetInputArg(2,Integer(Param2));
    SetInputArg(3,Integer(Param3));
  end;
end;

procedure TatMathLibrary.__RoundTo(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.RoundTo(GetInputArg(0),TRoundToRange(VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SimpleRoundTo(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := Math.SimpleRoundTo(GetInputArg(0));
2: AResult := Math.SimpleRoundTo(GetInputArg(0),TRoundToRange(VarToInteger(GetInputArg(1))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__DoubleDecliningBalance(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.DoubleDecliningBalance(GetInputArg(0),GetInputArg(1),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__FutureValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.FutureValue(GetInputArg(0),VarToInteger(GetInputArg(1)),GetInputArg(2),GetInputArg(3),TPaymentTime(VarToInteger(GetInputArg(4))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__InterestPayment(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.InterestPayment(GetInputArg(0),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),GetInputArg(3),GetInputArg(4),TPaymentTime(VarToInteger(GetInputArg(5))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__InterestRate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.InterestRate(VarToInteger(GetInputArg(0)),GetInputArg(1),GetInputArg(2),GetInputArg(3),TPaymentTime(VarToInteger(GetInputArg(4))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__NumberOfPeriods(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.NumberOfPeriods(GetInputArg(0),GetInputArg(1),GetInputArg(2),GetInputArg(3),TPaymentTime(VarToInteger(GetInputArg(4))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__Payment(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.Payment(GetInputArg(0),VarToInteger(GetInputArg(1)),GetInputArg(2),GetInputArg(3),TPaymentTime(VarToInteger(GetInputArg(4))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__PeriodPayment(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.PeriodPayment(GetInputArg(0),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),GetInputArg(3),GetInputArg(4),TPaymentTime(VarToInteger(GetInputArg(5))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__PresentValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.PresentValue(GetInputArg(0),VarToInteger(GetInputArg(1)),GetInputArg(2),GetInputArg(3),TPaymentTime(VarToInteger(GetInputArg(4))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SLNDepreciation(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.SLNDepreciation(GetInputArg(0),GetInputArg(1),VarToInteger(GetInputArg(2)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SYDDepreciation(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Math.SYDDepreciation(GetInputArg(0),GetInputArg(1),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__GetRoundMode(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.GetRoundMode);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SetRoundMode(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.SetRoundMode(TFPURoundingMode(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__GetPrecisionMode(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.GetPrecisionMode);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SetPrecisionMode(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Math.SetPrecisionMode(TFPUPrecisionMode(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__GetExceptionMask(AMachine: TatVirtualMachine);
  var
  AResultSet: TFPUExceptionMask;
  AResult: variant;
begin
  with AMachine do
  begin
AResultSet := Math.GetExceptionMask;
AResult := IntFromSet(AResultSet, SizeOf(AResultSet));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__SetExceptionMask(AMachine: TatVirtualMachine);
  var
  Param0: TFPUExceptionMask;
  AResultSet: TFPUExceptionMask;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param0, VarToInteger(GetInputArg(0)), SizeOf(Param0));
AResultSet := Math.SetExceptionMask(Param0);
AResult := IntFromSet(AResultSet, SizeOf(AResultSet));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMathLibrary.__ClearExceptions(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      0: Math.ClearExceptions;
      1: Math.ClearExceptions(GetInputArg(0));
    end;
  end;
end;

procedure TatMathLibrary.Init;
begin
  With Scripter.DefineClass(EInvalidArgument) do
  begin
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('ArcCos',1,tkVariant,nil,__ArcCos,false,0,'X: Extended');
    DefineMethod('ArcSin',1,tkVariant,nil,__ArcSin,false,0,'X: Extended');
    DefineMethod('ArcTan2',2,tkVariant,nil,__ArcTan2,false,0,'Y: Extended; X: Extended');
    DefineMethod('SinCos',3,tkNone,nil,__SinCos,false,0,'Theta: Extended; Sin: Extended; Cos: Extended').SetVarArgs([1,2]);
    DefineMethod('Tan',1,tkVariant,nil,__Tan,false,0,'X: Extended');
    DefineMethod('Cotan',1,tkVariant,nil,__Cotan,false,0,'X: Extended');
    DefineMethod('Secant',1,tkVariant,nil,__Secant,false,0,'X: Extended');
    DefineMethod('Cosecant',1,tkVariant,nil,__Cosecant,false,0,'X: Extended');
    DefineMethod('Hypot',2,tkVariant,nil,__Hypot,false,0,'X: Extended; Y: Extended');
    DefineMethod('RadToDeg',1,tkVariant,nil,__RadToDeg,false,0,'Radians: Extended');
    DefineMethod('RadToGrad',1,tkVariant,nil,__RadToGrad,false,0,'Radians: Extended');
    DefineMethod('RadToCycle',1,tkVariant,nil,__RadToCycle,false,0,'Radians: Extended');
    DefineMethod('DegToRad',1,tkVariant,nil,__DegToRad,false,0,'Degrees: Extended');
    DefineMethod('DegToGrad',1,tkVariant,nil,__DegToGrad,false,0,'Degrees: Extended');
    DefineMethod('DegToCycle',1,tkVariant,nil,__DegToCycle,false,0,'Degrees: Extended');
    DefineMethod('GradToRad',1,tkVariant,nil,__GradToRad,false,0,'Grads: Extended');
    DefineMethod('GradToDeg',1,tkVariant,nil,__GradToDeg,false,0,'Grads: Extended');
    DefineMethod('GradToCycle',1,tkVariant,nil,__GradToCycle,false,0,'Grads: Extended');
    DefineMethod('CycleToRad',1,tkVariant,nil,__CycleToRad,false,0,'Cycles: Extended');
    DefineMethod('CycleToDeg',1,tkVariant,nil,__CycleToDeg,false,0,'Cycles: Extended');
    DefineMethod('CycleToGrad',1,tkVariant,nil,__CycleToGrad,false,0,'Cycles: Extended');
    DefineMethod('Cot',1,tkVariant,nil,__Cot,false,0,'X: Extended');
    DefineMethod('Sec',1,tkVariant,nil,__Sec,false,0,'X: Extended');
    DefineMethod('Csc',1,tkVariant,nil,__Csc,false,0,'X: Extended');
    DefineMethod('Cosh',1,tkVariant,nil,__Cosh,false,0,'X: Extended');
    DefineMethod('Sinh',1,tkVariant,nil,__Sinh,false,0,'X: Extended');
    DefineMethod('Tanh',1,tkVariant,nil,__Tanh,false,0,'X: Extended');
    DefineMethod('CotH',1,tkVariant,nil,__CotH,false,0,'X: Extended');
    DefineMethod('SecH',1,tkVariant,nil,__SecH,false,0,'X: Extended');
    DefineMethod('CscH',1,tkVariant,nil,__CscH,false,0,'X: Extended');
    DefineMethod('ArcCot',1,tkVariant,nil,__ArcCot,false,0,'X: Extended');
    DefineMethod('ArcSec',1,tkVariant,nil,__ArcSec,false,0,'X: Extended');
    DefineMethod('ArcCsc',1,tkVariant,nil,__ArcCsc,false,0,'X: Extended');
    DefineMethod('ArcCosh',1,tkVariant,nil,__ArcCosh,false,0,'X: Extended');
    DefineMethod('ArcSinh',1,tkVariant,nil,__ArcSinh,false,0,'X: Extended');
    DefineMethod('ArcTanh',1,tkVariant,nil,__ArcTanh,false,0,'X: Extended');
    DefineMethod('ArcCotH',1,tkVariant,nil,__ArcCotH,false,0,'X: Extended');
    DefineMethod('ArcSecH',1,tkVariant,nil,__ArcSecH,false,0,'X: Extended');
    DefineMethod('ArcCscH',1,tkVariant,nil,__ArcCscH,false,0,'X: Extended');
    DefineMethod('LnXP1',1,tkVariant,nil,__LnXP1,false,0,'X: Extended');
    DefineMethod('Log10',1,tkVariant,nil,__Log10,false,0,'X: Extended');
    DefineMethod('Log2',1,tkVariant,nil,__Log2,false,0,'X: Extended');
    DefineMethod('LogN',2,tkVariant,nil,__LogN,false,0,'Base: Extended; X: Extended');
    DefineMethod('IntPower',2,tkVariant,nil,__IntPower,false,0,'Base: Extended; Exponent: Integer');
    DefineMethod('Power',2,tkVariant,nil,__Power,false,0,'Base: Extended; Exponent: Extended');
    DefineMethod('Frexp',3,tkNone,nil,__Frexp,false,0,'X: Extended; Mantissa: Extended; Exponent: Integer').SetVarArgs([1,2]);
    DefineMethod('Ldexp',2,tkVariant,nil,__Ldexp,false,0,'X: Extended; P: Integer');
    DefineMethod('Ceil',1,tkInteger,nil,__Ceil,false,0,'X: Extended');
    DefineMethod('Floor',1,tkInteger,nil,__Floor,false,0,'X: Extended');
    DefineMethod('Min',2,tkInteger,nil,__Min,false,0,'A: Integer; B: Integer');
    DefineMethod('Max',2,tkInteger,nil,__Max,false,0,'A: Integer; B: Integer');
    DefineMethod('RandG',2,tkVariant,nil,__RandG,false,0,'Mean: Extended; StdDev: Extended');
    DefineMethod('IsNan',1,tkVariant,nil,__IsNan,false,0,'AValue: Double');
    DefineMethod('IsInfinite',1,tkVariant,nil,__IsInfinite,false,0,'AValue: Double');
    DefineMethod('Sign',1,tkEnumeration,nil,__Sign,false,0,'AValue: Integer');
    DefineMethod('CompareValue',3,tkEnumeration,nil,__CompareValue,false,1,'A: Extended; B: Extended; Epsilon: Extended = 0');
    DefineMethod('SameValue',3,tkVariant,nil,__SameValue,false,1,'A: Extended; B: Extended; Epsilon: Extended = 0');
    DefineMethod('IsZero',2,tkVariant,nil,__IsZero,false,1,'A: Extended; Epsilon: Extended = 0');
    DefineMethod('IfThen',3,tkInteger,nil,__IfThen,false,1,'AValue: Boolean; ATrue: Integer; AFalse: Integer = 0');
    DefineMethod('RandomRange',2,tkInteger,nil,__RandomRange,false,0,'AFrom: Integer; ATo: Integer');
    DefineMethod('InRange',3,tkVariant,nil,__InRange,false,0,'AValue: Integer; AMin: Integer; AMax: Integer');
    DefineMethod('EnsureRange',3,tkInteger,nil,__EnsureRange,false,0,'AValue: Integer; AMin: Integer; AMax: Integer');
    DefineMethod('DivMod',4,tkNone,nil,__DivMod,false,0,'Dividend: Cardinal; Divisor: Word; Result: Word; Remainder: Word').SetVarArgs([2,3]);
    DefineMethod('RoundTo',2,tkVariant,nil,__RoundTo,false,0,'AValue: Double; ADigit: TRoundToRange');
    DefineMethod('SimpleRoundTo',2,tkVariant,nil,__SimpleRoundTo,false,1,'AValue: Double; ADigit: TRoundToRange = -2');
    DefineMethod('DoubleDecliningBalance',4,tkVariant,nil,__DoubleDecliningBalance,false,0,'Cost: Extended; Salvage: Extended; Life: Integer; Period: Integer');
    DefineMethod('FutureValue',5,tkVariant,nil,__FutureValue,false,0,'Rate: Extended; NPeriods: Integer; Payment: Extended; PresentValue: Extended; PaymentTime: TPaymentTime');
    DefineMethod('InterestPayment',6,tkVariant,nil,__InterestPayment,false,0,'Rate: Extended; Period: Integer; NPeriods: Integer; PresentValue: Extended; FutureValue: Extended; PaymentTime: TPaymentTime');
    DefineMethod('InterestRate',5,tkVariant,nil,__InterestRate,false,0,'NPeriods: Integer; Payment: Extended; PresentValue: Extended; FutureValue: Extended; PaymentTime: TPaymentTime');
    DefineMethod('NumberOfPeriods',5,tkVariant,nil,__NumberOfPeriods,false,0,'Rate: Extended; Payment: Extended; PresentValue: Extended; FutureValue: Extended; PaymentTime: TPaymentTime');
    DefineMethod('Payment',5,tkVariant,nil,__Payment,false,0,'Rate: Extended; NPeriods: Integer; PresentValue: Extended; FutureValue: Extended; PaymentTime: TPaymentTime');
    DefineMethod('PeriodPayment',6,tkVariant,nil,__PeriodPayment,false,0,'Rate: Extended; Period: Integer; NPeriods: Integer; PresentValue: Extended; FutureValue: Extended; PaymentTime: TPaymentTime');
    DefineMethod('PresentValue',5,tkVariant,nil,__PresentValue,false,0,'Rate: Extended; NPeriods: Integer; Payment: Extended; FutureValue: Extended; PaymentTime: TPaymentTime');
    DefineMethod('SLNDepreciation',3,tkVariant,nil,__SLNDepreciation,false,0,'Cost: Extended; Salvage: Extended; Life: Integer');
    DefineMethod('SYDDepreciation',4,tkVariant,nil,__SYDDepreciation,false,0,'Cost: Extended; Salvage: Extended; Life: Integer; Period: Integer');
    DefineMethod('GetRoundMode',0,tkEnumeration,nil,__GetRoundMode,false,0,'');
    DefineMethod('SetRoundMode',1,tkEnumeration,nil,__SetRoundMode,false,0,'RoundMode: TFPURoundingMode');
    DefineMethod('GetPrecisionMode',0,tkEnumeration,nil,__GetPrecisionMode,false,0,'');
    DefineMethod('SetPrecisionMode',1,tkEnumeration,nil,__SetPrecisionMode,false,0,'Precision: TFPUPrecisionMode');
    DefineMethod('GetExceptionMask',0,tkInteger,nil,__GetExceptionMask,false,0,'');
    DefineMethod('SetExceptionMask',1,tkInteger,nil,__SetExceptionMask,false,0,'Mask: TFPUExceptionMask');
    DefineMethod('ClearExceptions',1,tkNone,nil,__ClearExceptions,false,1,'RaisePending: Boolean = True');
    AddConstant('ptEndOfPeriod',ptEndOfPeriod);
    AddConstant('ptStartOfPeriod',ptStartOfPeriod);
    AddConstant('rmNearest',rmNearest);
    AddConstant('rmDown',rmDown);
    AddConstant('rmUp',rmUp);
    AddConstant('rmTruncate',rmTruncate);
    AddConstant('pmSingle',pmSingle);
    AddConstant('pmReserved',pmReserved);
    AddConstant('pmDouble',pmDouble);
    AddConstant('pmExtended',pmExtended);
    AddConstant('exInvalidOp',exInvalidOp);
    AddConstant('exDenormalized',exDenormalized);
    AddConstant('exZeroDivide',exZeroDivide);
    AddConstant('exOverflow',exOverflow);
    AddConstant('exUnderflow',exUnderflow);
    AddConstant('exPrecision',exPrecision);
    AddConstant('MinSingle',MinSingle);
    AddConstant('MaxSingle',MaxSingle);
    AddConstant('MinDouble',MinDouble);
    AddConstant('MaxDouble',MaxDouble);
    AddConstant('NaN',NaN);
    AddConstant('Infinity',Infinity);
    AddConstant('NegInfinity',NegInfinity);
    AddConstant('NegativeValue',NegativeValue);
    AddConstant('ZeroValue',ZeroValue);
    AddConstant('PositiveValue',PositiveValue);
  end;
end;

class function TatMathLibrary.LibraryName: string;
begin
  result := 'Math';
end;

initialization
  RegisterScripterLibrary(TatMathLibrary, True);

{$WARNINGS ON}

end.

