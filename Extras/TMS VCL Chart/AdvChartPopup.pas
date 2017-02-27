{********************************************************************}
{                                                                    }
{ written by TMS Software                                            }
{            copyright � 2016                                        }
{            Email : info@tmssoftware.com                            }
{            Web : http://www.tmssoftware.com                        }
{                                                                    }
{ The source code is given as is. The author is not responsible      }
{ for any possible damage done due to the use of this code.          }
{ The complete source code remains property of the author and may    }
{ not be distributed, published, given or sold in any form as such.  }
{ No parts of the source code can be included in any other component }
{ or application without written authorization of the author.        }
{********************************************************************}

unit AdvChartPopup;

{$I TMSDEFS.inc}

{$IFDEF LCLLIB}
{$mode objfpc}{$H+}{$modeswitch advancedrecords}
{$ENDIF}

interface

uses
  {$IFDEF MSWINDOWS}
  Windows,
  {$ENDIF}
  Classes, Controls, AdvChartCustomComponent, AdvChartGraphics, Graphics,
  AdvChartTypes, Forms, ExtCtrls
  {$IFNDEF LCLLIB}
  ,Types
  {$HINTS OFF}
  {$IF COMPILERVERSION > 22}
  ,UITypes
  {$IFEND}
  {$HINTS ON}
  {$ENDIF}
  {$IFDEF FMXLIB}
  ,FMX.Types
  {$ENDIF}
  {$IFDEF VCLLIB}
  ,Messages
  {$ENDIF}
  {$IFDEF LCLLIB}
  {$IFNDEF MSWINDOWS}
  ,LMessages
  {$ENDIF}
  ,LCLType, LCLIntf
  {$ENDIF}
  ;

const
  MAJ_VER = 1; // Major version nr.
  MIN_VER = 0; // Minor version nr.
  REL_VER = 0; // Release nr.
  BLD_VER = 1; // Build nr.

  // version history
  // v1.0.0.0 : first release
  // v1.0.0.1 : Fixed: Issue with popup on Android

type
  TAdvChartPopupPlacement = (ppBottom, ppTop, ppLeft, ppRight, ppCenter, ppBottomCenter, ppTopCenter, ppLeftCenter, ppRightCenter, ppAbsolute,
    ppMouse, ppMouseCenter, ppAboveMouse, ppAboveMouseCenter);

  TAdvChartPopupPaint = procedure(Sender: TObject; AGraphics: TAdvChartGraphics; ARect: TRectF) of object;

  TAdvChartCustomPopupFormClass = class of TAdvChartCustomPopupForm;

  TAdvChartCustomPopup = class;

  TAdvChartCustomPopupForm = class(TCustomForm)
  private
    {$IFDEF FMXLIB}
    {$IFDEF FMXLIB}
    {$HINTS OFF}
    {$IF COMPILERVERSION > 27}
    FPreferedDisplayIndex: Integer;
    {$IFEND}
    {$HINTS ON}
    {$ENDIF}
    {$ENDIF}
    FHintWindow: Boolean;
    FTimer: TTimer;
    FFirstShow: Boolean;
    FOwner: TComponent;
    FShowModal: Boolean;
    FPlacement: TAdvChartPopupPlacement;
    FRealPlacement: TAdvChartPopupPlacement;
    FPlacementControl: TControl;
    FOffset: TPointF;
    FSize: TSizeF;
    FPlacementRectangle: TAdvMargins;
    FScreenPlacementRect: TRectF;
    FPlacementChanged: Boolean;
    FDragWithParent: Boolean;
    FOnBeforeClose: TNotifyEvent;
    FOnBeforeShow: TNotifyEvent;
    FScreenContentRect: TRectF;
    FContentPadding: TAdvMargins;
    FContentControl: TControl;
    FOnRealPlacementChanged: TNotifyEvent;
    FOnPopupPaint: TAdvChartPopupPaint;
    procedure SetOffset(const Value: TPointF);
    procedure SetSize(const Value: TSizeF);
    procedure TimerProc(Sender: TObject);
    procedure SetPlacementRectangle(const Value: TAdvMargins);
    procedure SetPlacement(const Value: TAdvChartPopupPlacement);
    procedure SetPlacementControl(const Value: TControl);
    procedure SetDragWithParent(const Value: Boolean);
    procedure SetContentPadding(const Value: TAdvMargins);
    procedure SetContentControl(const Value: TControl);
    function GetPopup: TAdvChartCustomPopup;
  protected
    procedure DoBeforeShow; virtual;
    procedure DoBeforeClose; virtual;
    procedure UpdateBounds(LRect: TRectF); virtual;
    procedure DoClose(var CloseAction: TCloseAction); override;
    procedure DoApplyPlacement; virtual;
    procedure Loaded; override;
    procedure Updated; override;
    procedure HandleFocusedControl;
    function GetPopupParent: TControl;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure DoRealPlacementChanged; virtual;
    property DragWithParent: Boolean read FDragWithParent write SetDragWithParent;
    property Popup: TAdvChartCustomPopup read GetPopup;
  public
    {$IFDEF CMNLIB}
    constructor CreateNew(AOwner: TComponent; Dummy: Integer  = 0); override;
    {$ENDIF}
    {$IFDEF FMXLIB}
    constructor CreateNew(AOwner: TComponent; Dummy: NativeInt = 0); override;
    {$ENDIF}
    constructor Create(AOwner: TComponent; APlacementControl: TControl = nil); reintroduce;
    destructor Destroy; override;
    procedure ApplyPlacement; virtual;
    procedure KeyDown(var Key: Word; {$IFDEF FMXLIB}var KeyChar: WideChar;{$ENDIF} Shift: TShiftState); override;
    function CloseQuery: Boolean; override;
    property HintWindow: Boolean read FHintWindow write FHintWindow;
    property ContentControl: TControl read FContentControl write SetContentControl;
    property ContentPadding: TAdvMargins read FContentPadding write SetContentPadding;
    property Offset: TPointF read FOffset write SetOffset;
    property Placement: TAdvChartPopupPlacement read FPlacement write SetPlacement;
    property PlacementRectangle: TAdvMargins read FPlacementRectangle write SetPlacementRectangle;
    property PlacementControl: TControl read FPlacementControl write SetPlacementControl;
    property RealPlacement: TAdvChartPopupPlacement read FRealPlacement;
    property ScreenContentRect: TRectF read FScreenContentRect;
    property ScreenPlacementRect: TRectF read FScreenPlacementRect;
    property Size: TSizeF read FSize write SetSize;
    property OnBeforeShow: TNotifyEvent read FOnBeforeShow write FOnBeforeShow;
    property OnBeforeClose: TNotifyEvent read FOnBeforeClose write FOnBeforeClose;
    property OnRealPlacementChanged: TNotifyEvent read FOnRealPlacementChanged write FOnRealPlacementChanged;
    property OnPopupPaint: TAdvChartPopupPaint read FOnPopupPaint write FOnPopupPaint;
  end;

  TAdvChartCustomPopup = class(TAdvChartCustomComponent)
  private
    FOwner: TComponent;
    FPlacementControl: TControl;
    FPopupForm: TAdvChartCustomPopupForm;
    FStaysOpen: Boolean;
    FPlacement: TAdvChartPopupPlacement;
    FPlacementRectangle: TAdvMargins;
    FHorizontalOffset: Single;
    FVerticalOffset: Single;
    FDragWithParent: Boolean;
    FModalResult: TModalResult;
    FModal: Boolean;
    FOnClosePopup: TNotifyEvent;
    FOnPopup: TNotifyEvent;
    FPopupFormSize: TSizeF;
    FContentControl: TControl;
    FDropDownHeight: Single;
    FDropDownWidth: Single;
    FFocusable: Boolean;
    FFocusedControl: TControl;
    FOnPopupPaint: TAdvChartPopupPaint;
    FOnPopupShown: TNotifyEvent;
    FIsOpen: Boolean;
    procedure SetIsOpen(const Value: Boolean);
    procedure SetPlacementRectangle(const Value: TAdvMargins);
    procedure SetModalResult(const Value: TModalResult);
    procedure SetPlacementControl(const Value: TControl);
    procedure SetPlacement(const Value: TAdvChartPopupPlacement);
    procedure SetDragWithParent(const Value: Boolean);
    procedure BeforeShowProc(Sender: TObject);
    procedure BeforeCloseProc(Sender: TObject);
    procedure CloseProc(Sender: TObject; var {%H-}CloseAction: TCloseAction);
    procedure ShowProc(Sender: TObject);
    procedure DeactivateProc(Sender: TObject);
    procedure SetPopupFormSize(const Value: TSizeF);
    procedure UpdatePopupSize;
    procedure SetContentControl(const Value: TControl);
    procedure SetDropDownHeight(const Value: Single);
    procedure SetDropDownWidth(const Value: Single);
  protected
    function GetVersion: String; virtual;
    {$IFDEF FNCLIB}
    procedure SetAdaptToStyle(const Value: Boolean); override;
    {$ENDIF}
    procedure ShowPopup(AModal: Boolean); virtual;
    procedure HandleFocusedControl;
    {$IFDEF FMXLIB}
    procedure FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    {$ENDIF}
    {$IFDEF CMNLIB}
    procedure FormPaint(Sender: TObject);
    {$ENDIF}
    procedure DoPopupPaint(Sender: TObject; AGraphics: TAdvChartGraphics; ARect: TRectF); virtual;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure MarginsChanged(Sender: TObject);
    procedure DoClosePopup; virtual;
    procedure DoPopup; virtual;
    procedure DoPopupShown; virtual;
    procedure ClosePopup; virtual;
    procedure DoCreatePopup(const AShowModal: Boolean = False); virtual;
    function GetPopupFormClass: TAdvChartCustomPopupFormClass; virtual;
    function GetParent: TControl;
    function CreatePopupForm: TAdvChartCustomPopupForm; virtual;
    property IsOpen: Boolean read FIsOpen write SetIsOpen;
    property ModalResult: TModalResult read FModalResult write SetModalResult;
    property PopupFormSize: TSizeF read FPopupFormSize write SetPopupFormSize;
    property DragWithParent: Boolean read FDragWithParent write SetDragWithParent default False;
    property PopupForm: TAdvChartCustomPopupForm read FPopupForm;
    property StaysOpen: Boolean read FStaysOpen write FStaysOpen default False;
    property DropDownHeight: Single read FDropDownHeight write SetDropDownHeight;
    property DropDownWidth: Single read FDropDownWidth write SetDropDownWidth;
    property HorizontalOffset: Single read FHorizontalOffset write FHorizontalOffset;
    property Placement: TAdvChartPopupPlacement read FPlacement write SetPlacement default ppBottom;
    property PlacementRectangle: TAdvMargins read FPlacementRectangle write SetPlacementRectangle;
    property PlacementControl: TControl read FPlacementControl write SetPlacementControl;
    property VerticalOffset: Single read FVerticalOffset write FVerticalOffset;
    property FocusedControl: TControl read FFocusedControl write FFocusedControl;
    property ContentControl: TControl read FContentControl write SetContentControl;
    property OnClosePopup: TNotifyEvent read FOnClosePopup write FOnClosePopup;
    property OnPopupPaint: TAdvChartPopupPaint read FOnPopupPaint write FOnPopupPaint;
    property OnPopup: TNotifyEvent read FOnPopup write FOnPopup;
    property OnPopupShown: TNotifyEvent read FOnPopupShown write FOnPopupShown;
    property Version: String read GetVersion;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function HasPopupForm: Boolean;
    function PointInPopup(APoint: TPointF): Boolean; virtual;
  end;

  TAdvChartPopup = class(TAdvChartCustomPopup)
  public
    function PopupModal: TModalResult; virtual;
    procedure Popup(const AShowModal: Boolean = False); virtual;
    property AdaptToStyle;
    property ModalResult;
    property IsOpen;
    property PopupFormSize;
    property DragWithParent;
    property PopupForm;
  published
    property StaysOpen;
    property DropDownHeight;
    property DropDownWidth;
    property HorizontalOffset;
    property Placement;
    property PlacementRectangle;
    property PlacementControl;
    property VerticalOffset;
    property FocusedControl;
    property ContentControl;
    property OnClosePopup;
    property OnPopupPaint;
    property OnPopup;
    property OnPopupShown;
    property Version;
  end;

{$IFDEF CMNLIB}
{$IFDEF MSWINDOWS}
type
  LInteger = LONG_PTR;
  IntPtr = Pointer;
{$ENDIF}
{$ENDIF}

type
  TAdvChartCustomNonFocusablePopupForm = class(TAdvChartCustomPopupForm)
  private
    {$IFDEF CMNLIB}
    {$IFDEF MSWINDOWS}
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    {$ELSE}
    procedure WMActivate(var Message: TLMActivate); message LM_ACTIVATE;
    procedure WMNCHitTest(var Message: TLMessage); message LM_NCHITTEST;
    {$ENDIF}
    {$ENDIF}
  protected
    procedure UpdateBounds(LRect: TRectF); override;
    {$IFDEF CMNLIB}
    {$IFDEF MSWINDOWS}
    procedure CreateParams(var Params: TCreateParams); override;
    {$ENDIF}
    {$ENDIF}
  public
    {$IFDEF CMNLIB}
    {$IFDEF MSWINDOWS}
    constructor CreateNew(AOwner: TComponent; Dummy: Integer  = 0); override;
    destructor Destroy; override;
    {$ENDIF}
    {$ENDIF}
  end;

  TAdvChartCustomNonFocusablePopup = class(TAdvChartCustomPopup)
  private
    {$IFDEF CMNLIB}
    FActiveWindow: HWND;
    {$ENDIF}
  protected
    procedure ActivatePreviousWindow; virtual;
    procedure ShowPopup({%H-}AModal: Boolean); override;
    function GetPopupFormClass: TAdvChartCustomPopupFormClass; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TAdvChartNonFocusablePopup = class(TAdvChartCustomNonFocusablePopup)
  public
    procedure Activate; virtual;
  published
    property ContentControl;
    property Placement;
    property PlacementRectangle;
    property PlacementControl;
  end;

implementation

{$R AdvChartPopup.res}

uses
  SysUtils, AdvChartUtils
  {$IFDEF FNCLIB}
  , AdvChartStyles
  {$ENDIF}
  {$IFDEF FMXLIB}
  , FMX.Platform, Math
  {$ENDIF}
  ;

{$IFDEF CMNLIB}
{$IFDEF MSWINDOWS}
type
  WndProcRec = record
    FWindowHandle: HWND;
    FProc: LInteger;
  end;

var
  PrevWndProcs: array of WndProcRec;
{$ENDIF}
{$ENDIF}

{ TAdvChartPopup }

constructor TAdvChartCustomPopup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FOwner := AOwner;
  FPlacement := ppBottom;
  FFocusable := True;
  FStaysOpen := False;
  FPlacementRectangle := TAdvMargins.Create;
  FPlacementRectangle.OnChange := MarginsChanged;
end;

destructor TAdvChartCustomPopup.Destroy;
begin
  FContentControl := nil;
  ClosePopup;
  if HasPopupForm then
  begin
    FreeAndNil(FPopupForm);
  end;
  FreeAndNil(FPlacementRectangle);
  inherited;
end;

procedure TAdvChartCustomPopup.DeactivateProc(Sender: TObject);
begin
  if Assigned(FPopupForm) and not FPopupForm.FShowModal and not StaysOpen then
  begin
    FPopupForm.Visible := False;
    FPopupForm.Close;
  end;
end;

procedure TAdvChartCustomPopup.HandleFocusedControl;
var
  frm: TCustomForm;
begin
  if Assigned(FPopupForm) and Assigned(FocusedControl) then
  begin
    if not FPopupForm.FShowModal then
    begin
      frm := TAdvChartUtils.GetParentForm(FocusedControl);
      if Assigned(frm) and (frm <> FPopupForm) then
      begin
        {$IFDEF FMXLIB}
        frm.Activate;
        {$ENDIF}
        {$IFDEF CMNLIB}
        frm.SetFocus;
        {$ENDIF}
      end;
    end;

    {$IFDEF FMXLIB}
    if FocusedControl.CanFocus then
      FocusedControl.SetFocus;
    {$ENDIF}
    {$IFDEF CMNLIB}
    if FocusedControl is TWinControl then
    begin
      if (FocusedControl as TWinControl).CanFocus then
        (FocusedControl as TWinControl).SetFocus;
    end;
    {$ENDIF}
  end;
end;

function TAdvChartCustomPopup.HasPopupForm: Boolean;
begin
  Result := FPopupForm <> nil;
end;

procedure TAdvChartCustomPopup.MarginsChanged(Sender: TObject);
begin
  if (FPopupForm <> nil) then
    FPopupForm.PlacementRectangle := PlacementRectangle;
end;

function TAdvChartCustomPopup.CreatePopupForm: TAdvChartCustomPopupForm;
var
  NewForm: TAdvChartCustomPopupForm;
  cls: TAdvChartCustomPopupFormClass;
begin
  NewForm := nil;
  try
    cls := GetPopupFormClass;
    NewForm := cls.Create(Self, PlacementControl);
  except
    FreeAndNil(NewForm);
    Raise;
  end;
  Result := NewForm;
end;

procedure TAdvChartPopup.Popup(const AShowModal: Boolean = False);
begin
  DoCreatePopup(AShowModal);
end;

procedure TAdvChartCustomPopup.SetModalResult(const Value: TModalResult);
begin
  FModalResult := Value;
  if Assigned(FPopupForm) then
    FPopupForm.ModalResult := FModalResult;
end;

function TAdvChartPopup.PopupModal: TModalResult;
var
  LStaysOpen : Boolean;
begin
  Result := 0;
  if FIsOpen then
    Exit;

  if HasPopupForm then
    FPopupForm.Close;

  LStaysOpen := FStaysOpen;
  try
    FStaysOpen := True;
    Popup(True);
    Result := FModalResult;
    IsOpen := False;
  finally
    FStaysOpen := LStaysOpen;
  end;
end;

procedure TAdvChartCustomPopup.ClosePopup;
{$IFNDEF LCLLIB}
var
  p: TControl;
{$ENDIF}
begin
  if not HasPopupForm then
    Exit;
  if FModal and (FModalResult = 0) then
  begin
    ModalResult := mrCancel;
    Exit;
  end;

  FIsOpen := False;
  if Assigned(FContentControl) then
  begin
    {$IFNDEF LCLLIB}
    p := GetParent;
    {$ENDIF}
    FContentControl.Visible := False;
    {$IFDEF FMXLIB}
    FContentControl.Parent := p;
    {$ENDIF}
    {$IFDEF VCLLIB}
    if Assigned(p) and (p is TWinControl) then
      FContentControl.Parent := p as TWinControl;
    {$ENDIF}
    {$IFDEF LCLLIB}
    FContentControl.Parent := nil;
    {$ENDIF}
  end;

  if not (csDestroying in ComponentState) then
  begin
    if HasPopupForm then
    begin
      DoClosePopup;
      FPopupForm := nil;
    end;
  end;
end;

procedure TAdvChartCustomPopup.DoClosePopup;
begin
  if Assigned(FOnClosePopup) then
    FOnClosePopup(Self);
end;

procedure TAdvChartCustomPopup.DoCreatePopup(const AShowModal: Boolean = False);
{$IFDEF FNCLIB}
var
  ia: IAdvAdaptToStyle;
{$ENDIF}
begin
  if FIsOpen then
    Exit;

  if HasPopupForm then
    FPopupForm.Close;

  FPopupForm := CreatePopupForm;
  try
    try
      {$IFDEF FMXLIB}
      {$IFDEF FMXMOBILE}
      if AShowModal then
        FPopupForm.FormStyle := TFormStyle.Normal;
      {$ENDIF}
      {$IFNDEF FMXMOBILE}
      FPopupForm.FormStyle := TFormStyle.StayOnTop;
      {$ENDIF}
      if Owner is TFmxObject then
        FPopupForm.Parent := TFmxObject(Owner);
      {$ENDIF}

      {$IFDEF CMNLIB}
      FPopupForm.FormStyle := fsStayOnTop;
      {$ENDIF}

      FPopupForm.OnPaint := FormPaint;
      FPopupForm.OnPopupPaint := DoPopupPaint;

      TComponent(FPopupForm).FreeNotification(Self);
      FPopupForm.Placement := Placement;
      FPopupForm.Offset := PointF(Self.HorizontalOffset, Self.VerticalOffset);
      FPopupForm.PlacementRectangle := Self.PlacementRectangle;
      FPopupForm.DragWithParent := DragWithParent;
      UpdatePopupSize;
      FPopupForm.OnDeactivate := DeactivateProc;
      FPopupForm.OnBeforeShow := BeforeShowProc;
      FPopupForm.OnBeforeClose := BeforeCloseProc;
      FPopupForm.OnClose := CloseProc;
      FPopupForm.OnShow := ShowProc;
      FPopupForm.FShowModal := AShowModal;

      FPopupForm.ContentControl := FContentControl;
      {$IFDEF FNCLIB}
      if Supports(FContentControl, IAdvAdaptToStyle, ia) then
        ia.AdaptToStyle := AdaptToStyle;
      {$ENDIF}
      {$IFDEF FMXLIB}
      if Assigned(FContentControl) then
        FContentControl.Align := TAlignLayout.Client;
      {$ENDIF}
      {$IFDEF CMNLIB}
      if Assigned(FContentControl) then
        FContentControl.Align := alClient;
      {$ENDIF}
    finally
    end;
  except
    FreeAndNil(FPopupForm);
    Raise;
  end;

  if (not (csDestroying in ComponentState)) {$IFDEF FMXLIB}and (not Released) {$ENDIF}then
    FPopupForm.DoBeforeShow;

  ShowPopup(AShowModal);
end;

procedure TAdvChartCustomPopup.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if Operation = opRemove then
  begin
    if AComponent = FContentControl then
      FContentControl := nil;

    if AComponent = FFocusedControl then
      FFocusedControl := nil;

    if (AComponent = FPopupForm) then
      FPopupForm := nil;
    if (AComponent = FPlacementControl) then
    begin
      FPlacementControl := nil;
      if HasPopupForm then
        FPopupForm.PlacementControl := nil;
    end;
  end;
end;

function TAdvChartCustomPopup.PointInPopup(APoint: TPointF): Boolean;
begin
  Result := False;
  if Assigned(FPopupForm) then
    Result := PtInRectEx(RectF(FPopupForm.Left, FPopupForm.Top, FPopupForm.Left + FPopupForm.Width, FPopupForm.Top + FPopupForm.Height), APoint);
end;

procedure TAdvChartCustomPopup.SetIsOpen(const Value: Boolean);
begin
  if FIsOpen <> Value then
  begin
    if csDesigning in ComponentState then
    begin
      FIsOpen := False;
      Exit;
    end;
    if Value then
      DoCreatePopup
    else
    begin
      if HasPopupForm then
        FPopupForm.Close
      else
        FIsOpen := Value;
    end;
  end;
end;

procedure TAdvChartCustomPopup.BeforeShowProc(Sender: TObject);
begin
  FIsOpen := True;
  DoPopup;
end;

procedure TAdvChartCustomPopup.UpdatePopupSize;
var
  LSize: TSizeF;
begin
  if FPopupForm <> nil then
  begin
    if (FPopupFormSize.cx > 0) then
      LSize.cx := FPopupFormSize.cx
    else
      LSize.cx := DropDownWidth;
    if (FPopupFormSize.cy > 0) then
      LSize.cy := FPopupFormSize.cy
    else
      LSize.cy := DropDownHeight;

    FPopupForm.Size := LSize;
  end;
end;

procedure TAdvChartCustomPopup.BeforeCloseProc(Sender: TObject);
begin
  FIsOpen := False;
end;

procedure TAdvChartCustomPopup.CloseProc(Sender: TObject; var CloseAction: TCloseAction);
begin
  {$IFDEF FMXLIB}
  if Assigned(PopupForm) and (PopupForm.FormStyle = TFormStyle.Popup) then
  begin
    if not StaysOpen then
      ClosePopup
    else
      CloseAction := TCloseAction.caNone;
  end
  else
    ClosePopup;
  {$ELSE}
  ClosePopup;
  {$ENDIF}
end;

procedure TAdvChartCustomPopup.DoPopup;
begin
  if Assigned(FOnPopup) then
    FOnPopup(Self);
end;

procedure TAdvChartCustomPopup.DoPopupPaint(Sender: TObject; AGraphics: TAdvChartGraphics;
  ARect: TRectF);
begin
  if Assigned(OnPopupPaint) then
    OnPopupPaint(Self, AGraphics, ARect);
end;

procedure TAdvChartCustomPopup.DoPopupShown;
begin
  if Assigned(FOnPopupShown) then
    FOnPopupShown(Self);
end;

{$IFDEF FMXLIB}
procedure TAdvChartCustomPopup.FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
{$ENDIF}
{$IFDEF CMNLIB}
procedure TAdvChartCustomPopup.FormPaint(Sender: TObject);
{$ENDIF}
var
  g: TAdvChartGraphics;
  r: TRectF;
begin
  if Assigned(FPopupForm) then
  begin
    g := TAdvChartGraphics.Create(FPopupForm.Canvas);
    try
      g.Fill.Kind := gfkSolid;
      g.Stroke.Kind := gskSolid;
      g.Fill.Color := TAdvChartGraphics.DefaultPopupFillColor;
      g.Stroke.Color := TAdvChartGraphics.DefaultPopupStrokeColor;
      r := RectF(0, 0, FPopupForm.Width, FPopupForm.Height);
      g.DrawRectangle(r);

      if Assigned(OnPopupPaint) then
        OnPopupPaint(Self, g, r);
    finally
      g.Free;
    end;
  end;
end;

function TAdvChartCustomPopup.GetParent: TControl;
begin
  Result := PlacementControl;
  if not Assigned(Result) and (FOwner is TControl) then
    Result := FOwner as TControl;
end;

function TAdvChartCustomPopup.GetPopupFormClass: TAdvChartCustomPopupFormClass;
begin
  Result := TAdvChartCustomPopupForm;
end;

function TAdvChartCustomPopup.GetVersion: String;
begin
  Result := GetVersionNumber(MAJ_VER, MIN_VER, REL_VER, BLD_VER);
end;

procedure TAdvChartCustomPopup.SetPlacement(const Value: TAdvChartPopupPlacement);
begin
  if FPlacement <> Value then
  begin
    FPlacement := Value;
    if HasPopupForm then
      PopupForm.Placement := FPlacement;
  end;
end;

procedure TAdvChartCustomPopup.SetPlacementRectangle(const Value: TAdvMargins);
begin
  FPlacementRectangle.Assign(Value);
end;

procedure TAdvChartCustomPopup.SetPlacementControl(const Value: TControl);
begin
  if FPlacementControl <> Value then
  begin
    if FPlacementControl <> nil then
      FPlacementControl.RemoveFreeNotification(self);
    FPlacementControl := Value;
    if HasPopupForm then
      FPopupForm.PlacementControl := FPlacementControl;
    if FPlacementControl <> nil then
      FPlacementControl.FreeNotification(self);
  end;
end;

procedure TAdvChartCustomPopup.SetPopupFormSize(const Value: TSizeF);
begin
  if (FPopupFormSize.cx <> Value.cx) or (FPopupFormSize.cy <> Value.cy) then
  begin
    FPopupFormSize := Value;
    UpdatePopupSize;
  end;
end;

procedure TAdvChartCustomPopup.ShowPopup(AModal: Boolean);
begin
  if AModal then
    FModalResult := FPopupForm.ShowModal
  else
  begin
    FPopupForm.Show;
    {$IFDEF CMNLIB}
    {$IFNDEF MSWINDOWS}
    BorderStyle := bsNone;
    BorderStyle := bsSingle;
    {$ENDIF}
    {$ENDIF}
    HandleFocusedControl;
  end;
end;

procedure TAdvChartCustomPopup.ShowProc(Sender: TObject);
begin
  if Assigned(FPopupForm) and FPopupForm.FShowModal then
    HandleFocusedControl;

  DoPopupShown;
end;

{$IFDEF FNCLIB}
procedure TAdvChartCustomPopup.SetAdaptToStyle(const Value: Boolean);
var
  ia: IAdvAdaptToStyle;
begin
  inherited;
  if Assigned(ContentControl) then
  begin
    if Supports(ContentControl, IAdvAdaptToStyle, ia) then
      ia.AdaptToStyle := AdaptToStyle;
  end;
end;
{$ENDIF}

procedure TAdvChartCustomPopup.SetContentControl(const Value: TControl);
begin
  if Value = nil then
  begin
    if Assigned(FContentControl) then
      FContentControl.Visible := True;
  end;

  FContentControl := Value;
  if Assigned(FContentControl) then
  begin
    FContentControl.Visible := False;
    DropDownWidth := FContentControl.Width;
    DropDownHeight := FContentControl.Height;
  end;
end;

procedure TAdvChartCustomPopup.SetDragWithParent(const Value: Boolean);
begin
  if FDragWithParent <> Value then
  begin
    FDragWithParent := Value;
    if HasPopupForm then
      FPopupForm.DragWithParent := FDragWithParent;
  end;
end;

procedure TAdvChartCustomPopup.SetDropDownHeight(const Value: Single);
begin
  if FDropDownHeight <> Value then
  begin
    FDropDownHeight := Value;
    if Assigned(PopupForm) then
      PopupForm.Height := Round(Value);
  end;
end;

procedure TAdvChartCustomPopup.SetDropDownWidth(const Value: Single);
begin
  if FDropDownWidth <> Value then
  begin
    FDropDownWidth := Value;
    if Assigned(PopupForm) then
      PopupForm.Width := Round(Value);
  end;
end;

{ TAdvChartCustomPopupForm }

constructor TAdvChartCustomPopupForm.Create(AOwner: TComponent; APlacementControl: TControl = nil);
begin
  CreateNew(AOwner);
  try
    if APlacementControl <> nil then
      FPlacementControl := APlacementControl;
    if FPlacementControl <> nil then
      TComponent(FPlacementControl).FreeNotification(Self);
  finally
  end;
end;

{$IFDEF CMNLIB}
constructor TAdvChartCustomPopupForm.CreateNew(AOwner: TComponent; Dummy: Integer);
{$ENDIF}
{$IFDEF FMXLIB}
constructor TAdvChartCustomPopupForm.CreateNew(AOwner: TComponent; Dummy: NativeInt);
{$ENDIF}
  function FindUniqueFormName(const Name: string): string;
  var
    I: Integer;
  begin
    I := 0;
    Result := Name;
    while (FindGlobalComponent(Result) <> nil) or
          ((AOwner <> nil) and (AOwner.FindComponent(Result) <> nil)) do
    begin
      Inc(I);
      Result := Format('%s_%d', [Name, I]);
    end;
  end;
begin
  Name := FindUniqueFormName('CustomPopupForm');
  inherited;
  FOwner := AOwner;
  FDragWithParent := True;
  FPlacementRectangle := TAdvMargins.Create;
  FContentPadding := TAdvMargins.Create;
  FSize.cx := 320;
  FSize.cy := 200;
  FPlacement := ppBottom;
  FRealPlacement := FPlacement;
  Visible := False;
  try
    {$IFDEF FMXLIB}
    FormStyle := TFormStyle.Popup;
    Position := TFormPosition.Designed;
    BorderStyle := TFmxFormBorderStyle.None;
    {$ENDIF}
    {$IFDEF CMNLIB}
    KeyPreview := True;
    Position := poDesigned;
    BorderStyle := bsNone;
    BorderIcons := [];
    {$IFDEF VCLLIB}
    Ctl3D := False;
    {$ENDIF}
    {$ENDIF}
  finally
  end;
end;

destructor TAdvChartCustomPopupForm.Destroy;
begin
  FreeAndNil(FTimer);
  if FPlacementControl <> nil then
  begin
    TComponent(FPlacementControl).RemoveFreeNotification(Self);
    FPlacementControl := nil;
  end;
  FreeAndNil(FContentPadding);
  FreeAndNil(FPlacementRectangle);
  inherited;
end;

procedure TAdvChartCustomPopupForm.DoClose(var CloseAction: TCloseAction);
begin
  CloseAction := TCloseAction.caFree;
  inherited;
  if CloseAction <> TCloseAction.caNone then
  begin
    if Assigned(FTimer) then
      FTimer.Enabled := False;
  end;
end;

procedure TAdvChartCustomPopupForm.DoRealPlacementChanged;
begin
  if Assigned(FOnRealPlacementChanged) then
    FOnRealPlacementChanged(Self);
end;

procedure TAdvChartCustomPopupForm.KeyDown(var Key: Word; {$IFDEF FMXLIB}var KeyChar: WideChar;{$ENDIF} Shift: TShiftState);
begin
  inherited;
  if Shift <> [] then
    Exit;

  case Key of
    KEY_ESCAPE, KEY_F4: Close;
  end;
end;

function TAdvChartCustomPopupForm.GetPopup: TAdvChartCustomPopup;
begin
  Result := nil;
  if FOwner is TAdvChartCustomPopup then
    Result := FOwner as TAdvChartCustomPopup;
end;

function TAdvChartCustomPopupForm.GetPopupParent: TControl;
begin
  Result := nil;
  if Assigned(FOwner) and (FOwner is TAdvChartCustomPopup) then
    Result := (FOwner as TAdvChartCustomPopup).GetParent;
end;

procedure TAdvChartCustomPopupForm.HandleFocusedControl;
begin
  if Assigned(Popup) then
    Popup.HandleFocusedControl;
end;

function TAdvChartCustomPopupForm.CloseQuery: Boolean;
begin
  Result := inherited CloseQuery;
  if Result and (not (csDestroying in ComponentState)) {$IFDEF FMXLIB}and (not Released) {$ENDIF}then
    DoBeforeClose;
end;

procedure TAdvChartCustomPopupForm.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if Operation = opRemove then
  begin
    if AComponent = FPlacementControl then
    begin
      FPlacementControl := nil;
      ApplyPlacement;
    end;
    if AComponent = FContentControl then
      FContentControl := nil;
  end;
end;

procedure TAdvChartCustomPopupForm.SetDragWithParent(const Value: Boolean);
begin
  FDragWithParent := Value;
end;

procedure TAdvChartCustomPopupForm.SetContentControl(const Value: TControl);
begin
  if FContentControl <> Value then
  begin
    if FContentControl <> nil then
      TComponent(FContentControl).RemoveFreeNotification(Self);
    FContentControl := Value;
    if FContentControl <> nil then
    begin
      TComponent(FContentControl).FreeNotification(Self);
      try
        FContentControl.Parent := Self;
        {$IFDEF FMXLIB}
        FContentControl.Align := TAlignLayout.None;
        {$ENDIF}
        {$IFDEF CMNLIB}
        FContentControl.Align := alNone;
        {$ENDIF}
        FContentControl.Visible := True;
      finally
      end;
    end;
  end;
end;

procedure TAdvChartCustomPopupForm.SetContentPadding(const Value: TAdvMargins);
begin
  FContentPadding.Assign(Value);
end;

procedure TAdvChartCustomPopupForm.SetOffset(const Value: TPointF);
begin
  if (FOffset.X <> Value.X) or (FOffset.Y <> Value.Y) then
  begin
    FOffset := Value;
    ApplyPlacement;
  end;
end;

procedure TAdvChartCustomPopupForm.SetPlacement(const Value: TAdvChartPopupPlacement);
begin
  if FPlacement <> Value then
  begin
    FPlacement := Value;
    ApplyPlacement;
  end;
end;

procedure TAdvChartCustomPopupForm.SetPlacementRectangle(const Value: TAdvMargins);
begin
  FPlacementRectangle.Assign(Value);
end;

procedure TAdvChartCustomPopupForm.SetPlacementControl(const Value: TControl);
begin
  if FPlacementControl <> Value then
  begin
    if FPlacementControl <> nil then
      TComponent(FPlacementControl).RemoveFreeNotification(self);
    FPlacementControl := Value;
    if FPlacementControl <> nil then
      TComponent(FPlacementControl).FreeNotification(Self);
  end;
end;

procedure TAdvChartCustomPopupForm.SetSize(const Value: TSizeF);
begin
  if (FSize.cx <> Value.cx) or (FSize.cy <> Value.cy) then
  begin
    FSize := Value;
    ApplyPlacement;
  end;
end;


procedure TAdvChartCustomPopupForm.Loaded;
begin
  inherited;
  if FPlacementChanged then
    ApplyPlacement;
end;

procedure TAdvChartCustomPopupForm.UpdateBounds(LRect: TRectF);
begin
  SetBounds(Round(LRect.Left), Round(LRect.Top), Round(LRect.Width), Round(LRect.Height));
end;

procedure TAdvChartCustomPopupForm.Updated;
begin
  inherited;
  if FPlacementChanged then
    ApplyPlacement;
end;

procedure TAdvChartCustomPopupForm.DoApplyPlacement;
var
  {$IFDEF FMXLIB}
  Pos: TPointF;
  AbsolutePos: TPointF;
  MouseSvc: IFMXMouseService;
  {$ENDIF}
  {$IFDEF CMNLIB}
  pt, Pos, AbsolutePos: TPoint;
  {$ENDIF}
  LRect: TRectF;
  LPlacement: TAdvChartPopupPlacement;
  LOffset: TPointF;
  LStep: Byte;
  LSoGood: Boolean;
  SourceSize: TSizeF;
  PlacementByTarget: Boolean;
  function UpdateRectByScreen(var R: TRectF): Boolean;
  var
    WorkareaRect: TRect;
    WorkareaRectF: TRectF;
    W, H: Single;
    {$IFDEF FMXLIB}
    {$HINTS OFF}
    {$IF COMPILERVERSION > 27}
    P: TPointF;
    {$IFEND}
    {$HINTS ON}
    {$ENDIF}
  begin
    Result := True;
    R.Left := Round(R.Left);
    R.Top := Round(R.Top);
    R.Width := Round(R.Width);
    R.Height := Round(R.Height);
    {$IFDEF FMXLIB}
    {$HINTS OFF}
    {$IF COMPILERVERSION > 27}
    case LPlacement of
      ppAbsolute:
        WorkareaRect := Screen.DisplayFromRect(R).WorkareaRect;
      ppMouse, ppMouseCenter, ppAboveMouse, ppAboveMouseCenter:
        WorkareaRect := Screen.DisplayFromPoint(Screen.MousePos).WorkareaRect
    else
      if not InRange(FPreferedDisplayIndex, 0, Screen.DisplayCount - 1) then
      begin
        if (PlacementControl <> nil) and (PlacementControl.Root is TCommonCustomForm) and
          TCommonCustomForm(PlacementControl.Root).Visible then
        begin
          P := PointF(PlacementControl.Width / 2, PlacementControl.Height / 2);
          P := PlacementControl.LocalToAbsolute(P);
          FPreferedDisplayIndex := Screen.DisplayFromForm(TCommonCustomForm(PlacementControl.Root), P).Index;
        end
        else
          FPreferedDisplayIndex := Screen.DisplayFromForm(Self).Index;
      end;
      WorkareaRect := Screen.Displays[FPreferedDisplayIndex].WorkareaRect;
    end;
    {$ELSE}
    WorkareaRect := Rect(0, 0, Screen.Size.Width, Screen.Size.Height);
    {$IFEND}
    {$HINTS ON}
    {$ENDIF}
    {$IFDEF CMNLIB}
    WorkareaRect := Rect(0, 0, Screen.Width, Screen.Height);
    {$ENDIF}

    WorkareaRectF := RectF(WorkareaRect.Left - ContentPadding.Left, WorkareaRect.Top - ContentPadding.Top,
      WorkareaRect.Right + ContentPadding.Right, WorkareaRect.Bottom + ContentPadding.Bottom);
    if (not (csDesigning in ComponentState)) then
    begin
      W := R.Width;
      H := R.Height;
      if R.Left > WorkareaRectF.Left then
      begin
        if R.Left > WorkareaRectF.Right - W then
        begin
          R.Left := WorkareaRectF.Right - W;
          if LPlacement = ppRight then
          begin
            LPlacement := ppLeft;
            Result := False;
          end;
          if LPlacement = ppRightCenter then
          begin
            LPlacement := ppLeftCenter;
            Result := False;
          end;
        end;
      end
      else
      begin
        R.Left := WorkareaRectF.Left;
        if LPlacement = ppLeft then
        begin
          LPlacement := ppRight;
          Result := False;
        end;
        if LPlacement = ppLeftCenter then
        begin
          LPlacement := ppRightCenter;
          Result := False;
        end;
      end;
      if R.Top > WorkareaRectF.Top then
      begin
        if R.Top > WorkareaRectF.Bottom - H then
        begin
          R.Top := WorkareaRectF.Bottom - H;
          if LPlacement = ppBottom then
          begin
            LPlacement := ppTop;
            Result := False;
          end;
          if LPlacement = ppBottomCenter then
          begin
            LPlacement := ppTopCenter;
            Result := False;
          end;
        end;
      end
      else
      begin
        R.Top := WorkareaRectF.Top;
        if LPlacement = ppTop then
        begin
          LPlacement := ppBottom;
          Result := False;
        end;
        if LPlacement = ppTopCenter then
        begin
          LPlacement := ppBottomCenter;
          Result := False;
        end;
      end;
      R.Width := W;
      R.Height := H;
    end;
  end;
begin
  FPlacementChanged := False;
  LOffset := Offset;
  LPlacement := Placement;
  LStep := 0;
  repeat
    LRect := RectF(FPlacementRectangle.Left, FPlacementRectangle.Top, FPlacementRectangle.Right, FPlacementRectangle.Bottom);
    if (PlacementControl <> nil) and FPlacementRectangle.Empty then
      LRect := RectF(0, 0, PlacementControl.Width, PlacementControl.Height);
    if (PlacementControl = nil) and PlacementRectangle.Empty and
       (not (LPlacement in [ppAbsolute, ppMouse, ppMouseCenter, ppAboveMouse, ppAboveMouseCenter])) then
    begin
      {$IFDEF FMXLIB}
      if not TPlatformServices.Current.SupportsPlatformService(IFMXMouseService, IInterface(MouseSvc)) then
        LPlacement := ppAbsolute
      else
        LPlacement := ppMouse;
      {$ENDIF}
    end;
    FScreenPlacementRect := LRect;
    // Vertical Offset
    if LPlacement in [ppTop, ppTopCenter] then
      LRect.Offset(0, ContentPadding.Bottom - LOffset.Y)
    else
      LRect.Offset(0, LOffset.Y - ContentPadding.Top);
    // Horizontal Offset
    if LPlacement in [ppLeft, ppLeftCenter] then
      LRect.Offset(ContentPadding.Right - LOffset.X, 0)
    else
      LRect.Offset(LOffset.X - ContentPadding.Left, 0);
    // Offset by rect
    PlacementByTarget := not (LPlacement in [ppAbsolute, ppMouse, ppMouseCenter, ppAboveMouse, ppAboveMouseCenter]);
    SourceSize := Size;

    case LPlacement of
      ppBottom:
        LRect.Offset(0, LRect.Height);
      ppTop:
        LRect.Offset(0, -SourceSize.cy);
      ppLeft:
        LRect.Offset(-SourceSize.cx, 0);
      ppRight:
        LRect.Offset(LRect.Width, 0);
      ppCenter:
        LRect.Offset((LRect.Width - SourceSize.cx) / 2, (LRect.Height - SourceSize.cy) / 2);
      ppBottomCenter:
        LRect.Offset((LRect.Width - SourceSize.cx) / 2, LRect.Height);
      ppTopCenter:
        LRect.Offset((LRect.Width - SourceSize.cx) / 2, -SourceSize.cy);
      ppLeftCenter:
        LRect.Offset(-SourceSize.cx, (LRect.Height - SourceSize.cy) / 2);
      ppRightCenter:
        LRect.Offset(LRect.Width, (LRect.Height - SourceSize.cy) / 2);
      ppAbsolute:
        begin
          if FPlacementRectangle.Empty then
            LRect := RectF(FPlacementRectangle.Rect.TopLeft.X, FPlacementRectangle.Rect.TopLeft.Y, FPlacementRectangle.Rect.TopLeft.X + SourceSize.cx, FPlacementRectangle.Rect.TopLeft.Y + SourceSize.cy)
          else
            LRect := FPlacementRectangle.Rect;
        end;
      ppMouse, ppMouseCenter, ppAboveMouse, ppAboveMouseCenter:
        begin
          {$IFDEF FMXLIB}
          Pos := Screen.MousePos;
          {$ENDIF}
          {$IFDEF CMNLIB}
          Pos := Mouse.CursorPos;
          {$ENDIF}
          LRect := RectF(Pos.X, Pos.Y, Pos.X + SourceSize.cx, Pos.Y + SourceSize.cy);
          if LPlacement = ppMouseCenter then
            LRect.Offset(-SourceSize.cx / 2, -SourceSize.cy / 2);
          if LPlacement = ppAboveMouseCenter then
            LRect.Offset(-SourceSize.cx / 2, -SourceSize.cy - 5);
          if LPlacement = ppAboveMouse then
            LRect.Offset(0, -SourceSize.cy - 5);
        end;
    end;
    // use border
    if PlacementByTarget then
    begin
      {$IFDEF FMXLIB}
      AbsolutePos := PointF(LRect.TopLeft.X, LRect.TopLeft.Y);
      {$ENDIF}
      {$IFDEF CMNLIB}
      AbsolutePos := Point(Round(LRect.TopLeft.X), Round(LRect.TopLeft.Y));
      {$ENDIF}
      if PlacementControl <> nil then
      begin
        {$IFDEF FMXLIB}
        AbsolutePos := PlacementControl.LocalToAbsolute(AbsolutePos);
        FScreenPlacementRect.TopLeft := PlacementControl.LocalToAbsolute(FScreenPlacementRect.TopLeft);
        FScreenPlacementRect.BottomRight := PlacementControl.LocalToAbsolute(FScreenPlacementRect.BottomRight);
        if PlacementControl.Scene <> nil then
        begin
          AbsolutePos := PlacementControl.Scene.LocalToScreen(AbsolutePos);
          FScreenPlacementRect.TopLeft := PlacementControl.Scene.LocalToScreen(FScreenPlacementRect.TopLeft);
          FScreenPlacementRect.BottomRight := PlacementControl.Scene.LocalToScreen(FScreenPlacementRect.BottomRight);
        end;
        {$ENDIF}
        {$IFDEF CMNLIB}
        AbsolutePos := PlacementControl.ClientToScreen(AbsolutePos);
        pt := Point(Round(FScreenPlacementRect.TopLeft.X), Round(FScreenPlacementRect.TopLeft.Y));
        pt := PlacementControl.ClientToScreen(pt);
        FScreenPlacementRect.TopLeft := PointF(pt.X, pt.Y);
        pt := Point(Round(FScreenPlacementRect.BottomRight.X), Round(FScreenPlacementRect.BottomRight.Y));
        pt := PlacementControl.ClientToScreen(pt);
        FScreenPlacementRect.BottomRight := PointF(pt.X, pt.Y);
        {$ENDIF}
      end;
      LRect := RectF(AbsolutePos.X, AbsolutePos.Y, AbsolutePos.X + Size.cx, AbsolutePos.Y + Size.cy);
    end;
    LSoGood := UpdateRectByScreen(LRect);
    Inc(LStep);
  until LSoGood or (LStep > 1);
  FScreenContentRect := LRect;
  FScreenContentRect := RectF(FScreenContentRect.Left + FContentPadding.Left, FScreenContentRect.Top + FContentPadding.Top, FScreenContentRect.Right - FContentPadding.Right, FScreenContentRect.Bottom - FContentPadding.Bottom);
  FRealPlacement := LPlacement;
  UpdateBounds(LRect);
end;

procedure TAdvChartCustomPopupForm.DoBeforeClose;
begin
  if Assigned(OnBeforeClose) then
    OnBeforeClose(self);
end;

procedure TAdvChartCustomPopupForm.DoBeforeShow;
begin
  FHintWindow := False;
  if Assigned(OnBeforeShow) then
    OnBeforeShow(self);

  FFirstShow := True;

  if not Assigned(FTimer) then
    FTimer := TTimer.Create(Self);

  FTimer.Interval := 20;
  FTimer.OnTimer := TimerProc;
  FTimer.Enabled := True;
end;

procedure TAdvChartCustomPopupForm.TimerProc(Sender: TObject);
begin
  if (Visible or FHintWindow) {$IFDEF FMXLIB} and not Released {$ENDIF} and (FFirstShow or FDragWithParent) then
    ApplyPlacement;
  if (Visible or FHintWindow) {$IFDEF FMXLIB} and not Released {$ENDIF} and (FFirstShow) then
  begin
    FFirstShow := False;
  end;
end;

procedure TAdvChartCustomPopupForm.ApplyPlacement;
var
  OldRect, NewRect: TRect;
  OldRealPlacement: TAdvChartPopupPlacement;
begin
  if (([csLoading, csUpdating, csDestroying] * ComponentState) = []) {$IFDEF FMXLIB}and (not Released) {$ENDIF}then
  begin
    OldRect := Rect(Left, Top, Left + Width, Top + Height);
    OldRealPlacement := FRealPlacement;
    DoApplyPlacement;
    NewRect := Rect(Left, Top, Left + Width, Top + Height);
    if (NewRect.Left <> OldRect.Left) or (NewRect.Top <> OldRect.Top) or (NewRect.Bottom <> OldRect.Bottom) or (NewRect.Right <> OldRect.Right)
      or (OldRealPlacement <> RealPlacement) then
      DoRealPlacementChanged;
  end
  else
    FPlacementChanged := True;
end;

procedure TAdvChartCustomNonFocusablePopup.ActivatePreviousWindow;
begin
  {$IFDEF CMNLIB}
  SetActiveWindow(FActiveWindow);
  {$ENDIF}
end;

constructor TAdvChartCustomNonFocusablePopup.Create(AOwner: TComponent);
begin
  inherited;
  StaysOpen := True;
end;

destructor TAdvChartCustomNonFocusablePopup.Destroy;
begin
  inherited;
end;

function TAdvChartCustomNonFocusablePopup.GetPopupFormClass: TAdvChartCustomPopupFormClass;
begin
  Result := TAdvChartCustomNonFocusablePopupForm;
end;

procedure TAdvChartCustomNonFocusablePopup.ShowPopup(AModal: Boolean);
{$IFDEF CMNLIB}
{$IFDEF MSWINDOWS}
var
  hWin: HWND;
{$ENDIF}
{$ENDIF}
begin
  {$IFDEF FMXLIB}
  PopupForm.FormStyle := TFormStyle.Popup;
  inherited;
  {$ENDIF}
  {$IFDEF CMNLIB}
  FActiveWindow := GetActiveWindow;
  {$IFDEF MSWINDOWS}
  PopupForm.HintWindow := True;
  hWin := PopupForm.Handle;
  SetWindowPos(hwin, HWND_TOPMOST, PopupForm.Left, PopupForm.Top, PopupForm.Width, PopupForm.Height, SWP_NOACTIVATE);
  ShowWindow(hWin, SW_SHOWNOACTIVATE);
  PopupForm.Visible := True;
  {$ELSE}
  PopupForm.SetBounds(PopupForm.Left, PopupForm.Top, PopupForm.Width, PopupForm.Height);
  PopupForm.Visible := True;
  PopupForm.BorderStyle := bsSingle;
  PopupForm.BorderStyle := bsNone;
  {$ENDIF}
  SetActiveWindow(FActiveWindow);
  {$ENDIF}

  FIsOpen := True;
end;

{ TAdvChartCustomNonFocusablePopupForm }

procedure TAdvChartCustomNonFocusablePopupForm.UpdateBounds(LRect: TRectF);
{$IFDEF CMNLIB}
{$IFDEF MSWINDOWS}
var
  hWin: HWND;
{$ENDIF}
{$ENDIF}
begin
  inherited;
  {$IFDEF CMNLIB}
  {$IFDEF MSWINDOWS}
  hWin := Handle;
  SetWindowPos(hwin, HWND_TOPMOST, Round(LRect.Left), Round(LRect.Top), Round(LRect.Width), Round(LRect.Height), SWP_NOACTIVATE);
  {$ELSE}
  SetBounds(Round(LRect.Left), Round(LRect.Top), Round(LRect.Width), Round(LRect.Height));
  {$ENDIF}
  {$ENDIF}
end;

{$IFDEF CMNLIB}
{$IFDEF MSWINDOWS}
function HintWindowProc(hWnd: hWnd; uMsg: Integer; WParam: WParam;
  lParam: lParam): LRESULT; stdcall;
var
  I: Integer;
  pr: LInteger;
begin
  case uMsg of
    WM_MOUSEACTIVATE:
    begin
      Result := MA_NOACTIVATE;
      Exit;
    end;
  end;

  pr := 0;
  for I := 0 to Length(PrevWndProcs) - 1 do
  begin
    if PrevWndProcs[I].FWindowHandle = hWnd then
      pr := PrevWndProcs[I].FProc;
  end;

  Result := CallWindowProc({%H-}IntPtr(pr), hWnd, uMsg, WParam, lParam);
end;

destructor TAdvChartCustomNonFocusablePopupForm.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(PrevWndProcs) - 1 do
  begin
    if PrevWndProcs[I].FWindowHandle = Self.Handle then
      SetWindowLongPtr(Self.Handle, GWL_WNDPROC, PrevWndProcs[I].FProc);
  end;
  inherited;
end;

constructor TAdvChartCustomNonFocusablePopupForm.CreateNew(AOwner: TComponent; Dummy: Integer  = 0);
var
  r: WndProcRec;
begin
  inherited;
  SetLength(PrevWndProcs, Length(PrevWndProcs) + 1);
  r.FWindowHandle := Self.Handle;
  r.FProc := SetWindowLongPtr(Self.Handle, GWL_WNDPROC, {%H-}LInteger(@HintWindowProc));
  PrevWndProcs[Length(PrevWndProcs) - 1] := r;
end;

procedure TAdvChartCustomNonFocusablePopupForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := WS_POPUP;
    WindowClass.Style := WindowClass.Style or CS_SAVEBITS;
    if NewStyleControls then
      ExStyle := WS_EX_TOOLWINDOW or WS_EX_NOACTIVATE;
  end;
end;

procedure TAdvChartCustomNonFocusablePopupForm.WMNCHitTest(var Message: TWMNCHitTest);
begin
  Message.Result := HTTRANSPARENT;
end;

procedure TAdvChartCustomNonFocusablePopupForm.WMActivate(var Message: TWMActivate);
begin
  Message.Result := 1;
end;

{$ELSE}
procedure TAdvChartCustomNonFocusablePopupForm.WMNCHitTest(var Message: TLMessage);
begin
  Message.Result := HTTRANSPARENT;
end;

procedure TAdvChartCustomNonFocusablePopupForm.WMActivate(var Message: TLMActivate);
begin
  Message.Result := 1;
  if (Owner is TAdvChartCustomNonFocusablePopup) then
    (Owner as TAdvChartCustomNonFocusablePopup).ActivatePreviousWindow;
end;
{$ENDIF}
{$ENDIF}

{ TAdvChartNonFocusablePopup }

procedure TAdvChartNonFocusablePopup.Activate;
begin
  DoCreatePopup(False);
end;

end.
