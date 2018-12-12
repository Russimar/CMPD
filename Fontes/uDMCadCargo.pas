unit uDMCadCargo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, uUtilPadrao;

type
  TDMCargo = class(TDataModule)
    sdsCargo: TSQLDataSet;
    dspCargo: TDataSetProvider;
    cdsCargo: TClientDataSet;
    dsCargo: TDataSource;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsCargoID: TIntegerField;
    sdsCargoNOME: TStringField;
    cdsCargoID: TIntegerField;
    cdsCargoNOME: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vMsgCargo : String;
    ctCommand : String;
    procedure prc_Inserir;
    procedure prc_Excluir;
    procedure prc_Gravar;
    procedure prc_Alterar;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Consultar(x: string);
    { Public declarations }
  end;

var
  DMCargo: TDMCargo;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TDMCargo }

procedure TDMCargo.prc_Alterar;
begin
  if (cdsCargo.IsEmpty) or not (cdsCargo.Active) or (cdsCargoID.AsInteger < 1) then
    Exit;
  cdsCargo.Edit;
end;

procedure TDMCargo.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' WHERE NOME LIKE ' + QuotedStr('%' + x + '%');
  cdsConsulta.Open;
end;

procedure TDMCargo.prc_Excluir;
begin
  if not (cdsCargo.Active) or (cdsCargo.IsEmpty) then
    exit;
  cdsCargo.Delete;
  cdsCargo.ApplyUpdates(0);
end;

procedure TDMCargo.prc_Gravar;
begin
  vMsgCargo := '';
  vErro := False;
  if cdsCargoNOME.AsString = '' then
    vMsgCargo := vMsgCargo + #13 + '*** Informe o CID';
  cdsCargo.Post;
  cdsCargo.ApplyUpdates(0);
end;

procedure TDMCargo.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsCargo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CARGO', 0);
  cdsCargo.Insert;
  cdsCargoID.AsInteger := vAux;
end;

procedure TDMCargo.prc_Localizar(ID: Integer);
begin
  cdsCargo.Close;
  sdsCargo.CommandText := ctCommand;
  if ID <> 0 then
    sdsCargo.CommandText := sdsCargo.CommandText
                         + ' WHERE ID = ' +  IntToStr(ID);
  cdsCargo.Open;
end;

procedure TDMCargo.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
end;

end.
