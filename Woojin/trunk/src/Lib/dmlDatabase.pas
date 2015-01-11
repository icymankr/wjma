unit dmlDatabase;

interface

uses
  SysUtils, Classes, Vcl.Forms, DB, Vcl.Dialogs, Uni, DBAccess;

type
  TdmDatabase = class(TDataModule)
    ZConnection: TUniConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetObject: TdmDatabase;
    Function Gen_ID(Generator: String; Pitch: Integer): Integer;
    Function Gen_Rows(Generator: String): Integer;
  end;

procedure AssignConnection(UniConnection: TUniConnection); cdecl;

var
  dmDatabase: TdmDatabase;

implementation

{$R *.dfm}

procedure AssignConnection(UniConnection: TUniConnection); cdecl;
begin
  UniConnection.AssignConnect(UniConnection);
end;

Function TdmDatabase.Gen_ID(Generator: String; Pitch: Integer): Integer;
var
  Query: TUniQuery;
begin
  Query := TUniQuery.Create(Nil);
  Try
    Query.Connection := ZConnection;
    Query.SQL.Text := 'Select Gen_ID(%s, %d) from RDB$Database';
    Query.SQL.Text := Format(Query.SQL.Text, [Generator, Pitch]);
    Query.Open;
    If Query.Eof = False then
      Result := Query.Fields[0].AsInteger
    Else
      Result := -1;
  Finally
    Query.Free;
  End;
end;

Function TdmDatabase.Gen_Rows(Generator: String): Integer; // created icyman
var
  Query: TUniQuery;
begin
  Query := TUniQuery.Create(Nil);
  Try
    Query.Connection := ZConnection;
    Query.SQL.Text := 'show table status where Name = :Table';
    Query.ParamByName('Table').AsString := Generator;
    Query.Open;
    Result := Query.FieldByName('Rows').AsInteger + 1;
  Finally
    Query.Free;
  End;
end;

class function TdmDatabase.GetObject: TdmDatabase;
var
  Loop: Integer;
begin
  Result := Nil;
  For Loop := 0 to Application.ComponentCount - 1 do
  Begin
    If LowerCase(Application.Components[Loop].ClassName) = 'tdmdatabase' then
    Begin
      Result := TdmDatabase(Application.Components[Loop]);
      Break;
    End;
  End;

  If Result = Nil then
    raise Exception.Create('DataModule이 생성되지 않았음.');
end;

procedure TdmDatabase.DataModuleCreate(Sender: TObject);
begin
  ZConnection.Connect;
end;

end.
