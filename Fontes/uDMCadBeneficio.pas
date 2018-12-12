unit uDMCadBeneficio;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMBeneficio = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsBeneficio: TSQLDataSet;
    dspBeneficio: TDataSetProvider;
    cdsBeneficio: TClientDataSet;
    dsBeneficio: TDataSource;
    sdsConsultaID: TIntegerField;
    sdsConsultaNOME: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    sdsBeneficioID: TIntegerField;
    sdsBeneficioNOME: TStringField;
    cdsBeneficioID: TIntegerField;
    cdsBeneficioNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    ctCommand : String;
    vMsgBeneficio : String;
    procedure prc_Inserir;
    procedure prc_Excluir;
    procedure prc_Gravar;
    procedure prc_Alterar;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Consultar(x: string);

    { Public declarations }
  end;

var
  DMBeneficio: TDMBeneficio;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMBeneficio }

procedure TDMBeneficio.prc_Alterar;
begin
  if (cdsBeneficio.IsEmpty) or not (cdsBeneficio.Active) or (cdsBeneficioID.AsInteger < 1) then
    Exit;
  cdsBeneficio.Edit;
end;

procedure TDMBeneficio.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + x + '%');
  cdsConsulta.Open;
end;

procedure TDMBeneficio.prc_Excluir;
begin
  if not (cdsBeneficio.Active) or (cdsBeneficio.IsEmpty) then
    exit;
  cdsBeneficio.Delete;
  cdsBeneficio.ApplyUpdates(0);
end;

procedure TDMBeneficio.prc_Gravar;
begin
  vMsgBeneficio := '';
  vErro := False;
  if cdsBeneficioNOME.AsString = '' then
    vMsgBeneficio := vMsgBeneficio + #13 + '*** Informe o Nome';
  cdsBeneficio.Post;
  cdsBeneficio.ApplyUpdates(0);
end;

procedure TDMBeneficio.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsBeneficio.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('BENEFICIO', 0);
  cdsBeneficio.Insert;
  cdsBeneficioID.AsInteger := vAux;
end;

procedure TDMBeneficio.prc_Localizar(ID: Integer);
begin
  cdsBeneficio.Close;
  sdsBeneficio.CommandText := ctCommand;
  if ID <> 0 then
    sdsBeneficio.CommandText := sdsBeneficio.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsBeneficio.Open;
end;

procedure TDMBeneficio.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
end;

end.
