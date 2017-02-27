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
//unit ap_DBByteBuffer;

interface

uses
  SysUtils,
  DBByteBuffer,
  System.Variants,
  atScript;

{$WARNINGS OFF}

type
  TatDBByteBufferLibrary = class(TatScripterLibrary)
    procedure __TDBByteBufferCreate(AMachine: TatVirtualMachine);
    procedure __TDBByteBufferDestroy(AMachine: TatVirtualMachine);
    procedure __TDBByteBufferSetString(AMachine: TatVirtualMachine);
    procedure __TDBByteBufferAppend(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  TDBByteBufferClass = class of TDBByteBuffer;



implementation



procedure TatDBByteBufferLibrary.__TDBByteBufferCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDBByteBufferClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatDBByteBufferLibrary.__TDBByteBufferDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDBByteBuffer(CurrentObject).Destroy;
  end;
end;

procedure TatDBByteBufferLibrary.__TDBByteBufferSetString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDBByteBuffer(CurrentObject).SetString(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatDBByteBufferLibrary.__TDBByteBufferAppend(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDBByteBuffer(CurrentObject).Append(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatDBByteBufferLibrary.Init;
begin
  With Scripter.DefineClass(TDBByteBuffer) do
  begin
    DefineMethod('Create',0,tkClass,TDBByteBuffer,__TDBByteBufferCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TDBByteBufferDestroy,false,0,'');
    DefineMethod('SetString',1,tkNone,nil,__TDBByteBufferSetString,false,0,'Value: String');
    DefineMethod('Append',1,tkNone,nil,__TDBByteBufferAppend,false,0,'Value: String');
  end;
  With Scripter.DefineClass(ClassType) do
  begin
  end;
end;

class function TatDBByteBufferLibrary.LibraryName: string;
begin
  result := 'DBByteBuffer';
end;

initialization
  RegisterScripterLibrary(TatDBByteBufferLibrary, True);

{$WARNINGS ON}

end.

