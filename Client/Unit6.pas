unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmDep = class(TForm)
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
  fmDep: TfmDep;

implementation

uses Unit2, Unit7, NewDep_Team;

{$R *.dfm}

procedure TfmDep.FormActivate(Sender: TObject);
begin
 DataSource1.DataSet:= dm.cdsDep;
end;

procedure TfmDep.N1Click(Sender: TObject);
begin
 fmNewDep.eName.Text:= '';
 fmNewDep.ShowModal;
 if fmNewDep.ModalResult = mrOk then
 begin
  try
    dm.DCOMConnection1.AppServer.smAddDep(0, fmNewDep.eName.Text);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsDep.Refresh;

end;
end;

procedure TfmDep.N2Click(Sender: TObject);
begin
 fmNewDep.eName.Text:= dm.cdsDepNAME.Value;
 fmNewDep.ShowModal;
 if fmNewDep.ModalResult = mrOk then
 begin
  try
    dm.DCOMConnection1.AppServer.smAddDep(dm.cdsDepID.Value, fmNewDep.eName.Text);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsDep.Refresh;

end;
end;

procedure TfmDep.N3Click(Sender: TObject);
begin
  if MessageDlg('Удалить отдел ' +'' + dm.cdsDepNAME.Value + '' +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
  try
  dm.DCOMConnection1.AppServer.smDeleteDep(dm.cdsDepID.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsDep.Refresh;
 end;
 //dm.cdsDep.Refresh;
end;

procedure TfmDep.N4Click(Sender: TObject);
begin
 fmDep.Close;
end;

procedure TfmDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewD_T.dep_id := dm.cdsDepID.Value;
  fmNewD_T.dep_name := dm.cdsDepNAME.Value;
 { fmNewR_St.route_name:= dm.cdsRouteP_DEP.Value;
  FmNewR_St.route_ar := dm.cdsRouteP_AR.Value;   }
end;

end.
