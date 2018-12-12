unit uCadParentesco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid,
  StdCtrls, NxCollection, ExtCtrls, RzTabs, Mask, DBCtrls, uDMCadParentesco, uUtilPadrao, DB, rsDBUtils;

type
  TfrmCadParentesco = class(TfrmCadPadrao)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fDMCadParentesco: TDMParentesco;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadParentesco: TfrmCadParentesco;

implementation

uses uMenu;



{$R *.dfm}

{ TfrmCadParentesco }

procedure TfrmCadParentesco.prc_Gravar_Registro;
begin
  fDMCadParentesco.prc_Gravar;
  if fDMCadParentesco.cdsParentesco.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadParentesco.vMsgParentesco, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadParentesco.prc_Inserir_Registro;
begin
  fDMCadParentesco.prc_Inserir;
  if fDMCadParentesco.cdsParentesco.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadParentesco.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
end;

procedure TfrmCadParentesco.btnExcluirClick(Sender: TObject);
begin
  inherited;
  fDMCadParentesco.prc_Localizar(fDMCadParentesco.cdsConsultaID.AsInteger);
  if fDMCadParentesco.cdsParentesco.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadParentesco.prc_Excluir;
  NxButton1.Click;
end;

procedure TfrmCadParentesco.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadParentesco.prc_Consultar(Edit1.Text);
end;

procedure TfrmCadParentesco.btnAlterarClick(Sender: TObject);
begin
  inherited;
  fDMCadParentesco.prc_Alterar;
end;

procedure TfrmCadParentesco.btnConfirmarClick(Sender: TObject);
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

procedure TfrmCadParentesco.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadParentesco.cdsParentesco.State in [dsBrowse]) or not (fDMCadParentesco.cdsParentesco.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadParentesco.cdsParentesco.CancelUpdates;
  prc_Habilitar_Campos(sender);
end;

procedure TfrmCadParentesco.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCadParentesco.cdsParentesco.State in [dsEdit, dsInsert]) then
    begin
      fDMCadParentesco.prc_Localizar(fDMCadParentesco.cdsParentescoID.AsInteger);
    end;
  end;
end;

procedure TfrmCadParentesco.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadParentesco := TDMParentesco.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadParentesco);
  RzPageControl1.ActivePage := TS_Consulta;
end;

end.
