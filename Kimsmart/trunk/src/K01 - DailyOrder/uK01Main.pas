unit uK01Main;

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
  CommandArray, cxGridBandedTableView, Vcl.ExtCtrls, frxClass, frxPreview,
  frxDBSet, Vcl.Menus, Vcl.StdCtrls, cxButtons;

const
  UM_UPDATEDO = WM_USER + 10000;

type
  TfmK01Main = class(TfmASubForm)
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
    fCustomerID: TLongWordField;
    fCustomerName: TStringField;
    fCustomerContactNumber: TStringField;
    fCustomerPhoneNumber: TStringField;
    fCustomerPriceLevel: TFloatField;
    fCustomerGPSInfo: TStringField;
    fCustomerAddr: TStringField;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    siPrint: TdxBarSubItem;
    bbPrint: TdxBarButton;
    bbPrintDesign: TdxBarButton;
    bbGridPrint: TdxBarButton;
    bbExcelOut: TdxBarButton;
    pnl1: TPanel;
    qDO: TUniQuery;
    dsDO: TUniDataSource;
    fDOID: TLongWordField;
    fDOIssueDateTime: TDateTimeField;
    bbNewDO: TdxBarButton;
    fDODeliveryDate: TDateField;
    fDOCustomerID: TLongWordField;
    fDOCustomerName: TStringField;
    fDOContactNumber: TStringField;
    pnl2: TPanel;
    gDO: TcxGrid;
    tvDO: TcxGridDBBandedTableView;
    cDOID: TcxGridDBBandedColumn;
    cDOCustomerName: TcxGridDBBandedColumn;
    cDOContactNumber: TcxGridDBBandedColumn;
    cDOIssueDateTime: TcxGridDBBandedColumn;
    cDODeliveryDate: TcxGridDBBandedColumn;
    glDO: TcxGridLevel;
    prevDO: TfrxPreview;
    qPrtDO: TUniQuery;
    f1: TLongWordField;
    f2: TDateTimeField;
    f3: TDateField;
    f4: TLongWordField;
    f5: TStringField;
    f6: TStringField;
    dsPrtDO: TUniDataSource;
    qPrtItemOrder: TUniQuery;
    dsPrtItermOrder: TUniDataSource;
    fPrtDOAddr: TStringField;
    fPrtDOPhoneNumber: TStringField;
    fdsPrtDO: TfrxDBDataset;
    frxReport: TfrxReport;
    fdsItemOrder: TfrxDBDataset;
    fPrtItemOrderID: TLongWordField;
    fPrtItemOrderDeliveryOrderID: TLongWordField;
    fPrtItemOrderItemID: TLongWordField;
    fPrtItemOrderQuantity: TFloatField;
    fPrtItemOrderPrice: TFloatField;
    fPrtItemOrderKName: TStringField;
    fPrtItemOrderEName: TStringField;
    fPrtItemOrderBrand: TStringField;
    fPrtItemOrderAmount: TFloatField;
    btnPrint: TcxButton;
    fPrtItemOrderSpec: TStringField;
    fDOAddr: TStringField;
    fDOPhoneNumber: TStringField;
    vGrid1DBTableView1: TcxGridDBTableView;
    glGrid1Level1: TcxGridLevel;
    gr1: TcxGrid;
    cGrid1DBTableView1ID: TcxGridDBColumn;
    cGrid1DBTableView1IssueDateTime: TcxGridDBColumn;
    cGrid1DBTableView1DeliveryDate: TcxGridDBColumn;
    cGrid1DBTableView1CustomerID: TcxGridDBColumn;
    cGrid1DBTableView1CustomerName: TcxGridDBColumn;
    cGrid1DBTableView1ContactNumber: TcxGridDBColumn;
    cGrid1DBTableView1Addr: TcxGridDBColumn;
    cGrid1DBTableView1PhoneNumber: TcxGridDBColumn;
    fDOInvoiceNo: TStringField;
    cDOInvoiceNo: TcxGridDBBandedColumn;
    fPrtDOInvoiceNo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbPrintClick(Sender: TObject);
    procedure bbPrintDesignClick(Sender: TObject);
    procedure bbNewDOClick(Sender: TObject);
    procedure tvDODblClick(Sender: TObject);
    procedure qDOAfterInsert(DataSet: TDataSet);
    procedure qPrtItemOrderCalcFields(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure bbExcelOutClick(Sender: TObject);
    procedure tvDOFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure frxReportAfterPrint(Sender: TfrxReportComponent);
    procedure frxReportBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
    IsOnPreview : Integer;
    procedure UpdateDO(var Message: TMessage); message UM_UPDATEDO;
  end;

var
  fmK01Main: TfmK01Main;

implementation

{$R *.dfm}

uses
  dmlDatabase, uK01PrtData, uNewDO, uItemSpec, System.DateUtils;

procedure TfmK01Main.bbExcelOutClick(Sender: TObject);
//var
//  fmItemSPecDlg : TfmItemSpec;
begin
{
  fmItemSPecDlg := TfmItemSpec.Create(Nil);
  try
    fmItemSPecDlg.ShowModal;
  finally
    fmItemSPecDlg.Close;
  end;
  fmItemSPecDlg.Free;
  qDO.Active := False;
  qDO.Active := True;
}
end;

procedure TfmK01Main.bbNewDOClick(Sender: TObject);
var
  fmNewDODlg : TfmNewDO;
begin
  fmNewDODlg := TfmNewDO.Create(Nil);
  try
    fmNewDODlg.ShowModal;
  finally
    fmNewDODlg.Close;
  end;
  fmNewDODlg.Free;
//  qDO.Active := False;
//  qDO.Active := True;
end;

procedure TfmK01Main.bbPrintClick(Sender: TObject);
//var
//  fmK01PrtData : TfmK01PrtData;
begin
{
  fmK01PrtData := TfmK01PrtData.Create(Nil);
  try
    fmK01PrtData.SheetPrint;
  finally
    fmK01PrtData.Close;
  end;
  fmK01PrtData.Free;
}
end;

procedure TfmK01Main.bbPrintDesignClick(Sender: TObject);
begin
  frxReport.DesignReport();
  frxReport.LoadFromFile('K01.fr3');
  frxReport.PrepareReport();
end;


procedure TfmK01Main.btnPrintClick(Sender: TObject);
begin
  prevDO.Print;
end;

procedure TfmK01Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  Action := caFree;
end;

procedure TfmK01Main.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
  frxReport.LoadFromFile('K01.fr3');
  qPrtDO.Filter := 'ID = ' + IntToStr(qDO.FieldByName('ID').AsInteger);
  qPrtDO.Filtered := True;
  IsOnPreview := 0;
end;

procedure TfmK01Main.frxReportAfterPrint(Sender: TfrxReportComponent);
begin
  inherited;
  IsOnPreview := 0;
end;

procedure TfmK01Main.frxReportBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  IsOnPreview := 1;
end;

procedure TfmK01Main.qDOAfterInsert(DataSet: TDataSet);
var
  myYear, myMonth, myDay : Word;
  myHour, myMin, mySec, myMilli : Word;
  myYear2, iID, InvNo : Integer;
begin
  qDO.FieldByName('DeliveryDate').AsDateTime := Now();
  qDO.Post;
  qDo.Edit;
  DecodeDateTime(qDO.FieldByName('DeliveryDate').AsDateTime, myYear, myMonth, myDay,
                 myHour, myMin, mySec, myMilli);
  myYear2 := (myYear mod 100) * 1000000;
  myMonth := myMonth * 10000;
  myDay := myDay * 100;
  iID := qDO.FieldByName('ID').AsInteger mod 100;
  InvNo := myYear2 + myMonth + myDay + iID;
  qDO.FieldByName('InvoiceNo').AsString := IntToStr(InvNo);
  qDO.Post;
end;

procedure TfmK01Main.qPrtItemOrderCalcFields(DataSet: TDataSet);
begin
  with qPrtItemOrder do
  begin
    FieldByName('Amount').AsFloat := FieldByName('Quantity').AsFloat * FieldByName('Price').AsFloat;
  end
end;

procedure TfmK01Main.tvDODblClick(Sender: TObject);
var
  fmNewDODlg : TfmNewDO;
begin
  if(qDO.FieldByName('ID').AsInteger = 0) then
    Exit;
  fmNewDODlg := TfmNewDO.Create(Nil);
  try
    fmNewDODlg.AppendEdit := qDO.FieldByName('ID').AsInteger;
    fmNewDODlg.ShowModal;
  finally
    fmNewDODlg.Close;
  end;
  fmNewDODlg.Free;

  qDO.Close;
  qDO.Open;
end;


procedure TfmK01Main.tvDOFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  iID : Integer;
begin
{
  if(IsOnPreview = 1) then
  begin
    exit;
  end;
  IsOnPreview := 1;
}
  if(AFocusedRecord <> nil)then
  begin
    if((qDO.Active <> True) or (qDO.FieldByName('ID').AsInteger = 0))then
      Exit;
    iID := qDO.FieldByName('ID').AsInteger;
    if(APrevFocusedRecord <> nil)then
    if(APrevFocusedRecord.RecordIndex = AFocusedRecord.RecordIndex) then
      exit;
{
    qPrtItemOrder.Close;
    qPrtDO.Close;
    qPrtDO.ParamByName('ID').AsInteger := iID;
    qPrtDO.Open;
    qPrtItemOrder.Open;
}
    qPrtDO.Filter := 'ID = ' + IntToStr(iID);
    PostMessage(Handle, UM_UPDATEDO, 0, 0);
  end;
end;

procedure TfmK01Main.UpdateDO(var Message: TMessage);
begin

  if(IsOnPreview = 1) then
  begin
//    PostMessage(Handle, UM_UPDATEDO, 0, 0);
    Exit;
  end;
  frxReport.PrepareReport();
end;

initialization

System.SysUtils.FormatSettings.CurrencyString := 'RM';
System.SysUtils.FormatSettings.CurrencyDecimals := 2;

end.
