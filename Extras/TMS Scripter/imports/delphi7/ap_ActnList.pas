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
//unit ap_ActnList;

interface

uses
  Classes,
  Messages,
  ImgList,
  Contnrs,
  ActnList,
  Variants,
  ap_Messages,
  atScript;

{$WARNINGS OFF}

type
  TatActnListLibrary = class(TatScripterLibrary)
    procedure __TContainedActionDestroy(AMachine: TatVirtualMachine);
    procedure __TContainedActionExecute(AMachine: TatVirtualMachine);
    procedure __TContainedActionGetParentComponent(AMachine: TatVirtualMachine);
    procedure __TContainedActionHasParent(AMachine: TatVirtualMachine);
    procedure __TContainedActionUpdate(AMachine: TatVirtualMachine);
    procedure __GetTContainedActionActionList(AMachine: TatVirtualMachine);
    procedure __SetTContainedActionActionList(AMachine: TatVirtualMachine);
    procedure __GetTContainedActionIndex(AMachine: TatVirtualMachine);
    procedure __SetTContainedActionIndex(AMachine: TatVirtualMachine);
    procedure __TCustomActionListCreate(AMachine: TatVirtualMachine);
    procedure __TCustomActionListDestroy(AMachine: TatVirtualMachine);
    procedure __TCustomActionListExecuteAction(AMachine: TatVirtualMachine);
    procedure __TCustomActionListIsShortCut(AMachine: TatVirtualMachine);
    procedure __TCustomActionListUpdateAction(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionListActions(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionListActions(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionListActionCount(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionListImages(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionListImages(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionListState(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionListState(AMachine: TatVirtualMachine);
    procedure __TShortCutListAdd(AMachine: TatVirtualMachine);
    procedure __TShortCutListIndexOfShortCut(AMachine: TatVirtualMachine);
    procedure __GetTShortCutListShortCuts(AMachine: TatVirtualMachine);
    procedure __TCustomActionCreate(AMachine: TatVirtualMachine);
    procedure __TCustomActionDestroy(AMachine: TatVirtualMachine);
    procedure __TCustomActionDoHint(AMachine: TatVirtualMachine);
    procedure __TCustomActionExecute(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionAutoCheck(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionAutoCheck(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionCaption(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionCaption(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionChecked(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionChecked(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionDisableIfNoHandler(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionDisableIfNoHandler(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionEnabled(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionEnabled(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionGroupIndex(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionGroupIndex(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionHelpContext(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionHelpContext(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionHelpKeyword(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionHelpKeyword(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionHelpType(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionHelpType(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionHint(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionHint(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionImageIndex(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionImageIndex(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionShortCut(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionShortCut(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionSecondaryShortCuts(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionSecondaryShortCuts(AMachine: TatVirtualMachine);
    procedure __GetTCustomActionVisible(AMachine: TatVirtualMachine);
    procedure __SetTCustomActionVisible(AMachine: TatVirtualMachine);
    procedure __TActionCreate(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TContainedActionClass = class of TContainedAction;
  TCustomActionListClass = class of TCustomActionList;
  TActionListClass = class of TActionList;
  TShortCutListClass = class of TShortCutList;
  TCustomActionClass = class of TCustomAction;
  TActionClass = class of TAction;
  TActionLinkClass = class of TActionLink;

  TatActnListDispatcher = class(TatEventDispatcher)
  private
    procedure __TActionEvent( Action: TBasicAction; var Handled: Boolean);
    procedure __THintEvent(var HintStr: string; var CanShow: Boolean);
  end;


implementation



procedure TatActnListLibrary.__TContainedActionDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TContainedAction(CurrentObject).Destroy;
  end;
end;

procedure TatActnListLibrary.__TContainedActionExecute(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TContainedAction(CurrentObject).Execute;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__TContainedActionGetParentComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TContainedAction(CurrentObject).GetParentComponent);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__TContainedActionHasParent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TContainedAction(CurrentObject).HasParent;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__TContainedActionUpdate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TContainedAction(CurrentObject).Update;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__GetTContainedActionActionList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TContainedAction(CurrentObject).ActionList));
  end;
end;

procedure TatActnListLibrary.__SetTContainedActionActionList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TContainedAction(CurrentObject).ActionList:=TCustomActionList(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__GetTContainedActionIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TContainedAction(CurrentObject).Index));
  end;
end;

procedure TatActnListLibrary.__SetTContainedActionIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TContainedAction(CurrentObject).Index:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatActnListLibrary.__TCustomActionListCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCustomActionListClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__TCustomActionListDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomActionList(CurrentObject).Destroy;
  end;
end;

procedure TatActnListLibrary.__TCustomActionListExecuteAction(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TCustomActionList(CurrentObject).ExecuteAction(TBasicAction(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__TCustomActionListIsShortCut(AMachine: TatVirtualMachine);
  var
  Param0Rec: TObject;
  Param0: TWMKey;
  AResult: variant;
begin
  with AMachine do
  begin
Param0Rec := TObject(integer(GetInputArg(0)));
if not Assigned(Param0Rec) or not (Param0Rec is TWMKeyWrapper) then 
  Param0Rec := TWMKeyWrapper.Create(Param0);
Param0 := TWMKeyWrapper(Param0Rec).ObjToRec;
AResult := TCustomActionList(CurrentObject).IsShortCut(Param0);
    ReturnOutputArg(AResult);
    SetInputArg(0,integer(TWMKeyWrapper.Create(Param0)));
  end;
end;

procedure TatActnListLibrary.__TCustomActionListUpdateAction(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TCustomActionList(CurrentObject).UpdateAction(TBasicAction(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionListActions(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCustomActionList(CurrentObject).Actions[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionListActions(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomActionList(CurrentObject).Actions[VarToInteger(GetArrayIndex(0))]:=TContainedAction(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionListActionCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomActionList(CurrentObject).ActionCount));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionListImages(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCustomActionList(CurrentObject).Images));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionListImages(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomActionList(CurrentObject).Images:=TCustomImageList(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionListState(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomActionList(CurrentObject).State));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionListState(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomActionList(CurrentObject).State:=TActionListState(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__TShortCutListAdd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TShortCutList(CurrentObject).Add(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__TShortCutListIndexOfShortCut(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TShortCutList(CurrentObject).IndexOfShortCut(TShortCut(VarToInteger(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__GetTShortCutListShortCuts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TShortCutList(CurrentObject).ShortCuts[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatActnListLibrary.__TCustomActionCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCustomActionClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__TCustomActionDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).Destroy;
  end;
end;

procedure TatActnListLibrary.__TCustomActionDoHint(AMachine: TatVirtualMachine);
  var
  Param0: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
AResult := TCustomAction(CurrentObject).DoHint(Param0);
    ReturnOutputArg(AResult);
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatActnListLibrary.__TCustomActionExecute(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TCustomAction(CurrentObject).Execute;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionAutoCheck(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TCustomAction(CurrentObject).AutoCheck);
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionAutoCheck(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).AutoCheck:=GetInputArg(0);
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionCaption(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TCustomAction(CurrentObject).Caption));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionCaption(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).Caption:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionChecked(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TCustomAction(CurrentObject).Checked);
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionChecked(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).Checked:=GetInputArg(0);
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionDisableIfNoHandler(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TCustomAction(CurrentObject).DisableIfNoHandler);
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionDisableIfNoHandler(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).DisableIfNoHandler:=GetInputArg(0);
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionEnabled(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TCustomAction(CurrentObject).Enabled);
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionEnabled(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).Enabled:=GetInputArg(0);
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionGroupIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomAction(CurrentObject).GroupIndex));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionGroupIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).GroupIndex:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionHelpContext(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomAction(CurrentObject).HelpContext));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionHelpContext(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).HelpContext:=THelpContext(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionHelpKeyword(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TCustomAction(CurrentObject).HelpKeyword));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionHelpKeyword(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).HelpKeyword:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionHelpType(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomAction(CurrentObject).HelpType));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionHelpType(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).HelpType:=THelpType(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionHint(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TCustomAction(CurrentObject).Hint));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionHint(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).Hint:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionImageIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomAction(CurrentObject).ImageIndex));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionImageIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).ImageIndex:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionShortCut(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCustomAction(CurrentObject).ShortCut));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionShortCut(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).ShortCut:=TShortCut(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionSecondaryShortCuts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCustomAction(CurrentObject).SecondaryShortCuts));
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionSecondaryShortCuts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).SecondaryShortCuts:=TShortCutList(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatActnListLibrary.__GetTCustomActionVisible(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TCustomAction(CurrentObject).Visible);
  end;
end;

procedure TatActnListLibrary.__SetTCustomActionVisible(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomAction(CurrentObject).Visible:=GetInputArg(0);
  end;
end;

procedure TatActnListLibrary.__TActionCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TActionClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatActnListDispatcher.__TActionEvent( Action: TBasicAction; var Handled: Boolean);
var
  HandledTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TActionEvent(BeforeCall)(Action,Handled);
    HandledTemp := Handled;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Action,HandledTemp]);
    Handled := HandledTemp;
    if AssignedMethod(AfterCall) then
      TActionEvent(AfterCall)(Action,Handled);
  end;
end;

procedure TatActnListDispatcher.__THintEvent(var HintStr: string; var CanShow: Boolean);
var
  HintStrTemp: variant;
  CanShowTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      THintEvent(BeforeCall)(HintStr,CanShow);
    HintStrTemp := string(HintStr);
    CanShowTemp := CanShow;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [HintStrTemp,CanShowTemp]);
    HintStr := VarToStr(HintStrTemp);
    CanShow := CanShowTemp;
    if AssignedMethod(AfterCall) then
      THintEvent(AfterCall)(HintStr,CanShow);
  end;
end;

procedure TatActnListLibrary.Init;
begin
  With Scripter.DefineClass(TContainedAction) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TContainedActionDestroy,false,0,'');
    DefineMethod('Execute',0,tkVariant,nil,__TContainedActionExecute,false,0,'');
    DefineMethod('GetParentComponent',0,tkClass,TComponent,__TContainedActionGetParentComponent,false,0,'');
    DefineMethod('HasParent',0,tkVariant,nil,__TContainedActionHasParent,false,0,'');
    DefineMethod('Update',0,tkVariant,nil,__TContainedActionUpdate,false,0,'');
    DefineProp('ActionList',tkClass,__GetTContainedActionActionList,__SetTContainedActionActionList,TCustomActionList,false,0);
    DefineProp('Index',tkInteger,__GetTContainedActionIndex,__SetTContainedActionIndex,nil,false,0);
  end;
  With Scripter.DefineClass(TCustomActionList) do
  begin
    DefineMethod('Create',1,tkClass,TCustomActionList,__TCustomActionListCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TCustomActionListDestroy,false,0,'');
    DefineMethod('ExecuteAction',1,tkVariant,nil,__TCustomActionListExecuteAction,false,0,'Action: TBasicAction');
    DefineMethod('IsShortCut',1,tkVariant,nil,__TCustomActionListIsShortCut,false,0,'Message: TWMKey').SetVarArgs([0]);
    DefineMethod('UpdateAction',1,tkVariant,nil,__TCustomActionListUpdateAction,false,0,'Action: TBasicAction');
    DefaultProperty := DefineProp('Actions',tkClass,__GetTCustomActionListActions,__SetTCustomActionListActions,TContainedAction,false,1);
    DefineProp('ActionCount',tkInteger,__GetTCustomActionListActionCount,nil,nil,false,0);
    DefineProp('Images',tkClass,__GetTCustomActionListImages,__SetTCustomActionListImages,TCustomImageList,false,0);
    DefineProp('State',tkEnumeration,__GetTCustomActionListState,__SetTCustomActionListState,nil,false,0);
  end;
  With Scripter.DefineClass(TActionList) do
  begin
  end;
  With Scripter.DefineClass(TShortCutList) do
  begin
    DefineMethod('Add',1,tkInteger,nil,__TShortCutListAdd,false,0,'S: String');
    DefineMethod('IndexOfShortCut',1,tkInteger,nil,__TShortCutListIndexOfShortCut,false,0,'Shortcut: TShortCut');
    DefineProp('ShortCuts',tkEnumeration,__GetTShortCutListShortCuts,nil,nil,false,1);
  end;
  With Scripter.DefineClass(TCustomAction) do
  begin
    DefineMethod('Create',1,tkClass,TCustomAction,__TCustomActionCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TCustomActionDestroy,false,0,'');
    DefineMethod('DoHint',1,tkVariant,nil,__TCustomActionDoHint,false,0,'HintStr: string').SetVarArgs([0]);
    DefineMethod('Execute',0,tkVariant,nil,__TCustomActionExecute,false,0,'');
    DefineProp('AutoCheck',tkVariant,__GetTCustomActionAutoCheck,__SetTCustomActionAutoCheck,nil,false,0);
    DefineProp('Caption',tkVariant,__GetTCustomActionCaption,__SetTCustomActionCaption,nil,false,0);
    DefineProp('Checked',tkVariant,__GetTCustomActionChecked,__SetTCustomActionChecked,nil,false,0);
    DefineProp('DisableIfNoHandler',tkVariant,__GetTCustomActionDisableIfNoHandler,__SetTCustomActionDisableIfNoHandler,nil,false,0);
    DefineProp('Enabled',tkVariant,__GetTCustomActionEnabled,__SetTCustomActionEnabled,nil,false,0);
    DefineProp('GroupIndex',tkInteger,__GetTCustomActionGroupIndex,__SetTCustomActionGroupIndex,nil,false,0);
    DefineProp('HelpContext',tkEnumeration,__GetTCustomActionHelpContext,__SetTCustomActionHelpContext,nil,false,0);
    DefineProp('HelpKeyword',tkVariant,__GetTCustomActionHelpKeyword,__SetTCustomActionHelpKeyword,nil,false,0);
    DefineProp('HelpType',tkEnumeration,__GetTCustomActionHelpType,__SetTCustomActionHelpType,nil,false,0);
    DefineProp('Hint',tkVariant,__GetTCustomActionHint,__SetTCustomActionHint,nil,false,0);
    DefineProp('ImageIndex',tkInteger,__GetTCustomActionImageIndex,__SetTCustomActionImageIndex,nil,false,0);
    DefineProp('ShortCut',tkEnumeration,__GetTCustomActionShortCut,__SetTCustomActionShortCut,nil,false,0);
    DefineProp('SecondaryShortCuts',tkClass,__GetTCustomActionSecondaryShortCuts,__SetTCustomActionSecondaryShortCuts,TShortCutList,false,0);
    DefineProp('Visible',tkVariant,__GetTCustomActionVisible,__SetTCustomActionVisible,nil,false,0);
  end;
  With Scripter.DefineClass(TAction) do
  begin
    DefineMethod('Create',1,tkClass,TAction,__TActionCreate,true,0,'AOwner: TComponent');
  end;
  With Scripter.DefineClass(TActionLink) do
  begin
  end;
  DefineEventAdapter(TypeInfo(TActionEvent), TatActnListDispatcher, @TatActnListDispatcher.__TActionEvent);
  DefineEventAdapter(TypeInfo(THintEvent), TatActnListDispatcher, @TatActnListDispatcher.__THintEvent);
  With Scripter.DefineClass(ClassType) do
  begin
    AddConstant('asNormal',asNormal);
    AddConstant('asSuspended',asSuspended);
    AddConstant('asSuspendedEnabled',asSuspendedEnabled);
  end;
end;

class function TatActnListLibrary.LibraryName: string;
begin
  result := 'ActnList';
end;

initialization
  RegisterScripterLibrary(TatActnListLibrary, True);

{$WARNINGS ON}

end.

