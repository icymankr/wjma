library N04;

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
  System.SysUtils,
  System.Classes,
  Vcl.Controls,
  Vcl.Forms,
  CommandUtils,
  Login in '..\Lib\Login.pas' {fmLoginDlg},
  dmlDatabase in '..\Lib\dmlDatabase.pas' {dmDatabase: TDataModule},
  uN04Main in 'uN04Main.pas' {fmN04Main},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  ErrorCodes in '..\Lib\ErrorCodes.pas',
  fPOEdit in 'fPOEdit.pas' {fmPOEdit};

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

  fmN04Main := TfmN04Main.Create(AOwner);
  fmN04Main.ModuleID:= ModuleID;
  fmN04Main.BorderStyle:= bsNone;
  fmN04Main.Align:= alClient;
  fmN04Main.Parent:= Parent;
  If Visible = True then fmN04Main.Show;
End;

Procedure CloseSubModule(); export;
begin
end;

Exports
  OpenSubModule, CloseSubModule;

begin
end.
