program K04Test;

uses
  FastMM4,
  Vcl.Forms,
  SysUtils,
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  uK04Main in 'uK04Main.pas' {fmK01Main},
  uK01PrtData in '..\K01 - DailyOrder\uK01PrtData.pas' {fmK01PrtData},
  uNewDO in '..\K01 - DailyOrder\uNewDO.pas' {fmNewDO},
  uItemSpec in '..\K01 - DailyOrder\uItemSpec.pas' {fmItemSpec};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmK01Main, fmK01Main);
  Application.CreateForm(TfmItemSpec, fmItemSpec);
  Application.Run;

end.
