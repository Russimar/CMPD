unit uCadPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uCadPadrao,
  UCBase, Grids, DBGrids, SMDBGrid, StdCtrls, NxCollection, ExtCtrls, RzTabs, uDMCadPessoa, DB,
  rsDBUtils, Mask, DBCtrls, RxLookup, uUtilPadrao, AppEvnts, ComCtrls, ToolEdit, RXDBCtrl, RzPanel,
  Menus, UConsAniversario, RxDBComb;

type
  TfrmCad_Pessoa = class(TfrmCadPadrao)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label12: TLabel;
    pnlCor: TPanel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label17: TLabel;
    DateTimePicker2: TDateTimePicker;
    chkTemporario: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    cbxUF: TDBComboBox;
    TS_Acomp: TRzTabSheet;
    pnlAcomp: TPanel;
    Label35: TLabel;
    DBEdit29: TDBEdit;
    pnlBotaoAcomp: TPanel;
    btnInserirAcomp: TNxButton;
    btnAlterarAcomp: TNxButton;
    btnExcluirAcomp: TNxButton;
    btnConfirmarAcomp: TNxButton;
    btnCancelarAcomp: TNxButton;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    DBEdit9: TDBEdit;
    DBEdit20: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit30: TDBEdit;
    pnlGridAcomp: TPanel;
    DBGrid1: TDBGrid;
    Label37: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label38: TLabel;
    DBEdit31: TDBEdit;
    Label39: TLabel;
    DBEdit32: TDBEdit;
    Label41: TLabel;
    DBDateEdit3: TDBDateEdit;
    RzGroupBox1: TRzGroupBox;
    DBEdit33: TDBEdit;
    Label42: TLabel;
    RzGroupBox2: TRzGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBDateEdit4: TDBDateEdit;
    DBDateEdit5: TDBDateEdit;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBDateEdit6: TDBDateEdit;
    Label47: TLabel;
    DBDateEdit7: TDBDateEdit;
    Label48: TLabel;
    DBDateEdit8: TDBDateEdit;
    Label49: TLabel;
    DBDateEdit9: TDBDateEdit;
    TS_Renda: TRzTabSheet;
    pnlOutras: TPanel;
    pnlGridRenda: TPanel;
    DBGrid2: TDBGrid;
    pnlRenda: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    pnlBotaoRenda: TPanel;
    btnInserirRenda: TNxButton;
    btnAlterarRenda: TNxButton;
    btnExcluirRenda: TNxButton;
    btnConfirmarRenda: TNxButton;
    btnCancelarRenda: TNxButton;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBRadioGroup5: TDBRadioGroup;
    Label52: TLabel;
    DBEdit21: TDBEdit;
    Label43: TLabel;
    DBEdit34: TDBEdit;
    Label54: TLabel;
    DBEdit37: TDBEdit;
    RzGroupBox3: TRzGroupBox;
    chkEstacionamento: TDBCheckBox;
    Label55: TLabel;
    DBDateEdit10: TDBDateEdit;
    Label56: TLabel;
    DBDateEdit11: TDBDateEdit;
    DBMemo1: TDBMemo;
    Label57: TLabel;
    Label58: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label59: TLabel;
    DBEdit38: TDBEdit;
    Label60: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label61: TLabel;
    DBEdit39: TDBEdit;
    Label62: TLabel;
    DBEdit40: TDBEdit;
    TS_Beneficio: TRzTabSheet;
    pnlGeralBeneficio: TPanel;
    pnlGridBeneficio: TPanel;
    DBGrid3: TDBGrid;
    pnlBeneficio: TPanel;
    Label63: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    DBEdit41: TDBEdit;
    DBEdit43: TDBEdit;
    pnlBotaoBeneficio: TPanel;
    btnInserirBeneficio: TNxButton;
    btnAlterarBeneficio: TNxButton;
    btnExcluirBeneficio: TNxButton;
    btnConfirmarBeneficio: TNxButton;
    btnCancelarBeneficio: TNxButton;
    RxDBLookupCombo7: TRxDBLookupCombo;
    ts_CID: TRzTabSheet;
    pnlBotaoCID: TPanel;
    btnInserirCID: TNxButton;
    btnAlterarCID: TNxButton;
    btnExcluirCID: TNxButton;
    btnConfirmarCID: TNxButton;
    btnCancelarCID: TNxButton;
    pnlCID: TPanel;
    Label67: TLabel;
    comboCID: TRxDBLookupCombo;
    Label65: TLabel;
    Label68: TLabel;
    DBDateEdit12: TDBDateEdit;
    DBDateEdit13: TDBDateEdit;
    DBCheckBox4: TDBCheckBox;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label40: TLabel;
    DBEdit42: TDBEdit;
    Label69: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    chkFalecido: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure btnInserirAcompClick(Sender: TObject);
    procedure btnAlterarAcompClick(Sender: TObject);
    procedure btnConfirmarAcompClick(Sender: TObject);
    procedure btnCancelarAcompClick(Sender: TObject);
    procedure btnExcluirAcompClick(Sender: TObject);
    procedure btnInserirRendaClick(Sender: TObject);
    procedure btnAlterarRendaClick(Sender: TObject);
    procedure btnExcluirRendaClick(Sender: TObject);
    procedure btnConfirmarRendaClick(Sender: TObject);
    procedure btnCancelarRendaClick(Sender: TObject);
    procedure chkEstacionamentoClick(Sender: TObject);
    procedure Aniversariantes1Click(Sender: TObject);
    procedure btnInserirBeneficioClick(Sender: TObject);
    procedure btnAlterarBeneficioClick(Sender: TObject);
    procedure btnExcluirBeneficioClick(Sender: TObject);
    procedure btnConfirmarBeneficioClick(Sender: TObject);
    procedure btnCancelarBeneficioClick(Sender: TObject);
    procedure btnInserirCIDClick(Sender: TObject);
    procedure btnAlterarCIDClick(Sender: TObject);
    procedure btnExcluirCIDClick(Sender: TObject);
    procedure btnConfirmarCIDClick(Sender: TObject);
    procedure btnCancelarCIDClick(Sender: TObject);
  private
    { Private declarations }
    ffrmConsAniversario : TfrmConsAniversario;
    fDMCadPessoa: TDMPessoa;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Muda_Cor;
    procedure prc_Habilita_Acomp(sender: TObject);
    procedure prc_Habilita_Renda(sender: TObject);
    procedure prc_Habilita_Beneficio(sender: TObject);
    procedure prc_Habilita_CID(sender: TObject);
    procedure prc_Verifica_Vaga;
  public
    { Public declarations }
  end;

var
  frmCad_Pessoa: TfrmCad_Pessoa;

implementation

uses
  uMenu, Math;

{$R *.dfm}

{ TfrmCad_Pessoa }

procedure TfrmCad_Pessoa.prc_Inserir_Registro;
begin
  RzPageControl2.ActivePage := TS_Dados;
  fDMCadPessoa.prc_Inserir;
  if fDMCadPessoa.cdsPessoa.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Pessoa.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadPessoa := TDMPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  fDMCadPessoa.cdsCidade.Close;
  fDMCadPessoa.cdsCidade.Open;
  fDMCadPessoa.cdsTAB_CID.Close;
  fDMCadPessoa.cdsTAB_CID.Open;
  fDMCadPessoa.cdsParentesco.Close;
  fDMCadPessoa.cdsParentesco.Open;
  fDMCadPessoa.prc_Abrir_Deficiencia;
  fDMCadPessoa.cdsReligiao.Close;
  fDMCadPessoa.cdsReligiao.Open;
  fDMCadPessoa.cdsBeneficio.Close;
  fDMCadPessoa.cdsBeneficio.Open;
  fDMCadPessoa.cdsEmpresa.Open;
  prc_Verifica_Vaga;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCad_Pessoa.btnExcluirClick(Sender: TObject);
begin
  inherited;
  fDMCadPessoa.prc_Localizar(fDMCadPessoa.cdsConsultaCODIGO.AsInteger);
  if fDMCadPessoa.cdsPessoa.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadPessoa.prc_Excluir;
  NxButton1.Click;
end;

procedure TfrmCad_Pessoa.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
  prc_Habilita_Acomp(Sender);
  prc_Habilita_Renda(Sender);
  prc_Habilita_Beneficio(Sender);
  prc_Habilita_CID(Sender);
end;

procedure TfrmCad_Pessoa.prc_Gravar_Registro;
begin
  fDMCadPessoa.prc_Gravar;
  if fDMCadPessoa.cdsPessoa.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadPessoa.vMsgPessoa, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCad_Pessoa.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  vErro := False;
  prc_Gravar_Registro;
  if not (vErro) then
  begin
    NxButton1.Click;
    prc_Habilitar_Campos(Sender);
    prc_Habilita_Acomp(Sender);
    prc_Habilita_Renda(Sender);
    prc_Habilita_Beneficio(Sender);
    prc_Habilita_CID(Sender);
  end;
end;

procedure TfrmCad_Pessoa.btnAlterarClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_Acomp(Sender);
  prc_Habilita_Renda(Sender);
  prc_Habilita_Beneficio(Sender);
  prc_Habilita_CID(Sender);
  fDMCadPessoa.prc_Alterar;
end;

procedure TfrmCad_Pessoa.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadPessoa.cdsPessoa.State in [dsBrowse]) or not (fDMCadPessoa.cdsPessoa.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadPessoa.cdsPessoa.CancelUpdates;
  prc_Habilita_Acomp(Sender);
  prc_Habilita_Renda(Sender);
  prc_Habilita_Beneficio(Sender);
  prc_Habilita_CID(Sender);
  prc_Habilitar_Campos(Sender);
end;

procedure TfrmCad_Pessoa.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadPessoa.prc_Consultar(Edit1.Text);
end;

procedure TfrmCad_Pessoa.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCadPessoa.cdsPessoa.State in [dsEdit, dsInsert]) then
    begin
      fDMCadPessoa.prc_Abrir_Acomp(fDMCadPessoa.cdsConsultaCODIGO.AsInteger);
      fDMCadPessoa.prc_Abrir_Renda(fDMCadPessoa.cdsConsultaCODIGO.AsInteger);
      fDMCadPessoa.prc_Abrir_Beneficio(fDMCadPessoa.cdsConsultaCODIGO.AsInteger);
      fDMCadPessoa.prc_Localizar(fDMCadPessoa.cdsConsultaCODIGO.AsInteger);
      DateTimePicker1.Date := fDMCadPessoa.cdsPessoaDTCADASTRO.AsDateTime;
      DateTimePicker2.Date := fDMCadPessoa.cdsPessoaDTALTERACAO.AsDateTime;
    end;
  end;
end;

procedure TfrmCad_Pessoa.prc_Muda_Cor;
begin
  case fDMCadPessoa.cdsPessoaID_DEFICIENCIA.AsInteger of
    1:
      pnlCor.Color := clRed;
    2:
      pnlCor.Color := clYellow;
    3:
      pnlCor.Color := clBlue;
    4:
      pnlCor.Color := clGreen;
    5:
      pnlCor.Color := clWhite;
  end;

end;

procedure TfrmCad_Pessoa.RxDBLookupCombo2Change(Sender: TObject);
begin
  inherited;
  prc_Muda_Cor;
end;

procedure TfrmCad_Pessoa.SMDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  prc_Muda_Cor;
end;

procedure TfrmCad_Pessoa.DBEdit4Exit(Sender: TObject);
var
  vNomeAux: string;
begin
  inherited;
  if not (ValidaCPF(DBEdit4.Text)) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadPessoa.cdsPessoaCPF.Clear;
    DBEdit4.SetFocus;
  end;
  if not (fDMCadPessoa.cdsPessoaCPF.IsNull) then
  begin
    vNomeAux := VerificaDuplicidade(DBEdit4.Text, 'F', fDMCadPessoa.cdsPessoaCODIGO.AsInteger, 0);
    if trim(vNomeAux) <> '' then
    begin
      ShowMessage('CPF já utilizado para ' + vNomeAux + '!');
      fDMCadPessoa.cdsPessoaCPF.Clear;
      DBEdit4.SetFocus;
    end;
  end;

end;

procedure TfrmCad_Pessoa.DBEdit23Exit(Sender: TObject);
begin
  inherited;
  if not (ValidaCPF(DBEdit23.Text)) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadPessoa.cdsPessoaAcompCPF.Clear;
    DBEdit23.SetFocus;
  end;

end;

procedure TfrmCad_Pessoa.btnInserirAcompClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_Acomp(sender);
  fDMCadPessoa.prc_Abrir_Acomp(fDMCadPessoa.cdsPessoaCODIGO.AsInteger);
  fDMCadPessoa.prc_Inserir_Acomp;
end;

procedure TfrmCad_Pessoa.prc_Habilita_Acomp(sender: TObject);
begin
  if ((Sender as TNxButton).Name = 'btnInserir') or ((Sender as TNxButton).Name = 'btnAlterar') then
  begin
    pnlBotaoAcomp.Enabled := True;
    pnlAcomp.Enabled := False;
    btnInserirAcomp.Enabled := True;
    btnConfirmarAcomp.Enabled := False;
    btnAlterarAcomp.Enabled := True;
    btnExcluirAcomp.Enabled := True;
    btnCancelarAcomp.Enabled := False;
  end;
  if ((Sender as TNxButton).Name = 'btnConfirmar') or ((Sender as TNxButton).Name = 'btnCancelar') then
  begin
    pnlBotaoAcomp.Enabled := False;
    pnlAcomp.Enabled := True;
    btnInserirAcomp.Enabled := False;
    btnConfirmarAcomp.Enabled := True;
    btnAlterarAcomp.Enabled := False;
    btnExcluirAcomp.Enabled := False;
    btnCancelarAcomp.Enabled := True;
  end;

  if (Sender as TNxButton).Name = 'btnInserirAcomp' then
  begin
    pnlAcomp.Enabled := True;
    btnInserirAcomp.Enabled := False;
    btnConfirmarAcomp.Enabled := True;
    btnAlterarAcomp.Enabled := False;
    btnExcluirAcomp.Enabled := False;
    btnCancelarAcomp.Enabled := True;
    DBEdit20.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnAlterarAcomp' then
  begin
    pnlAcomp.Enabled := True;
    btnInserirAcomp.Enabled := False;
    btnConfirmarAcomp.Enabled := True;
    btnAlterarAcomp.Enabled := False;
    btnExcluirAcomp.Enabled := False;
    btnCancelarAcomp.Enabled := True;
    DBEdit20.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnConfirmarAcomp' then
  begin
    pnlAcomp.Enabled := False;
    btnInserirAcomp.Enabled := True;
    btnConfirmarAcomp.Enabled := False;
    btnAlterarAcomp.Enabled := True;
    btnExcluirAcomp.Enabled := True;
    btnCancelarAcomp.Enabled := False;
  end;
  if (Sender as TNxButton).Name = 'btnCancelarAcomp' then
  begin
    pnlAcomp.Enabled := False;
    btnInserirAcomp.Enabled := True;
    btnConfirmarAcomp.Enabled := False;
    btnAlterarAcomp.Enabled := True;
    btnExcluirAcomp.Enabled := True;
    btnCancelarAcomp.Enabled := False;
  end;
end;

procedure TfrmCad_Pessoa.btnAlterarAcompClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaAcomp.IsEmpty then
    exit;
  prc_Habilita_Acomp(sender);
  fDMCadPessoa.cdsPessoaAcomp.Edit;
end;

procedure TfrmCad_Pessoa.btnConfirmarAcompClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaAcomp.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoaAcomp.Post;
  prc_Habilita_Acomp(sender);
end;

procedure TfrmCad_Pessoa.btnCancelarAcompClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoa.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoaAcomp.Cancel;
  prc_Habilita_Acomp(sender);
end;

procedure TfrmCad_Pessoa.btnExcluirAcompClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaAcomp.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir esse registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadPessoa.cdsPessoaAcomp.Delete;
end;

procedure TfrmCad_Pessoa.prc_Habilita_Renda(sender: TObject);
begin
  if ((Sender as TNxButton).Name = 'btnInserir') or ((Sender as TNxButton).Name = 'btnAlterar') then
  begin
    pnlBotaoRenda.Enabled := True;
    pnlRenda.Enabled := False;
    btnInserirRenda.Enabled := True;
    btnConfirmarRenda.Enabled := False;
    btnAlterarRenda.Enabled := True;
    btnExcluirRenda.Enabled := True;
    btnCancelarRenda.Enabled := False;
  end;
  if ((Sender as TNxButton).Name = 'btnConfirmar') or ((Sender as TNxButton).Name = 'btnCancelar') then
  begin
    pnlBotaoRenda.Enabled := False;
    pnlRenda.Enabled := False;
    btnInserirRenda.Enabled := False;
    btnConfirmarRenda.Enabled := True;
    btnAlterarRenda.Enabled := False;
    btnExcluirRenda.Enabled := False;
    btnCancelarRenda.Enabled := True;
  end;

  if (Sender as TNxButton).Name = 'btnInserirRenda' then
  begin
    pnlRenda.Enabled := True;
    btnInserirRenda.Enabled := False;
    btnConfirmarRenda.Enabled := True;
    btnAlterarRenda.Enabled := False;
    btnExcluirRenda.Enabled := False;
    btnCancelarRenda.Enabled := True;
    DBEdit36.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnAlterarRenda' then
  begin
    pnlRenda.Enabled := True;
    btnInserirRenda.Enabled := False;
    btnConfirmarRenda.Enabled := True;
    btnAlterarRenda.Enabled := False;
    btnExcluirRenda.Enabled := False;
    btnCancelarRenda.Enabled := True;
    DBEdit36.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnConfirmarRenda' then
  begin
    pnlRenda.Enabled := False;
    btnInserirRenda.Enabled := True;
    btnConfirmarRenda.Enabled := False;
    btnAlterarRenda.Enabled := True;
    btnExcluirRenda.Enabled := True;
    btnCancelarRenda.Enabled := False;
  end;
  if (Sender as TNxButton).Name = 'btnCancelarRenda' then
  begin
    pnlRenda.Enabled := False;
    btnInserirRenda.Enabled := True;
    btnConfirmarRenda.Enabled := False;
    btnAlterarRenda.Enabled := True;
    btnExcluirRenda.Enabled := True;
    btnCancelarRenda.Enabled := False;
  end;
end;

procedure TfrmCad_Pessoa.btnInserirRendaClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_Renda(sender);
  fDMCadPessoa.prc_Abrir_Renda(fDMCadPessoa.cdsPessoaCODIGO.AsInteger);
  fDMCadPessoa.prc_Inserir_Renda;
end;

procedure TfrmCad_Pessoa.btnAlterarRendaClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaRenda.IsEmpty then
    exit;
  prc_Habilita_Renda(sender);
  fDMCadPessoa.cdsPessoaRenda.Edit;
end;

procedure TfrmCad_Pessoa.btnExcluirRendaClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaRenda.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir esse registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadPessoa.cdsPessoaRenda.Delete;
end;

procedure TfrmCad_Pessoa.btnConfirmarRendaClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaRenda.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoaRenda.Post;
  prc_Habilita_Renda(sender);
end;

procedure TfrmCad_Pessoa.btnCancelarRendaClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoa.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoaRenda.Cancel;
  prc_Habilita_Renda(sender);
end;

procedure TfrmCad_Pessoa.prc_Verifica_Vaga;
begin
  if not chkEstacionamento.Checked then
  begin
    DBDateEdit10.Enabled := False;
    DBDateEdit11.Enabled := False;
    DBDateEdit10.Date := 0;
    DBDateEdit11.Date := 0;
  end
  else
  begin
    DBDateEdit10.Enabled := True;
    DBDateEdit11.Enabled := True;
  end;
end;

procedure TfrmCad_Pessoa.chkEstacionamentoClick(Sender: TObject);
begin
  inherited;
  prc_Verifica_Vaga;
end;

procedure TfrmCad_Pessoa.Aniversariantes1Click(Sender: TObject);
begin
  inherited;
  ffrmConsAniversario := TfrmConsAniversario.Create(Self);
  ffrmConsAniversario.ShowModal;
  FreeAndNil(ffrmConsAniversario);
end;

procedure TfrmCad_Pessoa.prc_Habilita_Beneficio(sender: TObject);
begin
  if ((Sender as TNxButton).Name = 'btnInserir') or ((Sender as TNxButton).Name = 'btnAlterar') then
  begin
    pnlBotaoBeneficio.Enabled := True;
    pnlBeneficio.Enabled := False;
    btnInserirBeneficio.Enabled := True;
    btnConfirmarBeneficio.Enabled := False;
    btnAlterarBeneficio.Enabled := True;
    btnExcluirBeneficio.Enabled := True;
    btnCancelarBeneficio.Enabled := False;
  end;
  if ((Sender as TNxButton).Name = 'btnConfirmar') or ((Sender as TNxButton).Name = 'btnCancelar') then
  begin
    pnlBotaoBeneficio.Enabled := False;
    pnlBeneficio.Enabled := False;
    btnInserirBeneficio.Enabled := False;
    btnConfirmarBeneficio.Enabled := True;
    btnAlterarBeneficio.Enabled := False;
    btnExcluirBeneficio.Enabled := False;
    btnCancelarBeneficio.Enabled := True;
  end;

  if (Sender as TNxButton).Name = 'btnInserirBeneficio' then
  begin
    pnlBeneficio.Enabled := True;
    btnInserirBeneficio.Enabled := False;
    btnConfirmarBeneficio.Enabled := True;
    btnAlterarBeneficio.Enabled := False;
    btnExcluirBeneficio.Enabled := False;
    btnCancelarBeneficio.Enabled := True;
    RxDBLookupCombo7.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnAlterarBeneficio' then
  begin
    pnlBeneficio.Enabled := True;
    btnInserirBeneficio.Enabled := False;
    btnConfirmarBeneficio.Enabled := True;
    btnAlterarBeneficio.Enabled := False;
    btnExcluirBeneficio.Enabled := False;
    btnCancelarBeneficio.Enabled := True;
    RxDBLookupCombo7.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnConfirmarBeneficio' then
  begin
    pnlBeneficio.Enabled := False;
    btnInserirBeneficio.Enabled := True;
    btnConfirmarBeneficio.Enabled := False;
    btnAlterarBeneficio.Enabled := True;
    btnExcluirBeneficio.Enabled := True;
    btnCancelarBeneficio.Enabled := False;
  end;
  if (Sender as TNxButton).Name = 'btnCancelarBeneficio' then
  begin
    pnlBeneficio.Enabled := False;
    btnInserirBeneficio.Enabled := True;
    btnConfirmarBeneficio.Enabled := False;
    btnAlterarBeneficio.Enabled := True;
    btnExcluirBeneficio.Enabled := True;
    btnCancelarBeneficio.Enabled := False;
  end;

end;

procedure TfrmCad_Pessoa.btnInserirBeneficioClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_Beneficio(sender);
  fDMCadPessoa.prc_Abrir_Beneficio(fDMCadPessoa.cdsPessoaCODIGO.AsInteger);
  fDMCadPessoa.prc_Inserir_Beneficio;
end;

procedure TfrmCad_Pessoa.btnAlterarBeneficioClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaBeneficio.IsEmpty then
    exit;
  prc_Habilita_Beneficio(sender);
  fDMCadPessoa.cdsPessoaBeneficio.Edit;
end;

procedure TfrmCad_Pessoa.btnExcluirBeneficioClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaBeneficio.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir esse registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadPessoa.cdsPessoaBeneficio.Delete;
end;

procedure TfrmCad_Pessoa.btnConfirmarBeneficioClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoaBeneficio.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoaBeneficio.Post;
  prc_Habilita_Beneficio(sender);
end;

procedure TfrmCad_Pessoa.btnCancelarBeneficioClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoa.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoaBeneficio.Cancel;
  prc_Habilita_Beneficio(sender);
end;

procedure TfrmCad_Pessoa.prc_Habilita_CID(sender: TObject);
begin
  if ((Sender as TNxButton).Name = 'btnInserir') or ((Sender as TNxButton).Name = 'btnAlterar') then
  begin
    pnlBotaoCID.Enabled := True;
    pnlCID.Enabled := False;
    btnInserirCID.Enabled := True;
    btnConfirmarCID.Enabled := False;
    btnAlterarCID.Enabled := True;
    btnExcluirCID.Enabled := True;
    btnCancelarCID.Enabled := False;
  end;
  if ((Sender as TNxButton).Name = 'btnConfirmar') or ((Sender as TNxButton).Name = 'btnCancelar') then
  begin
    pnlBotaoCID.Enabled := False;
    pnlCID.Enabled := False;
    btnInserirCID.Enabled := False;
    btnConfirmarCID.Enabled := True;
    btnAlterarCID.Enabled := False;
    btnExcluirCID.Enabled := False;
    btnCancelarCID.Enabled := True;
  end;

  if (Sender as TNxButton).Name = 'btnInserirCID' then
  begin
    pnlCID.Enabled := True;
    btnInserirCID.Enabled := False;
    btnConfirmarCID.Enabled := True;
    btnAlterarCID.Enabled := False;
    btnExcluirCID.Enabled := False;
    btnCancelarCID.Enabled := True;
    comboCID.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnAlterarCID' then
  begin
    pnlCID.Enabled := True;
    btnInserirCID.Enabled := False;
    btnConfirmarCID.Enabled := True;
    btnAlterarCID.Enabled := False;
    btnExcluirCID.Enabled := False;
    btnCancelarCID.Enabled := True;
    comboCID.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnConfirmarCID' then
  begin
    pnlCID.Enabled := False;
    btnInserirCID.Enabled := True;
    btnConfirmarCID.Enabled := False;
    btnAlterarCID.Enabled := True;
    btnExcluirCID.Enabled := True;
    btnCancelarCID.Enabled := False;
  end;
  if (Sender as TNxButton).Name = 'btnCancelarCID' then
  begin
    pnlCID.Enabled := False;
    btnInserirCID.Enabled := True;
    btnConfirmarCID.Enabled := False;
    btnAlterarCID.Enabled := True;
    btnExcluirCID.Enabled := True;
    btnCancelarCID.Enabled := False;
  end;
end;

procedure TfrmCad_Pessoa.btnInserirCIDClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_CID(sender);
  fDMCadPessoa.prc_Abrir_CID(fDMCadPessoa.cdsPessoaCODIGO.AsInteger);
  fDMCadPessoa.prc_Inserir_CID;
end;

procedure TfrmCad_Pessoa.btnAlterarCIDClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoa_Cid.IsEmpty then
    exit;
  prc_Habilita_CID(sender);
  fDMCadPessoa.cdsPessoa_Cid.Edit;
end;

procedure TfrmCad_Pessoa.btnExcluirCIDClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoa_Cid.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir esse registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadPessoa.cdsPessoa_Cid.Delete;
end;

procedure TfrmCad_Pessoa.btnConfirmarCIDClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoa_Cid.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoa_Cid.Post;
  prc_Habilita_CID(sender);
end;

procedure TfrmCad_Pessoa.btnCancelarCIDClick(Sender: TObject);
begin
  inherited;
  if fDMCadPessoa.cdsPessoa.IsEmpty then
    exit;
  fDMCadPessoa.cdsPessoa_Cid.Cancel;
  prc_Habilita_CID(sender);
end;

end.

