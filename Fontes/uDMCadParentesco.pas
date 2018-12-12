unit uDMCadParentesco;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMParentesco = class(TDataModule)
    sdsParentesco: TSQLDataSet;
    dspParentesco: TDataSetProvider;
    cdsParentesco: TClientDataSet;
    dsParentesco: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsParentescoID: TIntegerField;
    sdsParentescoDESCRICAO: TStringField;
    cdsParentescoID: TIntegerField;
    cdsParentescoDESCRICAO: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vMsgParentesco : String;
    ctCommand: string;
    procedure prc_Inserir;
    procedure prc_Excluir;
    procedure prc_Gravar;
    procedure prc_Alterar;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Consultar(x: string);

    { Public declarations }
  end;

var
  DMParentesco: TDMParentesco;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMParentesco }

procedure TDMParentesco.prc_Alterar;
begin
  if (cdsParentesco.IsEmpty) or not (cdsParentesco.Active) or (cdsParentescoID.AsInteger < 1) then
    Exit;
  cdsParentesco.Edit;
end;

procedure TDMParentesco.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' WHERE DESCRICAO LIKE ' + QuotedStr('%' + x + '%');
  cdsConsulta.Open;
end;

procedure TDMParentesco.prc_Excluir;
begin
  if not (cdsParentesco.Active) or (cdsParentesco.IsEmpty) then
    exit;
  cdsParentesco.Delete;
  cdsParentesco.ApplyUpdates(0);
end;

procedure TDMParentesco.prc_Gravar;
begin
  vMsgParentesco := '';
  vErro := False;
  if cdsParentescoDESCRICAO.AsString = '' then
    vMsgParentesco := vMsgParentesco + #13 + '*** Informe o Descrição';
  cdsParentesco.Post;
  cdsParentesco.ApplyUpdates(0);
end;

procedure TDMParentesco.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsParentesco.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PARENTESCO', 0);
  cdsParentesco.Insert;
  cdsParentescoID.AsInteger := vAux;
end;

procedure TDMParentesco.prc_Localizar(ID: Integer);
begin
  cdsParentesco.Close;
  sdsParentesco.CommandText := ctCommand;
  if ID <> 0 then
    sdsParentesco.CommandText := sdsParentesco.CommandText
                         + ' WHERE ID = ' +  IntToStr(ID);
  cdsParentesco.Open;
end;

procedure TDMParentesco.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
end;

end.
