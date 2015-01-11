unit uSetupIni;

interface
uses
   IniFiles, SysUtils, Forms, Classes;
const
   DEF_INI_FILENAME  = 'Kimsmart.ini';

   DEF_FTP           = 'SERVER';
   DEF_SETTING       = 'SETTING';
   DEF_APPLICATION   = 'APPLICATION';

type
   TSetupIni = class
   private
      FPort: Integer;
      FDirectory  : string;
      FPassword   : string;
      FUserName   : string;
      FIP         : string;
      FUpdateYn   : string;
      FExecFile   : string;

      procedure SetPort(const Value: Integer);
      procedure SetIP(const Value: string);
      procedure SetUserName(const Value: string);
      procedure SetPassword(const Value: string);
      procedure SetDirectory(const Value: string);

      function GetDirectory: string;
      function GetIP: string;
      function GetUserName: string;
      function GetPassword: string;
      function GetPort: Integer;

      function GetUpdateYn: string;
      procedure SetUpdateYn(const Value: string);
      function GetExecFile: string;
      procedure SetExecFile(const Value: string);
   public
      SetIni : TIniFile;
      constructor Create;
      destructor Destroy; override;
      property IP          : string    read GetIP write SetIP;
      property Port        : Integer   read GetPort write SetPort;
      property UserName    : string    read GetUserName write SetUserName;
      property Password    : string    read GetPassword write SetPassword;
      property Path        : string    read GetDirectory write SetDirectory;
      property UpdateYn    : string    read GetUpdateYn write SetUpdateYn;
      property ExecFile    : string    read GetExecFile write SetExecFile;
   end;


implementation
uses
  DIMime;

{ TSetupIni }

// ����
constructor TSetupIni.Create;
var
   CurrentDir : string;
begin
   inherited Create;
   CurrentDir := ExtractFileDir(Application.ExeName) + '\';
   SetIni := TIniFile.Create(CurrentDir  + DEF_INI_FILENAME); // ���ϻ���
end;

// �Ҹ�
destructor TSetupIni.Destroy;
begin
  inherited Destroy;
end;

// ��Ʈ
procedure TSetupIni.SetPort(const Value: Integer);
var
  sFPort : string;
begin
   FPort := Value;
   sFPort := MimeEncodeString(IntToStr(FPort));
   SetIni.WriteString(DEF_FTP, 'PORT', sFPort);
end;

// ���丮
procedure TSetupIni.SetDirectory(const Value: string);
begin
   FDirectory := Value;
   SetIni.WriteString(DEF_FTP, 'PATH', MimeEncodeString(FDirectory));
end;

// ������
procedure TSetupIni.SetIP(const Value: string);
begin
   FIP := Value;
   SetIni.WriteString(DEF_FTP, 'HOST', MimeEncodeString(FIp));
end;

// ���̵�
procedure TSetupIni.SetUserName(const Value: string);
begin
   FUserName := Value;
   SetIni.WriteString(DEF_FTP, 'NAME', MimeEncodeString(FUserName));
end;

// �н�����
procedure TSetupIni.SetPassword(const Value: string);
begin
   FPassword := Value;
   SetIni.WriteString(DEF_FTP, 'PASSWORD', FPassword);
end;

// ������Ʈ ����
procedure TSetupIni.SetUpdateYn(const Value: string);
begin
   FUpdateYn := value;
   SetIni.WriteString(DEF_FTP, 'UPDATEYN', FUpdateYn);
end;

// ��������
procedure TSetupIni.SetExecFile(const Value: string);
begin
   FExecFile := value;
   SetIni.WriteString(DEF_FTP, 'EXE', MimeEncodeString(FExecFile));
end;

//-----------------------------------------------------------------------------
//Get


function TSetupIni.GetDirectory: string;
begin
   FDirectory := MimeDecodeString(SetIni.ReadString(DEF_FTP, 'PATH', '' ));
   result := FDirectory;
end;

function TSetupIni.GetIP: string;
begin
   FIP := MimeDecodeString(SetIni.ReadString(DEF_FTP, 'HOST', '' ));
   result := FIp;
end;

function TSetupIni.GetUserName: string;
begin
   FUserName := MimeDecodeString(SetIni.ReadString(DEF_FTP, 'NAME', '' ));
   result := FUserName;
end;

function TSetupIni.GetPassword: string;
begin
   FPassword := MimeDecodeString(SetIni.ReadString(DEF_FTP, 'PASSWORD', '' ));
   result := FPassword;
end;

function TSetupIni.GetPort: Integer;
begin
   FPort := StrToInt(MimeDecodeString(SetIni.ReadString(DEF_FTP, 'PORT', '')));
   result := FPort;
end;

function TSetupIni.GetUpdateYn: string;
begin
   FUpdateYn := MimeDecodeString(SetIni.ReadString(DEF_FTP, 'UPDATEYN', '' ));
   result := FUpdateYn;
end;

function TSetupIni.GetExecFile: string;
begin
   FExecFile := MimeDecodeString(SetIni.ReadString(DEF_FTP, 'EXE', ''));
   result := FExecFile;
end;



end.
