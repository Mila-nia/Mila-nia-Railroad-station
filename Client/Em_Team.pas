unit Em_Team;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmE_T = class(TForm)
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
  fmE_T: TfmE_T;

implementation

uses Unit2, NewEm_Team;

{$R *.dfm}

procedure TfmE_T.FormActivate(Sender: TObject);
begin
DataSource1.DataSet := dm.cdsEm_t;
end;

procedure TfmE_T.N1Click(Sender: TObject);
begin
  fmNewE_T.eTeam.Text := '';
   fmNewE_T.eEmpl.Text := '';
 fmNewE_T.ShowModal;
 if fmNewE_T.ModalResult = mrOk then
 begin
  try
    dm.DCOMConnection1.AppServer.smAddEmpl_Team( fmNewE_T.empl_id,fmNewE_T.team_id);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsEm_t.Refresh;
end;
  end;
procedure TfmE_T.N2Click(Sender: TObject);
   Var id_team, id_empl:integer;
begin
 id_team:= dm.cdsEm_tID_TEAM.Value ;
 id_empl:= dm.cdsEm_tID_EMPL.Value;
  fmNewE_T.eTeam.Text:= dm.cdsEm_tTEAM_NAME.Text;
 fmNewE_T.eEmpl.Text := dm.cdsEm_tEMPL_NAME.Text;
 fmNewE_T.ShowModal;
 if fmNewE_T.ModalResult = mrOk then
 begin
  try
   if fmNewE_T.empl_id <> 0 then
 id_empl := fmNewE_T.empl_id ;
   if fmNewE_T.team_id <> 0 then
 id_team := fmNewE_T.team_id ;
    dm.DCOMConnection1.AppServer.smAddEmpl_Team( id_empl,id_team);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsEm_t.Refresh;
end;
end;

procedure TfmE_T.N3Click(Sender: TObject);
begin
       if MessageDlg('Удалить связь Работник-Бригада ' +''
        + dm.cdsEm_tEMPL_NAME.Value+ ' '
     + dm.cdsEm_tTEAM_NAME.Value +''  +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
  try
  dm.DCOMConnection1.AppServer.smDeleteEmpl_Team(dm.cdsEm_tID_EMPL.Value,dm.cdsEm_tID_TEAM.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsEm_t.Refresh;
end;
    end;
procedure TfmE_T.N4Click(Sender: TObject);
begin
Close;
end;

end.
