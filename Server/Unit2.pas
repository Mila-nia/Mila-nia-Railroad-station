unit Unit2;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, MyServer_TLB, StdVcl, IBStoredProc, DB, IBCustomDataSet,
  IBTable, IBDatabase, Provider;

type
  TMyServer = class(TRemoteDataModule, IMyServer)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    tDep: TIBTable;
    tDirection: TIBTable;
    tEmpl: TIBTable;
    tEmpl_Team: TIBTable;
    tPass: TIBTable;
    tPost: TIBTable;
    tRoute: TIBTable;
    tRoute_St: TIBTable;
    tStation: TIBTable;
    tTeam: TIBTable;
    tTeam_Dep: TIBTable;
    tTicket: TIBTable;
    tTrain: TIBTable;
    tTrip: TIBTable;
    spAddDep: TIBStoredProc;
    spDeleteDep: TIBStoredProc;
    spAddDir: TIBStoredProc;
    spDeleteDir: TIBStoredProc;
    spAddEmpl: TIBStoredProc;
    spDeleteEmpl: TIBStoredProc;
    spAddEm_T: TIBStoredProc;
    spDeleteEm_T: TIBStoredProc;
    spAddPass: TIBStoredProc;
    spDeletePass: TIBStoredProc;
    spAddPost: TIBStoredProc;
    spDeletePost: TIBStoredProc;
    spAddRoute: TIBStoredProc;
    spDeleteRoute: TIBStoredProc;
    spAddR_St: TIBStoredProc;
    spDeleteR_St: TIBStoredProc;
    spAddStat: TIBStoredProc;
    spDeleteStat: TIBStoredProc;
    spAddTeam: TIBStoredProc;
    spDeleteTeam: TIBStoredProc;
    spAddT_Dep: TIBStoredProc;
    spDeleteT_Dep: TIBStoredProc;
    spAddTicket: TIBStoredProc;
    spDeleteTicket: TIBStoredProc;
    spAddTrain: TIBStoredProc;
    spDeleteTrain: TIBStoredProc;
    spAddTrip: TIBStoredProc;
    spDeleteTrip: TIBStoredProc;
    dspDep: TDataSetProvider;
    dspDir: TDataSetProvider;
    dspEmpl: TDataSetProvider;
    dspEm_t: TDataSetProvider;
    dspPass: TDataSetProvider;
    dspPost: TDataSetProvider;
    dspRoute: TDataSetProvider;
    dspR_st: TDataSetProvider;
    dspStat: TDataSetProvider;
    dspTeam: TDataSetProvider;
    dspT_Dep: TDataSetProvider;
    dspTicket: TDataSetProvider;
    dspTrain: TDataSetProvider;
    dspTrip: TDataSetProvider;
    tTMP: TIBTable;
    dspTMP: TDataSetProvider;
    tStatusLookUp: TIBTable;
    dspStatusLookUp: TDataSetProvider;
    tStatusLookUpTicket: TIBTable;
    dspStatusLookUpTicket: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure smAddPass(ID, PASSPORT: Integer; const FIO: WideString);
      safecall;
    procedure smAddDep(ID: Integer; const NAME: WideString); safecall;
    procedure smAddDirection(ID, NAME: Integer); safecall;
    procedure smDeleteDep(ID: Integer); safecall;
    procedure smDeleteDirection(ID: Integer); safecall;
    procedure smAddEmpl(ID_EMPL: Integer; const FIO: WideString; SEX: Integer;
      DATA: TDateTime; CHILD: Integer; DATA_EMPL: TDateTime;
      ID_POST: Integer); safecall;
    procedure smDeleteEmpl(ID: Integer); safecall;
    procedure smAddEmpl_Team(ID_EMPL, ID_TEAM: Integer); safecall;
    procedure smDeleteEmpl_Team(ID_EMPL, ID_TEAM: Integer); safecall;
  //  procedure smAddPass(ID, PASSPORT: Integer; const FIO: WideString); safecall;
    procedure smDeletePass(ID: Integer); safecall;
    procedure smAddPost(ID, WAGE: Integer; const NAME: WideString); safecall;
    procedure smAddRoute(ID_ROUTE: Integer; const P_DEP, P_AR: WideString;
      TR_TIME, ID_DIR: Integer); safecall;
    procedure smDeletePost(ID: Integer); safecall;
    procedure smDeleteRoute(ID: Integer); safecall;
    procedure smAddRoute_St(ID_ROUTE, ID_ST: Integer); safecall;
    procedure smDeleteRoute_St(ID_ROUTE, ID_ST: Integer); safecall;
    procedure smAddStation(ID: Integer; const NAME: WideString); safecall;
    procedure smAddTeam(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteStation(ID: Integer); safecall;
    procedure smDeleteTicket(ID: Integer); safecall;
    procedure smAddTeam_Dep(ID_TEAM, ID_DEP: Integer); safecall;
    procedure smAddTicket(ID_TIC: Integer; DATA: TDateTime; CARRIAGE, SPOT,
      ID_PASS, STATUS, PRICE, ID_ROUTE, ID_TRIP: Integer;
     const DEPARTURES: WideString); safecall;
    procedure smDeleteTeam(ID: Integer); safecall;
    procedure smDeleteTeam_Dep(ID_TEAM, ID_DEP: Integer); safecall;
    procedure smAddTrain(ID_TRAIN, KOL_CAR, KOL_SPOT, ID_ROUTE,
      ID_TRIP: Integer); safecall;
    procedure smDeleteTrain(ID: Integer); safecall;
    procedure smDeleteTrip(ID_TRIP, ID_ROUTE: Integer); safecall;
    procedure smAddTrip(ID_TRIP, ID_ROUTE, STATUS: Integer); safecall;
    procedure smAddDir(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteDir(ID: Integer); safecall;

   // procedure IMyServer_smAddPass; safecall;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

class procedure TMyServer.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TMyServer.smAddDep(ID: Integer; const NAME: WideString);
begin
    if (spAddDep.Transaction.InTransaction) then
    spAddDep.Transaction.Commit;
    spAddDep.Params[0].Value := ID;
    spAddDep.Params[1].Value := NAME;
    spAddDep.ExecProc;
    if (spAddDep.Transaction.InTransaction) then
    spAddDep.Transaction.Commit;
end;

procedure TMyServer.smAddDirection(ID, NAME: Integer);
begin
    if (spAddDir.Transaction.InTransaction) then
    spAddDir.Transaction.Commit;
    spAddDir.Params[0].Value := ID;
    spAddDir.Params[1].Value := NAME;
    spAddDir.ExecProc;
    if (spAddDir.Transaction.InTransaction) then
    spAddDir.Transaction.Commit;

end;

procedure TMyServer.smDeleteDep(ID: Integer);
begin
    if (spDeleteDep.Transaction.InTransaction) then
    spDeleteDep.Transaction.Commit;
    spDeleteDep.Params[0].Value := ID;
    spDeleteDep.ExecProc;
    if (spDeleteDep.Transaction.InTransaction) then
    spDeleteDep.Transaction.Commit;
end;

procedure TMyServer.smDeleteDirection(ID: Integer);
begin
    if (spDeleteDir.Transaction.InTransaction) then
    spDeleteDir.Transaction.Commit;
    spDeleteDir.Params[0].Value := ID;
    spDeleteDir.ExecProc;
    if (spDeleteDir.Transaction.InTransaction) then
    spDeleteDir.Transaction.Commit;
end;

procedure TMyServer.smAddEmpl(ID_EMPL: Integer; const FIO: WideString;
  SEX: Integer; DATA: TDateTime; CHILD: Integer; DATA_EMPL: TDateTime;
  ID_POST: Integer);
begin
    if (spAddEmpl.Transaction.InTransaction) then
    spAddEmpl.Transaction.Commit;
    spAddEmpl.Params[0].Value := ID_EMPL;
    spAddEmpl.Params[1].Value := FIO;
    spAddEmpl.Params[2].Value := SEX;
    spAddEmpl.Params[3].Value := DATA;
    spAddEmpl.Params[4].Value := CHILD;
    spAddEmpl.Params[5].Value := DATA_EMPL;
    spAddEmpl.Params[6].Value := ID_POST;
    spAddEmpl.ExecProc;
    if (spAddEmpl.Transaction.InTransaction) then
    spAddEmpl.Transaction.Commit;
end;

procedure TMyServer.smDeleteEmpl(ID: Integer);
begin
    if (spDeleteEmpl.Transaction.InTransaction) then
    spDeleteEmpl.Transaction.Commit;
    spDeleteEmpl.Params[0].Value := ID;
    spDeleteEmpl.ExecProc;
    if (spDeleteEmpl.Transaction.InTransaction) then
    spDeleteEmpl.Transaction.Commit;
end;

procedure TMyServer.smAddEmpl_Team(ID_EMPL, ID_TEAM: Integer);
begin
    if (spAddEm_T.Transaction.InTransaction) then
    spAddEm_T.Transaction.Commit;
    spAddEm_T.Params[0].Value := ID_EMPL;
    spAddEm_T.Params[1].Value := ID_TEAM;
    spAddEm_T.ExecProc;
    if (spAddEm_T.Transaction.InTransaction) then
    spAddEm_T.Transaction.Commit;
end;

procedure TMyServer.smDeleteEmpl_Team(ID_EMPL, ID_TEAM: Integer);
begin
    if (spDeleteEm_T.Transaction.InTransaction) then
    spDeleteEm_T.Transaction.Commit;
    spDeleteEm_T.Params[0].Value := ID_EMPL;
    spDeleteEm_T.Params[1].Value := ID_TEAM;
    spDeleteEm_T.ExecProc;
    if (spDeleteEm_T.Transaction.InTransaction) then
    spDeleteEm_T.Transaction.Commit;
end;

procedure TMyServer.smAddPass(ID, PASSPORT: Integer;
  const FIO: WideString);
begin
    if (spAddPass.Transaction.InTransaction) then
    spAddPass.Transaction.Commit;
    spAddPass.Params[0].Value := ID;
    spAddPass.Params[1].Value := PASSPORT;
    spAddPass.Params[2].Value := FIO;
    spAddPass.ExecProc;
    if (spAddPass.Transaction.InTransaction) then
    spAddPass.Transaction.Commit;
end;

procedure TMyServer.smDeletePass(ID: Integer);
begin
    if (spDeletePass.Transaction.InTransaction) then
    spDeletePass.Transaction.Commit;
    spDeletePass.Params[0].Value := ID;
    spDeletePass.ExecProc;
    if (spDeletePass.Transaction.InTransaction) then
    spDeletePass.Transaction.Commit;
end;

procedure TMyServer.smAddPost(ID, WAGE: Integer; const NAME: WideString);
begin
    if (spAddPost.Transaction.InTransaction) then
    spAddPost.Transaction.Commit;
    spAddPost.Params[0].Value := ID;
    spAddPost.Params[1].Value := WAGE;
    spAddPost.Params[2].Value := NAME;
    spAddPost.ExecProc;
    if (spAddPost.Transaction.InTransaction) then
    spAddPost.Transaction.Commit;
end;

procedure TMyServer.smAddRoute(ID_ROUTE: Integer; const P_DEP,
  P_AR: WideString; TR_TIME, ID_DIR: Integer);
begin
    if (spAddRoute.Transaction.InTransaction) then
    spAddRoute.Transaction.Commit;
    spAddRoute.Params[0].Value := ID_ROUTE;
    spAddRoute.Params[1].Value := P_DEP;
    spAddRoute.Params[2].Value := P_AR;
    spAddRoute.Params[3].Value := TR_TIME;
    spAddRoute.Params[4].Value := ID_DIR;
    spAddRoute.ExecProc;
    if (spAddRoute.Transaction.InTransaction) then
    spAddRoute.Transaction.Commit;
end;

procedure TMyServer.smDeletePost(ID: Integer);
begin
    if (spDeletePost.Transaction.InTransaction) then
    spDeletePost.Transaction.Commit;
    spDeletePost.Params[0].Value := ID;
    spDeletePost.ExecProc;
    if (spDeletePost.Transaction.InTransaction) then
    spDeletePost.Transaction.Commit;
end;

procedure TMyServer.smDeleteRoute(ID: Integer);
begin
    if (spDeleteRoute.Transaction.InTransaction) then
    spDeleteRoute.Transaction.Commit;
    spDeleteRoute.Params[0].Value := ID;
    spDeleteRoute.ExecProc;
    if (spDeleteRoute.Transaction.InTransaction) then
    spDeleteRoute.Transaction.Commit;
end;

procedure TMyServer.smAddRoute_St(ID_ROUTE, ID_ST: Integer);
begin
    if (spAddR_St.Transaction.InTransaction) then
    spAddR_St.Transaction.Commit;
    spAddR_St.Params[0].Value := ID_ROUTE;
    spAddR_St.Params[1].Value := ID_ST;
    spAddR_St.ExecProc;
    if (spAddR_St.Transaction.InTransaction) then
    spAddR_St.Transaction.Commit;
end;

procedure TMyServer.smDeleteRoute_St(ID_ROUTE, ID_ST: Integer);
begin
    if (spDeleteR_St.Transaction.InTransaction) then
    spDeleteR_St.Transaction.Commit;
    spDeleteR_St.Params[0].Value := ID_ROUTE;
    spDeleteR_St.Params[1].Value := ID_ST;
    spDeleteR_St.ExecProc;
    if (spDeleteR_St.Transaction.InTransaction) then
    spDeleteR_St.Transaction.Commit;
end;

procedure TMyServer.smAddStation(ID: Integer; const NAME: WideString);
begin
    if (spAddStat.Transaction.InTransaction) then
    spAddStat.Transaction.Commit;
    spAddStat.Params[0].Value := ID;
    spAddStat.Params[1].Value := NAME;
    spAddStat.ExecProc;
    if (spAddStat.Transaction.InTransaction) then
    spAddStat.Transaction.Commit;
end;

procedure TMyServer.smAddTeam(ID: Integer; const NAME: WideString);
begin
    if (spAddTeam.Transaction.InTransaction) then
    spAddTeam.Transaction.Commit;
    spAddTeam.Params[0].Value := ID;
    spAddTeam.Params[1].Value := NAME;
    spAddTeam.ExecProc;
    if (spAddTeam.Transaction.InTransaction) then
    spAddTeam.Transaction.Commit;
end;

procedure TMyServer.smDeleteStation(ID: Integer);
begin
    if (spDeleteStat.Transaction.InTransaction) then
    spDeleteStat.Transaction.Commit;
    spDeleteStat.Params[0].Value := ID;
    spDeleteStat.ExecProc;
    if (spDeleteStat.Transaction.InTransaction) then
    spDeleteStat.Transaction.Commit;
end;

procedure TMyServer.smDeleteTicket(ID: Integer);
begin
    if (spDeleteTicket.Transaction.InTransaction) then
    spDeleteTicket.Transaction.Commit;
    spDeleteTicket.Params[0].Value := ID;
    spDeleteTicket.ExecProc;
    if (spDeleteTicket.Transaction.InTransaction) then
    spDeleteTicket.Transaction.Commit;
end;

procedure TMyServer.smAddTeam_Dep(ID_TEAM, ID_DEP: Integer);
begin
    if (spAddT_Dep.Transaction.InTransaction) then
    spAddT_Dep.Transaction.Commit;
    spAddT_Dep.Params[0].Value := ID_TEAM;
    spAddT_Dep.Params[1].Value := ID_DEP;
    spAddT_Dep.ExecProc;
    if (spAddT_Dep.Transaction.InTransaction) then
    spAddT_Dep.Transaction.Commit;
end;

procedure TMyServer.smAddTicket(ID_TIC: Integer; DATA: TDateTime; CARRIAGE,
  SPOT, ID_PASS, STATUS, PRICE, ID_ROUTE, ID_TRIP: Integer;
  const DEPARTURES: WideString);
begin
    if (spAddTicket.Transaction.InTransaction) then
    spAddTicket.Transaction.Commit;
    spAddTicket.Params[0].Value := ID_TIC;
    spAddTicket.Params[1].Value := DATA;
    spAddTicket.Params[2].Value := CARRIAGE;
    spAddTicket.Params[3].Value := SPOT;
    spAddTicket.Params[4].Value := ID_PASS;
    spAddTicket.Params[5].Value := STATUS;
    spAddTicket.Params[6].Value := PRICE;
    spAddTicket.Params[7].Value := ID_ROUTE;
    spAddTicket.Params[8].Value := ID_TRIP;
    spAddTicket.Params[9].Value := DEPARTURES;
    spAddTicket.ExecProc;
    if (spAddTicket.Transaction.InTransaction) then
    spAddTicket.Transaction.Commit;

end;

procedure TMyServer.smDeleteTeam(ID: Integer);
begin
    if (spDeleteTeam.Transaction.InTransaction) then
    spDeleteTeam.Transaction.Commit;
    spDeleteTeam.Params[0].Value := ID;
    spDeleteTeam.ExecProc;
    if (spDeleteTeam.Transaction.InTransaction) then
    spDeleteTeam.Transaction.Commit;
end;

procedure TMyServer.smDeleteTeam_Dep(ID_TEAM, ID_DEP: Integer);
begin
    if (spDeleteT_Dep.Transaction.InTransaction) then
    spDeleteT_Dep.Transaction.Commit;
    spDeleteT_Dep.Params[0].Value := ID_TEAM;
    spDeleteT_Dep.Params[1].Value := ID_DEP;
    spDeleteT_Dep.ExecProc;
    if (spDeleteT_Dep.Transaction.InTransaction) then
    spDeleteT_Dep.Transaction.Commit;
end;

procedure TMyServer.smAddTrain(ID_TRAIN, KOL_CAR, KOL_SPOT, ID_ROUTE,
  ID_TRIP: Integer);
begin
    if (spAddTrain.Transaction.InTransaction) then
    spAddTrain.Transaction.Commit;
    spAddTrain.Params[0].Value := ID_TRAIN;
    spAddTrain.Params[1].Value := KOL_CAR;
    spAddTrain.Params[2].Value := KOL_SPOT;
    spAddTrain.Params[3].Value := ID_ROUTE;
    spAddTrain.Params[4].Value := ID_TRIP;
    spAddTrain.ExecProc;
    if (spAddTrain.Transaction.InTransaction) then
    spAddTrain.Transaction.Commit;
end;

procedure TMyServer.smDeleteTrain(ID: Integer);
begin
    if (spDeleteTrain.Transaction.InTransaction) then
    spDeleteTrain.Transaction.Commit;
    spDeleteTrain.Params[0].Value := ID;
    spAddTrain.ExecProc;
    if (spDeleteTrain.Transaction.InTransaction) then
    spDeleteTrain.Transaction.Commit;
end;

procedure TMyServer.smDeleteTrip(ID_TRIP, ID_ROUTE: Integer);
begin
    if (spDeleteTrip.Transaction.InTransaction) then
    spDeleteTrip.Transaction.Commit;
    spDeleteTrip.Params[0].Value := ID_TRIP;
    spDeleteTrip.Params[1].Value := ID_ROUTE;
    spDeleteTrip.ExecProc;
    if (spDeleteTrip.Transaction.InTransaction) then
    spDeleteTrip.Transaction.Commit;

end;

procedure TMyServer.smAddTrip(ID_TRIP, ID_ROUTE, STATUS: Integer);
begin
    if (spAddTrip.Transaction.InTransaction) then
    spAddTrip.Transaction.Commit;
    spAddTrip.Params[0].Value := ID_TRIP;
    spAddTrip.Params[1].Value := ID_ROUTE;
    spAddTrip.Params[2].Value := STATUS;
    spAddTrip.ExecProc;
    if (spAddTrip.Transaction.InTransaction) then
    spAddTrip.Transaction.Commit;

end;

   {
procedure TMyServer.smAddPass(ID, PASSPORT: Integer;
  const FIO: WideString);
begin
      if (spAddPass.Transaction.InTransaction) then
    spAddPass.Transaction.Commit;
    spAddPass.Params[0].Value := ID;
    spAddPass.Params[1].Value := PASSPORT;
    spAddPass.Params[2].Value := FIO;
    spAddPass.ExecProc;
    if (spAddPass.Transaction.InTransaction) then
    spAddPass.Transaction.Commit;
end;
             }


procedure TMyServer.smAddDir(ID: Integer; const NAME: WideString);
begin
    if (spAddDir.Transaction.InTransaction) then
    spAddDir.Transaction.Commit;
    spAddDir.Params[0].Value := ID;
    spAddDir.Params[1].Value := NAME;
    spAddDir.ExecProc;
    if (spAddDir.Transaction.InTransaction) then
    spAddDir.Transaction.Commit;
end;

procedure TMyServer.smDeleteDir(ID: Integer);
begin
    if (spDeleteDir.Transaction.InTransaction) then
    spDeleteDir.Transaction.Commit;
    spDeleteDir.Params[0].Value := ID;
    spDeleteDir.ExecProc;
    if (spDeleteDir.Transaction.InTransaction) then
    spDeleteDir.Transaction.Commit;
end;

initialization
  TComponentFactory.Create(ComServer, TMyServer, CLASS_MyServer_, ciMultiInstance, tmSingle);
end.
