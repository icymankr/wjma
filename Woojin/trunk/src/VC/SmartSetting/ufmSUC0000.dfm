object fmSU0000: TfmSU0000
  Left = 346
  Top = 230
  Caption = 'SmartUpdateConfig'
  ClientHeight = 207
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 319
    Height = 207
    Align = alClient
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    ExplicitHeight = 161
    object cxTextEdit_Password: TcxTextEdit
      Left = 96
      Top = 80
      AutoSize = False
      TabOrder = 9
      Height = 21
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 5
      Top = 56
      AutoSize = False
      Caption = #50500#51060#46356
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 90
      AnchorX = 50
      AnchorY = 67
    end
    object cxLabel2: TcxLabel
      Left = 5
      Top = 32
      AutoSize = False
      Caption = #54252#53944
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 90
      AnchorX = 50
      AnchorY = 43
    end
    object cxLabel4: TcxLabel
      Left = 5
      Top = 80
      AutoSize = False
      Caption = #54056#49828#50892#46300
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 90
      AnchorX = 50
      AnchorY = 91
    end
    object cxTextEdit_IP: TcxTextEdit
      Left = 96
      Top = 8
      AutoSize = False
      TabOrder = 0
      Height = 21
      Width = 121
    end
    object cxTextEdit_Name: TcxTextEdit
      Left = 96
      Top = 56
      AutoSize = False
      TabOrder = 3
      Height = 21
      Width = 121
    end
    object cxTextEdit_Port: TcxTextEdit
      Left = 96
      Top = 32
      AutoSize = False
      TabOrder = 1
      Height = 21
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 8
      AutoSize = False
      Caption = #54840#49828#53944' '#50500#51060#54588
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 90
      AnchorX = 50
      AnchorY = 19
    end
    object RbButton_Cancel: TRbButton
      Left = 238
      Top = 67
      Width = 75
      Height = 25
      OnClick = RbButton_CancelClick
      TabOrder = 4
      TextShadow = True
      ShowCaption = True
      Caption = #51333#47308
      ModalResult = 0
      Spacing = 2
      Layout = blGlyphLeft
      Colors.DefaultFrom = clWhite
      Colors.DefaultTo = 16711808
      Colors.OverFrom = clWhite
      Colors.OverTo = 16711808
      Colors.ClickedFrom = 13029334
      Colors.ClickedTo = 15463415
      Colors.HotTrack = clBlue
      Colors.BorderColor = clGray
      Colors.TextShadow = clWhite
      FadeSpeed = fsMedium
      ShowFocusRect = True
      HotTrack = False
      GradientBorder = True
      GroupIndex = 0
      AllowAllUp = False
      Down = False
      GradientType = gtRadial
    end
    object RbButton_OK: TRbButton
      Left = 238
      Top = 35
      Width = 75
      Height = 25
      OnClick = RbButton_OKClick
      TabOrder = 2
      TextShadow = True
      ShowCaption = True
      Caption = #46321#47197
      ModalResult = 0
      Spacing = 2
      Layout = blGlyphLeft
      Colors.DefaultFrom = clWhite
      Colors.DefaultTo = 16711808
      Colors.OverFrom = clWhite
      Colors.OverTo = 16711808
      Colors.ClickedFrom = 13029334
      Colors.ClickedTo = 15463415
      Colors.HotTrack = clBlue
      Colors.BorderColor = clGray
      Colors.TextShadow = clWhite
      FadeSpeed = fsMedium
      ShowFocusRect = True
      HotTrack = False
      GradientBorder = True
      GroupIndex = 0
      AllowAllUp = False
      Down = False
      GradientType = gtRadial
    end
    object cxCheckBox_Update: TcxCheckBox
      Left = 5
      Top = 171
      Caption = #50629#45936#51060#53944#47484' '#49324#50857#54616#51648' '#50506#51020
      TabOrder = 13
      Width = 171
    end
    object cxLabel6: TcxLabel
      Left = 5
      Top = 104
      AutoSize = False
      Caption = #49892#54665#54028#51068
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 90
      AnchorX = 50
      AnchorY = 115
    end
    object cxTextEdit_ExecFile: TcxTextEdit
      Left = 96
      Top = 104
      AutoSize = False
      TabOrder = 11
      Height = 21
      Width = 121
    end
    object RbButton_Connection: TRbButton
      Left = 238
      Top = 99
      Width = 75
      Height = 25
      OnClick = RbButton_ConnectionClick
      TabOrder = 10
      TextShadow = True
      ShowCaption = True
      Caption = #50672#44208#53580#49828#53944
      ModalResult = 0
      Spacing = 2
      Layout = blGlyphLeft
      Colors.DefaultFrom = clWhite
      Colors.DefaultTo = 16711808
      Colors.OverFrom = clWhite
      Colors.OverTo = 16711808
      Colors.ClickedFrom = 13029334
      Colors.ClickedTo = 15463415
      Colors.HotTrack = clBlue
      Colors.BorderColor = clGray
      Colors.TextShadow = clWhite
      FadeSpeed = fsMedium
      ShowFocusRect = True
      HotTrack = False
      GradientBorder = True
      GroupIndex = 0
      AllowAllUp = False
      Down = False
      GradientType = gtRadial
    end
    object cxlbl1: TcxLabel
      Left = 5
      Top = 131
      AutoSize = False
      Caption = #46356#47113#53664#47532
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 21
      Width = 90
      AnchorX = 50
      AnchorY = 142
    end
    object cxTextEdit_Path: TcxTextEdit
      Left = 96
      Top = 131
      AutoSize = False
      TabOrder = 15
      Height = 21
      Width = 121
    end
  end
  object IdFTP: TIdFTP
    IPVersion = Id_IPv4
    AutoLogin = True
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 208
    Top = 16
  end
end
