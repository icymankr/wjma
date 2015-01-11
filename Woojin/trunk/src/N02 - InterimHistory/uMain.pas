unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  MySqlUniProvider, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Uni, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGrid, CommandArray, cxClasses, dxDockControl, dxBar, dxBarExtItems,
  cxBarEditItem, Vcl.ImgList, UniDacBridge, MemDS, DBAccess, dxPSCore,
  dxPScxCommon, cxCurrencyEdit, uSubForm, cxCalendar;

type
  TfmN02Main = class(TfmASubForm)
    cxprtPrt: TdxComponentPrinter;
    lnkPrtlnkPrtPrtLink1: TdxGridReportLink;
    dsInterimHistory: TUniDataSource;
    UniDacBridge: TUniDacBridge;
    ilDockIcons: TImageList;
    bmBarManager: TdxBarManager;
    brBarManagerBar: TdxBar;
    becxbrdtm4: TcxBarEditItem;
    bdcFirstDate: TdxBarDateCombo;
    bdcLastDate: TdxBarDateCombo;
    bcDateCtrl: TdxBarCombo;
    bbPrint: TdxBarButton;
    bbExpand: TdxBarButton;
    bbCollapse: TdxBarButton;
    dmDockManager: TdxDockingManager;
    cxprtPrtPrt: TdxComponentPrinter;
    lnkPrtPrtLink1: TdxGridReportLink;
    glGrid1Level1: TcxGridLevel;
    gr1: TcxGrid;
    vbContract: TcxGridDBBandedTableView;
    dsContract: TUniDataSource;
    qContract: TUniQuery;
    fContractID: TLongWordField;
    fContractContractName: TStringField;
    fContractContractNum: TStringField;
    fContractContDate: TDateField;
    fContractConPeriod: TStringField;
    fContractAdvancePay: TFloatField;
    fContractContAmt: TFloatField;
    fContractComplete: TShortintField;
    cContractID: TcxGridDBBandedColumn;
    cContractContractName: TcxGridDBBandedColumn;
    cContractContractNum: TcxGridDBBandedColumn;
    cContractContDate: TcxGridDBBandedColumn;
    cContractConPeriod: TcxGridDBBandedColumn;
    cContractAdvancePay: TcxGridDBBandedColumn;
    cContractContAmt: TcxGridDBBandedColumn;
    cContractComplete: TcxGridDBBandedColumn;
    qInterimHistory: TUniQuery;
    fInterimHistoryID: TLongWordField;
    fInterimHistoryInvoiceDate: TDateField;
    fInterimHistoryInvoiceNo: TStringField;
    fInterimHistoryContAmount: TFloatField;
    fInterimHistoryInvoiceAmount: TFloatField;
    fInterimHistoryPayDown: TFloatField;
    fInterimHistoryRetention: TFloatField;
    fInterimHistoryRemark: TStringField;
    vbInterimHistory: TcxGridDBBandedTableView;
    glInterim: TcxGridLevel;
    fInterimHistoryContID: TLongWordField;
    cHisID: TcxGridDBBandedColumn;
    cHisInvoiceDate: TcxGridDBBandedColumn;
    cHisInvoiceNo: TcxGridDBBandedColumn;
    cHisContAmount: TcxGridDBBandedColumn;
    cHisInvoiceAmount: TcxGridDBBandedColumn;
    cHisPayDown: TcxGridDBBandedColumn;
    cHisRetention: TcxGridDBBandedColumn;
    cHisRemark: TcxGridDBBandedColumn;
    cHisContID: TcxGridDBBandedColumn;
    fContractClientName: TStringField;
    fContractPrjName: TStringField;
    cContractClientName: TcxGridDBBandedColumn;
    cContractPrjName: TcxGridDBBandedColumn;
    fInterimHistoryAfterDeduct: TFloatField;
    cInterimHistoryAfterDeduct: TcxGridDBBandedColumn;
    bbSheetDesign: TdxBarButton;
    fHisInvoiceRate: TFloatField;
    cInterimHistoryInvoiceRate: TcxGridDBBandedColumn;
    fHisDeductSum: TFloatField;
    cInterimHistoryDeductSum: TcxGridDBBandedColumn;
    fInterimHistoryBankinDate: TDateField;
    fInterimHistoryBankinAmt: TFloatField;
    cInterimHistoryBankinDate: TcxGridDBBandedColumn;
    cInterimHistoryBankinAmt: TcxGridDBBandedColumn;
    vbMainInView: TcxGridDBBandedTableView;
    glBankIn: TcxGridLevel;
    vbBankInView: TcxGridDBBandedTableView;
    qBankInHistory: TUniQuery;
    dsBankInHistory: TUniDataSource;
    fBankInHistoryID: TLongWordField;
    fBankInHistoryContID: TLongWordField;
    fBankInHistoryBankName: TStringField;
    fBankInHistoryBankInDate: TDateField;
    fBankInHistoryBankInAmt: TFloatField;
    fBankInHistoryRemark: TStringField;
    cBankInViewID: TcxGridDBBandedColumn;
    cBankInViewContID: TcxGridDBBandedColumn;
    cBankInViewBankName: TcxGridDBBandedColumn;
    cBankInViewBankInDate: TcxGridDBBandedColumn;
    cBankInViewBankInAmt: TcxGridDBBandedColumn;
    cBankInViewRemark: TcxGridDBBandedColumn;
    qVOCont: TUniQuery;
    fVOHistoryID: TLongWordField;
    fVOHistoryKind: TStringField;
    fVOHistoryContID: TLongWordField;
    fVOHistoryVODate: TDateField;
    fVOHistoryVOAmt: TFloatField;
    dsVOCont: TUniDataSource;
    glVOCont: TcxGridLevel;
    vbVOCont: TcxGridDBBandedTableView;
    cVOContID: TcxGridDBBandedColumn;
    cVOContKind: TcxGridDBBandedColumn;
    cVOContContID: TcxGridDBBandedColumn;
    cVOContVODate: TcxGridDBBandedColumn;
    cVOContVOAmt: TcxGridDBBandedColumn;
    fVOContRemark: TStringField;
    cVOContRemark: TcxGridDBBandedColumn;
    fVOContVONum: TStringField;
    cVOContVONum: TcxGridDBBandedColumn;
    bsiPrint: TdxBarSubItem;
    bsi1: TdxBarSubItem;
    bbSheetPrint: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qInterimHistoryCalcFields(DataSet: TDataSet);
    procedure bbSheetDesignClick(Sender: TObject);
    procedure qVOContBeforePost(DataSet: TDataSet);
    procedure bbCollapseClick(Sender: TObject);
    procedure bbSheetPrintClick(Sender: TObject);
    procedure bbExpandClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmN02Main: TfmN02Main;

implementation

uses uPrtData;

{$R *.dfm}

procedure TfmN02Main.FormCreate(Sender: TObject);
begin
  inherited;
  UniDacBridge.Active := True;
end;

procedure TfmN02Main.bbCollapseClick(Sender: TObject);
begin
  vbContract.ViewData.Collapse(False);
end;

procedure TfmN02Main.bbSheetDesignClick(Sender: TObject);
var
  dmHisPrt : TdmlHisPrt;
begin
  dmHisPrt := TdmlHisPrt.Create(Nil);
  try
    dmHisPrt.HistoryDesign;
  finally
    dmHisPrt.Close;
  end;
  dmHisPrt.Free;
end;

procedure TfmN02Main.bbExpandClick(Sender: TObject);
begin
  vbContract.ViewData.Expand(False);
end;

procedure TfmN02Main.bbSheetPrintClick(Sender: TObject);
var
  dmHisPrt : TdmlHisPrt;
begin
  dmHisPrt := TdmlHisPrt.Create(Nil);
  try
    dmHisPrt.HistoryPrint;
  finally
    dmHisPrt.Close;
  end;
  dmHisPrt.Free;
end;

procedure TfmN02Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfmN02Main.qInterimHistoryCalcFields(DataSet: TDataSet);
begin
  with qInterimHistory do
  begin
    FieldByName('AfterDeduct').AsFloat := FieldByName('InvoiceAmount').AsFloat -
                  (FieldByName('PayDown').AsFloat + FieldByName('Retention').AsFloat);
    if(FieldByName('ContAmount').AsFloat <> 0) then
    FieldByName('InvoiceRate').AsFloat := FieldByName('InvoiceAmount').AsFloat /
                  FieldByName('ContAmount').AsFloat * 100.;
    FieldByName('DeductSum').AsFloat := FieldByName('PayDown').AsFloat +
                  FieldByName('Retention').AsFloat;
  end;
end;

procedure TfmN02Main.qVOContBeforePost(DataSet: TDataSet);
begin
  inherited;
  with qVOCont do
  begin
    FieldByName('Kind').AsString := 'ClientCont';
  end;
end;

end.
