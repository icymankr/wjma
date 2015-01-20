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
    cDOAmount: TcxGridDBColumn;
    glPayment: TcxGridLevel;
    qPayment: TUniQuery;
    fPaymentID: TLongWordField;
    fPaymentDOID: TLongWordField;
    fPaymentPayType: TStringField;
    fPaymentPayment: TFloatField;
    dsPayment: TUniDataSource;
    fDOID: TLongWordField;
    cDOID: TcxGridDBColumn;
    vtPayment: TVirtualTable;
    fID: TIntegerField;
    fPayment: TFloatField;
    dsvtPayment: TUniDataSource;
    vbPayment: TcxGridDBBandedTableView;
    cPaymentID: TcxGridDBBandedColumn;
    cPaymentDOID: TcxGridDBBandedColumn;
    cPaymentPayType: TcxGridDBBandedColumn;
    cPaymentPayment: TcxGridDBBandedColumn;
    fDOPayment: TFloatField;
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
    fPaymentIssueDate: TDateField;
    fPaymentChequeNo: TStringField;
    fPaymentRemark: TStringField;
    cPaymentIssueDate: TcxGridDBBandedColumn;
    cPaymentChequeNo: TcxGridDBBandedColumn;
    cPaymentRemark: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qItemOrderCalcFields(DataSet: TDataSet);
    procedure tvItemOrderDataControllerDataChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure vbPaymentDataControllerDataChanged(Sender: TObject);
    procedure qDOCalcFields(DataSet: TDataSet);
    procedure vbPaymentDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure vbItemOrderDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
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
  vtAmount.Clear;
  vtPayment.Clear;
end;

procedure TfmK04Main.FormShow(Sender: TObject);
begin
  DoReCalculateDetailSummary;
end;

procedure TfmK04Main.qDOCalcFields(DataSet: TDataSet);
begin
  if(vtAmount.Locate('ID', qDO.FieldByName('ID').AsInteger, []) = True) then
    qDO.FieldByName('Amount').AsFloat := vtAmount.FieldByName('Amount').AsFloat;
  if(vtPayment.Locate('ID', qDO.FieldByName('ID').AsInteger, []) = True) then
    qDO.FieldByName('Payment').AsFloat := vtPayment.FieldByName('Payment').AsFloat;

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

procedure TfmK04Main.tvItemOrderDataControllerDataChanged(Sender: TObject);
var
  cIndex: Integer;
  iID : Integer;
begin
  with TcxGridDBDataController(Sender) do
  begin
    if (GridView = nil) or (GridView.MasterGridRecord = nil) or (GridView.MasterGridView = nil) then
      Exit;
    TcxGridDBDataController(GridView.MasterGridView.DataController).BeginLocate;
    try
      cIndex :=  Summary.FooterSummaryItems.IndexOfItemLink(cItemOrderAmount); // retrun -1 always
      iID := GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOID.Index];
      if(vtAmount.Locate('ID', iID, []) = True) then
      begin
        vtAmount.Edit;
        vtAmount['Amount'] := Summary.FooterSummaryValues[0];
        vtAmount.Post;

        GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOAmount.Index] := Summary.FooterSummaryValues[0];
        GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOBalance.Index] :=
            Summary.FooterSummaryValues[0] - GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOAmount.Index];
      end
      else
      begin
        vtAmount.Append;
        vtAmount['ID'] := iID;
        vtAmount['Amount'] := Summary.FooterSummaryValues[0];
        vtAmount.Post;
      end;
    finally
      TcxGridDBDataController(GridView.MasterGridView.DataController).EndLocate;
    end;
  end;
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

procedure TfmK04Main.vbPaymentDataControllerDataChanged(Sender: TObject);
var
  cIndex: Integer;
  iID : Integer;
begin
  with TcxGridDBDataController(Sender) do
  begin
    if (GridView = nil) or (GridView.MasterGridRecord = nil) or (GridView.MasterGridView = nil) then
      Exit;
    TcxGridDBDataController(GridView.MasterGridView.DataController).BeginLocate;
    try
      cIndex :=  Summary.FooterSummaryItems.IndexOfItemLink(cItemOrderAmount); // retrun -1 always
      iID := GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOID.Index];
      if(vtPayment.Locate('ID', iID, []) = True) then
      begin
        vtPayment.Edit;
        vtPayment['Payment'] := Summary.FooterSummaryValues[0];
        vtPayment.Post;

        GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOPayment.Index] := Summary.FooterSummaryValues[0];
        GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOBalance.Index] :=
            GridView.MasterGridView.DataController.Values[GridView.MasterGridRecord.RecordIndex, cDOAmount.Index] - Summary.FooterSummaryValues[0];
      end
      else
      begin
        vtPayment.Append;
        vtPayment['ID'] := iID;
        vtPayment['Payment'] := Summary.FooterSummaryValues[0];
        vtPayment.Post;
      end;
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
    vtPayment.Clear;
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
