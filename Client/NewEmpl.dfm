object fmNewEmpl: TfmNewEmpl
  Left = 252
  Top = 128
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1099#1081' '#1089#1086#1090#1088#1091#1076#1085#1080#1082
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
    Left = 64
    Top = 40
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 64
    Top = 72
    Width = 20
    Height = 13
    Caption = #1055#1086#1083
  end
  object Label3: TLabel
    Left = 64
    Top = 128
    Width = 67
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
  end
  object Label4: TLabel
    Left = 64
    Top = 160
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label6: TLabel
    Left = 64
    Top = 200
    Width = 66
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1076#1077#1090#1077#1081
  end
  object Label7: TLabel
    Left = 64
    Top = 240
    Width = 58
    Height = 13
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
  end
  object eName: TEdit
    Left = 144
    Top = 40
    Width = 217
    Height = 21
    TabOrder = 0
    OnChange = eNameChange
  end
  object eKolChild: TEdit
    Left = 144
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ePost: TEdit
    Left = 144
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 296
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 296
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkCancel
  end
  object DateTimePicker1: TDateTimePicker
    Left = 144
    Top = 128
    Width = 186
    Height = 21
    Date = 43984.481666608790000000
    Time = 43984.481666608790000000
    TabOrder = 5
  end
  object DateTimePicker2: TDateTimePicker
    Left = 152
    Top = 160
    Width = 186
    Height = 21
    Date = 43984.481833692130000000
    Time = 43984.481833692130000000
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 144
    Top = 72
    Width = 217
    Height = 41
    TabOrder = 7
  end
  object RadioButton2: TRadioButton
    Left = 152
    Top = 88
    Width = 113
    Height = 17
    Caption = #1052#1091#1078#1089#1082#1086#1081
    TabOrder = 8
  end
  object RadioButton3: TRadioButton
    Left = 240
    Top = 88
    Width = 113
    Height = 17
    Caption = #1046#1077#1085#1089#1082#1080#1081
    TabOrder = 9
  end
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 0
    Width = 854
    Height = 17
    Sections = <>
  end
  object Button1: TButton
    Left = 264
    Top = 240
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 11
    OnClick = Button1Click
  end
end
