{����� ����� ������� ��������� ���������: ��� ��������, ����� �������������
������, ���������� ��������� ������. �� ������ ���� ������ ������� ��� ��������
� ���-�� ��������� ������� � ���������}
unit UForm;

interface

uses
  UHashGui, UInfo, UHashTable, UKeyForm, Windows, Messages,
  SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Menus,
  Grids, ComCtrls, ToolWin,  ActnList, ImgList;
type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    ActionList: TActionList;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    ImageList: TImageList;
    StatusBar: TStatusBar;
    ToolBar: TToolBar;
    sgMain: TStringGrid;
    NFile: TMenuItem;
    NNew: TMenuItem;
    NOpen: TMenuItem;
    NSave: TMenuItem;
    NSaveAs: TMenuItem;
    NClose: TMenuItem;
    NExit: TMenuItem;
    NChange: TMenuItem;
    NAdd: TMenuItem;
    NDelete: TMenuItem;
    NSearch: TMenuItem;
    NClear: TMenuItem;
    NTask: TMenuItem;
    aNew: TAction;
    aOpen: TAction;
    aSave: TAction;
    aSaveAs: TAction;
    aClose: TAction;
    aExit: TAction;
    aAdd: TAction;
    aDelete: TAction;
    aSearch: TAction;
    aClear: TAction;
    aTask: TAction;
    TBNew: TToolButton;
    TBSave: TToolButton;
    TBOpen: TToolButton;
    ToolButton1: TToolButton;
    TBDelete: TToolButton;
    TBSearch: TToolButton;

    procedure actSaveAsExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actFindExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    function CanCloseFile:boolean;
    procedure MyIdle(sender:TObject; var Done:boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    function InputKey (ACaption: string; var AKey: integer): boolean;

  private
    { Private declarations }
  public
    { Public declarations }
    hash:THashGui;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

function TMainForm.InputKey(ACaption:string; var Akey:integer):boolean;
var
  s:string;
  num:integer;
begin
  s:='';
  result:=false;
  if InputQuery(ACaption,'������� ����� ����. ������',s) then
    if TryStrToInt(s, AKey) and (AKey >= 0) then
      Result:=true
    else
      MessageDlg('����� ������ �� �����', mtError,[mbOk],0)
end;

procedure TMainForm.actSaveAsExecute(Sender: TObject);
begin
  SaveDialog.FileName:=hash.FileName;
  if SaveDialog.Execute then
    hash.SaveToFile(SaveDialog.FileName);
end;

procedure TMainForm.actSaveExecute(Sender: TObject);
begin
   if hash.FileName<>'' then
    hash.SaveToFile(hash.FileName)
  else
    aSaveAs.Execute;
end;

function TMainForm.CanCloseFile:boolean;
var
  ans:word;
begin
  result:=true;
  if (hash<>nil) and hash.Modified then
    begin
      ans:=MessageDlg('��������� ���������?',mtConfirmation,mbYesNoCancel,0);
      case ans of
        mrYes:
          begin
            aSave.Execute;
            result:=not hash.Modified;
          end;
        mrNo:;
        mrCancel:result:=false;
      end;
    end;
  if result then
    FreeAndNil(hash);
end;

procedure TMainForm.actOpenExecute(Sender: TObject);
begin
  if OpenDialog.Execute and CanCloseFile then
    begin
      hash:=THashGui.Create(sgMain);
      if not hash.LoadFromFile(OpenDialog.FileName) then
        ShowMessage('��� �������� ���������� �������� ������.');
    end;
end;

procedure TMainForm.actNewExecute(Sender: TObject);
begin
  if CanCloseFile then
    hash:=THashGui.Create(sgMain);
end;

procedure TMainForm.actCloseExecute(Sender: TObject);
begin
  CanCloseFile
end;

procedure TMainForm.actFindExecute(Sender: TObject);
var
  info:TInfo;
  num:integer;
begin
  if InputKey('�����', num) then
    if hash.Find(IntToStr(num), info) then
      with TKeyForm.Create('���������� �� ��������', info) do
        try
          ShowModal;
        finally
          free;
        end
    else
      ShowMessage('������� �� ������');
end;

procedure TMainForm.actAddExecute(Sender: TObject);
var
  KeyForm:TKeyForm;
  Res:TAddRes;
begin
  KeyForm:=TKeyForm.Create('�������� ��������');
  if KeyForm.ShowModal=mrOk then
    case hash.Add(KeyForm.info) of
      arOK: ShowMessage('������� ��������');
      arFound: ShowMessage('������� ��� ����');
      else ShowMessage('������� �����������');
    end;
  KeyForm.Free;
end;

procedure TMainForm.actClearExecute(Sender: TObject);
begin
  hash.Clear;
end;

procedure TMainForm.actDeleteExecute(Sender: TObject);
var
  num:integer;
begin
  if InputKey('������� ', num) then
    if hash.Delete(IntToStr(num)) then
      ShowMessage('������� ������')
    else
      ShowMessage('������� �� ������');
end;

procedure TMainForm.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.MyIdle(sender:TObject; var Done:boolean);
begin
   Done:=true;
   aSave.Enabled:=(hash<>nil);
   aSaveAs.Enabled:=(hash<>nil);
   aClose.Enabled:=(hash<>nil);
   aAdd.Enabled:=(hash<>nil);
   aSearch.Enabled:=(hash<>nil) and (hash.Count>0);
   aDelete.Enabled:=aSearch.Enabled;
   aClear.Enabled:=aSearch.Enabled;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  OpenDialog.InitialDir:= ExtractFilePath(Application.ExeName);
  SaveDialog.InitialDir:= OpenDialog.InitialDir;
  hash:=THashGui.Create(sgMain);
  Application.OnIdle:= MyIdle;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=CanCloseFile;
end;
end.
