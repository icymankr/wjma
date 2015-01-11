program N01Test;

uses
  FastMM4,
  Vcl.Forms,
  SysUtils,
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  uMain in 'uMain.pas' {fmN01Main},
  uSubIntPrtData in 'uSubIntPrtData.pas' {fSubIntHisPrt};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmN01Main, fmN01Main);
  Application.Run;

end.
