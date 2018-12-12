unit uDMCadCID;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCID = class(TDataModule)
    sdsConsultaCID: TSQLDataSet;
    dspConsultaCID: TDataSetProvider;
    cdsConsultaCID: TClientDataSet;
    dsConsultaCID: TDataSource;
    sdsCID: TSQLDataSet;
    dspCID: TDataSetProvider;
    cdsCID: TClientDataSet;
    dsCID: TDataSource;
    sdsCIDID: TIntegerField;
    sdsCIDCID: TStringField;
    sdsConsultaCIDID: TIntegerField;
    sdsConsultaCIDCID: TStringField;
    cdsConsultaCIDID: TIntegerField;
    cdsConsultaCIDCID: TStringField;
    cdsCIDID: TIntegerField;
    cdsCIDCID: TStringField;
    sdsCIDDESCRICAO: TStringField;
    cdsCIDDESCRICAO: TStringField;
    sdsConsultaCIDDESCRICAO: TStringField;
    cdsConsultaCIDDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vMsgCID : String;
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
  DMCID: TDMCID;

implementation

uses
  DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMCID }

procedure TDMCID.prc_Alterar;
begin
  if (cdsCID.IsEmpty) or not (cdsCID.Active) or (cdsCIDID.AsInteger < 1) then
    Exit;
  cdsCID.Edit;
end;

procedure TDMCID.prc_Consultar(x: string);
begin
  cdsConsultaCID.Close;
  sdsConsultaCID.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsultaCID.CommandText := sdsConsultaCID.CommandText + ' WHERE CID LIKE ' + QuotedStr('%' + x + '%');
  cdsConsultaCID.Open;
end;

procedure TDMCID.prc_Excluir;
begin
  if not (cdsCID.Active) or (cdsCID.IsEmpty) then
    exit;
  cdsCID.Delete;
  cdsCID.ApplyUpdates(0);
end;

procedure TDMCID.prc_Gravar;
begin
  vMsgCID := '';
  vErro := False;
  if cdsCIDCID.AsString = '' then
    vMsgCID := vMsgCID + #13 + '*** Informe o CID';
  cdsCID.Post;
  cdsCID.ApplyUpdates(0);
end;

procedure TDMCID.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsCID.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('TAB_CID', 0);
  cdsCID.Insert;
  cdsCIDID.AsInteger := vAux;
end;

procedure TDMCID.prc_Localizar(ID : Integer);
begin
  cdsCID.Close;
  sdsCID.CommandText := ctCommand;
  if ID <> 0 then
    sdsCID.CommandText := sdsCID.CommandText
                         + ' WHERE ID = ' +  IntToStr(ID);
  cdsCID.Open;
end;

procedure TDMCID.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsultaCID.CommandText;
end;

end.

