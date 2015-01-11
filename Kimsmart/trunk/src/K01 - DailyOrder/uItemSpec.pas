unit uItemSpec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, Uni, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, UniDacBridge;

type
  TfmItemSpec = class(TForm)
    vGrid1DBTableView1: TcxGridDBTableView;
    glGrid1Level1: TcxGridLevel;
    gr1: TcxGrid;
    qItemOrder: TUniQuery;
    fItemOrderID: TLongWordField;
    fItemOrderDeliveryOrderID: TLongWordField;
    fItemOrderItemID: TLongWordField;
    fItemOrderQuantity: TFloatField;
    fItemOrderPrice: TFloatField;
    fItemOrderAmount: TFloatField;
    fItemOrderKName: TStringField;
    fItemOrderBrand: TStringField;
    fItemOrderEName: TStringField;
    fItemOrderSpec: TStringField;
    dsItermOrder: TUniDataSource;
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
    dsItem: TUniDataSource;
    fItemOrderOrgSpec: TStringField;
    cGrid1DBTableView1ID: TcxGridDBColumn;
    cGrid1DBTableView1DeliveryOrderID: TcxGridDBColumn;
    cGrid1DBTableView1ItemID: TcxGridDBColumn;
    cGrid1DBTableView1Quantity: TcxGridDBColumn;
    cGrid1DBTableView1Price: TcxGridDBColumn;
    cGrid1DBTableView1Amount: TcxGridDBColumn;
    cGrid1DBTableView1KName: TcxGridDBColumn;
    cGrid1DBTableView1Brand: TcxGridDBColumn;
    cGrid1DBTableView1EName: TcxGridDBColumn;
    cGrid1DBTableView1Spec: TcxGridDBColumn;
    cGrid1DBTableView1OrgSpec: TcxGridDBColumn;
    btn1: TButton;
    UniDacBridge: TUniDacBridge;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmItemSpec: TfmItemSpec;

implementation

{$R *.dfm}

procedure TfmItemSpec.btn1Click(Sender: TObject);
begin
  qItemOrder.DisableControls;
  Try
    qItemOrder.First;
    While qItemOrder.Eof = False do Begin
      qItemOrder.Edit;
      qItemOrder.FieldByName('Spec').AsString := qItemOrder.FieldByName('OrgSpec').AsString;
      qItemOrder.Post;
      qItemOrder.Next;
    End;
  Finally
    qItemOrder.EnableControls;
  End;
end;

procedure TfmItemSpec.btn2Click(Sender: TObject);
begin
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
end;

end.
