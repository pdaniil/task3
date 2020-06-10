{����� ����� ������� ��������� ���������: ��� ��������, ����� �������������
������, ���������� ��������� ������. �� ������ ���� ������ ������� ��� ��������
� ���-�� ��������� ������� � ���������}
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
      edNumber.Text:=IntToStr(info.key);
      edFIO.Text:=info.FIO;
      edZachets.Text:= IntToStr(info.zachets);
      edExams.Text:= IntToStr(info.exams);
    end;
end;

procedure TKeyForm.bOkClick(Sender: TObject);
var
  key: TKey;
  num: integer;
begin
   if not TryStrToInt(Trim(edNumber.Text), num) and (num <= 0) then
      begin
        ShowMessage('����� ����. ������ ����� �������� ������!');
        edNumber.SetFocus();
        exit;
      end;
    if not TryStrToInt(Trim(edZachets.Text), num) and (num <= 0) then
      begin
        ShowMessage('���-�� ��������� ������� ����� �������� ������!');
        edZachets.SetFocus();
        exit;
      end;
    if not TryStrToInt(Trim(edExams.Text), num) and (num <= 0) then
      begin
        ShowMessage('���-�� ��������� ��������� ����� �������� ������!');
        edExams.SetFocus();
        exit;
      end;
    if Trim(edFIO.Text)='' then
      begin
        ShowMessage('������� ���!');
        edFIO.SetFocus();
        exit;
      end;
    info:=TInfo.Create(StrToInt(edNumber.Text), Trim(edFIO.Text), StrToInt(edZachets.Text), StrToInt(edExams.Text));
    ModalResult:=mrOk;
end;


end.
