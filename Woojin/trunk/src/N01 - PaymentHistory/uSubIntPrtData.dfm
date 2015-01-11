inherited fSubIntHisPrt: TfSubIntHisPrt
  Left = 0
  Top = 0
  Caption = 'fSubIntHisPrt'
  ClientHeight = 311
  ClientWidth = 445
  Font.Height = -11
  Font.Name = 'Tahoma'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 461
  ExplicitHeight = 349
  PixelsPerInch = 96
  TextHeight = 13
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
      'tProject.PrjName ASC')
    Left = 104
    Top = 8
    object fContractPrtID: TLongWordField
      FieldName = 'ID'
    end
    object fContractPrtClientName: TStringField
      FieldName = 'ClientName'
      ReadOnly = True
      Size = 510
    end
    object fContractPrtPrjName: TStringField
      FieldName = 'PrjName'
      ReadOnly = True
      Size = 510
    end
    object fContractPrtContractName: TStringField
      FieldName = 'ContractName'
      ReadOnly = True
      Size = 510
    end
    object fContractPrtSubConName: TStringField
      FieldName = 'SubConName'
      ReadOnly = True
      Size = 510
    end
    object fContractPrtContractScope: TStringField
      FieldName = 'ContractScope'
      Size = 510
    end
    object fContractPrtSubContNo: TStringField
      FieldName = 'SubContNo'
      Size = 510
    end
    object fContractPrtcdate: TDateField
      FieldName = 'cdate'
    end
    object fContractPrtamount: TFloatField
      FieldName = 'amount'
    end
    object fContractPrtAdvancePayment: TFloatField
      FieldName = 'AdvancePayment'
    end
    object fContractPrtContPeriod: TStringField
      FieldName = 'ContPeriod'
      Size = 510
    end
  end
  object dsInterimHistoryPrt: TUniDataSource
    DataSet = qInterimHistoryPrt
    Left = 178
    Top = 72
  end
  object fdsContractPrt: TfrxDBDataset
    UserName = 'frxDSContract'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ClientName=ClientName'
      'PrjName=PrjName'
      'ContractName=ContractName'
      'SubConName=SubConName'
      'ContractScope=ContractScope'
      'SubContNo=SubContNo'
      'cdate=cdate'
      'amount=amount'
      'AdvancePayment=AdvancePayment'
      'ContPeriod=ContPeriod')
    DataSet = qContractPrt
    BCDToCurrency = False
    Left = 104
    Top = 136
  end
  object fdsInterimHistoryPrt: TfrxDBDataset
    UserName = 'frxDSHistory'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'SubContID=SubContID'
      'SubContAmount=SubContAmount'
      'InvoiceNo=InvoiceNo'
      'InvoiceDate=InvoiceDate'
      'InvoiceAmount=InvoiceAmount'
      'Retention=Retention'
      'LessPayDown=LessPayDown'
      'Remark=Remark'
      'AfterDeduct=AfterDeduct'
      'InvoiceRate=InvoiceRate'
      'DeductSum=DeductSum'
      'BankinDate=BankinDate'
      'BankinAmt=BankinAmt')
    DataSource = dsInterimHistoryPrt
    BCDToCurrency = False
    Left = 176
    Top = 136
  end
  object frxReport: TfrxReport
    Version = '4.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
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
    Left = 200
    Top = 198
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
      'SELECT '
      '  * '
      'FROM '
      '  tSubConInterimHistory '
      'ORDER BY '
      '  tSubConInterimHistory.SubContID ASC,'
      '  tSubConInterimHistory.InvoiceDate ASC')
    MasterSource = dsContractPrt
    MasterFields = 'ID'
    DetailFields = 'SubContID'
    IndexFieldNames = 'InvoiceDate'
    OnCalcFields = qInterimHistoryPrtCalcFields
    Left = 174
    Top = 11
    ParamData = <
      item
        DataType = ftLongWord
        Name = 'ID'
        ParamType = ptInput
        Value = 1
      end>
    object fInterimHistoryPrtID: TLongWordField
      FieldName = 'ID'
    end
    object fInterimHistoryPrtSubContID: TLongWordField
      FieldName = 'SubContID'
    end
    object fInterimHistoryPrtSubContAmount: TFloatField
      FieldName = 'SubContAmount'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object fInterimHistoryPrtInvoiceNo: TStringField
      FieldName = 'InvoiceNo'
      Size = 510
    end
    object fInterimHistoryPrtInvoiceDate: TDateField
      FieldName = 'InvoiceDate'
    end
    object fInterimHistoryPrtInvoiceAmount: TFloatField
      FieldName = 'InvoiceAmount'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object fInterimHistoryPrtRetention: TFloatField
      FieldName = 'Retention'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object fInterimHistoryPrtLessPayDown: TFloatField
      FieldName = 'LessPayDown'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object fInterimHistoryPrtRemark: TStringField
      FieldName = 'Remark'
      Size = 510
    end
    object fInterimHistoryPrtAfterDeduct: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AfterDeduct'
      DisplayFormat = ',0.00;-0.00;-'
      Calculated = True
    end
    object fInterimHistoryPrtInvoiceRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'InvoiceRate'
      DisplayFormat = ',0.0%;-,0.0%;-'
      Calculated = True
    end
    object fInterimHistoryPrtDeductSum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DeductSum'
      DisplayFormat = ',0.00;-0.00;-'
      Calculated = True
    end
    object fInterimHistoryPrtBankinDate: TDateField
      FieldName = 'BankinDate'
    end
    object fInterimHistoryPrtBankinAmt: TFloatField
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
    Top = 128
  end
  object qBankOut: TUniQuery
    Tag = 1
    KeyFields = 'ID'
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
      '  tBankOutHistory.SubContID')
    MasterSource = dsContractPrt
    MasterFields = 'ID'
    DetailFields = 'SubContID'
    Active = True
    IndexFieldNames = 'BankOutDate'
    Left = 264
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object fBankOutID: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object fBankOutBankName: TStringField
      FieldName = 'BankName'
      Size = 510
    end
    object fBankOutChequeNo: TStringField
      FieldName = 'ChequeNo'
      Size = 510
    end
    object fBankOutIssuedDate: TDateField
      FieldName = 'IssuedDate'
    end
    object fBankOutBankOutDate: TDateField
      FieldName = 'BankOutDate'
    end
    object fBankOutBankOutAmt: TFloatField
      FieldName = 'BankOutAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fBankOutRemark: TStringField
      FieldName = 'Remark'
      Size = 510
    end
    object fBankOutSubContID: TLongWordField
      FieldName = 'SubContID'
    end
  end
  object dsBankOut: TUniDataSource
    DataSet = qBankOut
    Left = 264
    Top = 80
  end
  object fdsBankOut: TfrxDBDataset
    UserName = 'frxDSBankOut'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'BankName=BankName'
      'ChequeNo=ChequeNo'
      'IssuedDate=IssuedDate'
      'BankOutDate=BankOutDate'
      'BankOutAmt=BankOutAmt'
      'Remark=Remark'
      'SubContID=SubContID')
    DataSource = dsBankOut
    BCDToCurrency = False
    Left = 264
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
      '  tVOHistory.Kind = '#39'SubCont'#39
      'ORDER BY'
      '  tVOHistory.ContID ASC,'
      '  tVOHistory.VODate ASC')
    MasterSource = dsContractPrt
    MasterFields = 'ID'
    DetailFields = 'ContID'
    Active = True
    IndexFieldNames = 'VODate'
    Left = 351
    Top = 8
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
    Left = 351
    Top = 83
  end
  object fdsVOCont: TfrxDBDataset
    UserName = 'frxVoCont'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Kind=Kind'
      'ContID=ContID'
      'VODate=VODate'
      'VOAmt=VOAmt'
      'Remark=Remark'
      'VONum=VONum')
    DataSource = dsVOCont
    BCDToCurrency = False
    Left = 352
    Top = 144
  end
end
