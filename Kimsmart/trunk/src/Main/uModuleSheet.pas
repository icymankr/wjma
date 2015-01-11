unit uModuleSheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, uSubForm, RunDLL;

type
  { TMoDll }
  TMoDll = class(TObject)
  private
    { Private declarations }
    hDLL: HModule;
    Function LoadDll(DllName: String): Integer;
  public
    { Public declarations }
    Constructor Create;
    Destructor Destroy; override;

    Procedure Run(ModuleID, DllName: String; Parent: TWinControl;
      Visible: Boolean);
  End;

  { MoSheet }
  TMoSheet = class(TcxTabSheet)
  private
    dll: TMoDll;
    sMID: string;

    function FindSubForm(ModuleID: String): TfmASubForm;
  protected

  public
    fmSub: TfmASubForm;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function OpenModuleSheet(MID: string): Boolean;
  published

  end;

implementation

uses
  Disk;

Constructor TMoDll.Create;
Begin
  hDLL := 0;
  Inherited Create;
End;

Destructor TMoDll.Destroy;
var
  DllDesFunc: Procedure(); far;
Begin
  if (hDLL <> 0) then
  begin
    @DllDesFunc := GetProcAddress(hDLL, PChar('CloseSubModule'));
    If @DllDesFunc <> Nil then
      DllDesFunc();
    FreeLibrary(hDLL);
  end;
  Inherited Destroy;
End;

Function TMoDll.LoadDll(DllName: String): Integer;
Begin
  hDLL := LoadLibrary(PChar(DllName));
  Result := hDLL;
End;

Procedure TMoDll.Run(ModuleID, DllName: String; Parent: TWinControl;
  Visible: Boolean);
Var
  DllFunc: Procedure(ModuleID: String; App: TApplication; Parent: TWinControl;
    Visible: Boolean); far;
Begin
  Try
    hDLL := LoadDll(DllName);
    If hDLL > 32 then
    Begin
      @DllFunc := GetProcAddress(hDLL, PChar('OpenSubModule'));
      If @DllFunc <> Nil then
        DllFunc(ModuleID, Application, Parent, Visible);
    End;
  Except
  End;
End;

constructor TMoSheet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dll := TMoDll.Create;
end;

destructor TMoSheet.Destroy;
begin
  fmSub.Close;
  fmSub.Free;
  dll.Free;
  inherited Destroy;
end;

function TMoSheet.OpenModuleSheet(MID: string): Boolean;
var
  pcPage: TcxPageControl;
begin
  Result := True;
  if (not(sMID <> '')) then
  begin
    dll.Run(MID, Disk.GetExecPath + MID + '.dll', Self, True);
    sMID := MID;
  end;
  fmSub := FindSubForm(sMID);
  Caption := fmSub.Caption;
  Hint := fmSub.ModuleID;
  pcPage := PageControl;
  pcPage.ActivePage := Self;
end;

function TMoSheet.FindSubForm(ModuleID: String): TfmASubForm;
var
  Loop: Integer;
begin
  // ErrorCode:= -2;
  Result := Nil;

  For Loop := 0 to Application.ComponentCount - 1 do
  Begin
    If Application.Components[Loop] is TForm then
    Begin
      If LowerCase(TfmASubForm(Application.Components[Loop]).ModuleID)
        = LowerCase(ModuleID) then
        Try
          // ErrorCode:= 0;
          Result := TfmASubForm(Application.Components[Loop]);
          Break;
        Except
        End;
    End;
  End;
end;

end.
