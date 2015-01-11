inherited fmN01Main: TfmN01Main
  Left = 537
  Top = 0
  Caption = 'fmN01Main'
  ClientHeight = 470
  ClientWidth = 773
  Font.Height = -11
  Font.Name = 'Tahoma'
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 789
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 26
    Width = 773
    Height = 444
    Align = alClient
    TabOrder = 4
    object vbSubContractView: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubContract
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'amount'
          Column = cSubContractViewamount
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'C : ,0'
          Kind = skCount
          FieldName = 'ID'
          Column = cSubContractViewID
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'amount'
          Column = cSubContractViewamount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      Bands = <
        item
          Caption = 'Client Contract'
        end
        item
          Caption = 'Sub Contract'
        end>
      object cSubContractViewID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cSubContractViewClientName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ClientName'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cSubContractViewPrjName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PrjName'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cSubContractViewContractName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ContractName'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cSubContractViewSubConName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SubConName'
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cSubContractViewContractScope: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ContractScope'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cSubContractViewSubContNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SubContNo'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cSubContractViewCDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDate'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cSubContractViewamount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cSubContractViewAdvancePayment: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AdvancePayment'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cSubContractViewContPeriod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ContPeriod'
        Width = 98
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object vbSubconInterimHistoryView: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubConInterimHistory
      DataController.DetailKeyFieldNames = 'SubContID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'C : ,0'
          Kind = skCount
          FieldName = 'ID'
          Column = cGrid1DBBandedTableView2ID
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'InvoiceAmount'
          Column = cGrid1DBBandedTableView2InvoiceAmount
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'Retention'
          Column = cGrid1DBBandedTableView2Retention
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skCount
          OnGetText = vGrid1DBBandedTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
          FieldName = 'InvoiceProgress'
          Column = cGrid1DBBandedTableView2InvoiceProgress
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'AdvPayDown'
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'LessPayDown'
          Column = cGrid1DBBandedTableView2LessPayDown
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'DeductionTotal'
          Column = cGrid1DBBandedTableView2DeductionTotal
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'AfterDeductionTotal'
          Column = cGrid1DBBandedTableView2AfterDeductionTotal
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'BankinAmt'
          Column = cSubconInterimHistoryViewBankinAmt
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.OnAfterSummary = vGrid1DBBandedTableView2DataControllerSummaryAfterSummary
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Contents'
        end
        item
          Caption = 'Invoice'
        end
        item
          Caption = 'Deduction'
        end
        item
          Caption = 'After Total'
        end
        item
          Caption = 'Payment'
          Visible = False
        end
        item
          Caption = 'Remark'
          Width = 167
        end>
      object cGrid1DBBandedTableView2ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2SubContID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SubContID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2SubContAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SubContAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 2
        Properties.EditFormat = ',0.00;-,0.00'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2InvoiceNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvoiceNo'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2InvoiceDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvoiceDate'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2InvoiceAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvoiceAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.EditFormat = True
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.00;-,0.00;-'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2InvoiceProgress: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvoiceProgress'
        PropertiesClassName = 'TcxProgressBarProperties'
        Properties.AssignedValues.Min = True
        Properties.BeginColor = clAqua
        Properties.Max = 100.000000000000000000
        Properties.ShowTextStyle = cxtsText
        OnCustomDrawCell = cGrid1DBBandedTableView2InvoiceProgressCustomDrawCell
        Options.Editing = False
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2Retention: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Retention'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.EditFormat = True
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.00;-,0.00;-'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2DeductionTotal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DeductionTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.EditFormat = True
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.00;-,0.00;-'
        Properties.UseThousandSeparator = True
        Options.Editing = False
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2LessPayDown: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LessPayDown'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.EditFormat = True
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.00;-,0.00;-'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2AfterDeductionTotal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AfterDeductionTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.EditFormat = True
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = ',0.00;-,0.00;-'
        Properties.UseThousandSeparator = True
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2DeductionRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DeductionRate'
        PropertiesClassName = 'TcxProgressBarProperties'
        Properties.AssignedValues.Min = True
        Properties.BeginColor = clAqua
        Properties.Max = 100.000000000000000000
        Properties.ShowTextStyle = cxtsText
        OnCustomDrawCell = cGrid1DBBandedTableView2DeductionRateCustomDrawCell
        Options.Editing = False
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cGrid1DBBandedTableView2PayProgress: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PayProgress'
        PropertiesClassName = 'TcxProgressBarProperties'
        Properties.AssignedValues.Min = True
        Properties.BeginColor = clAqua
        Properties.Max = 100.000000000000000000
        Properties.ShowTextStyle = cxtsText
        OnCustomDrawCell = cGrid1DBBandedTableView2PayProgressCustomDrawCell
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cSubconInterimHistoryViewBankinDate: TcxGridDBBandedColumn
        Caption = 'PayDate'
        DataBinding.FieldName = 'BankinDate'
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cSubconInterimHistoryViewBankinAmt: TcxGridDBBandedColumn
        Caption = 'PayAmount'
        DataBinding.FieldName = 'BankinAmt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cSubconInterimHistoryViewRemark: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Remark'
        Width = 20
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object vbBankOutView: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsBankOut
      DataController.DetailKeyFieldNames = 'SubContID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'BankOutAmt'
          Column = cBankOutViewBankOutAmt
        end
        item
          Format = 'C:,0'
          Kind = skCount
          FieldName = 'ID'
          Column = cBankOutViewID
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cBankOutViewID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cBankOutViewSubContID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SubContID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cBankOutViewBankName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BankName'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cBankOutViewChequeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ChequeNo'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cBankOutViewBankOutDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BankOutDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cBankOutViewBankOutAmt: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BankOutAmt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cBankOutViewRemark: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Remark'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object vbVOSubcon: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsVOSubcon
      DataController.DetailKeyFieldNames = 'ContID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'C : ,0'
          Kind = skCount
          FieldName = 'ID'
          Column = cVOSubconID
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cVOSubconID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cVOSubconKind: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Kind'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cVOSubconContID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ContID'
        Options.Editing = False
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cVOSubconVONum: TcxGridDBBandedColumn
        Caption = 'V.O. No.'
        DataBinding.FieldName = 'VONum'
        Width = 137
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cVOSubconVODate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VODate'
        PropertiesClassName = 'TcxDateEditProperties'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cVOSubconVOAmt: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOAmt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cVOSubconRemark: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Remark'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = vbSubContractView
      Options.DetailTabsPosition = dtpTop
      object glGrid1Level3: TcxGridLevel
        Caption = 'Subcon Interim History'
        GridView = vbSubconInterimHistoryView
      end
      object glBankOut: TcxGridLevel
        Caption = 'Payment History'
        GridView = vbBankOutView
      end
      object glVOSubcon: TcxGridLevel
        Caption = 'V.O. History'
        GridView = vbVOSubcon
      end
    end
  end
  inherited CommandArray: TCommandArray
    Left = 448
    Top = 416
  end
  object cpPrtPrt: TdxComponentPrinter
    CurrentLink = grlPrtPrtLink1
    Version = 0
    Left = 64
    Top = 416
    object grlPrtPrtLink1: TdxGridReportLink
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41843.500453969910000000
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object dmDockManager: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = ilDockIcons
    Left = 136
    Top = 416
    PixelsPerInch = 96
  end
  object bmBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 288
    Top = 416
    DockControlHeights = (
      0
      0
      26
      0)
    object brBarManagerBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1796
      FloatTop = 176
      FloatClientWidth = 51
      FloatClientHeight = 22
      Images = ilDockIcons
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 114
          Visible = True
          ItemName = 'bdcFirstDate'
        end
        item
          Visible = True
          ItemName = 'becxbrdtm4'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 107
          Visible = True
          ItemName = 'bdcLastDate'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 61
          Visible = True
          ItemName = 'bcDateCtrl'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'bbExpand'
        end
        item
          Visible = True
          ItemName = 'bbCollapse'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object becxbrdtm4: TcxBarEditItem
      Caption = '~'
      Category = 0
      Hint = '~'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object bdcFirstDate: TdxBarDateCombo
      Caption = #49884#51089#51068' :'
      Category = 0
      Hint = #49884#51089#51068' :'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
    end
    object bdcLastDate: TdxBarDateCombo
      Caption = #51333#47308#51068' :'
      Category = 0
      Hint = #51333#47308#51068' :'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
    end
    object bcDateCtrl: TdxBarCombo
      Caption = #44592#44036#49444#51221' :'
      Category = 0
      Hint = #44592#44036#49444#51221' :'
      Visible = ivAlways
      ShowCaption = True
      Text = #50724#45720
      ShowEditor = False
      Items.Strings = (
        #51060#48264#51452
        #50724#45720
        #51060#48264#45804
        'Custom')
      ItemIndex = 1
    end
    object bbGridPrint: TdxBarButton
      Caption = 'Grid Print...'
      Category = 0
      Hint = 'Grid Print'
      Visible = ivAlways
      OnClick = bbGridPrintClick
    end
    object bbExpand: TdxBarButton
      Caption = 'Expand'
      Category = 0
      Hint = 'Expand All'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = bbExpandClick
    end
    object bbCollapse: TdxBarButton
      Caption = 'Collapse'
      Category = 0
      Hint = 'Collapse All'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = bbCollapseClick
    end
    object bbDocPrt: TdxBarButton
      Caption = 'Sheet Print...'
      Category = 0
      Hint = 'Sheet Print'
      Visible = ivAlways
      OnClick = bbDocPrtClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Print'
      Category = 0
      Visible = ivAlways
      ImageIndex = 11
      Images = ilDockIcons
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDocPrt'
        end
        item
          Visible = True
          ItemName = 'bbSheetDesign'
        end
        item
          Visible = True
          ItemName = 'bbGridPrint'
        end>
    end
    object bbSheetDesign: TdxBarButton
      Caption = 'Sheet Design...'
      Category = 0
      Hint = 'Sheet Design'
      Visible = ivAlways
      OnClick = bbSheetDesignClick
    end
  end
  object ilDockIcons: TImageList
    Left = 8
    Top = 417
    Bitmap = {
      494C01010C0050023C0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B9B9A009B9B9A009B9B9A009B9B9A009B9B9A009B9B9A009B9B9A009B9B
      9A0000000000000000000000000000000000AB7E6200A4775A00955F3F008E57
      39007E4020007E402000000000000000000000000000AB7E6200A4775A00955F
      3F008E5739007E4020007E402000000000000000000000000000F1A59300E96F
      5000E9634100E9634100E9634100E9634100E9634100E9634100E9634100E963
      4100E96F5000F1A5930000000000000000000000000000000000F1A59300E96F
      5000E9634100E9634100E9634100E9634100E9634100E9634100E9634100E963
      4100E96F5000F1A5930000000000000000000000000000000000000000000000
      0000BFBFBE00F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F8009B9B
      9A0000000000000000000000000000000000AB7E6200FCFAFA00E3C8B800CDA3
      8C00AC7655007E402000000000000000000000000000AB7E6200FCFAFA00E3C8
      B800CDA38C00AC7655007E4020000000000000000000EBA28F00E98D7600F9DA
      D600FCECEC00FCECEC00FCECEC00FCECEC00FCECEC00FCECEC00FCECEC00FCEC
      EC00F9DAD600E98C7500EBA28F000000000000000000EBA28F00E98D7600F9DA
      D600FCECEC00FCECEC00FCECEC00FCECEC00FCECEC00FCECEC00FCECEC00FCEC
      EC00F9DAD600E98C7500EBA28F000000000000000000D8D8D800CBCBCB00BEBE
      BE00BFBFBE00F8F8F8007B645C007B645C007B645C007B645C00F8F8F8009B9B
      9A00D1D1D100000000000000000000000000AB7E6200FCFAFA00E3C8B800CDA3
      8C00B9805F007E402000000000000000000000000000AB7E6200FCFAFA00E3C8
      B800CDA38C00B9805F007E4020000000000000000000D4634500F3D7D300F7E8
      E800F7E8E800F7E8E800F7E8E800F7E8E800F7E8E800F7E8E800F7E8E800F7E8
      E800F7E8E800F2D5D100D46345000000000000000000D4634500F3D7D300F7E8
      E800F7E8E800F7E8E800F7E8E800FCF4F400FCF4F400F7E8E800F7E8E800F7E8
      E800F7E8E800F2D5D100D463450000000000D2C7C2008C7C70008D7E73004840
      3800A8A6A400D5D4D200D5D4D200D5D4D200D5D4D200D5D4D200D5D4D2008B89
      870048403800837367008B7C7000B3A69D00AB7E6200FCFAFA00E3C8B800CDA3
      8C00B9805F007E402000000000000000000000000000AB7E6200FCFAFA00E3C8
      B800CDA38C00B9805F007E4020000000000000000000C54F2D00F1E7E700EFE4
      E400EFE4E400EFE4E400EFE4E400EFE4E400EFE4E400EFE4E400EFE4E400EFE4
      E400EFE4E400EFE4E400C54F2D000000000000000000C54F2D00F1E7E700EFE4
      E400EFE4E400EFE4E400EFE4E400EE664400EE664400EFE4E400EFE4E400EFE4
      E400EFE4E400EFE4E400C54F2D0000000000C9B9B100AB9D9600AC9D96004840
      3800484038004840380048403800484038004840380048403800484038004840
      3800484038009E8E8800AA9B960095817500AB7E6200FCFAFA00E3C8B800CDA3
      8C00B9805F007E402000000000000000000000000000AB7E6200FCFAFA00E3C8
      B800CDA38C00B9805F007E4020000000000000000000B8492700EBE4E400E7DF
      DF00E7DFDF00E7DFDF00E7DFDF00E7DFDF00E7DFDF00E7DFDF00E7DFDF00E7DF
      DF00E7DFDF00E7DFDF00B84927000000000000000000B8492700EBE4E400E7DF
      DF00E7DFDF00E7DFDF00E7DFDF00B8492700B8492700E7DFDF00E7DFDF00E7DF
      DF00E7DFDF00E7DFDF00B849270000000000C9B9B100B7A89F00B6A89D00B4A8
      9C00B3A99B00B3A89C00B3A89C00B5A69E00B4A49C00B2A59A00B0A69900AEA3
      9700AEA29700AFA09700B7A8A10095817500AB7E62009F6B4E009F6B4E009153
      3100915331007E4020007E4020006F432400AB7E62009F6B4E009F6B4E009153
      3100915331007E4020007E4020000000000000000000AF452300EDEAEA00E1DA
      DA00F1EDED00F1EDED00F1EDED00F1EDED00F1EDED00F1EDED00F1EDED00F1ED
      ED00E0D9D900E1DBDB00AF4523000000000000000000AF452300EDEAEA00E1DA
      DA00F1EDED00F1EDED00F1EDED00AF452300AF452300F1EDED00F1EDED00F1ED
      ED00E0D9D900E1DBDB00AF45230000000000C9B9B100C0B0A700D7CFC800DED9
      D300E9E6E100E9E6E100E9E6E100EAE5E200E9E4E100E9E4E100E9E4E100E9E4
      E100DFD7D300D6CCC700C2B2AB0095817500DDC5A900AB7E6200ECD8CD00ECD8
      CD00CAA08900AC7655007E4020009F6B4E00AB7E6200ECD8CD00ECD8CD00CAA0
      8900AC7655007E402000906060000000000000000000AB442200F3F3F300E7E5
      E500EE664400EE664400EE664400EE664400EE664400EE664400EE664400EE66
      4400D8D4D400DBD8D800AB4422000000000000000000AB442200F3F3F300E7E5
      E500EE664400EE664400EE664400AB442200AB442200EE664400EE664400EE66
      4400D8D4D400DBD8D800AB44220000000000C9B9B100CFC1B800E7E0DC00CD9F
      4B00CB8F1A00CA8D1800CA8D1900CA8D1900CA8D1900CA8D1900CA8D1800CC92
      1E00CEA45000E5E0DB00CEC2BA009581750000000000AB7E6200FFFFFF00F1E8
      E500EED2C100AC7655007E402000C8989000AB7E6200FFFFFF00F1E8E500EED2
      C100AC76550090606000000000000000000000000000AC482600F4F4F400EEEE
      EE00AC482600AC482600AC482600AC482600AC482600AC482600AC482600AC48
      2600D2D0D000D7D6D600AC4826000000000000000000AC482600F4F4F400EEEE
      EE00AC482600AC482600AC482600AC482600AC482600AC482600AC482600AC48
      2600D2D0D000D7D6D600AC48260000000000C9B9B100E8E2DB00F8F5F300C98C
      1700DFAD4B00DFAD4B00DFAD4B00DFAD4B00DFAD4A00DFAD4A00DFAD4A00E0B0
      4B00CD942000F5F3F100E0D9D400958175000000000000000000AB7E62009F6B
      4E00955F3F007E4020007E4020009F6B4E00AB7E62009F6B4E00955F3F007E40
      20007E40200000000000000000000000000000000000B4502E00F6F6F600F0F0
      F000F0F0F000F0F0F000EBEBEB00E0E0E000D7D6D600D2D1D100CECECE00CECE
      CE00D2D1D100DEDDDD00B4502E000000000000000000B4502E00F6F6F600F0F0
      F000F0F0F000F0F0F000EBEBEB00B4502E00B4502E00D2D1D100CECECE00CECE
      CE00D2D1D100DEDDDD00B4502E0000000000C9B9B100FDFEFD00FEFEFF00C98A
      1500EECC8B00EECC8B00EECC8B00EECC8B00EECC8B00EECC8B00EECC8A00EECD
      8800CC921D004DD7BA00F8F6F500958175000000000000000000AB7E6200FCFA
      FA00DEC3B100AC7655007E40200000000000AB7E6200FCFAFA00DEC3B100AC76
      55007E40200000000000000000000000000000000000BE5B3900F9F9F900F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F6F6F600BE5B39000000000000000000BE5B3900F9F9F900F3F3
      F300F3F3F300F3F3F300F3F3F300BE5B3900BE5B3900F3F3F300F3F3F300F3F3
      F300F3F3F300F6F6F600BE5B390000000000C9B9B100F7F4F200FCFBFB00C88A
      1500EFCA8000EFCA8000EFCA8000EFCA8000EFCA8000EFCA8000EFC98000EFCA
      7F00CB911C00FBFAFA00F0ECEA00958175000000000000000000AB7E62009F6B
      4E00955F3F007E4020009F6B4E0000000000AB7E62009F6B4E00955F3F007E40
      20009F6B4E0000000000000000000000000000000000CC674500FBFBFB00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700FAFAFA00CC6745000000000000000000CC674500FBFBFB00F7F7
      F700F7F7F700F7F7F700F7F7F700CC674500CC674500F7F7F700F7F7F700F7F7
      F700F7F7F700FAFAFA00CC67450000000000D8CCC700E1D7D200F5F2F100C788
      1300E2AB4100E2AA3F00E2AA3F00E2AA3F00E2AA3F00E1AA3F00E2AB3F00E4AE
      4400C98C1800F5F2F100E1D7D200B3A69D00000000000000000000000000AB7E
      6200FCFAFA007E402000000000000000000000000000AB7E6200FCFAFA007E40
      20000000000000000000000000000000000000000000DA806000F9ECE800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00F8EBE700DA8060000000000000000000DA806000F9ECE800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00F8EBE700DA806000000000000000000000000000000000004734
      1900B8B7B600F4F4F300EFEEEE00EEEDED00EEEDED00EEEDED00F4F3F3009797
      960047341900000000000000000000000000000000000000000000000000AB7E
      6200AB7E62009F6B4E00000000000000000000000000AB7E6200AB7E62009F6B
      4E000000000000000000000000000000000000000000EEB6A200EEA99200FCEF
      EA00000000000000000000000000000000000000000000000000000000000000
      0000FCEFEA00EEA99200EEB6A2000000000000000000EEB6A200EEA99200FCEF
      EA00000000000000000000000000000000000000000000000000000000000000
      0000FCEFEA00EEA99200EEB6A200000000000000000000000000000000004734
      1900BFBFBE0000000000F9F9F900F8F8F800F8F8F800F8F8F800000000009B9B
      9A00473419000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3B9A600EC90
      7100ED876500ED876500ED876500ED876500ED876500ED876500ED876500ED87
      6500EC907100F3B9A60000000000000000000000000000000000F3B9A600EC90
      7100ED876500ED876500ED876500ED876500ED876500ED876500ED876500ED87
      6500EC907100F3B9A60000000000000000000000000000000000000000000000
      0000BFBFBE000000000000000000FEFEFE00FEFEFE00FEFEFE00000000009B9B
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBE00BFBFBE00BFBFBE00BFBFBE00BFBFBE00BFBFBE00BFBFBE00BFBF
      BE00000000000000000000000000000000000000000000000000B7A293006947
      3100694731006947310069473100694731006947310069473100694731006947
      3100694731006947310069473100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004D5A9100183D6000B7A2
      9300694731006947310069473100694731006947310069473100694731006947
      3100694731006947310069473100694731000000000000000000283132000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7A29300EEE6
      E100B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A2
      9300B7A29300B7A2930069473100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D5A91004995E1004D5A9100183D
      6000EEE6E100B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A2
      9300B7A29300B7A29300B7A29300694731000000000028313200006890002831
      3200000000000000000000000000000000000000000000000000000000009060
      6000906060000000000000000000000000000000000000000000B7A29300F1EA
      E600EEE6E100EBE2DD00E9DED800E6D9D300E3D5CE00E0D1C900DDCDC400DBC9
      BF00DBC9BF00B7A2930069473100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C98E40098D8F800468EDD004D5A
      9100183D6000EEE6E100EBE2DD00E9DED800E6D9D300E3D5CE00E0D1C900DDCD
      C400DBC9BF00DBC9BF00B7A29300694731000068900060C8F80030A8D0000068
      900028313200000000000000000000000000000000000000000090606000D8A8
      A800F0DEDE00D080800000000000000000000000000000000000B7A29300F4EE
      EB00F1EAE600EEE6E100EBE2DD00E9DED800E6D9D300E3D5CE00DE9A6C00DE9A
      6C00DBC9BF00B7A29300694731000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000003C98E40098D8F8006394
      CA009B949A00AA888200AA888200AA888200AA888200E6D9D300E3D5CE0010B5
      29000060000000600000B7A2930069473100000000000068900060C8F80030A8
      D000006890002831320000000000000000000000000090606000D8A8A800F8F0
      F000D08080000000000000000000000000000000000000000000B7A29300F6F2
      F000F4EEEB00F1EAE600EEE6E100EBE2DD00E9DED800E6D9D300E3D5CE00E0D1
      C900DDCDC400B7A29300694731000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000000000003C98E400AFB0
      B600AA88820082DCAA00B0EACA0082DCAA00FCF5DE00AA888200E6D9D30010B5
      290068F8980000600000B7A293006947310000000000000000000068900060C8
      F80030A8D00000689000283132000000000090606000D8A8A800F8F0F000D080
      8000000000000000000000000000000000000000000000000000B7A29300F9F6
      F500E3AA8200E2A87F00E1A67C00E1A47A00E1A27700E9DED800DF9E7100DE9C
      6E00E0D1C900B7A29300694731000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000AA88
      8200EFE0C00082DCAA0082DCAA0082DCAA00FFFBF500FDFBF300AA88820010B5
      290010B5290010B52900B7A29300694731000000000000000000000000000068
      900060C8F80030A8D0000068900090606000D8A8A800F8F0F000D08080000000
      0000000000000000000000000000000000000000000000000000B7A29300FCFB
      FA00F9F6F500F6F2F000F4EEEB00F1EAE600EEE6E100EBE2DD00E9DED800E6D9
      D300E3D5CE00B7A29300694731000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000AA88
      8200FBECC300FFDBA600FFCBA500FFEFD800FFF4E200FFF1D700AA888200E9DE
      D800AD4A0000E3D5CE00B7A29300694731000000000000000000000000000000
      00000068900060C8F80090606000D8A8A800F8F0F000D0808000000000000000
      0000000000000000000000000000000000000000000000000000B7A29300FFFF
      FF00E4AE8800E4AC8500E3AA8200E2A87F00E1A67C00EEE6E100E1A27700E0A0
      7400E6D9D300B7A29300694731000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000AA88
      8200F9EEC900FFE6C200FFCBA500FFCBA500FFCBA500FFCBA500AA888200AD4A
      0000AD4A0000E6D9D300B7A29300694731000000000000000000000000000000
      00000000000090606000D8A8A800F8F0F000D080800028313200000000000000
      000000000000D080800090606000000000000000000000000000B7A29300FFFF
      FF00FFFFFF00FDFDFD00FBF9F800F8F4F300F5F0EE00F2ECE900EFE8E400EDE4
      DF00EAE0DA00B7A29300694731000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000AA88
      8200E9DCCB00FEFEFB00FFE8C600FFDAA300FFCBA500F9EBC200AA888200EFE8
      E400EDE4DF00EAE0DA00B7A29300694731000000000000000000000000000000
      000090606000D8A8A800F8F0F000D080800030A8D00000689000283132000000
      000000000000D0808000FFFFFF00906060000000000000000000B7A29300FFFF
      FF00E4AE8800E4AE8800E4AE8800E4AC8500E3AA8200F5F0EE00E1A67C00E1A4
      7A00EDE4DF00B7A29300694731000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C00000000000FFFFFF000000
      000000000000000000000000000080000000000000000000000000000000B7A2
      9300AA888200EBE0CE00FAEFCA00FCEDC300EFE0BF00AA888200F5F0EE00F2EC
      E900EFE8E400EDE4DF00B7A29300694731000000000090606000906060009060
      6000D8A8A800F8F0F000D08080000068900060C8F80030A8D000906060009060
      60008364500089756600D0808000D08080000000000000000000B7A29300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FBF9F800F8F4F300F5F0EE00F2EC
      E900B7A29300B7A29300694731000000000000000000FFFFFF0000000000C0C0
      C00000000000FFFFFF0000000000C0C0C00000000000C0C0C000000000000000
      000000000000000000008000000080000000000000000000000000000000B7A2
      9300FFFFFF00AA888200AA888200AA888200AA888200254CFB00001C8B00F5F0
      EE00F2ECE900B7A29300B7A293006947310090606000F8F0F000EBD3D300D8A8
      A800F0DEDE00D0808000000000000000000000689000D0808000EBD3D300DEB6
      B600D8A8A8008975660000000000000000000000000000000000B7A29300FFFF
      FF00E4AE8800E4AE8800E4AE8800E4AE8800E4AE8800FBF9F800F8F4F300B7A2
      93006947310069473100694731000000000000000000FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000000000008000000080000000000000000000000000000000B7A2
      9300FFFFFF00FFFFFF00FFFFFF000025BD007D8FFF005873FD00254CFB00001C
      8B00B7A2930069473100694731006947310090606000D0808000D0808000D080
      8000EBD3D300D0808000000000000000000000000000D0808000F8F0F000EBD3
      D300DEB6B600D080800000000000000000000000000000000000B7A29300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FBF9F800B7A2
      9300F3EBE600DBC9BF0069473100000000000000000000000000000000000000
      000000000000C0C0C00000000000C0C0C00000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008000000080000000000000000000000000000000B7A2
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF000025BD007D8FFF000025BD00FBF9
      F800B7A29300F3EBE600DBC9BF0069473100906060000000000000000000D080
      8000EBD3D300D0808000000000000000000000000000D0808000FFFFFF00F8F0
      F000D08080000000000000000000000000000000000000000000B7A29300FFFF
      FF00E4AE8800E4AE8800FFFFFF00E4AE8800E4AE8800FFFFFF00E4AE8800B7A2
      9300DBC9BF006947310000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008000000080000000000000000000000000000000B7A2
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000025BD00FFFFFF00FDFD
      FD00B7A29300DBC9BF0069473100000000000000000000000000000000009060
      6000F8F0F000D0808000000000009060600090606000F0DEDE00FFFFFF00D080
      8000000000000000000000000000000000000000000000000000B7A29300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7A2
      9300694731000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000000000008000000080000000000000000000000000000000B7A2
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B7A293006947310000000000000000000000000000000000D0808000D080
      8000D080800000000000D0808000D0808000D0808000D0808000D08080000000
      0000000000000000000000000000000000000000000000000000B7A29300B7A2
      9300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A2
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000080000000000000000000000000000000B7A2
      9300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A2
      9300B7A293000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2652B00A53C0000A53C0000A53C0000A53C0000A53C
      0000A53C0000A53C000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000A22E0800A22E
      0800A22E0800A22E0800C2652B00FFD4A500FFD4A500FFD4A500FFCD9700FFC0
      7D00FFAD5500A53C000000000000000000000000000030A8D000006090000060
      9000006090000060900000609000006090000060900000609000006090000060
      9000006090000060900000609000006090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000A22E08000000
      00000000000000000000C2652B00C2652B00C2652B00C2652B00C2652B00C265
      2B00C2652B00C2652B0000000000000000000000000030A8D000B9E6FB00B9E6
      FB00B9E6FB00B9E6FB00B9E6FB00A6DDF50092D4EE007ECBE8006CC4E3005BBC
      DE0049B4D80038ACD20030A8D00000609000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000A22E08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000030A8D000B9E6FB000068
      9000B9E6FB0000689000B9E6FB0000689000A6DDF500006890007ECBE8000068
      90005BBCDE000068900038ACD20000609000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000808080000000000000000000000000000000000000000000A22E08000000
      00000000000000000000C2652B00A53C0000A53C0000A53C0000A53C0000A53C
      0000A53C0000A53C000000000000000000000000000030A8D00030A8D000117F
      A70030A8D000117FA70030A8D000117FA70030A8D000117FA70030A8D000117F
      A70030A8D000117FA70030A8D00030A8D000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000A22E0800A22E
      0800A22E0800A22E0800C2652B00FFD4A500FFD4A500FFD4A500FFCD9700FFC0
      7D00FFAD5500A53C00000000000000000000C868600092380400923804009238
      0400923804009238040092380400923804009238040092380400923804000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000A22E08000000
      00000000000000000000C2652B00C2652B00C2652B00C2652B00C2652B00C265
      2B00C2652B00C2652B000000000000000000C8686000F2AE7500EFA46800ED9C
      5D00EB945200E98B46001C1C1C009860600098606000C8686000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000A22E08000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8686000F5B88200923804009238
      04009238040092380400C8989800FCFAF8000098C8001C1C1C00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000A22E08000000
      00000000000000000000C2652B00A53C0000A53C0000A53C0000A53C0000A53C
      0000A53C0000A53C00000000000000000000C8686000F8C69500923804000000
      0000C8686000EEA06200C89898000098C8004ABEDF000098C8001C1C1C000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000A22E0800A22E
      0800A22E0800A22E0800C2652B00FFD4A500FFD4A500FFD4A500FFCD9700FFC0
      7D00FFAD5500A53C00000000000000000000C8686000F8C6950092380400C868
      6000F3B37B00F0A96E00C86860000098C80094E4F6004ABEDF000098C8001C1C
      1C0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000A22E08000000
      00000000000000000000C2652B00C2652B00C2652B00C2652B00C2652B00C265
      2B00C2652B00C2652B000000000000000000C8686000F8C69500C8686000F8C6
      9500F6BC8800C868600000000000000000000098C80094E4F6004ABEDF000098
      C8001C1C1C00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000A22E08000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8686000F8C69500F8C69500F8C6
      9500C8686000000000000000000000000000000000000098C80094E4F6004ABE
      DF000098C8001C1C1C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000C2652B00A22E0800A22E0800A22E
      0800A22E0800A22E0800A22E0800A22E16000000000000000000000000000000
      000000000000000000000000000000000000C8686000F8C69500F8C69500C868
      60000000000000000000000000000000000000000000000000000098C80094E4
      F6004ABEDF008080800000009A0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000C2652B00FFD4A500FFD4A500FFD4
      A500FFCD9700FFC07D00FFAD5500A22E08000000000000000000000000000000
      000000000000000000000000000000000000C8686000F8C69500C86860000000
      0000000000000000000000000000000000000000000000000000000000000098
      C800D2BAAC00778C980000009A0000009A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000008000000000000000C2652B00C2652B00C2652B00C265
      2B00C2652B00C2652B00C2652B00C2652B000000000000000000000000000000
      000000000000000000000000000000000000C8686000C8686000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000030F8006D8AFD000030F80000009A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C868600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000030F8000030F80000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFF00F0381C003C003F00F
      0381800180018007038180018001000003818001800100000381800180010000
      000180018001000000018001800100008003800180010000C007800180010000
      C107800180010000C107800180010000E38F80018001E007E38F8FF18FF1E427
      FFFFC003C003F62FFFFFFFFFFFFFF00FC001FFFF8000DFFFC001FFFF00008FE7
      C001000F000007C3C001000F80008387C001000FC000C10FC001000FE000E01F
      C001000FE000F03FC001000FE000F839C001000FE000F018C001000EE0008000
      C0010004E0000303C0010000E0000383C0010000E0006387C003F800E001E20F
      C007FC00E003C41FC00FFE04E007FFFFFFFFFFFFFC03FFFFFFFFF81FC0038000
      C007F81FDC038000C007F00FDFFF8000C0070001DC038000C0070001C003001F
      C0070001DC03003FC0070001DFFF003FC0070001DC03101FC0070001C003000F
      C0070001DC030307C0070001DFFF0783C00F000100FF0FC1C01F000100FF1FE0
      C03F000100FF3FF0FFFF0001FFFF7FF900000000000000000000000000000000
      000000000000}
  end
  object qSubContract: TUniQuery
    Tag = 1
    SQLInsert.Strings = (
      'INSERT INTO tSubContract'
      
        '  (ID, ContractScope, SubContNo, cdate, amount, AdvancePayment, ' +
        'ContPeriod)'
      'VALUES'
      
        '  (:ID, :ContractScope, :SubContNo, :cdate, :amount, :AdvancePay' +
        'ment, :ContPeriod)')
    SQLDelete.Strings = (
      'DELETE FROM tSubContract'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tSubContract'
      'SET'
      
        '  ID = :ID, ContractScope = :ContractScope, SubContNo = :SubCont' +
        'No, cdate = :cdate, amount = :amount, AdvancePayment = :AdvanceP' +
        'ayment, ContPeriod = :ContPeriod'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tSubContract'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, ContractScope, SubContNo, cdate, amount, AdvancePayme' +
        'nt, ContPeriod FROM tSubContract'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tSubContract')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      'tSubContract.ID,'
      'tSubContract.PayCodeID,'
      'tProject.ClientName,'
      'tProject.PrjName,'
      'tContract.ContractName,'
      'tSubCon.SubConName,'
      'tSubContract.ContractScope,'
      'tSubContract.SubContNo,'
      'tSubContract.cdate,'
      'tSubContract.amount,'
      'tSubContract.AdvancePayment,'
      'tSubContract.ContPeriod'
      'FROM'
      'tSubContract'
      'INNER JOIN tSubCon ON tSubCon.ID = tSubContract.SubConID'
      'LEFT JOIN tContract ON tSubContract.ContractID = tContract.ID'
      'INNER JOIN tProject ON tContract.PrjID = tProject.ID'
      'WHERE'
      'tSubContract.PayCodeID = 27'
      'ORDER BY'
      'tProject.PrjName ASC,'
      'tSubContract.ID ASC')
    Left = 200
    Top = 216
    object qSubContractID: TLongWordField
      DisplayWidth = 5
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object qSubContractClientName: TStringField
      DisplayWidth = 13
      FieldName = 'ClientName'
      Size = 510
    end
    object qSubContractPrjName: TStringField
      DisplayLabel = 'ProjectName'
      DisplayWidth = 14
      FieldName = 'PrjName'
      Size = 510
    end
    object qSubContractContractName: TStringField
      DisplayLabel = 'Contract Name'
      DisplayWidth = 20
      FieldName = 'ContractName'
      ReadOnly = True
      Size = 510
    end
    object qSubContractSubConName: TStringField
      DisplayLabel = 'SupplierName'
      DisplayWidth = 20
      FieldName = 'SubConName'
      Size = 510
    end
    object qSubContractContractScope: TStringField
      DisplayLabel = 'SubContract Name & Scope'
      DisplayWidth = 25
      FieldName = 'ContractScope'
      Size = 510
    end
    object qSubContractSubContNo: TStringField
      DisplayLabel = 'Sub-Contract No.'
      DisplayWidth = 25
      FieldName = 'SubContNo'
      Size = 510
    end
    object qSubContractCDate: TDateField
      DisplayLabel = 'ContractDate'
      DisplayWidth = 13
      FieldName = 'CDate'
    end
    object qSubContractamount: TFloatField
      DisplayLabel = 'Sub Cont Amount'
      DisplayWidth = 17
      FieldName = 'amount'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fSubContractAdvancePayment: TFloatField
      DisplayWidth = 15
      FieldName = 'AdvancePayment'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fSubContractContPeriod: TStringField
      DisplayLabel = 'SubContract Period'
      DisplayWidth = 15
      FieldName = 'ContPeriod'
      Size = 510
    end
  end
  object dsSubContract: TUniDataSource
    DataSet = qSubContract
    Left = 200
    Top = 272
  end
  object UniDacBridge: TUniDacBridge
    Tag = 1
    Left = 208
    Top = 416
  end
  object tSubConInterimHistory: TUniTable
    Tag = 1
    TableName = 'tSubConInterimHistory'
    OrderFields = 'SubContID ASC, InvoiceDate ASC'
    Connection = dmDatabase.ZConnection
    OnCalcFields = tSubConInterimHistoryCalcFields
    Left = 312
    Top = 216
    object fSubConInterimHistoryID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 7
      FieldName = 'ID'
    end
    object fSubConInterimHistorySubContID: TLongWordField
      DisplayWidth = 6
      FieldName = 'SubContID'
    end
    object fSubConInterimHistorySubContAmount: TFloatField
      DisplayLabel = 'Contract Amount'
      DisplayWidth = 14
      FieldName = 'SubContAmount'
      DisplayFormat = ',0.00;-,0.00'
    end
    object fSubConInterimHistoryInvoiceNo: TStringField
      DisplayLabel = 'Invoice No.'
      DisplayWidth = 20
      FieldName = 'InvoiceNo'
      Size = 510
    end
    object fSubConInterimHistoryInvoiceDate: TDateField
      DisplayLabel = 'Invoice Date'
      DisplayWidth = 14
      FieldName = 'InvoiceDate'
    end
    object fSubConInterimHistoryInvoiceAmount: TFloatField
      DisplayLabel = 'Invoice Amount'
      DisplayWidth = 14
      FieldName = 'InvoiceAmount'
      DisplayFormat = ',0.00;-,0.00'
    end
    object fSubConInterimHistoryProgress: TFloatField
      FieldKind = fkCalculated
      FieldName = 'InvoiceProgress'
      DisplayFormat = ',0.0;-,0.0'
      Calculated = True
    end
    object fSubConInterimHistoryRetention: TFloatField
      DisplayWidth = 14
      FieldName = 'Retention'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fSubConInterimHistoryDeductionTotal: TFloatField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'DeductionTotal'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object fSubConInterimHistoryLessPayDown: TFloatField
      DisplayWidth = 14
      FieldName = 'LessPayDown'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fSubConInterimHistoryAfterDeductionTotal: TFloatField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'AfterDeductionTotal'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object fSubConInterimHistoryDeductionRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DeductionRate'
      DisplayFormat = ',0.0;-,0.0'
      Calculated = True
    end
    object fSubConInterimHistoryPayRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PayProgress'
      DisplayFormat = ',0.0;-,0.0'
      Calculated = True
    end
    object fSubConInterimHistoryBankinDate: TDateField
      FieldName = 'BankinDate'
    end
    object fSubConInterimHistoryBankinAmt: TFloatField
      DisplayWidth = 15
      FieldName = 'BankinAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fSubConInterimHistoryRemark: TStringField
      FieldName = 'Remark'
      Size = 510
    end
  end
  object dsSubConInterimHistory: TUniDataSource
    DataSet = tSubConInterimHistory
    Left = 312
    Top = 280
  end
  object cxprtPrt: TdxComponentPrinter
    CurrentLink = lnkPrtlnkPrtPrtLink1
    Version = 0
    Left = 376
    Top = 416
    object lnkPrtlnkPrtPrtLink1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41928.582877453700000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsOnEveryPage.FilterBar = False
      OptionsView.FilterBar = False
      BuiltInReportLink = True
    end
  end
  object qBankOut: TUniQuery
    Tag = 1
    SQLInsert.Strings = (
      'INSERT INTO tBankOutHistory'
      
        '  (ID, SubContID, BankName, ChequeNo, IssuedDate, BankOutDate, B' +
        'ankOutAmt, Remark)'
      'VALUES'
      
        '  (:ID, :SubContID, :BankName, :ChequeNo, :IssuedDate, :BankOutD' +
        'ate, :BankOutAmt, :Remark)')
    SQLDelete.Strings = (
      'DELETE FROM tBankOutHistory'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tBankOutHistory'
      'SET'
      
        '  ID = :ID, SubContID = :SubContID, BankName = :BankName, Cheque' +
        'No = :ChequeNo, IssuedDate = :IssuedDate, BankOutDate = :BankOut' +
        'Date, BankOutAmt = :BankOutAmt, Remark = :Remark'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tBankOutHistory'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, SubContID, BankName, ChequeNo, IssuedDate, BankOutDat' +
        'e, BankOutAmt, Remark FROM tBankOutHistory'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tBankOutHistory')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  tBankOutHistory'
      'ORDER BY'
      '  tBankOutHistory.SubContID ASC,'
      '  tBankOutHistory.BankOutDate ASC')
    Left = 440
    Top = 216
    object fBankOutID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 8
      FieldName = 'ID'
    end
    object fBankOutSubContID: TLongWordField
      DisplayWidth = 8
      FieldName = 'SubContID'
    end
    object fBankOutBankName: TStringField
      DisplayWidth = 12
      FieldName = 'BankName'
      Size = 510
    end
    object fBankOutChequeNo: TStringField
      DisplayWidth = 14
      FieldName = 'ChequeNo'
      Size = 510
    end
    object fBankOutBankOutDate: TDateField
      DisplayWidth = 12
      FieldName = 'BankOutDate'
    end
    object fBankOutBankOutAmt: TFloatField
      DisplayWidth = 13
      FieldName = 'BankOutAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fBankOutRemark: TStringField
      DisplayWidth = 20
      FieldName = 'Remark'
      Size = 510
    end
  end
  object dsBankOut: TUniDataSource
    DataSet = qBankOut
    Left = 440
    Top = 280
  end
  object qVOSubcon: TUniQuery
    Tag = 1
    SQLInsert.Strings = (
      'INSERT INTO tVOHistory'
      '  (ID, Kind, ContID, VONum, VODate, VOAmt, Remark)'
      'VALUES'
      '  (:ID, :Kind, :ContID, :VONum, :VODate, :VOAmt, :Remark)')
    SQLDelete.Strings = (
      'DELETE FROM tVOHistory'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tVOHistory'
      'SET'
      
        '  ID = :ID, Kind = :Kind, ContID = :ContID, VONum = :VONum, VODa' +
        'te = :VODate, VOAmt = :VOAmt, Remark = :Remark'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tVOHistory'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, Kind, ContID, VONum, VODate, VOAmt, Remark FROM tVOHi' +
        'story'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tVOHistory')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  tVOHistory'
      'WHERE'
      '  tVOHistory.Kind = '#39'SubCont'#39
      'ORDER BY'
      '  tVOHistory.ContID ASC,'
      '  tVOHistory.VODate ASC')
    BeforePost = qVOSubconBeforePost
    Left = 560
    Top = 216
    object fVOHistoryID: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object fVOHistoryKind: TStringField
      DisplayWidth = 12
      FieldName = 'Kind'
      Size = 510
    end
    object fVOHistoryContID: TLongWordField
      FieldName = 'ContID'
    end
    object fVOHistoryVODate: TDateField
      DisplayLabel = 'V.O. Date'
      DisplayWidth = 12
      FieldName = 'VODate'
    end
    object fVOHistoryVOAmt: TFloatField
      DisplayLabel = 'V.O. Amount'
      DisplayWidth = 15
      FieldName = 'VOAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fVOSubconRemark: TStringField
      DisplayWidth = 30
      FieldName = 'Remark'
      Size = 510
    end
    object fVOSubconVONum: TStringField
      DisplayWidth = 20
      FieldName = 'VONum'
      Size = 510
    end
  end
  object dsVOSubcon: TUniDataSource
    DataSet = qVOSubcon
    Left = 560
    Top = 280
  end
end
