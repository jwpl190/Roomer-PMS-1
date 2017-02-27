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
//unit ap_IBUtils;

interface

uses
  Windows,
  Classes,
  SysUtils,
  DB,
  DBCommon,
  IBUtils,
  Variants,
  atScript;

{$WARNINGS OFF}

type
  TatIBUtilsLibrary = class(TatScripterLibrary)
    procedure __Max(AMachine: TatVirtualMachine);
    procedure __Min(AMachine: TatVirtualMachine);
    procedure __RandomString(AMachine: TatVirtualMachine);
    procedure __RandomInteger(AMachine: TatVirtualMachine);
    procedure __StripString(AMachine: TatVirtualMachine);
    procedure __FormatIdentifier(AMachine: TatVirtualMachine);
    procedure __FormatIdentifierValue(AMachine: TatVirtualMachine);
    procedure __ExtractIdentifier(AMachine: TatVirtualMachine);
    procedure __QuoteIdentifier(AMachine: TatVirtualMachine);
    procedure __AddIBParamSQLForDetail(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatIBUtilsLibrary.__Max(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IBUtils.Max(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__Min(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IBUtils.Min(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__RandomString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(IBUtils.RandomString(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__RandomInteger(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IBUtils.RandomInteger(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__StripString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(IBUtils.StripString(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__FormatIdentifier(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(IBUtils.FormatIdentifier(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__FormatIdentifierValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(IBUtils.FormatIdentifierValue(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__ExtractIdentifier(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(IBUtils.ExtractIdentifier(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__QuoteIdentifier(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(IBUtils.QuoteIdentifier(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.__AddIBParamSQLForDetail(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(IBUtils.AddIBParamSQLForDetail(TParams(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1)),GetInputArg(2),VarToInteger(GetInputArg(3))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIBUtilsLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('Max',2,tkInteger,nil,__Max,false,0,'n1: Integer; n2: Integer');
    DefineMethod('Min',2,tkInteger,nil,__Min,false,0,'n1: Integer; n2: Integer');
    DefineMethod('RandomString',1,tkVariant,nil,__RandomString,false,0,'iLength: Integer');
    DefineMethod('RandomInteger',2,tkInteger,nil,__RandomInteger,false,0,'iLow: Integer; iHigh: Integer');
    DefineMethod('StripString',2,tkVariant,nil,__StripString,false,0,'st: String; CharsToStrip: String');
    DefineMethod('FormatIdentifier',2,tkVariant,nil,__FormatIdentifier,false,0,'Dialect: Integer; Value: String');
    DefineMethod('FormatIdentifierValue',2,tkVariant,nil,__FormatIdentifierValue,false,0,'Dialect: Integer; Value: String');
    DefineMethod('ExtractIdentifier',2,tkVariant,nil,__ExtractIdentifier,false,0,'Dialect: Integer; Value: String');
    DefineMethod('QuoteIdentifier',2,tkVariant,nil,__QuoteIdentifier,false,0,'Dialect: Integer; Value: String');
    DefineMethod('AddIBParamSQLForDetail',4,tkVariant,nil,__AddIBParamSQLForDetail,false,0,'Params: TParams; SQL: string; Native: Boolean; Dialect: Integer');
    AddConstant('CRLF',CRLF);
    AddConstant('CR',CR);
    AddConstant('LF',LF);
    AddConstant('TAB',TAB);
    AddConstant('NULL_TERMINATOR',NULL_TERMINATOR);
  end;
end;

class function TatIBUtilsLibrary.LibraryName: string;
begin
  result := 'IBUtils';
end;

initialization
  RegisterScripterLibrary(TatIBUtilsLibrary, True);

{$WARNINGS ON}

end.

