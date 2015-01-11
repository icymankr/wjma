program K01Test;

uses
  FastMM4,
  Vcl.Forms,
  SysUtils,
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  uK01Main in 'uK01Main.pas' {fmK01Main},
  uK01PrtData in 'uK01PrtData.pas' {fmK01PrtData},
  uNewDO in 'uNewDO.pas' {fmNewDO},
  uItemSpec in 'uItemSpec.pas' {fmItemSpec};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmK01Main, fmK01Main);
  Application.CreateForm(TfmItemSpec, fmItemSpec);
  Application.Run;

end.
