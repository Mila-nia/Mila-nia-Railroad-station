unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmTeam = class(TForm)
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
  fmTeam: TfmTeam;

implementation

uses Unit2, Unit9, NewDep_Team, NewEm_Team;

{$R *.dfm}

procedure TfmTeam.FormActivate(Sender: TObject);
begin
 DataSource1.DataSet:=dm.cdsTeam;
end;

procedure TfmTeam.N1Click(Sender: TObject);
begin
  fmNewTeam.eName.Text:='';
  fmNewTeam.ShowModal;
  if fmNewTeam.ModalResult = mrOk then
  begin
  try
  dm.DCOMConnection1.AppServer.smAddTeam(0, fmNewTeam.eName.Text);
  except
  MessageDlg('Ошибка добавления', mtError,[mbOk],0);
  end;
  dm.cdsTeam.Refresh;
end;
end;

procedure TfmTeam.N2Click(Sender: TObject);
begin
    fmNewTeam.eName.Text:= dm.cdsTeamNAME.Value;
  fmNewTeam.ShowModal;
  if fmNewTeam.ModalResult = mrOk then
  begin
  try
  dm.DCOMConnection1.AppServer.smAddTeam(dm.cdsTeamID.Value, fmNewTeam.eName.Text);
  except
  MessageDlg('Ошибка изменения', mtError,[mbOk],0);
  end;
  dm.cdsTeam.Refresh;
end;
end;

procedure TfmTeam.N3Click(Sender: TObject);
begin
   if MessageDlg('Удалить бригаду ' +'' + dm.cdsTeamNAME.Value + '' +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
 begin
  try
  dm.DCOMConnection1.AppServer.smDeleteTeam(dm.cdsTeamID.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsTeam.Refresh;
end;
end;

procedure TfmTeam.N4Click(Sender: TObject);
begin
 fmTeam.Close;
end;

procedure TfmTeam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fmNewD_T.team_id := dm.cdsTeamID.Value;
 fmNewD_T.team_name := dm.cdsTeamNAME.Value;

 fmNewE_T.team_id := dm.cdsTeamID.Value;
 fmNewE_T.team_name := dm.cdsTeamNAME.Value;

end;

end.
