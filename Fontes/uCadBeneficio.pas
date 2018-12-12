unit uCadBeneficio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, Menus, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid,
  StdCtrls, NxCollection, ExtCtrls, RzTabs,  DB, rsDBUtils, uDMCadBeneficio,
  Mask, DBCtrls;

type
  TfrmCad_Beneficio = class(TfrmCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    fDMCad_Beneficio : TDMBeneficio;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCad_Beneficio: TfrmCad_Beneficio;

implementation

uses uMenu, uUtilPadrao;

{$R *.dfm}

{ TfrmCad_Beneficio }

procedure TfrmCad_Beneficio.prc_Gravar_Registro;
begin
  fDMCad_Beneficio.prc_Gravar;
  if fDMCad_Beneficio.cdsBeneficio.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCad_Beneficio.vMsgBeneficio, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Beneficio.prc_Inserir_Registro;
begin
  fDMCad_Beneficio.prc_Inserir;
  if fDMCad_Beneficio.cdsBeneficio.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Beneficio.FormShow(Sender: TObject);
begin
  inherited;
  fDMCad_Beneficio := TDMBeneficio.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCad_Beneficio);
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCad_Beneficio.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCad_Beneficio.cdsBeneficio.State in [dsEdit, dsInsert]) then
    begin
      fDMCad_Beneficio.prc_Localizar(fDMCad_Beneficio.cdsConsultaID.AsInteger);
    end;
  end;
end;

procedure TfrmCad_Beneficio.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
end;

procedure TfrmCad_Beneficio.btnExcluirClick(Sender: TObject);
begin
  inherited;
  fDMCad_Beneficio.prc_Localizar(fDMCad_Beneficio.cdsConsultaID.AsInteger);
  if fDMCad_Beneficio.cdsBeneficio.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCad_Beneficio.prc_Excluir;
  NxButton1.Click;
end;

procedure TfrmCad_Beneficio.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCad_Beneficio.prc_Consultar(Edit1.Text);
end;

procedure TfrmCad_Beneficio.btnAlterarClick(Sender: TObject);
begin
  inherited;
  fDMCad_Beneficio.prc_Alterar;
end;

procedure TfrmCad_Beneficio.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  vErro := False;
  prc_Gravar_Registro;
  if not (vErro) then
  begin
    NxButton1.Click;
    prc_Habilitar_Campos(Sender);
  end;
end;

procedure TfrmCad_Beneficio.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCad_Beneficio.cdsBeneficio.State in [dsBrowse]) or not (fDMCad_Beneficio.cdsBeneficio.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCad_Beneficio.cdsBeneficio.CancelUpdates;
  prc_Habilitar_Campos(sender);
end;

end.
