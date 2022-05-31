unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewPass = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    eName: TEdit;
    ePass: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewPass: TfmNewPass;

implementation

{$R *.dfm}

end.
