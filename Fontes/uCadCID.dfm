inherited frmCadCID: TfrmCadCID
  Left = 334
  Top = 139
  Caption = 'Cadastro CID'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPageControl1: TRzPageControl
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
        DataSource = DMCID.dsConsultaCID
        ColCount = 4
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CID'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 681
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
              Left = 69
              Top = 32
              Width = 14
              Height = 13
              Caption = 'ID:'
            end
            object Label3: TLabel
              Left = 53
              Top = 64
              Width = 30
              Height = 13
              Caption = 'C.I.D.:'
            end
            object Label4: TLabel
              Left = 32
              Top = 89
              Width = 51
              Height = 13
              Caption = 'Descri'#231#227'o:'
            end
            object DBEdit1: TDBEdit
              Left = 88
              Top = 24
              Width = 73
              Height = 21
              DataField = 'ID'
              DataSource = DMCID.dsCID
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 88
              Top = 56
              Width = 121
              Height = 21
              DataField = 'CID'
              DataSource = DMCID.dsCID
              TabOrder = 1
            end
            object DBMemo1: TDBMemo
              Left = 88
              Top = 89
              Width = 601
              Height = 89
              DataField = 'DESCRICAO'
              DataSource = DMCID.dsCID
              TabOrder = 2
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
