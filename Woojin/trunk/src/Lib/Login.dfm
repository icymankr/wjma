object fmLoginDlg: TfmLoginDlg
  Left = 460
  Top = 315
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 164
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 351
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'Enter the ID && Password.'
    Color = clWhite
    TabOrder = 0
  end
  object btOk: TcxButton
    Left = 160
    Top = 128
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 3
    OnClick = btOkClick
  end
  object btCancel: TcxButton
    Left = 256
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 4
    OnClick = thCancelClick
  end
  object edUserID: TcxTextEdit
    Left = 159
    Top = 57
    TabOrder = 1
    Width = 121
  end
  object edPassword: TcxTextEdit
    Left = 159
    Top = 84
    Properties.EchoMode = eemPassword
    TabOrder = 2
    Width = 121
  end
  object cxlbl1: TcxLabel
    Left = 64
    Top = 57
    AutoSize = False
    Caption = 'User ID'
    Style.BorderColor = clWindowText
    Style.BorderStyle = ebsSingle
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 21
    Width = 89
    AnchorX = 109
    AnchorY = 68
  end
  object cxlbl2: TcxLabel
    Left = 64
    Top = 84
    AutoSize = False
    Caption = 'User Pass'
    Style.BorderColor = clWindowText
    Style.BorderStyle = ebsSingle
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 21
    Width = 89
    AnchorX = 109
    AnchorY = 95
  end
  object qrUserInfo: TUniQuery
    Tag = 1
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'Select * from Employee'
      '  where UserID = :UserID and UserPass = :UserPass')
    ReadOnly = True
    Left = 304
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UserID'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UserPass'
        Value = nil
      end>
    object lrgntfldUserInfoEmpSN: TLongWordField
      FieldName = 'EmpSN'
      Required = True
    end
    object lrgntfldUserInfoDivSN: TLongWordField
      FieldName = 'DivSN'
    end
    object strngfldUserInfoEmpName: TStringField
      FieldName = 'EmpName'
    end
    object strngfldUserInfoMPhone: TStringField
      FieldName = 'MPhone'
      Size = 32
    end
    object strngfldUserInfoeMail: TStringField
      FieldName = 'eMail'
      Size = 64
    end
    object strngfldUserInfoUserID: TStringField
      FieldName = 'UserID'
      Size = 32
    end
    object strngfldUserInfoUserPass: TStringField
      FieldName = 'UserPass'
      Size = 32
    end
  end
  object qrProgIDs: TUniQuery
    Tag = 1
    Connection = dmDatabase.ZConnection
    SQL.Strings = (
      'Select * from AdminProg'
      '  where EmpSN = :EmpSN')
    ReadOnly = True
    Left = 308
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EmpSN'
        Value = nil
      end>
  end
end
