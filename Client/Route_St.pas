unit Route_St;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmRoute_St = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRoute_St: TfmRoute_St;

implementation

uses Unit2, NewEmpl, NewR_St;

{$R *.dfm}

procedure TfmRoute_St.N1Click(Sender: TObject);
begin
  fmNewR_St.eRoute.Text:= '';
  fmNewR_St.eAr.Text:= '';
 fmNewR_St.eSt.Text := '';
 fmNewR_St.ShowModal;
 if fmNewR_St.ModalResult = mrOk then
 begin
  try
    dm.DCOMConnection1.AppServer.smAddRoute_St( fmNewR_St.st_id,fmNewR_st.route_id);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsR_st.Refresh;
end;
    end;
procedure TfmRoute_St.FormActivate(Sender: TObject);
begin
    DataSource1.DataSet := dm.cdsR_st;
end;

procedure TfmRoute_St.N2Click(Sender: TObject);
Var id_route, id_st:integer;
begin
 id_route:= dm.cdsR_stID_ROUTE.Value;
 id_st:= dm.cdsR_stID_ST.Value;
    fmNewR_St.eRoute.Text:= dm.cdsRouteP_DEP.Value;
  fmNewR_St.eAr.Text:= dm.cdsR_stROUTE_AR.Value;
 fmNewR_St.eSt.Text := dm.cdsR_stST_NAME.Value;
 fmNewR_St.ShowModal;
 if fmNewR_St.ModalResult = mrOk then
 begin
  try
   if fmNewR_St.route_id <> 0 then
 id_route := fmNewR_St.route_id ;
   if fmNewR_St.st_id <> 0 then
 id_st := fmNewR_St.st_id ;
    dm.DCOMConnection1.AppServer.smAddRoute_St( id_st, id_route);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsR_st.Refresh;
end;
end;
procedure TfmRoute_St.N3Click(Sender: TObject);
begin
     if MessageDlg('Удалить связь Маршрут-Станция ' +'' + dm.cdsR_stROUTE_NAME.Value + ' '
     + dm.cdsR_stROUTE_AR.Value +' '+ dm.cdsR_stST_NAME.Value  +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
  try
  dm.DCOMConnection1.AppServer.smDeleteRoute_St(dm.cdsR_stID_ROUTE.Value, dm.cdsR_stID_ST.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsR_St.Refresh;
end;
 end;
procedure TfmRoute_St.N4Click(Sender: TObject);
begin
Close;
end;

end.
