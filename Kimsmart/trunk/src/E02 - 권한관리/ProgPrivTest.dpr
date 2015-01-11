program ProgPrivTest;

uses
  FastMM4,
  Forms,
  uMain in 'uMain.pas' {fmProgPriv},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmProgPriv, fmProgPriv);
  Application.Run;
end.
