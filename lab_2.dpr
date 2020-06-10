program lab_2;

uses
  Forms,
  UForm in 'UForm.pas' {MainForm},
  UHashtable in 'UHashtable.pas',
  UHashGui in 'UHashGui.pas',
  UInfo in 'UInfo.pas',
  UKeyForm in 'UKeyForm.pas';{KeyForm}

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TKeyForm, KeyForm);
  Application.Run;
end.
