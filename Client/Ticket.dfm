object fmTicket: TfmTicket
  Left = 169
  Top = 148
  Width = 870
  Height = 448
  Caption = #1041#1080#1083#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 854
    Height = 389
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dm.cdsTicket
    Left = 64
    Top = 216
  end
  object MainMenu1: TMainMenu
    Left = 232
    Top = 152
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
end
