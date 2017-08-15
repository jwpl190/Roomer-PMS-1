unit uRoomerDialogForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uRoomerForm, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinsdxStatusBarPainter, cxGridTableView, cxStyles, dxPScxCommon, dxPScxGridLnk, cxClasses, cxPropertiesStore,
  dxStatusBar, Vcl.ExtCtrls, sPanel, Vcl.StdCtrls, sButton, Vcl.ComCtrls, sStatusBar, acProgressBar,
  AdvSmoothProgressBar
  , Generics.Collections

  ;

type
  /// <summary>
  ///   Dialog implementation of ROomerBaseForm
  ///  The available buttons can be set with the DialogButons property
  /// </summary>
  TfrmBaseRoomerDialogForm = class(TfrmBaseRoomerForm)
    pnlButtons: TsPanel;
    btnOK: TsButton;
    btnCancel: TsButton;
    btnClose: TsButton;
  private
    FDialogButtons: TMsgDlgButtons;
    FOrderedButtonList: TList<TButton>;
    procedure SetDialogButtons(const Value: TMsgDlgButtons);
    procedure CorrectButtonDisplayOrder;
    procedure FillButtonList;
    { Private declarations }
  protected
    procedure DoShow; override;
    procedure DoUpdateControls; override;
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    { Public declarations }
    property DialogButtons: TMsgDlgButtons read FDialogButtons write SetDialogButtons;
  end;

implementation

{$R *.dfm}

uses
  Generics.Defaults
  ;

type
  TButtonTabOrderComparer = TComparer<TButton>;

{ TfrmBaseRoomerDialogForm }

procedure TfrmBaseRoomerDialogForm.CorrectButtonDisplayOrder;
var
  b: TButton;
begin
  for b in FOrderedButtonList do
    b.Left := 0;
end;

constructor TfrmBaseRoomerDialogForm.Create(aOwner: TComponent);
begin
  inherited;
  FOrderedButtonList := TList<TButton>.Create;
end;

destructor TfrmBaseRoomerDialogForm.Destroy;
begin
  FOrderedButtonList.Free;
  inherited;
end;

procedure TfrmBaseRoomerDialogForm.DoShow;
begin
  inherited;
  FillButtonList;
  DialogButtons := mbOkCancel;
  RefreshData;
end;

procedure TfrmBaseRoomerDialogForm.FillButtonList;
var
  i: integer;
begin
  FOrderedButtonList.Clear;
  for i := 0 to pnlButtons.ControlCount-1 do
    if pnlButtons.Controls[i] is TButton then
      FOrderedButtonList.Add(TButton(pnlButtons.Controls[i]));

  // Sort in reverse order
  FOrderedButtonList.Sort(TButtonTabOrderComparer.Construct(
              function (const L, R: TButton): integer
              begin
                result := R.TabOrder - L.TabOrder;
              end
            ));
end;


procedure TfrmBaseRoomerDialogForm.DoUpdateControls;
var
  b: TButton;
begin
  inherited;

  for b in FOrderedButtonList do
    b.Visible := TMsgDlgBtn(b.Tag) in FDialogButtons;

  CorrectButtonDisplayOrder;
end;

procedure TfrmBaseRoomerDialogForm.SetDialogButtons(const Value: TMsgDlgButtons);
begin
  FDialogButtons := Value;
  UpdateControls;
end;

end.
