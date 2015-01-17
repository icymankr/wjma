program K04Test;

uses
  Vcl.Forms,
  uK04Main in 'uK04Main.pas' {fmK04Main},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  Login in '..\Lib\Login.pas' {fmLoginDlg},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  ErrorCodes in '..\Lib\ErrorCodes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmK04Main, fmK04Main);
  Application.Run;
end.
