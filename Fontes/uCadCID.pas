unit uCadCID;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid,
  StdCtrls, NxCollection, ExtCtrls, RzTabs, UDMCadCID, DB, rsDBUtils, Mask,
  DBCtrls, uUtilPadrao, Menus;

type
  TfrmCadCID = class(TfrmCadPadrao)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    fDMCadCID: TDMCID;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCID: TfrmCadCID;

implementation

uses uMenu;

{$R *.dfm}

{ TfrmCadCID }

procedure TfrmCadCID.prc_Gravar_Registro;
begin
  fDMCadCID.prc_Gravar;
  if fDMCadCID.cdsCID.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadCID.vMsgCID, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadCID.prc_Inserir_Registro;
begin
  fDMCadCID.prc_Inserir;
  if fDMCadCID.cdsCID.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadCID.btnAlterarClick(Sender: TObject);
begin
  inherited;
  fDMCadCID.prc_Alterar;
end;

procedure TfrmCadCID.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadCID.cdsCID.State in [dsBrowse]) or not (fDMCadCID.cdsCID.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadCID.cdsCID.CancelUpdates;
  prc_Habilitar_Campos(sender);
end;

procedure TfrmCadCID.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadCID.prc_Consultar(Edit1.Text);
end;

procedure TfrmCadCID.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
end;

procedure TfrmCadCID.btnConfirmarClick(Sender: TObject);
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

procedure TfrmCadCID.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadCID := TDMCID.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadCID);
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadCID.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCadCID.cdsCID.State in [dsEdit, dsInsert]) then
    begin
      fDMCadCID.prc_Localizar(fDMCadCID.cdsConsultaCIDID.AsInteger);
    end;
  end;
end;

procedure TfrmCadCID.btnExcluirClick(Sender: TObject);
begin
  inherited;
  fDMCadCID.prc_Localizar(fDMCadCID.cdsConsultaCIDID.AsInteger);
  if fDMCadCID.cdsCID.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadCID.prc_Excluir;
  NxButton1.Click;
end;

end.
