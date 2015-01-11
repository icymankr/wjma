program SmartUpdateConfig;

uses
  Forms,
  ufmSUC0000 in 'ufmSUC0000.pas' {fmSU0000},
  uSetupIni in '..\Lib\uSetupIni.pas',
  DIMime in '..\Lib\DIMime.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmSU0000, fmSU0000);
  Application.Run;
end.
