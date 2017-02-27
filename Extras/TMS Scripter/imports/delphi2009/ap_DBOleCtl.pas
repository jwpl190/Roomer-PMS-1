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
//unit ap_DBOleCtl;

interface

uses
  Variants,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Controls,
  Forms,
  OleCtrls,
  DB,
  DBCtrls,
  ActiveX,
  DBOleCtl,
  atScript;

{$WARNINGS OFF}

type
  TatDBOleCtlLibrary = class(TatScripterLibrary)
    procedure __TDataBindItemCreate(AMachine: TatVirtualMachine);
    procedure __TDataBindItemDestroy(AMachine: TatVirtualMachine);
    procedure __TDataBindingsCreate(AMachine: TatVirtualMachine);
    procedure __TDataBindingsAdd(AMachine: TatVirtualMachine);
    procedure __TDataBindingsUpdate(AMachine: TatVirtualMachine);
    procedure __TDataBindingsGetItemByDispID(AMachine: TatVirtualMachine);
    procedure __TDataBindingsGetOwner(AMachine: TatVirtualMachine);
    procedure __GetTDataBindingsItems(AMachine: TatVirtualMachine);
    procedure __SetTDataBindingsItems(AMachine: TatVirtualMachine);
    procedure __TDBOleControlCreate(AMachine: TatVirtualMachine);
    procedure __TDBOleControlDestroy(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TDataBindItemClass = class of TDataBindItem;
  TDataBindingsClass = class of TDataBindings;
  TDBOleControlClass = class of TDBOleControl;



implementation



procedure TatDBOleCtlLibrary.__TDataBindItemCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDataBindItemClass(CurrentClass.ClassRef).Create(TCollection(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDBOleCtlLibrary.__TDataBindItemDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataBindItem(CurrentObject).Destroy;
  end;
end;

procedure TatDBOleCtlLibrary.__TDataBindingsCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDataBindingsClass(CurrentClass.ClassRef).Create(TDBOleControl(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDBOleCtlLibrary.__TDataBindingsAdd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDataBindings(CurrentObject).Add);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDBOleCtlLibrary.__TDataBindingsUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataBindings(CurrentObject).Update(TCollectionItem(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatDBOleCtlLibrary.__TDataBindingsGetItemByDispID(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDataBindings(CurrentObject).GetItemByDispID(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDBOleCtlLibrary.__TDataBindingsGetOwner(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDataBindings(CurrentObject).GetOwner);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDBOleCtlLibrary.__GetTDataBindingsItems(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TDataBindings(CurrentObject).Items[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatDBOleCtlLibrary.__SetTDataBindingsItems(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataBindings(CurrentObject).Items[VarToInteger(GetArrayIndex(0))]:=TDataBindItem(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatDBOleCtlLibrary.__TDBOleControlCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDBOleControlClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDBOleCtlLibrary.__TDBOleControlDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDBOleControl(CurrentObject).Destroy;
  end;
end;

procedure TatDBOleCtlLibrary.Init;
begin
  With Scripter.DefineClass(TDataBindItem) do
  begin
    DefineMethod('Create',1,tkClass,TDataBindItem,__TDataBindItemCreate,true,0,'Collection: TCollection');
    DefineMethod('Destroy',0,tkNone,nil,__TDataBindItemDestroy,false,0,'');
  end;
  With Scripter.DefineClass(TDataBindings) do
  begin
    DefineMethod('Create',1,tkClass,TDataBindings,__TDataBindingsCreate,true,0,'DBOleControl: TDBOleControl');
    DefineMethod('Add',0,tkClass,TDataBindItem,__TDataBindingsAdd,false,0,'');
    DefineMethod('Update',1,tkNone,nil,__TDataBindingsUpdate,false,0,'Item: TCollectionItem');
    DefineMethod('GetItemByDispID',1,tkClass,TDataBindItem,__TDataBindingsGetItemByDispID,false,0,'ADispID: TDispID');
    DefineMethod('GetOwner',0,tkClass,TPersistent,__TDataBindingsGetOwner,false,0,'');
    DefaultProperty := DefineProp('Items',tkClass,__GetTDataBindingsItems,__SetTDataBindingsItems,TDataBindItem,false,1);
  end;
  With Scripter.DefineClass(TDBOleControl) do
  begin
    DefineMethod('Create',1,tkClass,TDBOleControl,__TDBOleControlCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TDBOleControlDestroy,false,0,'');
  end;
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatDBOleCtlLibrary.LibraryName: string;
begin
  result := 'DBOleCtl';
end;

initialization
  RegisterScripterLibrary(TatDBOleCtlLibrary, True);

{$WARNINGS ON}

end.

