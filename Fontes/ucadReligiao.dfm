inherited frmCad_Religiao: TfrmCad_Religiao
  Left = 264
  Top = 126
  Caption = 'Cadastro de Religi'#227'o'
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
            Width = 64
            Visible = True
          end>
      end
    end
    inherited TS_Cadastro: TRzTabSheet
      inherited Panel3: TPanel
        inherited btnConfirmar: TNxButton
          Top = 2
          OnClick = btnConfirmarClick
        end
        inherited btnCancelar: TNxButton
          Left = 415
          Top = 2
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
              DataSource = DMReligiao.dsReligiao
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 74
              Top = 54
              Width = 424
              Height = 21
              DataField = 'NOME'
              DataSource = DMReligiao.dsReligiao
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited UCControls1: TUCControls
    UserControl = fMenu.UserControl1
    Left = 779
    Top = 27
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 818
    Top = 29
  end
end
