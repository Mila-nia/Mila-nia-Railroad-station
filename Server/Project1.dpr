program Project1;

uses
  Forms,
 // M_TLB in 'M_TLB.pas',
  Unit2 in 'Unit2.pas' {MyServer: TRemoteDataModule} {MyServer: CoClass},
  Unit1 in 'Unit1.pas' {Form1},
  MyServer_TLB in 'MyServer_TLB.pas';

{$R *.tlb}
{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
