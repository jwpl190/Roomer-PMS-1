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
//unit ap_CustomizeDlg;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ActnList,
  CheckLst,
  ComCtrls,
  Menus,
  ExtCtrls,
  ImgList,
  Buttons,
  ActnMan,
  ActnCtrls,
  ActnMenus,
  CustomizeDlg,
  ap_Types,
  atScript;

{$WARNINGS OFF}

type
  TatCustomizeDlgLibrary = class(TatScripterLibrary)
    procedure __TCustomizeFrmCatListClick(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmActionsListStartDrag(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmActionsListDrawItem(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmFormClose(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmCloseBtnClick(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmCatListStartDrag(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmActionBarListClickCheck(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmActionsListMeasureItem(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmFormCreate(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmActionsListClick(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmMenuAnimationStylesChange(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmResetActnUpdate(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmResetActnExecute(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmResetUsageDataActnExecute(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmRecentlyUsedActnExecute(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmShowHintsActnExecute(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmShowHintsActnUpdate(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmShowShortCutsInTipsActnExecute(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmRecentlyUsedActnUpdate(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmActionBarListClick(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmActionsListData(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmLargeIconsActnExecute(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmListComboSelect(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmCaptionOptionsComboChange(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmFormResize(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmLargeIconsActnUpdate(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmSeparatorBtnStartDrag(AMachine: TatVirtualMachine);
    procedure __TCustomizeFrmApplyToAllActnUpdate(AMachine: TatVirtualMachine);
    procedure __GetTCustomizeFrmActionManager(AMachine: TatVirtualMachine);
    procedure __SetTCustomizeFrmActionManager(AMachine: TatVirtualMachine);
    procedure __GetTCustomizeFrmActiveActionList(AMachine: TatVirtualMachine);
    procedure __SetTCustomizeFrmActiveActionList(AMachine: TatVirtualMachine);
    procedure __TCustomizeDlgShow(AMachine: TatVirtualMachine);
    procedure __GetTCustomizeDlgCustomizeForm(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TCustomizeFrmClass = class of TCustomizeFrm;
  TCustomizeDlgClass = class of TCustomizeDlg;



implementation



procedure TatCustomizeDlgLibrary.__TCustomizeFrmCatListClick(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).CatListClick(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmActionsListStartDrag(AMachine: TatVirtualMachine);
  var
  Param1: TDragObject;
begin
  with AMachine do
  begin
Param1 := TDragObject(VarToObject(GetInputArg(1)));
    TCustomizeFrm(CurrentObject).ActionsListStartDrag(TObject(VarToObject(GetInputArg(0))),Param1);
    SetInputArg(1,ObjectToVar(Param1));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmActionsListDrawItem(AMachine: TatVirtualMachine);
  var
  Param3: TOwnerDrawState;
begin
  with AMachine do
  begin
IntToSet(Param3, VarToInteger(GetInputArg(3)), SizeOf(Param3));
    TCustomizeFrm(CurrentObject).ActionsListDrawItem(TWinControl(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1)),TRectWrapper(integer(GetInputArg(2))).ObjToRec,Param3);
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmFormClose(AMachine: TatVirtualMachine);
  var
  Param1: TCloseAction;
begin
  with AMachine do
  begin
Param1 := TCloseAction(VarToInteger(GetInputArg(1)));
    TCustomizeFrm(CurrentObject).FormClose(TObject(VarToObject(GetInputArg(0))),Param1);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmCloseBtnClick(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).CloseBtnClick(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmCatListStartDrag(AMachine: TatVirtualMachine);
  var
  Param1: TDragObject;
begin
  with AMachine do
  begin
Param1 := TDragObject(VarToObject(GetInputArg(1)));
    TCustomizeFrm(CurrentObject).CatListStartDrag(TObject(VarToObject(GetInputArg(0))),Param1);
    SetInputArg(1,ObjectToVar(Param1));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmActionBarListClickCheck(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ActionBarListClickCheck(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmActionsListMeasureItem(AMachine: TatVirtualMachine);
  var
  Param2: Integer;
begin
  with AMachine do
  begin
Param2 := VarToInteger(GetInputArg(2));
    TCustomizeFrm(CurrentObject).ActionsListMeasureItem(TWinControl(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1)),Param2);
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmFormCreate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).FormCreate(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmActionsListClick(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ActionsListClick(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmMenuAnimationStylesChange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).MenuAnimationStylesChange(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmResetActnUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ResetActnUpdate(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmResetActnExecute(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ResetActnExecute(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmResetUsageDataActnExecute(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ResetUsageDataActnExecute(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmRecentlyUsedActnExecute(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).RecentlyUsedActnExecute(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmShowHintsActnExecute(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ShowHintsActnExecute(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmShowHintsActnUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ShowHintsActnUpdate(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmShowShortCutsInTipsActnExecute(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ShowShortCutsInTipsActnExecute(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmRecentlyUsedActnUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).RecentlyUsedActnUpdate(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmActionBarListClick(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ActionBarListClick(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmActionsListData(AMachine: TatVirtualMachine);
  var
  Param2: string;
begin
  with AMachine do
  begin
Param2 := VarToStr(GetInputArg(2));
    TCustomizeFrm(CurrentObject).ActionsListData(TWinControl(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1)),Param2);
    SetInputArg(2,string(Param2));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmLargeIconsActnExecute(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).LargeIconsActnExecute(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmListComboSelect(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ListComboSelect(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmCaptionOptionsComboChange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).CaptionOptionsComboChange(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmFormResize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).FormResize(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmLargeIconsActnUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).LargeIconsActnUpdate(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmSeparatorBtnStartDrag(AMachine: TatVirtualMachine);
  var
  Param1: TDragObject;
begin
  with AMachine do
  begin
Param1 := TDragObject(VarToObject(GetInputArg(1)));
    TCustomizeFrm(CurrentObject).SeparatorBtnStartDrag(TObject(VarToObject(GetInputArg(0))),Param1);
    SetInputArg(1,ObjectToVar(Param1));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeFrmApplyToAllActnUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ApplyToAllActnUpdate(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatCustomizeDlgLibrary.__GetTCustomizeFrmActionManager(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCustomizeFrm(CurrentObject).ActionManager));
  end;
end;

procedure TatCustomizeDlgLibrary.__SetTCustomizeFrmActionManager(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ActionManager:=TCustomActionManager(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatCustomizeDlgLibrary.__GetTCustomizeFrmActiveActionList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCustomizeFrm(CurrentObject).ActiveActionList));
  end;
end;

procedure TatCustomizeDlgLibrary.__SetTCustomizeFrmActiveActionList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeFrm(CurrentObject).ActiveActionList:=TCustomActionList(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatCustomizeDlgLibrary.__TCustomizeDlgShow(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomizeDlg(CurrentObject).Show;
  end;
end;

procedure TatCustomizeDlgLibrary.__GetTCustomizeDlgCustomizeForm(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCustomizeDlg(CurrentObject).CustomizeForm));
  end;
end;

procedure TatCustomizeDlgLibrary.Init;
begin
  With Scripter.DefineClass(TCustomizeFrm) do
  begin
    DefineMethod('CatListClick',1,tkNone,nil,__TCustomizeFrmCatListClick,false,0,'Sender: TObject');
    DefineMethod('ActionsListStartDrag',2,tkNone,nil,__TCustomizeFrmActionsListStartDrag,false,0,'Sender: TObject; DragObject: TDragObject').SetVarArgs([1]);
    DefineMethod('ActionsListDrawItem',4,tkNone,nil,__TCustomizeFrmActionsListDrawItem,false,0,'Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState');
    DefineMethod('FormClose',2,tkNone,nil,__TCustomizeFrmFormClose,false,0,'Sender: TObject; Action: TCloseAction').SetVarArgs([1]);
    DefineMethod('CloseBtnClick',1,tkNone,nil,__TCustomizeFrmCloseBtnClick,false,0,'Sender: TObject');
    DefineMethod('CatListStartDrag',2,tkNone,nil,__TCustomizeFrmCatListStartDrag,false,0,'Sender: TObject; DragObject: TDragObject').SetVarArgs([1]);
    DefineMethod('ActionBarListClickCheck',1,tkNone,nil,__TCustomizeFrmActionBarListClickCheck,false,0,'Sender: TObject');
    DefineMethod('ActionsListMeasureItem',3,tkNone,nil,__TCustomizeFrmActionsListMeasureItem,false,0,'Control: TWinControl; Index: Integer; Height: Integer').SetVarArgs([2]);
    DefineMethod('FormCreate',1,tkNone,nil,__TCustomizeFrmFormCreate,false,0,'Sender: TObject');
    DefineMethod('ActionsListClick',1,tkNone,nil,__TCustomizeFrmActionsListClick,false,0,'Sender: TObject');
    DefineMethod('MenuAnimationStylesChange',1,tkNone,nil,__TCustomizeFrmMenuAnimationStylesChange,false,0,'Sender: TObject');
    DefineMethod('ResetActnUpdate',1,tkNone,nil,__TCustomizeFrmResetActnUpdate,false,0,'Sender: TObject');
    DefineMethod('ResetActnExecute',1,tkNone,nil,__TCustomizeFrmResetActnExecute,false,0,'Sender: TObject');
    DefineMethod('ResetUsageDataActnExecute',1,tkNone,nil,__TCustomizeFrmResetUsageDataActnExecute,false,0,'Sender: TObject');
    DefineMethod('RecentlyUsedActnExecute',1,tkNone,nil,__TCustomizeFrmRecentlyUsedActnExecute,false,0,'Sender: TObject');
    DefineMethod('ShowHintsActnExecute',1,tkNone,nil,__TCustomizeFrmShowHintsActnExecute,false,0,'Sender: TObject');
    DefineMethod('ShowHintsActnUpdate',1,tkNone,nil,__TCustomizeFrmShowHintsActnUpdate,false,0,'Sender: TObject');
    DefineMethod('ShowShortCutsInTipsActnExecute',1,tkNone,nil,__TCustomizeFrmShowShortCutsInTipsActnExecute,false,0,'Sender: TObject');
    DefineMethod('RecentlyUsedActnUpdate',1,tkNone,nil,__TCustomizeFrmRecentlyUsedActnUpdate,false,0,'Sender: TObject');
    DefineMethod('ActionBarListClick',1,tkNone,nil,__TCustomizeFrmActionBarListClick,false,0,'Sender: TObject');
    DefineMethod('ActionsListData',3,tkNone,nil,__TCustomizeFrmActionsListData,false,0,'Control: TWinControl; Index: Integer; Data: string').SetVarArgs([2]);
    DefineMethod('LargeIconsActnExecute',1,tkNone,nil,__TCustomizeFrmLargeIconsActnExecute,false,0,'Sender: TObject');
    DefineMethod('ListComboSelect',1,tkNone,nil,__TCustomizeFrmListComboSelect,false,0,'Sender: TObject');
    DefineMethod('CaptionOptionsComboChange',1,tkNone,nil,__TCustomizeFrmCaptionOptionsComboChange,false,0,'Sender: TObject');
    DefineMethod('FormResize',1,tkNone,nil,__TCustomizeFrmFormResize,false,0,'Sender: TObject');
    DefineMethod('LargeIconsActnUpdate',1,tkNone,nil,__TCustomizeFrmLargeIconsActnUpdate,false,0,'Sender: TObject');
    DefineMethod('SeparatorBtnStartDrag',2,tkNone,nil,__TCustomizeFrmSeparatorBtnStartDrag,false,0,'Sender: TObject; DragObject: TDragObject').SetVarArgs([1]);
    DefineMethod('ApplyToAllActnUpdate',1,tkNone,nil,__TCustomizeFrmApplyToAllActnUpdate,false,0,'Sender: TObject');
    DefineProp('ActionManager',tkClass,__GetTCustomizeFrmActionManager,__SetTCustomizeFrmActionManager,TCustomActionManager,false,0);
    DefineProp('ActiveActionList',tkClass,__GetTCustomizeFrmActiveActionList,__SetTCustomizeFrmActiveActionList,TCustomActionList,false,0);
  end;
  With Scripter.DefineClass(TCustomizeDlg) do
  begin
    DefineMethod('Show',0,tkNone,nil,__TCustomizeDlgShow,false,0,'');
    DefineProp('CustomizeForm',tkClass,__GetTCustomizeDlgCustomizeForm,nil,TCustomizeFrm,false,0);
  end;
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatCustomizeDlgLibrary.LibraryName: string;
begin
  result := 'CustomizeDlg';
end;

initialization
  RegisterScripterLibrary(TatCustomizeDlgLibrary, True);

{$WARNINGS ON}

end.

