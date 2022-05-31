unit Dir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids;

type
  TfmDirection = class(TForm)
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
  //  procedure N2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDirection: TfmDirection;

implementation

uses Unit2, Unit15, Unit16, NewRoute, TMP;

{$R *.dfm}

procedure TfmDirection.FormActivate(Sender: TObject);
begin
   DataSource1.DataSet:=dm.cdsDir;
end;

procedure TfmDirection.N1Click(Sender: TObject);
begin
  fmNewDirection.eName.Text:='';
  fmNewDirection.ShowModal;
  if fmNewDirection.ModalResult=mrOk then
  begin
  try
    dm.DCOMConnection1.AppServer.smAddDir(0,fmNewDirection.eName.Text);
  except
  MessageDlg('Ошибка записи', mtError, [mbOk],0);
  end;
  dm.cdsDir.Refresh;
end;
end;

procedure TfmDirection.N2Click(Sender: TObject);
begin
     fmNewDirection.eName.Text:='';
  fmNewDirection.ShowModal;
  if fmNewDirection.ModalResult=mrOk then
  begin
  try
  dm.DCOMConnection1.AppServer.smAddDir(dm.cdsDirID.Value,fmNewDirection.eName.Text);
  except
  MessageDlg('Ошибка изменения', mtError, [mbOk],0);
  end;
  dm.cdsDir.Refresh;
end;
end;

procedure TfmDirection.N3Click(Sender: TObject);
begin
  if MessageDlg('Удалить клиента ' +'' + dm.cdsDirNAME.Value + '' +'?',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
  try
  dm.DCOMConnection1.AppServer.smDeleteDir(dm.cdsDirID.Value);
  except
  MessageDlg('Ошибка удаления', mtError, [mbOk],0);
  end;
  dm.cdsDir.Refresh;
end;
end;

procedure TfmDirection.N4Click(Sender: TObject);
begin
  fmDirection.Close;
end;

procedure TfmDirection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    fmNewRoute.dir_id := dm.cdsDirID.Value;
  fmNewRoute.dir_name:= dm.cdsDirNAME.Value;

  fmTMP.dir_id := dm.cdsDirID.Value;
  fmTMP.dir_name:= dm.cdsDirNAME.Value;
end;

end.
