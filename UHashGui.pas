{Задан набор записей следующей структуры: ФИО студента, номер студенческого
билета, результаты последней сессии. По номеру студ билета вывести ФИО студента
и кол-во несданных зачетов и экзаменов}
unit UHashGui;

interface
uses
  SysUtils, Classes, ComCtrls, StdCtrls, Grids, UInfo, UHashTable;
type
  THashGui = class(THashTable)
    private
      FFileName:string;
      FModified:boolean;
      FGrid:TStringGrid;
    public
      constructor Create(AGrid:TStringGrid);
      destructor Destroy; override;
      function LoadFromFile(FileName:string):boolean;
      procedure SaveToFile(FileName:string);
      procedure Clear; override;
      function Add(info:TInfo):TAddRes; override;
      function Delete(key:TKey):boolean; override;
      property Modified:boolean read FModified;
      property FileName:string read FFileName;
  end;

implementation

constructor THashGui.Create(AGrid:TStringGrid);
begin
  inherited Create(1,1);
  FFileName:='';
  FModified:=false;
  FGrid:=AGrid;
  FGrid.visible:=true;
  TInfo.ShowTitle(FGrid);
end;

function THashGui.LoadFromFile(FileName:string):boolean;
begin
  result:=inherited LoadFromFile(FileName);
  FFileName:=FileName;
  FModified:=false;
  ShowToGrid(FGrid);
end;

procedure THashGui.SaveToFile(FileName:string);
begin
  inherited SaveToFile(FileName);
  FFileName:=FileName;
  FModified:=false;
end;

procedure THashGui.Clear;
begin
  if Count<>0 then
    begin
      inherited;
      FModified:=true;
      ShowToGrid(FGrid);
    end;
end;

function THashGui.Add(info:TInfo):TAddRes;
begin
  result:=inherited Add(info);
  if Result = arOk then
    begin
      FModified:=true;
      ShowToGrid(FGrid);
    end;
end;

function THashGui.Delete(key:TKey):boolean;
begin
  result:=inherited Delete(key);
  if Result then
    begin
      FModified:=true;
      ShowToGrid(FGrid);
    end;
end;

destructor THashGui.Destroy;
begin
  inherited;
  FGrid.Visible:=false;
end;

end.
