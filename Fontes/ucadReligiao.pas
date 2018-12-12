unit ucadReligiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, Menus, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid,
  StdCtrls, NxCollection, ExtCtrls, RzTabs, Mask, DBCtrls, uDMCadReligiao, DB, rsDBUtils;

type
  TfrmCad_Religiao = class(TfrmCadPadrao)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure RzPageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    fDMCadReligiao : TDMReligiao;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCad_Religiao: TfrmCad_Religiao;

implementation

uses uMenu, uUtilPadrao;

{$R *.dfm}

{ TfrmCad_Religiao }

procedure TfrmCad_Religiao.prc_Gravar_Registro;
begin
  fDMCadReligiao.prc_Gravar;
  if fDMCadReligiao.cdsReligiao.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadReligiao.vMsgReligiao, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Religiao.prc_Inserir_Registro;
begin
  fDMCadReligiao.prc_Inserir;
  if fDMCadReligiao.cdsReligiao.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Religiao.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCadReligiao.cdsReligiao.State in [dsEdit, dsInsert]) then
    begin
      fDMCadReligiao.prc_Localizar(fDMCadReligiao.cdsConsultaID.AsInteger);
    end;
  end;
end;

procedure TfrmCad_Religiao.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadReligiao := TDMReligiao.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadReligiao);
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCad_Religiao.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
end;

procedure TfrmCad_Religiao.btnExcluirClick(Sender: TObject);
begin
  inherited;
  fDMCadReligiao.prc_Localizar(fDMCadReligiao.cdsConsultaID.AsInteger);
  if fDMCadReligiao.cdsReligiao.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadReligiao.prc_Excluir;
  NxButton1.Click;
end;

procedure TfrmCad_Religiao.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadReligiao.prc_Consultar(Edit1.Text);
end;

procedure TfrmCad_Religiao.btnAlterarClick(Sender: TObject);
begin
  inherited;
  fDMCadReligiao.prc_Alterar;
end;

procedure TfrmCad_Religiao.btnConfirmarClick(Sender: TObject);
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

procedure TfrmCad_Religiao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadReligiao.cdsReligiao.State in [dsBrowse]) or not (fDMCadReligiao.cdsReligiao.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadReligiao.cdsReligiao.CancelUpdates;
  prc_Habilitar_Campos(sender);
end;

end.
