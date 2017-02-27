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
//unit ap_FileCtrl;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Controls,
  Graphics,
  Forms,
  Menus,
  StdCtrls,
  Buttons,
  FileCtrl,
  Variants,
  atScript;

{$WARNINGS OFF}

type
  TatFileCtrlLibrary = class(TatScripterLibrary)
    procedure __TFileListBoxCreate(AMachine: TatVirtualMachine);
    procedure __TFileListBoxDestroy(AMachine: TatVirtualMachine);
    procedure __TFileListBoxUpdate(AMachine: TatVirtualMachine);
    procedure __TFileListBoxApplyFilePath(AMachine: TatVirtualMachine);
    procedure __GetTFileListBoxDrive(AMachine: TatVirtualMachine);
    procedure __SetTFileListBoxDrive(AMachine: TatVirtualMachine);
    procedure __GetTFileListBoxDirectory(AMachine: TatVirtualMachine);
    procedure __SetTFileListBoxDirectory(AMachine: TatVirtualMachine);
    procedure __GetTFileListBoxFileName(AMachine: TatVirtualMachine);
    procedure __SetTFileListBoxFileName(AMachine: TatVirtualMachine);
    procedure __TDirectoryListBoxCreate(AMachine: TatVirtualMachine);
    procedure __TDirectoryListBoxDestroy(AMachine: TatVirtualMachine);
    procedure __TDirectoryListBoxDisplayCase(AMachine: TatVirtualMachine);
    procedure __TDirectoryListBoxFileCompareText(AMachine: TatVirtualMachine);
    procedure __TDirectoryListBoxGetItemPath(AMachine: TatVirtualMachine);
    procedure __TDirectoryListBoxOpenCurrent(AMachine: TatVirtualMachine);
    procedure __TDirectoryListBoxUpdate(AMachine: TatVirtualMachine);
    procedure __GetTDirectoryListBoxDrive(AMachine: TatVirtualMachine);
    procedure __SetTDirectoryListBoxDrive(AMachine: TatVirtualMachine);
    procedure __GetTDirectoryListBoxDirectory(AMachine: TatVirtualMachine);
    procedure __SetTDirectoryListBoxDirectory(AMachine: TatVirtualMachine);
    procedure __GetTDirectoryListBoxPreserveCase(AMachine: TatVirtualMachine);
    procedure __GetTDirectoryListBoxCaseSensitive(AMachine: TatVirtualMachine);
    procedure __TDriveComboBoxCreate(AMachine: TatVirtualMachine);
    procedure __TDriveComboBoxDestroy(AMachine: TatVirtualMachine);
    procedure __GetTDriveComboBoxDrive(AMachine: TatVirtualMachine);
    procedure __SetTDriveComboBoxDrive(AMachine: TatVirtualMachine);
    procedure __TFilterComboBoxCreate(AMachine: TatVirtualMachine);
    procedure __TFilterComboBoxDestroy(AMachine: TatVirtualMachine);
    procedure __GetTFilterComboBoxMask(AMachine: TatVirtualMachine);
    procedure __ProcessPath(AMachine: TatVirtualMachine);
    procedure __MinimizeName(AMachine: TatVirtualMachine);
    procedure __SelectDirectory(AMachine: TatVirtualMachine);
    procedure __DirectoryExists(AMachine: TatVirtualMachine);
    procedure __ForceDirectories(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TFileListBoxClass = class of TFileListBox;
  TDirectoryListBoxClass = class of TDirectoryListBox;
  TDriveComboBoxClass = class of TDriveComboBox;
  TFilterComboBoxClass = class of TFilterComboBox;



implementation



procedure TatFileCtrlLibrary.__TFileListBoxCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TFileListBoxClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__TFileListBoxDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFileListBox(CurrentObject).Destroy;
  end;
end;

procedure TatFileCtrlLibrary.__TFileListBoxUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFileListBox(CurrentObject).Update;
  end;
end;

procedure TatFileCtrlLibrary.__TFileListBoxApplyFilePath(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFileListBox(CurrentObject).ApplyFilePath(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatFileCtrlLibrary.__GetTFileListBoxDrive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TFileListBox(CurrentObject).Drive);
  end;
end;

procedure TatFileCtrlLibrary.__SetTFileListBoxDrive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFileListBox(CurrentObject).Drive:=VarToStr(GetInputArg(0))[1];
  end;
end;

procedure TatFileCtrlLibrary.__GetTFileListBoxDirectory(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TFileListBox(CurrentObject).Directory));
  end;
end;

procedure TatFileCtrlLibrary.__SetTFileListBoxDirectory(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFileListBox(CurrentObject).Directory:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatFileCtrlLibrary.__GetTFileListBoxFileName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TFileListBox(CurrentObject).FileName));
  end;
end;

procedure TatFileCtrlLibrary.__SetTFileListBoxFileName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFileListBox(CurrentObject).FileName:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatFileCtrlLibrary.__TDirectoryListBoxCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDirectoryListBoxClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__TDirectoryListBoxDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDirectoryListBox(CurrentObject).Destroy;
  end;
end;

procedure TatFileCtrlLibrary.__TDirectoryListBoxDisplayCase(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TDirectoryListBox(CurrentObject).DisplayCase(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__TDirectoryListBoxFileCompareText(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TDirectoryListBox(CurrentObject).FileCompareText(VarToStr(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__TDirectoryListBoxGetItemPath(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TDirectoryListBox(CurrentObject).GetItemPath(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__TDirectoryListBoxOpenCurrent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDirectoryListBox(CurrentObject).OpenCurrent;
  end;
end;

procedure TatFileCtrlLibrary.__TDirectoryListBoxUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDirectoryListBox(CurrentObject).Update;
  end;
end;

procedure TatFileCtrlLibrary.__GetTDirectoryListBoxDrive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TDirectoryListBox(CurrentObject).Drive);
  end;
end;

procedure TatFileCtrlLibrary.__SetTDirectoryListBoxDrive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDirectoryListBox(CurrentObject).Drive:=VarToStr(GetInputArg(0))[1];
  end;
end;

procedure TatFileCtrlLibrary.__GetTDirectoryListBoxDirectory(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TDirectoryListBox(CurrentObject).Directory));
  end;
end;

procedure TatFileCtrlLibrary.__SetTDirectoryListBoxDirectory(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDirectoryListBox(CurrentObject).Directory:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatFileCtrlLibrary.__GetTDirectoryListBoxPreserveCase(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TDirectoryListBox(CurrentObject).PreserveCase);
  end;
end;

procedure TatFileCtrlLibrary.__GetTDirectoryListBoxCaseSensitive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TDirectoryListBox(CurrentObject).CaseSensitive);
  end;
end;

procedure TatFileCtrlLibrary.__TDriveComboBoxCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDriveComboBoxClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__TDriveComboBoxDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDriveComboBox(CurrentObject).Destroy;
  end;
end;

procedure TatFileCtrlLibrary.__GetTDriveComboBoxDrive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TDriveComboBox(CurrentObject).Drive);
  end;
end;

procedure TatFileCtrlLibrary.__SetTDriveComboBoxDrive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDriveComboBox(CurrentObject).Drive:=VarToStr(GetInputArg(0))[1];
  end;
end;

procedure TatFileCtrlLibrary.__TFilterComboBoxCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TFilterComboBoxClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__TFilterComboBoxDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFilterComboBox(CurrentObject).Destroy;
  end;
end;

procedure TatFileCtrlLibrary.__GetTFilterComboBoxMask(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TFilterComboBox(CurrentObject).Mask));
  end;
end;

procedure TatFileCtrlLibrary.__ProcessPath(AMachine: TatVirtualMachine);
  var
  Param1: Char;
  Param2: string;
  Param3: string;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1))[1];
Param2 := VarToStr(GetInputArg(2));
Param3 := VarToStr(GetInputArg(3));
    FileCtrl.ProcessPath(VarToStr(GetInputArg(0)),Param1,Param2,Param3);
    SetInputArg(1,Param1);
    SetInputArg(2,string(Param2));
    SetInputArg(3,string(Param3));
  end;
end;

procedure TatFileCtrlLibrary.__MinimizeName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(FileCtrl.MinimizeName(VarToStr(GetInputArg(0)),TCanvas(VarToObject(GetInputArg(1))),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__SelectDirectory(AMachine: TatVirtualMachine);
  var
  Param0: string;
  Param1: TSelectDirOpts;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := VarToStr(GetInputArg(0));
IntToSet(Param1, VarToInteger(GetInputArg(1)), SizeOf(Param1));
AResult := FileCtrl.SelectDirectory(Param0,Param1,VarToInteger(GetInputArg(2)));
    ReturnOutputArg(AResult);
    SetInputArg(0,string(Param0));
  end;
end;

procedure TatFileCtrlLibrary.__DirectoryExists(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := FileCtrl.DirectoryExists(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.__ForceDirectories(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := FileCtrl.ForceDirectories(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatFileCtrlLibrary.Init;
begin
  With Scripter.DefineClass(TFileListBox) do
  begin
    DefineMethod('Create',1,tkClass,TFileListBox,__TFileListBoxCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TFileListBoxDestroy,false,0,'');
    DefineMethod('Update',0,tkNone,nil,__TFileListBoxUpdate,false,0,'');
    DefineMethod('ApplyFilePath',1,tkNone,nil,__TFileListBoxApplyFilePath,false,0,'EditText: string');
    DefineProp('Drive',tkVariant,__GetTFileListBoxDrive,__SetTFileListBoxDrive,nil,false,0);
    DefineProp('Directory',tkVariant,__GetTFileListBoxDirectory,__SetTFileListBoxDirectory,nil,false,0);
    DefineProp('FileName',tkVariant,__GetTFileListBoxFileName,__SetTFileListBoxFileName,nil,false,0);
  end;
  With Scripter.DefineClass(TDirectoryListBox) do
  begin
    DefineMethod('Create',1,tkClass,TDirectoryListBox,__TDirectoryListBoxCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TDirectoryListBoxDestroy,false,0,'');
    DefineMethod('DisplayCase',1,tkVariant,nil,__TDirectoryListBoxDisplayCase,false,0,'S: String');
    DefineMethod('FileCompareText',2,tkInteger,nil,__TDirectoryListBoxFileCompareText,false,0,'A: String; B: String');
    DefineMethod('GetItemPath',1,tkVariant,nil,__TDirectoryListBoxGetItemPath,false,0,'Index: Integer');
    DefineMethod('OpenCurrent',0,tkNone,nil,__TDirectoryListBoxOpenCurrent,false,0,'');
    DefineMethod('Update',0,tkNone,nil,__TDirectoryListBoxUpdate,false,0,'');
    DefineProp('Drive',tkVariant,__GetTDirectoryListBoxDrive,__SetTDirectoryListBoxDrive,nil,false,0);
    DefineProp('Directory',tkVariant,__GetTDirectoryListBoxDirectory,__SetTDirectoryListBoxDirectory,nil,false,0);
    DefineProp('PreserveCase',tkVariant,__GetTDirectoryListBoxPreserveCase,nil,nil,false,0);
    DefineProp('CaseSensitive',tkVariant,__GetTDirectoryListBoxCaseSensitive,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TDriveComboBox) do
  begin
    DefineMethod('Create',1,tkClass,TDriveComboBox,__TDriveComboBoxCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TDriveComboBoxDestroy,false,0,'');
    DefineProp('Text',tkVariant,nil,nil,nil,false,0);
    DefineProp('Drive',tkVariant,__GetTDriveComboBoxDrive,__SetTDriveComboBoxDrive,nil,false,0);
  end;
  With Scripter.DefineClass(TFilterComboBox) do
  begin
    DefineMethod('Create',1,tkClass,TFilterComboBox,__TFilterComboBoxCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TFilterComboBoxDestroy,false,0,'');
    DefineProp('Mask',tkVariant,__GetTFilterComboBoxMask,nil,nil,false,0);
    DefineProp('Text',tkVariant,nil,nil,nil,false,0);
  end;
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('ProcessPath',4,tkNone,nil,__ProcessPath,false,0,'EditText: string; Drive: Char; DirPart: string; FilePart: string').SetVarArgs([1,2,3]);
    DefineMethod('MinimizeName',3,tkVariant,nil,__MinimizeName,false,0,'Filename: TFileName; Canvas: TCanvas; MaxLen: Integer');
    DefineMethod('SelectDirectory',3,tkVariant,nil,__SelectDirectory,false,0,'Directory: string; Options: TSelectDirOpts; HelpCtx: Longint').SetVarArgs([0]);
    DefineMethod('DirectoryExists',1,tkVariant,nil,__DirectoryExists,false,0,'Name: string');
    DefineMethod('ForceDirectories',1,tkVariant,nil,__ForceDirectories,false,0,'Dir: string');
    AddConstant('ftReadOnly',ftReadOnly);
    AddConstant('ftHidden',ftHidden);
    AddConstant('ftSystem',ftSystem);
    AddConstant('ftVolumeID',ftVolumeID);
    AddConstant('ftDirectory',ftDirectory);
    AddConstant('ftArchive',ftArchive);
    AddConstant('ftNormal',ftNormal);
    AddConstant('dtUnknown',dtUnknown);
    AddConstant('dtNoDrive',dtNoDrive);
    AddConstant('dtFloppy',dtFloppy);
    AddConstant('dtFixed',dtFixed);
    AddConstant('dtNetwork',dtNetwork);
    AddConstant('dtCDROM',dtCDROM);
    AddConstant('dtRAM',dtRAM);
    AddConstant('tcLowerCase',tcLowerCase);
    AddConstant('tcUpperCase',tcUpperCase);
    AddConstant('sdAllowCreate',sdAllowCreate);
    AddConstant('sdPerformCreate',sdPerformCreate);
    AddConstant('sdPrompt',sdPrompt);
    AddConstant('WNTYPE_DRIVE',WNTYPE_DRIVE);
  end;
end;

class function TatFileCtrlLibrary.LibraryName: string;
begin
  result := 'FileCtrl';
end;

initialization
  RegisterScripterLibrary(TatFileCtrlLibrary, True);

{$WARNINGS ON}

end.

