unit uN06Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSubForm, dmlDatabase, MySqlUniProvider, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxLabel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, DBAccess, Uni, MemDS, dxBar, dxBarExtItems,
  cxBarEditItem, cxClasses, UniDacBridge, dxDockControl, dxPSCore, dxPScxCommon,
  Vcl.ImgList, CommandArray, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCurrencyEdit, Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu, frxClass,
  frxPreview;

type
  TfmN05Main = class(TfmASubForm)
    ilDockIcons: TImageList;
    cxprtPrtPrt: TdxComponentPrinter;
    lnkPrtPrtLink1: TdxGridReportLink;
    dxdckngmngrDockManager: TdxDockingManager;
    UniDacBridge: TUniDacBridge;
    dxbrmngrBarManager: TdxBarManager;
    dxbrBarManagerBar: TdxBar;
    cxbrdtmbecxbrdtm4: TcxBarEditItem;
    dxbrdtcmbFirstDate: TdxBarDateCombo;
    dxbrdtcmbLastDate: TdxBarDateCombo;
    dxbrcmbDateCtrl: TdxBarCombo;
    bbGridPrint: TdxBarButton;
    bbExpand: TdxBarButton;
    bbCollapse: TdxBarButton;
    bbDocPrt: TdxBarButton;
    bsi1: TdxBarSubItem;
    bbSheetDesign: TdxBarButton;
    beMonthFilter: TdxBarEdit;
    bbExportXLS: TdxBarButton;
    SaveDialog: TSaveDialog;
    bbRefreshDb: TdxBarButton;
    grpmPopup: TcxGridPopupMenu;
    pmRecord: TPopupMenu;
    pbEditPO: TMenuItem;
    vPettyCash: TcxGridDBTableView;
    glPettyCash: TcxGridLevel;
    grPettyCash: TcxGrid;
    qPettyCash: TUniQuery;
    dsPettyCash: TUniDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbExportXLSClick(Sender: TObject);
    procedure bbRefreshDbClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmN05Main: TfmN05Main;

implementation

uses
  DateUtils, cxGridExportLink, ShlObj;

{$R *.dfm}

function GetSpecialFolder(const CSIDL: integer) : string;
var
  RecPath : PWideChar;
begin
  RecPath := StrAlloc(MAX_PATH);
    try
    FillChar(RecPath^, MAX_PATH, 0);
    if SHGetSpecialFolderPath(0, RecPath, CSIDL, false)
      then result := RecPath
      else result := '';
    finally
      StrDispose(RecPath);
    end;
end;

procedure TfmN05Main.bbExportXLSClick(Sender: TObject);
begin
{
  SaveDialog.InitialDir := GetSpecialFolder(CSIDL_DESKTOP);
  if(SaveDialog.Execute) then
  begin
		//const AFileName: string; AGrid: TcxGrid; AExpand: Boolean = True; ASaveAll: Boolean = True; AUseNativeFormat: Boolean = True; const AFileExt: string = ‘xls
    ExportGridToExcel(SaveDialog.FileName, grPOInvoice);
  end;
}
end;

procedure TfmN05Main.bbRefreshDbClick(Sender: TObject);
begin
  UniDacBridge.Active := False;
  UniDacBridge.Active := True;
end;

procedure TfmN05Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfmN05Main.FormCreate(Sender: TObject);
begin
  inherited;
  UniDacBridge.Active := True;
  frxReport.LoadFromFile('N03.fr3');
  frxReport.PrepareReport();
end;

end.
