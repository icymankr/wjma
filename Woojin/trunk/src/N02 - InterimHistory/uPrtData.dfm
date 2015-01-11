inherited dmlHisPrt: TdmlHisPrt
  Left = 0
  Top = 0
  Caption = 'dmlHisPrt'
  ClientHeight = 479
  ClientWidth = 752
  Font.Height = -11
  Font.Name = 'Tahoma'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 768
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview: TfrxPreview [0]
    Left = 64
    Top = 0
    Width = 601
    Height = 481
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object qContractPrt: TUniQuery
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
      'tProject.ClientName,'
      'tProject.PrjName,'
      'tContract.ContractName,'
      'tContract.ID,'
      'tContract.ContractNum,'
      'tContract.ContDate,'
      'tContract.ConPeriod,'
      'tContract.AdvancePay,'
      'tContract.ContAmt,'
      'tContract.Complete'
      'FROM'
      'tContract'
      'INNER JOIN tProject ON tProject.ID = tContract.PrjID'
      'ORDER BY'
      'tProject.PrjName ASC,'
      'tContract.ContDate ASC')
    Active = True
    Left = 104
    Top = 16
    object fContractID: TLongWordField
      DisplayWidth = 4
      FieldName = 'ID'
    end
    object fContractContractName: TStringField
      DisplayWidth = 28
      FieldName = 'ContractName'
      Size = 510
    end
    object fContractContractNum: TStringField
      DisplayLabel = 'ContractNumber'
      DisplayWidth = 18
      FieldName = 'ContractNum'
      Size = 510
    end
    object fContractContDate: TDateField
      DisplayWidth = 12
      FieldName = 'ContDate'
    end
    object fContractConPeriod: TStringField
      DisplayWidth = 15
      FieldName = 'ConPeriod'
      Size = 510
    end
    object fContractAdvancePay: TFloatField
      FieldName = 'AdvancePay'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object fContractContAmt: TFloatField
      DisplayLabel = 'ContractAmount'
      DisplayWidth = 15
      FieldName = 'ContAmt'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object fContractComplete: TShortintField
      FieldName = 'Complete'
    end
    object fContractClientName: TStringField
      DisplayWidth = 11
      FieldName = 'ClientName'
      Size = 510
    end
    object fContractPrjName: TStringField
      DisplayWidth = 12
      FieldName = 'PrjName'
      Size = 510
    end
  end
  object dsInterimHistoryPrt: TUniDataSource
    DataSet = qInterimHistoryPrt
    Left = 194
    Top = 80
  end
  object fdsContractPrt: TfrxDBDataset
    UserName = 'frxDSContract'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ContractName=ContractName'
      'ContractNum=ContractNum'
      'ContDate=ContDate'
      'ConPeriod=ConPeriod'
      'AdvancePay=AdvancePay'
      'ContAmt=ContAmt'
      'Complete=Complete'
      'ClientName=ClientName'
      'PrjName=PrjName')
    DataSet = qContractPrt
    BCDToCurrency = False
    Left = 104
    Top = 144
  end
  object fdsInterimHistoryPrt: TfrxDBDataset
    UserName = 'frxDSHistory'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'InvoiceDate=InvoiceDate'
      'InvoiceNo=InvoiceNo'
      'ContAmount=ContAmount'
      'InvoiceAmount=InvoiceAmount'
      'PayDown=PayDown'
      'Retention=Retention'
      'Remark=Remark'
      'ContID=ContID'
      'AfterDeduct=AfterDeduct'
      'InvoiceRate=InvoiceRate'
      'DeductSum=DeductSum'
      'BankinDate=BankinDate'
      'BankinAmt=BankinAmt')
    DataSource = dsInterimHistoryPrt
    BCDToCurrency = False
    Left = 192
    Top = 144
  end
  object frxReport: TfrxReport
    Version = '4.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41876.571543437500000000
    ReportOptions.LastChange = 41877.625998553200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 214
    Datasets = <
      item
        DataSet = fdsContractPrt
        DataSetName = 'frxDSContract'
      end
      item
        DataSet = fdsInterimHistoryPrt
        DataSetName = 'frxDSHistory'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.BottomLine.Width = 2.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 113.385900000000000000
        Top = 79.370130000000000000
        Width = 642.520100000000000000
        DataSet = fdsContractPrt
        DataSetName = 'frxDSContract'
        RowCount = 0
        StartNewPage = True
        object Memo5: TfrxMemoView
          Width = 650.079160000000000000
          Height = 34.015770000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INVOICE STATEMENT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 385.512060000000000000
          Top = 56.692950000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DRAFT DATE : [Date]   [Time]    ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsContractPrt
          DataSetName = 'frxDSContract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Memo.UTF8W = (
            'Contract Name : [frxDSContract."ContractName"]')
          ParentFont = False
        end
        object frxDSContractClientName: TfrxMemoView
          Top = 56.692950000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsContractPrt
          DataSetName = 'frxDSContract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Memo.UTF8W = (
            
              'PROJECT : [frxDSContract."ClientName"] - [frxDSContract."PrjName' +
              '"]')
          ParentFont = False
        end
        object frxDSContractContAmt: TfrxMemoView
          Top = 94.488250000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsContractPrt
          DataSetName = 'frxDSContract'
          DisplayFormat.FormatStr = '%n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'CONTRACT AMOUNT : RM[frxDSContract."ContAmt"] (ADVANCE PAYMENT :' +
              ' RM[frxDSContract."AdvancePay"])')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Top = 18.897650000000000000
        Width = 642.520100000000000000
      end
      object DetailData1: TfrxDetailData
        Height = 22.677180000000000000
        Top = 325.039580000000000000
        Width = 642.520100000000000000
        DataSet = fdsInterimHistoryPrt
        DataSetName = 'frxDSHistory'
        RowCount = 0
        object Memo16: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDSHistoryInvoiceNo: TfrxMemoView
          Left = 45.354360000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'InvoiceNo'
          DataSet = fdsInterimHistoryPrt
          DataSetName = 'frxDSHistory'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxDSHistory."InvoiceNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDSHistoryInvoiceDate: TfrxMemoView
          Left = 128.504020000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'InvoiceDate'
          DataSet = fdsInterimHistoryPrt
          DataSetName = 'frxDSHistory'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8W = (
            '[frxDSHistory."InvoiceDate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDSHistoryInvoiceAmount: TfrxMemoView
          Left = 204.094620000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'InvoiceAmount'
          DataSet = fdsInterimHistoryPrt
          DataSetName = 'frxDSHistory'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDSHistory."InvoiceAmount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDSHistoryPayDown: TfrxMemoView
          Left = 302.362400000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PayDown'
          DataSet = fdsInterimHistoryPrt
          DataSetName = 'frxDSHistory'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDSHistory."PayDown"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDSHistoryRetention: TfrxMemoView
          Left = 381.732530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Retention'
          DataSet = fdsInterimHistoryPrt
          DataSetName = 'frxDSHistory'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDSHistory."Retention"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDSHistoryBankinAmt: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BankinAmt'
          DataSet = fdsInterimHistoryPrt
          DataSetName = 'frxDSHistory'
          Memo.UTF8W = (
            '[frxDSHistory."BankinAmt"]')
        end
      end
      object Header1: TfrxHeader
        Height = 86.929190000000000000
        Top = 215.433210000000000000
        Width = 642.520100000000000000
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'INVOICE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 49.133890000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 128.504020000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 52.913385830000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DATE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 423.307360000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AMOUNT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 204.094620000000000000
          Top = 30.236240000000000000
          Width = 98.267780000000000000
          Height = 52.913402910000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'INVOICE AMOUNT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 302.362400000000000000
          Top = 30.236240000000000000
          Width = 241.889920000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DEDUCTION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 302.362400000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'A.P')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 381.732530000000000000
          Top = 56.692950000000000000
          Width = 79.370078740157500000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RETENTION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 461.102660000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SUM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'REMARK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 544.252320000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 52.913402910000000000
          ShowHint = False
          Color = 16774348
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'INVOICE AMOUNT')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object UniDacBridge: TUniDacBridge
    Tag = 1
    Left = 8
    Top = 64
  end
  object dsContractPrt: TUniDataSource
    DataSet = qContractPrt
    Left = 102
    Top = 75
  end
  object qInterimHistoryPrt: TUniQuery
    Tag = 1
    KeyFields = 'ID'
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      'tInterimInvoice.ID,'
      'tInterimInvoice.ContID,'
      'tInterimInvoice.InvoiceDate,'
      'tInterimInvoice.InvoiceNo,'
      'tInterimInvoice.ContAmount,'
      'tInterimInvoice.InvoiceAmount,'
      'tInterimInvoice.PayDown,'
      'tInterimInvoice.Retention,'
      'tInterimInvoice.BankinDate,'
      'tInterimInvoice.BankinAmt,'
      'tInterimInvoice.Remark'
      'FROM'
      'tInterimInvoice'
      'ORDER BY '
      'tInterimInvoice.ContID ASC,'
      'tInterimInvoice.InvoiceDate ASC')
    MasterSource = dsContractPrt
    MasterFields = 'ID'
    DetailFields = 'ContID'
    Active = True
    IndexFieldNames = 'InvoiceDate'
    OnCalcFields = qInterimHistoryPrtCalcFields
    Left = 198
    Top = 11
    ParamData = <
      item
        DataType = ftLongWord
        Name = 'ID'
        ParamType = ptInput
        Value = 3
      end>
    object fInterimHistoryID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 7
      FieldName = 'ID'
    end
    object fInterimHistoryInvoiceDate: TDateField
      DisplayWidth = 12
      FieldName = 'InvoiceDate'
    end
    object fInterimHistoryInvoiceNo: TStringField
      DisplayWidth = 19
      FieldName = 'InvoiceNo'
      Size = 510
    end
    object fInterimHistoryContAmount: TFloatField
      DisplayWidth = 15
      FieldName = 'ContAmount'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fInterimHistoryInvoiceAmount: TFloatField
      DisplayWidth = 15
      FieldName = 'InvoiceAmount'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fInterimHistoryPayDown: TFloatField
      DisplayWidth = 13
      FieldName = 'PayDown'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fInterimHistoryRetention: TFloatField
      DisplayWidth = 13
      FieldName = 'Retention'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fInterimHistoryRemark: TStringField
      DisplayWidth = 15
      FieldName = 'Remark'
      Size = 510
    end
    object fInterimHistoryContID: TLongWordField
      DisplayWidth = 7
      FieldName = 'ContID'
    end
    object fInterimHistoryAfterDeduct: TFloatField
      DisplayLabel = 'AfterDeduction'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'AfterDeduct'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object fHisInvoiceRate: TFloatField
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'InvoiceRate'
      DisplayFormat = ',0.0%'
      Calculated = True
    end
    object fHisDeductSum: TFloatField
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'DeductSum'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object fInterimHistoryPrtBankinDate: TDateField
      FieldName = 'BankinDate'
    end
    object fInterimHistoryPrtBankinAmt: TFloatField
      DisplayWidth = 15
      FieldName = 'BankinAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object frxlsxprt1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = False
    AsText = True
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 8
    Top = 120
  end
  object qBankIn: TUniQuery
    Tag = 1
    KeyFields = 'ID'
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  BankInHistory'
      'ORDER BY'
      '  ContID ASC')
    MasterSource = dsContractPrt
    MasterFields = 'ID'
    DetailFields = 'ContID'
    Active = True
    IndexFieldNames = 'BankInDate'
    Left = 296
    Top = 16
    ParamData = <
      item
        DataType = ftLongWord
        Name = 'ID'
        ParamType = ptInput
        Value = 3
      end>
    object fBankInID: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object fBankInContID: TLongWordField
      FieldName = 'ContID'
    end
    object fBankInBankName: TStringField
      FieldName = 'BankName'
      Size = 510
    end
    object fBankInBankInDate: TDateField
      FieldName = 'BankInDate'
    end
    object fBankInBankInAmt: TFloatField
      FieldName = 'BankInAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fBankInRemark: TStringField
      FieldName = 'Remark'
      Size = 510
    end
  end
  object dsBankIn: TUniDataSource
    DataSet = qBankIn
    Left = 296
    Top = 88
  end
  object fdsBankIn: TfrxDBDataset
    UserName = 'frxDSBankIn'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ContID=ContID'
      'BankName=BankName'
      'BankInDate=BankInDate'
      'BankInAmt=BankInAmt'
      'Remark=Remark')
    DataSource = dsBankIn
    BCDToCurrency = False
    Left = 296
    Top = 144
  end
  object qVOCont: TUniQuery
    Tag = 1
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO tVOHistory'
      '  (ID, Kind, ContID, VODate, VOAmt)'
      'VALUES'
      '  (:ID, :Kind, :ContID, :VODate, :VOAmt)')
    SQLDelete.Strings = (
      'DELETE FROM tVOHistory'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tVOHistory'
      'SET'
      
        '  ID = :ID, Kind = :Kind, ContID = :ContID, VODate = :VODate, VO' +
        'Amt = :VOAmt'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tVOHistory'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT ID, Kind, ContID, VODate, VOAmt FROM tVOHistory'
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
      '  tVOHistory.Kind = '#39'ClientCont'#39
      'ORDER BY'
      '  tVOHistory.ContID ASC,'
      '  tVOHistory.VODate ASC')
    MasterSource = dsContractPrt
    MasterFields = 'ID'
    DetailFields = 'ContID'
    Active = True
    IndexFieldNames = 'VODate'
    Left = 383
    Top = 16
    ParamData = <
      item
        DataType = ftLongWord
        Name = 'ID'
        ParamType = ptInput
        Value = 3
      end>
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
    object fVOContRemark: TStringField
      DisplayWidth = 30
      FieldName = 'Remark'
      Size = 510
    end
    object fVOContVONum: TStringField
      DisplayWidth = 25
      FieldName = 'VONum'
      Size = 510
    end
  end
  object dsVOCont: TUniDataSource
    DataSet = qVOCont
    Left = 383
    Top = 91
  end
  object fdsVOCont: TfrxDBDataset
    UserName = 'frxVoCont'
    CloseDataSource = False
    DataSource = dsVOCont
    BCDToCurrency = False
    Left = 384
    Top = 144
  end
end
