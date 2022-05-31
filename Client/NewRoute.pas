unit NewRoute;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfmNewRoute = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eAr: TEdit;
    eDir: TEdit;
    eDep: TEdit;
    eTime: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  dir_id:integer;
  dir_name:string;
    { Public declarations }
  end;

var
  fmNewRoute: TfmNewRoute;

implementation

uses Dir;

{$R *.dfm}

procedure TfmNewRoute.Button1Click(Sender: TObject);
begin
   fmDirection.ShowModal;
  eDir.Text:= dir_name;
end;

end.
