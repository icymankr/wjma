program Woojin;

uses
  Forms,
  Windows,
  Dialogs,
  ufmSU0000 in 'ufmSU0000.pas' {Form1},
  uSetupIni in '..\Lib\uSetupIni.pas',
  DIMime in '..\Lib\DIMime.pas';

{$R *.res}

begin
  Application.Initialize;
	// �ߺ����� ����
	CreateFileMapping ( $FFFFFFFF, nil, PAGE_READWRITE, 0, 1024, 'VControl' );
	if GetLastError = ERROR_ALREADY_EXISTS then
	begin
		ShowMessage('���� ���α׷��� �������Դϴ�.');
		halt;
	end;

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.ShowMainForm := False;
  Application.Run;
end.
