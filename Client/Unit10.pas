unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus;

type
  TfmPost = class(TForm)
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
  fmPost: TfmPost;

implementation

uses Unit2, Unit11, Route, NewEmpl;

{$R *.dfm}

procedure TfmPost.FormActivate(Sender: TObject);
begin
 DataSource1.DataSet:=dm.cdsPost;
end;

procedure TfmPost.N1Click(Sender: TObject);
begin
  fmNewPost.eName.Text:='';
  fmNewPost.eWage.Text:='';
  fmNewPost.ShowModal;
  if fmNewPost.ModalResult = mrOk then
  begin
  try
  dm.DCOMConnection1.AppServer.smAddPost(0, StrToInt(fmNewPost.eWage.Text),
   fmNewPost.eName.Text);
  except
  MessageDlg('Ошибка добавления', mtError,[mbOk],0);
  end;
  dm.cdsPost.Refresh;
end;
end;

procedure TfmPost.N2Click(Sender: TObject);
begin
  fmNewPost.eName.Text:= dm.cdsPostNAME.Value;
  fmNewPost.eWage.Text:=dm.cdsPostWAGE.AsString;
  fmNewPost.ShowModal;
  if fmNewPost.ModalResult = mrOk then
  begin
  try
  dm.DCOMConnection1.AppServer.smAddPost(dm.cdsPostID.Value, StrToInt(fmNewPost.eWage.Text),
   fmNewPost.eName.Text);
  except
  MessageDlg('Ошибка добавления', mtError,[mbOk],0);
  end;
  dm.cdsPost.Refresh;
end;
end;

procedure TfmPost.N3Click(Sender: TObject);
begin
  if MessageDlg('Удалить должность'+''+dm.cdsPostNAME.Value+''+'?', mtConfirmation,
  [mbYes, mbNo],0) = mrYes then
  begin
  try
  dm.DCOMConnection1.AppServer.smDeletePost(dm.cdsPostID.Value);
  except
  MessageDlg('Ошибка удаления', mtError,[mbOk],0);
  end;
  dm.cdsPost.Refresh;
end;
end;

procedure TfmPost.N4Click(Sender: TObject);
begin
  fmPost.Close;
end;

procedure TfmPost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmNewEmpl.empl_id := dm.cdsPostID.Value;
  fmNewEmpl.empl_name:= dm.cdsPostNAME.Value;
  end;

end.
