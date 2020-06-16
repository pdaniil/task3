{Задан набор записей следующей структуры: ФИО студента, номер студенческого
билета, результаты последней сессии. По номеру студ билета вывести ФИО студента
и кол-во несданных зачетов и экзаменов}
unit UInfo;

interface
uses
  SysUtils, Classes, ComCtrls, StdCtrls, Grids;
type
  TKey = string;

  TInfo = class
  private
    FNumber: integer;
    FFIO: string;
    FZachets: integer;
    FExams: integer;
  public
    constructor CreateEmpty;
    constructor Create(ANumber: integer; AFIO:string; AZachets, AExams:integer);

    class function Bad_HF(key:TKey):integer;
    class function Good_HF(key:TKey):integer;
    procedure SaveToFile(var f:TextFile);
    class function LoadFromFile(var f: Text; var info:TInfo):boolean ;

    class procedure ShowTitle(SG:TStringGrid);
    procedure ShowInfo(SL:TStrings);

    procedure NumberToString(str: TKey);
    function StringToNumber:TKey;

    property key: TKey read StringToNumber write NumberToString;
    property number:integer read FNumber write FNumber;
    property FIO:string read FFIO write FFIO;
    property zachets:integer read FZachets write FZachets;
    property exams:integer read FExams write FExams;
  end;

implementation

procedure TInfo.NumberToString(str: TKey);
begin
  FNumber:= StrToInt(str);
end;

function TInfo.StringToNumber:TKey;
begin
  Result:= IntToStr(FNumber);
end;

function GetValueFromFile(var f:TextFile; var value:string):boolean;
var
  p:integer;
  s:string;
begin
  result:=not eof(f);
  if result then
    begin
      readln(f,s);
      p:=pos(':',s);
      if p=0 then
        result:= false
      else
        begin
           value:=Trim(Copy(s,p+1,length(s)-p));
           result:=value<>'';
        end;
    end;
end;

constructor TInfo.CreateEmpty;
begin
   inherited;
   FNumber:=0;
   FFIO:='';
   FZachets:= 0;
   FExams:= 0;
end;

constructor TInfo.Create(ANumber: integer; AFIO:string; AZachets, AExams:integer);
begin
  FNumber:=ANumber;
  FFIO:=AFIO;
  FZachets:= AZachets;
  FExams:= AExams;
end;

class function TInfo.Good_HF(key:Tkey):integer;
const
  ord_0 = ord('0');
var
  i:integer;
begin
  Result:= 0;
  for i:= 1 to length(key) do
    Result:= Result + (ord(key[i]) - ord_0) * i;
end;

class function TInfo.Bad_HF(key:TKey):integer;
begin
  Result:= 100;
end;

class procedure TInfo.ShowTitle(SG:TStringGrid);
begin
  with SG do
    begin
      ColCount:=4;
      RowCount:=2;
      FixedRows:=1;
      Rows[1].Clear;
      Cells[0,0]:='Номер студ. билета';
      Cells[1,0]:='ФИО';
      Cells[2,0]:='Несданные зачеты';
      Cells[3,0]:='Несданные экзамены';
    end;
end;

procedure TInfo.ShowInfo(SL:TStrings);
begin
  SL[0]:=IntToStr(FNumber);
  SL[1]:=FFIO;
  SL[2]:=IntToStr(FZachets);
  SL[3]:=IntToStr(FExams);
end;

procedure TInfo.SaveToFile(var f:TextFile);
begin
  writeln(f,'Студ. номер: ', FNumber);
  writeln(f,'ФИО: ', FFIO);
  writeln(f,'Несданные зачеты: ', FZachets);
  writeln(f,'Несданные экзамены: ', FExams);
  writeln(f);
end;

class function TInfo.LoadFromFile(var f: TextFile; var info:TInfo):boolean;
var
  str:string;
  num:integer;
  zachets:integer;
  exams:integer;
begin
  info:=TInfo.CreateEmpty();
  result:=GetValueFromFile(f,str) and TryStrToInt(str, num) and (num >= 0) and
          GetValueFromFile(f,info.FFIO) and
          GetValueFromFile(f,str) and TryStrToInt(str, zachets) and (zachets >= 0) and
          GetValueFromFile(f,str) and TryStrToInt(str, exams) and (exams >= 0);
  if not result then
    FreeAndNil(info)
  else if not EOF(f) then
    Readln(f);
end;

end.
