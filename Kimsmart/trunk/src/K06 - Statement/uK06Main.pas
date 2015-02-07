unit uK06Main;

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
  frxDBSet, Vcl.Menus, Vcl.StdCtrls, cxButtons, frxDesgn, VirtualTable;

  const
  UM_UDATESTATEMENT = WM_USER + 10000;

type
  TfmK06Main = class(TfmASubForm)
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
    bbNewDO: TdxBarButton;
    fDODeliveryDate: TDateField;
    fDOCustomerID: TLongWordField;
    fDOCustomerName: TStringField;
    pnl2: TPanel;
    gDO: TcxGrid;
    glDO: TcxGridLevel;
    prevStatement: TfrxPreview;
    fdsPrtCustomer: TfrxDBDataset;
    frxReport: TfrxReport;
    fdsItemOrder: TfrxDBDataset;
    btnPrint: TcxButton;
    frxDesigner1: TfrxDesigner;
    vtStatement: TVirtualTable;
    vCustomer: TcxGridDBTableView;
    cCustomerID: TcxGridDBColumn;
    cCustomerCustomerName: TcxGridDBColumn;
    cCustomerContactNumber: TcxGridDBColumn;
    cCustomerPriceLevel: TcxGridDBColumn;
    vGrid1DBTableView1: TcxGridDBTableView;
    glGrid1Level1: TcxGridLevel;
    gr1: TcxGrid;
    dsStatement: TUniDataSource;
    fStatementCustomerID: TIntegerField;
    fStatementAmount: TFloatField;
    fStatementAmountDate: TDateField;
    fStatementPayDate: TDateField;
    fStatementIssueDate: TDateField;
    cGrid1DBTableView1CustomerID: TcxGridDBColumn;
    cGrid1DBTableView1Amount: TcxGridDBColumn;
    cGrid1DBTableView1AmountDate: TcxGridDBColumn;
    cGrid1DBTableView1Payment: TcxGridDBColumn;
    cGrid1DBTableView1PayDate: TcxGridDBColumn;
    cGrid1DBTableView1IssueDate: TcxGridDBColumn;
    fDOAmount: TFloatField;
    qPayment: TUniQuery;
    fPaymentCustomerID: TLongWordField;
    fPaymentIssueDate: TDateField;
    fPaymentPayType: TStringField;
    fPaymentChequeNo: TStringField;
    fPaymentPayment: TFloatField;
    fPaymentRemark: TStringField;
    dsPayment: TUniDataSource;
    fStatementPayType: TStringField;
    fStatementChequeNo: TStringField;
    fStatementRemark: TStringField;
    cGrid1DBTableView1PayType: TcxGridDBColumn;
    cGrid1DBTableView1ChequeNo: TcxGridDBColumn;
    cGrid1DBTableView1Remark: TcxGridDBColumn;
    dsPrtCustomer: TUniDataSource;
    qPrtCustomer: TUniQuery;
    fPrtCustomerID: TLongWordField;
    fPrtCustomerCustomerName: TStringField;
    fPrtCustomerContactNumber: TStringField;
    fPrtCustomerPhoneNumber: TStringField;
    fPrtCustomerPriceLevel: TFloatField;
    fPrtCustomerAddr: TStringField;
    fPrtCustomerGPSInfo: TStringField;
    fStatementPayment: TFloatField;
    fStatementType: TStringField;
    fDOInvoiceNo: TStringField;
    fStatementInvoiceNo: TStringField;
    cGrid1DBTableView1InvoiceNo: TcxGridDBColumn;
    qAmountSum: TUniQuery;
    dsAmountSum: TUniDataSource;
    fBalanceCalcBalanceDate: TStringField;
    fBalanceCalcsAmount: TFloatField;
    qPaymentSum: TUniQuery;
    dsPaymentSum: TUniDataSource;
    fPaymentSumBalanceDate: TStringField;
    fPaymentSumsPayment: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbPrintClick(Sender: TObject);
    procedure bbPrintDesignClick(Sender: TObject);
    procedure bbNewDOClick(Sender: TObject);
    procedure tvDODblClick(Sender: TObject);
    procedure qDOAfterInsert(DataSet: TDataSet);
    procedure tvDOFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure bbExcelOutClick(Sender: TObject);
    procedure vCustomerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure bdcFirstDateChange(Sender: TObject);
    procedure bdcLastDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StatementUpdate(var Message: TMessage); message UM_UDATESTATEMENT;
  end;

var
  fmK06Main: TfmK06Main;

implementation

{$R *.dfm}

uses
  dmlDatabase;

procedure TfmK06Main.bbExcelOutClick(Sender: TObject);
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

procedure TfmK06Main.bbNewDOClick(Sender: TObject);
//var
//  fmNewDODlg : TfmNewDO;
begin
{
  fmNewDODlg := TfmNewDO.Create(Nil);
  try
    fmNewDODlg.ShowModal;
  finally
    fmNewDODlg.Close;
  end;
  fmNewDODlg.Free;
  qDO.Active := False;
  qDO.Active := True;
}
end;

procedure TfmK06Main.bbPrintClick(Sender: TObject);
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

procedure TfmK06Main.bbPrintDesignClick(Sender: TObject);
begin
  frxReport.DesignReport();
  frxReport.LoadFromFile('K06.fr3');
  frxReport.PrepareReport();
end;


procedure TfmK06Main.bdcFirstDateChange(Sender: TObject);
begin
  bdcFirstDate.MaxDate := bdcLastDate.Date;
  PostMessage(Handle, UM_UDATESTATEMENT, 0, 0);
end;

procedure TfmK06Main.bdcLastDateChange(Sender: TObject);
begin
  if(bdcLastDate.Date < bdcFirstDate.Date) then
  begin
    bdcLastDate.Date := bdcFirstDate.Date;
  end;
  PostMessage(Handle, UM_UDATESTATEMENT, 0, 0);
end;

procedure TfmK06Main.btnPrintClick(Sender: TObject);
begin
  prevStatement.Print;
end;

procedure TfmK06Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  Action := caFree;
end;

procedure TfmK06Main.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
  frxReport.LoadFromFile('K06.fr3');
  frxReport.PrepareReport();
end;

procedure TfmK06Main.qDOAfterInsert(DataSet: TDataSet);
begin
  qDO.FieldByName('DeliveryDate').AsDateTime := Now();
  qDO.Post;
end;

procedure TfmK06Main.tvDODblClick(Sender: TObject);
//var
//  fmNewDODlg : TfmNewDO;
begin
{
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
}

{
  qDO.Active := False;
  qPrtItemOrder.Active := False;
  qPrtDO.Active := False;

  qDO.Active := True;
  qPrtDO.Active := True;
  qPrtItemOrder.Active := True;
}
end;


procedure TfmK06Main.tvDOFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  prevStatement.Lock;
  qPrtCustomer.Close;
  qPrtCustomer.ParamByName('ID').AsInteger := qCustomer.FieldByName('ID').AsInteger;
  qPrtCustomer.Open;
  prevStatement.Unlock;
  frxReport.PrepareReport();
end;

procedure TfmK06Main.vCustomerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  PostMessage(Handle, UM_UDATESTATEMENT, 0, 0);
end;

procedure TfmK06Main.StatementUpdate(var Message: TMessage);
var
  I : Integer;
  dBalance : double;
begin
  qAmountSum.Close;
  qAmountSum.ParamByName('CustomerID').AsInteger := qCustomer.FieldByName('ID').AsInteger;
  qAmountSum.ParamByName('StartDate').AsDate := bdcFirstDate.Date;
  qAmountSum.Open;
  qPaymentSum.Close;
  qPaymentSum.ParamByName('CustomerID').AsInteger := qCustomer.FieldByName('ID').AsInteger;
  qPaymentSum.ParamByName('StartDate').AsDate := bdcFirstDate.Date;
  qPaymentSum.Open;

  vtStatement.Open;
  vtStatement.Clear;
  qAmountSum.First;
  qPaymentSum.First;
  dBalance := qAmountSum.FieldByName('sAmount').AsFloat - qPaymentSum.FieldByName('sPayment').AsFloat;
  if(dBalance <> 0.0) then
  begin
    vtStatement.Append;
    vtStatement['IssueDate'] := qAmountSum['BalanceDate'];
    vtStatement['Type'] := 'BALANCE';
    vtStatement['Amount'] := dBalance;
    vtStatement['Remark'] := 'Before Balance';
    vtStatement.Post;
  end;

  qDO.Close;
  qDO.ParamByName('CustomerID').AsInteger := qCustomer.FieldByName('ID').AsInteger;
  qDO.ParamByName('StartDate').AsDate := bdcFirstDate.Date;
  qDO.ParamByName('EndDate').AsDate := bdcLastDate.Date;
  qDO.Open;

  qDO.First;
  while qDO.Eof = False do
  begin
    vtStatement.Append;
    vtStatement['Type'] := 'DEBIT';
    vtStatement['CustomerID'] := qDO['CustomerID'];
    vtStatement['InvoiceNo'] := qDO['InvoiceNo'];
    vtStatement['Amount'] := qDO['Amount'];
    vtStatement['AmountDate'] := qDO['DeliveryDate'];
    vtStatement['IssueDate'] := qDO['DeliveryDate'];
    vtStatement.Post;
    qDO.Next;
  end;

  qPayment.Close;
  qPayment.ParamByName('CustomerID').AsInteger := qCustomer.FieldByName('ID').AsInteger;
  qPayment.ParamByName('StartDate').AsDate := bdcFirstDate.Date;
  qPayment.ParamByName('EndDate').AsDate := bdcLastDate.Date;
  qPayment.Open;

  qPayment.First;
  while qPayment.Eof = False do
  begin
    vtStatement.Append;
    vtStatement['Type'] := 'DEPOSIT';
    vtStatement['CustomerID'] := qPayment['CustomerID'];
    vtStatement['Payment'] := qPayment['Payment'];
    vtStatement['PayDate'] := qPayment['IssueDate'];
    vtStatement['IssueDate'] := qPayment['IssueDate'];
    vtStatement['PayType'] := qPayment['PayType'];
    vtStatement['ChequeNo'] := qPayment['ChequeNo'];
    vtStatement['Remark'] := qPayment['Remark'];
    vtStatement.Post;
    qPayment.Next;
  end;
  qPrtCustomer.Close;
  qPrtCustomer.ParamByName('ID').AsInteger := qCustomer.FieldByName('ID').AsInteger;
  qPrtCustomer.Open;
  frxReport.LoadFromFile('K06.fr3');
  frxReport.PrepareReport();
end;

initialization

System.SysUtils.FormatSettings.CurrencyString := 'RM';
System.SysUtils.FormatSettings.CurrencyDecimals := 2;

end.
