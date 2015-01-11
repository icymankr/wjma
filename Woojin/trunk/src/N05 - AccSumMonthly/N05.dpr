library N05;

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
  uN05Main in 'uN05Main.pas' {fmN05Main},
  uSubForm in '..\Lib\Command\uSubForm.pas' {fmASubForm},
  ErrorCodes in '..\Lib\ErrorCodes.pas';

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

  fmN05Main := TfmN05Main.Create(AOwner);
  fmN05Main.ModuleID:= ModuleID;
  fmN05Main.BorderStyle:= bsNone;
  fmN05Main.Align:= alClient;
  fmN05Main.Parent:= Parent;
  If Visible = True then fmN05Main.Show;
End;

Procedure CloseSubModule(); export;
begin
end;

Exports
  OpenSubModule, CloseSubModule;

begin
end.
