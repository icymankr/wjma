unit ufmSUC0000;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit, RbDrawCore,
  RbButton, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP, IniFiles, cxCheckBox, FileCtrl, ComCtrls,
  IdExplicitTLSClientServerBase;

type
   TfmSU0000 = class(TForm)
      cxTextEdit_IP: TcxTextEdit;
      cxTextEdit_Port: TcxTextEdit;
      cxTextEdit_Name: TcxTextEdit;
      cxTextEdit_Password: TcxTextEdit;
      cxLabel1: TcxLabel;
      cxLabel2: TcxLabel;
      cxLabel3: TcxLabel;
      cxLabel4: TcxLabel;
      RbButton_OK: TRbButton;
      RbButton_Cancel: TRbButton;
      Panel1: TPanel;
      cxCheckBox_Update: TcxCheckBox;
      cxLabel6: TcxLabel;
      cxTextEdit_ExecFile: TcxTextEdit;
      RbButton_Connection: TRbButton;
      IdFTP: TIdFTP;
    cxlbl1: TcxLabel;
    cxTextEdit_Path: TcxTextEdit;
      procedure FormCreate(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure RbButton_OKClick(Sender: TObject);
      procedure RbButton_ConnectionClick(Sender: TObject);
      procedure RbButton_CancelClick(Sender: TObject);
   private
      // FTP 기본 정보
      FPort: Integer;
      FPassword   : string;
      FName       : string;
      FIP         : string;
      FUpdateYn   : string;
      FExecFile   : string;

      // 프로그램 기본 설정
      FCurrentDir : string;
      FUpdateDir  : string;

      FFtpStringList : TStringList;

      { Private declarations }

   public
      { Public declarations }
   end;

var
  fmSU0000: TfmSU0000;

implementation
uses
   uSetupIni;
var
   SetupIni : TSetupIni;

{$R *.dfm}


procedure TfmSU0000.FormCreate(Sender: TObject);
var
  IniRW : TIniFile;
begin
   SetupIni       := TSetupIni.Create;
   FFtpStringList := TStringList.Create;

   cxTextEdit_IP.Text         := SetupIni.IP;
   cxTextEdit_Port.Text       := IntToStr(SetupIni.Port);
   cxTextEdit_Name.Text       := SetupIni.UserName;
   cxTextEdit_Password.Text   := SetupIni.Password;
   cxTextEdit_ExecFile.Text   := SetupIni.ExecFile;
   cxTextEdit_Path.Text       := SetupIni.Path;

   if SetUpIni.UpdateYn = 'Y' then cxCheckBox_Update.Checked  := true
   else cxCheckBox_Update.Checked  := false;

end;

procedure TfmSU0000.FormDestroy(Sender: TObject);
begin
   SetupIni.Free;
   FFtpStringList.Free;
end;

// 등록
procedure TfmSU0000.RbButton_OKClick(Sender: TObject);
begin
   SetupIni.IP          := cxTextEdit_IP.Text;
   SetupIni.Port        := StrToInt(cxTextEdit_Port.Text);
   SetupIni.UserName    := cxTextEdit_Name.Text;
   SetupIni.Password    := cxTextEdit_Password.Text;
   SetupIni.ExecFile    := cxTextEdit_ExecFile.Text;
   SetupIni.Path        := cxTextEdit_Path.Text;

//   if cxCheckBox_Update.Checked then SetUpIni.UpdateYn := 'Y'
//   else SetUpIni.UpdateYn := 'N';
end;

procedure TfmSU0000.RbButton_ConnectionClick(Sender: TObject);
begin

   idFTP.Host     := cxTextEdit_IP.Text;
   idFTP.Port     := StrtoIntDef(cxTextEdit_Port.Text, 0);
   idFTP.Username := cxTextEdit_Name.Text;
   idFTP.Password := cxTextEdit_Password.Text;

   try
      idFTP.Connect;
   except on E:Exception do
      ShowMessage('연결되지 않았습니다.' +  #13 + '설정을 확인해 주시기 바랍니다.');

   end;
   if idFTP.Connected then begin
      ShowMessage('연결 테스트 성공');
      idFTP.Quit;
   end
end;

procedure TfmSU0000.RbButton_CancelClick(Sender: TObject);
begin
   if idFTP.Connected then idFTP.Quit;
   Close;
end;

end.
