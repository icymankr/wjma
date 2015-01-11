program N02Test;

uses
  FastMM4,
  Vcl.Forms,
  SysUtils,
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  uMain in 'uMain.pas' {fmN02Main},
  uPrtData in 'uPrtData.pas' {dmlHisPrt};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmN02Main, fmN02Main);
  Application.Run;
end.
