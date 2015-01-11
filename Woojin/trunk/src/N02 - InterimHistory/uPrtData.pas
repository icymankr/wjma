unit uPrtData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, DBAccess,
  Uni, MemDS, uSubForm, CommandArray, UniDacBridge, frxExportXLS, frxPreview;

type
  TdmlHisPrt = class(TfmASubForm)
    qContractPrt: TUniQuery;
    fContractID: TLongWordField;
    fContractContractName: TStringField;
    fContractContractNum: TStringField;
    fContractContDate: TDateField;
    fContractConPeriod: TStringField;
    fContractAdvancePay: TFloatField;
    fContractContAmt: TFloatField;
    fContractComplete: TShortintField;
    fContractClientName: TStringField;
    fContractPrjName: TStringField;
    dsInterimHistoryPrt: TUniDataSource;
    fdsContractPrt: TfrxDBDataset;
    fdsInterimHistoryPrt: TfrxDBDataset;
    frxReport: TfrxReport;
    UniDacBridge: TUniDacBridge;
    dsContractPrt: TUniDataSource;
    qInterimHistoryPrt: TUniQuery;
    fInterimHistoryID: TLongWordField;
    fInterimHistoryInvoiceDate: TDateField;
    fInterimHistoryInvoiceNo: TStringField;
    fInterimHistoryContAmount: TFloatField;
    fInterimHistoryInvoiceAmount: TFloatField;
    fInterimHistoryPayDown: TFloatField;
    fInterimHistoryRetention: TFloatField;
    fInterimHistoryRemark: TStringField;
    fInterimHistoryContID: TLongWordField;
    fInterimHistoryAfterDeduct: TFloatField;
    fHisInvoiceRate: TFloatField;
    fHisDeductSum: TFloatField;
    fInterimHistoryPrtBankinDate: TDateField;
    fInterimHistoryPrtBankinAmt: TFloatField;
    frxlsxprt1: TfrxXLSExport;
    qBankIn: TUniQuery;
    dsBankIn: TUniDataSource;
    fdsBankIn: TfrxDBDataset;
    fBankInID: TLongWordField;
    fBankInContID: TLongWordField;
    fBankInBankName: TStringField;
    fBankInBankInDate: TDateField;
    fBankInBankInAmt: TFloatField;
    fBankInRemark: TStringField;
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
    frxPreview: TfrxPreview;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qInterimHistoryPrtCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HistoryDesign;
    procedure HistoryPrint;
    procedure ShowPreview;
  end;

var
  dmlHisPrt: TdmlHisPrt;

implementation

uses  frxDesgn;

{$R *.dfm}

procedure TdmlHisPrt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  Action:= caFree;
end;

procedure TdmlHisPrt.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active:= True;
end;

procedure TdmlHisPrt.ShowPreview;
begin
  frxReport.LoadFromFile('N02.fr3');
  frxReport.PrepareReport();
  ShowModal();
end;

procedure TdmlHisPrt.HistoryDesign;
begin
  frxReport.LoadFromFile('N02.fr3');
  frxReport.DesignReport();
end;

procedure TdmlHisPrt.HistoryPrint;
begin
  frxReport.LoadFromFile('N02.fr3');
  frxReport.ShowReport;
end;

procedure TdmlHisPrt.qInterimHistoryPrtCalcFields(DataSet: TDataSet);
begin
  with qInterimHistoryPrt do
  begin
    FieldByName('AfterDeduct').AsFloat := FieldByName('InvoiceAmount').AsFloat -
                  (FieldByName('PayDown').AsFloat + FieldByName('Retention').AsFloat);
    FieldByName('InvoiceRate').AsFloat := FieldByName('InvoiceAmount').AsFloat /
                  FieldByName('ContAmount').AsFloat * 100.;
    FieldByName('DeductSum').AsFloat := FieldByName('PayDown').AsFloat +
                  FieldByName('Retention').AsFloat;

  end;
end;

end.
