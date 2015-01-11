object fmSU0000: TfmSU0000
  Left = 314
  Top = 209
  Width = 309
  Height = 190
  Caption = 'Smart Upgrader'
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
    Width = 301
    Height = 163
    Align = alClient
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    object cxTextEdit_Password: TcxTextEdit
      Left = 96
      Top = 80
      AutoSize = False
      TabOrder = 0
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
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Height = 21
      Width = 90
    end
    object cxLabel2: TcxLabel
      Left = 5
      Top = 32
      AutoSize = False
      Caption = #54252#53944
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Height = 21
      Width = 90
    end
    object cxLabel4: TcxLabel
      Left = 5
      Top = 80
      AutoSize = False
      Caption = #54056#49828#50892#46300
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Height = 21
      Width = 90
    end
    object cxLabel5: TcxLabel
      Left = 5
      Top = 104
      AutoSize = False
      Caption = #46356#47113#53664#47532
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Height = 21
      Width = 90
    end
    object cxTextEdit_Directory: TcxTextEdit
      Left = 96
      Top = 104
      AutoSize = False
      TabOrder = 5
      Height = 21
      Width = 121
    end
    object cxTextEdit_IP: TcxTextEdit
      Left = 96
      Top = 8
      AutoSize = False
      TabOrder = 6
      Height = 21
      Width = 121
    end
    object cxTextEdit_Name: TcxTextEdit
      Left = 96
      Top = 56
      AutoSize = False
      TabOrder = 7
      Height = 21
      Width = 121
    end
    object cxTextEdit_Port: TcxTextEdit
      Left = 96
      Top = 32
      AutoSize = False
      TabOrder = 8
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
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsOffice11
      Style.Color = 16711808
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clSilver
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.HotTrack = True
      Height = 21
      Width = 90
    end
    object RbButton_Cancel: TRbButton
      Left = 222
      Top = 99
      Width = 75
      Height = 25
      TabOrder = 10
      TextShadow = True
      ShowCaption = True
      Caption = #52712#49548
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
      Left = 222
      Top = 67
      Width = 75
      Height = 25
      OnClick = RbButton_OKClick
      TabOrder = 11
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
      Left = 6
      Top = 131
      Caption = #50629#45936#51060#53944#47484' '#49324#50857#54616#51648' '#50506#51020
      TabOrder = 12
      Width = 185
    end
  end
end
