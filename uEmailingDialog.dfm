object FrmEmailingDialog: TFrmEmailingDialog
  Left = 0
  Top = 0
  Caption = 'Emailing'
  ClientHeight = 503
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 211
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    SkinData.SkinSection = 'TRANSPARENT'
    object sLabel1: TsLabel
      Left = 55
      Top = 11
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Email of recipient:'
    end
    object sLabel2: TsLabel
      Left = 75
      Top = 38
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Carbon copy:'
    end
    object sLabel3: TsLabel
      Left = 52
      Top = 65
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Blind carbon copy:'
    end
    object sLabel4: TsLabel
      Left = 100
      Top = 103
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Subject:'
    end
    object sImage1: TsImage
      Left = 8
      Top = 144
      Width = 34
      Height = 30
      Picture.Data = {
        0B54504E474772617068696336100000424D3610000000000000360000002800
        0000200000002000000001002000000000000010000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662526AA6625A2AA66
        25DBAA6625CFAA66259FAA662537FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA66256AAA6625F7AA6625FFAA66
        25FFAA6625FFAA6625FFAA6625FAAA662555FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00AA66256DAA6625FFAA6625FFAA6625F3AA66
        2598AA66259CAA6625F5AA6625FFAA6625FAAA662555FFFFFF00FFFFFF00FFFF
        FF00AA662573AA662548FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA66251BAA6625F6AA6625FFAA6625CAAA66251DFFFF
        FF00FFFFFF00AA662530AA6625EBAA6625FFAA6625FAAA662555FFFFFF00AA66
        2508AA6625FEAA6625F9AA66254FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA662581AA6625FFAA6625F4AA66251BFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA66252DAA6625E9AA6625FFAA6625FAAA662555FFFF
        FF00AA6625A1AA6625FFAA6625F9AA662550FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA6625CAAA6625FFAA66259EFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00AA66252AAA6625E6AA6625FFAA6625FAAA66
        2555AA662503AA6625A3AA6625FFAA6625F9AA662551FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA6625E6AA6625FFAA66256BFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662527AA6625E4AA6625FFAA66
        25FAAA662555AA662502AA6625A2AA6625FFAA6625F9AA662551FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA6625CAAA6625FFAA662592FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662524AA6625E2AA66
        25FFAA6625FAAA662555AA662502AA6625A2AA6625FFAA6625F9AA662552FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA66255AAA6625FEAA6625FBAA66255AFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662521AA66
        25DFAA6625FFAA6625FAAA662555AA662502AA6625A1AA6625FFAA6625FAAA66
        2552FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00AA662575AA6625FEAA6625FBAA66255AFFFF
        FF00FFFFFF00FFFFFF00AA662565AA66256BFFFFFF00FFFFFF00FFFFFF00AA66
        251FAA6625DDAA6625FFAA6625FAAA662555AA662502AA6625A1AA6625FFAA66
        25FAAA662553FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662575AA6625FEAA6625FBAA66
        2559FFFFFF00AA66250EAA6625FBAA6625FFAA66257FFFFFFF00FFFFFF00FFFF
        FF00AA66251CAA6625DAAA6625FFAA6625FAAA662555AA662502AA6625A0AA66
        25FFAA6625FAAA662553FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662575AA6625FEAA66
        25FBAA662559FFFFFF00AA662580AA6625FFAA6625FFAA662583FFFFFF00FFFF
        FF00FFFFFF00AA66251AAA6625D7AA6625FFAA6625FAAA662555AA662502AA66
        259FAA6625FFAA6625FAAA662554FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662576AA66
        25FEAA6625FBAA662559FFFFFF00AA66257DAA6625FFAA6625FFAA662586FFFF
        FF00FFFFFF00FFFFFF00AA662518AA6625D4AA6625FFAA6625FAAA662555AA66
        2502AA66259FAA6625FFAA6625FAAA662554FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA66
        2576AA6625FEAA6625FBAA662559FFFFFF00AA66257AAA6625FEAA6625FFAA66
        258AFFFFFF00FFFFFF00FFFFFF00AA662515AA6625D1AA6625FFAA6625FAAA66
        2555AA662502AA66259EAA6625FFAA6625FAAA662555FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00AA662576AA6625FEAA6625FBAA662559FFFFFF00AA662577AA6625FEAA66
        25FFAA66258DFFFFFF00FFFFFF00FFFFFF00AA662513AA6625CEAA6625FFAA66
        25FAAA662534AA662502AA66259DAA6625FFAA6625FAAA662556FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00AA662576AA6625FEAA6625FBAA662559FFFFFF00AA662575AA66
        25FEAA6625FFAA662590FFFFFF00FFFFFF00FFFFFF00AA662512AA6625D8AA66
        25FFAA662596FFFFFF00AA662501AA66259CAA6625FFAA6625FBAA662557FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA662576AA6625FEAA6625FBAA662559FFFFFF00AA66
        2572AA6625FEAA6625FFAA662594AA662501FFFFFF00FFFFFF00AA66256CAA66
        25FFAA6625ABFFFFFF00FFFFFF00AA662501AA66259BAA6625FFAA6625FAAA66
        2538FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00AA662576AA6625FEAA6625FBAA662559FFFF
        FF00AA66256FAA6625FEAA6625FFAA662597AA662502AA662518AA6625D7AA66
        25FFAA66257BFFFFFF00FFFFFF00FFFFFF00AA662502AA6625C3AA6625FFAA66
        25B2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662576AA6625FEAA6625FBAA66
        2559FFFFFF00AA66256CAA6625FEAA6625FFAA6625DAAA6625ECAA6625FFAA66
        25E5AA662513FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662567AA6625FFAA66
        25E6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662576AA6625FEAA66
        25FBAA662559FFFFFF00AA662568AA6625FBAA6625FFAA6625FFAA6625CDAA66
        2526FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662562AA6625FFAA66
        25E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662576AA66
        25FEAA6625FBAA662559FFFFFF00AA662528AA662562AA662540AA662501FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA66259BAA6625FFAA66
        25BDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA66
        2576AA6625FEAA6625FBAA662559FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA662516AA6625F3AA6625FFAA66
        2570FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00AA662576AA6625FEAA6625FBAA662559FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA6625A7AA6625FFAA6625EFAA66
        2510FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00AA662576AA6625FEAA6625FBAA662559FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00AA662581AA6625FFAA6625FFAA66256CFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AA662576AA6625FEAA6625FBAA662564FFFFFF00FFFF
        FF00FFFFFF00AA662533AA6625BAAA6625FFAA6625FFAA6625AEAA662501FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00AA662576AA6625FEAA6625FFAA6625DBAA66
        25BBAA6625DCAA6625FFAA6625FFAA6625FFAA6625A2AA662508FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA66256DAA6625F8AA6625FFAA66
        25FFAA6625FFAA6625FFAA6625CAAA66254BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AA66251AAA662564AA66
        2579AA662563AA662528FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00}
      Transparent = True
      SkinData.SkinSection = 'CHECKBOX'
    end
    object __attahments: TsLabel
      Left = 37
      Top = 157
      Width = 75
      Height = 13
      Caption = 'attachment.pdf'
    end
    object __imgHelp: TsImage
      Left = 574
      Top = 143
      Width = 40
      Height = 42
      Hint = 'Variables:'#13#10#13#10'%name%'#13#10'%arrival%'#13#10'%departure%'#13#10'%room%'#13#10#13#10
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
      Transparent = True
      Visible = False
      SkinData.SkinSection = 'CHECKBOX'
    end
    object __SubjectSample: TsLabel
      Left = 146
      Top = 127
      Width = 20
      Height = 13
      Caption = '(...)'
    end
    object edRecipient: TsComboBox
      Left = 146
      Top = 8
      Width = 460
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'EDIT'
      VerticalAlignment = taAlignTop
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
    object edCC: TsComboBox
      Left = 146
      Top = 35
      Width = 460
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'EDIT'
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
    end
    object edBCC: TsComboBox
      Left = 146
      Top = 62
      Width = 460
      Height = 21
      Alignment = taLeftJustify
      SkinData.SkinSection = 'EDIT'
      VerticalAlignment = taAlignTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentFont = False
      TabOrder = 2
    end
    object edSubject: TsEdit
      Left = 146
      Top = 100
      Width = 460
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = edSubjectChange
      SkinData.SkinSection = 'EDIT'
    end
    object cbxTemplates: TsComboBox
      Left = 8
      Top = 184
      Width = 598
      Height = 21
      Alignment = taLeftJustify
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
      TabOrder = 4
      Visible = False
      OnCloseUp = cbxTemplatesCloseUp
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 462
    Width = 823
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    SkinData.SkinSection = 'TRANSPARENT'
    object sPanel3: TsPanel
      Left = 554
      Top = 0
      Width = 269
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      SkinData.SkinSection = 'TRANSPARENT'
      object sButton1: TsButton
        Left = 3
        Top = 8
        Width = 114
        Height = 25
        HelpContext = 2
        Caption = 'Send'
        Default = True
        ModalResult = 1
        TabOrder = 0
        OnClick = sButton1Click
        SkinData.SkinSection = 'BUTTON'
      end
      object sButton2: TsButton
        Left = 123
        Top = 8
        Width = 117
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        ModalResult = 2
        TabOrder = 1
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object edEmailText: TsMemo
    Left = 0
    Top = 211
    Width = 823
    Height = 251
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
    ExplicitTop = 190
    ExplicitHeight = 272
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
          'Width'
          'WindowState')
      end>
    StorageName = 'Software\Roomer\FormStatus\EmailingDialog'
    StorageType = stRegistry
    Left = 535
    Top = 216
  end
end
