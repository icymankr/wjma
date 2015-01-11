unit fPOEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, cxVGrid, cxDBVGrid, Data.DB,
  DBAccess, Uni, MemDS, cxInplaceContainer, uSubForm, UniDacBridge,
  cxCurrencyEdit, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, CommandArray, cxGridBandedTableView, cxGridDBBandedTableView,
  cxTextEdit, cxCalendar;

type
  TfmPOEdit = class(TfmASubForm)
    vgPO: TcxDBVerticalGrid;
    rPOClientName: TcxDBEditorRow;
    rPOPrjName: TcxDBEditorRow;
    rPOCodeName: TcxDBEditorRow;
    rPOSupplierName: TcxDBEditorRow;
    rPOClientContractName: TcxDBEditorRow;
    rPOPoID: TcxDBEditorRow;
    rPOPOName: TcxDBEditorRow;
    rPOPODate: TcxDBEditorRow;
    rPOPONo: TcxDBEditorRow;
    rPOPOAmt: TcxDBEditorRow;
    UniDacBridge: TUniDacBridge;
    pnl1: TPanel;
    glIv: TcxGridLevel;
    gr1: TcxGrid;
    lblInvoiceGrid: TLabel;
    qInvoice: TUniQuery;
    dsInvoice: TUniDataSource;
    fInvoiceInvID: TLongWordField;
    fInvoiceInvDate: TDateField;
    fInvoiceInvNo: TStringField;
    fInvoiceInvAmt: TFloatField;
    fInvoiceRemark: TStringField;
    vbInvoice: TcxGridDBBandedTableView;
    cInvoiceInvID: TcxGridDBBandedColumn;
    cInvoiceInvDate: TcxGridDBBandedColumn;
    cInvoiceInvNo: TcxGridDBBandedColumn;
    cInvoiceInvAmt: TcxGridDBBandedColumn;
    cInvoiceRemark: TcxGridDBBandedColumn;
    fInvoicePoID: TLongWordField;
    cInvoicePoID: TcxGridDBBandedColumn;
    qPO: TUniQuery;
    dsPO: TUniDataSource;
    fq1ClientName: TStringField;
    fq1PrjName: TStringField;
    fq1Item: TStringField;
    fq1SubConName: TStringField;
    fq1ContractName: TStringField;
    fq1ID: TLongWordField;
    fq1ContractScope: TStringField;
    fq1cdate: TDateField;
    fq1SubContNo: TStringField;
    fq1amount: TFloatField;
    glBankOut: TcxGridLevel;
    gr2: TcxGrid;
    vbBankOut: TcxGridDBBandedTableView;
    qBankOut: TUniQuery;
    dsBankOut: TUniDataSource;
    fBankOutID: TLongWordField;
    fBankOutBankName: TStringField;
    fBankOutChequeNo: TStringField;
    fBankOutIssuedDate: TDateField;
    fBankOutBankOutDate: TDateField;
    fBankOutBankOutAmt: TFloatField;
    fBankOutRemark: TStringField;
    fBankOutInvID: TLongWordField;
    cBankOutID: TcxGridDBBandedColumn;
    cBankOutBankName: TcxGridDBBandedColumn;
    cBankOutChequeNo: TcxGridDBBandedColumn;
    cBankOutIssuedDate: TcxGridDBBandedColumn;
    cBankOutBankOutDate: TcxGridDBBandedColumn;
    cBankOutBankOutAmt: TcxGridDBBandedColumn;
    cBankOutRemark: TcxGridDBBandedColumn;
    cBankOutInvID: TcxGridDBBandedColumn;
    qInvoiceIvIssuDate: TDateField;
    cInvoiceIvIssuDate: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vgPOFocusedRecordChanged(Sender: TcxVirtualVerticalGrid;
      APrevFocusedRecord, AFocusedRecord: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPOEdit: TfmPOEdit;

implementation

{$R *.dfm}

procedure TfmPOEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfmPOEdit.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
end;

procedure TfmPOEdit.vgPOFocusedRecordChanged(Sender: TcxVirtualVerticalGrid;
  APrevFocusedRecord, AFocusedRecord: Integer);
begin
  qInvoice.Close;
  qInvoice.Open;
end;

end.
