unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ImgList,
  ComCtrls, Menus, ToolWin, IniFiles, ExtCtrls, StdCtrls, UCBase, UCDBXConn,
  ActnList, jpeg;

type
  TfMenu = class(TForm)
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Manuteno1: TMenuItem;
    CMPD1: TMenuItem;
    Pessoa1: TMenuItem;
    ImageList1: TImageList;
    UCControls1: TUCControls;
    UserControl1: TUserControl;
    UCSettings1: TUCSettings;
    ActionList1: TActionList;
    UCDBXConn1: TUCDBXConn;
    Administrao1: TMenuItem;
    rocardeSenha1: TMenuItem;
    CadastrodeUsurios1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    PerfildeUsuario1: TMenuItem;
    stat1: TStatusBar;
    Label1: TLabel;
    Image1: TImage;
    lblDataBase: TLabel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Parmetros1: TMenuItem;
    Relatrios1: TMenuItem;
    CID1: TMenuItem;
    Bairro1: TMenuItem;
    Oficinas1: TMenuItem;
    ToolButton4: TToolButton;
    Parentesco1: TMenuItem;
    VencimentoPasseLivre1: TMenuItem;
    Janelas1: TMenuItem;
    Ativas1: TMenuItem;
    Cargo1: TMenuItem;
    Religio1: TMenuItem;
    Benefcios1: TMenuItem;
    RelatriodePessoas1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UserControl1AfterLogin(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure CMPD1Click(Sender: TObject);
    procedure Pessoa1Click(Sender: TObject);
    procedure CID1Click(Sender: TObject);
    procedure Parentesco1Click(Sender: TObject);
    procedure VencimentoPasseLivre1Click(Sender: TObject);
    procedure Cargo1Click(Sender: TObject);
    procedure Religio1Click(Sender: TObject);
    procedure Benefcios1Click(Sender: TObject);
    procedure RelatriodePessoas1Click(Sender: TObject);
  private
    procedure prc_Habilita_Menu;
    function GetBuildInfoAsString: string;
    procedure GetBuildInfo(exeName: string; var V1, V2, V3, V4: word);
    function fnc_ArquivoConfiguracao: string;

    { Private declarations }
  public
    vPath: string;
    vVersao: string;
    vPathLogo : string;
    vDataAtual : TDateTime;
    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String = '');

    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses
  DmdDatabase, uUtilPadrao, uCadEmpresa, uCadPessoa, uCadCID,
  uCadParentesco, uConsVencto_Passe, uCadCargo, ucadReligiao,
  uCadBeneficio, uConsPessoa;

const
  cArquivoConfiguracao = 'Config.ini';


{$R *.dfm}

function TfMenu.fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TfMenu.FormCreate(Sender: TObject);
var
  TaskBarH: THandle;
  TaskBarR: TRect;
  Config : TIniFile;
begin
  UserControl1.Execute;
  vPath := ExtractFilePath(Application.ExeName);
  lblDataBase.Caption := dmDatabase.scoPrincipal.Params.Values['DATABASE'];
  Config := TIniFile.Create(fnc_ArquivoConfiguracao);
  vPathLogo := Config.ReadString('IMAGEM','LOGOMENU','');
   // obtem o retangulo com o taskbar
  TaskBarH := FindWindow('Shell_TrayWnd', nil);
  GetWindowRect(TaskBarH, TaskBarR);
  // altura do taskbar = TaskBarR.
  Image1.Top := Height - (Screen.Height - TaskBarR.Top) - Image1.Height - 32;
  Image1.Left := Screen.Width - Image1.Width - 16;

  vVersao := GetBuildInfoAsString;
  if vVersao <> '0.0.0.0' then
  begin
    Caption := Caption + ' - v' + vVersao;
  end;

end;

procedure TfMenu.FormShow(Sender: TObject);
begin
  vDataAtual := Date;
  lblDataBase.Top  := Image1.Top - 20;
  lblDataBase.Left := Image1.Left - 50;

  Label1.Top  := Image1.Top - 40;
  Label1.Left := Image1.Left - 30;


  Image1.Picture.LoadFromFile(vPathLogo);
  stat1.Panels[0].Text := vUsuario;
  stat1.Panels[1].Text := FormatDateTime(' dd "de" MMMM "de" yyyy',vDataAtual)

end;

procedure TfMenu.GetBuildInfo(exeName: string; var V1, V2, V3, V4: word);
var
  VerInfoSize, VerValueSize, Dummy : DWORD;
  VerInfo : Pointer;
  VerValue : PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(exeName), Dummy);
  if VerInfoSize > 0 then
  begin
    GetMem(VerInfo, VerInfoSize);
    try
      if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
      begin
        VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
        with VerValue^do
        begin
          V1 := dwFileVersionMS shr 16;
          V2 := dwFileVersionMS and $FFFF;
          V3 := dwFileVersionLS shr 16;
          V4 := dwFileVersionLS and $FFFF;
        end;
      end;
    finally
      FreeMem(VerInfo, VerInfoSize);
    end;
  end;
end;

function TfMenu.GetBuildInfoAsString: string;
var
  V1, V2, V3, V4: Word;
begin
  GetBuildInfo(GetCurrentDir + '\SIGDUC.EXE', V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' + IntToStr(V3) + '.' + IntToStr(V4);
end;

procedure TfMenu.prc_Habilita_Menu;
var
  i: Integer;
begin
  for i := 0 to self.Menu.Items.Count - 1 do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to self.Menu.Items.Count - 1 do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if Components[i] is TMenuItem then
      TMenuItem(Self.Components[i]).Visible := TMenuItem(Self.Components[i]).Enabled;
  end;
  vUsuario := UserControl1.CurrentUser.LoginName;
end;

procedure TfMenu.UserControl1AfterLogin(Sender: TObject);
begin
  prc_Habilita_Menu;
end;

procedure TfMenu.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String = '');
var
  existe : TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;
  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass,existe);
    existe.FormStyle := fsMDIChild;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenu.CMPD1Click(Sender: TObject);
begin
  OpenForm(TfrmCadEmpresa,wsMaximized);
end;

procedure TfMenu.Pessoa1Click(Sender: TObject);
begin
  OpenForm(TfrmCad_Pessoa,wsMaximized);
end;

procedure TfMenu.CID1Click(Sender: TObject);
begin
  OpenForm(TfrmCadCID, wsMaximized);
end;

procedure TfMenu.Parentesco1Click(Sender: TObject);
begin
  OpenForm(TfrmCadParentesco, wsMaximized);
end;

procedure TfMenu.VencimentoPasseLivre1Click(Sender: TObject);
begin
  OpenForm(TfrmCons_Vecto_Passe, wsMaximized);
end;

procedure TfMenu.Cargo1Click(Sender: TObject);
begin
  OpenForm(TfrmCad_Cargo, wsMaximized);
end;

procedure TfMenu.Religio1Click(Sender: TObject);
begin
  OpenForm(TfrmCad_Religiao, wsMaximized);
end;

procedure TfMenu.Benefcios1Click(Sender: TObject);
begin
  OpenForm(TfrmCad_Beneficio, wsMaximized);
end;

procedure TfMenu.RelatriodePessoas1Click(Sender: TObject);
begin
  OpenForm(TfrmConsPessoa, wsMaximized);
end;

end.

