object fmItemSpec: TfmItemSpec
  Left = 0
  Top = 0
  Caption = 'fmItemSpec'
  ClientHeight = 458
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gr1: TcxGrid
    Left = 8
    Top = 64
    Width = 777
    Height = 361
    TabOrder = 0
    object vGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsItermOrder
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cGrid1DBTableView1DeliveryOrderID: TcxGridDBColumn
        DataBinding.FieldName = 'DeliveryOrderID'
      end
      object cGrid1DBTableView1ItemID: TcxGridDBColumn
        DataBinding.FieldName = 'ItemID'
      end
      object cGrid1DBTableView1Quantity: TcxGridDBColumn
        DataBinding.FieldName = 'Quantity'
      end
      object cGrid1DBTableView1Price: TcxGridDBColumn
        DataBinding.FieldName = 'Price'
      end
      object cGrid1DBTableView1Amount: TcxGridDBColumn
        DataBinding.FieldName = 'Amount'
      end
      object cGrid1DBTableView1KName: TcxGridDBColumn
        DataBinding.FieldName = 'KName'
      end
      object cGrid1DBTableView1Brand: TcxGridDBColumn
        DataBinding.FieldName = 'Brand'
      end
      object cGrid1DBTableView1EName: TcxGridDBColumn
        DataBinding.FieldName = 'EName'
      end
      object cGrid1DBTableView1Spec: TcxGridDBColumn
        DataBinding.FieldName = 'Spec'
      end
      object cGrid1DBTableView1OrgSpec: TcxGridDBColumn
        DataBinding.FieldName = 'OrgSpec'
      end
    end
    object glGrid1Level1: TcxGridLevel
      GridView = vGrid1DBTableView1
    end
  end
  object btn1: TButton
    Left = 224
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Excute'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 336
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
    OnClick = btn2Click
  end
  object qItemOrder: TUniQuery
    Tag = 1
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
      'kitemorder')
    CachedUpdates = True
    Active = True
    Left = 56
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object fItemOrderID: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 6
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
    object fItemOrderOrgSpec: TStringField
      FieldKind = fkLookup
      FieldName = 'OrgSpec'
      LookupDataSet = qItem
      LookupKeyFields = 'ID'
      LookupResultField = 'Spec'
      KeyFields = 'ItemID'
      Lookup = True
    end
  end
  object dsItermOrder: TUniDataSource
    DataSet = qItemOrder
    Left = 56
    Top = 88
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
      '*'
      'FROM'
      'kItem')
    Active = True
    Left = 120
    Top = 24
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
  object dsItem: TUniDataSource
    DataSet = qItem
    Left = 120
    Top = 86
  end
  object UniDacBridge: TUniDacBridge
    Tag = 1
    Left = 152
    Top = 392
  end
end
