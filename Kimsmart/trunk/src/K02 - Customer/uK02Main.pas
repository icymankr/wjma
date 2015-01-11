unit uK02Main;

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
  CommandArray, cxGridBandedTableView;

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
    qCustomer: TUniQuery;
    dsCusotmer: TUniDataSource;
    glGrid1Level1: TcxGridLevel;
    g1: TcxGrid;
    fCustomerID: TLongWordField;
    fCustomerName: TStringField;
    fCustomerContactNumber: TStringField;
    fCustomerPhoneNumber: TStringField;
    fCustomerPriceLevel: TFloatField;
    fCustomerGPSInfo: TStringField;
    tvCustomer: TcxGridDBBandedTableView;
    cCustomerID: TcxGridDBBandedColumn;
    cCustomerName: TcxGridDBBandedColumn;
    cCustomerContactNumber: TcxGridDBBandedColumn;
    cCustomerPhoneNumber: TcxGridDBBandedColumn;
    cCustomerPriceLevel: TcxGridDBBandedColumn;
    cCustomerGPSInfo: TcxGridDBBandedColumn;
    cCustomerAddress: TcxGridDBBandedColumn;
    fCustomerAddr: TStringField;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    siPrint: TdxBarSubItem;
    bbPrint: TdxBarButton;
    bbPrintDesign: TdxBarButton;
    bbGridPrint: TdxBarButton;
    bbExcelOut: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbPrintClick(Sender: TObject);
    procedure bbPrintDesignClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmK02Main: TfmK02Main;

implementation

{$R *.dfm}

uses
  dmlDatabase, uPrtData;

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
end;

initialization

System.SysUtils.FormatSettings.CurrencyString := 'RM';
System.SysUtils.FormatSettings.CurrencyDecimals := 2;

end.
