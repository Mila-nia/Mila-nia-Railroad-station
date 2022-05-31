object MyServer: TMyServer
  OldCreateOrder = False
  Left = 574
  Top = 273
  Height = 570
  Width = 1066
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\Users\danie\Desktop\'#1053#1086#1074#1072#1103' '#1087#1072#1087#1082#1072'\'#1041#1044'\BD1.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 104
    Top = 16
  end
  object tDep: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DEP'
    Left = 24
    Top = 72
  end
  object tDirection: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DIRECTION'
    Left = 104
    Top = 72
  end
  object tEmpl: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'EMPL'
    Left = 184
    Top = 72
  end
  object tEmpl_Team: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'EMPL_TEAM'
    Left = 280
    Top = 72
  end
  object tPass: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PASS'
    Left = 376
    Top = 72
  end
  object tPost: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'POST'
    Left = 464
    Top = 72
  end
  object tRoute: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ROUTE'
    Left = 552
    Top = 72
  end
  object tRoute_St: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ROUTE_ST'
    Left = 648
    Top = 72
  end
  object tStation: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'STATION'
    Left = 728
    Top = 72
  end
  object tTeam: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEAM'
    Left = 816
    Top = 72
  end
  object tTeam_Dep: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TEAM_DEP'
    Left = 896
    Top = 72
  end
  object tTicket: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TICKET'
    Left = 984
    Top = 72
  end
  object tTrain: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TRAIN'
    Left = 24
    Top = 352
  end
  object tTrip: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TRIP'
    Left = 104
    Top = 352
  end
  object spAddDep: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDDEP'
    Left = 24
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end>
  end
  object spDeleteDep: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEDEP'
    Left = 24
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddDir: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDDIRECTION'
    Left = 104
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
        Value = 'ggg'
      end>
  end
  object spDeleteDir: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEDIRECTION'
    Left = 104
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddEmpl: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDEMPL'
    Left = 184
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_EMPL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_FIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_SEX'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_CHILD'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATA_EMPL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_POST'
        ParamType = ptInput
      end>
  end
  object spDeleteEmpl: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEEMPL'
    Left = 184
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddEm_T: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDEMPL_TEAM'
    Left = 280
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_EMPL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_TEAM'
        ParamType = ptInput
      end>
  end
  object spDeleteEm_T: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEEMPL_TEAM'
    Left = 280
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_EMPL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_TEAM'
        ParamType = ptInput
      end>
  end
  object spAddPass: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDPASS'
    Left = 376
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IN_PASSPORT'
        ParamType = ptInput
        Value = 1212
      end
      item
        DataType = ftString
        Name = 'IN_FIO'
        ParamType = ptInput
        Value = 'dfsfsd'
      end>
  end
  object spDeletePass: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEPASS'
    Left = 376
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddPost: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDPOST'
    Left = 464
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_WAGE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end>
  end
  object spDeletePost: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEPOST'
    Left = 464
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddRoute: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDROUTE'
    Left = 552
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_ROUTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_P_DEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_P_AR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_TR_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_DIR'
        ParamType = ptInput
      end>
  end
  object spDeleteRoute: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEROUTE'
    Left = 552
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddR_St: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDROUTE_ST'
    Left = 648
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_ROUTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_ST'
        ParamType = ptInput
      end>
  end
  object spDeleteR_St: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEROUTE_ST'
    Left = 648
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_ROUTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_ST'
        ParamType = ptInput
      end>
  end
  object spAddStat: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDSTATION'
    Left = 728
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end>
  end
  object spDeleteStat: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETESTATION'
    Left = 728
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddTeam: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDTEAM'
    Left = 816
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_NAME'
        ParamType = ptInput
      end>
  end
  object spDeleteTeam: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETETEAM'
    Left = 816
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddT_Dep: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDTEAM_DEP'
    Left = 896
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_TEAM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_DEP'
        ParamType = ptInput
      end>
  end
  object spDeleteT_Dep: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETETEAM_DEP'
    Left = 896
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_TEAM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_DEP'
        ParamType = ptInput
      end>
  end
  object spAddTicket: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDTICKET'
    Left = 984
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_TIC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_CARRIAGE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_SPOT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_PASS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_ROUTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_TRIP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_DEPARTURES'
        ParamType = ptInput
      end>
  end
  object spDeleteTicket: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETETICKET'
    Left = 984
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddTrain: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDTRAIN'
    Left = 24
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_TRAIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_KOL_CAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_KOL_SPOT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_ROUTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_TRIP'
        ParamType = ptInput
      end>
  end
  object spDeleteTrain: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETETRAIN'
    Left = 24
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID'
        ParamType = ptInput
      end>
  end
  object spAddTrip: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDTRIP'
    Left = 104
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_TRIP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_ROUTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_STATUS'
        ParamType = ptInput
      end>
  end
  object spDeleteTrip: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETETRIP'
    Left = 104
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IN_ID_TRIP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IN_ID_ROUTE'
        ParamType = ptInput
      end>
  end
  object dspDep: TDataSetProvider
    DataSet = tDep
    Left = 24
    Top = 256
  end
  object dspDir: TDataSetProvider
    DataSet = tDirection
    Left = 104
    Top = 256
  end
  object dspEmpl: TDataSetProvider
    DataSet = tEmpl
    Left = 184
    Top = 256
  end
  object dspEm_t: TDataSetProvider
    DataSet = tEmpl_Team
    Left = 280
    Top = 256
  end
  object dspPass: TDataSetProvider
    DataSet = tPass
    Left = 376
    Top = 256
  end
  object dspPost: TDataSetProvider
    DataSet = tPost
    Left = 464
    Top = 256
  end
  object dspRoute: TDataSetProvider
    DataSet = tRoute
    Left = 552
    Top = 256
  end
  object dspR_st: TDataSetProvider
    DataSet = tRoute_St
    Left = 648
    Top = 256
  end
  object dspStat: TDataSetProvider
    DataSet = tStation
    Left = 728
    Top = 256
  end
  object dspTeam: TDataSetProvider
    DataSet = tTeam
    Left = 816
    Top = 256
  end
  object dspT_Dep: TDataSetProvider
    DataSet = tTeam_Dep
    Left = 896
    Top = 256
  end
  object dspTicket: TDataSetProvider
    DataSet = tTicket
    Left = 984
    Top = 256
  end
  object dspTrain: TDataSetProvider
    DataSet = tTrain
    Left = 24
    Top = 528
  end
  object dspTrip: TDataSetProvider
    DataSet = tTrip
    Left = 104
    Top = 528
  end
  object tTMP: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TMP'
    Left = 192
    Top = 352
  end
  object dspTMP: TDataSetProvider
    DataSet = tTMP
    Left = 192
    Top = 416
  end
end
