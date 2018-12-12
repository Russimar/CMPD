unit UConsAniversario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls,
  RzLstBox, RzChkLst, NxCollection, ExtCtrls, Grids, DBGrids, SMDBGrid, SqlExpr, uDMCadPessoa;

type
  TfrmConsAniversario = class(TForm)
    Panel1: TPanel;
    NxPanel1: TNxPanel;
    RzCheckList1: TRzCheckList;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    fDMCadPessoa: TDMPessoa;
    ctComandoPessoa: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsAniversario: TfrmConsAniversario;

implementation

uses
  uUtilPadrao, rsDBUtils, DmdDatabase;

{$R *.dfm}

procedure TfrmConsAniversario.FormShow(Sender: TObject);
begin
  fDMCadPessoa := TDMPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  ctComandoPessoa := fDMCadPessoa.qAniversario.SQL.Text;
end;

procedure TfrmConsAniversario.btnConsultarClick(Sender: TObject);
var
  vMeses: string;
  i: Integer;
  vCheck: Boolean;
begin
  fDMCadPessoa.mAniversario.EmptyDataSet;
  vCheck := False;
  vMeses := '(';
  for i := 0 to 11 do
  begin
    if RzCheckList1.ItemChecked[i] then
    begin
      vMeses := vMeses + FormatFloat('00', (i + 1)) + ',';
      vCheck := True;
    end;
  end;
  if not vCheck then
  begin
    MessageDlg('Nenhum mês foi selecionado', mtError, [mbOK], 0);
    Exit;
  end;

  vMeses := vMeses + ')';
  vMeses := StringReplace(vMeses, ',)', ')', [rfReplaceAll, rfIgnoreCase]);
  fDMCadPessoa.qAniversario.Close;
  fDMCadPessoa.qAniversario.SQL.Text := ctComandoPessoa + ' where extract(month from A.DATA_NASCIMENTO) in' + (vMeses);
  fDMCadPessoa.qAniversario.Open;
  if fDMCadPessoa.qAniversario.IsEmpty then
    ShowMessage('Nenhum registro encontrado');
  while not fDMCadPessoa.qAniversario.Eof do
  begin
    fDMCadPessoa.mAniversario.Insert;
    fDMCadPessoa.mAniversarioCodigo.AsInteger := fDMCadPessoa.qAniversarioCODIGO.AsInteger;
    fDMCadPessoa.mAniversarioNome.AsString := fDMCadPessoa.qAniversarioNOME.AsString;
    fDMCadPessoa.mAniversarioDia.AsString := FormatFloat('00', fDMCadPessoa.qAniversarioDIA.AsInteger);
    fDMCadPessoa.mAniversarioCidade.AsString := fDMCadPessoa.qAniversarioCIDADE.AsString;
    fDMCadPessoa.mAniversarioFone.AsString := fDMCadPessoa.qAniversarioFONE.AsString;
    fDMCadPessoa.mAniversarioMes.AsString := fDMCadPessoa.qAniversarioMES.AsString;
    fDMCadPessoa.mAniversarioBairro.AsString := fDMCadPessoa.qAniversarioBAIRRO.AsString;
    fDMCadPessoa.mAniversario.Post;
    fDMCadPessoa.qAniversario.Next;
  end;
  fDMCadPessoa.mAniversario.Open;
  fDMCadPessoa.mAniversario.First;
end;

procedure TfrmConsAniversario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmConsAniversario);
  Action := Cafree;
end;

procedure TfrmConsAniversario.btnImprimirClick(Sender: TObject);
var
  vArq : String;
begin
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Aniversarios.fr3';
  if FileExists(vArq) then
    fDMCadPessoa.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  fDMCadPessoa.frxReport1.ShowReport;
end;

end.

