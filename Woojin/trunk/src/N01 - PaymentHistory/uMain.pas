unit uMain;

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
  CommandArray, cxGridBandedTableView, Vcl.Menus;

type
  TfmN01Main = class(TfmASubForm)
    cpPrtPrt: TdxComponentPrinter;
    grlPrtPrtLink1: TdxGridReportLink;
    dmDockManager: TdxDockingManager;
    bmBarManager: TdxBarManager;
    brBarManagerBar: TdxBar;
    becxbrdtm4: TcxBarEditItem;
    bdcFirstDate: TdxBarDateCombo;
    bdcLastDate: TdxBarDateCombo;
    bcDateCtrl: TdxBarCombo;
    bbGridPrint: TdxBarButton;
    bbExpand: TdxBarButton;
    bbCollapse: TdxBarButton;
    ilDockIcons: TImageList;
    qSubContract: TUniQuery;
    dsSubContract: TUniDataSource;
    UniDacBridge: TUniDacBridge;
    qSubContractClientName: TStringField;
    qSubContractPrjName: TStringField;
    qSubContractContractName: TStringField;
    qSubContractSubConName: TStringField;
    qSubContractContractScope: TStringField;
    qSubContractSubContNo: TStringField;
    qSubContractCDate: TDateField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    vbSubContractView: TcxGridDBBandedTableView;
    cSubContractViewClientName: TcxGridDBBandedColumn;
    cSubContractViewPrjName: TcxGridDBBandedColumn;
    cSubContractViewContractName: TcxGridDBBandedColumn;
    cSubContractViewSubConName: TcxGridDBBandedColumn;
    cSubContractViewContractScope: TcxGridDBBandedColumn;
    cSubContractViewSubContNo: TcxGridDBBandedColumn;
    cSubContractViewCDate: TcxGridDBBandedColumn;
    qSubContractamount: TFloatField;
    cSubContractViewamount: TcxGridDBBandedColumn;
    qSubContractID: TLongWordField;
    cSubContractViewID: TcxGridDBBandedColumn;
    tSubConInterimHistory: TUniTable;
    dsSubConInterimHistory: TUniDataSource;
    fSubConInterimHistoryID: TLongWordField;
    fSubConInterimHistorySubContID: TLongWordField;
    fSubConInterimHistorySubContAmount: TFloatField;
    fSubConInterimHistoryInvoiceNo: TStringField;
    fSubConInterimHistoryInvoiceDate: TDateField;
    fSubConInterimHistoryInvoiceAmount: TFloatField;
    glGrid1Level3: TcxGridLevel;
    cxprtPrt: TdxComponentPrinter;
    lnkPrtlnkPrtPrtLink1: TdxGridReportLink;
    vbSubconInterimHistoryView: TcxGridDBBandedTableView;
    cGrid1DBBandedTableView2ID: TcxGridDBBandedColumn;
    cGrid1DBBandedTableView2SubContID: TcxGridDBBandedColumn;
    cGrid1DBBandedTableView2SubContAmount: TcxGridDBBandedColumn;
    cGrid1DBBandedTableView2InvoiceNo: TcxGridDBBandedColumn;
    cGrid1DBBandedTableView2InvoiceDate: TcxGridDBBandedColumn;
    cGrid1DBBandedTableView2InvoiceAmount: TcxGridDBBandedColumn;
    fSubConInterimHistoryProgress: TFloatField;
    cGrid1DBBandedTableView2InvoiceProgress: TcxGridDBBandedColumn;
    fSubContractAdvancePayment: TFloatField;
    cSubContractViewAdvancePayment: TcxGridDBBandedColumn;
    fSubConInterimHistoryRetention: TFloatField;
    cGrid1DBBandedTableView2Retention: TcxGridDBBandedColumn;
    fSubConInterimHistoryDeductionTotal: TFloatField;
    cGrid1DBBandedTableView2DeductionTotal: TcxGridDBBandedColumn;
    fSubConInterimHistoryLessPayDown: TFloatField;
    cGrid1DBBandedTableView2LessPayDown: TcxGridDBBandedColumn;
    fSubConInterimHistoryAfterDeductionTotal: TFloatField;
    cGrid1DBBandedTableView2AfterDeductionTotal: TcxGridDBBandedColumn;
    fSubConInterimHistoryDeductionRate: TFloatField;
    fSubConInterimHistoryPayRate: TFloatField;
    cGrid1DBBandedTableView2DeductionRate: TcxGridDBBandedColumn;
    cGrid1DBBandedTableView2PayProgress: TcxGridDBBandedColumn;
    fSubContractContPeriod: TStringField;
    cSubContractViewContPeriod: TcxGridDBBandedColumn;
    bbDocPrt: TdxBarButton;
    fSubConInterimHistoryBankinDate: TDateField;
    fSubConInterimHistoryBankinAmt: TFloatField;
    fSubConInterimHistoryRemark: TStringField;
    cSubconInterimHistoryViewBankinDate: TcxGridDBBandedColumn;
    cSubconInterimHistoryViewBankinAmt: TcxGridDBBandedColumn;
    glBankOut: TcxGridLevel;
    vbBankOutView: TcxGridDBBandedTableView;
    qBankOut: TUniQuery;
    dsBankOut: TUniDataSource;
    fBankOutID: TLongWordField;
    fBankOutSubContID: TLongWordField;
    fBankOutBankName: TStringField;
    fBankOutChequeNo: TStringField;
    fBankOutBankOutDate: TDateField;
    fBankOutBankOutAmt: TFloatField;
    fBankOutRemark: TStringField;
    cBankOutViewID: TcxGridDBBandedColumn;
    cBankOutViewSubContID: TcxGridDBBandedColumn;
    cBankOutViewBankName: TcxGridDBBandedColumn;
    cBankOutViewChequeNo: TcxGridDBBandedColumn;
    cBankOutViewBankOutDate: TcxGridDBBandedColumn;
    cBankOutViewBankOutAmt: TcxGridDBBandedColumn;
    cBankOutViewRemark: TcxGridDBBandedColumn;
    qVOSubcon: TUniQuery;
    fVOHistoryID: TLongWordField;
    fVOHistoryKind: TStringField;
    fVOHistoryContID: TLongWordField;
    fVOHistoryVODate: TDateField;
    fVOHistoryVOAmt: TFloatField;
    dsVOSubcon: TUniDataSource;
    glVOSubcon: TcxGridLevel;
    vbVOSubcon: TcxGridDBBandedTableView;
    cVOSubconID: TcxGridDBBandedColumn;
    cVOSubconKind: TcxGridDBBandedColumn;
    cVOSubconContID: TcxGridDBBandedColumn;
    cVOSubconVODate: TcxGridDBBandedColumn;
    cVOSubconVOAmt: TcxGridDBBandedColumn;
    fVOSubconRemark: TStringField;
    cVOSubconRemark: TcxGridDBBandedColumn;
    fVOSubconVONum: TStringField;
    cVOSubconVONum: TcxGridDBBandedColumn;
    cSubconInterimHistoryViewRemark: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    bbSheetDesign: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure bbGridPrintClick(Sender: TObject);
    procedure tSubConInterimHistoryCalcFields(DataSet: TDataSet);
    procedure cGrid1DBBandedTableView2InvoiceProgressCustomDrawCell
      (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure vGrid1DBBandedTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure vGrid1DBBandedTableView2DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure cGrid1DBBandedTableView2DeductionRateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cGrid1DBBandedTableView2PayProgressCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure bbDocPrtClick(Sender: TObject);
    procedure qVOSubconBeforePost(DataSet: TDataSet);
    procedure bbSheetDesignClick(Sender: TObject);
    procedure bbExpandClick(Sender: TObject);
    procedure bbCollapseClick(Sender: TObject);
  private
    { Private declarations }
    InvoiceTotalRate : Double;
  public
    { Public declarations }
  end;

var
  fmN01Main: TfmN01Main;

implementation

uses
  dmlDatabase, uSubIntPrtData;

{$R *.dfm}

procedure TfmN01Main.bbCollapseClick(Sender: TObject);
begin
  vbSubContractView.ViewData.Collapse(False);
end;

procedure TfmN01Main.bbDocPrtClick(Sender: TObject);
var
  fSubIntHisPrt : TfSubIntHisPrt;
begin
  fSubIntHisPrt := TfSubIntHisPrt.Create(Nil);
  try
    fSubIntHisPrt.HistoryPrint;
  finally
    fSubIntHisPrt.Close;
  end;
  fSubIntHisPrt.Free;
end;

procedure TfmN01Main.bbExpandClick(Sender: TObject);
begin
  vbSubContractView.ViewData.Expand(False);
end;

procedure TfmN01Main.bbGridPrintClick(Sender: TObject);
begin
  cxprtPrt.CurrentLinkIndex := 0;
  cxprtPrt.Preview(True);

end;

procedure TfmN01Main.bbSheetDesignClick(Sender: TObject);
var
  fSubIntHisPrt : TfSubIntHisPrt;
begin
  fSubIntHisPrt := TfSubIntHisPrt.Create(Nil);
  try
    fSubIntHisPrt.HistoryDesign;
  finally
    fSubIntHisPrt.Close;
  end;
  fSubIntHisPrt.Free;
end;

procedure TfmN01Main.cGrid1DBBandedTableView2DeductionRateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  temps : string;
  fValue : Double;
begin
{
  fValue := AViewInfo.GridRecord.Values[cGrid1DBBandedTableView2DeductionRate.Index];
  temps := Format('%.1f%%', [fValue]);
  AViewInfo.EditViewInfo.Paint(ACanvas);
  ACanvas.Brush.Style := bsClear;
  ACanvas.DrawTexT(temps, AViewInfo.TextAreaBounds, cxAlignHCenter or
    cxAlignVCenter);
  ADone := True;
}
end;

procedure TfmN01Main.cGrid1DBBandedTableView2InvoiceProgressCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  temps : string;
  fValue : Double;
begin
{  if(AViewInfo.GridRecord.Values[cGrid1DBBandedTableView2InvoiceProgress.Index] = Nil) then
  begin
    fValue := 0.;
  end
  else
  begin
    fValue := AViewInfo.GridRecord.Values[cGrid1DBBandedTableView2InvoiceProgress.Index];
  end;

  temps := Format('%.1f%%', [fValue]);
  AViewInfo.EditViewInfo.Paint(ACanvas);
  ACanvas.Brush.Style := bsClear;
  ACanvas.DrawTexT(temps, AViewInfo.TextAreaBounds, cxAlignHCenter or
    cxAlignVCenter);
  ADone := True;
}
end;

procedure TfmN01Main.cGrid1DBBandedTableView2PayProgressCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  temps : string;
  fValue : Double;
begin
{
  fValue := AViewInfo.GridRecord.Values[cGrid1DBBandedTableView2PayProgress.Index];
  temps := Format('%.1f%%', [fValue]);
  AViewInfo.EditViewInfo.Paint(ACanvas);
  ACanvas.Brush.Style := bsClear;
  ACanvas.DrawTexT(temps, AViewInfo.TextAreaBounds, cxAlignHCenter or
    cxAlignVCenter);
  ADone := True;
}
end;

procedure TfmN01Main.FormCreate(Sender: TObject);
begin
  inherited;
  UniDacBridge.Active := True;
end;

procedure TfmN01Main.qVOSubconBeforePost(DataSet: TDataSet);
begin
  inherited;
  with qVOSubcon do
  begin
    FieldByName('Kind').AsString := 'SubCont';
  end;
end;

procedure TfmN01Main.tSubConInterimHistoryCalcFields(DataSet: TDataSet);
begin
  with tSubConInterimHistory do
  begin
		if(FieldByName('SubContAmount').AsFloat <> 0.0) then
		begin
	    FieldByName('InvoiceProgress').AsFloat := FieldByName('InvoiceAmount').AsFloat /
	                                              FieldByName('SubContAmount').AsFloat * 100;
	    FieldByName('PayProgress').AsFloat := FieldByName('AfterDeductionTotal').AsFloat /
	                                              FieldByName('SubContAmount').AsFloat * 100;
    end;
    if(FieldByName('InvoiceAmount').AsFloat <> 0.0) then
    begin
	    FieldByName('DeductionRate').AsFloat := FieldByName('DeductionTotal').AsFloat /
	                                              FieldByName('InvoiceAmount').AsFloat * 100;
    end;
    FieldByName('DeductionTotal').AsFloat := FieldByName('Retention').AsFloat +
                                              FieldByName('LessPayDown').AsFloat;
    FieldByName('AfterDeductionTotal').AsFloat := FieldByName('InvoiceAmount').AsFloat -
                                                  FieldByName('DeductionTotal').AsFloat;
  end;

end;

procedure TfmN01Main.vGrid1DBBandedTableView2DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
var
  SumaIndex : Integer;
  vInvoiceAmount, vContAmount : Double;
  AList: Tlist;
  I: Integer;
begin
{  AList := TList.Create;
  vGrid1DBBandedTableView2.DataController.Groups.LoadRecordIndexes(AList,0);
  I := Integer(AList.Last);
  vContAmount := vGrid1DBBandedTableView2.DataController.Values[vGrid1DBBandedTableView2.DataController.RowCount - 1,cGrid1DBBandedTableView2SubContAmount.Index];
  SumaIndex := vGrid1DBBandedTableView2.DataController.Summary.FooterSummaryItems.IndexOfItemLink(cGrid1DBBandedTableView2InvoiceAmount);
  if VarIsNull(ASender.DataController.Summary.FooterSummaryValues[SumaIndex]) then
    vInvoiceAmount := 0.0
  else
    vInvoiceAmount := ASender.DataController.Summary.FooterSummaryValues[SumaIndex];
  try
    InvoiceTotalRate := vInvoiceAmount / vContAmount * 100.;
  except
    on EZeroDivide do InvoiceTotalRate := 0.0;
  end;
}
end;

procedure TfmN01Main.vGrid1DBBandedTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
var
  InvoiceSum, TotalInvoiceRate : Double;
  temps : string;
begin
  temps := Format('%.1f%%', [InvoiceTotalRate]);
  AText := temps;
end;

initialization

System.SysUtils.FormatSettings.CurrencyString := 'RM';
System.SysUtils.FormatSettings.CurrencyDecimals := 2;

end.
