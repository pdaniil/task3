{Задан набор записей следующей структуры: ФИО студента, номер студенческого
билета, результаты последней сессии. По номеру студ билета вывести ФИО студента
и кол-во несданных зачетов и экзаменов}
unit UHashTable;

interface
uses
  SysUtils, Classes, ComCtrls, StdCtrls, Grids, UInfo;

Const
  N=101;

Type
  TIndex = 0..N-1;
  TState = (sfree,sfull,sdel);
  TAddRes = (arNotFree,arOK,arFound);
  TCell=record
    Info:TInfo;
    State:TState;
  end;

  TTable=array[TIndex] of TCell;
  THashTable=class
  private
    FCount:integer;
    FTable:TTable;
    FC:integer;
    FD:integer;
  protected
    function HashF(key:TKey):TIndex;
    function NextCell(a0:TIndex; var i:integer):TIndex;
    function IndexOf(key:TKey; var a:TIndex):boolean;

    function AddHelp(info:TInfo):TAddRes;
    function DeleteHelp(key:TKey):boolean;
    procedure ClearHelp;

  public
    constructor Create(AC,AD:integer);
    destructor Destroy; override;
    procedure Clear;                  virtual;
    function Add(info:TInfo):TAddRes; virtual;
    function Find(key:Tkey; var info:TInfo):boolean;
    function Delete(key:TKey):boolean; virtual;
    procedure ShowToGrid(SG:TStringGrid);
    procedure SaveToFile(FileName:string);
    function LoadFromFile(FileName:string):boolean;

    property Count:Integer read FCount;
  end;

implementation

function THashTable.AddHelp(info: TInfo): TAddRes;
var
  a:TIndex;
  OK:boolean;
begin
  if FCount >= N then
    Result:= arNotFree
  else
    begin
      OK:= IndexOf(info.key,a);
      if OK then
        Result:= arFound
      else
        if FTable[a].State = sFull then
          Result:= arNotFree
        else
          begin
            FTable[a].Info := info;
            FTable[a].State:= sFull;
            inc(FCount);
            Result:= arOk;
          end;
    end;
  if Result<>arOk then
    info.Free;
end;

procedure THashTable.ClearHelp;
var
  i:integer;
begin
  for i:=0 to n-1 do
    begin
      if FTable[i].State = sFull then
        FTable[i].Info.Free;
      FTable[i].State:=sfree;
    end;
  FCount:=0;
end;

constructor THashTable.Create;
var
  i:integer;
begin
  FCount:=0;
  for i:=0 to n-1 do
    begin
      FTable[i].State:= sfree;
      FTable[i].Info:=nil
    end;
  FC:= AC;
  FD:= AD;
end;

function THashTable.DeleteHelp(key: TKey): boolean;
var
  a:TIndex;
begin
  Result:= IndexOf(key,a);
  if Result then
    begin
      FTable[a].State:=sdel;
      FreeAndNil(FTable[a].Info);
      result:=true;
      dec(FCount);
    end;
end;

function THashTable.Add(info: TInfo): TAddRes;
begin
  Result:= AddHelp(info);
end;

function THashTable.Delete;
begin
  Result:= DeleteHelp(key);
end;

procedure THashTable.Clear;
begin
  ClearHelp;
end;

destructor THashTable.Destroy;
begin
  Clear;
  inherited;
end;

function THashTable.Find(key: Tkey; var info: TInfo): boolean;
var
  a:TIndex;
begin
  result:=IndexOf(key,a);
  if Result then
    info:=FTable[a].info;
end;

function THashTable.HashF(key: TKey): TIndex;
begin
  Result:= TInfo.Good_HF(key) mod N;
  //Result:= TInfo.Bad_HF(key) mod N;
end;

function THashTable.IndexOf(key: TKey; var a:TIndex): boolean;
var
  a0: TIndex;
  d,i:integer;
  OK,stop:boolean;
begin
  a0:=HashF(key);
  i:=0;
  a:=a0;
  d:=-1;
  stop:=false;
  ok:=false;
  repeat
    case FTable[a].State of
      sFree:
        stop:= true;
      sFull:
        if FTable[a].info.key = key then
          OK:=true
        else
          a:=NextCell(a0,i);
      sDel:
        begin
          if d = -1 then
            d:=a;
          a:= NextCell(a0,i);
        end;
    end;
  until OK or Stop or (i >= N*2);
  Result:= OK;
  if not OK and (d>=0) then
    a:=d;
end;

function THashTable.LoadFromFile(FileName:string): boolean;
var
  f:TextFile;
  info:TInfo;
begin
  Assign(f,FileName);
  Reset(f);
  Result:=true;
  while not EOF(f) and Result do
    Result:=TInfo.LoadFromFile(f,info)and ( AddHelp(info) = arOK);
  CloseFile(f);
end;

function THashTable.NextCell(a0:TIndex; var i: integer): TIndex;
begin
  inc(i);
  result:= (a0 + FC * i + FD * sqr(i)) mod N;
end;

procedure THashTable.ShowToGrid(SG: TStringGrid);
var
  i:integer;
  index:TIndex;
begin
  if FCount = 0 then
    begin
      SG.RowCount:=2;
      SG.Rows[1].Clear;
    end
  else
    begin
      SG.RowCount:=FCount+1;
      i:=0;
      for index:=0 to N-1 do
        if FTable[index].State=sfull then
          begin
            inc(i);
            FTable[index].Info.ShowInfo(SG.Rows[i]);
          end;
    end;
end;

procedure THashTable.SaveToFile(FileName: string);
var
  f:TextFile;
  i:integer;
begin
  Assign(f,FileName);
  Rewrite(f);
  for i:=0 to N-1 do
    if FTable[i].State=sfull then
      FTable[i].Info.SaveToFile(f);
  CloseFile(f);
end;

end.
