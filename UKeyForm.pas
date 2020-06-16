{Задан набор записей следующей структуры: ФИО студента, номер студенческого
билета, результаты последней сессии. По номеру студ билета вывести ФИО студента
и кол-во несданных зачетов и экзаменов}
unit UKeyForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Grids, ExtCtrls, UInfo;

type
  TKeyForm = class(TForm)
    edNumber: TEdit;
    edFIO: TEdit;
    lbNumber: TLabel;
    lbSalary: TLabel;
    lbFIO: TLabel;
    bOk: TButton;
    bCancel: TButton;
    Label1: TLabel;
    edExams: TEdit;
    edZachets: TEdit;
    procedure bOkClick(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
    info : TInfo;
    constructor Create(ACaption: string; AInfo: TInfo = nil);

  end;

var
  KeyForm: TKeyForm;

implementation

{$R *.dfm}
constructor TKeyForm.Create(ACaption: string; AInfo: TInfo = nil);
begin
  inherited Create(nil);
  Caption:=ACaption;
  Info:=AInfo;
  bOk.visible:=(AInfo = nil);
  edNumber.ReadOnly:=(AInfo <> nil);
  edFIO.ReadOnly:=(AInfo <> nil);
  edZachets.ReadOnly:=(AInfo <> nil);
  edExams.ReadOnly:=(AInfo <> nil);
  if Info <> nil then
    begin
      edNumber.Text:=info.key;
      edFIO.Text:=info.FIO;
      edZachets.Text:= IntToStr(info.zachets);
      edExams.Text:= IntToStr(info.exams);
    end;
end;

procedure TKeyForm.bOkClick(Sender: TObject);
var
  key: TKey;
  num: integer;
  stdNumber: integer;
  zachNumber: integer;
  examNumber: integer;
begin
   if not TryStrToInt(Trim(edNumber.Text), stdNumber) and (stdNumber <= 0) then
      begin
        ShowMessage('Номер студ. билета имеет неверный формат!');
        edNumber.SetFocus();
        exit;
      end;
    if not TryStrToInt(Trim(edZachets.Text), zachNumber) and (zachNumber <= 0) then
      begin
        ShowMessage('Кол-во несданных зачетов имеет неверный формат!');
        edZachets.SetFocus();
        exit;
      end;
    if not TryStrToInt(Trim(edExams.Text), examNumber) and (examNumber <= 0) then
      begin
        ShowMessage('Кол-во несданных экзаменов имеет неверный формат!');
        edExams.SetFocus();
        exit;
      end;
    if Trim(edFIO.Text)='' then
      begin
        ShowMessage('Введите ФИО!');
        edFIO.SetFocus();
        exit;
      end;
    info:=TInfo.Create(stdNumber, Trim(edFIO.Text), zachNumber, examNumber);
    ModalResult:=mrOk;
end;


end.
