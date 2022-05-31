unit NewR_St;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewR_St = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    eAr: TEdit;
    eSt: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    eRoute: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  st_name, route_name, route_ar:string;
  st_id, route_id:integer;
    { Public declarations }
  end;

var
  fmNewR_St: TfmNewR_St;

implementation

uses Route, Unit12;

{$R *.dfm}

procedure TfmNewR_St.Button1Click(Sender: TObject);
begin
      fmRoute.ShowModal;
      eRoute.Text := route_name;
     eAr.Text := route_ar;
end;

procedure TfmNewR_St.Button2Click(Sender: TObject);
begin
      fmStation.ShowModal;
      eSt.Text := st_name;
end;

end.
