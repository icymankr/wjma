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
    ShowMessage('�̹� ���α׷��� �������Դϴ�.');
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
    ShowMessage('�Ķ���Ͱ� ��ġ���� �ʾ� �����Ͻ� �� �����ϴ�.');
  end;

  ReleaseMutex(HMutex);

end.
