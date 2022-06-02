unit NewTicket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TfmNewTicket = class(TForm)
    DateTimePicker1: TDateTimePicker;
    eCarriage: TEdit;
    eSpot: TEdit;
    ePass: TEdit;
    ePrice: TEdit;
    eRoute: TEdit;
    eTrip: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    eAr: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DateTimePicker2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
   // procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ePriceKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  pass_name, route_name, route_ar: string;
  pass_id, route_id, trip_id:integer;
    { Public declarations }
  end;

var
  fmNewTicket: TfmNewTicket;

implementation

uses Unit3, Route, Trip;

{$R *.dfm}

procedure TfmNewTicket.Button1Click(Sender: TObject);
begin
  fmPass.ShowModal;
 ePass.Text := pass_name;

end;

{procedure TfmNewTicket.Button2Click(Sender: TObject);
begin
 { fmRoute.ShowModal;
 eRoute.Text := route_name;
 eAr.Text := route_ar;
end;                   }

procedure TfmNewTicket.Button3Click(Sender: TObject);
begin
    fmTrip.ShowModal;
 eTrip.Text := IntToStr(trip_id);
  eRoute.Text := route_name;
 eAr.Text := route_ar;

end;

procedure TfmNewTicket.ePriceKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #8]) then Key := #0;
end;

end.
