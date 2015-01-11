unit uSubForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, CommandArray, Vcl.StdCtrls, RunDLL;

type
  TfmASubForm = class(TForm)
    CommandArray: TCommandArray;
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    ModuleID : String;
    ErrorCode : Integer;

    Function  MainModule:TfmASubForm;
    Function  MainCommand(CommandName:String):TCommand;

    Function  FindSubForm(ModuleID:String):TfmASubForm;
	 Function  FindCommand(CommandName:String):TCommand;

	 Function  GetCommand(ModuleID,CommandName:String):TCommand;
	 procedure CloseModules(MainForm: TForm);

	 Procedure RunModule(ModuleID,DllName:String; Parent:TwinControl; Visible:Boolean);
  end;

var
  fmASubForm: TfmASubForm;

implementation

var
  FNilCommand : TCommand;

{$R *.dfm}

{ TfmASubForm }

procedure TfmASubForm.RunModule(ModuleID,DllName:String; Parent:TwinControl; Visible:Boolean);
begin
  TRunDLL.Run(ModuleID, DllName, Parent, Visible);
end;

function TfmASubForm.FindCommand(CommandName: String): TCommand;
begin
  Result:= CommandArray.FindCommand(CommandName);

  If Result = Nil then Begin
    ErrorCode:= -3;
    // Command를 못찾더라도 Execute를 실행하는데 에러를 내지 않는다.  에러코드만 변경
    Result:= FNilCommand;
  End Else ErrorCode:= 0;
end;

function TfmASubForm.FindSubForm(ModuleID: String): TfmASubForm;
var
  Loop : Integer;
begin
  ErrorCode:= -2;
  Result:= Nil;

  For Loop:= 0 to Application.ComponentCount-1 do Begin
    If Application.Components[Loop] is TForm then Begin
      If LowerCase(TfmASubForm(Application.Components[Loop]).ModuleID) = LowerCase(ModuleID) then
        Try
          ErrorCode:= 0;
          Result:= TfmASubForm(Application.Components[Loop]);
          Break;
        Except
        End;
    End;
  End;
end;

function TfmASubForm.GetCommand(ModuleID, CommandName: String): TCommand;
var
  fmSub : TfmASubForm;
begin
  fmSub:= FindSubForm(ModuleID);
  If fmSub = Nil then Begin
    Result:= FNilCommand;
    Exit;
  End;

  Result:= fmSub.FindCommand(CommandName);
end;

function TfmASubForm.MainModule: TfmASubForm;
begin
  ErrorCode:= 0;

  If Application.MainForm is TfmASubForm then Result:= TfmASubForm(Application.MainForm)
  Else Begin
    ErrorCode:= -1;
    Result:= Nil;
  End;
end;

function TfmASubForm.MainCommand(CommandName: String): TCommand;
begin
  If MainModule = Nil then Result:= FNilCommand
  Else Result:= MainModule.FindCommand(CommandName);
end;

procedure TfmASubForm.CloseModules(MainForm: TForm);
var
	Loop : Integer;
begin
	For Loop:= 0 to Application.ComponentCount-1 do Begin
		If not (Application.Components[Loop] is TForm) then Continue;
		If Application.Components[Loop] = MainForm then Continue;
		TForm(Application.Components[Loop]).Close;
	End;
end;

initialization
  FNilCommand:= TCommand.Create(Nil);
finalization
  FNilCommand.Free;
end.

