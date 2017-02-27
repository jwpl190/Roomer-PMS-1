{***************************************************************************}
{ TAdvChartAnnotationEditorGDIP component                                   }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright � 2013                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}

unit AdvChartAnnotationEditorGDIP;

{$I TMSDEFS.INC}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvChartView, AdvChart, ExtDlgs, StdCtrls, Mask, AdvChartSpin,
  AdvChartSelectors, ExtCtrls, ComCtrls, Buttons, AdvchartviewGDIP, AdvChartGDIP;


type
  TSaveMode = (notsaving, saving, cancel);

  TAdvChartAnnotationsEditorFormGDIP = class(TForm)
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet8: TTabSheet;
    GroupBox26: TGroupBox;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label108: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    GroupBox28: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label31: TLabel;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    Edit2: TEdit;
    CheckBox8: TCheckBox;
    GroupBox29: TGroupBox;
    Label35: TLabel;
    Label75: TLabel;
    ComboBox14: TComboBox;
    SpinEdit22: TAdvChartSpinEdit;
    CheckBox7: TCheckBox;
    GroupBox30: TGroupBox;
    Label79: TLabel;
    Label83: TLabel;
    ComboBox16: TComboBox;
    SpinEdit24: TAdvChartSpinEdit;
    AdvChartColorSelector6: TAdvChartColorSelector;
    SpinEdit30: TAdvChartSpinEdit;
    SpinEdit35: TAdvChartSpinEdit;
    Button1: TButton;
    SpinEdit37: TAdvChartSpinEdit;
    GroupBox31: TGroupBox;
    Label109: TLabel;
    Label110: TLabel;
    SpinEdit38: TAdvChartSpinEdit;
    SpinEdit39: TAdvChartSpinEdit;
    SpinEdit40: TAdvChartSpinEdit;
    ComboBox19: TComboBox;
    CheckBox9: TCheckBox;
    Panel4: TPanel;
    Button15: TButton;
    Button16: TButton;
    ListBox1: TListBox;
    OpenPictureDialog1: TOpenPictureDialog;
    FontDialog1: TFontDialog;
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TAdvChartSpinEdit;
    AdvChartColorSelector1: TAdvChartColorSelector;
    Label3: TLabel;
    AdvChartColorSelector2: TAdvChartColorSelector;
    Label4: TLabel;
    AdvChartColorSelector3: TAdvChartColorSelector;
    AdvChartColorSelector4: TAdvChartColorSelector;
    Label133: TLabel;
    Label134: TLabel;
    AdvChartSpinEdit3: TAdvChartSpinEdit;
    AdvChartSpinEdit4: TAdvChartSpinEdit;
    Label5: TLabel;
    Label16: TLabel;
    ComboBox3: TComboBox;
    ComboBox25: TComboBox;
    Label17: TLabel;
    Label131: TLabel;
    AdvChartSpinEdit2: TAdvChartSpinEdit;
    CheckBox29: TCheckBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    AdvChartSpinEdit1: TAdvChartSpinEdit;
    SpeedButton3: TSpeedButton;
    ColorDialog1: TColorDialog;
    Label7: TLabel;
    Button2: TButton;
    procedure ListBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure AdvChartColorSelector3Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure AdvChartColorSelector4Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure AdvChartColorSelector6Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure SpinEdit35Change(Sender: TObject);
    procedure SpinEdit30Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpinEdit37Change(Sender: TObject);
    procedure SpinEdit40Change(Sender: TObject);
    procedure ComboBox19Change(Sender: TObject);
    procedure ComboBox14Change(Sender: TObject);
    procedure SpinEdit22Change(Sender: TObject);
    procedure ComboBox16Change(Sender: TObject);
    procedure SpinEdit24Change(Sender: TObject);
    procedure ComboBox11Change(Sender: TObject);
    procedure ComboBox12Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure SpinEdit38Change(Sender: TObject);
    procedure SpinEdit39Change(Sender: TObject);
    procedure AdvChartColorSelector1Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure SpinEdit1Change(Sender: TObject);
    procedure AdvChartColorSelector2Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox25Change(Sender: TObject);
    procedure AdvChartSpinEdit2Change(Sender: TObject);
    procedure CheckBox29Click(Sender: TObject);
    procedure AdvChartSpinEdit4Change(Sender: TObject);
    procedure AdvChartSpinEdit3Change(Sender: TObject);
    procedure AdvChartSpinEdit1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FChartview: TAdvChartView;
    FChartAnnotations: TChartGDIPAnnotations;
    Mode: TSaveMode;
    FApply: TNotifyEvent;
    { Private declarations }
    procedure CorrectTop(lbl: TLabel);
  public
    property ChartView: TAdvChartView read FChartview write FChartview;
    property chartAnnotations: TChartGDIPAnnotations read FChartAnnotations write FChartAnnotations;
    procedure Init;
    procedure InitListBox;
    procedure SaveChanges;
    property Apply: TNotifyEvent read FApply write FApply;
    { Public declarations }
  end;

  {$IFDEF DELPHIXE2_LVL}
  [ComponentPlatformsAttribute(pidWin32 or pidWin64)]
  {$ENDIF}
  TAdvChartAnnotationsEditorDialogGDIP = class(TCommonDialog)
  private
    FForm: TAdvChartAnnotationsEditorFormGDIP;
    FChartView: TAdvGDIPChartView;
    FChartPaneIndex: Integer;
    FChartSerieIndex: integer;
    FCaption: string;
    FAllowAnnotationNameChange: Boolean;
    FAllowAnnotationAdding: Boolean;
    FAllowAnnotationRemoving: Boolean;
    procedure SetChartPaneIndex(const Value: integer);
    procedure SetChartView(const Value: TAdvGDIPChartView);
    procedure SetSerieIndex(const Value: integer);
  protected
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;  
  public
    constructor Create(AOwner: TComponent); override;
    function Execute: Boolean; override;
    property Form: TAdvChartAnnotationsEditorFormGDIP read FForm;
  published
    property Caption: string read FCaption write FCaption;
    property SerieIndex: integer read FChartSerieIndex write SetSerieIndex;
    property ChartPaneIndex: integer read FChartPaneIndex write SetChartPaneIndex;
    property ChartView: TAdvGDIPChartView read FChartView write SetChartView;
    property AllowAnnotationNameChange: Boolean read FAllowAnnotationNameChange write FAllowAnnotationNameChange default true;
    property AllowAnnotationRemoving: Boolean read FAllowAnnotationRemoving write FAllowAnnotationRemoving default true;
    property AllowAnnotationAdding: Boolean read FAllowAnnotationAdding write FAllowAnnotationAdding default true;
  end;

var
  AdvChartAnnotationsEditorFormGDIP: TAdvChartAnnotationsEditorFormGDIP;
  col: TChartGDIPAnnotations;
  an: TChartGDIPAnnotation;

implementation

{$R *.dfm}

uses
  Types
  {$IFDEF DELPHIXE2_LVL}
  ,UITypes
  {$ENDIF}
  ;

{ TAdvChartAnnotationsEditorDialog }

constructor TAdvChartAnnotationsEditorDialogGDIP.Create(AOwner: TComponent);
begin
  inherited;
  FAllowAnnotationRemoving := true;
  FAllowAnnotationNameChange := true;
  FAllowAnnotationAdding := true;
end;

function TAdvChartAnnotationsEditorDialogGDIP.Execute: Boolean;
begin
  if not Assigned(FChartView) then
  begin
    raise Exception.Create('The dialog does not have AdvChartView Component assigned.');
    Result := False;
    Exit;
  end;

  FForm := TAdvChartAnnotationsEditorFormGDIP.Create(Application);
  FForm.ChartView := FChartView;
  FForm.chartAnnotations := FChartView.Panes[ChartPaneIndex].Series[SerieIndex].Annotations;
  FForm.SpeedButton3.Enabled := AllowAnnotationNameChange;
  FForm.SpeedButton2.Enabled := AllowAnnotationAdding;
  FForm.SpeedButton1.Enabled := AllowAnnotationRemoving;
  if FCaption <> '' then
    Form.Caption := FCaption;
  try
    FForm.Init;
    if Assigned(OnShow) then
      OnShow(Self);
    Result := FForm.ShowModal = mrOK;
    if Assigned(OnClose) then
      OnClose(Self);
  finally
    FForm.Free;
  end;
end;

procedure TAdvChartAnnotationsEditorDialogGDIP.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited;
  if (AComponent = FChartView) and (AOperation = opRemove) then
    FChartView := nil;
end;

procedure TAdvChartAnnotationsEditorDialogGDIP.SetChartPaneIndex(
  const Value: integer);
begin
  if not Assigned(FChartView)  then
  begin
    FChartPaneIndex := Value;
    Exit;
  end
  else
  begin
    if (Value <= FChartView.Panes.Count - 1) and (Value >= 0) then
      FChartPaneIndex := Value
    else
      FChartPaneIndex := FChartView.Panes.Count - 1;
  end;
end;

procedure TAdvChartAnnotationsEditorDialogGDIP.SetChartView(
  const Value: TAdvGDIPChartView);
begin
  FChartView := Value;
end;

procedure TAdvChartAnnotationsEditorDialogGDIP.SetSerieIndex(const Value: integer);
begin
  if not Assigned(FChartView)  then
  begin
    FChartSerieIndex := Value;
    Exit;
  end
  else
  begin
    if (FChartPaneIndex <= FChartView.Panes.Count - 1) and (FChartPaneIndex >= 0) then
      if (Value <= FChartView.Panes[FChartPaneIndex].Series.Count - 1) and (value >= 0) then
        FChartSerieIndex := Value
      else
        FChartSerieIndex := FChartView.Panes[0].Series.Count - 1;
  end;
end;

{ TAdvChartAnnotationsEditorForm }

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartColorSelector1Select(
  Sender: TObject; Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector1.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector1.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector1.SelectedColor := ColorDialog1.Color;
    end;
  end;

  an.LineColor := AdvChartColorSelector1.SelectedColor;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartColorSelector2Select(
  Sender: TObject; Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector2.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector1.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector1.SelectedColor := ColorDialog1.Color;
    end;
  end;

  an.ArrowColor := AdvChartColorSelector2.SelectedColor;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartColorSelector3Select(
  Sender: TObject; Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector3.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector3.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector3.SelectedColor := ColorDialog1.Color;
    end;
  end;

  an.Color := AdvChartColorSelector3.SelectedColor;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartColorSelector4Select(
  Sender: TObject; Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector4.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector4.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector4.SelectedColor := ColorDialog1.Color;
    end;
  end;    

  an.ColorTo := AdvChartColorSelector4.SelectedColor;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartColorSelector6Select(
  Sender: TObject; Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector6.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector6.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector6.SelectedColor := ColorDialog1.Color;
    end;
  end;

  an.BorderColor := AdvChartColorSelector6.SelectedColor;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartSpinEdit1Change(
  Sender: TObject);
begin
  an.PointIndex := AdvChartSpinEdit1.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartSpinEdit2Change(
  Sender: TObject);
begin
  an.Angle := AdvChartSpinEdit2.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartSpinEdit3Change(
  Sender: TObject);
begin
  an.OpacityTo := AdvChartSpinEdit3.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.AdvChartSpinEdit4Change(
  Sender: TObject);
begin
  an.Opacity := AdvChartSpinEdit4.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.Button15Click(Sender: TObject);
begin
  Mode := saving;
  SaveChanges;
  Self.Close;
  ModalResult := mrOk;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.Button16Click(Sender: TObject);
begin
  Mode := cancel;
  Self.Close;
  ModalResult := mrCancel;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.Button1Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(an.Font);
  if FontDialog1.Execute then
  begin
    an.Font.Assign(FontDialog1.Font);
    Label7.font.assign(an.font);
    CorrectTop(label7);
  end;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.Button2Click(Sender: TObject);
begin
  SaveChanges;
  if Assigned(Apply) then
    Apply(Self);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.CheckBox29Click(Sender: TObject);
begin
  an.Shadow := CheckBox29.Checked;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.CheckBox7Click(Sender: TObject);
begin
  an.AutoSize := CheckBox7.Checked;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.CheckBox8Click(Sender: TObject);
begin
  an.WordWrap := CheckBox8.Checked;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.CheckBox9Click(Sender: TObject);
begin
  an.Visible := CheckBox9.Checked;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ComboBox11Change(Sender: TObject);
begin
  an.TextHorizontalAlignment := TAlignment(ComboBox11.ItemIndex);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ComboBox12Change(Sender: TObject);
begin
  an.TextVerticalAlignment := TVerticalAlignment(ComboBox12.ItemIndex);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ComboBox14Change(Sender: TObject);
begin
  an.Arrow := TannotationArrow(ComboBox14.ItemIndex);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ComboBox16Change(Sender: TObject);
begin
  an.BalloonDirection := TAnnotationBalloonDirection(ComboBox16.ItemIndex);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ComboBox19Change(Sender: TObject);
begin
  an.Shape := TannotationShape(ComboBox19.ItemIndex);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ComboBox25Change(Sender: TObject);
begin
  an.HatchStyle := Thatchstyle(ComboBox25.ItemIndex);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ComboBox3Change(Sender: TObject);
begin
  an.GradientType := TchartGradientType(ComboBox3.ItemIndex);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.CorrectTop(lbl: TLabel);
begin
  lbl.Top := Round(lbl.Tag - (lbl.Font.Size - 8) / 2);
end;

procedure TAdvChartAnnotationsEditorFormGDIP.Edit2Change(Sender: TObject);
begin
  an.Text := Edit2.Text;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Mode = notsaving then
  begin
    case MessageDlg('Save Changes ?',mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes:
      begin
        SaveChanges;
        col.Free;
        ModalResult := mrOk;
      end;
      mrNo:
      begin
        col.Free;
        ModalResult := mrCancel;
      end;
      mrCancel: Action := caNone;
    end;
  end
  else
  begin
    col.Free;
  end;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.FormKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Mode := saving;
    SaveChanges;
    Self.Close;
    ModalResult := mrok;
  end
  else if Key = VK_ESCAPE then
  begin
    Mode := cancel;
    Self.Close;
    ModalResult := mrCancel;
  end
  else if (Key = VK_DELETE) and (ListBox1.Focused) then
  begin
    if listbox1.ItemIndex >= 0 then
    begin
      if MessageDlg('Do you want to remove the selected annotation?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        col[Listbox1.ItemIndex].Free;
        InitListBox;
      end;
    end;
  end;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.InitListBox;
var
  i: integer;
begin
  ListBox1.Items.Clear;
  for i := 0 to Col.Count - 1 do
  begin
    listbox1.Items.Add(inttostr(i) + ' : ' + Col[i].Name);
  end;

  if Listbox1.Items.Count = 0 then
  begin
    PageControl1.Enabled := false;
    PageControl1.Visible := false;
    Panel3.Visible := true;
  end
  else
  begin
    ListBox1.ItemIndex := 0;
    ListBox1Click(ListBox1);
  end;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.Init;
var
  i: integer;
begin
  PageControl1.ActivePageIndex := 0;
  col := TChartGDIPAnnotations.Create(TAdvGDIPChartSerie(chartAnnotations.Owner));
  ListBox1.Items.Clear;
  for i := 0 to chartAnnotations.Count - 1 do
  begin
    col.Add;
    col[i].Assign(chartAnnotations[i]);
  end;
  InitListBox;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.ListBox1Click(Sender: TObject);
begin
  if listbox1.ItemIndex >= 0 then
  begin
    an := Col[listbox1.ItemIndex];
    PageControl1.Enabled := not (an = nil);
    PageControl1.Visible := not (an = nil);
    Panel3.Visible := false;

    CheckBox7.Checked := an.AutoSize;
    CheckBox9.Checked := an.Visible;
    AdvChartColorSelector3.Selectedcolor := an.Color;
    AdvChartColorSelector4.SelectedColor := an.ColorTo;
    AdvChartColorSelector6.SelectedColor := an.BorderColor;
    SpinEdit35.Value := an.Borderwidth;
    SpinEdit30.Value := an.BorderRounding;
    ComboBox3.ItemIndex := Integer(an.GradientType);
    ComboBox25.ItemIndex := Integer(an.HatchStyle);
    AdvChartSpinEdit2.Value := an.Angle;
    CheckBox29.Checked := an.Shadow;
    AdvChartSpinEdit4.Value := an.Opacity;
    AdvChartSpinEdit3.Value := an.OpacityTo;
    SpinEdit37.Value := an.Height;
    SpinEdit40.Value := an.Width;
    ComboBox19.ItemIndex := Integer(an.Shape);
    ComboBox14.ItemIndex := Integer(an.Arrow);
    SpinEdit22.Value := an.ArrowSize;
    ComboBox16.ItemIndex := Integer(an.BalloonDirection);
    SpinEdit24.Value := an.BalloonArrowSize;
    ComboBox11.ItemIndex := Integer(an.TextHorizontalAlignment);
    ComboBox12.ItemIndex := Integer(an.TextVerticalAlignment);
    Edit2.Text := an.Text;
    CheckBox8.Checked := an.WordWrap;
    SpinEdit38.Value := an.OffsetX;
    SpinEdit39.Value := an.OffsetY;
    SpinEdit1.Value := an.LineWidth;
    AdvChartColorSelector1.SelectedColor := an.LineColor;
    AdvchartColorSelector2.SelectedColor := an.ArrowColor;
    AdvChartColorSelector3.SelectedColor := an.Color;
    AdvchartColorSelector4.SelectedColor := an.ColorTo;
    ComboBox3.ItemIndex := Integer(an.GradientType);
    ComboBox25.ItemIndex := Integer(an.HatchStyle);
    AdvChartSpinEdit2.Value := an.Angle;
    CheckBox29.Checked := an.Shadow;
    AdvChartSpinEdit4.Value := an.Opacity;
    AdvChartSpinEdit3.Value := an.OpacityTo;
    AdvChartSpinEdit1.Value := an.PointIndex;
    Label7.Font.assign(an.Font);
    CorrectTop(label7);
  end;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SaveChanges;
var
  i: integer;
begin
  FChartview.BeginUpdate;
  chartAnnotations.Clear;
  for I := 0 to col.Count - 1 do
  begin
    chartAnnotations.Add;
    chartAnnotations[I].Assign(col[I]);
  end;
  FChartview.EndUpdate;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpeedButton1Click(Sender: TObject);
begin
  if listbox1.ItemIndex >= 0 then
  begin
    Col[Listbox1.ItemIndex].Free;
    InitListbox;
  end;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpeedButton2Click(Sender: TObject);
begin
  Col.Add;
  InitListBox;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpeedButton3Click(Sender: TObject);
var
  s: String;
begin
  if ListBox1.Items.Count <> 0 then
  begin
    InputQuery('Annotation name', 'Please enter new name',s);
    if s <> '' then
    begin
      an.name := s;
      ListBox1.Items[an.Index] := s;
    end;
  end;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit1Change(Sender: TObject);
begin
  an.LineWidth := SpinEdit1.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit22Change(Sender: TObject);
begin
  an.ArrowSize := SpinEdit22.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit24Change(Sender: TObject);
begin
  an.BalloonArrowSize := SpinEdit24.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit30Change(Sender: TObject);
begin
  an.BorderRounding := spinEdit30.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit35Change(Sender: TObject);
begin
  an.BorderWidth := SpinEdit35.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit37Change(Sender: TObject);
begin
  an.Height := SpinEdit37.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit38Change(Sender: TObject);
begin
  an.OffsetX := SpinEdit38.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit39Change(Sender: TObject);
begin
  an.OffsetY := SpinEdit39.Value;
end;

procedure TAdvChartAnnotationsEditorFormGDIP.SpinEdit40Change(Sender: TObject);
begin
  an.Width := SpinEdit40.Value;
end;

end.
