object frmBaseRoomerForm: TfrmBaseRoomerForm
  Left = 0
  Top = 0
  Caption = 'Base Roomer Form'
  ClientHeight = 253
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object sbStatusBar: TsStatusBar
    Left = 0
    Top = 233
    Width = 663
    Height = 20
    Color = 15130321
    Panels = <
      item
        Style = psOwnerDraw
        Width = 27
      end
      item
        Text = 'Idle'
        Width = 100
      end
      item
        Style = psOwnerDraw
        Width = 50
      end>
    OnDrawPanel = sbStatusBarDrawPanel
    SkinData.SkinSection = 'STATUSBAR'
  end
  object psRoomerBase: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    StorageType = stRegistry
    Left = 568
    Top = 16
  end
  object cxsrRoomerStyleRepository: TcxStyleRepository
    Left = 488
    Top = 16
    PixelsPerInch = 96
    object cxstBandHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxstCaption: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstCardCaptionRow: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstCardRowCaption: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstContentEven: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstContentOdd: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstFilterBar: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstFooter: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxstGroup: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxstHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxstPreview: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxstSelection: TcxStyle
    end
    object cxstReportBandHeader: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object cxstReportCaption: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportCardCaptionRow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportCardRowCaption: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportContent: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportContentEven: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16053492
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportFilterBar: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportFooter: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object cxstReportGroup: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object cxstReportHeader: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
    end
    object cxstReportPreview: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object cxstReportSelection: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object dxssRoomerGridReportLink: TdxGridReportLinkStyleSheet
      Caption = 'Gridprinting Styles'
      Styles.BandHeader = cxstReportBandHeader
      Styles.Caption = cxstReportCaption
      Styles.CardCaptionRow = cxstReportCardCaptionRow
      Styles.CardRowCaption = cxstReportCardRowCaption
      Styles.Content = cxstReportContent
      Styles.ContentEven = cxstReportContentEven
      Styles.ContentOdd = cxstReportContentOdd
      Styles.FilterBar = cxstReportFilterBar
      Styles.Footer = cxstReportFooter
      Styles.Group = cxstReportGroup
      Styles.Header = cxstReportHeader
      Styles.Preview = cxstReportPreview
      Styles.Selection = cxstReportSelection
      BuiltIn = True
    end
    object cxssRoomerGridTableView: TcxGridTableViewStyleSheet
      Caption = 'Gridview Styles'
      Styles.Content = cxstContent
      Styles.ContentEven = cxstContentEven
      Styles.ContentOdd = cxstContentOdd
      Styles.Selection = cxstSelection
      Styles.Footer = cxstFooter
      Styles.Group = cxstGroup
      Styles.GroupSummary = cxstGroup
      Styles.Header = cxstHeader
      Styles.Preview = cxstPreview
      BuiltIn = True
    end
  end
end
