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
  cxGridCardView, cxGridDBCardView, cxDropDownEdit, cxCalendar;

  const
  UM_AFTERDETAILCHANGE = WM_USER + 10000;

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
    cDOAmount: TcxGridDBColumn;
    glPayment: TcxGridLevel;
    dsPayment: TUniDataSource;
    fDOID: TLongWordField;
    cDOID: TcxGridDBColumn;
    vbPayment: TcxGridDBBandedTableView;
    cPaymentID: TcxGridDBBandedColumn;
    cPaymentDOID: TcxGridDBBandedColumn;
    cPaymentPayType: TcxGridDBBandedColumn;
    cPaymentPayment: TcxGridDBBandedColumn;
    cDOPayment: TcxGridDBColumn;
    fDOBalance: TFloatField;
    cDOBalance: TcxGridDBColumn;
    vt1: TVirtualTable;
    fvt1CustomerID: TLongWordField;
    fvt1DeliveryDate: TDateField;
    fvt1CustomerName: TStringField;
    fvt1PriceLevel: TIntegerField;
    fvt1ID1: TLongWordField;
    ds1: TUniDataSource;
    fvt1vt1Field10: TFloatField;
    cPaymentIssueDate: TcxGridDBBandedColumn;
    cPaymentChequeNo: TcxGridDBBandedColumn;
    cPaymentRemark: TcxGridDBBandedColumn;
    fDOAmount: TFloatField;
    fDOPayment: TFloatField;
    qPayment: TUniQuery;
    fPaymentID: TLongWordField;
    fPaymentDOID: TLongWordField;
    fPaymentPayType: TStringField;
    fPaymentPayment: TFloatField;
    fPaymentIssueDate: TDateField;
    fPaymentChequeNo: TStringField;
    fPaymentRemark: TStringField;
    fDOInvoiceNo: TStringField;
    cDOInvoiceNo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qItemOrderCalcFields(DataSet: TDataSet);
    procedure qDOCalcFields(DataSet: TDataSet);
    procedure vbPaymentDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure vbItemOrderDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure qPaymentAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UmAfterDetailChange(var Message: TMessage); message UM_AFTERDETAILCHANGE;
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

procedure TfmK04Main.qDOCalcFields(DataSet: TDataSet);
begin
  qDO.FieldByName('Balance').AsFloat := qDO.FieldByName('Amount').AsFloat - qDO.FieldByName('Payment').AsFloat;
end;

procedure TfmK04Main.qItemOrderCalcFields(DataSet: TDataSet);
begin
  with qItemOrder do
  begin
    FieldByName('Amount').AsFloat := FieldByName('Quantity').AsFloat
        * FieldByName('Price').AsFloat;
  end;
end;

procedure TfmK04Main.UmAfterDetailChange(var Message: TMessage);
var
  cIndex: Integer;
  iID : Integer;
  AApprove: Double;
  ADetailDC: TcxGridDataController;
  ARowIndex, AIndex : Integer;
  AFocusedView: TcxGridDBBandedTableView;
  AFocusedRecord: Integer;
  MasterRecordIndex, DetailRecordIndex : Integer;
  FromRow, ToRow : TcxCustomGridRow;
begin
  with vDO.DataController do
  begin
    if FocusedRecordIndex >= 0 then
    begin
      ADetailDC := TcxGridDataController(GetDetailDataController(FocusedRecordIndex, 0));
      if ADetailDC.Summary.FooterSummaryValues[0] <> null then
      begin
        ARowIndex := ADetailDC.FocusedRowIndex;
        MasterRecordIndex := ADetailDC.GridView.MasterRecordIndex;
        DetailREcordIndex := ADetailDC.GridView.Controller.FocusedRecordIndex;
        AApprove := ADetailDC.Summary.FooterSummaryValues[0];
        AFocusedView := g1.FocusedView  as TcxGridDBBandedTableView;
        AIndex := AFocusedView.DataController.FocusedRecordIndex;
        AFocusedRecord := TcxGridDBBandedTableView(AFocusedView).Controller.FocusedRecordIndex;
        ADetailDC.GridView.MasterGridView.DataController.Edit;
        ADetailDC.GridView.MasterGridView.DataController.SetEditValue(cDOPayment.Index, AApprove, evsValue);
        ADetailDC.GridView.MasterGridView.DataController.Post();

        FromRow := TcxCustomGridRow(vDO.ViewData.GetRecordByRecordIndex(MasterRecordIndex));
        FromRow.AsMasterDataRow.ActiveDetailGridView.Focused := True;
        FromRow.Expand(True);
//        ToRow := TcxCustomGridRow(ADetailDC.GridView.ViewData.GetRecordByRecordIndex(DetailRecordIndex));
//        ToRow.AsGroupRow.Focused := True;

//        g1.FocusedView := AFocusedView as TcxCustomGridView;
//        AFocusedView.Controller.FocusedRecordIndex := AFocusedRecord;

{
          ADetailDC := TcxGridDataController(GetDetailDataController(FocusedRecordIndex, 0));
          with tvAvregning.DataController do
            ADetailDC := GetDetailDataController(FocusedRecordIndex, 0) as TcxGridDBDataController;
          AView := ADetailDC.GridView;

          AView.Focused := True;
          ADetailDC.FocusedRecordIndex := AFocusedRecordIndex;
}

{        qDO.Edit;
        qDO.FieldByName('Payment').AsFloat := AApprove;
        qdo.Post;
}
{
        ADetailDC := TcxGridDataController(GetDetailDataController(FocusedRecordIndex, 0));
        ARowIndex := ADetailDC.FocusedRowIndex;
        ADetailDC := TcxGridDataController(GetDetailDataController(FocusedRecordIndex, 0));
        ADetailDC.GridView.Focused := True;
        ADetailDC.FocusedRowIndex := ARowIndex;
}
      end;
    end;
  end;

{
  with TcxGridDBDataController(Sender) do
  begin
    if (GridView = nil) or (GridView.MasterGridRecord = nil) or (GridView.MasterGridView = nil) then
      Exit;
    TcxGridDBDataController(GridView.MasterGridView.DataController).BeginLocate;
    try
      cIndex :=  Summary.FooterSummaryItems.IndexOfItemLink(cItemOrderAmount); // retrun -1 always
      iID := GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOID.Index];

      if(GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOPayment.Index] <> Summary.FooterSummaryValues[0]) then
        GridView.MasterGridView.DataController.SetEditValue(cDOPayment.Index, Summary.FooterSummaryValues[0], evsValue);
    finally
      TcxGridDBDataController(GridView.MasterGridView.DataController).EndLocate;
    end;
  end;
}
end;

procedure TfmK04Main.qPaymentAfterPost(DataSet: TDataSet);
begin
  PostMessage(Handle, UM_AFTERDETAILCHANGE, 0, 0);
end;

procedure TfmK04Main.vbItemOrderDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  if(ASender.DataController.RecordCount = 0) then
    ASender.FooterSummaryValues[0] := 0.0;
end;

procedure TfmK04Main.vbPaymentDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  if(ASender.DataController.RecordCount = 0) then
    ASender.FooterSummaryValues[0] := 0.0;
end;

end.
