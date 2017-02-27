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
//unit ap_ObjComAuto;

interface

uses
  Windows,
  ActiveX,
  TypInfo,
  ObjComAuto,
  Variants,
  ap_System,
  atScript;

{$WARNINGS OFF}

type
  TatObjComAutoLibrary = class(TatScripterLibrary)
    procedure __TObjectDispatchGetTypeInfo(AMachine: TatVirtualMachine);
    procedure __TObjectDispatchGetTypeInfoCount(AMachine: TatVirtualMachine);
    procedure __TObjectDispatchCreate(AMachine: TatVirtualMachine);
    procedure __TObjectDispatchDestroy(AMachine: TatVirtualMachine);
    procedure __ReleaseMethodPointer(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TObjectDispatchClass = class of TObjectDispatch;



implementation



procedure TatObjComAutoLibrary.__TObjectDispatchGetTypeInfo(AMachine: TatVirtualMachine);
  var
  Param2: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := GetInputArg(2);
AResult := Integer(TObjectDispatch(CurrentObject).GetTypeInfo(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),Param2));
    ReturnOutputArg(AResult);
    SetInputArg(2,Param2);
  end;
end;

procedure TatObjComAutoLibrary.__TObjectDispatchGetTypeInfoCount(AMachine: TatVirtualMachine);
  var
  Param0: Integer;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := VarToInteger(GetInputArg(0));
AResult := Integer(TObjectDispatch(CurrentObject).GetTypeInfoCount(Param0));
    ReturnOutputArg(AResult);
    SetInputArg(0,Integer(Param0));
  end;
end;

procedure TatObjComAutoLibrary.__TObjectDispatchCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := ObjectToVar(TObjectDispatchClass(CurrentClass.ClassRef).Create(TObject(VarToObject(GetInputArg(0)))));
2: AResult := ObjectToVar(TObjectDispatchClass(CurrentClass.ClassRef).Create(TObject(VarToObject(GetInputArg(0))),GetInputArg(1)));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatObjComAutoLibrary.__TObjectDispatchDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TObjectDispatch(CurrentObject).Destroy;
  end;
end;

procedure TatObjComAutoLibrary.__ReleaseMethodPointer(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ObjComAuto.ReleaseMethodPointer(TMethodWrapper(integer(GetInputArg(0))).ObjToRec);
  end;
end;

procedure TatObjComAutoLibrary.Init;
begin
  With Scripter.DefineClass(TObjectDispatch) do
  begin
    DefineMethod('GetTypeInfo',3,tkInteger,nil,__TObjectDispatchGetTypeInfo,false,0,'Index: Integer; LocaleID: Integer; TypeInfo').SetVarArgs([2]);
    DefineMethod('GetTypeInfoCount',1,tkInteger,nil,__TObjectDispatchGetTypeInfoCount,false,0,'Count: Integer').SetVarArgs([0]);
    DefineMethod('Create',2,tkClass,TObjectDispatch,__TObjectDispatchCreate,true,1,'Instance: TObject; Owned: Boolean = True');
    DefineMethod('Destroy',0,tkNone,nil,__TObjectDispatchDestroy,false,0,'');
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('ReleaseMethodPointer',1,tkNone,nil,__ReleaseMethodPointer,false,0,'MethodPointer: TMethod');
  end;
end;

class function TatObjComAutoLibrary.LibraryName: string;
begin
  result := 'ObjComAuto';
end;

initialization
  RegisterScripterLibrary(TatObjComAutoLibrary, True);

{$WARNINGS ON}

end.

