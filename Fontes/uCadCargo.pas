unit uCadCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, Menus, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid, uUtilPadrao,
  StdCtrls, NxCollection, ExtCtrls, RzTabs, Mask, DBCtrls, uDMCadCargo, DB, rsDBUtils;

type
  TfrmCad_Cargo = class(TfrmCadPadrao)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    fDMCadCargo : TDMCargo;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCad_Cargo: TfrmCad_Cargo;

implementation

uses uMenu;


{$R *.dfm}

{ TfrmCad_Cargo }

procedure TfrmCad_Cargo.prc_Gravar_Registro;
begin
  fDMCadCargo.prc_Gravar;
  if fDMCadCargo.cdsCargo.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadCargo.vMsgCargo, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Cargo.prc_Inserir_Registro;
begin
  fDMCadCargo.prc_Inserir;
  if fDMCadCargo.cdsCargo.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Cargo.btnAlterarClick(Sender: TObject);
begin
  inherited;
  fDMCadCargo.prc_Alterar;
end;

procedure TfrmCad_Cargo.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadCargo.cdsCargo.State in [dsBrowse]) or not (fDMCadCargo.cdsCargo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadCargo.cdsCargo.CancelUpdates;
  prc_Habilitar_Campos(sender);
end;

procedure TfrmCad_Cargo.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadCargo.prc_Consultar(Edit1.Text);
end;

procedure TfrmCad_Cargo.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadCargo := TDMCargo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCargo);
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCad_Cargo.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCadCargo.cdsCargo.State in [dsEdit, dsInsert]) then
    begin
      fDMCadCargo.prc_Localizar(fDMCadCargo.cdsConsultaID.AsInteger);
    end;
  end;
end;

procedure TfrmCad_Cargo.btnExcluirClick(Sender: TObject);
begin
  inherited;
  fDMCadCargo.prc_Localizar(fDMCadCargo.cdsConsultaID.AsInteger);
  if fDMCadCargo.cdsCargo.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadCargo.prc_Excluir;
  NxButton1.Click;
end;

procedure TfrmCad_Cargo.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
end;

procedure TfrmCad_Cargo.btnConfirmarClick(Sender: TObject);
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

end.
