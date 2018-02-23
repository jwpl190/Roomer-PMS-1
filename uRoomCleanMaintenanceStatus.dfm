object frmRoomCleanMaintenanceStatus: TfrmRoomCleanMaintenanceStatus
  Left = 0
  Top = 0
  ActiveControl = sButton1
  BorderStyle = bsToolWindow
  Caption = 'Room Status'
  ClientHeight = 368
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TsLabel
    Left = 12
    Top = 69
    Width = 83
    Height = 18
    Caption = 'Room status'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object btnAllUnClean: TsButton
    Left = 99
    Top = 335
    Width = 94
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'All unclean'
    Default = True
    ModalResult = 2
    TabOrder = 25
    OnClick = sButton6Click
    SkinData.SkinSection = 'BUTTON'
  end
  object btnAllClean: TsButton
    Left = 1
    Top = 335
    Width = 94
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'All clean'
    Default = True
    ModalResult = 2
    TabOrder = 24
    OnClick = btnAllCleanClick
    SkinData.SkinSection = 'BUTTON'
  end
  object cbxC: TsRadioButton
    Left = 35
    Top = 164
    Width = 45
    Height = 20
    Caption = 'Clean'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object cbxU: TsRadioButton
    Left = 35
    Top = 100
    Width = 56
    Height = 20
    Caption = 'Unclean'
    TabOrder = 1
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object cbxO: TsRadioButton
    Left = 35
    Top = 259
    Width = 83
    Height = 20
    Caption = 'Out of service'
    TabOrder = 2
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object edtC: TsEdit
    Left = 11
    Top = 164
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object edtU: TsEdit
    Left = 11
    Top = 100
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object edtO: TsEdit
    Left = 11
    Top = 259
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object cbxS: TsRadioButton
    Left = 35
    Top = 187
    Width = 151
    Height = 20
    Caption = 'Clean but needs maintenance'
    TabOrder = 6
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object cbxF: TsRadioButton
    Left = 35
    Top = 211
    Width = 97
    Height = 20
    Caption = 'maint in progress'
    TabOrder = 7
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object cbxW: TsRadioButton
    Left = 35
    Top = 121
    Width = 82
    Height = 20
    Caption = 'Being cleaned'
    TabOrder = 8
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object edtS: TsEdit
    Left = 11
    Top = 187
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object edtF: TsEdit
    Left = 11
    Top = 211
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object edtW: TsEdit
    Left = 11
    Top = 121
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object cbxR: TsRadioButton
    Left = 35
    Top = 142
    Width = 75
    Height = 20
    Caption = 'Ready for in'
    TabOrder = 12
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object cbxL: TsRadioButton
    Left = 35
    Top = 283
    Width = 86
    Height = 20
    Caption = 'Wait for check'
    TabOrder = 13
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object edtR: TsEdit
    Left = 11
    Top = 142
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object edtL: TsEdit
    Left = 11
    Top = 283
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object cbxD: TsRadioButton
    Left = 35
    Top = 306
    Width = 69
    Height = 20
    Caption = 'Do not dist'
    TabOrder = 16
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object cbxM: TsRadioButton
    Left = 35
    Top = 235
    Width = 76
    Height = 20
    Caption = 'Maintain nee'
    TabOrder = 17
    OnClick = cbxCClick
    SkinData.SkinSection = 'CHECKBOX'
  end
  object edtD: TsEdit
    Left = 11
    Top = 306
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 18
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object edtM: TsEdit
    Left = 11
    Top = 235
    Width = 20
    Height = 18
    TabStop = False
    BorderStyle = bsNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1447447
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 19
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
  end
  object sButton1: TsButton
    Left = 209
    Top = 335
    Width = 65
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Cancel = True
    Caption = 'Close'
    Default = True
    ModalResult = 2
    TabOrder = 20
    SkinData.SkinSection = 'BUTTON'
  end
  object pnlCleaningNotes: TsPanel
    Left = 0
    Top = 0
    Width = 277
    Height = 40
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 21
    SkinData.SkinSection = 'PANEL'
    object lblCleaningNotes: TsLabelFX
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 271
      Height = 15
      Cursor = crHandPoint
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      AutoSize = False
      Caption = 'Cleaning notes'
      ParentFont = False
      OnClick = lblCleaningNotesClick
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      Angle = 0
      Shadow.Color = clSilver
      Shadow.Distance = 2
      Shadow.OffsetKeeper.LeftTop = -1
      Shadow.OffsetKeeper.RightBottom = 3
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 267
    end
    object shpCleaningNotes: TShape
      Left = 179
      Top = 3
      Width = 21
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Brush.Color = clRed
      Pen.Color = clWhite
      Shape = stCircle
    end
    object mmoCleaningNotes: TsMemo
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 271
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelInner = bvSpace
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
    end
    object pnlCleaningNotes_Button: TsPanel
      Left = 1
      Top = 13
      Width = 275
      Height = 26
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      SkinData.SkinSection = 'PANEL'
      object sButton2: TsButton
        Left = 218
        Top = 0
        Width = 57
        Height = 26
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        Caption = 'Close'
        TabOrder = 0
        OnClick = sButton2Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object pnlLostAndFound: TsPanel
    Left = 0
    Top = 70
    Width = 277
    Height = 34
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 22
    SkinData.SkinSection = 'PANEL'
    object lblLostAndFound: TsLabelFX
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 271
      Height = 15
      Cursor = crHandPoint
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      AutoSize = False
      Caption = 'Lost & Found'
      ParentFont = False
      OnClick = lblCleaningNotesClick
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      Angle = 0
      Shadow.Color = clSilver
      Shadow.Distance = 2
      Shadow.OffsetKeeper.LeftTop = -1
      Shadow.OffsetKeeper.RightBottom = 3
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 267
    end
    object shpLostAndFound: TShape
      Left = 179
      Top = 3
      Width = 21
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Brush.Color = clRed
      Pen.Color = clWhite
      Shape = stCircle
    end
    object mmoLostAndFound: TsMemo
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 271
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelInner = bvSpace
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'regel 1'
        'regel 2')
      ParentFont = False
      TabOrder = 0
      Text = 'regel 1'#13#10'regel 2'#13#10
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
      ExplicitTop = 26
    end
    object pnlLostAndFound_Button: TsPanel
      Left = 1
      Top = 5
      Width = 275
      Height = 28
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      SkinData.SkinSection = 'PANEL'
      ExplicitLeft = 3
      ExplicitTop = 4
      object sButton3: TsButton
        Left = 218
        Top = 0
        Width = 57
        Height = 28
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        Caption = 'Close'
        TabOrder = 0
        OnClick = sButton2Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object pnlMaintenanceNotes: TsPanel
    Left = 0
    Top = 40
    Width = 277
    Height = 30
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 23
    SkinData.SkinSection = 'PANEL'
    object lblMaintenanceNotes: TsLabelFX
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 271
      Height = 15
      Cursor = crHandPoint
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      AutoSize = False
      Caption = 'Maintenance notes'
      ParentFont = False
      OnClick = lblCleaningNotesClick
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      Angle = 0
      Shadow.Color = clSilver
      Shadow.Distance = 2
      Shadow.OffsetKeeper.LeftTop = -1
      Shadow.OffsetKeeper.RightBottom = 3
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 267
    end
    object shpMaintenanceNotes: TShape
      Left = 179
      Top = 3
      Width = 21
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Brush.Color = clRed
      Pen.Color = clWhite
      Shape = stCircle
    end
    object mmoMaintenanceNotes: TsMemo
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 271
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelInner = bvSpace
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      SkinData.SkinSection = 'EDIT'
    end
    object pnlMaintenanceNotes_Button: TsPanel
      Left = 1
      Top = 2
      Width = 275
      Height = 27
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      SkinData.SkinSection = 'PANEL'
      object sButton4: TsButton
        Left = 218
        Top = 0
        Width = 57
        Height = 27
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        Caption = 'Close'
        TabOrder = 0
        OnClick = sButton2Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
end
