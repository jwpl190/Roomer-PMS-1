object frmChannelAvailabilityManager: TfrmChannelAvailabilityManager
  Left = 0
  Top = 0
  Caption = 'Channel Availability'
  ClientHeight = 656
  ClientWidth = 1254
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 12
  object pnlHolder: TsPanel
    Left = 0
    Top = 0
    Width = 1254
    Height = 656
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object pnlBulkChanges: TsPanel
      Left = 0
      Top = 31
      Width = 475
      Height = 612
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      OnResize = pnlBulkChangesResize
      SkinData.SkinSection = 'PANEL'
      object pnlHideEdits: TsPanel
        Left = 0
        Top = 0
        Width = 431
        Height = 612
        Align = alClient
        BevelOuter = bvNone
        Caption = '-'
        ParentBackground = False
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        DesignSize = (
          431
          612)
        object lblBulkUpdate: TsLabel
          Left = 0
          Top = 0
          Width = 431
          Height = 34
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Bulk availability update'
          ParentFont = False
          Layout = tlCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object lblReadTime: TsLabel
          Left = 5
          Top = 544
          Width = 52
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Anchors = [akLeft, akBottom]
          Caption = 'Read time:'
          ParentFont = False
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblDrawTime: TsLabel
          Left = 5
          Top = 561
          Width = 52
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Anchors = [akLeft, akBottom]
          Caption = 'Draw time:'
          ParentFont = False
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object pnlRestrictions: TsPanel
          AlignWithMargins = True
          Left = 3
          Top = 288
          Width = 425
          Height = 169
          Align = alTop
          AutoSize = True
          Padding.Top = 3
          Padding.Bottom = 3
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object lblMinStay: TsLabel
            Left = 134
            Top = 7
            Width = 64
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            AutoSize = False
            Caption = 'Minimum stay'
            Enabled = False
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
          end
          object lblMaximumStay: TsLabel
            Left = 134
            Top = 36
            Width = 68
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            AutoSize = False
            Caption = 'Maximum stay'
            Enabled = False
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
          end
          object cbxStopSell: TsLabel
            Left = 144
            Top = 83
            Width = 37
            Height = 12
            Alignment = taRightJustify
            Caption = 'Stop sell'
          end
          object cbxClosedOnArrival: TsLabel
            Left = 101
            Top = 114
            Width = 80
            Height = 12
            Alignment = taRightJustify
            Caption = 'Closed On Arrival'
          end
          object cbxClosedOnDeparture: TsLabel
            Left = 86
            Top = 145
            Width = 95
            Height = 12
            Alignment = taRightJustify
            Caption = 'Closed On Departure'
          end
          object sLabel6: TsLabel
            Left = 10
            Top = 7
            Width = 68
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Restrictions'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object __cbxRestrictions: TsCheckBox
            Left = 106
            Top = 7
            Width = 20
            Height = 16
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            TabOrder = 0
            OnClick = __cbxRestrictionsClick
            SkinData.SkinSection = 'CHECKBOX'
            ImgChecked = 0
            ImgUnchecked = 0
          end
          object edtMinStay: TsEdit
            Left = 218
            Top = 4
            Width = 66
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Alignment = taRightJustify
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnChange = dtBulkToChange
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -13
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
          end
          object edtMaximumStay: TsEdit
            Left = 218
            Top = 33
            Width = 66
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Alignment = taRightJustify
            Color = clWhite
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnChange = dtBulkToChange
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -13
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Style = []
          end
          object btnStopSell_Off: TsButton
            Left = 194
            Top = 78
            Width = 67
            Height = 25
            Caption = 'Off'
            ImageIndex = 11
            Images = DImages.ilGuests
            TabOrder = 5
            OnClick = btnStopSell_OffClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnStopSell_On: TsButton
            Left = 333
            Top = 78
            Width = 67
            Height = 25
            Caption = 'On'
            ImageIndex = 11
            Images = DImages.ilGuests
            TabOrder = 7
            OnClick = btnStopSell_OnClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnStopSell_Clear: TsButton
            Left = 267
            Top = 78
            Width = 60
            Height = 25
            Caption = 'Clear'
            TabOrder = 6
            OnClick = btnStopSell_ClearClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnCloseOnArrival_Off: TsButton
            Left = 194
            Top = 109
            Width = 67
            Height = 25
            Caption = 'Off'
            ImageIndex = 11
            Images = DImages.ilGuests
            TabOrder = 8
            OnClick = btnStopSell_OffClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnCloseOnArrival_Clear: TsButton
            Left = 267
            Top = 109
            Width = 60
            Height = 25
            Caption = 'Clear'
            TabOrder = 9
            OnClick = btnStopSell_ClearClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnCloseOnArrival_On: TsButton
            Left = 333
            Top = 109
            Width = 67
            Height = 25
            Caption = 'On'
            ImageIndex = 11
            Images = DImages.ilGuests
            TabOrder = 10
            OnClick = btnStopSell_OnClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnCloseOnDeparture_Off: TsButton
            Left = 194
            Top = 140
            Width = 67
            Height = 25
            Caption = 'Off'
            ImageIndex = 11
            Images = DImages.ilGuests
            TabOrder = 11
            OnClick = btnStopSell_OffClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnCloseOnDeparture_On: TsButton
            Left = 333
            Top = 140
            Width = 67
            Height = 25
            Caption = 'On'
            ImageIndex = 11
            Images = DImages.ilGuests
            TabOrder = 13
            OnClick = btnStopSell_OnClick
            SkinData.SkinSection = 'BUTTON'
          end
          object btnCloseOnDeparture_Clear: TsButton
            Left = 267
            Top = 140
            Width = 60
            Height = 25
            Caption = 'Clear'
            TabOrder = 12
            OnClick = btnStopSell_ClearClick
            SkinData.SkinSection = 'BUTTON'
          end
          object cbxStayThrough: TsCheckBox
            Left = 305
            Top = 7
            Width = 88
            Height = 16
            Caption = 'Stay through'
            Enabled = False
            TabOrder = 3
            SkinData.SkinSection = 'CHECKBOX'
            ImgChecked = 0
            ImgUnchecked = 0
          end
          object cbxBasedOnArrival: TsCheckBox
            Left = 305
            Top = 36
            Width = 102
            Height = 16
            Caption = 'Based on Arrival'
            Enabled = False
            TabOrder = 4
            SkinData.SkinSection = 'CHECKBOX'
            ImgChecked = 0
            ImgUnchecked = 0
          end
        end
        object pnlSelection: TsPanel
          AlignWithMargins = True
          Left = 3
          Top = 37
          Width = 425
          Height = 156
          Align = alTop
          ShowCaption = False
          TabOrder = 1
          object pnlBulkRateChannels: TsPanel
            AlignWithMargins = True
            Left = 1
            Top = 4
            Width = 423
            Height = 22
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object lblChannel: TsLabel
              Left = 13
              Top = 3
              Width = 45
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Channel'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object cbxChannel: TCheckComboBox
              Left = 109
              Top = 0
              Width = 251
              Height = 22
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              AutoComplete = False
              DropDownCount = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              Caption = ''
              OnClickCheck = cbxChannelClickCheck
              BulkChanging = False
            end
            object btnClearChannelSelection: TsButton
              Left = 370
              Top = 0
              Width = 24
              Height = 22
              Hint = 'Unselect/uncheck all'
              Caption = '[ ]'
              TabOrder = 1
              OnClick = btnClearChannelSelectionClick
              SkinData.SkinSection = 'BUTTON'
            end
            object btnCheckAllBulkChannel: TsButton
              Left = 397
              Top = 0
              Width = 24
              Height = 22
              Hint = 'Select/Check all'
              Caption = '[x]'
              TabOrder = 2
              OnClick = btnCheckAllBulkChannelClick
              SkinData.SkinSection = 'BUTTON'
            end
          end
          object pnlBulkSelection: TsPanel
            AlignWithMargins = True
            Left = 1
            Top = 32
            Width = 423
            Height = 116
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TsLabel
              Left = 13
              Top = 29
              Width = 36
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Period'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object Label4: TsLabel
              Left = 277
              Top = 29
              Width = 14
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Alignment = taRightJustify
              Caption = 'To'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object sLabel1: TsLabel
              Left = 13
              Top = 3
              Width = 65
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Roomtypes'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object sLabel5: TsLabel
              Left = 13
              Top = 58
              Width = 59
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Weekdays'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object cbxRoomTypes: TCheckComboBox
              Left = 109
              Top = 0
              Width = 251
              Height = 22
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              AutoComplete = False
              DropDownCount = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              Items.Strings = (
                'All Room Types')
              Caption = ''
              BulkChanging = False
            end
            object dtBulkFrom: TsDateEdit
              Left = 109
              Top = 26
              Width = 124
              Height = 22
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              AutoSize = False
              Color = clWhite
              EditMask = '!99/99/9999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 1
              Text = '  -  -    '
              OnChange = dtBulkToChange
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              SkinData.SkinSection = 'EDIT'
              GlyphMode.Blend = 0
              GlyphMode.Grayed = False
              ShowWeeks = True
              DialogTitle = 'Period from'
            end
            object dtBulkTo: TsDateEdit
              Left = 297
              Top = 26
              Width = 124
              Height = 22
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              AutoSize = False
              Color = clWhite
              EditMask = '!99/99/9999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 2
              Text = '  -  -    '
              OnChange = dtBulkToChange
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              SkinData.SkinSection = 'EDIT'
              GlyphMode.Blend = 0
              GlyphMode.Grayed = False
              ShowWeeks = True
              DialogTitle = 'Period to'
            end
            object btnClearRoomClasses: TsButton
              Left = 370
              Top = 0
              Width = 24
              Height = 22
              Hint = 'Unselect/uncheck all'
              Caption = '[ ]'
              TabOrder = 3
              OnClick = btnClearRoomClassesClick
              SkinData.SkinSection = 'BUTTON'
            end
            object btnCheckAllBulkRoomClasses: TsButton
              Left = 397
              Top = 0
              Width = 24
              Height = 22
              Hint = 'Select/Check all'
              Caption = '[x]'
              TabOrder = 4
              OnClick = btnCheckAllBulkRoomClassesClick
              SkinData.SkinSection = 'BUTTON'
            end
            object cbMon: TsCheckBox
              Left = 117
              Top = 58
              Width = 65
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Monday'
              Checked = True
              State = cbChecked
              TabOrder = 5
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object cbTue: TsCheckBox
              Left = 117
              Top = 79
              Width = 66
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Tuesday'
              Checked = True
              State = cbChecked
              TabOrder = 6
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object cbWen: TsCheckBox
              Left = 117
              Top = 100
              Width = 81
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Wednesday'
              Checked = True
              State = cbChecked
              TabOrder = 7
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object cbThu: TsCheckBox
              Left = 226
              Top = 58
              Width = 71
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Thursday'
              Checked = True
              State = cbChecked
              TabOrder = 8
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object cbFri: TsCheckBox
              Left = 226
              Top = 79
              Width = 57
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Friday'
              Checked = True
              State = cbChecked
              TabOrder = 9
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object cbSat: TsCheckBox
              Left = 338
              Top = 58
              Width = 69
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Saturday'
              Checked = True
              State = cbChecked
              TabOrder = 10
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object cbSun: TsCheckBox
              Left = 340
              Top = 79
              Width = 63
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Sunday'
              Checked = True
              State = cbChecked
              TabOrder = 11
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
          end
        end
        object pnlBulkButtons: TsPanel
          AlignWithMargins = True
          Left = 3
          Top = 580
          Width = 425
          Height = 29
          Align = alBottom
          TabOrder = 2
          object sButton2: TsButton
            AlignWithMargins = True
            Left = 338
            Top = 3
            Width = 84
            Height = 23
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alRight
            Caption = 'Cancel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = sButton2Click
            SkinData.SkinSection = 'BUTTON'
          end
          object btnApplyBulk: TsButton
            AlignWithMargins = True
            Left = 250
            Top = 3
            Width = 84
            Height = 23
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alRight
            Caption = 'Apply'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnApplyBulkClick
            SkinData.SkinSection = 'BUTTON'
          end
        end
        object pnlBulkModifications: TsPanel
          AlignWithMargins = True
          Left = 3
          Top = 199
          Width = 425
          Height = 83
          Align = alTop
          AutoSize = True
          TabOrder = 3
          SkinData.SkinSection = 'PANEL'
          object pnlBulkChangeRate: TsPanel
            AlignWithMargins = True
            Left = 1
            Top = 4
            Width = 423
            Height = 21
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object lblAmountType: TsLabel
              Left = 13
              Top = 5
              Width = 91
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              SkinSection = 'LABEL'
              Caption = '<AmountType>'
              Enabled = False
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object __cbxRate: TsCheckBox
              Left = 109
              Top = 3
              Width = 20
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              TabOrder = 0
              OnClick = __cbxRateClick
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object edtAvail: TsEdit
              Left = 133
              Top = 0
              Width = 68
              Height = 21
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Color = 14540253
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4013373
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnChange = dtBulkToChange
              SkinData.SkinSection = 'PANEL'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
            end
            object cbxAvailType: TsComboBox
              Left = 208
              Top = 0
              Width = 213
              Height = 21
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Alignment = taLeftJustify
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              SkinData.SkinSection = 'COMBOBOX'
              VerticalAlignment = taAlignTop
              Style = csDropDownList
              Color = clWhite
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 2
              Text = 'Type availability'
              OnChange = cbxAvailTypeChange
              Items.Strings = (
                'Type availability'
                'Set Max Availability'
                'Set Auto Availability'
                'Set Current Availability')
            end
          end
          object pnlSingleUseRateChange: TsPanel
            AlignWithMargins = True
            Left = 1
            Top = 31
            Width = 423
            Height = 21
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 1
            object lblSingleUsePrice: TsLabel
              Left = 13
              Top = 4
              Width = 89
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Single-use Rate'
              Enabled = False
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object __cbxSingleUsePriceActive: TsCheckBox
              Left = 109
              Top = 4
              Width = 20
              Height = 16
              Hint = 'Enable Single Use Price settings'
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              TabOrder = 0
              OnClick = __cbxSingleUsePriceActiveClick
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object edtSingleUsePrice: TsEdit
              Left = 133
              Top = 0
              Width = 68
              Height = 21
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Alignment = taRightJustify
              Color = clWhite
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnChange = dtBulkToChange
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
            end
          end
          object pnlBulkChangesAvail: TsPanel
            AlignWithMargins = True
            Left = 1
            Top = 58
            Width = 423
            Height = 21
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 2
            object lblDCAvailability: TsLabel
              Left = 13
              Top = 3
              Width = 81
              Height = 13
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'DC Availability'
              Enabled = False
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object edtDCAvailbility: TsEdit
              Left = 133
              Top = 0
              Width = 68
              Height = 21
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Color = clWhite
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = dtBulkToChange
              SkinData.SkinSection = 'EDIT'
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
            end
            object cbDCAvailabilityType: TsComboBox
              Left = 208
              Top = 0
              Width = 213
              Height = 21
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Alignment = taLeftJustify
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              SkinData.SkinSection = 'COMBOBOX'
              VerticalAlignment = taAlignTop
              Style = csDropDownList
              Color = clWhite
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = -1
              ParentFont = False
              TabOrder = 1
              OnChange = cbDCAvailabilityTypeChange
              Items.Strings = (
                'Manually enter availability'
                'Set to calculate availability automatically'
                'Set to actual # of available rooms')
            end
            object __cbxAvailability: TsCheckBox
              Left = 109
              Top = 3
              Width = 20
              Height = 16
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              TabOrder = 2
              OnClick = __cbxAvailabilityClick
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
          end
        end
      end
      object sPanel4: TsPanel
        Left = 431
        Top = 0
        Width = 44
        Height = 612
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        BevelEdges = [beRight]
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 1
        OnClick = sPanel4Click
        SkinData.SkinSection = 'PANEL'
        object Image1: TImage
          Left = 2
          Top = 2
          Width = 33
          Height = 32
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          AutoSize = True
          Center = True
          Transparent = True
          OnClick = Image1Click
        end
        object sPanel5: TsPanel
          Left = 35
          Top = 2
          Width = 7
          Height = 608
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alRight
          BevelEdges = [beRight]
          BevelInner = bvLowered
          BorderWidth = 2
          TabOrder = 0
          OnClick = sPanel4Click
          SkinData.SkinSection = 'PANEL'
        end
      end
    end
    object pnlGridsWithLoadingCaption: TsPanel
      Left = 475
      Top = 31
      Width = 779
      Height = 612
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Loading data...'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16753736
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      SkinData.CustomColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
      object pgcPages: TsPageControl
        Left = 0
        Top = 0
        Width = 779
        Height = 580
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        ActivePage = tsRates
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = pgcPagesChange
        OnChanging = pgcPagesChanging
        TabsLineSkin = 'PAGECONTROL'
        SkinData.SkinSection = 'PAGECONTROL'
        object tsAvailabilities: TsTabSheet
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Availabilities'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel2: TsPanel
            Left = 0
            Top = 522
            Width = 771
            Height = 30
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alBottom
            BevelEdges = [beRight, beBottom]
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            SkinData.SkinSection = 'PANEL'
            object sButton4: TsButton
              AlignWithMargins = True
              Left = 5
              Top = 3
              Width = 164
              Height = 24
              Hint = 'Force update of availability for all types and dates'
              Margins.Left = 5
              Margins.Right = 2
              Align = alLeft
              Caption = 'Force update'
              DropDownMenu = pmnuForce
              Style = bsSplitButton
              TabOrder = 1
              OnClick = sButton4Click
              SkinData.SkinSection = 'BUTTON'
            end
            object sPanel1: TsPanel
              Left = 660
              Top = 0
              Width = 111
              Height = 30
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
              object btnSave: TsButton
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 103
                Height = 24
                Margins.Left = 2
                Margins.Right = 5
                Align = alRight
                Caption = 'Publish'
                TabOrder = 0
                OnClick = btnSaveClick
                SkinData.SkinSection = 'BUTTON'
              end
            end
          end
          object sPanel2: TsPanel
            Left = 0
            Top = 0
            Width = 771
            Height = 522
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            SkinData.SkinSection = 'PANEL'
            object grid: TAdvStringGrid
              Left = 0
              Top = 21
              Width = 771
              Height = 501
              Cursor = crDefault
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              DefaultColWidth = 80
              DefaultRowHeight = 25
              DrawingStyle = gdsClassic
              FixedColor = clBtnShadow
              RowCount = 1
              FixedRows = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              GridLineWidth = 0
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
              ParentFont = False
              ParentShowHint = False
              ScrollBars = ssBoth
              ShowHint = True
              TabOrder = 0
              OnDrawCell = gridDrawCell
              OnKeyDown = gridKeyDown
              OnKeyPress = rateGridKeyPress
              ActiveRowColor = 16185078
              HoverRowCells = [hcNormal, hcSelected]
              OnGridHint = gridGridHint
              OnCanEditCell = gridCanEditCell
              OnClipboardAfterPasteCell = gridClipboardAfterPasteCell
              OnCellValidate = gridCellValidate
              OnGetEditorType = gridGetEditorType
              OnEditCellDone = gridEditCellDone
              HintColor = clYellow
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = []
              CellNode.ShowTree = False
              ControlLook.FixedGradientHoverFrom = clGray
              ControlLook.FixedGradientHoverTo = clWhite
              ControlLook.FixedGradientDownFrom = clGray
              ControlLook.FixedGradientDownTo = clSilver
              ControlLook.ControlStyle = csClassic
              ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownHeader.Font.Color = clWindowText
              ControlLook.DropDownHeader.Font.Height = -11
              ControlLook.DropDownHeader.Font.Name = 'Tahoma'
              ControlLook.DropDownHeader.Font.Style = []
              ControlLook.DropDownHeader.Visible = True
              ControlLook.DropDownHeader.Buttons = <>
              ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownFooter.Font.Color = clWindowText
              ControlLook.DropDownFooter.Font.Height = -11
              ControlLook.DropDownFooter.Font.Name = 'Tahoma'
              ControlLook.DropDownFooter.Font.Style = []
              ControlLook.DropDownFooter.Visible = True
              ControlLook.DropDownFooter.Buttons = <>
              DefaultAlignment = taRightJustify
              EnhTextSize = True
              EnhRowColMove = False
              Filter = <>
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -11
              FilterDropDown.Font.Name = 'Tahoma'
              FilterDropDown.Font.Style = []
              FilterDropDownClear = '(All)'
              FilterEdit.TypeNames.Strings = (
                'Starts with'
                'Ends with'
                'Contains'
                'Not contains'
                'Equal'
                'Not equal'
                'Larger than'
                'Smaller than'
                'Clear')
              FixedColWidth = 250
              FixedRowHeight = 70
              FixedFont.Charset = ANSI_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -17
              FixedFont.Name = 'Arial'
              FixedFont.Style = []
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HoverButtons.Position = hbLeftFromColumnLeft
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              MaxEditLength = 4
              MouseActions.RangeSelectAndEdit = True
              MouseActions.WheelIncrement = 1
              MouseActions.WheelAction = waScroll
              Multilinecells = True
              Navigation.AdvanceOnEnter = True
              Navigation.AutoGotoWhenSorted = True
              Navigation.AutoGotoIncremental = True
              Navigation.AllowSmartClipboard = True
              Navigation.AllowClipboardAlways = True
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Font.Charset = DEFAULT_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -11
              PrintSettings.Font.Name = 'Tahoma'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -11
              PrintSettings.FixedFont.Name = 'Tahoma'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -11
              PrintSettings.HeaderFont.Name = 'Tahoma'
              PrintSettings.HeaderFont.Style = []
              PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -11
              PrintSettings.FooterFont.Name = 'Tahoma'
              PrintSettings.FooterFont.Style = []
              PrintSettings.Borders = pbNoborder
              PrintSettings.Centered = False
              PrintSettings.PageNumSep = '/'
              ScrollWidth = 16
              ScrollHints = shVertical
              SearchFooter.FindNextCaption = 'Find &next'
              SearchFooter.FindPrevCaption = 'Find &previous'
              SearchFooter.Font.Charset = DEFAULT_CHARSET
              SearchFooter.Font.Color = clWindowText
              SearchFooter.Font.Height = -11
              SearchFooter.Font.Name = 'Tahoma'
              SearchFooter.Font.Style = []
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurence'
              SearchFooter.HintFindPrev = 'Find previous occurence'
              SearchFooter.HintHighlight = 'Highlight occurences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SearchFooter.ResultFormat = '(%d of %d)'
              SelectionColor = clYellow
              SelectionTextColor = clRed
              ShowSelection = False
              SortSettings.DefaultFormat = ssAutomatic
              SortSettings.Show = True
              SortSettings.Full = False
              SortSettings.Row = -1
              URLColor = clBlack
              ValidChars = '0123456789'
              VAlignment = vtaCenter
              Version = '8.2.4.1'
              WordWrap = False
              ColWidths = (
                250
                80
                80
                80
                80)
              RowHeights = (
                70)
            end
            object sPanel3: TsPanel
              Left = 0
              Top = 0
              Width = 771
              Height = 21
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              SkinData.SkinSection = 'PANEL'
              object cbxShowLinkedCells: TsCheckBox
                Left = 5
                Top = 2
                Width = 121
                Height = 17
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Caption = 'Show linked classes'
                TabOrder = 0
                OnClick = cbxShowLinkedCellsClick
                SkinData.SkinSection = 'CHECKBOX'
                ImgChecked = 0
                ImgUnchecked = 0
              end
            end
          end
        end
        object tsRates: TsTabSheet
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Rates'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object rateGrid: TAdvStringGrid
            Left = 0
            Top = 54
            Width = 771
            Height = 468
            Cursor = crDefault
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Ctl3D = False
            DefaultColWidth = 80
            DefaultRowHeight = 25
            DefaultDrawing = True
            DrawingStyle = gdsClassic
            RowCount = 1
            FixedRows = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            GridLineWidth = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            PopupMenu = mnuRates
            ScrollBars = ssBoth
            ShowHint = True
            TabOrder = 0
            OnDrawCell = rateGridDrawCell
            OnKeyDown = rateGridKeyDown
            OnKeyPress = rateGridKeyPress
            ActiveRowColor = 16185078
            HoverRowCells = [hcNormal, hcSelected]
            OnGetCellColor = rateGridGetCellColor
            OnGetCellBorder = rateGridGetCellBorder
            OnGetAlignment = rateGridGetAlignment
            OnGridHint = rateGridGridHint
            OnCanEditCell = rateGridCanEditCell
            OnClipboardAfterPasteCell = rateGridClipboardAfterPasteCell
            OnClipboardBeforePasteCell = rateGridClipboardBeforePasteCell
            OnCellValidate = rateGridCellValidate
            OnGetEditorType = rateGridGetEditorType
            OnCheckBoxChange = rateGridCheckBoxChange
            OnEditCellDone = rateGridEditCellDone
            HintColor = clYellow
            HintShowCells = True
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = []
            ActiveCellColor = 15387318
            CellNode.ShowTree = False
            ControlLook.FixedGradientFrom = clWhite
            ControlLook.FixedGradientTo = clBtnFace
            ControlLook.FixedGradientHoverFrom = 13619409
            ControlLook.FixedGradientHoverTo = 12502728
            ControlLook.FixedGradientHoverMirrorFrom = 12502728
            ControlLook.FixedGradientHoverMirrorTo = 11254975
            ControlLook.FixedGradientDownFrom = 8816520
            ControlLook.FixedGradientDownTo = 7568510
            ControlLook.FixedGradientDownMirrorFrom = 7568510
            ControlLook.FixedGradientDownMirrorTo = 6452086
            ControlLook.FixedGradientDownBorder = 14007466
            ControlLook.ControlStyle = csClassic
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Tahoma'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Tahoma'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            DefaultAlignment = taRightJustify
            EnhTextSize = True
            EnhRowColMove = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 400
            FixedRowHeight = 70
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clBlack
            FixedFont.Height = -12
            FixedFont.Name = 'Arial'
            FixedFont.Style = []
            Flat = True
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HoverButtons.Position = hbLeftFromColumnLeft
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            MaxEditLength = 12
            MouseActions.RangeSelectAndEdit = True
            MouseActions.WheelIncrement = 1
            MouseActions.WheelAction = waScroll
            Navigation.AdvanceAutoEdit = False
            Navigation.AutoGotoWhenSorted = True
            Navigation.AutoGotoIncremental = True
            Navigation.AllowSmartClipboard = True
            Navigation.AllowClipboardAlways = True
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'Tahoma'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'Tahoma'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'Tahoma'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'Tahoma'
            PrintSettings.FooterFont.Style = []
            PrintSettings.Borders = pbNoborder
            PrintSettings.Centered = False
            PrintSettings.PageNumSep = '/'
            ScrollWidth = 16
            ScrollHints = shVertical
            SearchFooter.ColorTo = 15790320
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -11
            SearchFooter.Font.Name = 'Tahoma'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            ShowSelection = False
            SortSettings.DefaultFormat = ssAutomatic
            SortSettings.Show = True
            SortSettings.Full = False
            SortSettings.Row = -1
            SortSettings.HeaderColorTo = 16579058
            SortSettings.HeaderMirrorColor = 16380385
            SortSettings.HeaderMirrorColorTo = 16182488
            URLColor = clBlack
            ValidChars = '0123456789+-!%*/'
            VAlignment = vtaCenter
            Version = '8.2.4.1'
            WordWrap = False
            ColWidths = (
              400
              80
              80
              80
              80)
            RowHeights = (
              70)
          end
          object pnlPublishButtons: TsPanel
            Left = 0
            Top = 522
            Width = 771
            Height = 30
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alBottom
            BevelEdges = [beRight, beBottom]
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            SkinData.SkinSection = 'PANEL'
            object sButton1: TsButton
              AlignWithMargins = True
              Left = 173
              Top = 3
              Width = 158
              Height = 24
              Margins.Left = 2
              Margins.Right = 2
              Align = alLeft
              Caption = 'Revert to saved'
              TabOrder = 2
              OnClick = sButton1Click
              SkinData.SkinSection = 'BUTTON'
            end
            object sButton3: TsButton
              AlignWithMargins = True
              Left = 452
              Top = 3
              Width = 134
              Height = 24
              Margins.Left = 2
              Margins.Right = 2
              Align = alLeft
              Caption = 'Re-populate from scratch'
              TabOrder = 4
              Visible = False
              OnClick = sButton3Click
              SkinData.SkinSection = 'BUTTON'
            end
            object btnForceUpdate: TsButton
              AlignWithMargins = True
              Left = 5
              Top = 3
              Width = 164
              Height = 24
              Hint = 'Force update of availability for all types and dates'
              Margins.Left = 5
              Margins.Right = 2
              Align = alLeft
              Caption = 'Force update'
              DropDownMenu = pmnuForce
              Style = bsSplitButton
              TabOrder = 1
              OnClick = btnForceUpdateClick
              SkinData.SkinSection = 'BUTTON'
            end
            object btnRecalcDescendantRates: TsButton
              AlignWithMargins = True
              Left = 335
              Top = 3
              Width = 113
              Height = 24
              Hint = 'Recalculate rates from master rates '
              Margins.Left = 2
              Margins.Right = 2
              Align = alLeft
              Caption = 'Recalculate'
              TabOrder = 3
              OnClick = btnRecalcDescendantRatesClick
              SkinData.SkinSection = 'BUTTON'
            end
            object sPanel11: TsPanel
              Left = 542
              Top = 0
              Width = 229
              Height = 30
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              SkinData.SkinSection = 'PANEL'
              object btnPublish: TsButton
                AlignWithMargins = True
                Left = 121
                Top = 3
                Width = 103
                Height = 24
                Margins.Left = 2
                Margins.Right = 5
                Align = alRight
                Caption = 'Publish'
                TabOrder = 1
                OnClick = btnPublishClick
                SkinData.SkinSection = 'BUTTON'
              end
              object btnPrepareExcel: TsButton
                AlignWithMargins = True
                Left = 11
                Top = 3
                Width = 103
                Height = 24
                Margins.Left = 2
                Margins.Right = 5
                Align = alRight
                Caption = 'Excel Preview'
                TabOrder = 0
                Visible = False
                OnClick = btnPrepareExcelClick
                SkinData.SkinSection = 'BUTTON'
              end
            end
          end
          object pnlSubViews: TsPanel
            Left = 0
            Top = 0
            Width = 771
            Height = 54
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            SkinData.SkinSection = 'PANEL'
            object imgHelp: TsImage
              Left = 729
              Top = 0
              Width = 42
              Height = 54
              Align = alRight
              Center = True
              ParentShowHint = False
              Picture.Data = {
                07544269746D617036090000424D360900000000000036000000280000001800
                000018000000010020000000000000090000C30E0000C30E0000000000000000
                000000000000000000000000000000000000000000000000000000000000B378
                3E0DB3783E56B3783E99B3783EC3B3783ED9B3783ED8B3783EC1B3783E95B378
                3E52B3783E0B0000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000B2773D0EB3783E85B277
                3DEDB2773DFEB3783EFFB2773DFEB3783EFFB2773DFEB2773DFEB2773DFEB378
                3EFFB2773DE9B2773D7DB3783E0A000000000000000000000000000000000000
                000000000000000000000000000000000000B2773D3BB2773DDFB3783EFFB277
                3DFEB2773DFEB3783EFFB2773DFEB3783EFFB2773DFEB2773DFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783ED8B2773D320000000000000000000000000000
                0000000000000000000000000000B3783E53B3783EF7B3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EF3B3783E4700000000000000000000
                00000000000000000000B2773D3FB3783EF8B2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFBA8551FED6B696FFD5B595FEB8814BFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DF3B3783E33000000000000
                000000000000B2773D10B2773DE1B3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD5B596FEFFFFFFFFFEFEFEFED2AF8DFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783ED8B2773D0A0000
                000000000000B3783E8BB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFD6B798FFFFFFFFFFFFFFFFFFD3B18FFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783E7A0000
                0000B3783E10B2773DF0B2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD6B698FEFFFFFFFFFEFEFEFED3B18FFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773DE7B277
                3D0AB3783E5EB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD6B698FEFFFFFFFFFEFEFEFED3B18FFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773DFEB277
                3D4FB3783EA3B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFD6B798FFFFFFFFFFFFFFFFFFD3B18FFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3E94B3783ECFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD6B698FEFFFFFFFFFEFEFEFED3B18FFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773DFEB277
                3DC0B3783EE5B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFD6B798FFFFFFFFFFFFFFFFFFD3B18FFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3ED6B3783EE6B2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD6B698FEFFFFFFFFFEFEFEFED3B18FFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773DFEB277
                3DD7B3783ED2B2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD6B698FEFFFFFFFFFEFEFEFED3B18FFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773DFEB277
                3DC3B3783EA8B2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD6B697FEFFFFFFFFFEFEFEFED2B08EFEB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773DFEB277
                3D99B3783E66B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
                3E58B3783E16B2773DF5B2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFB3783FFFBF8F5EFFBE8D5CFFB3783EFFB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773DEEB277
                3D0F00000000B2773D97B2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFDABDA1FFFFFFFFFFFEFEFEFFD4B494FFB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DFEB3783EFFB2773D880000
                000000000000B3783E17B3783EEAB3783EFFB3783EFFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFE8D7C5FFFFFFFFFFFEFEFEFFE4CFBAFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EE2B3783E100000
                00000000000000000000B2773D4EB3783EFCB2773DFEB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFD2AF8DFFFDFDFCFFFDFCFBFFCFAA86FFB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DFEB2773DF9B3783E41000000000000
                0000000000000000000000000000B3783E69B2773DFCB2773DFEB3783EFFB277
                3DFEB2773DFEB3783EFFB3783EFFB57C44FFB57C43FFB3783EFFB2773DFEB378
                3EFFB2773DFEB2773DFEB3783EFFB2773DF9B2773D5B00000000000000000000
                000000000000000000000000000000000000B3783E51B3783EECB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EFFB57C44FFB57C43FFB3783EFFB3783EFFB378
                3EFFB3783EFFB3783EFFB3783EE7B3783E460000000000000000000000000000
                00000000000000000000000000000000000000000000B2773D1CB3783EA0B277
                3DF8B2773DFEB3783EFFB2773DFEB3783EFFB2773DFEB2773DFEB2773DFEB378
                3EFFB2773DF6B2773D98B3783E17000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000B277
                3D1DB2773D71B3783EB4B2773DE0B3783EF2B2773DF1B2773DDEB2773DB1B378
                3E6CB2773D190000000000000000000000000000000000000000000000000000
                0000}
              ShowHint = True
              SkinData.SkinSection = 'CHECKBOX'
              ExplicitLeft = 504
              ExplicitHeight = 21
            end
            object cbxRateRestrictions: TsCheckBox
              Left = 5
              Top = 4
              Width = 141
              Height = 23
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Rate restrictions'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = cbxRateRestrictionsClick
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object cbxShowSubrates: TsCheckBox
              Left = 411
              Top = 29
              Width = 103
              Height = 17
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Show sub-rates'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = cbxRateRestrictionsClick
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object pnlChannels: TsPanel
              Left = 5
              Top = 23
              Width = 310
              Height = 28
              Caption = 'pnlChannels'
              Color = clRed
              ParentBackground = False
              TabOrder = 2
              SkinData.CustomColor = True
              object ccChannels: TCheckComboBox
                Left = 4
                Top = 3
                Width = 244
                Height = 22
                AutoComplete = False
                Style = csDropDownList
                DropDownCount = 16
                TabOrder = 0
                Items.Strings = (
                  'A'
                  'B'
                  'C'
                  'D'
                  'E'
                  'F')
                Caption = ''
                OnClickCheck = ccChannelsClickCheck
                BulkChanging = False
              end
              object btnClearChannelSelectionGrid: TsButton
                Left = 253
                Top = 3
                Width = 24
                Height = 22
                Hint = 'Unselect/uncheck all'
                Caption = '[ ]'
                TabOrder = 1
                OnClick = btnClearChannelSelectionGridClick
                SkinData.SkinSection = 'BUTTON'
              end
              object btnCheckAllChannel: TsButton
                Left = 283
                Top = 3
                Width = 24
                Height = 22
                Hint = 'Select/Check all'
                Caption = '[x]'
                TabOrder = 2
                OnClick = btnCheckAllChannelClick
                SkinData.SkinSection = 'BUTTON'
              end
            end
            object btnRefresh: TsButton
              Left = 318
              Top = 24
              Width = 91
              Height = 25
              Caption = 'Refresh'
              Enabled = False
              TabOrder = 3
              OnClick = btnRefreshClick
            end
          end
          object pnlSelectView: TsPanel
            Left = 0
            Top = 54
            Width = 771
            Height = 468
            Align = alClient
            TabOrder = 3
            object sLabel2: TsLabel
              Left = 29
              Top = 17
              Width = 123
              Height = 13
              Caption = 'Rate plans / Channels'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object sLabel3: TsLabel
              Left = 232
              Top = 17
              Width = 66
              Height = 13
              Caption = 'Visible days'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object sLabel4: TsLabel
              Left = 232
              Top = 219
              Width = 61
              Height = 13
              Caption = 'Starting at'
              ParentFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
            end
            object __cbxSelectAll: TsCheckBox
              Left = 7
              Top = 17
              Width = 20
              Height = 16
              TabOrder = 0
              OnClick = __cbxSelectAllClick
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object __cblSelectChannels: TsCheckListBox
              Left = 9
              Top = 36
              Width = 199
              Height = 254
              BorderStyle = bsSingle
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'AAA'
                'BBB')
              ParentFont = False
              TabOrder = 1
            end
            object deInitialStartDate: TsDateEdit
              AlignWithMargins = True
              Left = 216
              Top = 237
              Width = 112
              Height = 21
              Margins.Left = 5
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 1
              AutoSize = False
              Color = clWhite
              EditMask = '!99/99/9999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 2
              Text = '  -  -    '
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Tahoma'
              BoundLabel.Font.Style = []
              SkinData.SkinSection = 'EDIT'
              GlyphMode.Blend = 0
              GlyphMode.Grayed = False
              ShowWeeks = True
            end
            object btnInitialShow: TsButton
              Left = 214
              Top = 262
              Width = 114
              Height = 25
              Caption = 'Show'
              TabOrder = 3
              OnClick = btnInitialShowClick
            end
            object __cblVisibleDays: TsRadioGroup
              Left = 214
              Top = 29
              Width = 114
              Height = 184
              TabOrder = 4
              Items.Strings = (
                '15'
                '30'
                '60'
                '90'
                '120'
                '150'
                '180'
                '200'
                '400')
            end
          end
        end
      end
      object sPanel7: TsPanel
        Left = 0
        Top = 580
        Width = 779
        Height = 32
        Align = alBottom
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCaptionText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Padding.Top = 3
        Padding.Bottom = 3
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 1
        SkinData.SkinSection = 'PANEL'
        object lblVisibleDays: TsLabel
          AlignWithMargins = True
          Left = 6
          Top = 8
          Width = 69
          Height = 18
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alLeft
          SkinSection = 'LABEL'
          Caption = 'Visible days:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ExplicitHeight = 13
        end
        object wwDBDateTimePicker1: TPlannerDatePicker
          Left = 743
          Top = 0
          Width = 23
          Height = 31
          DefaultHandling = True
          EmptyTextStyle = []
          Flat = False
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          Lookup.Font.Charset = DEFAULT_CHARSET
          Lookup.Font.Color = clWindowText
          Lookup.Font.Height = -11
          Lookup.Font.Name = 'Arial'
          Lookup.Font.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          ReadOnly = True
          TabOrder = 0
          Text = ''
          Transparent = True
          Visible = False
          Version = '1.9.0.0'
          ButtonStyle = bsDropDown
          ButtonWidth = 16
          Etched = False
          Glyph.Data = {
            DA020000424DDA0200000000000036000000280000000D0000000D0000000100
            200000000000A402000000000000000000000000000000000000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
            0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
            F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
          Calendar = cal89_.Owner
          HideCalendarAfterSelection = True
          TMSStyle = 0
          object cal89_: TPlannerCalendar
            Left = 0
            Top = 0
            Width = 180
            Height = 180
            EventDayColor = clBlack
            EventFont.Charset = DEFAULT_CHARSET
            EventFont.Color = clWindowText
            EventFont.Height = -11
            EventFont.Name = 'Tahoma'
            EventFont.Style = [fsBold]
            EventMarkerColor = clYellow
            EventMarkerShape = evsCircle
            BackgroundPosition = bpTiled
            BorderWidth = 1
            CaptionColor = clNone
            CaptionTextColor = clBlack
            DateDownColor = clNone
            DateHoverColor = clNone
            DayFont.Charset = DEFAULT_CHARSET
            DayFont.Color = clWindowText
            DayFont.Height = -11
            DayFont.Name = 'Tahoma'
            DayFont.Style = []
            FocusColor = clHighlight
            HeaderColor = clNone
            InActiveColor = clGray
            InversColor = clTeal
            LineColor = clGray
            Line3D = True
            Look = lookFlat
            NameOfDays.Monday = 'ma'
            NameOfDays.Tuesday = 'di'
            NameOfDays.Wednesday = 'wo'
            NameOfDays.Thursday = 'do'
            NameOfDays.Friday = 'vr'
            NameOfDays.Saturday = 'za'
            NameOfDays.Sunday = 'zo'
            NameOfMonths.January = 'jan'
            NameOfMonths.February = 'feb'
            NameOfMonths.March = 'mrt'
            NameOfMonths.April = 'apr'
            NameOfMonths.May = 'mei'
            NameOfMonths.June = 'jun'
            NameOfMonths.July = 'jul'
            NameOfMonths.August = 'aug'
            NameOfMonths.September = 'sep'
            NameOfMonths.October = 'okt'
            NameOfMonths.November = 'nov'
            NameOfMonths.December = 'dec'
            NameOfMonths.UseIntlNames = True
            WeekFont.Charset = DEFAULT_CHARSET
            WeekFont.Color = clWindowText
            WeekFont.Height = -11
            WeekFont.Name = 'Tahoma'
            WeekFont.Style = []
            WeekName = 'Wk'
            SelectColor = clTeal
            SelectFontColor = clWhite
            StartDay = 7
            TextColor = clBlack
            TodayFormat = '"Today" DDD/mm, YYYY'
            WeekendColor = clRed
            Day = 7
            Month = 12
            Year = 2012
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            GradientStartColor = clWhite
            GradientEndColor = clBtnFace
            GradientDirection = gdVertical
            MonthGradientStartColor = clNone
            MonthGradientEndColor = clNone
            MonthGradientDirection = gdHorizontal
            HintPrevYear = 'Previous Year'
            HintPrevMonth = 'Previous Month'
            HintNextMonth = 'Next Month'
            HintNextYear = 'Next Year'
            Version = '2.3.1.2'
            TMSStyle = 0
          end
        end
        object btnRefreshOneDay: TsButton
          AlignWithMargins = True
          Left = 162
          Top = 4
          Width = 27
          Height = 24
          Hint = 'Refresh'
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 28
          Images = DImages.PngImageList1
          ParentFont = False
          TabOrder = 2
          OnClick = btnRefreshOneDayClick
          SkinData.SkinSection = 'BUTTON'
        end
        object btnForward: TsButton
          AlignWithMargins = True
          Left = 348
          Top = 4
          Width = 27
          Height = 24
          Hint = 'Jump forward the selected number of days.'
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 3
          Images = DImages.ilGuests
          ParentFont = False
          TabOrder = 6
          OnClick = btnForwardClick
        end
        object btnBack: TsButton
          AlignWithMargins = True
          Left = 220
          Top = 4
          Width = 25
          Height = 24
          Hint = 'Jump back the selected number of days.'
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          ImageIndex = 2
          Images = DImages.ilGuests
          TabOrder = 4
          OnClick = btnBackClick
        end
        object dateEdit: TsDateEdit
          AlignWithMargins = True
          Left = 250
          Top = 6
          Width = 95
          Height = 21
          Margins.Left = 5
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alLeft
          AutoSize = False
          Color = clWhite
          EditMask = '!99/99/9999;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 5
          Text = '  -  -    '
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          SkinData.SkinSection = 'EDIT'
          GlyphMode.Blend = 0
          GlyphMode.Grayed = False
          ShowWeeks = True
          OnAcceptDate = dateEditAcceptDate
        end
        object __cbxVisibleDays: TsComboBox
          AlignWithMargins = True
          Left = 82
          Top = 6
          Width = 75
          Height = 21
          Margins.Left = 5
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alLeft
          Alignment = taLeftJustify
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          SkinData.SkinSection = 'COMBOBOX'
          VerticalAlignment = taAlignTop
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 1
          Text = '15'
          OnCloseUp = __cbxVisibleDaysCloseUp
          Items.Strings = (
            '15'
            '30'
            '60'
            '90'
            '120'
            '150'
            '180'
            '200'
            '400')
        end
        object btnBegin: TsButton
          AlignWithMargins = True
          Left = 192
          Top = 4
          Width = 25
          Height = 24
          Hint = 'Jump back to current date'
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          ImageIndex = 9
          Images = DImages.ilGuests
          TabOrder = 3
          OnClick = btnBeginClick
        end
        object btnEnd: TsButton
          AlignWithMargins = True
          Left = 378
          Top = 4
          Width = 27
          Height = 24
          Hint = 'Jump to the end.'
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCaptionText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 10
          Images = DImages.ilGuests
          ParentFont = False
          TabOrder = 7
          OnClick = btnEndClick
        end
      end
    end
    object Panel1: TsPanel
      Left = 0
      Top = 0
      Width = 1254
      Height = 31
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      DesignSize = (
        1254
        31)
      object lblEditing: TsLabel
        AlignWithMargins = True
        Left = 337
        Top = 8
        Width = 909
        Height = 21
        Margins.Left = 2
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 2
        Align = alClient
        Alignment = taCenter
        Caption = 'AVAILABILITY'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ExplicitWidth = 109
        ExplicitHeight = 18
      end
      object lblReadSave: TsLabel
        Left = 337
        Top = 17
        Width = 59
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'lblReadSave'
        ParentFont = False
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object sPanel9: TsPanel
        Left = 0
        Top = 0
        Width = 335
        Height = 31
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        object cbxChannelManagers: TsComboBox
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 108
          Height = 21
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alLeft
          Alignment = taLeftJustify
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          SkinData.SkinSection = 'COMBOBOX'
          VerticalAlignment = taAlignTop
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 0
          OnChange = cbxChannelManagersChange
        end
        object cbxPlanCodes: TsComboBox
          AlignWithMargins = True
          Left = 120
          Top = 5
          Width = 109
          Height = 21
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alLeft
          Alignment = taLeftJustify
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          SkinData.SkinSection = 'COMBOBOX'
          VerticalAlignment = taAlignTop
          Style = csDropDownList
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 1
          OnChange = cbxChannelManagersChange
        end
      end
      object btnClose: TsButton
        Left = 1172
        Top = 3
        Width = 78
        Height = 26
        Anchors = [akTop, akRight]
        Caption = 'Close'
        ImageIndex = 27
        ModalResult = 8
        TabOrder = 1
        OnClick = btnCloseClick
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object pnlProgress: TsPanel
      Left = 0
      Top = 643
      Width = 1254
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      TabOrder = 3
      Visible = False
      SkinData.SkinSection = 'PANEL'
      object prgSaving: TUbuntuProgress
        Left = 0
        Top = -1
        Width = 188
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        ColorSet = csOriginal
        ProgressDividers = True
        BackgroundDividers = True
        MarqueeWidth = 30
        Max = 100
        Mode = pmNormal
        Position = 50
        Shadow = True
        Speed = msMedium
        Step = 1
        Visible = True
      end
    end
  end
  object timStart: TTimer
    Enabled = False
    Interval = 100
    OnTimer = timStartTimer
    Left = 968
    Top = 224
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 568
    Top = 464
    Bitmap = {
      494C010102000500040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      004B00000093000000CC000000CF000000FF000000FF000000CF000000CC0000
      00930000004B0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      004B00000093000000CC000000CF000000FF000000FF000000CF000000CC0000
      00930000004B0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001800000099000000F00000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F000000099000000180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001800000099000000F00000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F000000099000000180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000900000087000000F6000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F60000008700000009000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000900000087000000F6000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F60000008700000009000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000018000000C9000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000C9000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000018000000C9000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000C9000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000033000000E4000000FF000000FF000000FF000000FF000000FF0000
      00E4000000930000004800000033000000000000000000000033000000480000
      0093000000E4000000FF000000FF000000FF000000FF000000FF000000E40000
      0033000000000000000000000000000000000000000000000000000000000000
      000000000033000000E4000000FF000000FF000000FF000000FF000000FF0000
      00E4000000930000004800000033000000000000000000000033000000480000
      0093000000E4000000FF000000FF000000FF000000FF000000FF000000E40000
      0033000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0024000000EA000000FF000000FF000000FF000000FF000000E4000000630000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000300000063000000E4000000FF000000FF000000FF000000FF0000
      00EA000000240000000000000000000000000000000000000000000000000000
      0024000000EA000000FF000000FF000000FF000000FF000000E4000000630000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000300000063000000E4000000FF000000FF000000FF000000FF0000
      00EA000000240000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000090000
      00D5000000FF000000FF000000FF000000FF000000B10000000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C000000B1000000FF000000FF000000FF0000
      00FF000000D50000000900000000000000000000000000000000000000090000
      00D5000000FF000000FF000000FF000000FF000000B10000000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C000000B1000000FF000000FF000000FF0000
      00FF000000D50000000900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000840000
      00FF000000FF000000FF000000FF000000900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000090000000FF000000FF0000
      00FF000000FF0000008400000000000000000000000000000000000000840000
      00FF000000FF000000FF000000FF000000900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000090000000FF000000FF0000
      00FF000000FF0000008400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001B000000F30000
      00FF000000FF000000FF000000B1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000B1000000FF0000
      00FF000000FF000000F30000001B00000000000000000000001B000000F30000
      00FF000000FF000000FF000000B1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000B1000000FF0000
      00FF000000FF000000F30000001B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000096000000FF0000
      00FF000000FF000000E40000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000C000000E40000
      00FF000000FF000000FF00000093000000000000000000000096000000FF0000
      00FF000000FF000000E40000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000C000000E40000
      00FF000000FF000000FF00000093000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C000000F6000000FF0000
      00FF000000FF0000006600000000000000000000000000000000000000000000
      00000000004E000000E7000000E40000003F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000660000
      00FF000000FF000000FF000000F60000000C0000000C000000F6000000FF0000
      00FF000000FF0000006600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003F000000E1000000E70000
      004E000000000000000000000000000000000000000000000000000000660000
      00FF000000FF000000FF000000F60000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000005A000000FF000000FF0000
      00FF000000DE0000000300000000000000000000000000000000000000000000
      0054000000FC000000FF000000FF000000E70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      00DE000000FF000000FF000000FF0000005A0000005A000000FF000000FF0000
      00FF000000DE0000000300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000E7000000FF000000FF0000
      00F9000000540000000000000000000000000000000000000000000000030000
      00DE000000FF000000FF000000FF0000005A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000099000000FF000000FF0000
      00FF000000870000000000000000000000000000000000000000000000540000
      00FC000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0087000000FF000000FF000000FF0000009900000099000000FF000000FF0000
      00FF000000870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000F90000005400000000000000000000000000000000000000000000
      0087000000FF000000FF000000FF000000990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C6000000FF000000FF0000
      00FF000000420000000000000000000000000000000000000054000000FC0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0045000000FF000000FF000000FF000000C6000000C6000000FF000000FF0000
      00FF000000420000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FC00000054000000000000000000000000000000000000
      0045000000FF000000FF000000FF000000C60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000EA000000FF000000FF0000
      00FF0000001B0000000000000000000000000000004E000000FC000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E7000000480000000000000000000000000000
      001B000000FF000000FF000000FF000000EA000000EA000000FF000000FF0000
      00FF0000001B00000000000000000000000000000048000000E7000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FC0000004B0000000000000000000000000000
      001B000000FF000000FF000000FF000000EA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F9000000FF000000FF0000
      00FF00000006000000000000000000000000000000E4000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000E40000000000000000000000000000
      0006000000FF000000FF000000FF000000F9000000F9000000FF000000FF0000
      00FF00000006000000000000000000000000000000E4000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000E40000000000000000000000000000
      0006000000FF000000FF000000FF000000F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F9000000FF000000FF0000
      00FF00000006000000000000000000000000000000E7000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000E70000000000000000000000000000
      0006000000FF000000FF000000FF000000F9000000F9000000FF000000FF0000
      00FF00000006000000000000000000000000000000E7000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000E70000000000000000000000000000
      0006000000FF000000FF000000FF000000F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000EA000000FF000000FF0000
      00FF0000001B0000000000000000000000000000004B000000FC000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000C90000003F0000000000000000000000000000
      001B000000FF000000FF000000FF000000EA000000EA000000FF000000FF0000
      00FF0000001B0000000000000000000000000000003F000000C9000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FC0000004B0000000000000000000000000000
      001B000000FF000000FF000000FF000000EA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C6000000FF000000FF0000
      00FF000000420000000000000000000000000000000000000054000000FC0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0045000000FF000000FF000000FF000000C6000000C6000000FF000000FF0000
      00FF000000420000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FC00000054000000000000000000000000000000000000
      0045000000FF000000FF000000FF000000C60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000099000000FF000000FF0000
      00FF000000870000000000000000000000000000000000000000000000540000
      00FC000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0087000000FF000000FF000000FF0000009900000099000000FF000000FF0000
      00FF000000870000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000F90000005400000000000000000000000000000000000000000000
      0087000000FF000000FF000000FF000000990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000005A000000FF000000FF0000
      00FF000000E10000000300000000000000000000000000000000000000000000
      0054000000FC000000FF000000FF000000E70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      00E1000000FF000000FF000000FF0000005A0000005A000000FF000000FF0000
      00FF000000E10000000300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000E7000000FF000000FF0000
      00F9000000540000000000000000000000000000000000000000000000030000
      00E1000000FF000000FF000000FF0000005A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C000000F6000000FF0000
      00FF000000FF0000006600000000000000000000000000000000000000000000
      000000000048000000C9000000E10000003F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000660000
      00FF000000FF000000FF000000F60000000C0000000C000000F6000000FF0000
      00FF000000FF0000006600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003F000000E1000000C90000
      0048000000000000000000000000000000000000000000000000000000660000
      00FF000000FF000000FF000000F60000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000093000000FF0000
      00FF000000FF000000E40000000F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000F000000E40000
      00FF000000FF000000FF00000093000000000000000000000093000000FF0000
      00FF000000FF000000E40000000F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000F000000E40000
      00FF000000FF000000FF00000093000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001B000000F30000
      00FF000000FF000000FF000000B1000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003000000B1000000FF0000
      00FF000000FF000000F30000001B00000000000000000000001B000000F30000
      00FF000000FF000000FF000000B1000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003000000B1000000FF0000
      00FF000000FF000000F30000001B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000840000
      00FF000000FF000000FF000000FF000000900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000090000000FF000000FF0000
      00FF000000FF0000008400000000000000000000000000000000000000840000
      00FF000000FF000000FF000000FF000000900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000090000000FF000000FF0000
      00FF000000FF0000008400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      00C9000000FF000000FF000000FF000000FF000000B70000000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C000000B7000000FF000000FF000000FF0000
      00FF000000C90000000600000000000000000000000000000000000000060000
      00C9000000FF000000FF000000FF000000FF000000B70000000C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C000000B7000000FF000000FF000000FF0000
      00FF000000C90000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0018000000E4000000FF000000FF000000FF000000FF000000E7000000660000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000300000066000000E7000000FF000000FF000000FF000000FF0000
      00E4000000180000000000000000000000000000000000000000000000000000
      0018000000E4000000FF000000FF000000FF000000FF000000E7000000660000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000300000066000000E7000000FF000000FF000000FF000000FF0000
      00E4000000180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000030000000E1000000FF000000FF000000FF000000FF000000FF0000
      00E4000000930000004800000033000000030000000300000033000000480000
      0093000000E4000000FF000000FF000000FF000000FF000000FF000000E40000
      0030000000000000000000000000000000000000000000000000000000000000
      000000000030000000E1000000FF000000FF000000FF000000FF000000FF0000
      00E4000000930000004800000033000000030000000300000033000000480000
      0093000000E4000000FF000000FF000000FF000000FF000000FF000000E40000
      0030000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000018000000C9000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000C9000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000018000000C9000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000C9000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000900000084000000F3000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F30000008400000009000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000900000084000000F3000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F30000008400000009000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001800000099000000F00000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F000000099000000180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001800000099000000F00000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F000000099000000180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      00480000008D000000C9000000CC000000FC000000FC000000CC000000C90000
      008D000000480000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      00480000008D000000C9000000CC000000FC000000FC000000CC000000C90000
      008D000000480000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFC003FFFFC003FF0000000000000000
      FF0000FFFF0000FF0000000000000000FC00003FFC00003F0000000000000000
      F800001FF800001F0000000000000000F001800FF001800F0000000000000000
      E00FF007E00FF0070000000000000000C03FFC03C03FFC030000000000000000
      C0FFFF03C0FFFF03000000000000000081FFFF8181FFFF810000000000000000
      81FFFF8181FFFF81000000000000000003F0FFC003FF0FC00000000000000000
      03E0FFC003FF07C0000000000000000007C0FFE007FF03E00000000000000000
      0780FFE007FF01E00000000000000000070000E0070000E00000000000000000
      070000E0070000E00000000000000000070000E0070000E00000000000000000
      070000E0070000E000000000000000000780FFE007FF01E00000000000000000
      07C0FFE007FF03E0000000000000000003E0FFC003FF07C00000000000000000
      03F0FFC003FF0FC0000000000000000081FFFF8181FFFF810000000000000000
      80FFFF0180FFFF010000000000000000C0FFFF03C0FFFF030000000000000000
      C03FFC03C03FFC030000000000000000E00FF007E00FF0070000000000000000
      F000000FF000000F0000000000000000F800001FF800001F0000000000000000
      FC00003FFC00003F0000000000000000FF0000FFFF0000FF0000000000000000
      FFC003FFFFC003FF000000000000000000000000000000000000000000000000
      000000000000}
  end
  object FormStore: TcxPropertiesStore
    Components = <
      item
        Component = cbxShowSubrates
        Properties.Strings = (
          'Checked')
      end
      item
        Component = __cbxVisibleDays
        Properties.Strings = (
          'Text')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width')
      end>
    StorageName = 'Software\Roomer\FormStatus\ChannelAvailability'
    StorageType = stRegistry
    Left = 1038
    Top = 176
  end
  object mnuRates: TPopupMenu
    Left = 968
    Top = 176
    object C1: TMenuItem
      Caption = '&Copy'
      ShortCut = 16451
      OnClick = C1Click
    end
    object C2: TMenuItem
      Caption = 'Cu&t'
      ShortCut = 16472
      OnClick = C2Click
    end
    object P1: TMenuItem
      Caption = 'P&aste'
      ShortCut = 16470
      OnClick = P1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object R1: TMenuItem
      Caption = 'Restore price'
      ShortCut = 46
      OnClick = R1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object C3: TMenuItem
      Caption = 'Copy Settings (from one Channel to another)'
      OnClick = C3Click
    end
  end
  object timRecalc: TTimer
    Enabled = False
    Interval = 100
    OnTimer = timRecalcTimer
    Left = 968
    Top = 280
  end
  object pmnuForce: TPopupMenu
    Left = 496
    Top = 464
    object mnuForceUpdatePeriode: TMenuItem
      Caption = 'Force update of currently selected period'
      OnClick = mnuForceUpdatePeriodeClick
    end
    object mnuForceFullUpdate: TMenuItem
      Caption = 'Force full update'
      OnClick = mnuForceFullUpdateClick
    end
  end
  object timBlink: TTimer
    Enabled = False
    Interval = 500
    OnTimer = timBlinkTimer
    Left = 1040
    Top = 224
  end
  object timBringToFront: TTimer
    Enabled = False
    Interval = 10
    OnTimer = timBringToFrontTimer
    Left = 1040
    Top = 280
  end
end
