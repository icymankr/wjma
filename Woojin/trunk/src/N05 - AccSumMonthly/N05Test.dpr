program N05Test;

uses
  Vcl.Forms,
  uN05Main in 'uN05Main.pas' {fmN05Main},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  Login in '..\Lib\Login.pas' {fmLoginDlg},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  ErrorCodes in '..\Lib\ErrorCodes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmN05Main, fmN05Main);
  Application.Run;
end.
