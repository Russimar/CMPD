program SIGDUC;

uses
  Forms,
  Dialogs,
  SysUtils,
  DmdDatabase in 'DmdDatabase.pas' {dmDatabase: TDataModule},
  uMenu in 'uMenu.pas' {fMenu},
  uAbertura in 'uAbertura.pas' {frmAbertura},
  uUtilPadrao in 'uUtilPadrao.pas',
  uCadPadrao in 'uCadPadrao.pas' {frmCadPadrao},
  uDMCadEmpresa in 'uDMCadEmpresa.pas' {DMCadEmpresa: TDataModule},
  uCadEmpresa in 'uCadEmpresa.pas' {frmCadEmpresa},
  rsDBUtils in 'rslib\nova\rsDBUtils.pas',
  uCadPessoa in 'uCadPessoa.pas' {frmCad_Pessoa},
  uDMCadPessoa in 'uDMCadPessoa.pas' {DMPessoa: TDataModule},
  uCadCID in 'uCadCID.pas' {frmCadCID},
  uDMCadCID in 'uDMCadCID.pas' {DMCID: TDataModule},
  uCadParentesco in 'uCadParentesco.pas' {frmCadParentesco},
  uDMCadParentesco in 'uDMCadParentesco.pas' {DMParentesco: TDataModule},
  UConsAniversario in 'UConsAniversario.pas' {frmConsAniversario},
  uConsVencto_Passe in 'uConsVencto_Passe.pas' {frmCons_Vecto_Passe},
  uCadCargo in 'uCadCargo.pas' {frmCad_Cargo},
  uDMCadCargo in 'uDMCadCargo.pas' {DMCargo: TDataModule},
  ucadReligiao in 'ucadReligiao.pas' {frmCad_Religiao},
  uDMCadReligiao in 'uDMCadReligiao.pas' {DMReligiao: TDataModule},
  uCadBeneficio in 'uCadBeneficio.pas' {frmCad_Beneficio},
  uDMCadBeneficio in 'uDMCadBeneficio.pas' {DMBeneficio: TDataModule},
  uConsPessoa in 'uConsPessoa.pas' {frmConsPessoa},
  uDMConsPessoa in 'uDMConsPessoa.pas' {DMConsPessoa: TDataModule};

{$R *.res}

begin
  try
    Application.Initialize;
    Application.Title := 'SIGDUC (Sistema Gerenciador de Dados dos Usuários do CMPD)';
    Application.CreateForm(TfrmAbertura, frmAbertura);
    Application.CreateForm(TdmDatabase, dmDatabase);
    frmAbertura.Show;
    frmAbertura.Refresh;
    Application.CreateForm(TdmDataBase, dmDataBase);
    frmAbertura.Hide;
    frmAbertura.Free;
    if (Date > 43478) then
    begin
      ShowMessage('Sistema Expirou, entre em contato com o desenvolvedor!');
      Exit;
    end
    else
    begin
      Application.CreateForm(TfMenu, fMenu);
      Application.Run;
    end;
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao conectar: ' + #13 + e.Message);
  end;

end.

