unit NewEmpl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TfmNewEmpl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    eName: TEdit;
    eKolChild: TEdit;
    ePost: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    HeaderControl1: THeaderControl;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure eNameChange(Sender: TObject);
  private
    { Private declarations }
  public
  empl_id:integer;
  empl_name:string;
    { Public declarations }
  end;

var
  fmNewEmpl: TfmNewEmpl;

implementation

uses Unit10;

{$R *.dfm}

procedure TfmNewEmpl.Button1Click(Sender: TObject);
begin
 fmPost.ShowModal;
 ePost.Text := empl_name;
end;

procedure TfmNewEmpl.eNameChange(Sender: TObject);
begin
if DateTimePicker1.Date >  DateTimePicker2.Date then
BitBtn1.Enabled:= False;
end;

end.
