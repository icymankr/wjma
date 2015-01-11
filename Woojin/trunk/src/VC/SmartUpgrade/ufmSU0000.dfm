object Form1: TForm1
  Left = 558
  Top = 307
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 182
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label_Count: TLabel
    Left = 162
    Top = 86
    Width = 124
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
  end
  object Label1: TLabel
    Left = 10
    Top = 70
    Width = 271
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Program Upgrading............'
  end
  object Label_AvgSpeed: TLabel
    Left = 10
    Top = 86
    Width = 124
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
  end
  object CurFile: TLabel
    Left = 90
    Top = 110
    Width = 124
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
  end
  object Animate: TAnimate
    Left = 8
    Top = 2
    Width = 272
    Height = 60
    CommonAVI = aviCopyFile
    StopFrame = 22
  end
  object ProgressBar1: TcxProgressBar
    Left = 8
    Top = 128
    TabOrder = 1
    Width = 281
  end
  object ProgressBar2: TcxProgressBar
    Left = 8
    Top = 152
    TabOrder = 2
    Width = 281
  end
  object IdFTP: TIdFTP
    OnWork = IdFTPWork
    OnWorkBegin = IdFTPWorkBegin
    OnWorkEnd = IdFTPWorkEnd
    IPVersion = Id_IPv4
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 104
    Top = 16
  end
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 136
    Top = 16
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 168
    Top = 16
  end
end
