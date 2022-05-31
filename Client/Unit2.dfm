object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 187
  Top = 95
  Height = 463
  Width = 1074
  object DCOMConnection1: TDCOMConnection
    Connected = True
    ServerGUID = '{59A5A4B3-A183-42D7-B936-882C8D8216A1}'
    ServerName = 'Project1.MyServer'
    Left = 24
    Top = 8
  end
  object cdsDep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDep'
    RemoteServer = DCOMConnection1
    Left = 24
    Top = 72
    object cdsDepID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsDepNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'NAME'
      Size = 50
    end
  end
  object cdsDir: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDir'
    RemoteServer = DCOMConnection1
    Left = 96
    Top = 72
    object cdsDirID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsDirNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'NAME'
      Size = 40
    end
  end
  object cdsEm_t: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    ProviderName = 'dspEm_t'
    RemoteServer = DCOMConnection1
    Left = 168
    Top = 72
    object cdsEm_tID_EMPL: TIntegerField
      FieldName = 'ID_EMPL'
      Required = True
      Visible = False
    end
    object cdsEm_tID_TEAM: TIntegerField
      FieldName = 'ID_TEAM'
      Required = True
      Visible = False
    end
    object cdsEm_tEMPL_NAME: TStringField
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'EMPL_NAME'
      LookupDataSet = cdsEmpl
      LookupKeyFields = 'ID_EMPL'
      LookupResultField = 'FIO'
      KeyFields = 'ID_EMPL'
      Lookup = True
    end
    object cdsEm_tTEAM_NAME: TStringField
      DisplayLabel = #1041#1088#1080#1075#1072#1076#1072
      FieldKind = fkLookup
      FieldName = 'TEAM_NAME'
      LookupDataSet = cdsTeam
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_TEAM'
      Lookup = True
    end
  end
  object cdsEmpl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpl'
    RemoteServer = DCOMConnection1
    Left = 248
    Top = 72
    object cdsEmplID_EMPL: TIntegerField
      FieldName = 'ID_EMPL'
      Required = True
      Visible = False
    end
    object cdsEmplEMPL_NAME: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'EMPL_NAME'
      LookupDataSet = cdsPost
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_POST'
      Lookup = True
    end
    object cdsEmplFIO: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 30
      FieldName = 'FIO'
      Size = 50
    end
    object cdsEmplSEX: TIntegerField
      DisplayLabel = #1055#1086#1083
      FieldName = 'SEX'
    end
    object cdsEmplDATA: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'DATA'
    end
    object cdsEmplCHILD: TIntegerField
      DisplayLabel = #1044#1077#1090#1080
      FieldName = 'CHILD'
    end
    object cdsEmplDATA_EMPL: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      FieldName = 'DATA_EMPL'
    end
    object cdsEmplID_POST: TIntegerField
      FieldName = 'ID_POST'
      Visible = False
    end
    object cdsEmplZP: TStringField
      FieldKind = fkLookup
      FieldName = 'ZP'
      LookupDataSet = cdsPost
      LookupKeyFields = 'ID'
      LookupResultField = 'WAGE'
      KeyFields = 'ID_POST'
      Visible = False
      Lookup = True
    end
  end
  object cdsPass: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPass'
    RemoteServer = DCOMConnection1
    Left = 336
    Top = 72
    object cdsPassID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsPassPASSPORT: TIntegerField
      DisplayLabel = #1055#1072#1089#1087#1086#1088#1090
      FieldName = 'PASSPORT'
    end
    object cdsPassFIO: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 30
      FieldName = 'FIO'
      Size = 50
    end
  end
  object cdsPost: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPost'
    RemoteServer = DCOMConnection1
    Left = 416
    Top = 72
    object cdsPostID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsPostNAME: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 20
      FieldName = 'NAME'
      Size = 50
    end
    object cdsPostWAGE: TIntegerField
      DisplayLabel = #1047#1055
      FieldName = 'WAGE'
    end
  end
  object cdsR_st: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspR_st'
    RemoteServer = DCOMConnection1
    Left = 488
    Top = 72
    object cdsR_stID_ST: TIntegerField
      FieldName = 'ID_ST'
      Required = True
      Visible = False
    end
    object cdsR_stID_ROUTE: TIntegerField
      FieldName = 'ID_ROUTE'
      Required = True
      Visible = False
    end
    object cdsR_stROUTE_NAME: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_NAME'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_DEP'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsR_stROUTE_AR: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_AR'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_AR'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsR_stST_NAME: TStringField
      DisplayLabel = #1057#1090#1072#1085#1094#1080#1103
      FieldKind = fkLookup
      FieldName = 'ST_NAME'
      LookupDataSet = cdsStat
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_ST'
      Lookup = True
    end
  end
  object cdsRoute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRoute'
    RemoteServer = DCOMConnection1
    Left = 568
    Top = 72
    object cdsRouteID_ROUTE: TIntegerField
      FieldName = 'ID_ROUTE'
      Required = True
      Visible = False
    end
    object cdsRouteP_DEP: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      DisplayWidth = 20
      FieldName = 'P_DEP'
      Size = 40
    end
    object cdsRouteP_AR: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
      DisplayWidth = 20
      FieldName = 'P_AR'
      Size = 40
    end
    object cdsRouteTR_TIME: TIntegerField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080
      FieldName = 'TR_TIME'
    end
    object cdsRouteID_DIR: TIntegerField
      FieldName = 'ID_DIR'
      Visible = False
    end
    object cdsRouteDIR_NAME: TStringField
      DisplayLabel = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      FieldKind = fkLookup
      FieldName = 'DIR_NAME'
      LookupDataSet = cdsDir
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_DIR'
      Lookup = True
    end
  end
  object cdsStat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStat'
    RemoteServer = DCOMConnection1
    Left = 648
    Top = 72
    object cdsStatID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsStatNAME: TStringField
      DisplayLabel = #1057#1090#1072#1085#1094#1080#1080
      DisplayWidth = 30
      FieldName = 'NAME'
      Size = 50
    end
  end
  object cdsT_Dep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspT_Dep'
    RemoteServer = DCOMConnection1
    Left = 720
    Top = 72
    object cdsT_DepID_TEAM: TIntegerField
      FieldName = 'ID_TEAM'
      Required = True
      Visible = False
    end
    object cdsT_DepID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
      Visible = False
    end
    object cdsT_DepDEP_NAME: TStringField
      DisplayLabel = #1054#1090#1076#1077#1083
      FieldKind = fkLookup
      FieldName = 'DEP_NAME'
      LookupDataSet = cdsDep
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_DEP'
      Lookup = True
    end
    object cdsT_DepTEAM_NAME: TStringField
      DisplayLabel = #1041#1088#1080#1075#1072#1076#1072
      FieldKind = fkLookup
      FieldName = 'TEAM_NAME'
      LookupDataSet = cdsTeam
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ID_TEAM'
      Lookup = True
    end
  end
  object cdsTeam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTeam'
    RemoteServer = DCOMConnection1
    Left = 784
    Top = 72
    object cdsTeamID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object cdsTeamNAME: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'NAME'
      Size = 50
    end
  end
  object cdsTicket: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTicket'
    RemoteServer = DCOMConnection1
    Left = 848
    Top = 72
    object cdsTicketPASS_NAME: TStringField
      DisplayLabel = #1055#1072#1089#1089#1072#1078#1080#1088
      FieldKind = fkLookup
      FieldName = 'PASS_NAME'
      LookupDataSet = cdsPass
      LookupKeyFields = 'ID'
      LookupResultField = 'FIO'
      KeyFields = 'ID_PASS'
      Lookup = True
    end
    object cdsTicketID_TIC: TIntegerField
      FieldName = 'ID_TIC'
      Required = True
      Visible = False
    end
    object cdsTicketDATA: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DATA'
    end
    object cdsTicketCARRIAGE: TIntegerField
      DisplayLabel = #1042#1072#1075#1086#1085
      FieldName = 'CARRIAGE'
    end
    object cdsTicketSPOT: TIntegerField
      DisplayLabel = #1052#1077#1089#1090#1086
      FieldName = 'SPOT'
    end
    object cdsTicketID_PASS: TIntegerField
      FieldName = 'ID_PASS'
      Visible = False
    end
    object cdsTicketSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
    end
    object cdsTicketPRICE: TIntegerField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
    end
    object cdsTicketID_ROUTE: TIntegerField
      FieldName = 'ID_ROUTE'
      Visible = False
    end
    object cdsTicketID_TRIP: TIntegerField
      FieldName = 'ID_TRIP'
      Visible = False
    end
    object cdsTicketDEPARTURES: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1083#1085#1080#1103
      FieldName = 'DEPARTURES'
    end
    object cdsTicketROUTE_NAME: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_NAME'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_DEP'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsTicketROUTE_AR: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_AR'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_AR'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsTicketTIME: TStringField
      FieldKind = fkLookup
      FieldName = 'TIME'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'TR_TIME'
      KeyFields = 'ID_ROUTE'
      Visible = False
      Lookup = True
    end
  end
  object cdsTrain: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTrain'
    RemoteServer = DCOMConnection1
    Left = 912
    Top = 72
    object cdsTrainID_TRAIN: TIntegerField
      FieldName = 'ID_TRAIN'
      Required = True
      Visible = False
    end
    object cdsTrainKOL_CAR: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
      FieldName = 'KOL_CAR'
    end
    object cdsTrainKOL_SPOT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1084#1077#1089#1090
      FieldName = 'KOL_SPOT'
    end
    object cdsTrainID_ROUTE: TIntegerField
      FieldName = 'ID_ROUTE'
      Visible = False
    end
    object cdsTrainID_TRIP: TIntegerField
      FieldName = 'ID_TRIP'
      Visible = False
    end
    object cdsTrainROUTE_NAME: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_NAME'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_DEP'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsTrainROUTE_AR: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_AR'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_AR'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsTrainTIME: TStringField
      FieldKind = fkLookup
      FieldName = 'TIME'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'TR_TIME'
      KeyFields = 'ID_ROUTE'
      Visible = False
      Lookup = True
    end
    object cdsTrainPRICE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'PRICE'
      LookupDataSet = cdsTicket
      LookupKeyFields = 'ID_TRIP'
      LookupResultField = 'PRICE'
      KeyFields = 'ID_TRIP'
      Visible = False
      Lookup = True
    end
  end
  object cdsTrip: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTrip'
    RemoteServer = DCOMConnection1
    Left = 984
    Top = 72
    object cdsTripID_TRIP: TIntegerField
      FieldName = 'ID_TRIP'
      Required = True
      Visible = False
    end
    object cdsTripID_ROUTE: TIntegerField
      FieldName = 'ID_ROUTE'
      Required = True
      Visible = False
    end
    object cdsTripSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
    end
    object cdsTripROUTE_NAME: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_NAME'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_DEP'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsTripROUTE_AR: TStringField
      DisplayLabel = #1055#1091#1085#1082#1090' '#1087#1088#1080#1073#1099#1090#1080#1103
      FieldKind = fkLookup
      FieldName = 'ROUTE_AR'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'P_AR'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
    object cdsTripDIR_ID: TStringField
      FieldKind = fkLookup
      FieldName = 'DIR_ID'
      LookupDataSet = cdsRoute
      LookupKeyFields = 'ID_ROUTE'
      LookupResultField = 'ID_DIR'
      KeyFields = 'ID_ROUTE'
      Lookup = True
    end
  end
  object cdsTMP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTMP'
    RemoteServer = DCOMConnection1
    Left = 120
    Top = 8
    object cdsTMPID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTMPNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
end
