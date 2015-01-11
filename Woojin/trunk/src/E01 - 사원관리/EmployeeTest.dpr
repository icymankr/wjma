program EmployeeTest;

uses
  FastMM4,
  Forms,
  uMain in 'uMain.pas' {fmEmployeeMain},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmEmployeeMain, fmEmployeeMain);
  Application.Run;
end.
