unit uMain;

interface

uses
  Windows, Forms, uSubForm, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, UniDacBridge, cxGridTableView,
  cxGridCardView, cxLookAndFeels, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls, MySqlUniProvider,
  cxGridCustomView, Controls, cxGrid, StdCtrls, Buttons, Classes, CommandArray,
  cxLookAndFeelPainters, cxNavigator;

type
  TfmProgPriv = class(TfmASubForm)
    dsSTPrograms: TDataSource;
    dsSTAdminProg: TDataSource;
    btInsertAll: TBitBtn;
    btInsert: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dsSTEmployee: TDataSource;
    rqrEmployee: TUniQuery;
    rqrPrograms: TUniQuery;
    qrAdminProg: TUniQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ProgID: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1EmpSN: TcxGridDBColumn;
    cxGrid2DBTableView1DivSN: TcxGridDBColumn;
    cxGrid2DBTableView1EmpName: TcxGridDBColumn;
    cxGrid2DBTableView1MPhone: TcxGridDBColumn;
    cxGrid2DBTableView1eMail: TcxGridDBColumn;
    cxGrid2DBTableView1UserID: TcxGridDBColumn;
    cxGrid2DBTableView1UserPass: TcxGridDBColumn;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1ProgSN: TcxGridDBColumn;
    cxGrid3DBTableView1EmpSN: TcxGridDBColumn;
    cxGrid3DBTableView1ProgID: TcxGridDBColumn;
    cxGrid3DBTableView1ReadOnly: TcxGridDBColumn;
    rqrEmployeeEmpSN: TLongWordField;
    rqrEmployeeDivSN: TLongWordField;
    rqrEmployeeEmpName: TStringField;
    rqrEmployeeMPhone: TStringField;
    rqrEmployeeeMail: TStringField;
    rqrEmployeeUserID: TStringField;
    rqrEmployeeUserPass: TStringField;
    btSave: TBitBtn;
    DacBridge: TUniDacBridge;
    lrgntfldAdminProgProgSN: TLongWordField;
    strngfldAdminProgEmpSN: TStringField;
    strngfldAdminProgProgID: TStringField;
    strngfldAdminProgReadOnly: TStringField;
    procedure btSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btInsertAllClick(Sender: TObject);
  private
    { Private declarations }
    function FindProgID(ProgID: String): Boolean;
  public
    { Public declarations }
  end;

var
  fmProgPriv: TfmProgPriv;

implementation

{$R *.dfm}

uses
  Dialogs, dmlDatabase;

procedure TfmProgPriv.FormCreate(Sender: TObject);
begin
  DacBridge.Active:= True;
end;

procedure TfmProgPriv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DacBridge.Active:= False;
  Action:= caFree;
end;

procedure TfmProgPriv.BitBtn3Click(Sender: TObject);
begin
  qrAdminProg.Delete;
//  qrAdminProg.ApplyUpdates;
end;

procedure TfmProgPriv.BitBtn4Click(Sender: TObject);
begin
  qrAdminProg.DisableControls;
  Try
    qrAdminProg.First;
    While qrAdminProg.Eof = False do Begin
      qrAdminProg.Delete;
    End;
//    qrAdminProg.ApplyUpdates;
  Finally
    qrAdminProg.EnableControls;
  End;
end;

Function  TfmProgPriv.FindProgID(ProgID:String):Boolean;
Begin
  Result:= False;

  qrAdminProg.DisableControls;
  Try
    qrAdminProg.First;
    While qrAdminProg.Eof = False do Begin
      If qrAdminProg.FieldByName('ProgID').AsString = ProgID then Begin
        Result:= True;
        Break;
      End;

      qrAdminProg.Next;
    End;
  Finally
    qrAdminProg.EnableControls;
  End;
End;

procedure TfmProgPriv.btInsertClick(Sender: TObject);
begin
  If FindProgID(rqrPrograms.FieldByName('ProgID').AsString) = False then Begin
    qrAdminProg.Insert;
    //qrAdminProg.FieldByName('ProgSN').AsInteger:= TdmDatabase.GetObject.Gen_ID('AdminProg', 1);
    qrAdminProg.FieldByName('EmpSN').AsInteger:=  rqrEmployee.FieldByName('EmpSN').AsInteger;
    qrAdminProg.FieldByName('ProgID').AsString:=  rqrPrograms.FieldByName('ProgID').AsString;
    qrAdminProg.Post;
//    qrAdminProg.ApplyUpdates;
  End;
end;

procedure TfmProgPriv.btInsertAllClick(Sender: TObject);
begin
  rqrPrograms.DisableControls;
  Try
    rqrPrograms.First;
    While rqrPrograms.Eof = False do Begin
      btInsertClick(Nil);

      rqrPrograms.Next;
    End;
  Finally
    rqrPrograms.EnableControls
  End;
end;

procedure TfmProgPriv.btSaveClick(Sender: TObject);
begin
//  qrAdminProg.ApplyUpdates;
end;

end.
