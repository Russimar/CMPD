unit uConsVencto_Passe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, NxCollection,
  StdCtrls, ExtCtrls, Grids, DBGrids, SMDBGrid, uDMCadPessoa;

type
  TfrmCons_Vecto_Passe = class(TForm)
    pnlCentral: TPanel;
    pnlGrid: TPanel;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    btnConsultar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    NxButton1: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
  private
    ctComando: string;
    fDMCadPessoa: TDMPessoa;
    vDia_Inicial, vDia_Final: Integer;
    procedure prc_Verifica_Dias;
    procedure prc_Abrir_Consulta(dia_inicial: Integer; dia_final: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCons_Vecto_Passe: TfrmCons_Vecto_Passe;

implementation

uses
  DmdDatabase, rsDBUtils, Math;

{$R *.dfm}

procedure TfrmCons_Vecto_Passe.FormShow(Sender: TObject);
begin
  fDMCadPessoa := TDMPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  ctComando := fDMCadPessoa.sdsConsVencto_Passe.CommandText;
  prc_Verifica_Dias;
end;

procedure TfrmCons_Vecto_Passe.prc_Abrir_Consulta(dia_inicial,
  dia_final: Integer);
begin
  fDMCadPessoa.cdsConsVencto_Passe.Close;
  fDMCadPessoa.sdsConsVencto_Passe.CommandText := ctComando;
  fDMCadPessoa.sdsConsVencto_Passe.ParamByName('DATA_INICIO').AsInteger := vDia_Inicial;
  fDMCadPessoa.sdsConsVencto_Passe.ParamByName('DATA_FINAL').AsInteger := vDia_Final;
  fDMCadPessoa.cdsConsVencto_Passe.Open;
end;

procedure TfrmCons_Vecto_Passe.prc_Verifica_Dias;
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    vDia_Inicial := 0;
    vDia_Final := 15;
  end
  else if RadioGroup1.ItemIndex = 1 then
  begin
    vDia_Inicial := 16;
    vDia_Final := 30;
  end
  else if RadioGroup1.ItemIndex = 2 then
  begin
    vDia_Inicial := 31;
    vDia_Final := 60;
  end
  else if RadioGroup1.ItemIndex = 3 then
  begin
    vDia_Inicial := 61;
    vDia_Final := 90;
  end;
end;

procedure TfrmCons_Vecto_Passe.RadioGroup1Click(Sender: TObject);
begin
  prc_Verifica_Dias;
end;

procedure TfrmCons_Vecto_Passe.btnConsultarClick(Sender: TObject);
begin
  prc_Abrir_Consulta(vDia_Inicial, vDia_Final);
  if fDMCadPessoa.cdsConsVencto_Passe.IsEmpty then
  begin
    ShowMessage('Nenhum registro encontrado!');
    Exit;
  end;
end;

procedure TfrmCons_Vecto_Passe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(frmCons_Vecto_Passe);
  Action := Cafree;
end;

procedure TfrmCons_Vecto_Passe.NxButton1Click(Sender: TObject);
begin
  Close;
end;

end.

