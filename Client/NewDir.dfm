object fmNewRoute: TfmNewRoute
  Left = 315
  Top = 166
  Width = 870
  Height = 450
  Caption = #1053#1086#1074#1099#1081' '#1084#1072#1088#1096#1088#1091#1090
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
    Top = 40
    Width = 98
    Height = 13
    Caption = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 40
    Top = 96
    Width = 82
    Height = 13
    Caption = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
  end
  object Label3: TLabel
    Left = 32
    Top = 152
    Width = 104
    Height = 13
    Caption = #1054#1073#1097#1077#1077' '#1074#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
  end
  object Label4: TLabel
    Left = 56
    Top = 208
    Width = 68
    Height = 13
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
  end
  object eDep: TEdit
    Left = 144
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eAr: TEdit
    Left = 144
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object eTime: TEdit
    Left = 144
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object eDir: TEdit
    Left = 144
    Top = 200
    Width = 121
    Height = 25
    TabOrder = 3
  end
  object Button1: TButton
    Left = 264
    Top = 200
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 4
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 280
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 280
    Width = 75
    Height = 25
    TabOrder = 6
    Kind = bkCancel
  end
end
