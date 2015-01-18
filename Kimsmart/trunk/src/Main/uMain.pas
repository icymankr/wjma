unit uMain;

interface

uses
  Windows, Forms, Messages, SysUtils,
  dxSkinscxPCPainter, dxSkinsDefaultPainters,
  dxSkinsdxDockControlPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, MySqlUniProvider,
  uSubForm, CommandArray, cxDropDownEdit, ImgList, Controls,
  cxGraphics, cxLookAndFeels, dxSkinsForm, dxLayoutLookAndFeels, UniDacBridge,
  DB, MemDS, DBAccess, Uni, ExtCtrls, dxBar, cxBarEditItem, cxClasses, dxRibbon,
  cxControls, cxPC, Classes,
  dxSkinsCore, dxStatusBar, dxRibbonStatusBar, frxClass, frxDMPExport,
  cxLookAndFeelPainters, dxRibbonSkins, cxPCdxBarPopupMenu;

const
  sAPP_NAME: String = 'Kims Utong App.';
  DEFAULT_SKIN = 'McSkin';//'Summer2008';
  CM_OPENLOGINDLG = WM_USER + 1000;
type
  TfmMain = class(TfmASubForm, IcxLookAndFeelNotificationListener)
    dxBarManager: TdxBarManager;
    brManager1Bar: TdxBar;
    brLogin: TdxBarButton;
    brAbout: TdxBarButton;
    brLogout: TdxBarButton;
    brCut: TdxBarButton;
    brCopy: TdxBarButton;
    brPaste: TdxBarButton;
    brBold: TdxBarButton;
    brFont: TdxBarButton;
    br1: TdxBarButton;
    brClose: TdxBarButton;
    tmrNoTimeOut: TTimer;
    rqrNoTimeOut: TUniQuery;
    brL04: TdxBarButton;
    brL05: TdxBarButton;
    cxbrdtm1: TcxBarEditItem;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel: TdxLayoutStandardLookAndFeel;
    dxLayoutOfficeLookAndFeel: TdxLayoutOfficeLookAndFeel;
    dxLayoutWebLookAndFeel: TdxLayoutWebLookAndFeel;
    dxSkinController: TdxSkinController;
    cxmglstGroupIcons: TcxImageList;
    dxrbntb1: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    dxrbntbRibbon1Tab4: TdxRibbonTab;
    brFile: TdxBar;
    brEtc: TdxBar;
    tbSkins: TdxBar;
    beSkinCombo: TcxBarEditItem;
    dxrbnstsbr1: TdxRibbonStatusBar;
    pcPage: TcxPageControl;
    dxBarButton1: TdxBarButton;
    dxbrbtn1: TdxBarButton;
    brL06: TdxBarButton;
    brL03: TdxBarButton;
    brL09: TdxBarButton;
    brL08: TdxBarButton;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    rtInOutgo: TdxRibbonTab;
    brInOutgo: TdxBar;
    brInOutgoCode: TdxBar;
    bbInOutgoGrid: TdxBarButton;
    bbClientInterim: TdxBarButton;
    brDoc: TdxBar;
    bbCustomerCenter: TdxBarButton;
    UniDacBridge: TUniDacBridge;
    bbClientTotal: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    bbGenSupPayment: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxRibbonTab1: TdxRibbonTab;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxrbntb2: TdxRibbonTab;
    bbItem: TdxBarButton;
    tbAccount: TdxBar;
    bbCollection: TdxBarButton;
    procedure brLoginClick(Sender: TObject);
    procedure brCloseClick(Sender: TObject);
    procedure brLogoutClick(Sender: TObject);
    procedure CommandArrayCommandscmdLoginExecute(Command: TCommand;
      Params: TStringList);
    procedure CommandArrayCommandscmdLogoutExecute(Command: TCommand;
      Params: TStringList);
    procedure CommandArrayCommandscmdShowErrorExecute(Command: TCommand;
      Params: TStringList);
    procedure brMenuItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcPageChange(Sender: TObject);
    procedure tmrNoTimeOutTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure beSkinComboChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FLogined: Boolean;
    FResNames: TStringList;
    FSkinNames: TStringList;
    FLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel;
    procedure SetLogined(const Value: Boolean);
    procedure CloseAllSheet;
    procedure SetSkinSelectorVisible(AValue: Boolean);
    procedure InitializeSkinList;
    procedure SelectSkinName(const ASkinName: string);
    procedure SynchronizeLookAndFeel;
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel;
      AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
    function GetObject: TObject;
    function GetSkinSelectorVisible: Boolean;
    function GetLookAndFeel: TcxLookAndFeel;
    procedure CMOpenLoginDlg(var Msg: TMessage); message CM_OPENLOGINDLG;
  protected
    property ResNames: TStringList read FResNames;
    property SkinNames: TStringList read FSkinNames;
    procedure WndProc(var Message: TMessage); override;
    procedure SetupLookAndFeel(AKind: TcxLookAndFeelKind; ANative: Boolean);
    property LookAndFeel: TcxLookAndFeel read GetLookAndFeel;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    constructor CreateEx(AOwner: TComponent;
      ALookAndFeel: TcxLookAndFeel); virtual;
    destructor Destroy; override;
    Procedure SetPrivileges(ProgIDs: String);
    property SkinSelectorVisible: Boolean read GetSkinSelectorVisible
      write SetSkinSelectorVisible;
  published
    { Published declarations }
    Property Logined: Boolean read FLogined write SetLogined;
  end;

var
  fmMain: TfmMain;
  WM_SETUPLOOKANDFEEL: Cardinal = WM_USER + 101;

implementation

uses
  dxSkinsStrs, Login, uModuleSheet;

{$R *.dfm}

constructor TfmMain.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FLayoutSkinLookAndFeel := TdxLayoutSkinLookAndFeel.Create(Self);
  LookAndFeel.AddChangeListener(Self);
  {
    lcMain.LookAndFeel := FLayoutSkinLookAndFeel;
    InitializePivotGridData;
    Grid.DoubleBuffered := True;
    PreviewPivotGrid.DoubleBuffered := True;
  }
  FResNames := TStringList.Create;
  FSkinNames := TStringList.Create;
  dxRibbon.ShowTabGroups := False;
end;

constructor TfmMain.CreateEx(AOwner: TComponent; ALookAndFeel: TcxLookAndFeel);
begin
  Create(AOwner);
  // InitializePreview(ALookAndFeel);
  // UpdateController;
end;

destructor TfmMain.Destroy;
begin
  // LookAndFeel.RemoveChangeListener(Self);
  // FreeAndNil(FLayoutSkinLookAndFeel);
  FreeAndNil(FSkinNames);
  FreeAndNil(FResNames);
  inherited Destroy;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := true;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  PostMessage(Handle, CM_OPENLOGINDLG, Longint(0), 0);
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseAllSheet;
  UniDacBridge.Active := False;
  Action := caFree;
end;

procedure TfmMain.WndProc(var Message: TMessage);
const
  KindMap: array [0 .. 4] of TcxLookAndFeelKind = (lfStandard, lfFlat,
    lfUltraFlat, lfOffice11, lfStandard);
begin
  inherited WndProc(Message);
  if Message.Msg = WM_SETUPLOOKANDFEEL then
  begin
    if Message.WParam <= 4 then
      SetupLookAndFeel(KindMap[Message.WParam], Message.WParam = 4)
    else
      SelectSkinName(beSkinCombo.CurEditValue);
  end;
end;

function TfmMain.GetObject: TObject;
begin
  Result := LookAndFeel;
end;

procedure TfmMain.MasterLookAndFeelChanged(Sender: TcxLookAndFeel;
  AChangedValues: TcxLookAndFeelValues);
begin
  if lfvSkinName in AChangedValues then
  begin
    dxRibbon.ColorSchemeName := Sender.SkinName;
    dxRibbon.InvalidateWithChildren;
  end;
end;

procedure TfmMain.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
//
end;

procedure TfmMain.CMOpenLoginDlg(var Msg: TMessage);
begin
  TLogin.GetObject.ShowLoginDlg;
end;

procedure TfmMain.beSkinComboChange(Sender: TObject);
begin
  if (Sender is TcxComboBox) and (TcxComboBox(Sender).ItemIndex >= 0) then
    PostMessage(Handle, WM_SETUPLOOKANDFEEL, TcxComboBox(Sender).ItemIndex, 0);
end;

procedure TfmMain.brCloseClick(Sender: TObject);
begin
  fmMain.Close;
end;

procedure TfmMain.brLoginClick(Sender: TObject);
begin
  TLogin.GetObject.ShowLoginDlg;
end;

procedure TfmMain.brLogoutClick(Sender: TObject);
begin
  TLogin.GetObject.Logined := False;
  CloseAllSheet;
end;

procedure TfmMain.brMenuItemClick(Sender: TObject);
var
  fmSub: TfmASubForm;
  msSheet: TMoSheet;
  sMID: string;
  I: Integer;
begin
  if (not FileExists(TdxBarButton(Sender).Hint + '.dll')) then
    Exit;
  fmSub := fmMain.FindSubForm(TdxBarButton(Sender).Hint);
  if (fmSub = nil) then
  begin
    msSheet := TMoSheet.Create(pcPage.Owner);
    msSheet.PageControl := pcPage;
    msSheet.OpenModuleSheet(TdxBarButton(Sender).Hint);
    msSheet.ImageIndex := TdxBarButton(Sender).ImageIndex;
    msSheet.Caption := TdxBarButton(Sender).Caption;
    fmSub := msSheet.fmSub;
    fmSub.Caption := msSheet.Caption;
    fmMain.Caption := sAPP_NAME + ' - ' + msSheet.Caption;
  end
  else
  begin
    sMID := fmSub.ModuleID;
    for I := 0 to pcPage.PageCount - 1 do
    begin
      if (sMID = pcPage.Pages[I].Hint) then
      begin
        msSheet := TMoSheet(pcPage.Pages[I]);
        pcPage.ActivePage := msSheet;
        break;
      end;
    end;
  end;
end;

procedure TfmMain.CommandArrayCommandscmdLoginExecute(Command: TCommand;
  Params: TStringList);
begin
  Logined := true;
end;

procedure TfmMain.CommandArrayCommandscmdLogoutExecute(Command: TCommand;
  Params: TStringList);
begin
  CloseAllSheet;
  Logined := False;
end;

procedure TfmMain.CommandArrayCommandscmdShowErrorExecute(Command: TCommand;
  Params: TStringList);
begin
  MessageBeep(0);
  // StatusBar.SimpleText:= ' ' + Params.Values['Message'];
  // tmShowError.Enabled:= True;
end;

procedure TfmMain.CloseAllSheet;
begin
  while (pcPage.PageCount > 0) do
  begin
    pcPage.Pages[0].Free;
  end;
end;

procedure TfmMain.pcPageChange(Sender: TObject);
var
  tsPage: TMoSheet;
begin
  tsPage := TMoSheet(TcxPageControl(Sender).ActivePage);
  if (tsPage = nil) then
  begin
    fmMain.Caption := sAPP_NAME;
  end
  else
  begin
    fmMain.Caption := sAPP_NAME + ' - ' + tsPage.fmSub.Caption;
  end;
end;

procedure TfmMain.SetPrivileges(ProgIDs: String);
var
  Loop: Integer;
  MenuItem: TdxBarButton;
Begin
  For Loop := 0 to Self.ComponentCount - 1 do
  Begin
    If not(Self.Components[Loop] is TdxBarButton) then
      Continue;

    MenuItem := TdxBarButton(Self.Components[Loop]);

    If Pos(MenuItem.Hint, ProgIDs) > 0 then
      MenuItem.Enabled := true
    Else If MenuItem.Tag = 0 then
      MenuItem.Enabled := False;
  End;
end;

procedure TfmMain.tmrNoTimeOutTimer(Sender: TObject);
begin
  rqrNoTimeOut.Close;
  rqrNoTimeOut.Open;
end;

procedure TfmMain.SetLogined(const Value: Boolean);
begin
  FLogined := Value;

  brLogin.Enabled := not Value;
  brLogout.Enabled := Value;

  If Value = true then
    SetPrivileges(TLogin.GetObject.ProgIDs)
  Else
    SetPrivileges('');
end;

procedure TfmMain.SetSkinSelectorVisible(AValue: Boolean);
begin
  // if AValue <> tbSkins.Visible then
  // begin
  tbSkins.Visible := AValue;
  dxSkinController.NativeStyle := not AValue;
  InitializeSkinList;
  // end;
end;

procedure TfmMain.InitializeSkinList;
var
  AIndex: Integer;
begin
  with TcxComboBoxProperties(beSkinCombo.Properties) do
  begin
    Items.Clear;
    Items.Add('Standard');
    Items.Add('Flat');
    Items.Add('Ultra Flat');
    Items.Add('Office 2003');
    Items.Add('Windows Theme');

    dxSkinsUserSkinPopulateSkinNames('Skins.dat', SkinNames);
    AIndex := SkinNames.IndexOf(sdxDefaultUserSkinData);
    if AIndex >= 0 then
      SkinNames.Delete(AIndex);
    Items.AddStrings(SkinNames);

    SelectSkinName(DEFAULT_SKIN);
  end;
end;

procedure TfmMain.SelectSkinName(const ASkinName: string);
var
  AIndex: Integer;
begin
  dxSkinController.UseSkins := ASkinName <> '';
  dxSkinController.NativeStyle := False;
  dxRibbon.ColorSchemeName := dxSkinController.SkinName;
  beSkinCombo.EditValue := ASkinName;
  if dxSkinController.UseSkins then
  begin
    AIndex := SkinNames.IndexOf(ASkinName);
    if AIndex >= 0 then
    begin
      try
        dxSkinsUserSkinLoadFromFile('Skins.dat', SkinNames[AIndex]);
      finally
      end;
    end;
  end;
  SynchronizeLookAndFeel;
end;

procedure TfmMain.SynchronizeLookAndFeel;
begin
  // dxRibbon.ColorSchemeName := SkinName;
end;

function TfmMain.GetSkinSelectorVisible: Boolean;
begin
  Result := tbSkins.Visible;
end;

procedure TfmMain.SetupLookAndFeel(AKind: TcxLookAndFeelKind; ANative: Boolean);
begin
  dxSkinController.UseSkins := False;
  dxSkinController.Kind := AKind;
  dxSkinController.NativeStyle := ANative;
  dxRibbon.ColorSchemeName := 'Blue';
  SynchronizeLookAndFeel;
end;

function TfmMain.GetLookAndFeel: TcxLookAndFeel;
begin
  Result := FLayoutSkinLookAndFeel.LookAndFeel;
end;

initialization

WM_SETUPLOOKANDFEEL := RegisterWindowMessage('WM_SETUPLOOKANDFEEL');

end.
