unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ErrorCodes, uSubForm,
  Uni, MemDS, DBAccess, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel;

type
  TLogin = class(TComponent)
  private
    { Private declarations }
    FLogined: Boolean;
    procedure SetLogined(const Value: Boolean);
    class Function  FindSelf:TComponent;
  public
    { Public declarations }
    EmpSN : Integer;
    ProgIDs, UserID, UserName : String;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    Procedure ShowLoginDlg;
    class Function  GetObject:TLogin;
  published
    { Published declarations }
    Property Logined : Boolean read FLogined write SetLogined;
  end;

  TfmLoginDlg = class(TForm)
    Panel1: TPanel;
    qrUserInfo: TUniQuery;
    qrProgIDs: TUniQuery;
    lrgntfldUserInfoEmpSN: TLongWordField;
    lrgntfldUserInfoDivSN: TLongWordField;
    strngfldUserInfoEmpName: TStringField;
    strngfldUserInfoMPhone: TStringField;
    strngfldUserInfoeMail: TStringField;
    strngfldUserInfoUserID: TStringField;
    strngfldUserInfoUserPass: TStringField;
    btOk: TcxButton;
    btCancel: TcxButton;
    edUserID: TcxTextEdit;
    edPassword: TcxTextEdit;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    procedure btOkClick(Sender: TObject);
    procedure thCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

Uses
  Disk, dmlDatabase;

{$R *.dfm}

procedure TfmLoginDlg.FormCreate(Sender: TObject);
begin
//  ZeosBridge.Active:= true;
  edUserID.Text:= Disk.IniString(GetExecPath+'Options.ini', 'User Info', 'UserID',  '');
end;

procedure TfmLoginDlg.btOkClick(Sender: TObject);
begin
  If edUserID.Text = '' then Begin
    edUserID.SetFocus;
    Exit;
  End;

  If edPassword.Text = '' then Begin
    edPassword.SetFocus;
    Exit;
  End;

  { TODO : 로그인 처리 및 사용가능 프로세스 목록구하기는 Stored Procedure로 변경 }

  // 사용자 아이디와 암호를 검사
  qrUserInfo.Close;
  qrUserInfo.ParamByName('UserID').AsString:=   edUserID.Text;
  qrUserInfo.ParamByName('UserPass').AsString:= edPassword.Text;
  qrUserInfo.Open;

  // 사용자 아이디와 암호가 맞는 가?
  If qrUserInfo.RecordCount = 0 then Begin
    MessageDlg('SE0001 : '+SE0001, mtError, [mbOk], 0);
    Exit;
  End;

  // 사용자가 사용가능한 프로세스들 검사
  qrProgIDs.Close;
  qrProgIDs.ParamByName('EmpSN').AsInteger:= qrUserInfo.FieldByName('EmpSN').AsInteger;
  qrProgIDs.Open;

  TLogin.GetObject.EmpSN:=    qrUserInfo.FieldByName('EmpSN').AsInteger;
  TLogin.GetObject.UserID:=   qrUserInfo.FieldByName('UserID').AsString;
  TLogin.GetObject.UserName:= qrUserInfo.FieldByName('EmpName').AsString;

  // 사용자가 사용가능한 프로세스 목록을 로그인정보(TLogin)클래스에 저장
  TLogin.GetObject.ProgIDs:=  '';
  While qrProgIDs.Eof = False do Begin
    TLogin.GetObject.ProgIDs:=
      TLogin.GetObject.ProgIDs + qrProgIDs.FieldByName('ProgID').AsString + '; ';
    qrProgIDs.Next;
  End;

  TLogin.GetObject.Logined:= True;

  Close;
end;

procedure TfmLoginDlg.thCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfmLoginDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  { TODO : 아이디 저장 기능 추가, 저장 옵션이 선택되면 Option.ini에 저장 }
//  ZeosBridge.Active:= False;
  Action:= caFree;
end;

procedure TfmLoginDlg.FormActivate(Sender: TObject);
begin
  If edUserID.Text <> '' then edPassword.SetFocus;
end;

{ TLogin }

constructor TLogin.Create(AOwner: TComponent);
begin
	inherited Create(AOwner);
  Name := 'TLogin';
  EmpSN := 1;
end;

destructor TLogin.Destroy;
begin
  inherited Destroy;
end;

class function TLogin.FindSelf: TComponent;
var
  Loop : Integer;
begin
  Result:= Nil;
  For Loop:= 0 to Application.ComponentCount-1 do Begin
    If Application.Components[Loop].Name = 'TLogin' then Begin
      Result:= Application.Components[Loop];
      Break;
    End;
  End;
end;

class function TLogin.GetObject: TLogin;
begin
  If FindSelf = Nil then
  	TLogin.Create(Application);
  Result:= TLogin(FindSelf);
end;

procedure TLogin.SetLogined(const Value: Boolean);
begin
  FLogined := Value;

  // 메뉴관리자에게 사용가능한 메뉴아이템을 활성화 시키도록 한다.
  If Value = True then TfmASubForm(Application.MainForm).FindCommand('Login').Execute
  Else TfmASubForm(Application.MainForm).FindCommand('Logout').Execute;
end;

procedure TLogin.ShowLoginDlg;
var
  fmLoginDlg : TfmLoginDlg;
begin
  fmLoginDlg:= TfmLoginDlg.Create(Nil);
  Try
    fmLoginDlg.ShowModal;
  Finally
    fmLoginDlg.Free;
  End;
end;

end.
