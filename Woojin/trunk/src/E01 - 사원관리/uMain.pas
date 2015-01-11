unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MySQLUniProvider, uSubForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, UniDacBridge, DBAccess, Uni,
  MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, CommandArray, cxNavigator;

type
  TfmEmployeeMain = class(TfmASubForm)
    gvGrid1DBTableView1: TcxGridDBTableView;
    glGrid1Level1: TcxGridLevel;
    gr1: TcxGrid;
    qrEmployee: TUniQuery;
    fldSTEMPLOYEEEmpSN: TLongWordField;
    fldSTEMPLOYEEDivSN: TLongWordField;
    fldSTEMPLOYEEMPhone: TStringField;
    fldSTEMPLOYEEeMail: TStringField;
    fldSTEMPLOYEEUserID: TStringField;
    fldSTEMPLOYEEUserPass: TStringField;
    fldSTEMPLOYEEEmpName: TStringField;
    dsEmployee: TUniDataSource;
    UniDacBridge: TUniDacBridge;
    dbcGrid1DBTableView1EmpSN: TcxGridDBColumn;
    dbcGrid1DBTableView1DivSN: TcxGridDBColumn;
    dbcGrid1DBTableView1MPhone: TcxGridDBColumn;
    dbcGrid1DBTableView1eMail: TcxGridDBColumn;
    dbcGrid1DBTableView1UserID: TcxGridDBColumn;
    dbcGrid1DBTableView1UserPass: TcxGridDBColumn;
    dbcGrid1DBTableView1EmpName: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEmployeeMain: TfmEmployeeMain;

implementation

{$R *.dfm}

uses
  dmlDatabase;

procedure TfmEmployeeMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UniDacBridge.Active:= False;
  Action := caFree;
end;

procedure TfmEmployeeMain.FormCreate(Sender: TObject);
begin
  UniDacBridge.Active:= True;
end;

end.
