unit uDMConsPessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass,
  frxDBSet;

type
  TDMConsPessoa = class(TDataModule)
    sdsConsCidade: TSQLDataSet;
    dspConsCidade: TDataSetProvider;
    cdsConsCidade: TClientDataSet;
    dsConsCidade: TDataSource;
    cdsConsCidadeCODIGO: TIntegerField;
    cdsConsCidadeNOME: TStringField;
    cdsConsCidadeENDERECO: TStringField;
    cdsConsCidadeBAIRRO: TStringField;
    cdsConsCidadeCIDADE: TStringField;
    sdsTipoDeficiencia: TSQLDataSet;
    dspTipoDeficiencia: TDataSetProvider;
    cdsTipoDeficiencia: TClientDataSet;
    dsTipoDeficiencia: TDataSource;
    cdsTipoDeficienciaID: TIntegerField;
    cdsTipoDeficienciaNOME: TStringField;
    sdsConsTD: TSQLDataSet;
    dspConsTD: TDataSetProvider;
    cdsConsTD: TClientDataSet;
    dsConsTD: TDataSource;
    cdsConsTDCODIGO: TIntegerField;
    cdsConsTDNOME: TStringField;
    cdsConsTDFONE: TStringField;
    cdsConsTDNOME_DEFICIENCIA: TStringField;
    qResumo: TSQLQuery;
    qResumoTOTAL_DEFICIENCIA: TIntegerField;
    qResumoNOME: TStringField;
    qResumoID: TIntegerField;
    sdsConsEscolaridade: TSQLDataSet;
    dspConsEscolaridade: TDataSetProvider;
    cdsConsEscolaridade: TClientDataSet;
    dsConsEscolaridade: TDataSource;
    cdsConsEscolaridadeCODIGO: TIntegerField;
    cdsConsEscolaridadeNOME: TStringField;
    cdsConsEscolaridadeESCOLARIDADE: TStringField;
    cdsConsEscolaridadeIDADE: TIntegerField;
    frxConsCidade: TfrxDBDataset;
    frxReport1: TfrxReport;
    qEmpresa: TSQLQuery;
    qEmpresaID: TIntegerField;
    qEmpresaLOGOTIPO: TMemoField;
    frxEmpresa: TfrxDBDataset;
    sdsConsEmpresa: TSQLDataSet;
    dspConsEmpresa: TDataSetProvider;
    cdsConsEmpresa: TClientDataSet;
    dsConsEmpresa: TDataSource;
    cdsConsEmpresaID: TIntegerField;
    cdsConsEmpresaNOME: TStringField;
    cdsConsEmpresaLOGOTIPO: TMemoField;
    cdsConsEmpresaNOME_FANTASIA: TStringField;
    frxConsTD: TfrxDBDataset;
    frxConsEscolaridade: TfrxDBDataset;
    sdsConsPasseLivre: TSQLDataSet;
    dspConsPasseLivre: TDataSetProvider;
    cdsConsPasseLivre: TClientDataSet;
    dsConsPasseLivre: TDataSource;
    cdsConsPasseLivreCODIGO: TIntegerField;
    cdsConsPasseLivreNOME: TStringField;
    cdsConsPasseLivrePASSE_MUNICIPAL: TStringField;
    cdsConsPasseLivrePASSE_INTERMUNICIPAL: TStringField;
    cdsConsPasseLivrePASSE_INTERESTADUAL: TStringField;
    frxConsPasseLivre: TfrxDBDataset;
    sdsConsEstacionamento: TSQLDataSet;
    dspConsEstacionamento: TDataSetProvider;
    cdsConsEstacionamento: TClientDataSet;
    dsConsEstacionamento: TDataSource;
    cdsConsEstacionamentoCODIGO: TIntegerField;
    cdsConsEstacionamentoNOME: TStringField;
    cdsConsEstacionamentoVAGA_ESP_ESTACIONAMENTO: TStringField;
    cdsConsEstacionamentoDT_EMISSAO_ESTACIONAMENTO: TDateField;
    cdsConsEstacionamentoDT_VENC_ESTACIONAMENTO: TDateField;
    frxConsEstacionamento: TfrxDBDataset;
    cdsConsTDNIS: TStringField;
    cdsConsTDFONE2: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConsPessoa: TDMConsPessoa;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
