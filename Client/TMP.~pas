unit TMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TfmTMP = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    eDEm: TEdit;
    BitBtn5: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn6: TBitBtn;
    eDate: TEdit;
    BitBtn7: TBitBtn;
    eChild: TEdit;
    BitBtn8: TBitBtn;
    eWage: TEdit;
    BitBtn9: TBitBtn;
    eRoute: TEdit;
    Button1: TButton;
    eTime: TEdit;
    bb: TBitBtn;
    BitBtn10: TBitBtn;
    ePrice: TEdit;
    Button2: TButton;
    BitBtn11: TBitBtn;
    eDir: TEdit;
    Button3: TButton;
    eR: TEdit;
    Button4: TButton;
    BitBtn12: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn13: TBitBtn;
    Button5: TButton;
    eT: TEdit;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    eP: TEdit;
    eR9: TEdit;
    BitBtn16: TBitBtn;
    eTrip: TEdit;
    BitBtn17: TBitBtn;
    DateTimePicker3: TDateTimePicker;
    BitBtn18: TBitBtn;
    eRt: TEdit;
    Button6: TButton;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
//    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure bbClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
  private
    { Private declarations }
  public
  route_id, dir_id, trip_id :integer;
  route_name, ar_name, dir_name :string;
    { Public declarations }
  end;

var
  fmTMP: TfmTMP;

implementation

uses Unit2, DateUtils, Route, Dir, Trip;

{$R *.dfm}

procedure TfmTMP.BitBtn1Click(Sender: TObject);
var id, k :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
  id := dm.cdsEmplID_EMPL.Value;
   if dm.cdsTMP.FindKey([id]) then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;

   end;
   //dm.cdsTemp.fieldByName('WEIGHT').Value:=dm.cdsTemp.FieldByName('WEIGHT').Value+dm.cdsFuturaTOTALWEIGHT.Value;
   dm.cdsTMP.Post;
   dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;
  end;

procedure TfmTMP.BitBtn2Click(Sender: TObject);
var id, k :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
  id := dm.cdsEmplID_EMPL.Value;
  if  ((dm.cdsEmplEMPL_NAME.Value) = ( 'Начальник')) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;
end;

{procedure TfmTMP.BitBtn3Click(Sender: TObject);
var id, k :integer;
begin
{k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
   id := dm.cdsEmplID_EMPL.Value;
  if  ((dm.cdsEmplEMPL_NAME.Value) = eDep.Text) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;              }

procedure TfmTMP.BitBtn4Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
  id := dm.cdsEmplID_EMPL.Value;
  if  (YearOf(dm.cdsEmplDATA_EMPL.Value) = YearOf(IncYear(Today,(-1)*StrToInt(eDEm.Text) ))) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn5Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
if RadioButton1.Checked = TRUE THEN
a :=0
else
a:=1;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
  id := dm.cdsEmplID_EMPL.Value;
  if  ((dm.cdsEmplSEX.Value) = a) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn6Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
  id := dm.cdsEmplID_EMPL.Value;
  if  (YearOf(dm.cdsEmplDATA.Value) = YearOf(IncYear(Today,(-1)*StrToInt(eDate.Text) ))) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn7Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
  id := dm.cdsEmplID_EMPL.Value;
  if  ((dm.cdsEmplCHILD.Value) = StrToInt(eChild.Text)) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn8Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsEmpl.First;
  while not dm.cdsEmpl.Eof do
  begin
  id := dm.cdsEmplID_EMPL.Value;
  if  ((dm.cdsEmplZP.Value) = (eWage.Text)) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsEmplFIO.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsEmpl.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего сотрудников: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='ФИО';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.Button1Click(Sender: TObject);
begin
 fmRoute.ShowModal;
 eRoute.Text := route_name +'-'+ ar_name;
end;

procedure TfmTMP.BitBtn9Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrain.First;
  while not dm.cdsTrain.Eof do
  begin
  id := dm.cdsTrainID_TRAIN.Value;
  if  ((dm.cdsTrainID_ROUTE.Value) = route_id) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTrainID_TRAIN.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsTrain.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.bbClick(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrain.First;
  while not dm.cdsTrain.Eof do
  begin
  id := dm.cdsTrainID_TRAIN.Value;
  if  ((dm.cdsTrainTIME.Value) = eTime.Text) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTrainID_TRAIN.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsTrain.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn10Click(Sender: TObject);

  var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrain.First;
  while not dm.cdsTrain.Eof do
  begin
  id := dm.cdsTrainID_TRAIN.Value;
  if  ((dm.cdsTrainPRICE.Value) <> StrToInt(ePrice.Text )) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTrainID_TRAIN.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsTrain.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;
end;

procedure TfmTMP.Button2Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrain.First;
  while not dm.cdsTrain.Eof do
  begin
  id := dm.cdsTrainID_TRAIN.Value;
  if  ( (IntToStr(dm.cdsTrainPRICE.Value) = ePrice.Text ) and
  ((dm.cdsTrainID_ROUTE.Value) = route_id) and
  ((dm.cdsTrainTIME.Value) = eTime.Text) ) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTrainID_TRAIN.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsTrain.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;


{procedure TfmTMP.bbClick(Sender: TObject);
  Var id, k, a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrain.First;
  while not dm.cdsTrain.Eof do
  begin
  id := dm.cdsTrainID_TRAIN.Value;
  if  ((dm.cdsTrainTIME.Value) = eTime.Text) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTrainID_TRAIN.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsTrain.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;    }

{procedure TfmTMP.BitBtn10Click(Sender: TObject);
  var id, k ,a :integer;
begin
{k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrain.First;
  while not dm.cdsTrain.Eof do
  begin
  id := dm.cdsTrainID_TRAIN.Value;
  if ( (IntToStr(dm.cdsTrainPRICE.Value) = ePrice.Text ) and
  ((dm.cdsTrainID_ROUTE.Value) = route_id) and
  ((dm.cdsTrainTIME.Value) = eTime.Text) )
   then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTrainID_TRAIN.Value;
   end;
   dm.cdsTMP.Post;

 end;
 dm.cdsTrain.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;                                      }
procedure TfmTMP.BitBtn11Click(Sender: TObject);
var id, k  :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrip.First;
  while not dm.cdsTrip.Eof do
  begin
  id := dm.cdsTripID_TRIP.Value;
  if ((dm.cdsTripSTATUS.Value) = 2) then   begin
  if   (StrToInt(dm.cdsTripDIR_ID.Value) =(dir_id)) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTripID_TRIP.Value;
   end;
   dm.cdsTMP.Post;

 end;
 end;
 dm.cdsTrip.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.Button3Click(Sender: TObject);
begin
 fmDirection.ShowModal;
 eDir.Text := dir_name;
end;

procedure TfmTMP.BitBtn12Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTrip.First;
  while not dm.cdsTrip.Eof do
  begin
  id := dm.cdsTripID_TRIP.Value;
  if (dm.cdsTripSTATUS.Value = 2) then begin
  if  ((dm.cdsTripID_ROUTE.Value) = route_id) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTripID_TRIP.Value;
   end;
   dm.cdsTMP.Post;
 end;
 end;
 dm.cdsTrip.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;


end;

procedure TfmTMP.Button4Click(Sender: TObject);
begin
  fmRoute.ShowModal;
 eR.Text := route_name +'-'+ ar_name;
end;

procedure TfmTMP.BitBtn13Click(Sender: TObject);
 var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
{  if ( (CompareDate(dm.cdsTicketDATA.Value, DateTimePicker1.Date)) >0
  and (CompareDate((dm.cdsTicketDATA.Value), DateTimePicker2.Date)) <0 ) then }
  {if ((StrToTime(dm.cdsTicketDEPARTURES.Value) > DateTimePicker1.Time)
   and (StrToTime(dm.cdsTicketDEPARTURES.Value) < DateTimePicker2.Time)) then  }
   if ((( dm.cdsTicketDATA.Value)> DateTimePicker1.Date)
  and ((dm.cdsTicketDATA.Value)< DateTimePicker2.Date)  ) then

   begin
  if  ((dm.cdsTicketID_ROUTE.Value) = route_id) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;


procedure TfmTMP.Button5Click(Sender: TObject);
begin
 fmRoute.ShowModal;
 eR9.Text := route_name +'-'+ ar_name;
end;

procedure TfmTMP.BitBtn14Click(Sender: TObject);
 var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if ((( dm.cdsTicketDATA.Value)> DateTimePicker1.Date)
  and ((dm.cdsTicketDATA.Value)< DateTimePicker2.Date)  ) then
   begin
  if  ((dm.cdsTicketTIME.Value) = eT.Text) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn15Click(Sender: TObject);
   var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if ((( dm.cdsTicketDATA.Value)> DateTimePicker1.Date)
  and ((dm.cdsTicketDATA.Value)< DateTimePicker2.Date)  ) then
   begin
  if  ((dm.cdsTicketPRICE.Text) = eP.Text) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;
end;

procedure TfmTMP.BitBtn16Click(Sender: TObject);
   var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if (dm.cdsTicketSTATUS.Value = 1 ) then
   begin
  if  (dm.cdsTicketID_TRIP.Value = trip_id) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn19Click(Sender: TObject);
begin
 fmTrip.ShowModal;
  eTrip.Text := IntToStr(trip_id);
end;

{procedure TfmTMP.BitBtn17Click(Sender: TObject);
   var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if ((( dm.cdsTicketDATA.Value)> DateTimePicker1.Date)
  and ((dm.cdsTicketDATA.Value)< DateTimePicker2.Date)  ) then
   begin
  if  ((dm.cdsTicketPRICE.Text) = eP.Text) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;
end;      }

procedure TfmTMP.BitBtn17Click(Sender: TObject);
   var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if (dm.cdsTicketSTATUS.Value = 1 ) then
   begin
  //if  ((dm.cdsTicketDATA.Value) = DateTimePicker3.Date) then
  if CompareDate(dm.cdsTicketDATA.Value, DateTimePicker3.Date) =1    then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;



procedure TfmTMP.Button6Click(Sender: TObject);
begin
 fmRoute.ShowModal;
 eRt.Text := route_name +'-'+ ar_name;
end;

procedure TfmTMP.BitBtn18Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
    if (dm.cdsTicketSTATUS.Value = 1) then begin
  if  ((dm.cdsTicketID_ROUTE.Value) = route_id) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;

end;

procedure TfmTMP.BitBtn20Click(Sender: TObject);
  var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if (dm.cdsTicketSTATUS.Value = 0 ) then
   begin
  if  (dm.cdsTicketID_TRIP.Value = trip_id) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;


end;

procedure TfmTMP.BitBtn21Click(Sender: TObject);
  var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if (dm.cdsTicketSTATUS.Value = 0 ) then
   begin
  //if  ((dm.cdsTicketDATA.Value) = DateTimePicker3.Date) then
  if CompareDate(dm.cdsTicketDATA.Value, DateTimePicker3.Date) =1    then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
  end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;
end;

procedure TfmTMP.BitBtn22Click(Sender: TObject);
var id, k ,a :integer;
begin
k:=0;
   if dm.cdsTMP.Active then
  begin
    dm.cdsTMP.CancelUpdates;
    dm.cdsTMP.Close;
  end;
  dm.cdsTMP.Open;
    dm.cdsTMP.AddIndex('indexID','ID',[],'','');
  dm.cdsTMP.IndexFieldNames:='ID';
  dm.cdsTicket.First;
  while not dm.cdsTicket.Eof do
  begin
  id := dm.cdsTicketID_TIC.Value;
  if (dm.cdsTicketSTATUS.Value = 0) then begin
  if  ((dm.cdsTicketID_ROUTE.Value) = route_id) then
  begin
   if (dm.cdsTMP.FindKey([id]))  then
   dm.cdsTMP.Edit
   else
   begin
   k:=k+1;
     dm.cdsTMP.Append;
     dm.cdsTMP.FieldByName('ID').Value:=id;
     dm.cdsTMP.FieldByName('NAME').Value:=dm.cdsTicketID_TIC.Value;
   end;
   dm.cdsTMP.Post;
end;
 end;
 dm.cdsTicket.Next;
end;
dm.cdsTMP.Append;
dm.cdsTMP.FieldByName('NAME').Value:='Всего поездов: '+''+IntToStr(k);
  dm.cdsTMP.FieldByName('ID').Visible := False;;
  dm.cdsTMP.FieldByName('NAME').DisplayLabel:='Номер поезда';
   dm.cdsTMP.FieldByName('NAME').DisplayWidth:=25;
   DataSource1.DataSet := dm.cdsTMP  ;


end;

end.
