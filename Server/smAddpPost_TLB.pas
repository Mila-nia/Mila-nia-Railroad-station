unit smAddpPost_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 23.05.2020 10:58:21 from Type Library described below.

// ************************************************************************  //
// Type Lib: E:\Программная инженерия\Server\Project1.tlb (1)
// LIBID: {0CDA4A0E-BDFC-48FB-BB29-63981CF5ED20}
// LCID: 0
// Helpfile: 
// HelpString: Project1 Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\SysWOW64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  smAddpPostMajorVersion = 1;
  smAddpPostMinorVersion = 0;

  LIBID_smAddpPost: TGUID = '{0CDA4A0E-BDFC-48FB-BB29-63981CF5ED20}';

  IID_IMyServer: TGUID = '{7FBD8308-DE3B-4E8B-B2D0-91701208D197}';
  CLASS_MyServer: TGUID = '{59A5A4B3-A183-42D7-B936-882C8D8216A1}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMyServer = interface;
  IMyServerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  MyServer = IMyServer;


// *********************************************************************//
// Interface: IMyServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FBD8308-DE3B-4E8B-B2D0-91701208D197}
// *********************************************************************//
  IMyServer = interface(IAppServer)
    ['{7FBD8308-DE3B-4E8B-B2D0-91701208D197}']
    procedure smAddPass(ID: Integer; PASSPORT: Integer; const FIO: WideString); safecall;
    procedure smDeletePass(ID: Integer); safecall;
    procedure smAddDep(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteDep(ID: Integer); safecall;
    procedure smAddDir(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteDir(ID: Integer); safecall;
    procedure smAddEmpl(ID_EMPL: Integer; const FIO: WideString; SEX: Integer; DATA: TDateTime; 
                        CHILD: Integer; DATA_EMPL: TDateTime; ID_POST: Integer); safecall;
    procedure smDeleteEmpl(ID: Integer); safecall;
    procedure smAddEmpl_Team(ID_EMPL: Integer; ID_TEAM: Integer); safecall;
    procedure smDeleteEmpl_Team(ID_EMPL: Integer; ID_TEAM: Integer); safecall;
    procedure smAddPost(ID: Integer; WAGE: Integer; const NAME: WideString); safecall;
    procedure smDeletePost(ID: Integer); safecall;
    procedure smAddRoute(ID_ROUTE: Integer; const P_DEP: WideString; const P_AR: WideString; 
                         TR_TIME: Integer; ID_DIR: Integer); safecall;
    procedure smDeleteRoute(ID: Integer); safecall;
    procedure smAddRoute_St(ID_ROUTE: Integer; ID_ST: Integer); safecall;
    procedure smDeleteRoute_St(ID_ROUTE: Integer; ID_ST: Integer); safecall;
    procedure smAddStation(ID: Integer; const NAME: WideString); safecall;
    procedure smDeleteStation(ID: Integer); safecall;
    procedure smAddTeam(ID: Integer; NAME: Integer); safecall;
    procedure smDeleteTeam(ID: Integer); safecall;
    procedure smAddTeam_Dep(ID_TEAM: Integer; ID_DEP: Integer); safecall;
    procedure smDeleteTeam_Dep(ID_TEAM: Integer; ID_DEP: Integer); safecall;
    procedure smAddTicket(ID_RIC: Integer; DATA: TDateTime; CARRIAGE: Integer; SPOT: Integer; 
                          ID_PASS: Integer; STATUS: Integer; PRICE: Integer; ID_ROUTE: Integer; 
                          ID_TRIP: Integer; DEPARTURES: TDateTime); safecall;
    procedure smDeleteTicket(ID: Integer); safecall;
    procedure smAddTrain(ID_TRAIN: Integer; KOL_CAR: Integer; KOL_SPOT: Integer; ID_ROUTE: Integer; 
                         ID_TRIP: Integer); safecall;
    procedure smDeleteTrain(ID: Integer); safecall;
    procedure smAddTrip(ID_TRIP: Integer; ID_ROUTE: Integer; ID_STATUS: Integer); safecall;
    procedure smDeleteTrip(ID: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IMyServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FBD8308-DE3B-4E8B-B2D0-91701208D197}
// *********************************************************************//
  IMyServerDisp = dispinterface
    ['{7FBD8308-DE3B-4E8B-B2D0-91701208D197}']
    procedure smAddPass(ID: Integer; PASSPORT: Integer; const FIO: WideString); dispid 301;
    procedure smDeletePass(ID: Integer); dispid 302;
    procedure smAddDep(ID: Integer; const NAME: WideString); dispid 303;
    procedure smDeleteDep(ID: Integer); dispid 304;
    procedure smAddDir(ID: Integer; const NAME: WideString); dispid 305;
    procedure smDeleteDir(ID: Integer); dispid 306;
    procedure smAddEmpl(ID_EMPL: Integer; const FIO: WideString; SEX: Integer; DATA: TDateTime; 
                        CHILD: Integer; DATA_EMPL: TDateTime; ID_POST: Integer); dispid 307;
    procedure smDeleteEmpl(ID: Integer); dispid 308;
    procedure smAddEmpl_Team(ID_EMPL: Integer; ID_TEAM: Integer); dispid 309;
    procedure smDeleteEmpl_Team(ID_EMPL: Integer; ID_TEAM: Integer); dispid 310;
    procedure smAddPost(ID: Integer; WAGE: Integer; const NAME: WideString); dispid 311;
    procedure smDeletePost(ID: Integer); dispid 312;
    procedure smAddRoute(ID_ROUTE: Integer; const P_DEP: WideString; const P_AR: WideString; 
                         TR_TIME: Integer; ID_DIR: Integer); dispid 313;
    procedure smDeleteRoute(ID: Integer); dispid 314;
    procedure smAddRoute_St(ID_ROUTE: Integer; ID_ST: Integer); dispid 315;
    procedure smDeleteRoute_St(ID_ROUTE: Integer; ID_ST: Integer); dispid 316;
    procedure smAddStation(ID: Integer; const NAME: WideString); dispid 317;
    procedure smDeleteStation(ID: Integer); dispid 318;
    procedure smAddTeam(ID: Integer; NAME: Integer); dispid 319;
    procedure smDeleteTeam(ID: Integer); dispid 320;
    procedure smAddTeam_Dep(ID_TEAM: Integer; ID_DEP: Integer); dispid 321;
    procedure smDeleteTeam_Dep(ID_TEAM: Integer; ID_DEP: Integer); dispid 322;
    procedure smAddTicket(ID_RIC: Integer; DATA: TDateTime; CARRIAGE: Integer; SPOT: Integer; 
                          ID_PASS: Integer; STATUS: Integer; PRICE: Integer; ID_ROUTE: Integer; 
                          ID_TRIP: Integer; DEPARTURES: TDateTime); dispid 323;
    procedure smDeleteTicket(ID: Integer); dispid 324;
    procedure smAddTrain(ID_TRAIN: Integer; KOL_CAR: Integer; KOL_SPOT: Integer; ID_ROUTE: Integer; 
                         ID_TRIP: Integer); dispid 325;
    procedure smDeleteTrain(ID: Integer); dispid 326;
    procedure smAddTrip(ID_TRIP: Integer; ID_ROUTE: Integer; ID_STATUS: Integer); dispid 327;
    procedure smDeleteTrip(ID: Integer); dispid 328;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoMyServer provides a Create and CreateRemote method to          
// create instances of the default interface IMyServer exposed by              
// the CoClass MyServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMyServer = class
    class function Create: IMyServer;
    class function CreateRemote(const MachineName: string): IMyServer;
  end;

implementation

uses ComObj;

class function CoMyServer.Create: IMyServer;
begin
  Result := CreateComObject(CLASS_MyServer) as IMyServer;
end;

class function CoMyServer.CreateRemote(const MachineName: string): IMyServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MyServer) as IMyServer;
end;

end.
