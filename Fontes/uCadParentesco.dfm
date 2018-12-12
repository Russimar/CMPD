inherited frmCadParentesco: TfrmCadParentesco
  Left = 333
  Top = 142
  Caption = 'Cadastro Parentesco'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPageControl1: TRzPageControl
    ActivePage = TS_Cadastro
    TabIndex = 1
    OnChange = RzPageControl1Change
    FixedDimension = 19
    inherited TS_Consulta: TRzTabSheet
      inherited pnlConsulta: TPanel
        inherited btnExcluir: TNxButton
          OnClick = btnExcluirClick
        end
      end
      inherited pnlPesquisa: TPanel
        inherited NxButton1: TNxButton
          OnClick = NxButton1Click
        end
      end
      inherited SMDBGrid1: TSMDBGrid
        DataSource = DMParentesco.dsConsulta
        ColCount = 3
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 690
            Visible = True
          end>
      end
    end
    inherited TS_Cadastro: TRzTabSheet
      inherited Panel3: TPanel
        inherited btnConfirmar: TNxButton
          OnClick = btnConfirmarClick
        end
      end
      inherited RzPageControl2: TRzPageControl
        FixedDimension = 19
        inherited TS_Dados: TRzTabSheet
          inherited pnlCadastro: TPanel
            object Label2: TLabel
              Left = 58
              Top = 32
              Width = 14
              Height = 13
              Caption = 'ID:'
            end
            object Label3: TLabel
              Left = 24
              Top = 62
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object DBEdit1: TDBEdit
              Left = 80
              Top = 26
              Width = 121
              Height = 21
              DataField = 'ID'
              DataSource = DMParentesco.dsParentesco
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 80
              Top = 54
              Width = 464
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DESCRICAO'
              DataSource = DMParentesco.dsParentesco
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited UCControls1: TUCControls
    UserControl = fMenu.UserControl1
  end
end
