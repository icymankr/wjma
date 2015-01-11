program WoojinDB;

uses
  FastMM4,
  Vcl.Forms,
  Windows,
  Dialogs,
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  ErrorCodes in '..\Lib\ErrorCodes.pas',
  Login in '..\Lib\Login.pas' {fmLoginDlg},
  uModuleSheet in 'uModuleSheet.pas',
  uMain in 'uMain.pas' {fmMain},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule};

{$R *.res}

var
HMutex:LongInt;

begin
  HMutex := CreateMutex(NIL,TRUE,'WoojinDB');
  if(GetLastError = ERROR_ALREADY_EXISTS)then begin
    ShowMessage('이미 프로그램이 실행중입니다.');
    Exit;
  end;

  if(system.paramstr(1) = '/cmd=icyman') then
  begin
    Application.Initialize;
    Application.Title := 'Woojin';
    Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmDatabase, dmDatabase);
  fmMain.SkinSelectorVisible := True;
    fmMain.Caption := sAPP_NAME;
    Application.MainFormOnTaskbar := True;
    Application.Run;
  end
  else
  begin
    ShowMessage('파라미터가 일치하지 않아 실행하실 수 없습니다.');
  end;

  ReleaseMutex(HMutex);

end.
