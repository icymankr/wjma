inherited fmNewDO: TfmNewDO
  Left = 720
  Top = 0
  Caption = 'New Delivery Order'
  ClientHeight = 656
  ClientWidth = 1123
  Font.Height = -11
  Font.Name = 'Tahoma'
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitTop = -284
  ExplicitWidth = 1139
  ExplicitHeight = 694
  PixelsPerInch = 96
  TextHeight = 13
  object gItem: TcxGrid [0]
    Left = 0
    Top = 141
    Width = 361
    Height = 492
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tvItem: TcxGridDBBandedTableView
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
      DataController.DataSource = dsItem
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Count : ,0;-0;-'
          Kind = skCount
          FieldName = 'KName'
          Column = cItemKName
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cItemID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cItemBrand: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Brand'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cItemKName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KName'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cItemEName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EName'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cItemSpec: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Spec'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cItemL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'L1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cItemL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'L2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cItemL3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'L3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cItemL4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'L4'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.UseThousandSeparator = True
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object glItem: TcxGridLevel
      GridView = tvItem
    end
  end
  object g1: TcxGrid [1]
    Left = 432
    Top = 120
    Width = 683
    Height = 513
    TabOrder = 1
    object tvItemOrder: TcxGridDBBandedTableView
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
      DataController.DataSource = dsItermOrder
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0;-,0;-'
          Kind = skCount
          FieldName = 'ID'
          Column = cItemOrderID
        end
        item
          Format = ',0.00;-,0.00;-'
          Kind = skSum
          FieldName = 'Amount'
          Column = cItemOrderAmount
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.OnAfterSummary = tvItemOrderDataControllerSummaryAfterSummary
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cItemOrderID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cItemOrderDeliveryOrderID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DeliveryOrderID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cItemOrderItemID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ItemID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cItemOrderQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Quantity'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cItemOrderPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Price'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cItemOrderAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Amount'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cItemOrderBrand: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Brand'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cItemOrderKName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KName'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cItemOrderEName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EName'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cItemOrderSpec: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Spec'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object glGrid1Level1: TcxGridLevel
      GridView = tvItemOrder
    end
  end
  object btnAdd: TButton [2]
    Left = 367
    Top = 272
    Width = 59
    Height = 41
    Caption = '>>'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object pnl1: TPanel [3]
    Left = 0
    Top = 0
    Width = 1123
    Height = 105
    Align = alTop
    TabOrder = 3
    object btnCancel: TButton
      Left = 958
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object cbCustomerName: TcxDBLookupComboBox
      Left = 153
      Top = 15
      DataBinding.DataField = 'CustomerID'
      DataBinding.DataSource = dsDO
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'CustomerName'
        end
        item
          MinWidth = 0
          Sorting = False
          SortOrder = soAscending
          Width = 0
          FieldName = 'ContactNumber'
        end
        item
          Sorting = False
          Width = 20
          FieldName = 'PriceLevel'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCusotmer
      Properties.OnChange = cxDBLookupComboBox1PropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 273
    end
    object btnSave: TcxButton
      Left = 832
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Save'
      Enabled = False
      TabOrder = 2
      OnClick = btnSaveClick
    end
    object lbCustomerName: TcxLabel
      Left = 8
      Top = 16
      Caption = 'Account Name :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbDeliDate: TcxLabel
      Left = 19
      Top = 52
      Caption = 'Delivery Date :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object deDeliveryDate: TcxDBDateEdit
      Left = 153
      Top = 52
      DataBinding.DataField = 'DeliveryDate'
      DataBinding.DataSource = dsDO
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Properties.OnChange = deDeliveryDatePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 184
    end
    object cxlbl1: TcxLabel
      Left = 488
      Top = 16
      Caption = 'Invoice No. :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxdbtxtdt1: TcxDBTextEdit
      Left = 606
      Top = 15
      DataBinding.DataField = 'InvoiceNo'
      DataBinding.DataSource = dsDO
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 121
    end
  end
  object ebFilter: TcxTextEdit [4]
    Left = 240
    Top = 111
    ParentFont = False
    Properties.OnChange = ebFilterPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 121
  end
  object lbFilter: TcxLabel [5]
    Left = 188
    Top = 115
    Caption = 'Filter : '
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object rbEnglish: TcxRadioButton [6]
    Left = 8
    Top = 118
    Width = 65
    Height = 17
    Caption = 'English'
    TabOrder = 6
    OnClick = rbEnglishClick
    GroupIndex = 1
    Transparent = True
  end
  object rbKorean: TcxRadioButton [7]
    Left = 79
    Top = 118
    Width = 65
    Height = 17
    Caption = 'Korean'
    TabOrder = 7
    OnClick = rbKoreanClick
    GroupIndex = 1
    Transparent = True
  end
  inherited CommandArray: TCommandArray
    Left = 32
    Top = 608
  end
  object dsItem: TUniDataSource
    DataSet = qItem
    Left = 8
    Top = 464
  end
  object qItem: TUniQuery
    Tag = 1
    SQLInsert.Strings = (
      'INSERT INTO kCustomer'
      
        '  (ID, Name, ContactNumber, PhoneNumber, PriceLevel, Addr, GPSIn' +
        'fo)'
      'VALUES'
      
        '  (:ID, :Name, :ContactNumber, :PhoneNumber, :PriceLevel, :Addr,' +
        ' :GPSInfo)')
    SQLDelete.Strings = (
      'DELETE FROM kCustomer'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE kCustomer'
      'SET'
      
        '  ID = :ID, Name = :Name, ContactNumber = :ContactNumber, PhoneN' +
        'umber = :PhoneNumber, PriceLevel = :PriceLevel, Addr = :Addr, GP' +
        'SInfo = :GPSInfo'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM kCustomer'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, Name, ContactNumber, PhoneNumber, PriceLevel, Addr, G' +
        'PSInfo FROM kCustomer'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM kcustomer')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  kItem'
      'ORDER BY'
      '  ID ASC')
    Left = 8
    Top = 408
    object fItemID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 6
      FieldName = 'ID'
    end
    object fItemBrand: TStringField
      DisplayWidth = 6
      FieldName = 'Brand'
      Size = 510
    end
    object fItemKName: TStringField
      DisplayLabel = 'Korean Name'
      DisplayWidth = 18
      FieldName = 'KName'
      Size = 510
    end
    object fItemEName: TStringField
      DisplayLabel = 'English Name'
      DisplayWidth = 18
      FieldName = 'EName'
      Size = 510
    end
    object fItemSpec: TStringField
      DisplayLabel = 'Spec.'
      DisplayWidth = 11
      FieldName = 'Spec'
      Size = 510
    end
    object fItemL1: TFloatField
      FieldName = 'L1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fItemL2: TFloatField
      FieldName = 'L2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fItemL3: TFloatField
      FieldName = 'L3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fItemL4: TFloatField
      FieldName = 'L4'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object qItemOrder: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO kitemorder'
      '  (ID, DeliveryOrderID, ItemID, Spec, Quantity, Price)'
      'VALUES'
      '  (:ID, :DeliveryOrderID, :ItemID, :Spec, :Quantity, :Price)')
    SQLDelete.Strings = (
      'DELETE FROM kitemorder'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE kitemorder'
      'SET'
      
        '  ID = :ID, DeliveryOrderID = :DeliveryOrderID, ItemID = :ItemID' +
        ', Spec = :Spec, Quantity = :Quantity, Price = :Price'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM kitemorder'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, DeliveryOrderID, ItemID, Spec, Quantity, Price FROM k' +
        'itemorder'
      'WHERE'
      '  ID = :Old_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM kitemorder')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      'kitemorder.ID,'
      'kitemorder.DeliveryOrderID,'
      'kitemorder.ItemID,'
      'kitemorder.Spec,'
      'kitemorder.Quantity,'
      'kitemorder.Price'
      'FROM'
      'kitemorder'
      'WHERE'
      '  kItemOrder.DeliveryOrderID = :DeliveryOrderID')
    DetailFields = 'DeliveryOrderID'
    CachedUpdates = True
    OnCalcFields = qItemOrderCalcFields
    Left = 552
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DeliveryOrderID'
        Value = nil
      end>
    object fItemOrderID: TLongWordField
      FieldName = 'ID'
    end
    object fItemOrderDeliveryOrderID: TLongWordField
      DisplayLabel = 'DOID'
      DisplayWidth = 6
      FieldName = 'DeliveryOrderID'
    end
    object fItemOrderItemID: TLongWordField
      DisplayWidth = 6
      FieldName = 'ItemID'
    end
    object fItemOrderQuantity: TFloatField
      DisplayLabel = 'Qty'
      DisplayWidth = 6
      FieldName = 'Quantity'
      DisplayFormat = ',0;-,0;-'
    end
    object fItemOrderPrice: TFloatField
      DisplayLabel = 'UnitPrice'
      DisplayWidth = 8
      FieldName = 'Price'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object fItemOrderAmount: TFloatField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Amount'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object fItemOrderKName: TStringField
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'KName'
      LookupDataSet = qItem
      LookupKeyFields = 'ID'
      LookupResultField = 'KName'
      KeyFields = 'ItemID'
      Lookup = True
    end
    object fItemOrderBrand: TStringField
      DisplayWidth = 6
      FieldKind = fkLookup
      FieldName = 'Brand'
      LookupDataSet = qItem
      LookupKeyFields = 'ID'
      LookupResultField = 'Brand'
      KeyFields = 'ItemID'
      Lookup = True
    end
    object fItemOrderEName: TStringField
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'EName'
      LookupDataSet = qItem
      LookupKeyFields = 'ID'
      LookupResultField = 'EName'
      KeyFields = 'ItemID'
      Lookup = True
    end
    object fItemOrderSpec: TStringField
      DisplayWidth = 12
      FieldName = 'Spec'
      Size = 510
    end
  end
  object dsItermOrder: TUniDataSource
    DataSet = qItemOrder
    Left = 552
    Top = 424
  end
  object qDOin: TUniQuery
    Tag = 1
    SQLInsert.Strings = (
      'INSERT INTO kdeliveryorder'
      '  (ID, CustomerID, DeliveryDate, IssueDateTime, Amount)'
      'VALUES'
      '  (:ID, :CustomerID, :DeliveryDate, :IssueDateTime, :Amount)')
    SQLDelete.Strings = (
      'DELETE FROM kdeliveryorder'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE kdeliveryorder'
      'SET'
      
        '  ID = :ID, CustomerID = :CustomerID, DeliveryDate = :DeliveryDa' +
        'te, IssueDateTime = :IssueDateTime, Amount = :Amount'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM kdeliveryorder'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, CustomerID, DeliveryDate, IssueDateTime, Amount FROM ' +
        'kdeliveryorder'
      'WHERE'
      '  ID = :Old_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM kdeliveryorder')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      'kDeliveryOrder.ID,'
      'kDeliveryOrder.CustomerID,'
      'kDeliveryOrder.InvoiceNo,'
      'kDeliveryOrder.DeliveryDate,'
      'kCustomer.CustomerName,'
      'kCustomer.ContactNumber,'
      'kCustomer.PriceLevel,'
      'kDeliveryOrder.IssueDateTime,'
      'kDeliveryOrder.Amount'
      'FROM'
      '  kDeliveryOrder'
      
        '  LEFT JOIN kCustomer ON kDeliveryOrder.CustomerID = kCustomer.I' +
        'D'
      'WHERE'
      'kDeliveryOrder.ID = :ID')
    CachedUpdates = True
    Left = 368
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object fDOCustomerName: TStringField
      DisplayWidth = 22
      FieldName = 'CustomerName'
      Size = 510
    end
    object fDOContactNumber: TStringField
      DisplayWidth = 22
      FieldName = 'ContactNumber'
      Size = 510
    end
    object fDOIssueDateTime: TDateTimeField
      DisplayWidth = 22
      FieldName = 'IssueDateTime'
      ReadOnly = True
    end
    object fDOID: TLongWordField
      FieldName = 'ID'
    end
    object fDOCustomerID: TLongWordField
      DisplayWidth = 6
      FieldName = 'CustomerID'
    end
    object fDODeliveryDate: TDateField
      FieldName = 'DeliveryDate'
    end
    object fDOPriceLevel: TFloatField
      FieldName = 'PriceLevel'
      ReadOnly = True
    end
    object fDOAmount: TFloatField
      FieldName = 'Amount'
    end
    object fDOinInvoiceNo: TStringField
      FieldName = 'InvoiceNo'
      FixedChar = True
      Size = 40
    end
  end
  object dsDO: TUniDataSource
    DataSet = qDOin
    Left = 408
    Top = 56
  end
  object UniDacBridge: TUniDacBridge
    Tag = 1
    Left = 120
    Top = 608
  end
  object qCustomer: TUniQuery
    Tag = 1
    SQLInsert.Strings = (
      'INSERT INTO kCustomer'
      
        '  (ID, Name, ContactNumber, PhoneNumber, PriceLevel, Addr, GPSIn' +
        'fo)'
      'VALUES'
      
        '  (:ID, :Name, :ContactNumber, :PhoneNumber, :PriceLevel, :Addr,' +
        ' :GPSInfo)')
    SQLDelete.Strings = (
      'DELETE FROM kCustomer'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE kCustomer'
      'SET'
      
        '  ID = :ID, Name = :Name, ContactNumber = :ContactNumber, PhoneN' +
        'umber = :PhoneNumber, PriceLevel = :PriceLevel, Addr = :Addr, GP' +
        'SInfo = :GPSInfo'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM kCustomer'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, Name, ContactNumber, PhoneNumber, PriceLevel, Addr, G' +
        'PSInfo FROM kCustomer'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM kcustomer')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  kCustomer'
      'ORDER BY'
      '  ID ASC')
    Left = 440
    Top = 8
    object fCustomerID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 8
      FieldName = 'ID'
    end
    object fCustomerName: TStringField
      DisplayWidth = 20
      FieldName = 'CustomerName'
      Size = 510
    end
    object fCustomerContactNumber: TStringField
      FieldName = 'ContactNumber'
      Visible = False
      Size = 510
    end
    object fCustomerPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Visible = False
      Size = 510
    end
    object fCustomerPriceLevel: TFloatField
      FieldName = 'PriceLevel'
      Visible = False
    end
    object fCustomerGPSInfo: TStringField
      FieldName = 'GPSInfo'
      Visible = False
      Size = 510
    end
    object fCustomerAddr: TStringField
      DisplayLabel = 'Address'
      FieldName = 'Addr'
      Visible = False
      Size = 510
    end
  end
  object dsCusotmer: TUniDataSource
    DataSet = qCustomer
    Left = 512
    Top = 8
  end
end
