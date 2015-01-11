inherited fmProgPriv: TfmProgPriv
  BorderStyle = bsDialog
  Caption = #44428#54620' '#49444#51221
  ClientHeight = 502
  ClientWidth = 686
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 692
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  object btInsertAll: TBitBtn [0]
    Left = 300
    Top = 216
    Width = 41
    Height = 25
    Caption = '>>'
    TabOrder = 3
    OnClick = btInsertAllClick
  end
  object btInsert: TBitBtn [1]
    Left = 300
    Top = 252
    Width = 41
    Height = 25
    Caption = '>'
    TabOrder = 4
    OnClick = btInsertClick
  end
  object BitBtn3: TBitBtn [2]
    Left = 300
    Top = 288
    Width = 41
    Height = 25
    Caption = '<'
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn [3]
    Left = 300
    Top = 324
    Width = 41
    Height = 25
    Caption = '<<'
    TabOrder = 6
    OnClick = BitBtn4Click
  end
  object cxGrid1: TcxGrid [4]
    Left = 24
    Top = 181
    Width = 257
    Height = 313
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dsSTPrograms
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.NavigatorHints = True
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ProgID: TcxGridDBColumn
        DataBinding.FieldName = 'ProgID'
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Width = 196
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid [5]
    Left = 24
    Top = 24
    Width = 609
    Height = 129
    TabOrder = 0
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSTEmployee
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1EmpSN: TcxGridDBColumn
        DataBinding.FieldName = 'EmpSN'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Width = 68
      end
      object cxGrid2DBTableView1DivSN: TcxGridDBColumn
        DataBinding.FieldName = 'DivSN'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Width = 55
      end
      object cxGrid2DBTableView1EmpName: TcxGridDBColumn
        DataBinding.FieldName = 'EmpName'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Options.SortByDisplayText = isbtOn
        Width = 74
      end
      object cxGrid2DBTableView1MPhone: TcxGridDBColumn
        DataBinding.FieldName = 'MPhone'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Width = 79
      end
      object cxGrid2DBTableView1eMail: TcxGridDBColumn
        DataBinding.FieldName = 'eMail'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Width = 115
      end
      object cxGrid2DBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Width = 75
      end
      object cxGrid2DBTableView1UserPass: TcxGridDBColumn
        DataBinding.FieldName = 'UserPass'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Width = 69
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object cxGrid3: TcxGrid [6]
    Left = 360
    Top = 176
    Width = 273
    Height = 313
    TabOrder = 2
    object cxGrid3DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSTAdminProg
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.NavigatorHints = True
      OptionsCustomize.ColumnMoving = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid3DBTableView1EmpSN: TcxGridDBColumn
        DataBinding.FieldName = 'EmpSN'
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.Moving = False
        Width = 60
      end
      object cxGrid3DBTableView1ProgID: TcxGridDBColumn
        DataBinding.FieldName = 'ProgID'
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.Moving = False
        Width = 83
      end
      object cxGrid3DBTableView1ReadOnly: TcxGridDBColumn
        DataBinding.FieldName = 'ReadOnly'
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.Moving = False
        Width = 72
      end
      object cxGrid3DBTableView1ProgSN: TcxGridDBColumn
        DataBinding.FieldName = 'ProgSN'
        Options.Editing = False
        Options.Filtering = False
        Options.IncSearch = False
        Options.Grouping = False
        Options.Moving = False
        Width = 56
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBTableView1
    end
  end
  object btSave: TBitBtn [7]
    Left = 300
    Top = 380
    Width = 41
    Height = 25
    Caption = #51200#51109
    TabOrder = 7
    OnClick = btSaveClick
  end
  inherited CommandArray: TCommandArray
    Left = 40
  end
  object dsSTPrograms: TDataSource
    DataSet = rqrPrograms
    Left = 128
    Top = 416
  end
  object dsSTAdminProg: TDataSource
    DataSet = qrAdminProg
    Left = 512
    Top = 248
  end
  object dsSTEmployee: TDataSource
    DataSet = rqrEmployee
    Left = 464
    Top = 96
  end
  object rqrEmployee: TUniQuery
    Tag = 1
    LocalUpdate = True
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'Select * from Employee'
      'Order by '
      '  EmpName Asc')
    ReadOnly = True
    Active = True
    Left = 432
    Top = 96
    object rqrEmployeeEmpSN: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'EmpSN'
    end
    object rqrEmployeeDivSN: TLongWordField
      FieldName = 'DivSN'
    end
    object rqrEmployeeEmpName: TStringField
      FieldName = 'EmpName'
      Size = 510
    end
    object rqrEmployeeMPhone: TStringField
      FieldName = 'MPhone'
      Size = 510
    end
    object rqrEmployeeeMail: TStringField
      FieldName = 'eMail'
      Size = 510
    end
    object rqrEmployeeUserID: TStringField
      FieldName = 'UserID'
      Size = 510
    end
    object rqrEmployeeUserPass: TStringField
      FieldName = 'UserPass'
      Size = 510
    end
  end
  object rqrPrograms: TUniQuery
    Tag = 1
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'Select * from Programs'
      'Order by'
      '  ProgID Asc;')
    Active = True
    Left = 64
    Top = 400
  end
  object qrAdminProg: TUniQuery
    Tag = 1
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'Select * from AdminProg'
      'WHERE EmpSN = :EmpSN'
      'Order By EmpSN Asc, ProgID Asc')
    MasterSource = dsSTEmployee
    MasterFields = 'EmpSN'
    DetailFields = 'EmpSN'
    Active = True
    Left = 432
    Top = 248
    ParamData = <
      item
        DataType = ftLongWord
        Name = 'EmpSN'
        ParamType = ptInput
        Value = 1
      end>
    object lrgntfldAdminProgProgSN: TLongWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'ProgSN'
    end
    object strngfldAdminProgEmpSN: TStringField
      FieldName = 'EmpSN'
      FixedChar = True
      Size = 510
    end
    object strngfldAdminProgProgID: TStringField
      FieldName = 'ProgID'
      FixedChar = True
      Size = 510
    end
    object strngfldAdminProgReadOnly: TStringField
      FieldName = 'ReadOnly'
      FixedChar = True
      Size = 510
    end
  end
  object DacBridge: TUniDacBridge
    Tag = 1
    Left = 72
    Top = 8
  end
end
