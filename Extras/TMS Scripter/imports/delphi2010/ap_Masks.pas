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
//unit ap_Masks;

interface

uses
  SysUtils,
  Masks,
  Variants,
  atScript;

{$WARNINGS OFF}

type
  TatMasksLibrary = class(TatScripterLibrary)
    procedure __TMaskCreate(AMachine: TatVirtualMachine);
    procedure __TMaskDestroy(AMachine: TatVirtualMachine);
    procedure __TMaskMatches(AMachine: TatVirtualMachine);
    procedure __MatchesMask(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  EMaskExceptionClass = class of EMaskException;
  TMaskClass = class of TMask;



implementation



procedure TatMasksLibrary.__TMaskCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TMaskClass(CurrentClass.ClassRef).Create(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMasksLibrary.__TMaskDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMask(CurrentObject).Destroy;
  end;
end;

procedure TatMasksLibrary.__TMaskMatches(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TMask(CurrentObject).Matches(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMasksLibrary.__MatchesMask(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Masks.MatchesMask(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatMasksLibrary.Init;
begin
  With Scripter.DefineClass(EMaskException) do
  begin
  end;
  With Scripter.DefineClass(TMask) do
  begin
    DefineMethod('Create',1,tkClass,TMask,__TMaskCreate,true,0,'MaskValue: string');
    DefineMethod('Destroy',0,tkNone,nil,__TMaskDestroy,false,0,'');
    DefineMethod('Matches',1,tkVariant,nil,__TMaskMatches,false,0,'Filename: string');
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('MatchesMask',2,tkVariant,nil,__MatchesMask,false,0,'Filename: string; Mask: string');
  end;
end;

class function TatMasksLibrary.LibraryName: string;
begin
  result := 'Masks';
end;

initialization
  RegisterScripterLibrary(TatMasksLibrary, True);

{$WARNINGS ON}

end.

