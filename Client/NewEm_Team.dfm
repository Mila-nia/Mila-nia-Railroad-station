object fmNewE_T: TfmNewE_T
  Left = 215
  Top = 125
  Width = 572
  Height = 262
  Caption = #1053#1086#1074#1072#1103' '#1089#1074#1103#1079#1100' '#1056#1072#1073#1086#1090#1085#1080#1082'-'#1041#1088#1080#1075#1072#1076#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 42
    Height = 13
    Caption = #1041#1088#1080#1075#1072#1076#1072
  end
  object Label2: TLabel
    Left = 312
    Top = 56
    Width = 48
    Height = 13
    Caption = #1056#1072#1073#1086#1090#1085#1080#1082
  end
  object eTeam: TEdit
    Left = 80
    Top = 56
    Width = 121
    Height = 25
    TabOrder = 0
  end
  object eEmpl: TEdit
    Left = 376
    Top = 56
    Width = 121
    Height = 25
    TabOrder = 1
  end
  object Button1: TButton
    Left = 200
    Top = 56
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 496
    Top = 56
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 152
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 320
    Top = 152
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
end
