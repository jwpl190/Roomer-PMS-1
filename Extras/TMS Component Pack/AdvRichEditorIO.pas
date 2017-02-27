{*************************************************************************}
{ TMS TAdvRichEditor                                                      }
{ for Delphi & C++Builder                                                 }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright � 2014 - 2017                                       }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit AdvRichEditorIO;

{$I TMSDEFS.INC}

interface

uses
  Classes, SysUtils, AdvRichEditor, AdvRichEditorBase, StrUtils
  {$IFDEF FMXLIB}
  , FMX.Forms
  {$ENDIF}
  {$IFNDEF FMXLIB}
  , Forms
  {$ENDIF}
  {$IFDEF FNCLIB}
  , AdvCustomComponent
  {$ENDIF}
  ;

type
  TAdvRichEditorBaseEx = class(TAdvRichEditorBase);

  {$IFDEF FNCLIB}
  TNVComponent = class(TTMSFNCCustomComponent)
  protected
    function GetInstance: NativeUInt; override;
  end;
  {$ENDIF}

  {$IFNDEF FNCLIB}
  TNVComponent = class(TComponent);
  {$ENDIF}

  TAdvRichEditorIO = class(TNVComponent)
  private
    FRichEditor: TAdvRichEditorBase;
  public
    constructor Create(AOwner: TComponent); override;
    property RichEditor: TAdvRichEditorBase read FRichEditor write FRichEditor;
    procedure Save(AStream: TStream); overload; virtual; abstract;
  end;

  TAdvRichEditorHTMLIO = class(TAdvRichEditorIO)
  private
    FOnImageNotFound: TImageNotFoundEvent;
    FSpaceAsNbSp: boolean;
  protected
    procedure ImageNotFound(Sender: TObject; ImageName: string);
  public
    FInlineImages: boolean;
    constructor Create(AOwner: TComponent); override;
    procedure Save(const FileName: string; ImgPath: string = ''); overload; virtual;
    procedure Save(AStream: TStream); override;
    procedure Load(const FileName: string); overload;
    procedure Load(AStream: TStream); overload;
    procedure LoadHTML(HtmlValue: string);
    procedure InsertHTML({%H-}HtmlValue: string);
  published
    property RichEditor;
    property InlineImages: boolean read FInlineImages write FInlineImages default False;
    property SpaceAsNbSp: boolean read FSpaceAsNbSp write FSpaceAsNbSp default True;
    property OnImageNotFound: TImageNotFoundEvent read FOnImageNotFound write FOnImageNotFound;
  end;

  TAdvRichEditorRTFIO = class(TAdvRichEditorIO)
  public
    procedure Load(const FileName: string); overload;
    procedure Load(AStream: TStream); overload;
    procedure Save(const FileName: string); overload; virtual;
    procedure Save(AStream: TStream); override;
  published
    property RichEditor;
  end;

implementation

{$IFDEF FNCLIB}
{$R TMSFNCRichEditorIO.res}
{$ENDIF}

{$IFNDEF LCLLIB}
uses
  Character
  ;
{$ENDIF}

type
  TAdvRichEditorEx = class(TAdvRichEditor);


{$IFDEF FNCLIB}
function TNVComponent.GetInstance: NativeUInt;
begin
  Result := HInstance;
end;
{$ENDIF}


{ TAdvRichEditorHTMLIO }

procedure TAdvRichEditorHTMLIO.Save(const FileName: string; ImgPath: string = '');
var
  sl: TStringList;
begin
  if not Assigned(FRichEditor) then
    Exit;

  sl := TStringList.Create;

  try
    if ImgPath = '' then
      ImgPath := ExtractFilePath(FileName);

    if InlineImages then
      TAdvRichEditorBaseEx(FRichEditor).HTMLImages := igInline;

    sl.Text := TAdvRichEditorBaseEx(FRichEditor).GetContentAsHTML(False, ImgPath);

    if not FSpaceAsNbSp then
      sl.Text := ReplaceStr(sl.Text, '&nbsp;', ' ');

    sl.SaveToFile(FileName);
  finally
    sl.Free;
  end;
end;

constructor TAdvRichEditorHTMLIO.Create(AOwner: TComponent);
begin
  inherited;
  FSpaceAsNbSp := True;
end;

procedure TAdvRichEditorHTMLIO.ImageNotFound(Sender: TObject;
  ImageName: string);
begin
  if Assigned(FOnImageNotFound) then
    FOnImageNotFound(Self, ImageName);
end;

procedure TAdvRichEditorHTMLIO.InsertHTML(HtmlValue: string);
begin

end;

procedure TAdvRichEditorHTMLIO.Load(const FileName: string);
var
  sl: TStringList;
begin
  if not Assigned(RichEditor) then
    raise Exception.Create('No rich editor assigned');

  sl := TStringList.Create;
  try
    sl.LoadFromFile(FileName);
    LoadHTML(sl.Text);
  finally
    sl.Free;
  end;
end;

procedure TAdvRichEditorHTMLIO.Load(AStream: TStream);
var
  ss: TStringStream;
begin
  ss := TStringStream.Create;
  try
    ss.CopyFrom(AStream, AStream.Size);
    LoadHTML(ss.DataString);
  finally
    ss.Free;
  end;
end;

procedure TAdvRichEditorHTMLIO.LoadHTML(HtmlValue: string);
begin
  if (HtmlValue = '') then
    Exit;

  if not Assigned(RichEditor) then
    raise Exception.Create('No rich editor assigned');

  RichEditor.Clear;

  TAdvRichEditorEx(RichEditor).OnImageNotFound := ImageNotFound;

  TAdvRichEditorEx(RichEditor).ParseHTML(HTMLValue);
end;

procedure TAdvRichEditorHTMLIO.Save(AStream: TStream);
var
  sl: TStringList;
begin
  if not Assigned(FRichEditor) then
    Exit;

  sl := TStringList.Create;

  try
    if InlineImages then
      TAdvRichEditorBaseEx(FRichEditor).HTMLImages := igInline;

    sl.Text := TAdvRichEditorBaseEx(FRichEditor).GetContentAsHTML(False);

    if not FSpaceAsNbSp then
      sl.Text := ReplaceStr(sl.Text, '&nbsp;', ' ');

    sl.SaveToStream(AStream);
  finally
    sl.Free;
  end;
end;

{ TAdvRichEditorRTFIO }

procedure TAdvRichEditorRTFIO.Save(const FileName: string);
begin
  if not Assigned(FRichEditor) then
    Exit;

  TAdvRichEditorBaseEx(FRichEditor).GetContentAsRTF(False);

  TAdvRichEditorBaseEx(FRichEditor).RTFEngine.SaveToFile(FileName);
end;

procedure TAdvRichEditorRTFIO.Load(AStream: TStream);
var
  ts: TStringStream;
begin
  if not Assigned(FRichEditor) then
    raise Exception.Create('No richeditor assigned');

  if not Assigned(AStream) then
    raise Exception.Create('Stream not assigned');

  AStream.Position := 0;

  ts := TStringStream.Create;
  try
    ts.CopyFrom(AStream, AStream.Size);
    RichEditor.InsertAsRTF(ts.DataString);
  finally
    ts.Free;
  end;
end;

procedure TAdvRichEditorRTFIO.Load(const FileName: string);
var
  ts: TStringStream;
  s,su: string;
  i, lp: integer;
  sl: TStringList;
begin
  if not Assigned(FRichEditor) then
    raise Exception.Create('No richeditor assigned');

  sl := TStringList.Create;
  sl.LoadFromFile(FileName);

  ts := TStringStream.Create;

  for i := 0 to sl.Count - 1  do
  begin
    s := sl.Strings[i];
    if (Length(s) > 0) and (CharInStr(s,1) <> '\') then
      ts.WriteString(#13);

    ts.WriteString(s);

    lp := Length(s);
    su := '';
    if lp >= 1 then
    begin
      su := Copy(s, lp ,1);
    end;

    if su = '\' then
      ts.WriteString('line');
  end;

  s := ts.DataString;

  ts.Free;
  sl.Free;

  RichEditor.InsertAsRTF(s);
end;

procedure TAdvRichEditorRTFIO.Save(AStream: TStream);
begin
  TAdvRichEditorBaseEx(FRichEditor).GetContentAsRTF(False);
  TAdvRichEditorBaseEx(FRichEditor).RTFEngine.SaveToStream(AStream);
end;

{ TAdvRichEditorIO }

constructor TAdvRichEditorIO.Create(AOwner: TComponent);
var
  i: integer;

begin
  inherited;

  if Assigned(AOwner) and (AOwner is TCustomForm) then
  begin
    for i := 0 to AOwner.ComponentCount - 1 do
      if (AOwner.Components[i] is TAdvRichEditor) then
      begin
        FRichEditor := AOwner.Components[i] as TAdvRichEditor;
        break;
      end;
  end;
end;

end.
