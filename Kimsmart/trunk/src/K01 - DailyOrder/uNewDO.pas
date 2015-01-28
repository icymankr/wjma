unit uNewDO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSubForm, CommandArray, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxCurrencyEdit, UniDacBridge, cxGridDBTableView, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, cxButtons,
  cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxDBLabel, cxDBEdit,
  cxRadioGroup;

type
  TfmNewDO = class(TfmASubForm)
    gItem: TcxGrid;
    tvItem: TcxGridDBBandedTableView;
    cItemID: TcxGridDBBandedColumn;
    cItemBrand: TcxGridDBBandedColumn;
    cItemKName: TcxGridDBBandedColumn;
    cItemEName: TcxGridDBBandedColumn;
    cItemSpec: TcxGridDBBandedColumn;
    cItemL1: TcxGridDBBandedColumn;
    cItemL2: TcxGridDBBandedColumn;
    cItemL3: TcxGridDBBandedColumn;
    cItemL4: TcxGridDBBandedColumn;
    glItem: TcxGridLevel;
    dsItem: TUniDataSource;
    qItem: TUniQuery;
    fItemID: TLongWordField;
    fItemBrand: TStringField;
    fItemKName: TStringField;
    fItemEName: TStringField;
    fItemSpec: TStringField;
    fItemL1: TFloatField;
    fItemL2: TFloatField;
    fItemL3: TFloatField;
    fItemL4: TFloatField;
    glGrid1Level1: TcxGridLevel;
    g1: TcxGrid;
    qItemOrder: TUniQuery;
    dsItermOrder: TUniDataSource;
    qDO: TUniQuery;
    fDOCustomerName: TStringField;
    fDOContactNumber: TStringField;
    fDOIssueDateTime: TDateTimeField;
    dsDO: TUniDataSource;
    UniDacBridge: TUniDacBridge;
    btnAdd: TButton;
    fItemOrderID: TLongWordField;
    fItemOrderDeliveryOrderID: TLongWordField;
    fItemOrderItemID: TLongWordField;
    fItemOrderQuantity: TFloatField;
    fItemOrderPrice: TFloatField;
    pnl1: TPanel;
    btnCancel: TButton;
    tvItemOrder: TcxGridDBBandedTableView;
    cItemOrderID: TcxGridDBBandedColumn;
    cItemOrderDeliveryOrderID: TcxGridDBBandedColumn;
    cItemOrderItemID: TcxGridDBBandedColumn;
    cItemOrderQuantity: TcxGridDBBandedColumn;
    cItemOrderPrice: TcxGridDBBandedColumn;
    fItemOrderAmount: TFloatField;
    cItemOrderAmount: TcxGridDBBandedColumn;
    cbCustomerName: TcxDBLookupComboBox;
    fDOID: TLongWordField;
    fDOCustomerID: TLongWordField;
    qCustomer: TUniQuery;
    fCustomerID: TLongWordField;
    fCustomerName: TStringField;
    fCustomerContactNumber: TStringField;
    fCustomerPhoneNumber: TStringField;
    fCustomerPriceLevel: TFloatField;
    fCustomerGPSInfo: TStringField;
    fCustomerAddr: TStringField;
    dsCusotmer: TUniDataSource;
    btnSave: TcxButton;
    lbCustomerName: TcxLabel;
    lbDeliDate: TcxLabel;
    cItemOrderBrand: TcxGridDBBandedColumn;
    cItemOrderKName: TcxGridDBBandedColumn;
    cItemOrderEName: TcxGridDBBandedColumn;
    cItemOrderSpec: TcxGridDBBandedColumn;
    fItemOrderKName: TStringField;
    fItemOrderBrand: TStringField;
    fItemOrderEName: TStringField;
    fDODeliveryDate: TDateField;
    deDeliveryDate: TcxDBDateEdit;
    fDOPriceLevel: TFloatField;
    ebFilter: TcxTextEdit;
    lbFilter: TcxLabel;
    rbEnglish: TcxRadioButton;
    rbKorean: TcxRadioButton;
    fItemOrderSpec: TStringField;
    fDOAmount: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure qItemOrderCalcFields(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ebFilterPropertiesChange(Sender: TObject);
    procedure rbEnglishClick(Sender: TObject);
    procedure rbKoreanClick(Sender: TObject);
    procedure tvItemOrderDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
  private
    { Private declarations }
    FilterCol : TcxGridDBBandedColumn;
  public
    { Public declarations }
    AppendEdit : Integer;
  end;

var
  fmNewDO: TfmNewDO;

implementation

uses
  Math;

{$R *.dfm}

procedure TfmNewDO.btnAddClick(Sender: TObject);
var
  fPrice : Double;
  iLevel : Integer;
begin
  if(cbCustomerName.ItemIndex = -1) then
    Application.MessageBox('You must set the customer before add the items.',
      'Error', MB_OK + MB_ICONSTOP)
  else
  begin
    qItemOrder.Append;
    qItemOrder.FieldByName('ItemID').AsInteger := qItem.FieldByName('ID').AsInteger;
    iLevel := cbCustomerName.Properties.Grid.DataController.Values[cbCustomerName.ItemIndex, 2];
    qCustomer.FieldByName('PriceLevel').AsInteger;
    if(iLevel = 1) then
      fPrice := qItem.FieldByName('L1').AsFloat
    else if(iLevel = 2) then
      fPrice := qItem.FieldByName('L2').AsFloat
    else if(iLevel = 3) then
      fPrice := qItem.FieldByName('L3').AsFloat
    else if(iLevel = 4) then
      fPrice := qItem.FieldByName('L4').AsFloat
    else
      fPrice := qItem.FieldByName('L1').AsFloat;

    qItemOrder.FieldByName('Price').AsFloat := Round(fPrice * 100.0)/100.0;
    qItemOrder.FieldByName('Spec').AsString := qItem.FieldByName('Spec').AsString;
    qItemOrder.Post;
  end;
end;

procedure TfmNewDO.btnCancelClick(Sender: TObject);
begin
  Close();
end;

procedure TfmNewDO.btnSaveClick(Sender: TObject);
begin
  with qDO do
  begin
    try
      ApplyUpdates;
    except
       RestoreUpdates;
       raise;
    end;
    CommitUpdates;
   end;

  with qItemOrder do
  begin
    try
      ApplyUpdates;
    except
       RestoreUpdates;
       raise;
    end;
    CommitUpdates;
   end;

   Close();
end;

procedure TfmNewDO.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin
  if(cbCustomerName.EditValue <> null) then
    btnSave.Enabled := True
  else
    btnSave.Enabled := False;
end;

procedure TfmNewDO.ebFilterPropertiesChange(Sender: TObject);
begin
  with tvItem.DataController.Filter.Root do
  begin
    Clear;
    AddItem(FilterCol, foLike, '%' + ebFilter.Text + '%', ebFilter.Text);
  end;
  tvItem.DataController.Filter.Active := true;
end;

procedure TfmNewDO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active := False;
  Action := caFree;
end;

procedure TfmNewDO.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active := True;
  AppendEdit := 0; //append
  rbKorean.Checked := True;
  FilterCol := cItemKName;
end;

procedure TfmNewDO.FormShow(Sender: TObject);
begin
  qDO.Active := False;
  if(AppendEdit = 0)then
  begin
    qDO.Active := True;
    qDO.Append();
    qDO.Post();
    deDeliveryDate.EditValue := Now();
  end
  else
  begin
    qDO.ParamByName('ID').AsInteger := AppendEdit;
  end;
  qDO.Active := True;
end;

procedure TfmNewDO.qItemOrderCalcFields(DataSet: TDataSet);
begin
  with qItemOrder do
  begin
    FieldByName('Amount').AsFloat := FieldByName('Quantity').AsFloat * FieldByName('Price').AsFloat;
  end
end;

procedure TfmNewDO.rbEnglishClick(Sender: TObject);
begin
  tvItem.DataController.Filter.Root.Clear;
  FilterCol := cItemEName;
end;

procedure TfmNewDO.rbKoreanClick(Sender: TObject);
begin
  tvItem.DataController.Filter.Root.Clear;
  FilterCol := cItemKName;
end;

procedure TfmNewDO.tvItemOrderDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  if(qDO.Active <> True) then
    Exit;
  if(qDO.FieldByName('Amount').AsFloat <> ASender.FooterSummaryValues[1]) then
  begin
    qDO.Edit;
    qDO['Amount'] := ASender.FooterSummaryValues[1];
    qDO.Post;
  end;
end;

end.
