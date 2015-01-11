program K03Test;

uses
  FastMM4,
  Vcl.Forms,
  SysUtils,
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  uK03Main in 'uK03Main.pas' {fmK02Main},
  uK03PrtData in 'uK03PrtData.pas' {fmPrtData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmK02Main, fmK02Main);
  Application.CreateForm(TfmPrtData, fmPrtData);
  Application.Run;

end.
