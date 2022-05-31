unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmNewPost = class(TForm)
    eName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    eWage: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewPost: TfmNewPost;

implementation

{$R *.dfm}

end.
