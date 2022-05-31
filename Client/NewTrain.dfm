object fmNewTrain: TfmNewTrain
  Left = 882
  Top = 156
  Width = 492
  Height = 368
  Caption = #1053#1086#1074#1099#1081' '#1087#1086#1077#1079#1076
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
    Left = 40
    Top = 56
    Width = 78
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
  end
  object Label2: TLabel
    Left = 40
    Top = 104
    Width = 109
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090' '#1074' '#1074#1072#1075#1086#1085#1077
  end
  object Label3: TLabel
    Left = 32
    Top = 192
    Width = 45
    Height = 13
    Caption = #1052#1072#1088#1096#1088#1091#1090
  end
  object Label4: TLabel
    Left = 40
    Top = 144
    Width = 25
    Height = 13
    Caption = #1056#1077#1081#1089
  end
  object eCarriage: TEdit
    Left = 184
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eSpot: TEdit
    Left = 184
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object eRoute: TEdit
    Left = 184
    Top = 192
    Width = 121
    Height = 25
    TabOrder = 2
  end
  object eTrip: TEdit
    Left = 184
    Top = 144
    Width = 121
    Height = 25
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 272
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 280
    Top = 272
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
  object eAr: TEdit
    Left = 304
    Top = 192
    Width = 121
    Height = 25
    TabOrder = 6
  end
  object BitBtn3: TBitBtn
    Left = 304
    Top = 144
    Width = 17
    Height = 25
    Caption = '...'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
end
