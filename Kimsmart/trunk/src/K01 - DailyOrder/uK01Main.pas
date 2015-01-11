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
    procedure qPrtItemOrderCalcFields(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure bbExcelOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmK01Main: TfmK01Main;

implementation

{$R *.dfm}

uses
  dmlDatabase, uK01PrtData, uNewDO, uItemSpec;

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
  qDO.Active := False;
  qDO.Active := True;
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
  frxReport.PrepareReport();
end;

procedure TfmK01Main.qDOAfterInsert(DataSet: TDataSet);
begin
  qDO.FieldByName('DeliveryDate').AsDateTime := Now();
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

{
  qDO.Active := False;
  qPrtItemOrder.Active := False;
  qPrtDO.Active := False;

  qDO.Active := True;
  qPrtDO.Active := True;
  qPrtItemOrder.Active := True;
}
end;


procedure TfmK01Main.tvDOFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  qPrtItemOrder.Active := False;
  qPrtDO.Active := False;
  qPrtDO.ParamByName('ID').AsInteger := qDO.FieldByName('ID').AsInteger;
  qPrtDO.Active := True;
  qPrtItemOrder.Active := True;
  frxReport.PrepareReport();
end;

initialization

System.SysUtils.FormatSettings.CurrencyString := 'RM';
System.SysUtils.FormatSettings.CurrencyDecimals := 2;

end.
