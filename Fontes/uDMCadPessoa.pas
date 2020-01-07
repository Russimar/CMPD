unit uDMCadPessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, uUtilPadrao,
  frxClass, frxDBSet;

type
  TDMPessoa = class(TDataModule)
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaID_CIDADE: TIntegerField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaDDDFONE2: TIntegerField;
    cdsPessoaTELEFONE2: TStringField;
    cdsPessoaDDDFAX: TIntegerField;
    cdsPessoaFAX: TStringField;
    cdsPessoaCPF: TStringField;
    cdsPessoaUSUARIO: TStringField;
    cdsPessoaOBS: TMemoField;
    cdsPessoaRG: TStringField;
    cdsPessoaID_PAIS: TIntegerField;
    cdsPessoaINATIVO: TStringField;
    cdsPessoaEMAIL: TStringField;
    cdsPessoaPAI_NOME: TStringField;
    cdsPessoaMAE_NOME: TStringField;
    cdsPessoaCELULAR: TStringField;
    cdsPessoaDDDCELULAR: TIntegerField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsCidade: TSQLDataSet;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeCODMUNICIPIO: TStringField;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    dsCidade: TDataSource;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaFONE: TStringField;
    cdsConsultaCPF: TStringField;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaCOMPLEMENTO_END: TStringField;
    sdsPessoaNUM_END: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaID_CIDADE: TIntegerField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaDDDFONE1: TIntegerField;
    sdsPessoaTELEFONE1: TStringField;
    sdsPessoaDDDFONE2: TIntegerField;
    sdsPessoaTELEFONE2: TStringField;
    sdsPessoaDDDFAX: TIntegerField;
    sdsPessoaFAX: TStringField;
    sdsPessoaCPF: TStringField;
    sdsPessoaUSUARIO: TStringField;
    sdsPessoaOBS: TMemoField;
    sdsPessoaRG: TStringField;
    sdsPessoaID_PAIS: TIntegerField;
    sdsPessoaINATIVO: TStringField;
    sdsPessoaEMAIL: TStringField;
    sdsPessoaPAI_NOME: TStringField;
    sdsPessoaMAE_NOME: TStringField;
    sdsPessoaCELULAR: TStringField;
    sdsPessoaDDDCELULAR: TIntegerField;
    sdsPessoaID_DEFICIENCIA: TIntegerField;
    cdsPessoaID_DEFICIENCIA: TIntegerField;
    sdsDeficiencia: TSQLDataSet;
    dspDeficiencia: TDataSetProvider;
    cdsDeficiencia: TClientDataSet;
    dsDeficiencia: TDataSource;
    sdsDeficienciaID: TIntegerField;
    sdsDeficienciaNOME: TStringField;
    cdsDeficienciaID: TIntegerField;
    cdsDeficienciaNOME: TStringField;
    cdsConsultaID_DEFICIENCIA: TIntegerField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaDTALTERACAO: TDateField;
    cdsPessoaDTCADASTRO: TDateField;
    cdsPessoaDTALTERACAO: TDateField;
    sdsPessoaTEMPORARIO: TStringField;
    cdsPessoaTEMPORARIO: TStringField;
    sdsPessoaSEXO: TStringField;
    cdsPessoaSEXO: TStringField;
    sdsPessoaNIS: TStringField;
    cdsPessoaNIS: TStringField;
    sdsPessoaTITULO_ELEITORAL: TStringField;
    sdsPessoaSECAO_ELEITORAL: TStringField;
    sdsPessoaZONA_ELEITORAL: TStringField;
    cdsPessoaTITULO_ELEITORAL: TStringField;
    cdsPessoaSECAO_ELEITORAL: TStringField;
    cdsPessoaZONA_ELEITORAL: TStringField;
    sdsPessoaAcompa: TSQLDataSet;
    cdsPessoaAcomp: TClientDataSet;
    dsPessoaAcomp: TDataSource;
    dsMestre: TDataSource;
    sdsPessoaAcompaCODIGO: TIntegerField;
    sdsPessoaAcompaITEM: TIntegerField;
    sdsPessoaAcompaNOME: TStringField;
    sdsPessoaAcompaIDENTIDADE: TStringField;
    sdsPessoaAcompaDATA_NASCIMENTO: TDateField;
    sdsPessoaAcompaSEXO: TStringField;
    sdsPessoaAcompaCPF: TStringField;
    sdsPessoaAcompaDDD: TStringField;
    sdsPessoaAcompaTELEFONE: TStringField;
    sdsPessoaAcompaENDERECO: TStringField;
    sdsPessoaAcompaBAIRRO: TStringField;
    sdsPessoaAcompaCIDADE: TStringField;
    sdsPessoaAcompaUF: TStringField;
    sdsPessoaAcompaCEP: TStringField;
    cdsPessoasdsPessoaAcompa: TDataSetField;
    cdsPessoaAcompCODIGO: TIntegerField;
    cdsPessoaAcompITEM: TIntegerField;
    cdsPessoaAcompNOME: TStringField;
    cdsPessoaAcompIDENTIDADE: TStringField;
    cdsPessoaAcompDATA_NASCIMENTO: TDateField;
    cdsPessoaAcompSEXO: TStringField;
    cdsPessoaAcompCPF: TStringField;
    cdsPessoaAcompDDD: TStringField;
    cdsPessoaAcompTELEFONE: TStringField;
    cdsPessoaAcompENDERECO: TStringField;
    cdsPessoaAcompBAIRRO: TStringField;
    cdsPessoaAcompCIDADE: TStringField;
    cdsPessoaAcompUF: TStringField;
    cdsPessoaAcompCEP: TStringField;
    sdsPessoaCARTAO_SUS: TStringField;
    sdsPessoaID_CID: TIntegerField;
    sdsPessoaDATA_NASCIMENTO: TDateField;
    sdsPessoaDATA_EMISSAO_RG: TDateField;
    sdsPessoaRENDA_FAMILIAR: TFMTBCDField;
    cdsPessoaCARTAO_SUS: TStringField;
    cdsPessoaID_CID: TIntegerField;
    cdsPessoaDATA_NASCIMENTO: TDateField;
    cdsPessoaDATA_EMISSAO_RG: TDateField;
    cdsPessoaRENDA_FAMILIAR: TFMTBCDField;
    sdsTAB_CID: TSQLDataSet;
    dspTAB_CID: TDataSetProvider;
    cdsTAB_CID: TClientDataSet;
    dsTAB_CID: TDataSource;
    cdsTAB_CIDID: TIntegerField;
    cdsTAB_CIDDESCRICAO: TStringField;
    sdsTAB_CIDID: TIntegerField;
    sdsTAB_CIDDESCRICAO: TStringField;
    sdsPessoaRENDA_INDIVIDUAL: TFMTBCDField;
    cdsPessoaRENDA_INDIVIDUAL: TFMTBCDField;
    sdsPessoaPASSE_MUNICIPAL: TStringField;
    sdsPessoaPASSE_INTERMUNICIPAL: TStringField;
    sdsPessoaPASSE_INTERESTADUAL: TStringField;
    sdsPessoaDT_VENC_PASSEMUNICIPAL: TDateField;
    sdsPessoaDT_VENC_PASSEINTERMUNIPAL: TDateField;
    sdsPessoaDT_VENC_PASSEINTERESTADUAL: TDateField;
    sdsPessoaDT_EMISSAO_PASSEMUNICIPAL: TDateField;
    sdsPessoaDT_EMISSAO_PASSEINTERMUNICIPAL: TDateField;
    sdsPessoaDT_EMISSAO_PASSEINTERESTADUAL: TDateField;
    cdsPessoaPASSE_MUNICIPAL: TStringField;
    cdsPessoaPASSE_INTERMUNICIPAL: TStringField;
    cdsPessoaPASSE_INTERESTADUAL: TStringField;
    cdsPessoaDT_VENC_PASSEMUNICIPAL: TDateField;
    cdsPessoaDT_VENC_PASSEINTERMUNIPAL: TDateField;
    cdsPessoaDT_VENC_PASSEINTERESTADUAL: TDateField;
    cdsPessoaDT_EMISSAO_PASSEMUNICIPAL: TDateField;
    cdsPessoaDT_EMISSAO_PASSEINTERMUNICIPAL: TDateField;
    cdsPessoaDT_EMISSAO_PASSEINTERESTADUAL: TDateField;
    sdsPessoaVAGA_ESP_ESTACIONAMENTO: TStringField;
    cdsPessoaVAGA_ESP_ESTACIONAMENTO: TStringField;
    sdsPessoaAcompaID_PARENTESCO: TIntegerField;
    cdsPessoaAcompID_PARENTESCO: TIntegerField;
    sdsParentesco: TSQLDataSet;
    dspParentesco: TDataSetProvider;
    cdsParentesco: TClientDataSet;
    dsParentesco: TDataSource;
    sdsParentescoID: TIntegerField;
    sdsParentescoDESCRICAO: TStringField;
    cdsParentescoID: TIntegerField;
    cdsParentescoDESCRICAO: TStringField;
    sdsPessoaRenda: TSQLDataSet;
    cdsPessoaRenda: TClientDataSet;
    dsPessoaRenda: TDataSource;
    sdsPessoaRendaCODIGO: TIntegerField;
    sdsPessoaRendaITEM: TIntegerField;
    sdsPessoaRendaID_PARENTESCO: TIntegerField;
    sdsPessoaRendaPOSSUI_RENDA: TStringField;
    sdsPessoaRendaVALOR_RENDA: TFMTBCDField;
    sdsPessoaRendaRENDA_INFORMAL: TStringField;
    cdsPessoaRendaCODIGO: TIntegerField;
    cdsPessoaRendaITEM: TIntegerField;
    cdsPessoaRendaID_PARENTESCO: TIntegerField;
    cdsPessoaRendaPOSSUI_RENDA: TStringField;
    cdsPessoaRendaVALOR_RENDA: TFMTBCDField;
    cdsPessoaRendaRENDA_INFORMAL: TStringField;
    sdsPessoaRendaNOME: TStringField;
    cdsPessoasdsPessoaRenda: TDataSetField;
    cdsPessoaRendaNOME: TStringField;
    cdsPessoaRenda_Per_Capita: TFloatField;
    sdsPessoaQTDE_MEMBRO_FAMILIAR: TIntegerField;
    cdsPessoaQTDE_MEMBRO_FAMILIAR: TIntegerField;
    sdsPessoaDT_EMISSAO_ESTACIONAMENTO: TDateField;
    sdsPessoaDT_VENC_ESTACIONAMENTO: TDateField;
    cdsPessoaDT_EMISSAO_ESTACIONAMENTO: TDateField;
    cdsPessoaDT_VENC_ESTACIONAMENTO: TDateField;
    cdsConsultaBAIRRO: TStringField;
    mAniversario: TClientDataSet;
    dsmAniversario: TDataSource;
    mAniversarioCodigo: TIntegerField;
    mAniversarioNome: TStringField;
    mAniversarioCidade: TStringField;
    mAniversarioFone: TStringField;
    mAniversarioMes: TStringField;
    mAniversarioDia: TStringField;
    frxReport1: TfrxReport;
    frxAniversario: TfrxDBDataset;
    qAniversario: TSQLQuery;
    qAniversarioCODIGO: TIntegerField;
    qAniversarioNOME: TStringField;
    qAniversarioCIDADE: TStringField;
    qAniversarioFONE: TStringField;
    qAniversarioMES: TSmallintField;
    qAniversarioDIA: TSmallintField;
    mAniversarioBairro: TStringField;
    qAniversarioBAIRRO: TStringField;
    sdsConsVencto_Passe: TSQLDataSet;
    dspConsVencto_Passe: TDataSetProvider;
    cdsConsVencto_Passe: TClientDataSet;
    dsConsVencto_Passe: TDataSource;
    cdsConsVencto_PasseDIAS_PASSEMUNICIPAL: TIntegerField;
    cdsConsVencto_PasseDIAS_PASSEINTERMUNICIPAL: TIntegerField;
    cdsConsVencto_PasseDIAS_PASSEINTERESTADUAL: TIntegerField;
    cdsConsVencto_PasseCODIGO: TIntegerField;
    cdsConsVencto_PasseNOME: TStringField;
    cdsConsVencto_PasseTELEFONE: TStringField;
    cdsConsVencto_PassePASSE_MUNICIPAL: TDateField;
    cdsConsVencto_PassePASSE_INTERMUNICIPAL: TDateField;
    cdsConsVencto_PassePASSE_INTERESTADUAL: TDateField;
    cdsConsVencto_PasseDT_VENC_ESTACIONAMENTO: TDateField;
    cdsConsVencto_PasseENDERECO: TStringField;
    cdsConsVencto_PasseBAIRRO: TStringField;
    sdsReligiao: TSQLDataSet;
    dspReligiao: TDataSetProvider;
    cdsReligiao: TClientDataSet;
    dsReligiao: TDataSource;
    sdsReligiaoID: TIntegerField;
    sdsReligiaoNOME: TStringField;
    cdsReligiaoID: TIntegerField;
    cdsReligiaoNOME: TStringField;
    sdsPessoaID_RELIGIAO: TIntegerField;
    cdsPessoaID_RELIGIAO: TIntegerField;
    sdsPessoaLINK_FACEBOOK: TStringField;
    cdsPessoaLINK_FACEBOOK: TStringField;
    sdsPessoaESCOLARIDADE: TIntegerField;
    cdsPessoaESCOLARIDADE: TIntegerField;
    sdsPessoaNUMERO_BC: TStringField;
    sdsPessoaNUMERO_REGISTRO_PI: TStringField;
    cdsPessoaNUMERO_BC: TStringField;
    cdsPessoaNUMERO_REGISTRO_PI: TStringField;
    sdsPessoaBeneficio: TSQLDataSet;
    cdsPessoaBeneficio: TClientDataSet;
    dsPessoaBeneficio: TDataSource;
    sdsBeneficio: TSQLDataSet;
    dspBeneficio: TDataSetProvider;
    cdsBeneficio: TClientDataSet;
    dsBeneficio: TDataSource;
    sdsBeneficioID: TIntegerField;
    sdsBeneficioNOME: TStringField;
    cdsBeneficioID: TIntegerField;
    cdsBeneficioNOME: TStringField;
    sdsPessoaBeneficioCODIGO: TIntegerField;
    sdsPessoaBeneficioITEM: TIntegerField;
    sdsPessoaBeneficioID_BENEFICIO: TIntegerField;
    sdsPessoaBeneficioNUMERO_BENEFICIO: TStringField;
    sdsPessoaBeneficioNOME_BENEFICIO: TStringField;
    cdsPessoasdsPessoaBeneficio: TDataSetField;
    frxConsPessoa: TfrxDBDataset;
    sdsCidadeConsulta: TSQLDataSet;
    dspCidadeConsulta: TDataSetProvider;
    cdsCidadeConsulta: TClientDataSet;
    dsCidadeConsulta: TDataSource;
    cdsCidadeConsultaID: TIntegerField;
    cdsCidadeConsultaNOME: TStringField;
    cdsCidadeConsultaUF: TStringField;
    cdsPessoaRendaNome_Parentesco: TStringField;
    cdsPessoaAcompNome_Parentesco: TStringField;
    sdsPessoa_Cid: TSQLDataSet;
    cdsPessoa_Cid: TClientDataSet;
    dsPessoa_Cid: TDataSource;
    sdsPessoa_CidCODIGO: TIntegerField;
    sdsPessoa_CidID_CID: TIntegerField;
    sdsPessoa_CidDATA_INICIO: TDateField;
    sdsPessoa_CidDATA_FINAL: TDateField;
    sdsPessoa_CidPRINCIPAL: TStringField;
    cdsPessoaBeneficioCODIGO: TIntegerField;
    cdsPessoaBeneficioITEM: TIntegerField;
    cdsPessoaBeneficioID_BENEFICIO: TIntegerField;
    cdsPessoaBeneficioNUMERO_BENEFICIO: TStringField;
    cdsPessoaBeneficioNOME_BENEFICIO: TStringField;
    cdsPessoasdsPessoa_Cid: TDataSetField;
    cdsPessoa_CidCODIGO: TIntegerField;
    cdsPessoa_CidID_CID: TIntegerField;
    cdsPessoa_CidDATA_INICIO: TDateField;
    cdsPessoa_CidDATA_FINAL: TDateField;
    cdsPessoa_CidPRINCIPAL: TStringField;
    cdsPessoa_CidNome_Cid: TStringField;
    cdsPessoa_CidCID: TStringField;
    sdsPessoaORGAO_EMISSOR: TStringField;
    cdsPessoaORGAO_EMISSOR: TStringField;
    sdsPessoaCERTIDAO_NASCIMENTO: TStringField;
    cdsPessoaCERTIDAO_NASCIMENTO: TStringField;
    sdsPessoaFALECIDO: TStringField;
    sdsPessoaID_EMPRESA: TIntegerField;
    cdsPessoaFALECIDO: TStringField;
    cdsPessoaID_EMPRESA: TIntegerField;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaNOME_FANTASIA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
    procedure cdsPessoaCalcFields(DataSet: TDataSet);
    procedure cdsPessoaRendaNewRecord(DataSet: TDataSet);
    procedure dspPessoaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsPessoaRendaCalcFields(DataSet: TDataSet);
    procedure cdsPessoaAcompCalcFields(DataSet: TDataSet);
    procedure cdsPessoa_CidCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    vMsgPessoa: string;
    ctCommand: string;
    ctPessoa: string;
    ctCidade: string;
    procedure prc_Inserir;
    procedure prc_Excluir;
    procedure prc_Gravar;
    procedure prc_Alterar;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Consultar(x: string);
    procedure prc_Abrir_Deficiencia;
    procedure prc_Inserir_Acomp;
    procedure prc_Abrir_Acomp(Codigo: Integer);
    procedure prc_Inserir_Renda;
    procedure prc_Abrir_Renda(Codigo: Integer);
    procedure prc_Inserir_Beneficio;
    procedure prc_Abrir_Beneficio(Codigo: Integer);
    procedure prc_Inserir_CID;
    procedure prc_Abrir_CID(Codigo: Integer);

    { Public declarations }
  end;

var
  DMPessoa: TDMPessoa;

implementation

uses
  DmdDatabase;

{$R *.dfm}

{ TDMPessoa }

procedure TDMPessoa.prc_Excluir;
begin
  if not (cdsPessoa.Active) or (cdsPessoa.IsEmpty) then
    exit;
  cdsPessoa.Delete;
  cdsPessoa.ApplyUpdates(0);

end;

procedure TDMPessoa.prc_Gravar;
begin
  vMsgPessoa := '';
  vErro := False;
  if trim(cdsPessoaNOME.AsString) = '' then
    vMsgPessoa := '*** Nome não informado!';
  if cdsPessoaID_DEFICIENCIA.AsInteger = 0 then
    vMsgPessoa := vMsgPessoa + #13 + '*** Informe um tipo de Deficiência';
  if cdsPessoa.State in [dsInsert] then
  begin
    cdsPessoaDTCADASTRO.AsDateTime := Date;
    cdsPessoaDTALTERACAO.AsDateTime := Date;
  end;
  if cdsPessoa.State in [dsEdit] then
  begin
    cdsPessoaDTALTERACAO.AsDateTime := Date;
  end;

  cdsPessoa.Post;
  cdsPessoa.ApplyUpdates(0);

end;

procedure TDMPessoa.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsPessoa.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('Pessoa', 0);
  cdsPessoa.Insert;
  cdsPessoaCODIGO.AsInteger := vAux;
end;

procedure TDMPessoa.prc_Localizar(ID: Integer);
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := ctPessoa;
  if ID <> 0 then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND CODIGO = ' + IntToStr(ID);
  cdsPessoa.Open;
  cdsPessoaAcomp.Close;
  cdsPessoaAcomp.Open;
  cdsPessoaRenda.Close;
  cdsPessoaRenda.Open;
  cdsPessoaBeneficio.Close;
  cdsPessoaBeneficio.Open;
  cdsPessoa_Cid.Close;
  cdsPessoa_Cid.Open;
end;

procedure TDMPessoa.prc_Alterar;
begin
  if (cdsPessoa.IsEmpty) or not (cdsPessoa.Active) or (cdsPessoaCODIGO.AsInteger < 1) then
    Exit;
  cdsPessoa.Edit;
end;

procedure TDMPessoa.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
  ctCidade := sdsCidade.CommandText;
  ctPessoa := sdsPessoa.CommandText;
end;

procedure TDMPessoa.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND P.NOME_COLLATE LIKE ' + QuotedStr('%' + x + '%');
  sdsConsulta.CommandText := sdsConsulta.CommandText + ' ORDER BY P.NOME';
  cdsConsulta.Open;
end;

procedure TDMPessoa.prc_Abrir_Deficiencia;
begin
  cdsDeficiencia.Close;
  cdsDeficiencia.Open;
end;

procedure TDMPessoa.cdsPessoaNewRecord(DataSet: TDataSet);
begin
  cdsPessoaTEMPORARIO.AsString := 'N';
  cdsPessoaUF.AsString := 'RS';
  cdsPessoaID_CIDADE.AsInteger := 56;
  cdsPessoaUSUARIO.AsString := vUsuario;
  cdsPessoaVAGA_ESP_ESTACIONAMENTO.AsString := 'N';
  cdsPessoaPASSE_MUNICIPAL.AsString := 'N';
  cdsPessoaPASSE_INTERMUNICIPAL.AsString := 'N';
  cdsPessoaPASSE_INTERESTADUAL.AsString := 'N';
  cdsPessoaFalecido.AsString := 'N';
end;

procedure TDMPessoa.prc_Inserir_Acomp;
var
  i: Integer;
begin
  cdsPessoaAcomp.Last;
  i := cdsPessoaAcompITEM.AsInteger;
  cdsPessoaAcomp.Insert;
  cdsPessoaAcompCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
  cdsPessoaAcompITEM.AsInteger := i + 1;
end;

procedure TDMPessoa.prc_Abrir_Acomp(Codigo: Integer);
begin
  cdsPessoaAcomp.Close;
  sdsPessoaAcompa.ParamByName('Codigo').AsInteger := Codigo;
  cdsPessoaAcomp.Open;
end;

procedure TDMPessoa.prc_Abrir_Renda(Codigo: Integer);
begin
  cdsPessoaRenda.Close;
  sdsPessoaRenda.ParamByName('Codigo').AsInteger := Codigo;
  cdsPessoaRenda.Open;
end;

procedure TDMPessoa.prc_Inserir_Renda;
var
  i: integer;
begin
  cdsPessoaRenda.Last;
  i := cdsPessoaRendaITEM.AsInteger;
  cdsPessoaRenda.Insert;
  cdsPessoaRendaCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
  cdsPessoaRendaITEM.AsInteger := i + 1;
end;

procedure TDMPessoa.cdsPessoaCalcFields(DataSet: TDataSet);
var
  vAux: Double;
begin
  vAux := 0;
  while not cdsPessoaRenda.Eof do
  begin
    vAux := vAux + cdsPessoaRendaVALOR_RENDA.AsFloat;
    cdsPessoaRenda.Next;
  end;
  if (vAux > 0) and (cdsPessoaQTDE_MEMBRO_FAMILIAR.AsInteger > 0) then
  begin
    vAux := vAux / cdsPessoaQTDE_MEMBRO_FAMILIAR.AsInteger;
    cdsPessoaRenda_Per_Capita.AsFloat := vAux;
  end
  else
    cdsPessoaRenda_Per_Capita.AsFloat := 0;
end;

procedure TDMPessoa.cdsPessoaRendaNewRecord(DataSet: TDataSet);
begin
  cdsPessoaRendaPOSSUI_RENDA.AsString := 'S';
  cdsPessoaRendaRENDA_INFORMAL.AsString := 'N';
end;

procedure TDMPessoa.prc_Abrir_Beneficio(Codigo: Integer);
begin
  cdsPessoaBeneficio.Close;
  sdsPessoaBeneficio.ParamByName('Codigo').AsInteger := Codigo;
  cdsPessoaBeneficio.Open;
end;

procedure TDMPessoa.prc_Inserir_Beneficio;
var
  i : Integer;
begin
  cdsPessoaBeneficio.Last;
  i := cdsPessoaBeneficioITEM.AsInteger;
  cdsPessoaBeneficio.Insert;
  cdsPessoaBeneficioCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
  cdsPessoaBeneficioITEM.AsInteger := i + 1;
end;

procedure TDMPessoa.dspPessoaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  if DataSet.Name = 'sdsPessoaBeneficio' then
    TableName := 'PESSOA_BENEFICIO';
end;

procedure TDMPessoa.cdsPessoaRendaCalcFields(DataSet: TDataSet);
begin
  if cdsPessoaRendaID_PARENTESCO.AsInteger > 0 then
    cdsPessoaRendaNome_Parentesco.AsString := SQLLocate('PARENTESCO','ID','DESCRICAO',cdsPessoaRendaID_PARENTESCO.AsString);
end;

procedure TDMPessoa.cdsPessoaAcompCalcFields(DataSet: TDataSet);
begin
  if cdsPessoaAcompID_PARENTESCO.AsInteger > 0 then
    cdsPessoaAcompNome_Parentesco.AsString := SQLLocate('PARENTESCO','ID','DESCRICAO',cdsPessoaAcompID_PARENTESCO.AsString);
end;

procedure TDMPessoa.cdsPessoa_CidCalcFields(DataSet: TDataSet);
begin
  if cdsPessoa_CidID_CID.AsInteger > 0 then
  begin
    cdsPessoa_CidNome_Cid.AsString := SQLLocate('TAB_CID','ID','DESCRICAO',cdsPessoa_CidID_CID.AsString);
    cdsPessoa_CidCID.AsString := SQLLocate('TAB_CID','ID','CID',cdsPessoa_CidID_CID.AsString);
  end;
end;

procedure TDMPessoa.prc_Abrir_CID(Codigo: Integer);
begin
  cdsPessoa_Cid.Close;
  sdsPessoa_Cid.ParamByName('Codigo').AsInteger := Codigo;
  cdsPessoa_Cid.Open;
end;

procedure TDMPessoa.prc_Inserir_CID;
begin
  cdsPessoa_Cid.Last;
  cdsPessoa_CID.Insert;
  cdsPessoa_CidCODIGO.AsInteger := cdsPessoaCODIGO.AsInteger;
end;

end.

