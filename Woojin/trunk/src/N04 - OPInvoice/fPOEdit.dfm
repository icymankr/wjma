inherited fmPOEdit: TfmPOEdit
  Left = 0
  Top = 0
  Caption = 'PO Edit'
  ClientHeight = 384
  ClientWidth = 847
  Font.Height = -11
  Font.Name = 'Tahoma'
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitLeft = -57
  ExplicitWidth = 863
  ExplicitHeight = 422
  PixelsPerInch = 96
  TextHeight = 13
  object vgPO: TcxDBVerticalGrid [0]
    Left = 0
    Top = 0
    Width = 273
    Height = 384
    Align = alLeft
    OptionsView.RowHeaderWidth = 94
    Navigator.Buttons.CustomButtons = <>
    TabOrder = 0
    OnFocusedRecordChanged = vgPOFocusedRecordChanged
    DataController.DataSource = dsPO
    Version = 1
    object rPOPoID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'ID'
      Properties.Options.Editing = False
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object rPOClientName: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'ClientName'
      Properties.Options.Editing = False
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object rPOPrjName: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'PrjName'
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object rPOClientContractName: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'ContractName'
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object rPOSupplierName: TcxDBEditorRow
      Properties.Caption = 'Supplier'
      Properties.DataBinding.FieldName = 'SubConName'
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object rPOCodeName: TcxDBEditorRow
      Properties.Caption = 'Code'
      Properties.DataBinding.FieldName = 'Item'
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object rPOPOName: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'ContractScope'
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
    object rPOPODate: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.DataBinding.FieldName = 'cdate'
      ID = 7
      ParentID = -1
      Index = 7
      Version = 1
    end
    object rPOPONo: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'SubContNo'
      ID = 8
      ParentID = -1
      Index = 8
      Version = 1
    end
    object rPOPOAmt: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
      Properties.EditProperties.DecimalPlaces = 2
      Properties.EditProperties.UseThousandSeparator = True
      Properties.DataBinding.FieldName = 'amount'
      ID = 9
      ParentID = -1
      Index = 9
      Version = 1
    end
  end
  object pnl1: TPanel [1]
    Left = 273
    Top = 0
    Width = 574
    Height = 384
    Align = alClient
    TabOrder = 1
    object lblInvoiceGrid: TLabel
      Left = 6
      Top = 13
      Width = 54
      Height = 13
      Caption = 'Invoice List'
    end
    object gr1: TcxGrid
      Left = 6
      Top = 32
      Width = 563
      Height = 201
      TabOrder = 0
      object vbInvoice: TcxGridDBBandedTableView
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
        DataController.DataSource = dsInvoice
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'C : ,0'
            Kind = skCount
            FieldName = 'InvDate'
            Column = cInvoiceInvDate
          end
          item
            Format = ',0.00;-,0.00;-'
            Kind = skSum
            FieldName = 'InvAmt'
            Column = cInvoiceInvAmt
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        Bands = <
          item
          end>
        object cInvoiceInvID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvID'
          Options.Editing = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cInvoiceIvIssuDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IvIssuDate'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cInvoiceInvDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvDate'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cInvoiceInvNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvNo'
          SortIndex = 0
          SortOrder = soAscending
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cInvoiceInvAmt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvAmt'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.UseThousandSeparator = True
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cInvoiceRemark: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Remark'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cInvoicePoID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SubContID'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object glIv: TcxGridLevel
        GridView = vbInvoice
      end
    end
    object gr2: TcxGrid
      Left = 6
      Top = 239
      Width = 563
      Height = 142
      TabOrder = 1
      object vbBankOut: TcxGridDBBandedTableView
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
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        Bands = <
          item
          end>
        object cBankOutID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cBankOutBankName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BankName'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cBankOutChequeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ChequeNo'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cBankOutIssuedDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IssuedDate'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cBankOutBankOutDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BankOutDate'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cBankOutBankOutAmt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BankOutAmt'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.UseThousandSeparator = True
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cBankOutRemark: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Remark'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cBankOutInvID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvID'
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object glBankOut: TcxGridLevel
        GridView = vbBankOut
      end
    end
  end
  inherited CommandArray: TCommandArray
    Left = 16
    Top = 328
  end
  object UniDacBridge: TUniDacBridge
    Tag = 1
    Left = 104
    Top = 328
  end
  object qInvoice: TUniQuery
    Tag = 1
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      'tSubConInterimHistory.ID As '#39'InvID'#39','
      'tSubConInterimHistory.SubContID,'
      'tSubConInterimHistory.IvIssuDate,'
      'tSubConInterimHistory.InvoiceDate As '#39'InvDate'#39','
      'tSubConInterimHistory.InvoiceNo As '#39'InvNo'#39','
      'tSubConInterimHistory.InvoiceAmount As '#39'InvAmt'#39','
      'tSubConInterimHistory.Remark'
      'FROM'
      'tSubConInterimHistory '
      'ORDER BY'
      'tSubConInterimHistory.InvoiceDate ASC')
    MasterSource = dsPO
    MasterFields = 'ID'
    DetailFields = 'SubContID'
    Left = 377
    Top = 56
    ParamData = <
      item
        DataType = ftLongWord
        Name = 'ID'
        ParamType = ptInput
        Value = 1
      end>
    object fInvoiceInvID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 7
      FieldName = 'InvID'
    end
    object fInvoiceInvDate: TDateField
      DisplayWidth = 12
      FieldName = 'InvDate'
    end
    object fInvoiceInvNo: TStringField
      DisplayWidth = 25
      FieldName = 'InvNo'
      Size = 510
    end
    object fInvoiceInvAmt: TFloatField
      DisplayWidth = 14
      FieldName = 'InvAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fInvoiceRemark: TStringField
      DisplayWidth = 20
      FieldName = 'Remark'
      Size = 510
    end
    object fInvoicePoID: TLongWordField
      DisplayLabel = 'PoID'
      DisplayWidth = 7
      FieldName = 'SubContID'
    end
    object qInvoiceIvIssuDate: TDateField
      DisplayLabel = 'IssuedDate'
      DisplayWidth = 12
      FieldName = 'IvIssuDate'
    end
  end
  object dsInvoice: TUniDataSource
    DataSet = qInvoice
    Left = 377
    Top = 120
  end
  object qPO: TUniQuery
    Tag = 1
    UpdatingTable = 'tSubContract'
    SQLInsert.Strings = (
      'INSERT INTO tSubContract'
      '  (ID, ContractScope, SubContNo, cdate, amount)'
      'VALUES'
      '  (:ID, :ContractScope, :SubContNo, :cdate, :amount)')
    SQLDelete.Strings = (
      'DELETE FROM tSubContract'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tSubContract'
      'SET'
      
        '  ID = :ID, ContractScope = :ContractScope, SubContNo = :SubCont' +
        'No, cdate = :cdate, amount = :amount'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tSubContract'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, ContractScope, SubContNo, cdate, amount FROM tSubCont' +
        'ract'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tSubContract')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      'tProject.ClientName,'
      'tProject.PrjName,'
      'tPayCode.Item,'
      'tSubCon.SubConName,'
      'tContract.ContractName,'
      'tSubContract.ID,'
      'tSubContract.ContractScope,'
      'tSubContract.cdate,'
      'tSubContract.SubContNo,'
      'tSubContract.amount'
      'FROM'
      'tSubContract'
      'INNER JOIN tPayCode ON tSubContract.PayCodeID = tPayCode.ID'
      'INNER JOIN tSubCon ON tSubContract.SubConID = tSubCon.ID'
      'INNER JOIN tContract ON tSubContract.ContractID = tContract.ID'
      'INNER JOIN tProject ON tContract.PrjID = tProject.ID'
      '#WHERE'
      '#tSubContract.PayCodeID <> 27'
      'ORDER BY'
      'ID ASC')
    Left = 193
    Top = 16
    object fq1ClientName: TStringField
      DisplayLabel = 'Client'
      DisplayWidth = 10
      FieldName = 'ClientName'
      ReadOnly = True
      Size = 510
    end
    object fq1PrjName: TStringField
      DisplayLabel = 'Project'
      DisplayWidth = 10
      FieldName = 'PrjName'
      ReadOnly = True
      Size = 510
    end
    object fq1Item: TStringField
      DisplayWidth = 10
      FieldName = 'Item'
      ReadOnly = True
      Size = 510
    end
    object fq1SubConName: TStringField
      DisplayWidth = 10
      FieldName = 'SubConName'
      ReadOnly = True
      Size = 510
    end
    object fq1ContractName: TStringField
      DisplayLabel = 'Contract'
      DisplayWidth = 10
      FieldName = 'ContractName'
      ReadOnly = True
      Size = 510
    end
    object fq1ID: TLongWordField
      Alignment = taLeftJustify
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object fq1ContractScope: TStringField
      DisplayLabel = 'P.O. Description'
      DisplayWidth = 10
      FieldName = 'ContractScope'
      Size = 510
    end
    object fq1cdate: TDateField
      DisplayLabel = 'P.O. Date'
      DisplayWidth = 10
      FieldName = 'cdate'
    end
    object fq1SubContNo: TStringField
      DisplayLabel = 'P.O. No.'
      DisplayWidth = 10
      FieldName = 'SubContNo'
      Size = 510
    end
    object fq1amount: TFloatField
      DisplayLabel = 'P.O. Amt'
      DisplayWidth = 10
      FieldName = 'amount'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object dsPO: TUniDataSource
    DataSet = qPO
    Left = 193
    Top = 80
  end
  object qBankOut: TUniQuery
    Tag = 1
    KeyFields = 'ID'
    SQLInsert.Strings = (
      'INSERT INTO tBankOutHistory'
      
        '  (ID, BankName, ChequeNo, IssuedDate, BankOutDate, BankOutAmt, ' +
        'Remark, InvID)'
      'VALUES'
      
        '  (:ID, :BankName, :ChequeNo, :IssuedDate, :BankOutDate, :BankOu' +
        'tAmt, :Remark, :InvID)')
    SQLDelete.Strings = (
      'DELETE FROM tBankOutHistory'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE tBankOutHistory'
      'SET'
      
        '  ID = :ID, BankName = :BankName, ChequeNo = :ChequeNo, IssuedDa' +
        'te = :IssuedDate, BankOutDate = :BankOutDate, BankOutAmt = :Bank' +
        'OutAmt, Remark = :Remark, InvID = :InvID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM tBankOutHistory'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, BankName, ChequeNo, IssuedDate, BankOutDate, BankOutA' +
        'mt, Remark, InvID FROM tBankOutHistory'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM tBankOutHistory')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      'tBankOutHistory.ID,'
      'tBankOutHistory.BankName,'
      'tBankOutHistory.ChequeNo,'
      'tBankOutHistory.IssuedDate,'
      'tBankOutHistory.BankOutDate,'
      'tBankOutHistory.BankOutAmt,'
      'tBankOutHistory.Remark,'
      'tBankOutHistory.InvID'
      'FROM'
      'tBankOutHistory'
      'ORDER BY'
      'tBankOutHistory.BankOutDate')
    MasterSource = dsInvoice
    MasterFields = 'InvID'
    DetailFields = 'InvID'
    Left = 417
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'InvID'
        Value = nil
      end>
    object fBankOutID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'OutID'
      DisplayWidth = 7
      FieldName = 'ID'
    end
    object fBankOutBankName: TStringField
      DisplayWidth = 8
      FieldName = 'BankName'
      Size = 510
    end
    object fBankOutChequeNo: TStringField
      DisplayWidth = 10
      FieldName = 'ChequeNo'
      Size = 510
    end
    object fBankOutIssuedDate: TDateField
      DisplayWidth = 12
      FieldName = 'IssuedDate'
    end
    object fBankOutBankOutDate: TDateField
      DisplayWidth = 12
      FieldName = 'BankOutDate'
    end
    object fBankOutBankOutAmt: TFloatField
      DisplayWidth = 10
      FieldName = 'BankOutAmt'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fBankOutRemark: TStringField
      DisplayWidth = 10
      FieldName = 'Remark'
      Size = 510
    end
    object fBankOutInvID: TLongWordField
      DisplayWidth = 8
      FieldName = 'InvID'
    end
  end
  object dsBankOut: TUniDataSource
    DataSet = qBankOut
    Left = 417
    Top = 328
  end
end
