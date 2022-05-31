unit NewTrain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewTrain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eCarriage: TEdit;
    eSpot: TEdit;
    eRoute: TEdit;
    eTrip: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    eAr: TEdit;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
  route_name, route_ar: string;
  route_id, trip_id:integer;

    { Public declarations }
  end;

var
  fmNewTrain: TfmNewTrain;

implementation

uses Trip;

{$R *.dfm}

procedure TfmNewTrain.BitBtn3Click(Sender: TObject);
begin
      fmTrip.ShowModal;
 eTrip.Text := IntToStr(trip_id);
  eRoute.Text := route_name;
 eAr.Text := route_ar;

end;

end.
