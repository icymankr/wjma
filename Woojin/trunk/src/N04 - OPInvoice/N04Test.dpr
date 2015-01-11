program N04Test;

uses
  Vcl.Forms,
  uN04Main in 'uN04Main.pas' {fmN04Main},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  Login in '..\Lib\Login.pas' {fmLoginDlg},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  ErrorCodes in '..\Lib\ErrorCodes.pas',
  fPOEdit in 'fPOEdit.pas' {fmPOEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmN04Main, fmN04Main);
  Application.Run;
end.
