unit DmdDatabase;

interface

uses
  SysUtils, Classes, Forms, Dialogs, IniFiles, DBXpress, IdCoder, IdCoder3to4, IdCoderMIME,
  IdBaseComponent, DB, SqlExpr;

type
  TdmDatabase = class(TDataModule)
    scoPrincipal: TSQLConnection;
    Decoder64: TIdDecoderMIME;
    Encoder64: TIdEncoderMIME;
    procedure DataModuleCreate(Sender: TObject);
  private
    function fnc_ArquivoConfiguracao: string;
    { Private declarations }
  public
    function ProximaSequencia(NomeTabela: string; Filial: Integer): Integer;

    { Public declarations }
  end;

var
  dmDatabase: TdmDatabase;

implementation

const
  cArquivoConfiguracao = 'Config.ini';

{$R *.dfm}

{ TdmDatabase }

function TdmDatabase.fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TdmDatabase.DataModuleCreate(Sender: TObject);
var
  Config: TIniFile;
  vTexto: string;
begin
  scoPrincipal.Connected := False;
  scoPrincipal.KeepConnection := True;
  vTexto := fnc_ArquivoConfiguracao;
  if not FileExists(fnc_ArquivoConfiguracao) then
  begin
    MessageDlg('Arquivo de configuração não encontrado!', mtInformation, [mbOK], 0);
    Exit;
  end;
  Config := TIniFile.Create(fnc_ArquivoConfiguracao);
  scoPrincipal.LoadParamsFromIniFile(fnc_ArquivoConfiguracao);
  try
    try
      scoPrincipal.Params.Values['DRIVERNAME'] := 'INTERBASE';
      scoPrincipal.Params.Values['SQLDIALECT'] := '3';
      scoPrincipal.Params.Values['DATABASE'] := Config.ReadString('ARP', 'DATABASE', '');
      scoPrincipal.Params.Values['USER_NAME'] := Config.ReadString('ARP', 'USERNAME', '');
      scoPrincipal.Params.Values['PASSWORD'] := Decoder64.DecodeString(Config.ReadString('ARP', 'PASSWORD', ''));
      scoPrincipal.Connected := True;
    except
      on E: Exception do
      begin
        raise Exception.Create('Erro ao Conectar ao banco de dados: ' + #13 + 'Mensagem: ' + E.Message
          + #13 + 'Classe: ' + E.ClassName + #13 + #13 + 'Dados da Conexao ARP' + #13 + 'Banco de Dados: ' +
          scoPrincipal.Params.Values['DATABASE'] + #13 + 'Usuário: ' + scoPrincipal.Params.Values['USER_NAME']);
      end;
    end;
  finally
    FreeAndNil(Config);
  end;

end;

function TdmDatabase.ProximaSequencia(NomeTabela: string; Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
  Flag: Boolean;
begin
  Result := 0;
  iSeq := 0;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    scoPrincipal.StartTransaction(ID);
    try
      sds.SQLConnection := scoPrincipal;
      sds.NoMetadata := True;
      sds.GetMetadata := False;
      sds.CommandText := 'SELECT NUMREGISTRO FROM SEQUENCIAL WHERE TABELA = :TABELA AND FILIAL = :FILIAL';
      sds.ParamByName('TABELA').AsString := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;
      sds.Open;

      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;

      if (iSeq = 0) and (sds.IsEmpty) then
        scoPrincipal.ExecuteDirect('INSERT INTO SEQUENCIAL(TABELA,FILIAL,NUMREGISTRO) VALUES(''' + NomeTabela + ''', ''' + IntToStr(Filial) + ''', ''' + IntToStr(0) + ''' )');
      scoPrincipal.Commit(ID);
    except
      scoPrincipal.Rollback(ID);
      raise;
    end;
  finally
    FreeAndNil(sds);
  end;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    dmDatabase.scoPrincipal.StartTransaction(ID);
    try //--
      sds.SQLConnection := dmDatabase.scoPrincipal;

      sds.NoMetadata := True;
      sds.GetMetadata := False;

      sds.CommandText :=
        'UPDATE SEQUENCIAL SET NUMREGISTRO = (SELECT MAX(COALESCE(NUMREGISTRO,0)) + 1 ' + 'FROM SEQUENCIAL ' + 'WHERE TABELA = :TABELA' + ' AND FILIAL = :FILIAL) ' + 'WHERE TABELA = :TABELA'
        + ' AND FILIAL = :FILIAL';

      sds.ParamByName('TABELA').AsString := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;

      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
            Flag := False;
        end;
      end;

      sds.Close;
      sds.CommandText := 'SELECT MAX(COALESCE(NUMREGISTRO,0)) NUMREGISTRO  ' + 'FROM SEQUENCIAL ' + 'WHERE TABELA = :TABELA ' + 'AND FILIAL = :FILIAL';

      sds.ParamByName('TABELA').AsString := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;
      sds.Open;

      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;

      dmDatabase.scoPrincipal.Commit(ID);

      Result := iSeq;

    except
      dmDatabase.scoPrincipal.Rollback(ID);
      raise;
    end;

  finally
    FreeAndNil(sds);
  end;

end;

end.


