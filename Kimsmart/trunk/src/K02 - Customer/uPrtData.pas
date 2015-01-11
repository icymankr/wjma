unit uPrtData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, DBAccess,
  Uni, MemDS, uSubForm, CommandArray, UniDacBridge, frxExportXLS;

type
  TfmPrtData = class(TfmASubForm)
    fdsContractPrt: TfrxDBDataset;
    frxReport: TfrxReport;
    UniDacBridge: TUniDacBridge;
    frxlsxprt1: TfrxXLSExport;
    qCustomer: TUniQuery;
    fCustomerID: TLongWordField;
    fCustomerName: TStringField;
    fCustomerContactNumber: TStringField;
    fCustomerPhoneNumber: TStringField;
    fCustomerPriceLevel: TFloatField;
    fCustomerGPSInfo: TStringField;
    fCustomerAddr: TStringField;
    dsCusotmer: TUniDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SheetDesign;
    procedure SheetPrint;
  end;

var
  fmPrtData: TfmPrtData;

implementation

uses  frxDesgn;

{$R *.dfm}

procedure TfmPrtData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  Action:= caFree;
end;

procedure TfmPrtData.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active:= True;
end;

procedure TfmPrtData.SheetDesign;
begin
  frxReport.LoadFromFile('K02.fr3');
  frxReport.DesignReport();
end;

procedure TfmPrtData.SheetPrint;
begin

  frxReport.LoadFromFile('K02.fr3');
  frxReport.ShowReport;
end;

end.
