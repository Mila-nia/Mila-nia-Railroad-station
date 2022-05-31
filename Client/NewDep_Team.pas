unit NewDep_Team;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewD_T = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    eTeam: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    eDep: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  dep_name, team_name :string;
  dep_id, team_id: integer;
    { Public declarations }
  end;

var
  fmNewD_T: TfmNewD_T;

implementation

uses Unit6, Unit8;

{$R *.dfm}

procedure TfmNewD_T.Button1Click(Sender: TObject);
begin
        fmDep.ShowModal;
      eDep.Text := dep_name;
     end;

procedure TfmNewD_T.Button2Click(Sender: TObject);
begin
 fmTeam.ShowModal;
 eTeam.Text := team_name;
end;

end.
