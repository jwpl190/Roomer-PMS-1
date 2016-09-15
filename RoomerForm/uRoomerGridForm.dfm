inherited frmBaseRoomerGridForm: TfrmBaseRoomerGridForm
  ClientHeight = 581
  ClientWidth = 808
  ExplicitWidth = 824
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 11
  object pnlTop: TsPanel [0]
    Left = 0
    Top = 0
    Width = 808
    Height = 100
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object pnlActionButtons: TsPanel
      Left = 1
      Top = 56
      Width = 806
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      ExplicitLeft = 2
      ExplicitTop = 51
      object btnReport: TsButton
        AlignWithMargins = True
        Left = 675
        Top = 3
        Width = 128
        Height = 37
        Action = acPrint
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = DImages.PngImageList1
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'BUTTON'
        ExplicitLeft = 502
      end
      object btnRefresh: TsButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 128
        Height = 37
        Action = acRefresh
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = DImages.PngImageList1
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'BUTTON'
        ExplicitLeft = 502
      end
      object btnExcel: TsButton
        AlignWithMargins = True
        Left = 541
        Top = 3
        Width = 128
        Height = 37
        Action = acExportExcel
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = DImages.PngImageList1
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'BUTTON'
        ExplicitLeft = 502
      end
    end
    object pnlSelection: TsPanel
      Left = 1
      Top = 1
      Width = 806
      Height = 55
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      ExplicitLeft = 2
      ExplicitTop = 51
      ExplicitHeight = 43
    end
  end
  object grData: TcxGrid [1]
    Left = 0
    Top = 100
    Width = 808
    Height = 461
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    ExplicitTop = 102
    object grDataDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGridData
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = '0'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      Styles.Group = cxsBoldStyle
      Styles.GroupSummary = cxsBoldStyle
    end
    object lvGridDataLevel1: TcxGridLevel
      GridView = grDataDBTableView1
    end
  end
  inherited dxStatusBar: TdxStatusBar
    Top = 561
    Width = 808
  end
  inherited psRoomerBase: TcxPropertiesStore
    Components = <
      item
        Component = grDataDBTableView1
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width')
      end>
  end
  object kbmGridData: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'RoomerRoomReservationID'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.22.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterScroll = kbmGridDataAfterScroll
    Left = 176
    Top = 327
  end
  object dsGridData: TDataSource
    DataSet = kbmGridData
    Left = 176
    Top = 391
  end
  object cxGridStyleRepository: TcxStyleRepository
    Left = 176
    Top = 240
    PixelsPerInch = 96
    object cxsBoldStyle: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object gridPrinter: TdxComponentPrinter
    CurrentLink = gridPrinterLink1
    Version = 0
    Left = 176
    Top = 456
    object gridPrinterLink1: TdxGridReportLink
      Active = True
      Component = grData
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42628.567723368060000000
      ReportDocument.Creator = 'Roomer'
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Arial'
      ReportTitle.Font.Style = [fsBold]
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsFormatting.UseNativeStyles = True
      BuiltInReportLink = True
    end
  end
  object alGridActions: TActionList
    Images = DImages.PngImageList1
    Left = 472
    Top = 240
    object acPrint: TAction
      Caption = 'Print'
      Hint = 'Print the current contents of the grid'
      ImageIndex = 3
      ShortCut = 16464
      OnExecute = acPrintExecute
      OnUpdate = acGridDependentActionUpdate
    end
    object acRefresh: TAction
      Caption = 'Refresh'
      ImageIndex = 11
      OnExecute = acRefreshExecute
    end
    object acExportExcel: TAction
      Caption = 'Export to Excel'
      Hint = 'Create an Excel sheet with the current contents of the grid'
      ImageIndex = 115
      OnExecute = acExportExcelExecute
      OnUpdate = acGridDependentActionUpdate
    end
  end
end
