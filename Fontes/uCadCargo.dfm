inherited frmCad_Cargo: TfrmCad_Cargo
  Left = 351
  Top = 154
  Caption = 'Cadastro de Cargo'
  OldCreateOrder = True
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
        DataSource = DMCargo.dsConsulta
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
            Width = 522
            Visible = True
          end>
      end
    end
    inherited TS_Cadastro: TRzTabSheet
      inherited Panel3: TPanel
        inherited btnAlterar: TNxButton
          Top = 1
        end
        inherited btnConfirmar: TNxButton
          OnClick = btnConfirmarClick
        end
      end
      inherited RzPageControl2: TRzPageControl
        FixedDimension = 19
        inherited TS_Dados: TRzTabSheet
          inherited pnlCadastro: TPanel
            object Label2: TLabel
              Left = 76
              Top = 35
              Width = 14
              Height = 13
              Caption = 'ID:'
            end
            object Label3: TLabel
              Left = 59
              Top = 59
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object DBEdit1: TDBEdit
              Left = 96
              Top = 27
              Width = 88
              Height = 21
              DataField = 'ID'
              DataSource = DMCargo.dsCargo
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 96
              Top = 51
              Width = 439
              Height = 21
              DataField = 'NOME'
              DataSource = DMCargo.dsCargo
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited UCControls1: TUCControls
    UserControl = fMenu.UserControl1
    Left = 800
    Top = 25
  end
end
