unit ufmSU0000;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP, ComCtrls, IniFiles, StdCtrls, idFTPList, ExtCtrls, IdFTPCommon,
  IdAntiFreezeBase, IdAntiFreeze, cxControls, cxContainer, cxEdit,
  cxProgressBar, IdExplicitTLSClientServerBase, IdFTPListParseUnix, DIMime,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

const
   DEF_LIST_DIR         = 'List';

type
   TForm1 = class(TForm)
      IdFTP: TIdFTP;
      Timer: TTimer;
      IdAntiFreeze1: TIdAntiFreeze;
    Label_Count: TLabel;
    Label1: TLabel;
    Label_AvgSpeed: TLabel;
    Animate: TAnimate;
    CurFile: TLabel;
    ProgressBar1: TcxProgressBar;
    ProgressBar2: TcxProgressBar;
      procedure FormCreate(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
      procedure TimerTimer(Sender: TObject);
      procedure IdFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
      procedure IdFTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
      procedure IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure idftp2WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
   private
      FPort          : Integer;
      FDownLoadList  : TidFTPListItems;
      FPassword      : string;
      FName          : string;
      FIP            : string;
      FUpdateYn      : string;
      FExecFile      : string;
      sPath          : string;
   		CurARecord     : TidFTPListItem;

      // ���� ������ ����
      FAllFileSize   : int64; // ��ü
      FAllFileSizing : int64; // ��ü�� ���� ������
      FFileSize      : int64; // ���Ϻ� ������

      // �ð�, �ӵ� ����
      FStartTime     : TDateTime;

      procedure SetFtp(FTP : TidFTP);
      function ServerConnect:Boolean;
      procedure ExecuteMainProgram;
      function SetUpdateList(DownloadList : TidFTPListItems): Boolean;
      function GetSizeOfFile(const FilenName: string): Longint;
      procedure StartUpdate;
      procedure FTPDownLoad;
      { Private declarations }
   public
      { Public declarations }
   end;

var
  Form1: TForm1;

implementation
uses uSetupIni;
var
   SetupIni : TSetupIni;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  IniRW : TIniFile;
begin
  FDownLoadList := TidFTPListItems.Create;
  IniRW := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
   FPort       := StrToInt(MimeDecodeString(IniRW.ReadString('SERVER', 'PORT', '')));
   //FPassword   := MimeDecodeString(IniRW.ReadString('SERVER', 'PASS', ''));
   FPassword   := 'loveu0';
   FName       := MimeDecodeString(IniRW.ReadString('SERVER', 'NAME', ''));
   FIP         := MimeDecodeString(IniRW.ReadString('SERVER', 'HOST', ''));
   FExecFile   := MimeDecodeString(IniRW.ReadString('SERVER', 'EXE', ''));
  sPath := MimeDecodeString(IniRW.ReadString('SERVER', 'PATH', ''));
  IniRW.Free;

   Timer.Enabled := true;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
   FDownLoadList.Free;
end;



// ��Ȱ�� ���Ḧ ���� Ÿ�̸Ӹ� ȣ���Ѵ�.
procedure TForm1.TimerTimer(Sender: TObject);
begin
   TTimer(Sender).Enabled := False;
   StartUpdate;
   ExecuteMainProgram;
   Close;
end;


procedure TForm1.StartUpdate;
begin
   if ServerConnect then begin      // ���� ����
      FDownLoadList.Clear;
      if SetUpdateList(FDownLoadList) then begin   // ������Ʈ ��� �޾ƿ�.
         Show;                                     // ���� ���۷��� �����ֱ� ����
         FTPDownLoad;
      end;
   end;
end;


// ������Ʈ ����� �����´�.
function TForm1.SetUpdateList(DownloadList : TidFTPListItems) : Boolean;
var
   i           : integer;
   ARecord     : TidFTPListItem;
   sFileName   : string;
{
   iFtpFile    : int64;
   iMyComFile  : int64;
}
   dFtpFile    : double;
   dMyComFile  : double;
   idMyComFile	: integer;
   sl          : TStringList;
   FDownLoadListCount : integer;
begin
   FAllFileSize := 0;

   if not Assigned(DownloadList) then begin
      result := false;
      Exit;
   end;

   idFTP.Passive := True;
   if not idFTP.Connected then begin
      result := false;
      Exit;
   end;

   idFTP.ChangeDir(sPath);
   IdFTP.ListParserClass := TIdFTPLPUnix;
   sl := TStringList.Create;
   sl.Clear;

   idFTP.List(sl);

   FDownLoadListCount := 0;
   for i := 0 to idFTP.DirectoryListing.Count - 1 do begin
      ARecord := idFTP.DirectoryListing.Items[i];
      if not (ARecord.ItemType = ditDirectory) then begin
         sFileName := ARecord.FileName;
         if FileExists(sFileName) then begin
{
            iFtpFile    := StrToInt64(FormatDateTime('YYMMDDhhmmss', ARecord.ModifiedDate));
            iMyComFile  := StrToInt64(FormatDateTime('YYMMDDhhmmss', FileDateToDateTime(FileAge(sFileName))));
            if ( iFtpFile > iMycomFile) or (ARecord.Size <> GetSizeOfFile(sFileName)) then begin
}
            dFtpFile    := int(ARecord.ModifiedDate * 100.0);
            dMyComFile  := FileDateToDateTime(FileAge(sFileName));
            dMyComFile  := int(dMyComFile * 100.0);
            if (dFtpFile > dMycomFile) then
            begin
             DownloadList.Add;
             DownloadList.Items[FDownLoadListCount] := ARecord;
             FDownLoadListCount := FDownLoadListCount + 1;
             FAllFileSize := FAllFileSize + ARecord.Size;       // ��ü �ٿ�ε� �뷮 ���
            end;
         end
         else begin
            DownloadList.Add;
            DownloadList.Items[FDownLoadListCount] := ARecord;
            FDownLoadListCount := FDownLoadListCount + 1;
            FAllFileSize := FAllFileSize + ARecord.Size;          // ��ü �ٿ�ε� �뷮 ���
         end;
      end; //if not (ItemType = ditDirectory)
   end;
   if DownLoadList.Count > 0 then begin
      result := True;
   end
   else result := False;
   sl.Free;
end;


// ���� ������ �˾Ƴ���
function TForm1.GetSizeOfFile(const FilenName:string) : Longint;
var
   FHandle : Integer;
begin
   if FileExists(FilenName) then begin
      FHandle := FileOpen(FilenName, fmOpenRead+fmShareDenyNone);
      Result  := GetFileSize(FHandle, nil); // GetFileSize�� Win32API
      FileClose(FHandle);
   end
   else Result := 0;
end;


procedure TForm1.idftp2WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin

end;

// FTP ������ �Ѵ�.
procedure TForm1.SetFtp(FTP : TidFTP);
begin
   FTP.Host     := FIP;
   FTP.Port     := FPort;
   FTP.Password := FPassword;
   FTP.Username := FName;
end;

// �������α׷��� �����Ѵ�.
procedure TForm1.ExecuteMainProgram;
var
  sCmdLine : AnsiString;
  iPathLen : Integer;

begin
  sCmdLine := FExecFile + ' /cmd=icyman';
  if FileExists(FExecFile) then WinExec(PAnsiChar(sCmdLine), SW_SHOW)
  else  ShowMessage('���� ���α׷��� ã������ �����ϴ�.');
end;

// FTP ������ �����Ѵ�.
function TForm1.ServerConnect :Boolean;
begin
   SetFtp(idFTP);
   try
      idFTP.Connect;
   except on E:Exception do
   end;

   if idFTP.Connected then result := true
   else result := false;
end;


//���ϴٿ�
procedure TForm1.FTPDownLoad;
var
   i, FHandle  : integer;
begin
   if not IdFTP.Connected then exit;
   IdFTP.TransferType := ftBinary;

   Animate.Visible := True;
   Animate.Active := True;
   ProgressBar2.Properties.Max := FAllFileSize;

   for i := 0 to FDownloadList.Count - 1 do begin
      //ARecord := idFTP.DirectoryListing.Items[i];
      CurARecord := FDownloadList[i];
      FFileSize := CurARecord.Size;
      if FileExists(CurARecord.FileName) then begin
         FileSetAttr(CurARecord.FileName, faArchive);
      end;
      idFtp.ClientInfo.PlatformDescription := CurARecord.FileName;
      idFtp.Get(CurARecord.FileName, CurARecord.FileName, True);
      FHandle  := FileOpen(CurARecord.FileName, fmOpenReadWrite);
      FileSetDate(FHandle, DAteTimeToFileDate(CurARecord.ModifiedDate));
      FileClose(FHandle);
   end;
   ProgressBar2.Position := 0;
   Animate.Active    := False;
   Animate.Visible   := False;
end;

procedure TForm1.IdFTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
var
   dAvgSpeed               : Double;
   sAvgSpeed               : String;
   TotalTime               : TDateTime;
   wHour, wMin, wSec, wmSec: Word;
   dSec                    : Double;
begin
   dAvgSpeed   := 0;
   TotalTime   :=  Now - FStartTime;
   DecodeTime(TotalTime, wHour, wMin, wSec, wmSec);
   wSec := wHour * 3600 + wMin * 60 + wSec;
   dSec := wSec + wmSec / 1000;

   if dSec > 0 then dAvgSpeed := (AWorkCount / 1024) / dSec;

   sAvgSpeed := FormatFloat('0.00 KB/s', dAvgSpeed);
   case AWorkMode of
      wmRead: Label_AvgSpeed.Caption := sAvgSpeed;
   end;

   ProgressBar1.Position   := AWorkCount;
   ProgressBar2.Position   := FAllFileSizing + AWorkCount;
   Label_Count.Caption := Format('%.0n Byte',[AWorkCount * 1.0]);
	CurFile.Caption := idFtp.ClientInfo.PlatformDescription;

  Application.ProcessMessages;
end;

procedure TForm1.IdFTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
   ProgressBar1.Position := 0;
   FStartTime  := Now;
  if AWorkCountMax > 0 then
     ProgressBar1.Properties.Max := AWorkCountMax
  else
     ProgressBar1.Properties.Max := FFileSize;
end;

procedure TForm1.IdFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
   FAllFileSizing := FAllFileSizing + FFileSize;
   FStartTime  := 0;
   ProgressBar1.Position := 0;
end;

end.

