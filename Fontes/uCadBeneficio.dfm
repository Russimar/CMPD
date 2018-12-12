inherited frmCad_Beneficio: TfrmCad_Beneficio
  Caption = 'Cadastro de Benef'#237'cio'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPageControl1: TRzPageControl
    OnChange = RzPageControl1Change
    FixedDimension = 19
    inherited TS_Consulta: TRzTabSheet
      inherited pnlConsulta: TPanel
        inherited btnInserir: TNxButton
          Top = 2
        end
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
        DataSource = DMBeneficio.dsConsulta
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
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 463
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
              Left = 51
              Top = 32
              Width = 14
              Height = 13
              Caption = 'ID:'
            end
            object Label3: TLabel
              Left = 34
              Top = 61
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object DBEdit1: TDBEdit
              Left = 74
              Top = 24
              Width = 121
              Height = 21
              DataField = 'ID'
              DataSource = DMBeneficio.dsBeneficio
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 74
              Top = 54
              Width = 424
              Height = 21
              DataField = 'NOME'
              DataSource = DMBeneficio.dsBeneficio
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited UCControls1: TUCControls
    UserControl = fMenu.UserControl1
    Top = 28
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 858
    Top = 55
  end
end
