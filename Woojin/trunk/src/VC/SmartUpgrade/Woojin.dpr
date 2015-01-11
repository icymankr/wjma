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
	// 중복실행 방지
	CreateFileMapping ( $FFFFFFFF, nil, PAGE_READWRITE, 0, 1024, 'VControl' );
	if GetLastError = ERROR_ALREADY_EXISTS then
	begin
		ShowMessage('현재 프로그램이 실행중입니다.');
		halt;
	end;

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.ShowMainForm := False;
  Application.Run;
end.
