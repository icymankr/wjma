unit uK03Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  MySqlUniProvider, uSubForm, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxCalendar, cxLabel, cxDropDownEdit, Vcl.ImgList, dxBar, dxBarExtItems,
  cxBarEditItem, cxClasses, dxDockControl, dxPSCore, dxPScxCommon, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBAccess, Uni, MemDS, UniDacBridge,
  cxGridDBBandedTableView, cxCurrencyEdit, cxProgressBar,
  CommandArray, cxGridBandedTableView, Vcl.Menus, cxContainer, Vcl.StdCtrls,
  cxRadioGroup, cxTextEdit, cxButtons, Vcl.ExtCtrls;

type
  TfmK02Main = class(TfmASubForm)
    cpPrtPrt: TdxComponentPrinter;
    grlPrtPrtLink1: TdxGridReportLink;
    dmDockManager: TdxDockingManager;
    bmBarManager: TdxBarManager;
    brBarManagerBar: TdxBar;
    becxbrdtm4: TcxBarEditItem;
    bdcFirstDate: TdxBarDateCombo;
    bdcLastDate: TdxBarDateCombo;
    bcDateCtrl: TdxBarCombo;
    bbExpand: TdxBarButton;
    bbCollapse: TdxBarButton;
    ilDockIcons: TImageList;
    UniDacBridge: TUniDacBridge;
    qItem: TUniQuery;
    dsItem: TUniDataSource;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    siPrint: TdxBarSubItem;
    bbPrint: TdxBarButton;
    bbPrintDesign: TdxBarButton;
    bbGridPrint: TdxBarButton;
    bbExcelOut: TdxBarButton;
    fItemID: TLongWordField;
    fItemBrand: TStringField;
    fItemKName: TStringField;
    fItemEName: TStringField;
    fItemSpec: TStringField;
    fItemL1: TFloatField;
    fItemL2: TFloatField;
    fItemL3: TFloatField;
    fItemL4: TFloatField;
    glItem: TcxGridLevel;
    gItem: TcxGrid;
    tvItem: TcxGridDBBandedTableView;
    cItemID: TcxGridDBBandedColumn;
    cItemBrand: TcxGridDBBandedColumn;
    cItemKName: TcxGridDBBandedColumn;
    cItemEName: TcxGridDBBandedColumn;
    cItemSpec: TcxGridDBBandedColumn;
    cItemL1: TcxGridDBBandedColumn;
    cItemL2: TcxGridDBBandedColumn;
    cItemL3: TcxGridDBBandedColumn;
    cItemL4: TcxGridDBBandedColumn;
    pnl1: TPanel;
    teFilter: TcxTextEdit;
    cxlblFilter: TcxLabel;
    rbEnglish: TcxRadioButton;
    rbKorean: TcxRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbPrintClick(Sender: TObject);
    procedure bbPrintDesignClick(Sender: TObject);
    procedure rbKoreanClick(Sender: TObject);
    procedure rbEnglishClick(Sender: TObject);
    procedure teFilterPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FilterCol : TcxGridDBBandedColumn;
  public
    { Public declarations }
  end;

var
  fmK02Main: TfmK02Main;

implementation

{$R *.dfm}

uses
  dmlDatabase, uK03PrtData;

procedure TfmK02Main.bbPrintClick(Sender: TObject);
var
  fmPrtData : TfmPrtData;
begin
  fmPrtData := TfmPrtData.Create(Nil);
  try
    fmPrtData.SheetPrint;
  finally
    fmPrtData.Close;
  end;
  fmPrtData.Free;
end;

procedure TfmK02Main.bbPrintDesignClick(Sender: TObject);
var
  fmPrtData : TfmPrtData;
begin
  fmPrtData := TfmPrtData.Create(Nil);
  try
    fmPrtData.SheetDesign;
  finally
    fmPrtData.Close;
  end;
  fmPrtData.Free;
end;

procedure TfmK02Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  Action := caFree;
end;

procedure TfmK02Main.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
  rbKorean.Checked := True;
  FilterCol := cItemKName;
end;

procedure TfmK02Main.rbEnglishClick(Sender: TObject);
begin
  inherited;
  teFilter.Text := '';
  tvItem.DataController.Filter.Root.Clear;
  FilterCol := cItemEName;
end;

procedure TfmK02Main.rbKoreanClick(Sender: TObject);
begin
  inherited;
  teFilter.Text := '';
  tvItem.DataController.Filter.Root.Clear;
  FilterCol := cItemKName;
end;

procedure TfmK02Main.teFilterPropertiesChange(Sender: TObject);
begin
  inherited;
  with tvItem.DataController.Filter.Root do
  begin
    Clear;
    AddItem(FilterCol, foLike, '%' + teFilter.Text + '%', teFilter.Text);
  end;
  tvItem.DataController.Filter.Active := true;
end;

initialization

System.SysUtils.FormatSettings.CurrencyString := 'RM';
System.SysUtils.FormatSettings.CurrencyDecimals := 2;

end.
