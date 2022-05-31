unit NewEm_Team;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfmNewE_T = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    eEmpl: TEdit;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    eTeam: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
   team_name, empl_name :string;
  empl_id, team_id:integer;
    { Public declarations }
  end;

var
  fmNewE_T: TfmNewE_T;

implementation

uses Unit8, Empl;

{$R *.dfm}

procedure TfmNewE_T.Button1Click(Sender: TObject);
begin
   fmTeam.ShowModal;
 eTeam.Text := team_name;
end;

procedure TfmNewE_T.Button2Click(Sender: TObject);
begin
 fmEmpl.ShowModal;
 eEmpl.Text := empl_name;
end;

end.
