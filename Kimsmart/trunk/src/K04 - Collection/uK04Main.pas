unit uK04Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  MySqlUniProvider, uSubForm, CommandArray, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxLabel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  DBAccess, Uni, MemDS, dxBar, dxBarExtItems, cxBarEditItem, cxClasses,
  UniDacBridge, dxDockControl, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfmK04Main = class(TfmASubForm)
    ilDockIcons: TImageList;
    cpPrtPrt: TdxComponentPrinter;
    dxgrdrprtlnkPrtPrtdxgrdrprtlnkPrtPrtLink1: TdxGridReportLink;
    dmDockManager: TdxDockingManager;
    UniDacBridge: TUniDacBridge;
    bmBarManager: TdxBarManager;
    dxbrBarManagerBar: TdxBar;
    cxbrdtmbecxbrdtm4: TcxBarEditItem;
    dxbrdtcmbFirstDate: TdxBarDateCombo;
    dxbrdtcmbLastDate: TdxBarDateCombo;
    dxbrcmbDateCtrl: TdxBarCombo;
    bbExpand: TdxBarButton;
    bbCollapse: TdxBarButton;
    si1: TdxBarSubItem;
    bb1: TdxBarButton;
    bb2: TdxBarButton;
    siPrint: TdxBarSubItem;
    bbPrint: TdxBarButton;
    bbPrintDesign: TdxBarButton;
    bbGridPrint: TdxBarButton;
    bbExcelOut: TdxBarButton;
    bbNewDO: TdxBarButton;
    qDO: TUniQuery;
    fDOID: TLongWordField;
    fDOCustomerID: TLongWordField;
    fDODeliveryDate: TDateField;
    fDOIssueDateTime: TDateTimeField;
    dsDO: TUniDataSource;
    gvDO: TcxGridDBTableView;
    glDO: TcxGridLevel;
    g1: TcxGrid;
    cDOID: TcxGridDBColumn;
    cDOCustomerID: TcxGridDBColumn;
    cDODeliveryDate: TcxGridDBColumn;
    cDOIssueDateTime: TcxGridDBColumn;
    qItemOrder: TUniQuery;
    dsItemOrder: TUniDataSource;
    fItemOrderID: TLongWordField;
    fItemOrderDeliveryOrderID: TLongWordField;
    fItemOrderItemID: TLongWordField;
    fItemOrderSpec: TStringField;
    fItemOrderQuantity: TFloatField;
    fItemOrderPrice: TFloatField;
    glItemOrder: TcxGridLevel;
    tvItemOrder: TcxGridDBBandedTableView;
    cItemOrderID: TcxGridDBBandedColumn;
    cItemOrderDeliveryOrderID: TcxGridDBBandedColumn;
    cItemOrderItemID: TcxGridDBBandedColumn;
    cItemOrderSpec: TcxGridDBBandedColumn;
    cItemOrderQuantity: TcxGridDBBandedColumn;
    cItemOrderPrice: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmK04Main: TfmK04Main;

implementation

{$R *.dfm}

procedure TfmK04Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  qDO.Close;
  qItemOrder.Close;
  Action := caFree;
end;

procedure TfmK04Main.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
end;

end.
