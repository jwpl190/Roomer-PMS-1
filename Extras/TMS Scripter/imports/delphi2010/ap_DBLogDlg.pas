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
//unit ap_DBLogDlg;

interface

uses
  SysUtils,
  Windows,
  Messages,
  Classes,
  Graphics,
  Controls,
  Forms,
  StdCtrls,
  ExtCtrls,
  DB,
  DBLogDlg,
  Variants,
  atScript;

{$WARNINGS OFF}

type
  TatDBLogDlgLibrary = class(TatScripterLibrary)
    procedure __TLoginDialogFormShow(AMachine: TatVirtualMachine);
    procedure __LoginDialog(AMachine: TatVirtualMachine);
    procedure __LoginDialogEx(AMachine: TatVirtualMachine);
    procedure __RemoteLoginDialog(AMachine: TatVirtualMachine);
    procedure __SetCursorType(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TLoginDialogClass = class of TLoginDialog;



implementation



procedure TatDBLogDlgLibrary.__TLoginDialogFormShow(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TLoginDialog(CurrentObject).FormShow(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatDBLogDlgLibrary.__LoginDialog(AMachine: TatVirtualMachine);
  var
  Param1: string;
  Param2: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1));
Param2 := VarToStr(GetInputArg(2));
AResult := DBLogDlg.LoginDialog(VarToStr(GetInputArg(0)),Param1,Param2);
    ReturnOutputArg(AResult);
    SetInputArg(1,string(Param1));
    SetInputArg(2,string(Param2));
  end;
end;

procedure TatDBLogDlgLibrary.__LoginDialogEx(AMachine: TatVirtualMachine);
  var
  Param1: string;
  Param2: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1));
Param2 := VarToStr(GetInputArg(2));
AResult := DBLogDlg.LoginDialogEx(VarToStr(GetInputArg(0)),Param1,Param2,GetInputArg(3));
    ReturnOutputArg(AResult);
    SetInputArg(1,string(Param1));
    SetInputArg(2,string(Param2));
  end;
end;

procedure TatDBLogDlgLibrary.__RemoteLoginDialog(AMachine: TatVirtualMachine);
  var
  Param0: string;
  Param1: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
Param1 := VarToStr(GetInputArg(1));
AResult := DBLogDlg.RemoteLoginDialog(Param0,Param1);
    ReturnOutputArg(AResult);
    SetInputArg(0,string(Param0));
    SetInputArg(1,string(Param1));
  end;
end;

procedure TatDBLogDlgLibrary.__SetCursorType(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    DBLogDlg.SetCursorType(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatDBLogDlgLibrary.Init;
begin
  With Scripter.DefineClass(TLoginDialog) do
  begin
    DefineMethod('FormShow',1,tkNone,nil,__TLoginDialogFormShow,false,0,'Sender: TObject');
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('LoginDialog',3,tkVariant,nil,__LoginDialog,false,0,'ADatabaseName: string; AUserName: string; APassword: string').SetVarArgs([1,2]);
    DefineMethod('LoginDialogEx',4,tkVariant,nil,__LoginDialogEx,false,0,'ADatabaseName: string; AUserName: string; APassword: string; NameReadOnly: Boolean').SetVarArgs([1,2]);
    DefineMethod('RemoteLoginDialog',2,tkVariant,nil,__RemoteLoginDialog,false,0,'AUserName: string; APassword: string').SetVarArgs([0,1]);
    DefineMethod('SetCursorType',1,tkNone,nil,__SetCursorType,false,0,'CurIndex: Integer');
  end;
end;

class function TatDBLogDlgLibrary.LibraryName: string;
begin
  result := 'DBLogDlg';
end;

initialization
  RegisterScripterLibrary(TatDBLogDlgLibrary, True);

{$WARNINGS ON}

end.

