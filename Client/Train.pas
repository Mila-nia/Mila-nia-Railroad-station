unit Train;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmTrain = class(TForm)
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
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTrain: TfmTrain;

implementation

uses Unit2, NewTrain;

{$R *.dfm}

procedure TfmTrain.FormActivate(Sender: TObject);
begin
 DataSource1.DataSet := dm.cdsTrain;
end;

procedure TfmTrain.N1Click(Sender: TObject);
begin
   fmNewTrain.eCarriage.Text:= '';
 fmNewTrain.eSpot.Text:= '';
 fmNewTrain.eTrip.Text:= '';
 fmNewTrain.eRoute.Text:= '';
 fmNewTrain.eAr.Text:= '';
 fmNewTrain.ShowModal;
 if fmNewTrain.ModalResult = mrOk then
 begin
  try
    dm.DCOMConnection1.AppServer.smAddTrain(0,fmNewTrain.eCarriage.Text, fmNewTrain.eSpot.Text,
     fmNewTrain.route_id,  fmNewTrain.trip_id );
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsTrain.Refresh;
  end;
end;

procedure TfmTrain.N2Click(Sender: TObject);
 var id_route, id_trip,k, s:integer;

begin
 id_route:= dm.cdsTrainID_ROUTE.Value;
 id_trip:= dm.cdsTrainID_TRIP.Value;
   fmNewTrain.eCarriage.Text:= dm.cdsTrainKOL_CAR.Text;
 fmNewTrain.eSpot.Text:= dm.cdsTrainKOL_SPOT.Text;
 fmNewTrain.eTrip.Text:= dm.cdsTrainID_TRIP.Text;
 fmNewTrain.eRoute.Text:= dm.cdsTrainROUTE_NAME.Value;
 fmNewTrain.eAr.Text:= dm.cdsTrainROUTE_AR.Value;
 fmNewTrain.ShowModal;
 if fmNewTrain.ModalResult = mrOk then
 begin
  try
  if fmNewTrain.route_id <> 0 then
  id_route := fmNewTrain.route_id;
  if fmNewTrain.trip_id <> 0 then
  id_trip:= fmNewTrain.trip_id;
    dm.DCOMConnection1.AppServer.smAddTrain(dm.cdsTrainID_TRAIN.Value,fmNewTrain.eCarriage.Text,
     fmNewTrain.eSpot.Text, id_route,  id_trip );
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsTrain.Refresh;
end;
end;

procedure TfmTrain.N3Click(Sender: TObject);
begin
       if MessageDlg('Удалить поезд' +'' + dm.cdsTrainID_TRAIN.Text + '' +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
  try
  dm.DCOMConnection1.AppServer.smDeleteTrain(dm.cdsTrainID_TRAIN.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsTrain.Refresh;
end;
end;

procedure TfmTrain.N4Click(Sender: TObject);
begin
Close;
end;

end.
