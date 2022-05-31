unit Route;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids, ComCtrls;

type
  TfmRoute = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRoute: TfmRoute;

implementation

uses Unit2, NewRoute, NewEmpl, NewTrip, NewTicket, NewR_St, TMP;

{$R *.dfm}

procedure TfmRoute.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsRoute;
end;

procedure TfmRoute.N1Click(Sender: TObject);
begin
  fmNewRoute.eDep.Text:= '';
  fmNewRoute.eAr.Text:= '';
  fmNewRoute.eTime.Text:= '';
 fmNewRoute.ShowModal;
 if fmNewRoute.ModalResult = mrOk then
 begin
  try
    dm.DCOMConnection1.AppServer.smAddRoute(0,fmNewRoute.eDep.Text,
    fmNewRoute.eAr.Text, fmNewRoute.eTime.Text,  fmNewRoute.dir_id);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsRoute.Refresh;

end;
end;

procedure TfmRoute.N2Click(Sender: TObject);
 var id_order,k, s:integer;

begin
 id_order := dm.cdsRouteID_Dir.Value;
   fmNewRoute.eDep.Text:= dm.cdsRouteP_DEP.Value;
  fmNewRoute.eAr.Text:= dm.cdsRouteP_AR.Value;
  fmNewRoute.eTime.Text:= dm.cdsRouteTR_TIME.Text;
  fmNewRoute.eDir.Text:=dm.cdsRouteDIR_NAME.Value;
 fmNewRoute.ShowModal;

 if fmNewRoute.ModalResult = mrOk then
 begin
  try
  if fmNewRoute.dir_id <> 0 then
  id_order := fmNewRoute.dir_id;
    dm.DCOMConnection1.AppServer.smAddRoute(dm.cdsRouteID_ROUTE.Value,fmNewRoute.eDep.Text,
    fmNewRoute.eAr.Text, fmNewRoute.eTime.Text, id_order );
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsRoute.Refresh;

 end;
end;

procedure TfmRoute.N3Click(Sender: TObject);
begin
     if MessageDlg('Удалить маршрут ' +'' + dm.cdsRouteP_DEP.Value + '' + '-'
     + dm.cdsRouteP_AR.Value +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
  try
  dm.DCOMConnection1.AppServer.smDeleteRoute(dm.cdsRouteID_ROUTE.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsRoute.Refresh;
end;

end;

procedure TfmRoute.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      fmNewTrip.route_id := dm.cdsRouteID_ROUTE.Value;
  fmNewTrip.route_name:= dm.cdsRouteP_DEP.Value;
  FmNewTrip.route_ar := dm.cdsRouteP_AR.Value;

  fmNewR_St.route_id := dm.cdsRouteID_ROUTE.Value;
  fmNewR_St.route_name:= dm.cdsRouteP_DEP.Value;
  FmNewR_St.route_ar := dm.cdsRouteP_AR.Value;

  fmTMP.route_id := dm.cdsRouteID_ROUTE.Value;
  fmTMP.route_name:= dm.cdsRouteP_DEP.Value;
  fmTMP.ar_name := dm.cdsRouteP_AR.Value;

     {   fmNewTicket.route_id := dm.cdsRouteID_ROUTE.Value;
  fmNewTicket.route_name:= dm.cdsRouteP_DEP.Value;
  FmNewTicket.route_ar:= dm.cdsRouteP_AR.Value;      }
end;

procedure TfmRoute.N4Click(Sender: TObject);
begin
   close;
end;

end.
