unit uDMCadReligiao;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMReligiao = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsReligiao: TSQLDataSet;
    dspReligiao: TDataSetProvider;
    cdsReligiao: TClientDataSet;
    dsReligiao: TDataSource;
    sdsConsultaID: TIntegerField;
    sdsConsultaNOME: TStringField;
    cdsConsultaID: TIntegerField;
    cdsConsultaNOME: TStringField;
    sdsReligiaoID: TIntegerField;
    sdsReligiaoNOME: TStringField;
    cdsReligiaoID: TIntegerField;
    cdsReligiaoNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vMsgReligiao: string;
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
  DMReligiao: TDMReligiao;

implementation

uses
  DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMReligiao }

procedure TDMReligiao.prc_Alterar;
begin
  if (cdsReligiao.IsEmpty) or not (cdsReligiao.Active) or (cdsReligiaoID.AsInteger < 1) then
    Exit;
  cdsReligiao.Edit;
end;

procedure TDMReligiao.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + x + '%');
  cdsConsulta.Open;
end;

procedure TDMReligiao.prc_Excluir;
begin
  if not (cdsReligiao.Active) or (cdsReligiao.IsEmpty) then
    exit;
  cdsReligiao.Delete;
  cdsReligiao.ApplyUpdates(0);
end;

procedure TDMReligiao.prc_Gravar;
begin
  vMsgReligiao := '';
  vErro := False;
  if cdsReligiaoNOME.AsString = '' then
    vMsgReligiao := vMsgReligiao + #13 + '*** Informe o Nome';
  cdsReligiao.Post;
  cdsReligiao.ApplyUpdates(0);
end;

procedure TDMReligiao.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsReligiao.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('RELIGIAO', 0);
  cdsReligiao.Insert;
  cdsReligiaoID.AsInteger := vAux;
end;

procedure TDMReligiao.prc_Localizar(ID: Integer);
begin
  cdsReligiao.Close;
  sdsReligiao.CommandText := ctCommand;
  if ID <> 0 then
    sdsReligiao.CommandText := sdsReligiao.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsReligiao.Open;
end;

procedure TDMReligiao.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
end;

end.

