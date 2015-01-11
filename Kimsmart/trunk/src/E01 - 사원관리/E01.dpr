library E01;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  FastMM4,
  SysUtils,
  Classes,
  Controls,
  Forms,
  CommandUtils,
  uMain in 'uMain.pas' {fmEmployeeMain},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm};

{$R *.res}

Procedure OpenSubModule(ModuleID:String; AOwner:TApplication; Parent:TWinControl; Visible:Boolean); export;
var
  ExForm : TWinControl;
Begin
  ExForm:= CheckSubModule(AOwner, ModuleID);
  If ExForm <> Nil then
  Begin
    If Visible = True then ExForm.BringToFront;
    Exit;
  End;

  Application:= AOwner;

  fmEmployeeMain := TfmEmployeeMain.Create(AOwner);
  fmEmployeeMain.ModuleID:= ModuleID;
  fmEmployeeMain.BorderStyle:= bsNone;
  fmEmployeeMain.Align:= alClient;
  fmEmployeeMain.Parent:= Parent;
  If Visible = True then fmEmployeeMain.Show;
End;

Exports
  OpenSubModule;

begin
end.
