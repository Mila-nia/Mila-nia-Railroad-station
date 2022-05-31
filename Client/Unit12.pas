unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmStation = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStation: TfmStation;

implementation

uses Unit2, Unit13, NewR_St;

{$R *.dfm}

procedure TfmStation.FormActivate(Sender: TObject);
begin
 DataSource1.DataSet := dm.cdsStat;
end;

procedure TfmStation.N1Click(Sender: TObject);
begin
     fmNewStation.eName.Text:='';
     fmNewStation.ShowModal;
     if fmNewStation.ModalResult = mrOk then
     begin
     try
      dm.DCOMConnection1.AppServer.smAddStation(0, fmNewStation.eName.Text);
      except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
      end;
      dm.cdsStat.Refresh;
end;
end;
procedure TfmStation.N2Click(Sender: TObject);
begin
     fmNewStation.eName.Text:= dm.cdsStatNAME.Value;
     fmNewStation.ShowModal;
     if fmNewStation.ModalResult = mrOk then
     begin
     try
      dm.DCOMConnection1.AppServer.smAddStation(dm.cdsStatID.Value, fmNewStation.eName.Text);
      except
  MessageDlg('Ошибка изменения', mtError, [mbOk],0);
      end;
      dm.cdsStat.Refresh;
end;
end;

procedure TfmStation.N3Click(Sender: TObject);
begin
     if MessageDlg('Удалить станции'+''+dm.cdsStatNAME.Value+''+'?', mtConfirmation,
      [mbYes, mbNo], 0)= mrYes then
     begin
     try
      dm.DCOMConnection1.AppServer.smDeleteStation(dm.cdsStatID.Value);
      except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
      end;
      dm.cdsStat.Refresh;

end;
end;

procedure TfmStation.N4Click(Sender: TObject);
begin
    fmStation.Close;
end;

procedure TfmStation.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       fmNewR_St.st_name := dm.cdsStatNAME.Value;
       fmNewR_St.st_id := dm.cdsStatID.Value;
       {fmNewR_St.route_name := dm.cdsTripROUTE_NAME.Value;
       fmNewR_St.route_ar := dm.cdsTripROUTE_AR.Value;
       fmNewR_St.route_id := dm.cdsTripID_ROUTE.Value;   }
end;

end.
