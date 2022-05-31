unit NewTrip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TfmNewTrip = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    eRoute: TEdit;
    eAr: TEdit;
    procedure Button1Click(Sender: TObject);
  private

    { Private declarations }
  public
  route_name:string;
  route_id:integer;
  route_ar:string;
    { Public declarations }
  end;

var
  fmNewTrip: TfmNewTrip;

implementation

uses Route;

{$R *.dfm}

procedure TfmNewTrip.Button1Click(Sender: TObject);
begin
   fmRoute.ShowModal;
 eRoute.Text := route_name;
 eAr.Text :=  route_ar;
end;

end.
