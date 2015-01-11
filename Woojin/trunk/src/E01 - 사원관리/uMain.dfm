inherited fmEmployeeMain: TfmEmployeeMain
  Left = 0
  Top = 0
  Caption = #49324#50896#44288#47532
  ClientHeight = 540
  ClientWidth = 843
  Font.Height = -11
  Font.Name = 'Tahoma'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitTop = -60
  ExplicitWidth = 859
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  object gr1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 843
    Height = 540
    Align = alClient
    TabOrder = 0
    object gvGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEmployee
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      object dbcGrid1DBTableView1EmpSN: TcxGridDBColumn
        DataBinding.FieldName = 'EmpSN'
      end
      object dbcGrid1DBTableView1EmpName: TcxGridDBColumn
        DataBinding.FieldName = 'EmpName'
      end
      object dbcGrid1DBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
      end
      object dbcGrid1DBTableView1UserPass: TcxGridDBColumn
        DataBinding.FieldName = 'UserPass'
      end
      object dbcGrid1DBTableView1DivSN: TcxGridDBColumn
        DataBinding.FieldName = 'DivSN'
      end
      object dbcGrid1DBTableView1MPhone: TcxGridDBColumn
        DataBinding.FieldName = 'MPhone'
      end
      object dbcGrid1DBTableView1eMail: TcxGridDBColumn
        DataBinding.FieldName = 'eMail'
      end
    end
    object glGrid1Level1: TcxGridLevel
      GridView = gvGrid1DBTableView1
    end
  end
  inherited CommandArray: TCommandArray
    Left = 424
    Top = 400
  end
  object qrEmployee: TUniQuery
    Tag = 1
    SQLInsert.Strings = (
      'INSERT INTO Employee'
      '  (EmpSN, DivSN, EmpName, MPhone, eMail, UserID, UserPass)'
      'VALUES'
      
        '  (:EmpSN, :DivSN, :EmpName, :MPhone, :eMail, :UserID, :UserPass' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM Employee'
      'WHERE'
      '  EmpSN = :Old_EmpSN')
    SQLUpdate.Strings = (
      'UPDATE Employee'
      'SET'
      
        '  EmpSN = :EmpSN, DivSN = :DivSN, EmpName = :EmpName, MPhone = :' +
        'MPhone, eMail = :eMail, UserID = :UserID, UserPass = :UserPass'
      'WHERE'
      '  EmpSN = :Old_EmpSN')
    SQLLock.Strings = (
      'SELECT * FROM Employee'
      'WHERE'
      '  EmpSN = :Old_EmpSN'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT EmpSN, DivSN, EmpName, MPhone, eMail, UserID, UserPass FR' +
        'OM Employee'
      'WHERE'
      '  EmpSN = :EmpSN')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM Employee')
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'select * from Employee;')
    Active = True
    Left = 56
    Top = 400
    object fldSTEMPLOYEEEmpSN: TLongWordField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'EmpSN'
    end
    object fldSTEMPLOYEEDivSN: TLongWordField
      DisplayLabel = #48512#49436#47749
      FieldName = 'DivSN'
    end
    object fldSTEMPLOYEEMPhone: TStringField
      DisplayLabel = #54648#46300#54256#48264#54840
      DisplayWidth = 15
      FieldName = 'MPhone'
      Size = 510
    end
    object fldSTEMPLOYEEeMail: TStringField
      DisplayLabel = #51060#47700#51068
      DisplayWidth = 15
      FieldName = 'eMail'
      Size = 510
    end
    object fldSTEMPLOYEEUserID: TStringField
      DisplayWidth = 15
      FieldName = 'UserID'
      Size = 510
    end
    object fldSTEMPLOYEEUserPass: TStringField
      DisplayWidth = 15
      FieldName = 'UserPass'
      Size = 510
    end
    object fldSTEMPLOYEEEmpName: TStringField
      DisplayLabel = #51060#47492
      DisplayWidth = 15
      FieldName = 'EmpName'
      Size = 510
    end
  end
  object dsEmployee: TUniDataSource
    DataSet = qrEmployee
    Left = 144
    Top = 400
  end
  object UniDacBridge: TUniDacBridge
    Tag = 1
    Left = 328
    Top = 400
  end
end
