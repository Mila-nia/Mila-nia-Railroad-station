unit Dep_Team;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmD_T = class(TForm)
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
//    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmD_T: TfmD_T;

implementation

uses Unit2, NewDep_Team;

{$R *.dfm}

procedure TfmD_T.FormActivate(Sender: TObject);
begin
   DataSource1.DataSet := dm.cdsT_Dep;
end;

procedure TfmD_T.N1Click(Sender: TObject);
begin
   fmNewD_T.eTeam.Text := '';
   fmNewD_T.eDep.Text := '';
 fmNewD_T.ShowModal;
 if fmNewD_T.ModalResult = mrOk then
 begin
  try
    dm.DCOMConnection1.AppServer.smAddTeam_Dep( fmNewD_T.dep_id,fmNewD_T.team_id);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsT_Dep.Refresh;
end;
 end;
procedure TfmD_T.N2Click(Sender: TObject);
   Var id_team, id_dep:integer;
begin
 id_team:= dm.cdsT_DepID_TEAM.Value;
 id_dep:= dm.cdsT_DepID_DEP.Value;
  fmNewD_T.eTeam.Text:= dm.cdsT_DepID_TEAM.Text;
 fmNewD_T.eDep.Text := dm.cdsT_DepID_DEP.Text;
 fmNewD_T.ShowModal;
 if fmNewD_T.ModalResult = mrOk then
 begin
  try
   if fmNewD_T.dep_id <> 0 then
 id_dep := fmNewD_T.dep_id ;
   if fmNewD_T.team_id <> 0 then
 id_team := fmNewD_T.team_id ;
    dm.DCOMConnection1.AppServer.smAddTeam_Dep( id_dep,id_team);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsT_Dep.Refresh;
end;
end;

procedure TfmD_T.N3Click(Sender: TObject);
begin
      if MessageDlg('Удалить связь Отдел-бригада ' +'' + dm.cdsT_DepDEP_NAME.Value+ ' '
     + dm.cdsT_DepTEAM_NAME.Value +''  +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
  try
  dm.DCOMConnection1.AppServer.smDeleteTeam_Dep(dm.cdsT_DepID_TEAM.Value,dm.cdsT_DepID_DEP.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsT_Dep.Refresh;
end;
 end;
procedure TfmD_T.N4Click(Sender: TObject);
begin
       close;
end;

end.
