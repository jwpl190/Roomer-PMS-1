object frmEditGuest: TfrmEditGuest
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Edit Guest'
  ClientHeight = 610
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panBtn: TsPanel
    Left = 0
    Top = 565
    Width = 504
    Height = 45
    Align = alBottom
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      504
      45)
    object btnCancel: TsButton
      Left = 362
      Top = 4
      Width = 131
      Height = 31
      Hint = 'Cancel and close'
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ImageIndex = 4
      Images = DImages.PngImageList1
      ModalResult = 2
      TabOrder = 0
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnOk: TsButton
      Left = 226
      Top = 4
      Width = 130
      Height = 31
      Hint = 'Apply and close'
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ImageIndex = 82
      Images = DImages.PngImageList1
      ModalResult = 1
      TabOrder = 1
      OnClick = BtnOkClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object pageMain: TsPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 498
    Height = 559
    ActivePage = tabGuest
    Align = alClient
    Style = tsButtons
    TabHeight = 32
    TabOrder = 1
    TabWidth = 160
    SkinData.SkinSection = 'PAGECONTROL'
    object tabGuest: TsTabSheet
      Caption = 'Guest'
      object sGroupBox1: TsGroupBox
        Left = 3
        Top = 3
        Width = 470
        Height = 199
        Caption = 'Guest information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'GROUPBOX'
        object sLabel1: TsLabel
          Left = 105
          Top = 23
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = '* First name:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel2: TsLabel
          Left = 106
          Top = 48
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = '* Last name:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel6: TsLabel
          Left = 81
          Top = 77
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Passport/ID Card:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel34: TsLabel
          Left = 57
          Top = 124
          Width = 111
          Height = 13
          Alignment = taRightJustify
          Caption = 'Social security number:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel15: TsLabel
          Left = 103
          Top = 172
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Date of birth:'
          ParentFont = False
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel32: TsLabel
          Left = 144
          Top = 99
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Title:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblNationality: TsLabel
          Left = 113
          Top = 147
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nationality:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object edFirstname: TRoomerFilterComboBox
          Left = 174
          Top = 20
          Width = 241
          Height = 21
          AutoCloseUp = True
          Alignment = taLeftJustify
          SkinData.SkinSection = 'COMBOBOX'
          VerticalAlignment = taAlignTop
          AutoComplete = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 0
        end
        object edLastName: TsEdit
          Left = 174
          Top = 45
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edCardId: TsEdit
          Left = 174
          Top = 69
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edTitle: TsEdit
          Left = 174
          Top = 94
          Width = 52
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edSSN: TsEdit
          Left = 174
          Top = 119
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edDateOfBirth: TsDateEdit
          Left = 174
          Top = 169
          Width = 107
          Height = 21
          AutoSize = False
          Color = clWhite
          EditMask = '!99/99/9999;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2302755
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 5
          Text = '  -  -    '
          Visible = False
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          SkinData.SkinSection = 'EDIT'
          GlyphMode.Blend = 0
          GlyphMode.Grayed = False
          GlyphMode.Images = DImages.cxImagesSmallExtra
          GlyphMode.ImageIndex = 4
          DirectInput = False
          ShowWeeks = True
          PopupWidth = 250
        end
        object sButton2: TsButton
          Left = 418
          Top = 20
          Width = 32
          Height = 21
          Caption = '...'
          TabOrder = 6
          SkinData.SkinSection = 'BUTTON'
        end
        inline fraNationality: TfraCountryPanel
          Left = 174
          Top = 144
          Width = 241
          Height = 20
          TabOrder = 7
          ExplicitLeft = 174
          ExplicitTop = 144
          ExplicitWidth = 241
          inherited pnlCountry: TsPanel
            Width = 241
            ExplicitWidth = 241
            inherited lblCountryName: TLabel
              Width = 175
              Height = 14
            end
          end
        end
      end
      object sGroupBox2: TsGroupBox
        Left = 3
        Top = 383
        Width = 470
        Height = 116
        Caption = 'Contact Information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'GROUPBOX'
        object sLabel13: TsLabel
          Left = 74
          Top = 33
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telephone number:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel17: TsLabel
          Left = 94
          Top = 60
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mobile number:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel14: TsLabel
          Left = 98
          Top = 87
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Email address:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object edTel1: TsEdit
          Left = 173
          Top = 30
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edMobile: TsEdit
          Left = 173
          Top = 57
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edEmail: TsEdit
          Left = 173
          Top = 84
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
      end
      object sGroupBox3: TsGroupBox
        Left = 3
        Top = 219
        Width = 470
        Height = 158
        Caption = 'Postal Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'GROUPBOX'
        object sLabel3: TsLabel
          Left = 124
          Top = 21
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Address:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel4: TsLabel
          Left = 122
          Top = 75
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Zip Code:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel9: TsLabel
          Left = 136
          Top = 105
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = '* City:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblCountry: TsLabel
          Left = 124
          Top = 129
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Country:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object edAddress1: TsEdit
          Left = 173
          Top = 18
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edAddress2: TsEdit
          Left = 173
          Top = 45
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edZipcode: TsEdit
          Left = 173
          Top = 72
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edCity: TsEdit
          Left = 173
          Top = 99
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        inline fraCountry: TfraCountryPanel
          Left = 173
          Top = 126
          Width = 242
          Height = 20
          TabOrder = 4
          ExplicitLeft = 173
          ExplicitTop = 126
          ExplicitWidth = 242
          inherited pnlCountry: TsPanel
            Width = 242
            ExplicitWidth = 242
            inherited lblCountryName: TLabel
              Width = 176
              Height = 14
            end
          end
        end
      end
    end
    object tabCompany: TsTabSheet
      Caption = 'Company'
      object sGroupBox4: TsGroupBox
        Left = 3
        Top = 10
        Width = 470
        Height = 78
        Caption = 'Company information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'GROUPBOX'
        object sLabel23: TsLabel
          Left = 90
          Top = 23
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Caption = 'Company name:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel39: TsLabel
          Left = 105
          Top = 47
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'VAT Number:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object edCompany: TsEdit
          Left = 173
          Top = 20
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edVAT: TsEdit
          Left = 173
          Top = 44
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
      end
      object sGroupBox5: TsGroupBox
        Left = 4
        Top = 110
        Width = 470
        Height = 108
        Caption = 'Contact information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'GROUPBOX'
        object sLabel31: TsLabel
          Left = 73
          Top = 23
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telephone number:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel37: TsLabel
          Left = 145
          Top = 46
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fax:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel29: TsLabel
          Left = 98
          Top = 70
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Caption = 'Email address:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object edCompTelNumber: TsEdit
          Left = 173
          Top = 20
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edFax: TsEdit
          Left = 173
          Top = 43
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edCompEmail: TsEdit
          Left = 173
          Top = 67
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
      end
      object sGroupBox6: TsGroupBox
        Left = 4
        Top = 220
        Width = 470
        Height = 162
        Caption = 'Postal Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'GROUPBOX'
        object sLabel25: TsLabel
          Left = 124
          Top = 23
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Address:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel26: TsLabel
          Left = 121
          Top = 74
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Zip Code:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object sLabel27: TsLabel
          Left = 135
          Top = 100
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = '* City:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblCompCountry: TsLabel
          Left = 114
          Top = 125
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = '* Country:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object edCompAddress1: TsEdit
          Left = 173
          Top = 20
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edCompAddress2: TsEdit
          Left = 173
          Top = 45
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edCompZipcode: TsEdit
          Left = 173
          Top = 71
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        object edCompCity: TsEdit
          Left = 173
          Top = 97
          Width = 241
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Caption = 'test'
        end
        inline fraCompanyCountry: TfraCountryPanel
          Left = 173
          Top = 122
          Width = 240
          Height = 20
          TabOrder = 4
          ExplicitLeft = 173
          ExplicitTop = 122
          ExplicitWidth = 240
          inherited pnlCountry: TsPanel
            Width = 240
            ExplicitWidth = 240
            inherited lblCountryName: TLabel
              Width = 174
              Height = 14
            end
          end
        end
      end
    end
  end
  object StoreMain: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width')
      end>
    StorageName = 'Software\Roomer\FormStatus\EditGuest'
    StorageType = stRegistry
    Left = 448
    Top = 312
  end
end
