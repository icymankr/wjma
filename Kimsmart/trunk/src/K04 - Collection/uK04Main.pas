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
  cxGridBandedTableView, cxGridDBBandedTableView, cxCurrencyEdit, cxTextEdit,
  VirtualTable, Datasnap.DBClient, Provider, MidasLib, cxGridCustomLayoutView,
  cxGridCardView, cxGridDBCardView;

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
    fDOCustomerID: TLongWordField;
    fDODeliveryDate: TDateField;
    dsDO: TUniDataSource;
    vDO: TcxGridDBTableView;
    glDO: TcxGridLevel;
    g1: TcxGrid;
    cDOCustomerID: TcxGridDBColumn;
    cDODeliveryDate: TcxGridDBColumn;
    qItemOrder: TUniQuery;
    dsItemOrder: TUniDataSource;
    fItemOrderID: TLongWordField;
    fItemOrderDeliveryOrderID: TLongWordField;
    fItemOrderItemID: TLongWordField;
    fItemOrderSpec: TStringField;
    fItemOrderQuantity: TFloatField;
    fItemOrderPrice: TFloatField;
    glItemOrder: TcxGridLevel;
    vbItemOrder: TcxGridDBBandedTableView;
    cItemOrderID: TcxGridDBBandedColumn;
    cItemOrderDeliveryOrderID: TcxGridDBBandedColumn;
    cItemOrderItemID: TcxGridDBBandedColumn;
    cItemOrderSpec: TcxGridDBBandedColumn;
    cItemOrderQuantity: TcxGridDBBandedColumn;
    cItemOrderPrice: TcxGridDBBandedColumn;
    qCustomer: TUniQuery;
    fCustomerID: TLongWordField;
    fCustomerName: TStringField;
    fCustomerContactNumber: TStringField;
    fCustomerPhoneNumber: TStringField;
    fCustomerPriceLevel: TFloatField;
    fCustomerGPSInfo: TStringField;
    fCustomerAddr: TStringField;
    dsCusotmer: TUniDataSource;
    fDOCustomerName: TStringField;
    fDOPriceLevel: TIntegerField;
    cDOCustomerName: TcxGridDBColumn;
    cDOPriceLevel: TcxGridDBColumn;
    fItemOrderAmount: TFloatField;
    cItemOrderAmount: TcxGridDBBandedColumn;
    qItem: TUniQuery;
    fItemID: TLongWordField;
    fItemBrand: TStringField;
    fItemKName: TStringField;
    fItemEName: TStringField;
    fItemSpec: TStringField;
    fItemL1: TFloatField;
    fItemL2: TFloatField;
    fItemL3: TFloatField;
    fItemL4: TFloatField;
    dsItem: TUniDataSource;
    fItemOrderKName: TStringField;
    fItemOrderEName: TStringField;
    cItemOrderKName: TcxGridDBBandedColumn;
    cItemOrderEName: TcxGridDBBandedColumn;
    dsAmount: TUniDataSource;
    fDOAmount: TFloatField;
    vtAmount: TVirtualTable;
    fvt1ID: TIntegerField;
    fvt1Amount: TFloatField;
    vDOAmount: TcxGridDBColumn;
    glPayment: TcxGridLevel;
    cvPayment: TcxGridDBCardView;
    qPayment: TUniQuery;
    fPaymentID: TLongWordField;
    fPaymentDOID: TLongWordField;
    fPaymentPayType: TStringField;
    fPaymentPayment: TFloatField;
    dsPayment: TUniDataSource;
    rPaymentID: TcxGridDBCardViewRow;
    rPaymentDOID: TcxGridDBCardViewRow;
    rPaymentPayType: TcxGridDBCardViewRow;
    rPaymentPayment: TcxGridDBCardViewRow;
    fDOID: TLongWordField;
    cDOID: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qItemOrderCalcFields(DataSet: TDataSet);
    procedure tvItemOrderDataControllerDataChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DoReCalculateDetailSummary;
  end;

var
  fmK04Main: TfmK04Main;

implementation

uses
  cxGridDBDataDefinitions, cxDataUtils;

{$R *.dfm}

procedure TfmK04Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  UniDacBridge.Active:= False;
  qDO.Close;
  qItemOrder.Close;
  Action := caFree;
end;

procedure TfmK04Main.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
end;

procedure TfmK04Main.FormShow(Sender: TObject);
begin
  DoReCalculateDetailSummary;
end;

procedure TfmK04Main.qItemOrderCalcFields(DataSet: TDataSet);
begin
  with qItemOrder do
  begin
    FieldByName('Amount').AsFloat := FieldByName('Quantity').AsFloat
        * FieldByName('Price').AsFloat;
  end;
end;

procedure TfmK04Main.tvItemOrderDataControllerDataChanged(Sender: TObject);
var
  cIndex: Integer;
begin
  with TcxGridDBDataController(Sender) do
  begin
    if (GridView = nil) or (GridView.MasterGridRecord = nil) or (GridView.MasterGridView = nil) then
      Exit;
    TcxGridDBDataController(GridView.MasterGridView.DataController).BeginLocate;
    try
      cIndex :=  Summary.FooterSummaryItems.IndexOfItemLink(cItemOrderAmount); // retrun -1 always
      vtAmount.Append;
      vtAmount['ID'] := GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOID.Index];
      vtAmount['Amount'] := Summary.FooterSummaryValues[0];
      vtAmount.Post;
    finally
      TcxGridDBDataController(GridView.MasterGridView.DataController).EndLocate;
    end;
  end;
end;

procedure TfmK04Main.DoReCalculateDetailSummary;
var I: integer;
begin
  with vDO do
  begin
    BeginUpdate;
    vtAmount.Clear;
    for I := 0 to DataController.RecordCount - 1 do
    begin
      if ViewData.Records[I].Expandable and not ViewData.Records[I].Expanded then
      begin
        ViewData.Records[I].Expand(True);
        ViewData.Records[I].Collapse(True);
      end;
    end;
    EndUpdate;
    qDO.Refresh;
  end;
end;

end.
