unit uN04Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSubForm, dmlDatabase, MySqlUniProvider, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxLabel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, DBAccess, Uni, MemDS, dxBar, dxBarExtItems,
  cxBarEditItem, cxClasses, UniDacBridge, dxDockControl, dxPSCore, dxPScxCommon,
  Vcl.ImgList, CommandArray, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCurrencyEdit, Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfmN04Main = class(TfmASubForm)
    ilDockIcons: TImageList;
    cxprtPrtPrt: TdxComponentPrinter;
    lnkPrtPrtLink1: TdxGridReportLink;
    dxdckngmngrDockManager: TdxDockingManager;
    UniDacBridge: TUniDacBridge;
    dxbrmngrBarManager: TdxBarManager;
    dxbrBarManagerBar: TdxBar;
    cxbrdtmbecxbrdtm4: TcxBarEditItem;
    dxbrdtcmbFirstDate: TdxBarDateCombo;
    dxbrdtcmbLastDate: TdxBarDateCombo;
    dxbrcmbDateCtrl: TdxBarCombo;
    bbGridPrint: TdxBarButton;
    bbExpand: TdxBarButton;
    bbCollapse: TdxBarButton;
    bbDocPrt: TdxBarButton;
    bsi1: TdxBarSubItem;
    bbSheetDesign: TdxBarButton;
    dsPOInvoice: TUniDataSource;
    qPOInvoice: TUniQuery;
    glPOInvoice: TcxGridLevel;
    grPOInvoice: TcxGrid;
    vbPOInvoice: TcxGridDBBandedTableView;
    fPOInvoiceClientName: TStringField;
    fPOInvoicePrjName: TStringField;
    fPOInvoiceCodeName: TStringField;
    fPOInvoiceClientContractName: TStringField;
    fPOInvoicePOName: TStringField;
    fPOInvoicePODate: TDateField;
    fPOInvoicePONo: TStringField;
    fPOInvoicePOAmt: TFloatField;
    fPOInvoiceInvoiceDate: TDateField;
    fPOInvoiceInvoiceNo: TStringField;
    fPOInvoiceInvoiceAmount: TFloatField;
    fPOInvoiceRemark: TStringField;
    fPOInvoiceBankOutDate: TDateField;
    fPOInvoiceBankOutAmt: TFloatField;
    fPOInvoiceID: TLongWordField;
    cPOInvoiceClientName: TcxGridDBBandedColumn;
    cPOInvoicePrjName: TcxGridDBBandedColumn;
    cPOInvoiceCodeName: TcxGridDBBandedColumn;
    cPOInvoiceSubConName: TcxGridDBBandedColumn;
    cPOInvoiceClientContractName: TcxGridDBBandedColumn;
    cPOInvoicePOName: TcxGridDBBandedColumn;
    cPOInvoicePODate: TcxGridDBBandedColumn;
    cPOInvoicePONo: TcxGridDBBandedColumn;
    cPOInvoicePOAmt: TcxGridDBBandedColumn;
    cPOInvoiceInvoiceDate: TcxGridDBBandedColumn;
    cPOInvoiceInvoiceNo: TcxGridDBBandedColumn;
    cPOInvoiceInvoiceAmount: TcxGridDBBandedColumn;
    cPOInvoiceRemark: TcxGridDBBandedColumn;
    cPOInvoiceBankOutDate: TcxGridDBBandedColumn;
    cPOInvoiceBankOutAmt: TcxGridDBBandedColumn;
    cPOInvoiceID: TcxGridDBBandedColumn;
    fPOInvoiceSupplierName: TStringField;
    fPOInvoicePoID: TLongWordField;
    fPOInvoiceOutID: TLongWordField;
    cPOInvoicePoID: TcxGridDBBandedColumn;
    cPOInvoiceOutID: TcxGridDBBandedColumn;
    beMonthFilter: TdxBarEdit;
    fPOInvoiceIvMonth: TStringField;
    cPOInvoiceIvMonth: TcxGridDBBandedColumn;
    bbExportXLS: TdxBarButton;
    SaveDialog: TSaveDialog;
    bbRefreshDb: TdxBarButton;
    grpmPopup: TcxGridPopupMenu;
    pmRecord: TPopupMenu;
    pbEditPO: TMenuItem;
    fPOInvoicePayMonth: TStringField;
    cPOInvoicePayMonth: TcxGridDBBandedColumn;
    fPOInvoiceIvIssuDate: TDateField;
    cPOInvoiceIvIssuDate: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qPOInvoiceCalcFields(DataSet: TDataSet);
    procedure bbExportXLSClick(Sender: TObject);
    procedure beMonthFilterCurChange(Sender: TObject);
    procedure beMonthFilterChange(Sender: TObject);
    procedure bbRefreshDbClick(Sender: TObject);
    procedure pbEditPOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmN04Main: TfmN04Main;

implementation

uses
  DateUtils, cxGridExportLink, ShlObj, fPOEdit;

{$R *.dfm}

function GetSpecialFolder(const CSIDL: integer) : string;
var
  RecPath : PWideChar;
begin
  RecPath := StrAlloc(MAX_PATH);
    try
    FillChar(RecPath^, MAX_PATH, 0);
    if SHGetSpecialFolderPath(0, RecPath, CSIDL, false)
      then result := RecPath
      else result := '';
    finally
      StrDispose(RecPath);
    end;
end;

procedure TfmN04Main.bbExportXLSClick(Sender: TObject);
begin
  SaveDialog.InitialDir := GetSpecialFolder(CSIDL_DESKTOP);
  if(SaveDialog.Execute) then
  begin
		//const AFileName: string; AGrid: TcxGrid; AExpand: Boolean = True; ASaveAll: Boolean = True; AUseNativeFormat: Boolean = True; const AFileExt: string = ‘xls
    ExportGridToExcel(SaveDialog.FileName, grPOInvoice);
  end;
end;

procedure TfmN04Main.bbRefreshDbClick(Sender: TObject);
begin
  UniDacBridge.Active := False;
  UniDacBridge.Active := True;
end;

procedure TfmN04Main.beMonthFilterChange(Sender: TObject);
begin
  with vbPOInvoice.DataController.Filter.Root do
  begin
    Clear;
    AddItem(cPOInvoiceIvMonth, foLike, beMonthFilter.Text, beMonthFilter.Text);
  end;
  vbPOInvoice.DataController.Filter.Active := true;
end;

procedure TfmN04Main.beMonthFilterCurChange(Sender: TObject);
begin
  inherited;
  beMonthFilter.Text := beMonthFilter.CurText;
end;

procedure TfmN04Main.pbEditPOClick(Sender: TObject);
var
  fmPoEditDlg : TfmPOEdit;
  iPoID : integer;
begin
  fmPoEditDlg := TfmPOEdit.Create(Nil);
  Try
    fmPoEditDlg.ShowModal;
  Finally
{
//    iStyleCode := fmPoEditDlgDlg.iStyleCode;
    case aKind of
      ioEdit:
        begin
          qrTranfer.Cancel;
        end;
      ioAppendIn: ;
      ioAppendOut: ;
    end;
}
    fmPoEditDlg.Free;
  End;
end;

procedure TfmN04Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfmN04Main.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
  beMonthFilter.Text := '%';
end;

procedure TfmN04Main.qPOInvoiceCalcFields(DataSet: TDataSet);
var
  dInvoice, dBankOut : TDateTime;
  sYear, sMonth : string;
begin
  if(qPOInvoice.FieldByName('InvoiceDate').AsDateTime <> 0.0) then
  begin
    dInvoice := qPOInvoice.FieldByName('InvoiceDate').AsDateTime;
    DateTimeToString(sYear, 'yy', dInvoice);
    DateTimeToString(sMonth, 'mm', dInvoice);
    qPOInvoice.FieldByName('IvMonth').AsString := sYear + sMonth;
  end;

  if(qPOInvoice.FieldByName('BankOutDate').AsDateTime <> 0.0) then
  begin
    dBankOut := qPOInvoice.FieldByName('BankOutDate').AsDateTime;
    DateTimeToString(sYear, 'yy', dBankOut);
    DateTimeToString(sMonth, 'mm', dBankOut);
    qPOInvoice.FieldByName('PayMonth').AsString := sYear + sMonth;
  end;
end;

end.
