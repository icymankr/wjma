unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MySqlUniProvider, uSubForm, cxLabel,
  frxClass, frxPreview, dxBar, dxBarExtItems, cxBarEditItem, cxClasses,
  UniDacBridge, dxDockControl, Vcl.ImgList, CommandArray, Data.DB, MemDS,
  DBAccess, Uni, frxDBSet, frxCross, frxExportXLS;

type
  TfmN03Main = class(TfmASubForm)
    ilDockIcons: TImageList;
    dxdckngmngrDockManager: TdxDockingManager;
    UniDacBridge: TUniDacBridge;
    dxbrmngrBarManager: TdxBarManager;
    dxbrBarManagerBar: TdxBar;
    cxbrdtmbecxbrdtm4: TcxBarEditItem;
    dxbrdtcmbFirstDate: TdxBarDateCombo;
    dxbrdtcmbLastDate: TdxBarDateCombo;
    dxbrcmbDateCtrl: TdxBarCombo;
    bbDesign: TdxBarButton;
    bbExpand: TdxBarButton;
    bbCollapse: TdxBarButton;
    bbDocPrt: TdxBarButton;
    frxReport: TfrxReport;
    qInvoice: TUniQuery;
    fInvoiceContractName: TStringField;
    fInvoiceContractNum: TStringField;
    fInvoiceAdvancePay: TFloatField;
    fInvoiceContAmt: TFloatField;
    fInvoiceInvoiceAmount: TFloatField;
    fInvoicePayDown: TFloatField;
    fInvoiceRetention: TFloatField;
    dsInvoice: TUniDataSource;
    fdsInvoice: TfrxDBDataset;
    frxcrsbjct1: TfrxCrossObject;
    fInvoicePrjName: TStringField;
    fInvoiceID: TLongWordField;
    qContract: TUniQuery;
    fProjectPrjName: TStringField;
    fProjectContractName: TStringField;
    fProjectContractNum: TStringField;
    fProjectAdvancePay: TFloatField;
    fProjectContAmt: TFloatField;
    dsContract: TUniDataSource;
    fdsContract: TfrxDBDataset;
    frxlsxprt1: TfrxXLSExport;
    fInvoiceAfterDeduct: TFloatField;
    fInvoiceDeductSum: TFloatField;
    qBankIn: TUniQuery;
    fBankInPrjName: TStringField;
    fBankInID: TLongWordField;
    fBankInContractName: TStringField;
    fBankInContractNum: TStringField;
    fBankInAdvancePay: TFloatField;
    fBankInContAmt: TFloatField;
    fBankInBankInDate: TDateField;
    fBankInBankInAmt: TFloatField;
    dsBankIn: TUniDataSource;
    fdsBankIn: TfrxDBDataset;
    fInvoiceIYear: TIntegerField;
    fInvoiceIMonth: TIntegerField;
    fInvoiceInvoiceDate: TDateField;
    fInvoiceIYearMonth: TStringField;
    frxPreview: TfrxPreview;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbDesignClick(Sender: TObject);
    procedure qInvoiceCalcFields(DataSet: TDataSet);
    procedure bbDocPrtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmN03Main: TfmN03Main;
  frmPreview: TfrxPreviewForm;

implementation

uses  frxDesgn, dmlDatabase, System.DateUtils;

{$R *.dfm}

procedure TfmN03Main.bbDesignClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport();
  frxReport.LoadFromFile('N03.fr3');
  frxReport.PrepareReport();
end;

procedure TfmN03Main.bbDocPrtClick(Sender: TObject);
begin
  frxPreview.Print;
end;

procedure TfmN03Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:= caFree;
end;

procedure TfmN03Main.FormCreate(Sender: TObject);
begin
  inherited;
  UniDacBridge.Active := True;
  frxReport.LoadFromFile('N03.fr3');
  frxReport.PrepareReport();
end;

procedure TfmN03Main.qInvoiceCalcFields(DataSet: TDataSet);
var
  myYear, myMonth, myDay : Word;
begin
  inherited;
  with qInvoice do
  begin
    FieldByName('AfterDeduct').AsFloat := FieldByName('InvoiceAmount').AsFloat -
                  (FieldByName('PayDown').AsFloat + FieldByName('Retention').AsFloat);
    FieldByName('DeductSum').AsFloat := FieldByName('PayDown').AsFloat +
                  FieldByName('Retention').AsFloat;

    DecodeDate(FieldByName('InvoiceDate').AsDateTime, myYear, myMonth, myDay);
    FieldByName('IYearMonth').AsString := IntToStr(myYear) + '.' + Format('%.2d',[myMonth]);
  end;
end;

end.
