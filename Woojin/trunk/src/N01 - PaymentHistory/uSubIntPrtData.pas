unit uSubIntPrtData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, DBAccess,
  Uni, MemDS, uSubForm, CommandArray, UniDacBridge, frxExportXLS;

type
  TfSubIntHisPrt = class(TfmASubForm)
    qContractPrt: TUniQuery;
    dsInterimHistoryPrt: TUniDataSource;
    fdsContractPrt: TfrxDBDataset;
    fdsInterimHistoryPrt: TfrxDBDataset;
    frxReport: TfrxReport;
    UniDacBridge: TUniDacBridge;
    dsContractPrt: TUniDataSource;
    qInterimHistoryPrt: TUniQuery;
    frxlsxprt1: TfrxXLSExport;
    fInterimHistoryPrtID: TLongWordField;
    fInterimHistoryPrtSubContID: TLongWordField;
    fInterimHistoryPrtSubContAmount: TFloatField;
    fInterimHistoryPrtInvoiceNo: TStringField;
    fInterimHistoryPrtInvoiceDate: TDateField;
    fInterimHistoryPrtInvoiceAmount: TFloatField;
    fInterimHistoryPrtRetention: TFloatField;
    fInterimHistoryPrtLessPayDown: TFloatField;
    fInterimHistoryPrtRemark: TStringField;
    fInterimHistoryPrtAfterDeduct: TFloatField;
    fInterimHistoryPrtInvoiceRate: TFloatField;
    fInterimHistoryPrtDeductSum: TFloatField;
    fInterimHistoryPrtBankinDate: TDateField;
    fInterimHistoryPrtBankinAmt: TFloatField;
    fContractPrtID: TLongWordField;
    fContractPrtClientName: TStringField;
    fContractPrtPrjName: TStringField;
    fContractPrtContractName: TStringField;
    fContractPrtSubConName: TStringField;
    fContractPrtContractScope: TStringField;
    fContractPrtSubContNo: TStringField;
    fContractPrtcdate: TDateField;
    fContractPrtamount: TFloatField;
    fContractPrtAdvancePayment: TFloatField;
    fContractPrtContPeriod: TStringField;
    qBankOut: TUniQuery;
    dsBankOut: TUniDataSource;
    fdsBankOut: TfrxDBDataset;
    fBankOutID: TLongWordField;
    fBankOutBankName: TStringField;
    fBankOutChequeNo: TStringField;
    fBankOutIssuedDate: TDateField;
    fBankOutBankOutDate: TDateField;
    fBankOutBankOutAmt: TFloatField;
    fBankOutRemark: TStringField;
    fBankOutSubContID: TLongWordField;
    qVOCont: TUniQuery;
    fVOHistoryID: TLongWordField;
    fVOHistoryKind: TStringField;
    fVOHistoryContID: TLongWordField;
    fVOHistoryVODate: TDateField;
    fVOHistoryVOAmt: TFloatField;
    fVOContRemark: TStringField;
    fVOContVONum: TStringField;
    dsVOCont: TUniDataSource;
    fdsVOCont: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qInterimHistoryPrtCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HistoryDesign;
    procedure HistoryPrint;
  end;

var
  fSubIntHisPrt: TfSubIntHisPrt;

implementation

uses  frxDesgn;

{$R *.dfm}

procedure TfSubIntHisPrt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  Action:= caFree;
end;

procedure TfSubIntHisPrt.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active:= True;
end;

procedure TfSubIntHisPrt.HistoryDesign;
begin
  frxReport.LoadFromFile('N01.fr3');
  frxReport.DesignReport();
end;

procedure TfSubIntHisPrt.HistoryPrint;
begin

  frxReport.LoadFromFile('N01.fr3');
  frxReport.ShowReport;
end;

procedure TfSubIntHisPrt.qInterimHistoryPrtCalcFields(DataSet: TDataSet);
begin
  with qInterimHistoryPrt do
  begin
    FieldByName('AfterDeduct').AsFloat := FieldByName('InvoiceAmount').AsFloat -
                  (FieldByName('LessPayDown').AsFloat + FieldByName('Retention').AsFloat);
    FieldByName('InvoiceRate').AsFloat := FieldByName('InvoiceAmount').AsFloat /
                  FieldByName('SubContAmount').AsFloat * 100.;
    FieldByName('DeductSum').AsFloat := FieldByName('LessPayDown').AsFloat +
                  FieldByName('Retention').AsFloat;

  end;
end;

end.
