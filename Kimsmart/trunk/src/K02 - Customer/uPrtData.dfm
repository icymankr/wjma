inherited fmPrtData: TfmPrtData
  Left = 0
  Top = 0
  Caption = 'fmPrtData'
  ClientHeight = 311
  ClientWidth = 577
  Font.Height = -11
  Font.Name = 'Tahoma'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 593
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  object fdsContractPrt: TfrxDBDataset
    UserName = 'frxDSCustomer'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Name=Name'
      'ContactNumber=ContactNumber'
      'PhoneNumber=PhoneNumber'
      'PriceLevel=PriceLevel'
      'GPSInfo=GPSInfo'
      'Addr=Addr')
    DataSource = dsCusotmer
    BCDToCurrency = False
    Left = 272
    Top = 144
  end
  object frxReport: TfrxReport
    Version = '4.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41984.954802071760000000
    ReportOptions.LastChange = 41984.954837106480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 198
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object UniDacBridge: TUniDacBridge
    Tag = 1
    Left = 8
    Top = 64
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
      '*'
      'FROM'
      'kCustomer')
    Left = 272
    Top = 32
    object fCustomerID: TLongWordField
      DisplayWidth = 8
      FieldName = 'ID'
    end
    object fCustomerName: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
      Size = 510
    end
    object fCustomerContactNumber: TStringField
      DisplayWidth = 20
      FieldName = 'ContactNumber'
      Size = 510
    end
    object fCustomerPhoneNumber: TStringField
      DisplayWidth = 20
      FieldName = 'PhoneNumber'
      Size = 510
    end
    object fCustomerPriceLevel: TFloatField
      FieldName = 'PriceLevel'
    end
    object fCustomerGPSInfo: TStringField
      DisplayWidth = 15
      FieldName = 'GPSInfo'
      Size = 510
    end
    object fCustomerAddr: TStringField
      DisplayLabel = 'Address'
      DisplayWidth = 35
      FieldName = 'Addr'
      Size = 510
    end
  end
  object dsCusotmer: TUniDataSource
    DataSet = qCustomer
    Left = 272
    Top = 91
  end
end
