unit uDMCadEmpresa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCadEmpresa = class(TDataModule)
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sdsEmpresaID: TIntegerField;
    sdsEmpresaNOME: TStringField;
    sdsEmpresaNOME_FANTASIA: TStringField;
    sdsEmpresaENDERECO: TStringField;
    sdsEmpresaCOMPLEMENTO_END: TStringField;
    sdsEmpresaNUM_END: TStringField;
    sdsEmpresaBAIRRO: TStringField;
    sdsEmpresaCEP: TStringField;
    sdsEmpresaID_CIDADE: TIntegerField;
    sdsEmpresaCIDADE: TStringField;
    sdsEmpresaUF: TStringField;
    sdsEmpresaDDD1: TIntegerField;
    sdsEmpresaFONE1: TStringField;
    sdsEmpresaDDD2: TIntegerField;
    sdsEmpresaFONE: TStringField;
    sdsEmpresaDDDFAX: TIntegerField;
    sdsEmpresaFAX: TStringField;
    sdsEmpresaPESSOA: TStringField;
    sdsEmpresaCNPJ_CPF: TStringField;
    sdsEmpresaINSCR_EST: TStringField;
    sdsEmpresaENDLOGO: TStringField;
    sdsEmpresaINATIVO: TStringField;
    sdsEmpresaCNAE: TStringField;
    sdsEmpresaHOMEPAGE: TStringField;
    sdsEmpresaEMAIL: TStringField;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaNOME_FANTASIA: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaCOMPLEMENTO_END: TStringField;
    cdsEmpresaNUM_END: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaID_CIDADE: TIntegerField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaDDD1: TIntegerField;
    cdsEmpresaFONE1: TStringField;
    cdsEmpresaDDD2: TIntegerField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaDDDFAX: TIntegerField;
    cdsEmpresaFAX: TStringField;
    cdsEmpresaPESSOA: TStringField;
    cdsEmpresaCNPJ_CPF: TStringField;
    cdsEmpresaINSCR_EST: TStringField;
    cdsEmpresaENDLOGO: TStringField;
    cdsEmpresaINATIVO: TStringField;
    cdsEmpresaCNAE: TStringField;
    cdsEmpresaHOMEPAGE: TStringField;
    cdsEmpresaEMAIL: TStringField;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    sdsEmpresa_Diretoria: TSQLDataSet;
    cdsEmpresa_Diretoria: TClientDataSet;
    dsEmpresa_Diretoria: TDataSource;
    dsMestre: TDataSource;
    cdsEmpresasdsEmpresa_Diretoria: TDataSetField;
    sdsCargo: TSQLDataSet;
    dspCargo: TDataSetProvider;
    cdsCargo: TClientDataSet;
    dsCargo: TDataSource;
    sdsCargoID: TIntegerField;
    sdsCargoNOME: TStringField;
    sdsEmpresa_DiretoriaID: TIntegerField;
    sdsEmpresa_DiretoriaID_EXERCICIO: TIntegerField;
    sdsEmpresa_DiretoriaID_CARGO: TIntegerField;
    sdsEmpresa_DiretoriaNOME: TStringField;
    sdsEmpresa_DiretoriaCPF: TStringField;
    sdsEmpresa_DiretoriaDDD: TStringField;
    sdsEmpresa_DiretoriaTELEFONE: TStringField;
    sdsEmpresa_DiretoriaNOME_CARGO: TStringField;
    cdsEmpresa_DiretoriaID: TIntegerField;
    cdsEmpresa_DiretoriaID_EXERCICIO: TIntegerField;
    cdsEmpresa_DiretoriaID_CARGO: TIntegerField;
    cdsEmpresa_DiretoriaNOME: TStringField;
    cdsEmpresa_DiretoriaCPF: TStringField;
    cdsEmpresa_DiretoriaDDD: TStringField;
    cdsEmpresa_DiretoriaTELEFONE: TStringField;
    cdsEmpresa_DiretoriaNOME_CARGO: TStringField;
    sdsExercicio: TSQLDataSet;
    dspExercicio: TDataSetProvider;
    cdsExercicio: TClientDataSet;
    dsExercicio: TDataSource;
    sdsExercicioID: TIntegerField;
    sdsExercicioEXERCICIO: TStringField;
    cdsExercicioID: TIntegerField;
    cdsExercicioEXERCICIO: TStringField;
    sdsEmpresa_DiretoriaSITUACAO: TStringField;
    cdsEmpresa_DiretoriaSITUACAO: TStringField;
    cdsCargoID: TIntegerField;
    cdsCargoNOME: TStringField;
    sdsEmpresa_DiretoriaEXERCICIO: TStringField;
    cdsEmpresa_DiretoriaEXERCICIO: TStringField;
    sdsEmpresaLOGOTIPO: TBlobField;
    sdsEmpresaEXTENSAO: TStringField;
    cdsEmpresaLOGOTIPO: TBlobField;
    cdsEmpresaEXTENSAO: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaNOME_FANTASIA: TStringField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaCOMPLEMENTO_END: TStringField;
    cdsConsultaNUM_END: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaCEP: TStringField;
    cdsConsultaID_CIDADE: TIntegerField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaUF: TStringField;
    cdsConsultaDDD1: TIntegerField;
    cdsConsultaFONE1: TStringField;
    cdsConsultaDDD2: TIntegerField;
    cdsConsultaFONE: TStringField;
    cdsConsultaDDDFAX: TIntegerField;
    cdsConsultaFAX: TStringField;
    cdsConsultaPESSOA: TStringField;
    cdsConsultaCNPJ_CPF: TStringField;
    cdsConsultaINSCR_EST: TStringField;
    cdsConsultaENDLOGO: TStringField;
    cdsConsultaINATIVO: TStringField;
    cdsConsultaCNAE: TStringField;
    cdsConsultaHOMEPAGE: TStringField;
    cdsConsultaEMAIL: TStringField;
    cdsConsultaLOGOTIPO: TBlobField;
    cdsConsultaEXTENSAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspEmpresaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsEmpresa_DiretoriaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    vMsgEmpresa : String;
    ctCommand: string;
    ctCidade: string;
    procedure prc_Consultar(x: string);
    procedure prc_Localizar(ID : Integer);
    procedure prc_Alterar;
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Abrir_Diretoria(ID : Integer);
    procedure prc_Inserir_Diretoria;

    { Public declarations }
  end;

var
  DMCadEmpresa: TDMCadEmpresa;

implementation

uses
  DmdDatabase, uCadPadrao;

{$R *.dfm}

{ TDMCadEmpresa }

procedure TDMCadEmpresa.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + x + '%');
  cdsConsulta.Open;
end;

procedure TDMCadEmpresa.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
  ctCidade := sdsCidade.CommandText;
end;

procedure TDMCadEmpresa.prc_Alterar;
begin
  if (cdsEmpresa.IsEmpty) or not (cdsEmpresa.Active) or (cdsEmpresaID.AsInteger < 1) then
    Exit;
  cdsEmpresa.Edit;
end;

procedure TDMCadEmpresa.prc_Inserir;
var
  vAux: integer;
begin
  if not cdsEmpresa.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('Empresa', 0);
  cdsEmpresa.Insert;
  cdsEmpresaID.AsInteger := vAux;
end;

procedure TDMCadEmpresa.prc_Localizar(ID: Integer);
begin
  cdsEmpresa.Close;
  sdsEmpresa.CommandText := ctCommand;
  if ID <> 0 then
    sdsEmpresa.CommandText := sdsEmpresa.CommandText
                         + ' AND ID = ' + IntToStr(ID);
  cdsEmpresa.Open;
  cdsEmpresa_Diretoria.Close;
  cdsEmpresa_Diretoria.Open;
end;

procedure TDMCadEmpresa.prc_Gravar;
begin
  vMsgEmpresa := '';
  if trim(cdsEmpresaNOME.AsString) = '' then
    vMsgEmpresa := '*** Nome não informado!';
  if vMsgEmpresa <> '' then
    exit;
  cdsEmpresa.Post;
  cdsEmpresa.ApplyUpdates(0);

end;

procedure TDMCadEmpresa.prc_Excluir;
begin
  if not(cdsEmpresa.Active) or (cdsEmpresa.IsEmpty) then
    exit;
  cdsEmpresa.Delete;
  cdsEmpresa.ApplyUpdates(0);
end;

procedure TDMCadEmpresa.dspEmpresaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  if DataSet.Name = 'sdsEmpresa_Diretoria' then
    TableName := 'EMPRESA_DIRETORIA';
end;

procedure TDMCadEmpresa.cdsEmpresa_DiretoriaNewRecord(DataSet: TDataSet);
begin
  cdsEmpresa_DiretoriaSITUACAO.AsString := 'A';
end;

procedure TDMCadEmpresa.prc_Abrir_Diretoria(ID: Integer);
begin
  cdsEmpresa_Diretoria.Close;
  sdsEmpresa_Diretoria.ParamByName('ID').AsInteger := ID;
  cdsEmpresa_Diretoria.Open;
end;

procedure TDMCadEmpresa.prc_Inserir_Diretoria;
begin
  cdsEmpresa_Diretoria.Last;
  cdsEmpresa_Diretoria.Insert;
  cdsEmpresa_DiretoriaID.AsInteger := cdsEmpresaID.AsInteger;
end;

end.

