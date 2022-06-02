unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect;

type
  Tdm = class(TDataModule)
    DCOMConnection1: TDCOMConnection;
    cdsDep: TClientDataSet;
    cdsDepID: TIntegerField;
    cdsDepNAME: TStringField;
    cdsDir: TClientDataSet;
    cdsEm_t: TClientDataSet;
    cdsEmpl: TClientDataSet;
    cdsPass: TClientDataSet;
    cdsPost: TClientDataSet;
    cdsR_st: TClientDataSet;
    cdsRoute: TClientDataSet;
    cdsStat: TClientDataSet;
    cdsT_Dep: TClientDataSet;
    cdsTeam: TClientDataSet;
    cdsTicket: TClientDataSet;
    cdsTrain: TClientDataSet;
    cdsTrip: TClientDataSet;
    cdsDirID: TIntegerField;
    cdsDirNAME: TStringField;
    cdsEm_tID_EMPL: TIntegerField;
    cdsEm_tID_TEAM: TIntegerField;
    cdsEmplID_EMPL: TIntegerField;
    cdsEmplFIO: TStringField;
    cdsEmplSEX: TIntegerField;
    cdsEmplDATA: TDateField;
    cdsEmplCHILD: TIntegerField;
    cdsEmplDATA_EMPL: TDateField;
    cdsEmplID_POST: TIntegerField;
    cdsPassID: TIntegerField;
    cdsPassPASSPORT: TIntegerField;
    cdsPassFIO: TStringField;
    cdsPostID: TIntegerField;
    cdsPostWAGE: TIntegerField;
    cdsPostNAME: TStringField;
    cdsR_stID_ST: TIntegerField;
    cdsR_stID_ROUTE: TIntegerField;
    cdsRouteID_ROUTE: TIntegerField;
    cdsRouteP_DEP: TStringField;
    cdsRouteP_AR: TStringField;
    cdsRouteTR_TIME: TIntegerField;
    cdsRouteID_DIR: TIntegerField;
    cdsStatID: TIntegerField;
    cdsStatNAME: TStringField;
    cdsT_DepID_TEAM: TIntegerField;
    cdsT_DepID_DEP: TIntegerField;
    cdsTeamID: TIntegerField;
    cdsTeamNAME: TStringField;
    cdsTrainID_TRAIN: TIntegerField;
    cdsTrainKOL_CAR: TIntegerField;
    cdsTrainKOL_SPOT: TIntegerField;
    cdsTrainID_ROUTE: TIntegerField;
    cdsTripID_TRIP: TIntegerField;
    cdsTripID_ROUTE: TIntegerField;
    cdsTripSTATUS: TIntegerField;
    cdsEmplEMPL_NAME: TStringField;
    cdsRouteDIR_NAME: TStringField;
    cdsTripROUTE_NAME: TStringField;
    cdsTripROUTE_AR: TStringField;
    cdsTicketID_TIC: TIntegerField;
    cdsTicketDATA: TDateField;
    cdsTicketCARRIAGE: TIntegerField;
    cdsTicketSPOT: TIntegerField;
    cdsTicketID_PASS: TIntegerField;
    cdsTicketSTATUS: TIntegerField;
    cdsTicketPRICE: TIntegerField;
    cdsTicketID_ROUTE: TIntegerField;
    cdsTicketID_TRIP: TIntegerField;
    cdsTicketDEPARTURES: TStringField;
    cdsTicketROUTE_NAME: TStringField;
    cdsTicketROUTE_AR: TStringField;
    cdsTicketPASS_NAME: TStringField;
    cdsTrainID_TRIP: TIntegerField;
    cdsTrainROUTE_NAME: TStringField;
    cdsTrainROUTE_AR: TStringField;
    cdsR_stROUTE_NAME: TStringField;
    cdsR_stROUTE_AR: TStringField;
    cdsR_stST_NAME: TStringField;
    cdsT_DepDEP_NAME: TStringField;
    cdsT_DepTEAM_NAME: TStringField;
    cdsEm_tEMPL_NAME: TStringField;
    cdsEm_tTEAM_NAME: TStringField;
    cdsTMP: TClientDataSet;
    cdsTMPID: TIntegerField;
    cdsTMPNAME: TStringField;
    cdsEmplZP: TStringField;
    cdsTrainTIME: TStringField;
    cdsTrainPRICE: TIntegerField;
    cdsTicketTIME: TStringField;
    cdsTripDIR_ID: TStringField;
    cdsStatusLookup: TClientDataSet;
    cdsStatusLookupSTATUS_ID: TIntegerField;
    cdsStatusLookupSTATUS_NAME: TStringField;
    cdsTicketStatusName: TStringField;
    cdsTripStatusName: TStringField;
    cdsTripDirection: TStringField;
    cdsStatusLookUpTicket: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  cdsDep.Open;
  cdsDir.Open;
  cdsEm_t.Open;
  cdsEmpl.Open;
  cdsPass.Open;
  cdsPost.Open;
  cdsR_st.Open;
  cdsRoute.Open;
  cdsStat.Open;
  cdsT_Dep.Open;
  cdsTeam.Open;
  cdsTicket.Open;
  cdsTrain.Open;
  cdsTrip.Open;
end;

end.
