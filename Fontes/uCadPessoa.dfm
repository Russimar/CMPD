inherited frmCad_Pessoa: TfrmCad_Pessoa
  Left = -8
  Top = -8
  Width = 1382
  Height = 744
  Caption = 'Cadastro de Pessoas'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel [0]
    Left = 505
    Top = 264
    Width = 3
    Height = 13
  end
  inherited RzPageControl1: TRzPageControl
    Width = 1366
    Height = 705
    ActivePage = TS_Cadastro
    TabIndex = 1
    OnChange = RzPageControl1Change
    FixedDimension = 19
    inherited TS_Consulta: TRzTabSheet
      inherited pnlConsulta: TPanel
        Width = 1362
        inherited btnExcluir: TNxButton
          OnClick = btnExcluirClick
        end
      end
      inherited pnlPesquisa: TPanel
        Width = 1362
        inherited NxButton1: TNxButton
          OnClick = NxButton1Click
        end
      end
      inherited SMDBGrid1: TSMDBGrid
        Width = 1362
        Height = 600
        DataSource = DMPessoa.dsConsulta
        ColCount = 7
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 359
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Width = 229
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Alignment = taCenter
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Width = 119
            Visible = True
          end>
      end
    end
    inherited TS_Cadastro: TRzTabSheet
      inherited Panel3: TPanel
        Width = 1362
        Height = 43
        inherited btnConfirmar: TNxButton
          OnClick = btnConfirmarClick
        end
      end
      inherited RzPageControl2: TRzPageControl
        Top = 43
        Width = 1362
        Height = 616
        UseColoredTabs = True
        FixedDimension = 19
        inherited TS_Dados: TRzTabSheet
          inherited pnlCadastro: TPanel
            Width = 1358
            Height = 593
            object Label2: TLabel
              Left = 66
              Top = 27
              Width = 36
              Height = 13
              Caption = 'C'#243'digo:'
            end
            object Label3: TLabel
              Left = 71
              Top = 54
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object Label5: TLabel
              Left = 79
              Top = 107
              Width = 23
              Height = 13
              Caption = 'CPF:'
            end
            object Label6: TLabel
              Left = 53
              Top = 134
              Width = 49
              Height = 13
              Caption = 'Endere'#231'o:'
            end
            object Label7: TLabel
              Left = 818
              Top = 134
              Width = 67
              Height = 13
              Caption = 'Complemento:'
            end
            object Label8: TLabel
              Left = 549
              Top = 134
              Width = 40
              Height = 13
              Caption = 'N'#250'mero:'
            end
            object Label11: TLabel
              Left = 552
              Top = 159
              Width = 36
              Height = 13
              Caption = 'Cidade:'
            end
            object Label9: TLabel
              Left = 72
              Top = 159
              Width = 30
              Height = 13
              Caption = 'Bairro:'
            end
            object Label10: TLabel
              Left = 942
              Top = 159
              Width = 17
              Height = 13
              Caption = 'UF:'
            end
            object Label12: TLabel
              Left = 841
              Top = 54
              Width = 24
              Height = 13
              Caption = 'Tipo:'
            end
            object Label13: TLabel
              Left = 57
              Top = 184
              Width = 45
              Height = 13
              Caption = 'Telefone:'
            end
            object Label15: TLabel
              Left = 543
              Top = 184
              Width = 45
              Height = 13
              Caption = 'Telefone:'
            end
            object Label16: TLabel
              Left = 518
              Top = 27
              Width = 71
              Height = 13
              Caption = 'Data Cadastro:'
            end
            object Label17: TLabel
              Left = 785
              Top = 27
              Width = 80
              Height = 13
              Caption = #218'ltima Altera'#231#227'o:'
            end
            object Label18: TLabel
              Left = 570
              Top = 107
              Width = 19
              Height = 13
              Caption = 'RG:'
            end
            object Label19: TLabel
              Left = 74
              Top = 208
              Width = 28
              Height = 13
              Caption = 'Email:'
            end
            object Label20: TLabel
              Left = 567
              Top = 208
              Width = 21
              Height = 13
              Caption = 'NIS:'
            end
            object Label21: TLabel
              Left = 31
              Top = 232
              Width = 71
              Height = 13
              Caption = 'T'#237'tulo Eleitoral:'
            end
            object Label22: TLabel
              Left = 514
              Top = 232
              Width = 74
              Height = 13
              Caption = 'Se'#231#227'o Eleitoral:'
            end
            object Label23: TLabel
              Left = 797
              Top = 229
              Width = 68
              Height = 13
              Caption = 'Zona Eleitoral:'
            end
            object Label35: TLabel
              Left = 778
              Top = 159
              Width = 22
              Height = 13
              Caption = 'Cep:'
            end
            object Label37: TLabel
              Left = 839
              Top = 107
              Width = 87
              Height = 13
              Caption = 'Data Emiss'#227'o RG:'
            end
            object Label38: TLabel
              Left = 47
              Top = 256
              Width = 55
              Height = 13
              Caption = 'Nome M'#227'e:'
            end
            object Label39: TLabel
              Left = 539
              Top = 256
              Width = 49
              Height = 13
              Caption = 'Nome Pai:'
            end
            object Label41: TLabel
              Left = 765
              Top = 204
              Width = 100
              Height = 13
              Caption = 'Data de Nascimento:'
            end
            object Label54: TLabel
              Left = 235
              Top = 108
              Width = 59
              Height = 13
              Caption = 'Cart'#227'o SUS:'
            end
            object Label57: TLabel
              Left = 41
              Top = 420
              Width = 61
              Height = 13
              Caption = 'Oberva'#231#245'es:'
            end
            object Label58: TLabel
              Left = 547
              Top = 278
              Width = 41
              Height = 13
              Caption = 'Religi'#227'o:'
            end
            object Label59: TLabel
              Left = 46
              Top = 278
              Width = 51
              Height = 13
              Caption = 'Facebook:'
            end
            object Label60: TLabel
              Left = 33
              Top = 300
              Width = 64
              Height = 13
              Caption = 'Escolaridade:'
            end
            object Label4: TLabel
              Left = 699
              Top = 107
              Width = 50
              Height = 13
              Caption = 'O.Emissor:'
            end
            object Label40: TLabel
              Left = 21
              Top = 79
              Width = 81
              Height = 13
              Caption = 'Cert.Nascimento:'
            end
            object Label69: TLabel
              Left = 807
              Top = 80
              Width = 58
              Height = 13
              Caption = 'Associa'#231#227'o:'
            end
            object DBEdit1: TDBEdit
              Left = 112
              Top = 19
              Width = 121
              Height = 21
              DataField = 'CODIGO'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 112
              Top = 46
              Width = 385
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 112
              Top = 99
              Width = 121
              Height = 21
              DataField = 'CPF'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 5
              OnExit = DBEdit4Exit
            end
            object DBEdit5: TDBEdit
              Left = 112
              Top = 126
              Width = 385
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 9
            end
            object DBEdit6: TDBEdit
              Left = 890
              Top = 126
              Width = 126
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO_END'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 11
            end
            object DBEdit7: TDBEdit
              Left = 594
              Top = 126
              Width = 166
              Height = 21
              DataField = 'NUM_END'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 10
            end
            object RxDBLookupCombo1: TRxDBLookupCombo
              Left = 594
              Top = 151
              Width = 166
              Height = 21
              DropDownCount = 8
              DataField = 'ID_CIDADE'
              DataSource = DMPessoa.dsPessoa
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMPessoa.dsCidade
              TabOrder = 13
            end
            object DBEdit8: TDBEdit
              Left = 112
              Top = 151
              Width = 385
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 12
            end
            object RxDBLookupCombo2: TRxDBLookupCombo
              Left = 869
              Top = 46
              Width = 147
              Height = 21
              DropDownCount = 8
              DataField = 'ID_DEFICIENCIA'
              DataSource = DMPessoa.dsPessoa
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMPessoa.dsDeficiencia
              TabOrder = 3
              OnChange = RxDBLookupCombo2Change
            end
            object DBEdit10: TDBEdit
              Left = 112
              Top = 176
              Width = 39
              Height = 21
              DataField = 'DDDFONE1'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 16
            end
            object DBEdit11: TDBEdit
              Left = 156
              Top = 176
              Width = 121
              Height = 21
              DataField = 'TELEFONE1'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 17
            end
            object DateTimePicker1: TDateTimePicker
              Left = 594
              Top = 19
              Width = 147
              Height = 21
              Date = 43212.894064594900000000
              Time = 43212.894064594900000000
              Color = clScrollBar
              Enabled = False
              TabOrder = 30
              TabStop = False
            end
            object DateTimePicker2: TDateTimePicker
              Left = 869
              Top = 19
              Width = 147
              Height = 21
              Date = 43212.894064594900000000
              Time = 43212.894064594900000000
              Color = clScrollBar
              Enabled = False
              TabOrder = 31
              TabStop = False
            end
            object DBEdit13: TDBEdit
              Left = 640
              Top = 176
              Width = 121
              Height = 21
              DataField = 'TELEFONE2'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 19
            end
            object DBEdit12: TDBEdit
              Left = 594
              Top = 176
              Width = 39
              Height = 21
              DataField = 'DDDFONE2'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 18
            end
            object chkTemporario: TDBCheckBox
              Left = 288
              Top = 23
              Width = 97
              Height = 17
              Caption = 'Tempor'#225'rio'
              DataField = 'TEMPORARIO'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 594
              Top = 54
              Width = 185
              Height = 40
              Caption = 'Sexo'
              Columns = 2
              DataField = 'SEXO'
              DataSource = DMPessoa.dsPessoa
              Items.Strings = (
                'Masculino'
                'Feminino')
              TabOrder = 4
              Values.Strings = (
                'M'
                'F')
            end
            object DBEdit14: TDBEdit
              Left = 594
              Top = 99
              Width = 95
              Height = 21
              DataField = 'RG'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 7
            end
            object DBEdit15: TDBEdit
              Left = 112
              Top = 200
              Width = 385
              Height = 21
              CharCase = ecLowerCase
              DataField = 'EMAIL'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 20
            end
            object DBEdit16: TDBEdit
              Left = 594
              Top = 200
              Width = 165
              Height = 21
              DataField = 'NIS'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 21
            end
            object DBEdit17: TDBEdit
              Left = 112
              Top = 224
              Width = 385
              Height = 21
              DataField = 'TITULO_ELEITORAL'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 23
            end
            object DBEdit18: TDBEdit
              Left = 594
              Top = 224
              Width = 89
              Height = 21
              DataField = 'SECAO_ELEITORAL'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 24
            end
            object DBEdit19: TDBEdit
              Left = 873
              Top = 224
              Width = 143
              Height = 21
              DataField = 'ZONA_ELEITORAL'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 25
            end
            object cbxUF: TDBComboBox
              Left = 962
              Top = 151
              Width = 54
              Height = 21
              DataField = 'UF'
              DataSource = DMPessoa.dsPessoa
              ItemHeight = 13
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
              TabOrder = 15
            end
            object DBEdit29: TDBEdit
              Left = 810
              Top = 151
              Width = 110
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CEP'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 14
            end
            object DBDateEdit2: TDBDateEdit
              Left = 929
              Top = 99
              Width = 88
              Height = 21
              DataField = 'DATA_EMISSAO_RG'
              DataSource = DMPessoa.dsPessoa
              NumGlyphs = 2
              TabOrder = 8
            end
            object DBEdit31: TDBEdit
              Left = 112
              Top = 248
              Width = 385
              Height = 21
              CharCase = ecUpperCase
              DataField = 'MAE_NOME'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 26
            end
            object DBEdit32: TDBEdit
              Left = 594
              Top = 248
              Width = 422
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PAI_NOME'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 27
            end
            object DBDateEdit3: TDBDateEdit
              Left = 873
              Top = 196
              Width = 143
              Height = 21
              DataField = 'DATA_NASCIMENTO'
              DataSource = DMPessoa.dsPessoa
              NumGlyphs = 2
              TabOrder = 22
            end
            object RzGroupBox1: TRzGroupBox
              Left = 112
              Top = 325
              Width = 219
              Height = 84
              Caption = 'Renda per Capita'
              TabOrder = 28
              object Label42: TLabel
                Left = 40
                Top = 58
                Width = 27
                Height = 13
                Caption = 'Valor:'
              end
              object Label43: TLabel
                Left = 9
                Top = 31
                Width = 58
                Height = 13
                Caption = 'N'#186' Pessoas:'
              end
              object DBEdit33: TDBEdit
                Left = 72
                Top = 50
                Width = 121
                Height = 21
                Color = clSilver
                DataField = 'Renda_Per_Capita'
                DataSource = DMPessoa.dsPessoa
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit34: TDBEdit
                Left = 72
                Top = 23
                Width = 121
                Height = 21
                DataField = 'QTDE_MEMBRO_FAMILIAR'
                DataSource = DMPessoa.dsPessoa
                TabOrder = 1
              end
            end
            object RzGroupBox2: TRzGroupBox
              Left = 536
              Top = 297
              Width = 480
              Height = 111
              Caption = 'Passe Livre'
              TabOrder = 29
              object Label44: TLabel
                Left = 292
                Top = 19
                Width = 59
                Height = 13
                Caption = 'Vencimento:'
              end
              object Label45: TLabel
                Left = 122
                Top = 19
                Width = 42
                Height = 13
                Caption = 'Emiss'#227'o:'
              end
              object Label46: TLabel
                Left = 122
                Top = 43
                Width = 42
                Height = 13
                Caption = 'Emiss'#227'o:'
              end
              object Label47: TLabel
                Left = 292
                Top = 43
                Width = 59
                Height = 13
                Caption = 'Vencimento:'
              end
              object Label48: TLabel
                Left = 122
                Top = 68
                Width = 42
                Height = 13
                Caption = 'Emiss'#227'o:'
              end
              object Label49: TLabel
                Left = 292
                Top = 68
                Width = 59
                Height = 13
                Caption = 'Vencimento:'
              end
              object Label61: TLabel
                Left = 12
                Top = 93
                Width = 32
                Height = 13
                Caption = 'N'#186' BC:'
              end
              object Label62: TLabel
                Left = 239
                Top = 95
                Width = 57
                Height = 13
                Caption = 'N'#186' Registro:'
              end
              object DBCheckBox1: TDBCheckBox
                Left = 11
                Top = 15
                Width = 76
                Height = 17
                Caption = 'Municipal'
                DataField = 'PASSE_MUNICIPAL'
                DataSource = DMPessoa.dsPessoa
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox2: TDBCheckBox
                Left = 11
                Top = 39
                Width = 88
                Height = 17
                Caption = 'Intermunicipal'
                DataField = 'PASSE_INTERMUNICIPAL'
                DataSource = DMPessoa.dsPessoa
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox3: TDBCheckBox
                Left = 11
                Top = 64
                Width = 87
                Height = 17
                Caption = 'Interestadual'
                DataField = 'PASSE_INTERESTADUAL'
                DataSource = DMPessoa.dsPessoa
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBDateEdit4: TDBDateEdit
                Left = 168
                Top = 11
                Width = 113
                Height = 21
                DataField = 'DT_EMISSAO_PASSEMUNICIPAL'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 3
              end
              object DBDateEdit5: TDBDateEdit
                Left = 357
                Top = 11
                Width = 113
                Height = 21
                DataField = 'DT_VENC_PASSEMUNICIPAL'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 4
              end
              object DBDateEdit6: TDBDateEdit
                Left = 168
                Top = 35
                Width = 113
                Height = 21
                DataField = 'DT_EMISSAO_PASSEINTERMUNICIPAL'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 5
              end
              object DBDateEdit7: TDBDateEdit
                Left = 357
                Top = 35
                Width = 113
                Height = 21
                DataField = 'DT_VENC_PASSEINTERMUNIPAL'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 6
              end
              object DBDateEdit8: TDBDateEdit
                Left = 168
                Top = 60
                Width = 113
                Height = 21
                DataField = 'DT_EMISSAO_PASSEINTERESTADUAL'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 7
              end
              object DBDateEdit9: TDBDateEdit
                Left = 357
                Top = 60
                Width = 113
                Height = 21
                DataField = 'DT_VENC_PASSEINTERESTADUAL'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 8
              end
              object DBEdit39: TDBEdit
                Left = 53
                Top = 87
                Width = 167
                Height = 21
                DataField = 'NUMERO_BC'
                DataSource = DMPessoa.dsPessoa
                TabOrder = 9
              end
              object DBEdit40: TDBEdit
                Left = 301
                Top = 87
                Width = 167
                Height = 21
                DataField = 'NUMERO_REGISTRO_PI'
                DataSource = DMPessoa.dsPessoa
                TabOrder = 10
              end
            end
            object DBEdit37: TDBEdit
              Left = 299
              Top = 99
              Width = 195
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CARTAO_SUS'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 6
            end
            object RzGroupBox3: TRzGroupBox
              Left = 335
              Top = 328
              Width = 185
              Height = 81
              Caption = 'Vaga Especial Estacionamento'
              TabOrder = 32
              object Label55: TLabel
                Left = 23
                Top = 43
                Width = 42
                Height = 13
                Caption = 'Emiss'#227'o:'
              end
              object Label56: TLabel
                Left = 6
                Top = 63
                Width = 59
                Height = 13
                Caption = 'Vencimento:'
              end
              object chkEstacionamento: TDBCheckBox
                Left = 6
                Top = 19
                Width = 65
                Height = 17
                Caption = 'Possui'
                DataField = 'VAGA_ESP_ESTACIONAMENTO'
                DataSource = DMPessoa.dsPessoa
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = chkEstacionamentoClick
              end
              object DBDateEdit10: TDBDateEdit
                Left = 67
                Top = 33
                Width = 113
                Height = 21
                DataField = 'DT_EMISSAO_ESTACIONAMENTO'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 1
              end
              object DBDateEdit11: TDBDateEdit
                Left = 67
                Top = 58
                Width = 113
                Height = 21
                DataField = 'DT_VENC_ESTACIONAMENTO'
                DataSource = DMPessoa.dsPessoa
                NumGlyphs = 2
                TabOrder = 2
              end
            end
            object DBMemo1: TDBMemo
              Left = 113
              Top = 420
              Width = 906
              Height = 89
              DataField = 'OBS'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 33
            end
            object RxDBLookupCombo6: TRxDBLookupCombo
              Left = 594
              Top = 270
              Width = 166
              Height = 21
              DropDownCount = 8
              DataField = 'ID_RELIGIAO'
              DataSource = DMPessoa.dsPessoa
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMPessoa.dsReligiao
              TabOrder = 34
            end
            object DBEdit38: TDBEdit
              Left = 112
              Top = 270
              Width = 385
              Height = 21
              DataField = 'LINK_FACEBOOK'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 35
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 112
              Top = 292
              Width = 386
              Height = 21
              Style = csDropDownList
              DataField = 'ESCOLARIDADE'
              DataSource = DMPessoa.dsPessoa
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '01 - Analfabeto'
                '02 - At'#233' o 5'#186' ano Incompleto'
                '03 - 5'#186' ano do Ensino Fundamental Completo'
                '04 - 6'#186' ao 9'#186' ano do Ensino Fundamental Incompleto'
                '05 - Ensino Fundamental Completo'
                '06 - Ensino M'#233'dio Incompleto'
                '07 - Ensino M'#233'dio Completo'
                '08 - Educa'#231#227'o Superior Incompleta'
                '09 - Educa'#231#227'o Superior Completa'
                '10 - Mestrado Completo'
                '11 - Doutorado Completo')
              TabOrder = 36
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11')
            end
            object DBEdit3: TDBEdit
              Left = 753
              Top = 99
              Width = 78
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ORGAO_EMISSOR'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 37
            end
            object DBEdit42: TDBEdit
              Left = 112
              Top = 71
              Width = 385
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CERTIDAO_NASCIMENTO'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 38
            end
            object RxDBLookupCombo3: TRxDBLookupCombo
              Left = 869
              Top = 70
              Width = 148
              Height = 21
              DropDownCount = 8
              DataField = 'ID_EMPRESA'
              DataSource = DMPessoa.dsPessoa
              LookupField = 'ID'
              LookupDisplay = 'NOME_FANTASIA'
              LookupSource = DMPessoa.dsEmpresa
              TabOrder = 39
            end
            object chkFalecido: TDBCheckBox
              Left = 392
              Top = 23
              Width = 97
              Height = 17
              Caption = 'Falecido'
              DataField = 'FALECIDO'
              DataSource = DMPessoa.dsPessoa
              TabOrder = 40
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object TS_Renda: TRzTabSheet
          Caption = 'Renda'
          object pnlOutras: TPanel
            Left = 0
            Top = 0
            Width = 1358
            Height = 593
            Align = alClient
            TabOrder = 0
            object pnlGridRenda: TPanel
              Left = 1
              Top = 507
              Width = 1356
              Height = 85
              Align = alBottom
              TabOrder = 0
              object DBGrid2: TDBGrid
                Left = 1
                Top = 1
                Width = 1354
                Height = 83
                Align = alClient
                DataSource = DMPessoa.dsPessoaRenda
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ITEM'
                    Title.Alignment = taCenter
                    Title.Caption = 'Item'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nome'
                    Width = 517
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Nome_Parentesco'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nome Parentesco'
                    Width = 244
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'POSSUI_RENDA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Possui Renda'
                    Width = 82
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_RENDA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Valor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RENDA_INFORMAL'
                    Title.Caption = 'Informal'
                    Width = 57
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_PARENTESCO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Parentesco'
                    Width = 72
                    Visible = True
                  end>
              end
            end
            object pnlRenda: TPanel
              Left = 51
              Top = 1
              Width = 1306
              Height = 506
              Align = alClient
              Enabled = False
              TabOrder = 1
              object Label50: TLabel
                Left = 54
                Top = 38
                Width = 23
                Height = 13
                Caption = 'Item:'
              end
              object Label51: TLabel
                Left = 46
                Top = 62
                Width = 31
                Height = 13
                Caption = 'Nome:'
              end
              object Label53: TLabel
                Left = 20
                Top = 86
                Width = 57
                Height = 13
                Caption = 'Parentesco:'
              end
              object Label52: TLabel
                Left = 15
                Top = 158
                Width = 62
                Height = 13
                Caption = 'Valor Renda:'
              end
              object DBEdit35: TDBEdit
                Left = 86
                Top = 30
                Width = 81
                Height = 21
                DataField = 'ITEM'
                DataSource = DMPessoa.dsPessoaRenda
                TabOrder = 0
              end
              object DBEdit36: TDBEdit
                Left = 86
                Top = 54
                Width = 297
                Height = 21
                CharCase = ecUpperCase
                DataField = 'NOME'
                DataSource = DMPessoa.dsPessoaRenda
                TabOrder = 1
              end
              object DBRadioGroup4: TDBRadioGroup
                Left = 86
                Top = 105
                Width = 185
                Height = 38
                Caption = 'Possui Renda'
                Columns = 2
                DataField = 'POSSUI_RENDA'
                DataSource = DMPessoa.dsPessoaRenda
                Items.Strings = (
                  'SIM'
                  'N'#195'O')
                TabOrder = 3
                TabStop = True
                Values.Strings = (
                  'S'
                  'N')
              end
              object RxDBLookupCombo5: TRxDBLookupCombo
                Left = 86
                Top = 78
                Width = 171
                Height = 21
                DropDownCount = 8
                DataField = 'ID_PARENTESCO'
                DataSource = DMPessoa.dsPessoaRenda
                LookupField = 'ID'
                LookupDisplay = 'DESCRICAO'
                LookupSource = DMPessoa.dsParentesco
                TabOrder = 2
              end
              object DBRadioGroup5: TDBRadioGroup
                Left = 288
                Top = 105
                Width = 185
                Height = 38
                Caption = 'Renda Informal'
                Columns = 2
                DataField = 'RENDA_INFORMAL'
                DataSource = DMPessoa.dsPessoaRenda
                Items.Strings = (
                  'SIM'
                  'N'#195'O')
                TabOrder = 4
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit21: TDBEdit
                Left = 86
                Top = 151
                Width = 164
                Height = 21
                DataField = 'VALOR_RENDA'
                DataSource = DMPessoa.dsPessoaRenda
                TabOrder = 5
              end
            end
            object pnlBotaoRenda: TPanel
              Left = 1
              Top = 1
              Width = 50
              Height = 506
              Align = alLeft
              Enabled = False
              TabOrder = 2
              object btnInserirRenda: TNxButton
                Left = 1
                Top = 0
                Width = 48
                Height = 65
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
                  3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
                  19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
                  AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
                  383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
                  19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
                  F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
                  DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
                  FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
                  AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
                  50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
                  DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
                  17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
                  8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
                  D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
                  39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
                  F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
                  E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
                  F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
                  6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
                  F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
                  DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
                  80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
                  F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
                  45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
                  F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
                  3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
                  F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
                  563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
                  B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
                  73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
                  664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
                  B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
                  20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
                  F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
                  F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
                  FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
                  3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
                  C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
                  8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
                  137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
                  CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
                  ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
                  B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
                  130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
                  E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
                  E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = btnInserirRendaClick
              end
              object btnAlterarRenda: TNxButton
                Left = 1
                Top = 63
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFDDDAD9D4CCC8B9ACA8B0A59FCDC2
                  BDD4CECDE9E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9A96533E351F1A180C2D3C
                  094662104D68093F5212222A2A1E17715E5BD8D6D9FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEEECEB20120D141D271D
                  88B322BFF61EC1FF20C1FF20C0FF1FBFFF22BFF923B4F31757700D06006A615D
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEA9A81D12
                  0F2D82A42FCFFF1DC3FF20BBFF1FB9FF20B5FF26B9FB37B8F435B8F631B9FA34
                  CDFF30B7EE0931403C2B22F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  D7CDCF0300002385A51EC9FF20B8FE1EB7FD1FB7FD20B9FE20B8FC1FB8FF1DB5
                  FE1DB6FD21B6FE20B5FD1CBEFF24C8FF123C4E3B271FFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFF7F7F60200001D8CB21FCFFF1CB3F822C0FF20BFFF1FBAFF1EB5FF
                  1FB9FE1FB9FD1EB7FF1EB7FF1EB8FF1EB7FF1FB8FC1FBBFF24CAFF002E3E645D
                  5CFFFFFFFFFFFF000000FFFFFF665E5C0C384A27D3FF20BAFF269AC6122C4028
                  A3DD21B1F022CFFF24BBFF21BAFD20B8FE1FB6FE1FB7FF1EB8FD21B8FE1FB9FD
                  1FBDFF24B5EE020000D4D2D4FFFFFF000000E4E0E00F000020B7E71EBAFF1CB8
                  FF1BB3EF24678D13405912566B1541581AB2ED1EC3FF1DB8FF1AB7FD1AB6FF20
                  B9FE1DB7FF20B6FE1FB5FE22CFFF114C646A615EFFFFFF000000B3ABAA002F49
                  35C1FF2CB8F82FB7F733C6FF1C546E2EC1EC36DCFF24617334698A2D6C814BD4
                  FF3FBAF939BBF42EB9F62AB7F525B5FD1FB7FF1CBAFF22B5F41B0F09E9E7E600
                  0000695B5810688329C3FF23B7FA1FB8FA29C1FF398ABA4495BB2C61792C5A74
                  439CC415121C32687959E6FF4FBFFA4EC1F93BBCFA1AB5FC1EB8FF1EB9FF24BE
                  F7011319D2CECD000000382E2F1286A922C0FF1CB5FF28B7FD59C5FD5DE4FF1A
                  303850A7CB1B35411009094CA6C9111319376A7B5EDAFF53C6FE58C6F948C2F9
                  19B4FD1EB8FF1DC1FF003249BBB3AE0000002622211A90B91FBFFF1DB6FC57C6
                  FD65CBF761CBFD73D2FF0A0B1156A0BF18232D1A1A1857AACC10111C3A6B7B6F
                  E4FF5EC8F96ACCF93FBFFA1BB4FF21C3FF01435EA49B99000000251F201388B0
                  1ABFFF3DC0FA77CFF870CCF86FCDF871D8FF4E86970100006FB6D81A292C170C
                  0C69B4D30D1017477C8983EAFF71CBFB6ACDF724B6FF20C1FF003957A9A08B00
                  00005548481C82A31CBFFF6CC9F785D2F581D0F683CEF77ECFF98CE9FF6DA3B7
                  06000072A9C42B3C411918167AB5D21415184E727C88DFFF88D1FA3BBFFB1BBD
                  FF123547D0C3B4000000BBB2AB4688A62DBCFF82CDF193D1EE8FD0F18FD1F38C
                  D4F58CD2F69BECFF62909C15100F85B6CC3839422A2E3086B7CE191C1F5F8B9B
                  99E2FF4EC3FA14B8F96D6C6DEAE7D9000000E9E4E267707309BAFC86D2F9A0D9
                  F698D8F699D7F59AD7F59AD7F599D6F5A4EDFF7A9FAC0B00018ABACC2F3D4219
                  101387B8CF9DD8F4A6DDF542C5FF2F9FD1A18D89FDFAEB000000FEFEFEA89286
                  379FCC5ED1FFB9DFF1A8DCF2AADDF4A9DCF2A9DCF2A9DBF2A5DBF2BAF5FF7FA7
                  B0140D0C84A0AE4D5A65A5D4E6A9E1FCABDEF223C7FF6D7C85CDC9C5FFFDF400
                  0000FFFFFFD6D4D478807E35BFFFB4E5F6B9DFF0B2DEF4B3DEF2B3DFF3B3DFF3
                  B4DEF2B3DDF3C8F4FF798E953C474FC2F1FFB6E4FAC3E0EF8CDCFF3D9DCC9488
                  83FFFFFFFFFFFD000000FFFFFFFFFFFFC8BBB2658A9B60CAF9D7EBF4CBE3F1C5
                  E1F3C5E2F2C6E2F2C6E2F2C6E2F2C5E3F1D0F1FFDEFBFFC4E5F3D2E5F1BAE8FF
                  34ABD58D8884F8F6F4FFFFFFFCFFFF000000FFFFFFFDFDFDFCFDFEBAB0AA7098
                  A47DD0F8DDEBF3DFE9F3D3E9EFD2E9F0D2E8F0D1E6EECAE1E8CCE3E8CFE1E7E6
                  E8EEAFE2FC56B7DE92928FE0D9D6FFFFFFFCFAFAF0F3F3000000FFFFFFFCFCFC
                  FDFDFDFFFFFFCFC0C48D9E9C60B1DAACE0F5E1EEF4E4EEF2E7EEF2E8EEF3E6ED
                  F2E2EBF3D9EBF47BCDEE6CA4BCA59D9AF5EBEAFFFFFFFFFFFFFFFDFEEBF3F000
                  0000FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE8E0E2CBBDB383A3AF77AFCE8DC4DB
                  A0CFE4A2D0E596CCE284BDD76EA8BFAAADA8D9CAC5FCFCFBFFFFFFFEFFFFFFFF
                  FFFFFFFFFCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF7
                  F1EDE2DDD5CBCCCAB5C1C4B4BFC2BFC3C1D6D2CFEEE7E3FAF7F5FFFFFFFFFFFF
                  FEFFFFFFFFFFFFFFFFFFFFFFF9FEFE000000}
                TabOrder = 1
                OnClick = btnAlterarRendaClick
              end
              object btnExcluirRenda: TNxButton
                Left = 1
                Top = 125
                Width = 48
                Height = 65
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
                  0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
                  010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
                  18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
                  040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
                  440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
                  00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
                  76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
                  C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
                  FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
                  0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
                  80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
                  00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
                  0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
                  C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
                  00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
                  0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
                  B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
                  8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
                  9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
                  C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
                  FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
                  DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
                  DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                  FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
                  002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
                  FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
                  001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
                  0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
                  CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
                  00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
                  0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
                  EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
                  00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
                  0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
                  F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
                  DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
                  0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
                  C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
                  24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
                  0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
                  C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
                  26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
                  F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
                  DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
                  FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
                  0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
                  F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
                  00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
                  C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
                  FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
                  A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
                TabOrder = 2
                OnClick = btnExcluirRendaClick
              end
              object btnConfirmarRenda: TNxButton
                Left = 1
                Top = 188
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
                  224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
                  3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
                  5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
                  4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
                  402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
                  4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
                  0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
                  0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
                  04550500550505560707540B065309065008044D06034D050042002F65312860
                  2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
                  54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
                  044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
                  0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
                  550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
                  2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
                  C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
                  00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
                  FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
                  002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
                  FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
                  07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
                  DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
                  C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
                  5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
                  FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
                  000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
                  056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
                  022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
                  9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
                  B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
                  8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
                  FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
                  B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
                  2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
                  0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
                  5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
                  299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
                  C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
                  36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
                  4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
                  984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
                  FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
                  7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
                  B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
                  CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
                TabOrder = 3
                OnClick = btnConfirmarRendaClick
              end
              object btnCancelarRenda: TNxButton
                Left = 1
                Top = 251
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFEDECE4C8C7B9706E6B39384207081E0000220706
                  1D3B3A4274736FCCCCBFEEEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7C631F1D2C0000500000810005A3
                  000EB4000DB10007AB00009200006C00003C22222A83836EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF1F0E93C3B2F00005F000FBE00
                  15BD0013B6000BB20006B30003B50003B00005A700069E00029A000092000040
                  3E3E35F3F3EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFEAE9E11C1D210003
                  950021D80015BB0007BF0000C50000C60000C60000C50000C60000C90000C800
                  02B50002990000A10000651E1E21EDEDE7FFFFFFFFFFFF000000FFFFFFFFFFFF
                  363427000AA50025D70017C10000CD0000CB0000C90000CD0000C90000C90000
                  C90000CD0000CD0000D30000CF00029B00019400006C38382EFFFFFFFFFFFF00
                  0000FFFFFF6B6549000286002AE7001DC90000D50908C18180B88E8EBD0C0DB9
                  0000D30000D20000D21214B77A7BB44344AD0000C90000E100039B00009D0000
                  4F6D6D55FFFFFF000000E4E1D80A0F3A0028E70023D00003D40000D28385E1FF
                  FFFFFFFFFFDFE0E90709BC0000D71416BCE8E9ECFFFFFFFFFFFF6364D70000D4
                  0000D40003940000970A0A26E4E4DC000000ABA69800047D002FE80016D70000
                  DA0000D78C8CEEFFFFFFFEFEFDFFFFFFCDCEEC2327BAD7D8EEFFFFFFFEFEFDFF
                  FFFF8F8FED0000D70000E10003B5000399000046ABAB9D0000005C5960001BC8
                  0031E40005DE0000E00000E00808DEBEBEF6FFFFFFFDFDFDFFFFFFFFFFFFFFFF
                  FFFDFDFDFFFFFFC8C8F70C0CDF0000DF0000E40001D700069500007E5B5A5C00
                  00002024330030F60031E20000E20000E40000E30000E20A0AE2C9C9FAFFFFFE
                  FDFDFDFEFEFEFDFDFDFFFFFED7D6FC1313E30000E20000E30000E50000E80007
                  980000A11D1C28000000000830003AFF002EE40000E80000E80000E80000E900
                  00E83338DDEEEFF9FFFFFEFDFDFDFFFFFEEFF1F93034DE0000E70000E90000E8
                  0000E80000EF000AA00007AF00001F000000000B32003CFF0033E70000EC0000
                  EC0000EC0000EB2932E2E9EDF6FFFFFFFDFDFDFFFFFDFDFDFDFFFFFFDFE3F41C
                  24E10000EC0000EC0000ED0000F1000CA0000CB400022200000000072F003AFF
                  0039EC0008EE0000F00000F0202BEBE5ECF8FFFFFFFEFEFDFFFFFEFFFFFEFFFF
                  FEFEFEFDFFFFFFDEE4F71925EA0000F00000F40002E8000FA0000CB700002000
                  00001D1C28002CF0003CF60020EF0000F30000F39998F9FFFFFFFDFDFDFFFFFF
                  B4B4FB0000F1A9A9FBFFFFFFFEFEFDFFFFFF9595F90000F30000FB000BCC0012
                  A70006AD21202B0000005B5653001BB7003FFF0036EF0004F60000F65050F7FF
                  FFFFFFFFFFCFCFFD0505F50000F50000F4C8C8FCFFFFFEFFFFFF7374F80000F7
                  0001F60012B30014B400008A5C5A5A000000AAA898000051003EFF003DF5002F
                  F10000FA0000F92828F94949FA0101F80000F90000F90000F90000F85858F94B
                  4BFA0000F90000FF0015C30018B20015BF000049ADAC9D000000E4E4DC0A0518
                  0019CE0045FF003EF3002AF20001FB0000FD0000F90000FA0000FA0000FA0000
                  FA0000FA0000FA0000FF0000FC0015D1001DB4001CC00005B00A0822E3E3DC00
                  0000FFFFFF6C6B5300004D002EF10043FF003DF30036EF0011F70000FF0000FF
                  0000FF0000FE0000FF0000FF0000FF000AEE0021CA0021C2001FC40013CA0000
                  556C6C53FFFFFF000000FFFFFFFFFFFF38372B0000700023E30042FF003CF700
                  3EEE0038EB0021EF0015F20011F40013EF001CE6002AD2002ACB0025CE0025CD
                  0012C800007837362BFFFFFFFFFFFF000000FFFFFFFFFFFFECECE51E1D1F0000
                  720017E40038F60043FD003BF3003AEC0037E60035E10032DD0030DA002DD800
                  2FD90023D1000DD60000791C1B1EEBEBE4FFFFFFFFFFFF000000FFFFFFFFFFFF
                  FFFFFFF2F2EB3D3D310000530000C0000EE2002DF70035F40035ED0034E90031
                  E4002CE40024E50009D90000C20000573D3C31F1F1EAFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82826722212E00005A0000A20000E1
                  0002FF0004FF0001FF0000E20000A500005C21202E808065FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE5CB
                  CBBA73736D3A3A4707062F00003107062F3A3A4771716DCACAB8EDEDE5FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
                TabOrder = 4
                OnClick = btnCancelarRendaClick
              end
            end
          end
        end
        object TS_Acomp: TRzTabSheet
          Caption = 'Acompanhantes'
          object pnlAcomp: TPanel
            Left = 50
            Top = 0
            Width = 1308
            Height = 508
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Label24: TLabel
              Left = 54
              Top = 38
              Width = 23
              Height = 13
              Caption = 'Item:'
            end
            object Label25: TLabel
              Left = 46
              Top = 62
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object Label26: TLabel
              Left = 346
              Top = 86
              Width = 85
              Height = 13
              Caption = 'Data Nascimento:'
            end
            object Label27: TLabel
              Left = 20
              Top = 86
              Width = 57
              Height = 13
              Caption = 'Parentesco:'
            end
            object Label28: TLabel
              Left = 24
              Top = 112
              Width = 53
              Height = 13
              Caption = 'Identidade:'
            end
            object Label29: TLabel
              Left = 409
              Top = 112
              Width = 23
              Height = 13
              Caption = 'CPF:'
            end
            object Label30: TLabel
              Left = 647
              Top = 112
              Width = 45
              Height = 13
              Caption = 'Telefone:'
            end
            object Label31: TLabel
              Left = 28
              Top = 138
              Width = 49
              Height = 13
              Caption = 'Endere'#231'o:'
            end
            object Label32: TLabel
              Left = 662
              Top = 138
              Width = 30
              Height = 13
              Caption = 'Bairro:'
            end
            object Label33: TLabel
              Left = 41
              Top = 162
              Width = 36
              Height = 13
              Caption = 'Cidade:'
            end
            object Label34: TLabel
              Left = 820
              Top = 162
              Width = 17
              Height = 13
              Caption = 'UF:'
            end
            object Label36: TLabel
              Left = 670
              Top = 162
              Width = 22
              Height = 13
              Caption = 'Cep:'
            end
            object DBEdit9: TDBEdit
              Left = 86
              Top = 30
              Width = 81
              Height = 21
              DataField = 'ITEM'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 0
            end
            object DBEdit20: TDBEdit
              Left = 86
              Top = 54
              Width = 321
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 1
            end
            object DBDateEdit1: TDBDateEdit
              Left = 440
              Top = 78
              Width = 153
              Height = 21
              DataField = 'DATA_NASCIMENTO'
              DataSource = DMPessoa.dsPessoaAcomp
              NumGlyphs = 2
              TabOrder = 2
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 695
              Top = 66
              Width = 185
              Height = 33
              Caption = 'Sexo'
              Columns = 2
              DataField = 'SEXO'
              DataSource = DMPessoa.dsPessoaAcomp
              Items.Strings = (
                'Masculino'
                'Feminino')
              TabOrder = 3
              Values.Strings = (
                'M'
                'F')
            end
            object DBEdit22: TDBEdit
              Left = 86
              Top = 104
              Width = 192
              Height = 21
              DataField = 'IDENTIDADE'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 4
            end
            object DBEdit23: TDBEdit
              Left = 441
              Top = 104
              Width = 155
              Height = 21
              DataField = 'CPF'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 5
              OnExit = DBEdit23Exit
            end
            object DBEdit24: TDBEdit
              Left = 702
              Top = 104
              Width = 39
              Height = 21
              DataField = 'DDD'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 6
            end
            object DBEdit25: TDBEdit
              Left = 745
              Top = 104
              Width = 147
              Height = 21
              DataField = 'TELEFONE'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 7
            end
            object DBEdit26: TDBEdit
              Left = 86
              Top = 130
              Width = 512
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 8
            end
            object DBEdit27: TDBEdit
              Left = 702
              Top = 130
              Width = 192
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 9
            end
            object DBEdit28: TDBEdit
              Left = 86
              Top = 154
              Width = 288
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CIDADE'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 10
            end
            object DBComboBox1: TDBComboBox
              Left = 842
              Top = 154
              Width = 54
              Height = 21
              DataField = 'UF'
              DataSource = DMPessoa.dsPessoaAcomp
              ItemHeight = 13
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
              TabOrder = 12
            end
            object DBEdit30: TDBEdit
              Left = 702
              Top = 154
              Width = 110
              Height = 21
              DataField = 'CEP'
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 11
            end
            object RxDBLookupCombo4: TRxDBLookupCombo
              Left = 86
              Top = 79
              Width = 187
              Height = 21
              DropDownCount = 8
              DataField = 'ID_PARENTESCO'
              DataSource = DMPessoa.dsPessoaAcomp
              LookupField = 'ID'
              LookupDisplay = 'DESCRICAO'
              LookupSource = DMPessoa.dsParentesco
              TabOrder = 13
            end
          end
          object pnlBotaoAcomp: TPanel
            Left = 0
            Top = 0
            Width = 50
            Height = 508
            Align = alLeft
            Enabled = False
            TabOrder = 1
            object btnInserirAcomp: TNxButton
              Left = 1
              Top = 0
              Width = 48
              Height = 65
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
                3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
                19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
                AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
                383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
                19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
                F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
                DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
                FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
                AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
                50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
                DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
                17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
                8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
                D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
                39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
                F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
                E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
                F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
                6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
                F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
                DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
                80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
                F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
                45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
                F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
                3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
                F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
                563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
                B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
                73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
                664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
                B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
                20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
                F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
                F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
                FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
                3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
                C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
                8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
                137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
                CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
                ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
                B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
                130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
                E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
                E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 0
              OnClick = btnInserirAcompClick
            end
            object btnAlterarAcomp: TNxButton
              Left = 1
              Top = 63
              Width = 48
              Height = 65
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000017000000170000000100
                18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFDDDAD9D4CCC8B9ACA8B0A59FCDC2
                BDD4CECDE9E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9A96533E351F1A180C2D3C
                094662104D68093F5212222A2A1E17715E5BD8D6D9FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEEECEB20120D141D271D
                88B322BFF61EC1FF20C1FF20C0FF1FBFFF22BFF923B4F31757700D06006A615D
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEA9A81D12
                0F2D82A42FCFFF1DC3FF20BBFF1FB9FF20B5FF26B9FB37B8F435B8F631B9FA34
                CDFF30B7EE0931403C2B22F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                D7CDCF0300002385A51EC9FF20B8FE1EB7FD1FB7FD20B9FE20B8FC1FB8FF1DB5
                FE1DB6FD21B6FE20B5FD1CBEFF24C8FF123C4E3B271FFFFFFFFFFFFFFFFFFF00
                0000FFFFFFF7F7F60200001D8CB21FCFFF1CB3F822C0FF20BFFF1FBAFF1EB5FF
                1FB9FE1FB9FD1EB7FF1EB7FF1EB8FF1EB7FF1FB8FC1FBBFF24CAFF002E3E645D
                5CFFFFFFFFFFFF000000FFFFFF665E5C0C384A27D3FF20BAFF269AC6122C4028
                A3DD21B1F022CFFF24BBFF21BAFD20B8FE1FB6FE1FB7FF1EB8FD21B8FE1FB9FD
                1FBDFF24B5EE020000D4D2D4FFFFFF000000E4E0E00F000020B7E71EBAFF1CB8
                FF1BB3EF24678D13405912566B1541581AB2ED1EC3FF1DB8FF1AB7FD1AB6FF20
                B9FE1DB7FF20B6FE1FB5FE22CFFF114C646A615EFFFFFF000000B3ABAA002F49
                35C1FF2CB8F82FB7F733C6FF1C546E2EC1EC36DCFF24617334698A2D6C814BD4
                FF3FBAF939BBF42EB9F62AB7F525B5FD1FB7FF1CBAFF22B5F41B0F09E9E7E600
                0000695B5810688329C3FF23B7FA1FB8FA29C1FF398ABA4495BB2C61792C5A74
                439CC415121C32687959E6FF4FBFFA4EC1F93BBCFA1AB5FC1EB8FF1EB9FF24BE
                F7011319D2CECD000000382E2F1286A922C0FF1CB5FF28B7FD59C5FD5DE4FF1A
                303850A7CB1B35411009094CA6C9111319376A7B5EDAFF53C6FE58C6F948C2F9
                19B4FD1EB8FF1DC1FF003249BBB3AE0000002622211A90B91FBFFF1DB6FC57C6
                FD65CBF761CBFD73D2FF0A0B1156A0BF18232D1A1A1857AACC10111C3A6B7B6F
                E4FF5EC8F96ACCF93FBFFA1BB4FF21C3FF01435EA49B99000000251F201388B0
                1ABFFF3DC0FA77CFF870CCF86FCDF871D8FF4E86970100006FB6D81A292C170C
                0C69B4D30D1017477C8983EAFF71CBFB6ACDF724B6FF20C1FF003957A9A08B00
                00005548481C82A31CBFFF6CC9F785D2F581D0F683CEF77ECFF98CE9FF6DA3B7
                06000072A9C42B3C411918167AB5D21415184E727C88DFFF88D1FA3BBFFB1BBD
                FF123547D0C3B4000000BBB2AB4688A62DBCFF82CDF193D1EE8FD0F18FD1F38C
                D4F58CD2F69BECFF62909C15100F85B6CC3839422A2E3086B7CE191C1F5F8B9B
                99E2FF4EC3FA14B8F96D6C6DEAE7D9000000E9E4E267707309BAFC86D2F9A0D9
                F698D8F699D7F59AD7F59AD7F599D6F5A4EDFF7A9FAC0B00018ABACC2F3D4219
                101387B8CF9DD8F4A6DDF542C5FF2F9FD1A18D89FDFAEB000000FEFEFEA89286
                379FCC5ED1FFB9DFF1A8DCF2AADDF4A9DCF2A9DCF2A9DBF2A5DBF2BAF5FF7FA7
                B0140D0C84A0AE4D5A65A5D4E6A9E1FCABDEF223C7FF6D7C85CDC9C5FFFDF400
                0000FFFFFFD6D4D478807E35BFFFB4E5F6B9DFF0B2DEF4B3DEF2B3DFF3B3DFF3
                B4DEF2B3DDF3C8F4FF798E953C474FC2F1FFB6E4FAC3E0EF8CDCFF3D9DCC9488
                83FFFFFFFFFFFD000000FFFFFFFFFFFFC8BBB2658A9B60CAF9D7EBF4CBE3F1C5
                E1F3C5E2F2C6E2F2C6E2F2C6E2F2C5E3F1D0F1FFDEFBFFC4E5F3D2E5F1BAE8FF
                34ABD58D8884F8F6F4FFFFFFFCFFFF000000FFFFFFFDFDFDFCFDFEBAB0AA7098
                A47DD0F8DDEBF3DFE9F3D3E9EFD2E9F0D2E8F0D1E6EECAE1E8CCE3E8CFE1E7E6
                E8EEAFE2FC56B7DE92928FE0D9D6FFFFFFFCFAFAF0F3F3000000FFFFFFFCFCFC
                FDFDFDFFFFFFCFC0C48D9E9C60B1DAACE0F5E1EEF4E4EEF2E7EEF2E8EEF3E6ED
                F2E2EBF3D9EBF47BCDEE6CA4BCA59D9AF5EBEAFFFFFFFFFFFFFFFDFEEBF3F000
                0000FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE8E0E2CBBDB383A3AF77AFCE8DC4DB
                A0CFE4A2D0E596CCE284BDD76EA8BFAAADA8D9CAC5FCFCFBFFFFFFFEFFFFFFFF
                FFFFFFFFFCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF7
                F1EDE2DDD5CBCCCAB5C1C4B4BFC2BFC3C1D6D2CFEEE7E3FAF7F5FFFFFFFFFFFF
                FEFFFFFFFFFFFFFFFFFFFFFFF9FEFE000000}
              TabOrder = 1
              OnClick = btnAlterarAcompClick
            end
            object btnExcluirAcomp: TNxButton
              Left = 1
              Top = 125
              Width = 48
              Height = 65
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
                0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
                010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
                18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
                040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
                440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
                00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
                76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
                C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
                FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
                0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
                80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
                00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
                0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
                C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
                00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
                0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
                B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
                8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
                9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
                C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
                FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
                DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
                DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
                002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
                FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
                001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
                0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
                CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
                00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
                0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
                EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
                00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
                0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
                F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
                DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
                0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
                C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
                24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
                0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
                C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
                26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
                F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
                DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
                FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
                0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
                F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
                00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
                C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
                FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
                A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
              TabOrder = 2
              OnClick = btnExcluirAcompClick
            end
            object btnConfirmarAcomp: TNxButton
              Left = 1
              Top = 188
              Width = 48
              Height = 65
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000017000000170000000100
                18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
                224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
                3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
                5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
                4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
                402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
                4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
                0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
                0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
                04550500550505560707540B065309065008044D06034D050042002F65312860
                2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
                54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
                044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
                0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
                550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
                2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
                C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
                00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
                FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
                002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
                FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
                07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
                DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
                C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
                5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
                FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
                000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
                056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
                022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
                9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
                B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
                8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
                FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
                B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
                2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
                0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
                5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
                299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
                C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
                36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
                4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
                984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
                FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
                7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
                B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
                CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
              TabOrder = 3
              OnClick = btnConfirmarAcompClick
            end
            object btnCancelarAcomp: TNxButton
              Left = 1
              Top = 251
              Width = 48
              Height = 65
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000017000000170000000100
                18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEDECE4C8C7B9706E6B39384207081E0000220706
                1D3B3A4274736FCCCCBFEEEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7C631F1D2C0000500000810005A3
                000EB4000DB10007AB00009200006C00003C22222A83836EFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF1F0E93C3B2F00005F000FBE00
                15BD0013B6000BB20006B30003B50003B00005A700069E00029A000092000040
                3E3E35F3F3EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFEAE9E11C1D210003
                950021D80015BB0007BF0000C50000C60000C60000C50000C60000C90000C800
                02B50002990000A10000651E1E21EDEDE7FFFFFFFFFFFF000000FFFFFFFFFFFF
                363427000AA50025D70017C10000CD0000CB0000C90000CD0000C90000C90000
                C90000CD0000CD0000D30000CF00029B00019400006C38382EFFFFFFFFFFFF00
                0000FFFFFF6B6549000286002AE7001DC90000D50908C18180B88E8EBD0C0DB9
                0000D30000D20000D21214B77A7BB44344AD0000C90000E100039B00009D0000
                4F6D6D55FFFFFF000000E4E1D80A0F3A0028E70023D00003D40000D28385E1FF
                FFFFFFFFFFDFE0E90709BC0000D71416BCE8E9ECFFFFFFFFFFFF6364D70000D4
                0000D40003940000970A0A26E4E4DC000000ABA69800047D002FE80016D70000
                DA0000D78C8CEEFFFFFFFEFEFDFFFFFFCDCEEC2327BAD7D8EEFFFFFFFEFEFDFF
                FFFF8F8FED0000D70000E10003B5000399000046ABAB9D0000005C5960001BC8
                0031E40005DE0000E00000E00808DEBEBEF6FFFFFFFDFDFDFFFFFFFFFFFFFFFF
                FFFDFDFDFFFFFFC8C8F70C0CDF0000DF0000E40001D700069500007E5B5A5C00
                00002024330030F60031E20000E20000E40000E30000E20A0AE2C9C9FAFFFFFE
                FDFDFDFEFEFEFDFDFDFFFFFED7D6FC1313E30000E20000E30000E50000E80007
                980000A11D1C28000000000830003AFF002EE40000E80000E80000E80000E900
                00E83338DDEEEFF9FFFFFEFDFDFDFFFFFEEFF1F93034DE0000E70000E90000E8
                0000E80000EF000AA00007AF00001F000000000B32003CFF0033E70000EC0000
                EC0000EC0000EB2932E2E9EDF6FFFFFFFDFDFDFFFFFDFDFDFDFFFFFFDFE3F41C
                24E10000EC0000EC0000ED0000F1000CA0000CB400022200000000072F003AFF
                0039EC0008EE0000F00000F0202BEBE5ECF8FFFFFFFEFEFDFFFFFEFFFFFEFFFF
                FEFEFEFDFFFFFFDEE4F71925EA0000F00000F40002E8000FA0000CB700002000
                00001D1C28002CF0003CF60020EF0000F30000F39998F9FFFFFFFDFDFDFFFFFF
                B4B4FB0000F1A9A9FBFFFFFFFEFEFDFFFFFF9595F90000F30000FB000BCC0012
                A70006AD21202B0000005B5653001BB7003FFF0036EF0004F60000F65050F7FF
                FFFFFFFFFFCFCFFD0505F50000F50000F4C8C8FCFFFFFEFFFFFF7374F80000F7
                0001F60012B30014B400008A5C5A5A000000AAA898000051003EFF003DF5002F
                F10000FA0000F92828F94949FA0101F80000F90000F90000F90000F85858F94B
                4BFA0000F90000FF0015C30018B20015BF000049ADAC9D000000E4E4DC0A0518
                0019CE0045FF003EF3002AF20001FB0000FD0000F90000FA0000FA0000FA0000
                FA0000FA0000FA0000FF0000FC0015D1001DB4001CC00005B00A0822E3E3DC00
                0000FFFFFF6C6B5300004D002EF10043FF003DF30036EF0011F70000FF0000FF
                0000FF0000FE0000FF0000FF0000FF000AEE0021CA0021C2001FC40013CA0000
                556C6C53FFFFFF000000FFFFFFFFFFFF38372B0000700023E30042FF003CF700
                3EEE0038EB0021EF0015F20011F40013EF001CE6002AD2002ACB0025CE0025CD
                0012C800007837362BFFFFFFFFFFFF000000FFFFFFFFFFFFECECE51E1D1F0000
                720017E40038F60043FD003BF3003AEC0037E60035E10032DD0030DA002DD800
                2FD90023D1000DD60000791C1B1EEBEBE4FFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFF2F2EB3D3D310000530000C0000EE2002DF70035F40035ED0034E90031
                E4002CE40024E50009D90000C20000573D3C31F1F1EAFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82826722212E00005A0000A20000E1
                0002FF0004FF0001FF0000E20000A500005C21202E808065FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE5CB
                CBBA73736D3A3A4707062F00003107062F3A3A4771716DCACAB8EDEDE5FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
              TabOrder = 4
              OnClick = btnCancelarAcompClick
            end
          end
          object pnlGridAcomp: TPanel
            Left = 0
            Top = 508
            Width = 1358
            Height = 85
            Align = alBottom
            TabOrder = 2
            object DBGrid1: TDBGrid
              Left = 1
              Top = 1
              Width = 1051
              Height = 83
              Align = alClient
              DataSource = DMPessoa.dsPessoaAcomp
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ITEM'
                  Title.Alignment = taCenter
                  Title.Caption = 'Item'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nome'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IDENTIDADE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Identidade'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nome_Parentesco'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nome Parentesco'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_NASCIMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data Nascimento'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PARENTESCO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Parentesco'
                  Visible = True
                end>
            end
          end
        end
        object TS_Beneficio: TRzTabSheet
          Caption = 'Benef'#237'cio'
          object pnlGeralBeneficio: TPanel
            Left = 0
            Top = 0
            Width = 1358
            Height = 593
            Align = alClient
            TabOrder = 0
            object pnlGridBeneficio: TPanel
              Left = 1
              Top = 507
              Width = 1356
              Height = 85
              Align = alBottom
              TabOrder = 0
              object DBGrid3: TDBGrid
                Left = 1
                Top = 1
                Width = 1049
                Height = 83
                Align = alClient
                DataSource = DMPessoa.dsPessoaBeneficio
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ITEM'
                    Title.Alignment = taCenter
                    Title.Caption = 'Item'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME_BENEFICIO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Benef'#237'cio'
                    Width = 185
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_BENEFICIO'
                    Title.Alignment = taCenter
                    Title.Caption = 'N'#250'mero Benef'#237'cio'
                    Width = 215
                    Visible = True
                  end>
              end
            end
            object pnlBeneficio: TPanel
              Left = 51
              Top = 1
              Width = 1306
              Height = 506
              Align = alClient
              Enabled = False
              TabOrder = 1
              object Label63: TLabel
                Left = 73
                Top = 38
                Width = 23
                Height = 13
                Caption = 'Item:'
              end
              object Label64: TLabel
                Left = 47
                Top = 62
                Width = 49
                Height = 13
                Caption = 'Benef'#237'cio:'
              end
              object Label66: TLabel
                Left = 7
                Top = 84
                Width = 89
                Height = 13
                Caption = 'N'#250'mero Benef'#237'cio:'
              end
              object DBEdit41: TDBEdit
                Left = 105
                Top = 30
                Width = 81
                Height = 21
                DataField = 'ITEM'
                DataSource = DMPessoa.dsPessoaBeneficio
                TabOrder = 0
              end
              object DBEdit43: TDBEdit
                Left = 106
                Top = 76
                Width = 164
                Height = 21
                DataField = 'NUMERO_BENEFICIO'
                DataSource = DMPessoa.dsPessoaBeneficio
                TabOrder = 1
              end
              object RxDBLookupCombo7: TRxDBLookupCombo
                Left = 105
                Top = 52
                Width = 163
                Height = 21
                DropDownCount = 8
                DataField = 'ID_BENEFICIO'
                DataSource = DMPessoa.dsPessoaBeneficio
                LookupField = 'ID'
                LookupDisplay = 'NOME'
                LookupSource = DMPessoa.dsBeneficio
                TabOrder = 2
              end
            end
            object pnlBotaoBeneficio: TPanel
              Left = 1
              Top = 1
              Width = 50
              Height = 506
              Align = alLeft
              Enabled = False
              TabOrder = 2
              object btnInserirBeneficio: TNxButton
                Left = 0
                Top = 0
                Width = 48
                Height = 65
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
                  3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
                  19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
                  AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
                  383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
                  19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
                  F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
                  DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
                  FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
                  AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
                  50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
                  DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
                  17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
                  8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
                  D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
                  39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
                  F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
                  E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
                  F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
                  6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
                  F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
                  DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
                  80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
                  F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
                  45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
                  F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
                  3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
                  F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
                  563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
                  B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
                  73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
                  664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
                  B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
                  20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
                  F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
                  F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
                  FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
                  3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
                  C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
                  8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
                  137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
                  CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
                  ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
                  B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
                  130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
                  E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
                  E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = btnInserirBeneficioClick
              end
              object btnAlterarBeneficio: TNxButton
                Left = 0
                Top = 64
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFDDDAD9D4CCC8B9ACA8B0A59FCDC2
                  BDD4CECDE9E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9A96533E351F1A180C2D3C
                  094662104D68093F5212222A2A1E17715E5BD8D6D9FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEEECEB20120D141D271D
                  88B322BFF61EC1FF20C1FF20C0FF1FBFFF22BFF923B4F31757700D06006A615D
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEA9A81D12
                  0F2D82A42FCFFF1DC3FF20BBFF1FB9FF20B5FF26B9FB37B8F435B8F631B9FA34
                  CDFF30B7EE0931403C2B22F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  D7CDCF0300002385A51EC9FF20B8FE1EB7FD1FB7FD20B9FE20B8FC1FB8FF1DB5
                  FE1DB6FD21B6FE20B5FD1CBEFF24C8FF123C4E3B271FFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFF7F7F60200001D8CB21FCFFF1CB3F822C0FF20BFFF1FBAFF1EB5FF
                  1FB9FE1FB9FD1EB7FF1EB7FF1EB8FF1EB7FF1FB8FC1FBBFF24CAFF002E3E645D
                  5CFFFFFFFFFFFF000000FFFFFF665E5C0C384A27D3FF20BAFF269AC6122C4028
                  A3DD21B1F022CFFF24BBFF21BAFD20B8FE1FB6FE1FB7FF1EB8FD21B8FE1FB9FD
                  1FBDFF24B5EE020000D4D2D4FFFFFF000000E4E0E00F000020B7E71EBAFF1CB8
                  FF1BB3EF24678D13405912566B1541581AB2ED1EC3FF1DB8FF1AB7FD1AB6FF20
                  B9FE1DB7FF20B6FE1FB5FE22CFFF114C646A615EFFFFFF000000B3ABAA002F49
                  35C1FF2CB8F82FB7F733C6FF1C546E2EC1EC36DCFF24617334698A2D6C814BD4
                  FF3FBAF939BBF42EB9F62AB7F525B5FD1FB7FF1CBAFF22B5F41B0F09E9E7E600
                  0000695B5810688329C3FF23B7FA1FB8FA29C1FF398ABA4495BB2C61792C5A74
                  439CC415121C32687959E6FF4FBFFA4EC1F93BBCFA1AB5FC1EB8FF1EB9FF24BE
                  F7011319D2CECD000000382E2F1286A922C0FF1CB5FF28B7FD59C5FD5DE4FF1A
                  303850A7CB1B35411009094CA6C9111319376A7B5EDAFF53C6FE58C6F948C2F9
                  19B4FD1EB8FF1DC1FF003249BBB3AE0000002622211A90B91FBFFF1DB6FC57C6
                  FD65CBF761CBFD73D2FF0A0B1156A0BF18232D1A1A1857AACC10111C3A6B7B6F
                  E4FF5EC8F96ACCF93FBFFA1BB4FF21C3FF01435EA49B99000000251F201388B0
                  1ABFFF3DC0FA77CFF870CCF86FCDF871D8FF4E86970100006FB6D81A292C170C
                  0C69B4D30D1017477C8983EAFF71CBFB6ACDF724B6FF20C1FF003957A9A08B00
                  00005548481C82A31CBFFF6CC9F785D2F581D0F683CEF77ECFF98CE9FF6DA3B7
                  06000072A9C42B3C411918167AB5D21415184E727C88DFFF88D1FA3BBFFB1BBD
                  FF123547D0C3B4000000BBB2AB4688A62DBCFF82CDF193D1EE8FD0F18FD1F38C
                  D4F58CD2F69BECFF62909C15100F85B6CC3839422A2E3086B7CE191C1F5F8B9B
                  99E2FF4EC3FA14B8F96D6C6DEAE7D9000000E9E4E267707309BAFC86D2F9A0D9
                  F698D8F699D7F59AD7F59AD7F599D6F5A4EDFF7A9FAC0B00018ABACC2F3D4219
                  101387B8CF9DD8F4A6DDF542C5FF2F9FD1A18D89FDFAEB000000FEFEFEA89286
                  379FCC5ED1FFB9DFF1A8DCF2AADDF4A9DCF2A9DCF2A9DBF2A5DBF2BAF5FF7FA7
                  B0140D0C84A0AE4D5A65A5D4E6A9E1FCABDEF223C7FF6D7C85CDC9C5FFFDF400
                  0000FFFFFFD6D4D478807E35BFFFB4E5F6B9DFF0B2DEF4B3DEF2B3DFF3B3DFF3
                  B4DEF2B3DDF3C8F4FF798E953C474FC2F1FFB6E4FAC3E0EF8CDCFF3D9DCC9488
                  83FFFFFFFFFFFD000000FFFFFFFFFFFFC8BBB2658A9B60CAF9D7EBF4CBE3F1C5
                  E1F3C5E2F2C6E2F2C6E2F2C6E2F2C5E3F1D0F1FFDEFBFFC4E5F3D2E5F1BAE8FF
                  34ABD58D8884F8F6F4FFFFFFFCFFFF000000FFFFFFFDFDFDFCFDFEBAB0AA7098
                  A47DD0F8DDEBF3DFE9F3D3E9EFD2E9F0D2E8F0D1E6EECAE1E8CCE3E8CFE1E7E6
                  E8EEAFE2FC56B7DE92928FE0D9D6FFFFFFFCFAFAF0F3F3000000FFFFFFFCFCFC
                  FDFDFDFFFFFFCFC0C48D9E9C60B1DAACE0F5E1EEF4E4EEF2E7EEF2E8EEF3E6ED
                  F2E2EBF3D9EBF47BCDEE6CA4BCA59D9AF5EBEAFFFFFFFFFFFFFFFDFEEBF3F000
                  0000FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE8E0E2CBBDB383A3AF77AFCE8DC4DB
                  A0CFE4A2D0E596CCE284BDD76EA8BFAAADA8D9CAC5FCFCFBFFFFFFFEFFFFFFFF
                  FFFFFFFFFCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF7
                  F1EDE2DDD5CBCCCAB5C1C4B4BFC2BFC3C1D6D2CFEEE7E3FAF7F5FFFFFFFFFFFF
                  FEFFFFFFFFFFFFFFFFFFFFFFF9FEFE000000}
                TabOrder = 1
                OnClick = btnAlterarBeneficioClick
              end
              object btnExcluirBeneficio: TNxButton
                Left = 0
                Top = 128
                Width = 48
                Height = 65
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
                  0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
                  010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
                  18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
                  040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
                  440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
                  00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
                  76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
                  C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
                  FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
                  0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
                  80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
                  00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
                  0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
                  C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
                  00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
                  0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
                  B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
                  8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
                  9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
                  C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
                  FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
                  DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
                  DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                  FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
                  002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
                  FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
                  001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
                  0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
                  CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
                  00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
                  0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
                  EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
                  00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
                  0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
                  F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
                  DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
                  0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
                  C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
                  24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
                  0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
                  C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
                  26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
                  F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
                  DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
                  FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
                  0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
                  F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
                  00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
                  C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
                  FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
                  A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
                TabOrder = 2
                OnClick = btnExcluirBeneficioClick
              end
              object btnConfirmarBeneficio: TNxButton
                Left = 0
                Top = 192
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
                  224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
                  3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
                  5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
                  4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
                  402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
                  4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
                  0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
                  0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
                  04550500550505560707540B065309065008044D06034D050042002F65312860
                  2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
                  54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
                  044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
                  0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
                  550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
                  2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
                  C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
                  00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
                  FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
                  002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
                  FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
                  07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
                  DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
                  C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
                  5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
                  FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
                  000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
                  056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
                  022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
                  9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
                  B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
                  8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
                  FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
                  B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
                  2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
                  0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
                  5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
                  299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
                  C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
                  36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
                  4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
                  984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
                  FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
                  7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
                  B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
                  CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
                TabOrder = 3
                OnClick = btnConfirmarBeneficioClick
              end
              object btnCancelarBeneficio: TNxButton
                Left = 0
                Top = 256
                Width = 48
                Height = 63
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFEDECE4C8C7B9706E6B39384207081E0000220706
                  1D3B3A4274736FCCCCBFEEEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7C631F1D2C0000500000810005A3
                  000EB4000DB10007AB00009200006C00003C22222A83836EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF1F0E93C3B2F00005F000FBE00
                  15BD0013B6000BB20006B30003B50003B00005A700069E00029A000092000040
                  3E3E35F3F3EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFEAE9E11C1D210003
                  950021D80015BB0007BF0000C50000C60000C60000C50000C60000C90000C800
                  02B50002990000A10000651E1E21EDEDE7FFFFFFFFFFFF000000FFFFFFFFFFFF
                  363427000AA50025D70017C10000CD0000CB0000C90000CD0000C90000C90000
                  C90000CD0000CD0000D30000CF00029B00019400006C38382EFFFFFFFFFFFF00
                  0000FFFFFF6B6549000286002AE7001DC90000D50908C18180B88E8EBD0C0DB9
                  0000D30000D20000D21214B77A7BB44344AD0000C90000E100039B00009D0000
                  4F6D6D55FFFFFF000000E4E1D80A0F3A0028E70023D00003D40000D28385E1FF
                  FFFFFFFFFFDFE0E90709BC0000D71416BCE8E9ECFFFFFFFFFFFF6364D70000D4
                  0000D40003940000970A0A26E4E4DC000000ABA69800047D002FE80016D70000
                  DA0000D78C8CEEFFFFFFFEFEFDFFFFFFCDCEEC2327BAD7D8EEFFFFFFFEFEFDFF
                  FFFF8F8FED0000D70000E10003B5000399000046ABAB9D0000005C5960001BC8
                  0031E40005DE0000E00000E00808DEBEBEF6FFFFFFFDFDFDFFFFFFFFFFFFFFFF
                  FFFDFDFDFFFFFFC8C8F70C0CDF0000DF0000E40001D700069500007E5B5A5C00
                  00002024330030F60031E20000E20000E40000E30000E20A0AE2C9C9FAFFFFFE
                  FDFDFDFEFEFEFDFDFDFFFFFED7D6FC1313E30000E20000E30000E50000E80007
                  980000A11D1C28000000000830003AFF002EE40000E80000E80000E80000E900
                  00E83338DDEEEFF9FFFFFEFDFDFDFFFFFEEFF1F93034DE0000E70000E90000E8
                  0000E80000EF000AA00007AF00001F000000000B32003CFF0033E70000EC0000
                  EC0000EC0000EB2932E2E9EDF6FFFFFFFDFDFDFFFFFDFDFDFDFFFFFFDFE3F41C
                  24E10000EC0000EC0000ED0000F1000CA0000CB400022200000000072F003AFF
                  0039EC0008EE0000F00000F0202BEBE5ECF8FFFFFFFEFEFDFFFFFEFFFFFEFFFF
                  FEFEFEFDFFFFFFDEE4F71925EA0000F00000F40002E8000FA0000CB700002000
                  00001D1C28002CF0003CF60020EF0000F30000F39998F9FFFFFFFDFDFDFFFFFF
                  B4B4FB0000F1A9A9FBFFFFFFFEFEFDFFFFFF9595F90000F30000FB000BCC0012
                  A70006AD21202B0000005B5653001BB7003FFF0036EF0004F60000F65050F7FF
                  FFFFFFFFFFCFCFFD0505F50000F50000F4C8C8FCFFFFFEFFFFFF7374F80000F7
                  0001F60012B30014B400008A5C5A5A000000AAA898000051003EFF003DF5002F
                  F10000FA0000F92828F94949FA0101F80000F90000F90000F90000F85858F94B
                  4BFA0000F90000FF0015C30018B20015BF000049ADAC9D000000E4E4DC0A0518
                  0019CE0045FF003EF3002AF20001FB0000FD0000F90000FA0000FA0000FA0000
                  FA0000FA0000FA0000FF0000FC0015D1001DB4001CC00005B00A0822E3E3DC00
                  0000FFFFFF6C6B5300004D002EF10043FF003DF30036EF0011F70000FF0000FF
                  0000FF0000FE0000FF0000FF0000FF000AEE0021CA0021C2001FC40013CA0000
                  556C6C53FFFFFF000000FFFFFFFFFFFF38372B0000700023E30042FF003CF700
                  3EEE0038EB0021EF0015F20011F40013EF001CE6002AD2002ACB0025CE0025CD
                  0012C800007837362BFFFFFFFFFFFF000000FFFFFFFFFFFFECECE51E1D1F0000
                  720017E40038F60043FD003BF3003AEC0037E60035E10032DD0030DA002DD800
                  2FD90023D1000DD60000791C1B1EEBEBE4FFFFFFFFFFFF000000FFFFFFFFFFFF
                  FFFFFFF2F2EB3D3D310000530000C0000EE2002DF70035F40035ED0034E90031
                  E4002CE40024E50009D90000C20000573D3C31F1F1EAFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82826722212E00005A0000A20000E1
                  0002FF0004FF0001FF0000E20000A500005C21202E808065FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE5CB
                  CBBA73736D3A3A4707062F00003107062F3A3A4771716DCACAB8EDEDE5FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
                TabOrder = 4
                OnClick = btnCancelarBeneficioClick
              end
            end
          end
        end
        object ts_CID: TRzTabSheet
          Caption = 'CID-10'
          object pnlBotaoCID: TPanel
            Left = 0
            Top = 0
            Width = 50
            Height = 508
            Align = alLeft
            Enabled = False
            TabOrder = 0
            object btnInserirCID: TNxButton
              Left = 0
              Top = 0
              Width = 48
              Height = 65
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
                3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
                19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
                AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
                383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
                19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
                F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
                DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
                FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
                AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
                50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
                DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
                17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
                8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
                D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
                39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
                F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
                E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
                F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
                6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
                F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
                DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
                80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
                F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
                45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
                F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
                3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
                F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
                563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
                B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
                73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
                664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
                B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
                20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
                F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
                F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
                FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
                3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
                C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
                8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
                137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
                CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
                ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
                B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
                130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
                E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
                E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 0
              OnClick = btnInserirCIDClick
            end
            object btnAlterarCID: TNxButton
              Left = 0
              Top = 64
              Width = 48
              Height = 65
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000017000000170000000100
                18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFDDDAD9D4CCC8B9ACA8B0A59FCDC2
                BDD4CECDE9E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9A96533E351F1A180C2D3C
                094662104D68093F5212222A2A1E17715E5BD8D6D9FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEEECEB20120D141D271D
                88B322BFF61EC1FF20C1FF20C0FF1FBFFF22BFF923B4F31757700D06006A615D
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEA9A81D12
                0F2D82A42FCFFF1DC3FF20BBFF1FB9FF20B5FF26B9FB37B8F435B8F631B9FA34
                CDFF30B7EE0931403C2B22F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                D7CDCF0300002385A51EC9FF20B8FE1EB7FD1FB7FD20B9FE20B8FC1FB8FF1DB5
                FE1DB6FD21B6FE20B5FD1CBEFF24C8FF123C4E3B271FFFFFFFFFFFFFFFFFFF00
                0000FFFFFFF7F7F60200001D8CB21FCFFF1CB3F822C0FF20BFFF1FBAFF1EB5FF
                1FB9FE1FB9FD1EB7FF1EB7FF1EB8FF1EB7FF1FB8FC1FBBFF24CAFF002E3E645D
                5CFFFFFFFFFFFF000000FFFFFF665E5C0C384A27D3FF20BAFF269AC6122C4028
                A3DD21B1F022CFFF24BBFF21BAFD20B8FE1FB6FE1FB7FF1EB8FD21B8FE1FB9FD
                1FBDFF24B5EE020000D4D2D4FFFFFF000000E4E0E00F000020B7E71EBAFF1CB8
                FF1BB3EF24678D13405912566B1541581AB2ED1EC3FF1DB8FF1AB7FD1AB6FF20
                B9FE1DB7FF20B6FE1FB5FE22CFFF114C646A615EFFFFFF000000B3ABAA002F49
                35C1FF2CB8F82FB7F733C6FF1C546E2EC1EC36DCFF24617334698A2D6C814BD4
                FF3FBAF939BBF42EB9F62AB7F525B5FD1FB7FF1CBAFF22B5F41B0F09E9E7E600
                0000695B5810688329C3FF23B7FA1FB8FA29C1FF398ABA4495BB2C61792C5A74
                439CC415121C32687959E6FF4FBFFA4EC1F93BBCFA1AB5FC1EB8FF1EB9FF24BE
                F7011319D2CECD000000382E2F1286A922C0FF1CB5FF28B7FD59C5FD5DE4FF1A
                303850A7CB1B35411009094CA6C9111319376A7B5EDAFF53C6FE58C6F948C2F9
                19B4FD1EB8FF1DC1FF003249BBB3AE0000002622211A90B91FBFFF1DB6FC57C6
                FD65CBF761CBFD73D2FF0A0B1156A0BF18232D1A1A1857AACC10111C3A6B7B6F
                E4FF5EC8F96ACCF93FBFFA1BB4FF21C3FF01435EA49B99000000251F201388B0
                1ABFFF3DC0FA77CFF870CCF86FCDF871D8FF4E86970100006FB6D81A292C170C
                0C69B4D30D1017477C8983EAFF71CBFB6ACDF724B6FF20C1FF003957A9A08B00
                00005548481C82A31CBFFF6CC9F785D2F581D0F683CEF77ECFF98CE9FF6DA3B7
                06000072A9C42B3C411918167AB5D21415184E727C88DFFF88D1FA3BBFFB1BBD
                FF123547D0C3B4000000BBB2AB4688A62DBCFF82CDF193D1EE8FD0F18FD1F38C
                D4F58CD2F69BECFF62909C15100F85B6CC3839422A2E3086B7CE191C1F5F8B9B
                99E2FF4EC3FA14B8F96D6C6DEAE7D9000000E9E4E267707309BAFC86D2F9A0D9
                F698D8F699D7F59AD7F59AD7F599D6F5A4EDFF7A9FAC0B00018ABACC2F3D4219
                101387B8CF9DD8F4A6DDF542C5FF2F9FD1A18D89FDFAEB000000FEFEFEA89286
                379FCC5ED1FFB9DFF1A8DCF2AADDF4A9DCF2A9DCF2A9DBF2A5DBF2BAF5FF7FA7
                B0140D0C84A0AE4D5A65A5D4E6A9E1FCABDEF223C7FF6D7C85CDC9C5FFFDF400
                0000FFFFFFD6D4D478807E35BFFFB4E5F6B9DFF0B2DEF4B3DEF2B3DFF3B3DFF3
                B4DEF2B3DDF3C8F4FF798E953C474FC2F1FFB6E4FAC3E0EF8CDCFF3D9DCC9488
                83FFFFFFFFFFFD000000FFFFFFFFFFFFC8BBB2658A9B60CAF9D7EBF4CBE3F1C5
                E1F3C5E2F2C6E2F2C6E2F2C6E2F2C5E3F1D0F1FFDEFBFFC4E5F3D2E5F1BAE8FF
                34ABD58D8884F8F6F4FFFFFFFCFFFF000000FFFFFFFDFDFDFCFDFEBAB0AA7098
                A47DD0F8DDEBF3DFE9F3D3E9EFD2E9F0D2E8F0D1E6EECAE1E8CCE3E8CFE1E7E6
                E8EEAFE2FC56B7DE92928FE0D9D6FFFFFFFCFAFAF0F3F3000000FFFFFFFCFCFC
                FDFDFDFFFFFFCFC0C48D9E9C60B1DAACE0F5E1EEF4E4EEF2E7EEF2E8EEF3E6ED
                F2E2EBF3D9EBF47BCDEE6CA4BCA59D9AF5EBEAFFFFFFFFFFFFFFFDFEEBF3F000
                0000FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE8E0E2CBBDB383A3AF77AFCE8DC4DB
                A0CFE4A2D0E596CCE284BDD76EA8BFAAADA8D9CAC5FCFCFBFFFFFFFEFFFFFFFF
                FFFFFFFFFCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF7
                F1EDE2DDD5CBCCCAB5C1C4B4BFC2BFC3C1D6D2CFEEE7E3FAF7F5FFFFFFFFFFFF
                FEFFFFFFFFFFFFFFFFFFFFFFF9FEFE000000}
              TabOrder = 1
              OnClick = btnAlterarCIDClick
            end
            object btnExcluirCID: TNxButton
              Left = 0
              Top = 128
              Width = 48
              Height = 65
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
                0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
                010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
                18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
                040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
                440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
                00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
                76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
                C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
                FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
                0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
                80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
                00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
                0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
                C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
                00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
                0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
                B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
                8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
                9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
                C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
                FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
                DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
                DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
                002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
                FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
                001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
                0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
                CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
                00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
                0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
                EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
                00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
                0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
                F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
                DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
                0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
                C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
                24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
                0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
                C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
                26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
                F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
                DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
                FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
                0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
                F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
                00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
                C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
                FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
                A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
              TabOrder = 2
              OnClick = btnExcluirCIDClick
            end
            object btnConfirmarCID: TNxButton
              Left = 0
              Top = 192
              Width = 48
              Height = 65
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000017000000170000000100
                18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
                224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
                3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
                5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
                4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
                402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
                4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
                0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
                0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
                04550500550505560707540B065309065008044D06034D050042002F65312860
                2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
                54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
                044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
                0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
                550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
                2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
                C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
                00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
                FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
                002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
                FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
                07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
                DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
                C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
                5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
                FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
                000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
                056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
                022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
                9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
                B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
                8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
                FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
                B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
                2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
                0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
                5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
                299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
                C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
                36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
                4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
                984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
                FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
                7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
                B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
                CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
              TabOrder = 3
              OnClick = btnConfirmarCIDClick
            end
            object btnCancelarCID: TNxButton
              Left = 0
              Top = 256
              Width = 48
              Height = 63
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000017000000170000000100
                18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEDECE4C8C7B9706E6B39384207081E0000220706
                1D3B3A4274736FCCCCBFEEEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7C631F1D2C0000500000810005A3
                000EB4000DB10007AB00009200006C00003C22222A83836EFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF1F0E93C3B2F00005F000FBE00
                15BD0013B6000BB20006B30003B50003B00005A700069E00029A000092000040
                3E3E35F3F3EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFEAE9E11C1D210003
                950021D80015BB0007BF0000C50000C60000C60000C50000C60000C90000C800
                02B50002990000A10000651E1E21EDEDE7FFFFFFFFFFFF000000FFFFFFFFFFFF
                363427000AA50025D70017C10000CD0000CB0000C90000CD0000C90000C90000
                C90000CD0000CD0000D30000CF00029B00019400006C38382EFFFFFFFFFFFF00
                0000FFFFFF6B6549000286002AE7001DC90000D50908C18180B88E8EBD0C0DB9
                0000D30000D20000D21214B77A7BB44344AD0000C90000E100039B00009D0000
                4F6D6D55FFFFFF000000E4E1D80A0F3A0028E70023D00003D40000D28385E1FF
                FFFFFFFFFFDFE0E90709BC0000D71416BCE8E9ECFFFFFFFFFFFF6364D70000D4
                0000D40003940000970A0A26E4E4DC000000ABA69800047D002FE80016D70000
                DA0000D78C8CEEFFFFFFFEFEFDFFFFFFCDCEEC2327BAD7D8EEFFFFFFFEFEFDFF
                FFFF8F8FED0000D70000E10003B5000399000046ABAB9D0000005C5960001BC8
                0031E40005DE0000E00000E00808DEBEBEF6FFFFFFFDFDFDFFFFFFFFFFFFFFFF
                FFFDFDFDFFFFFFC8C8F70C0CDF0000DF0000E40001D700069500007E5B5A5C00
                00002024330030F60031E20000E20000E40000E30000E20A0AE2C9C9FAFFFFFE
                FDFDFDFEFEFEFDFDFDFFFFFED7D6FC1313E30000E20000E30000E50000E80007
                980000A11D1C28000000000830003AFF002EE40000E80000E80000E80000E900
                00E83338DDEEEFF9FFFFFEFDFDFDFFFFFEEFF1F93034DE0000E70000E90000E8
                0000E80000EF000AA00007AF00001F000000000B32003CFF0033E70000EC0000
                EC0000EC0000EB2932E2E9EDF6FFFFFFFDFDFDFFFFFDFDFDFDFFFFFFDFE3F41C
                24E10000EC0000EC0000ED0000F1000CA0000CB400022200000000072F003AFF
                0039EC0008EE0000F00000F0202BEBE5ECF8FFFFFFFEFEFDFFFFFEFFFFFEFFFF
                FEFEFEFDFFFFFFDEE4F71925EA0000F00000F40002E8000FA0000CB700002000
                00001D1C28002CF0003CF60020EF0000F30000F39998F9FFFFFFFDFDFDFFFFFF
                B4B4FB0000F1A9A9FBFFFFFFFEFEFDFFFFFF9595F90000F30000FB000BCC0012
                A70006AD21202B0000005B5653001BB7003FFF0036EF0004F60000F65050F7FF
                FFFFFFFFFFCFCFFD0505F50000F50000F4C8C8FCFFFFFEFFFFFF7374F80000F7
                0001F60012B30014B400008A5C5A5A000000AAA898000051003EFF003DF5002F
                F10000FA0000F92828F94949FA0101F80000F90000F90000F90000F85858F94B
                4BFA0000F90000FF0015C30018B20015BF000049ADAC9D000000E4E4DC0A0518
                0019CE0045FF003EF3002AF20001FB0000FD0000F90000FA0000FA0000FA0000
                FA0000FA0000FA0000FF0000FC0015D1001DB4001CC00005B00A0822E3E3DC00
                0000FFFFFF6C6B5300004D002EF10043FF003DF30036EF0011F70000FF0000FF
                0000FF0000FE0000FF0000FF0000FF000AEE0021CA0021C2001FC40013CA0000
                556C6C53FFFFFF000000FFFFFFFFFFFF38372B0000700023E30042FF003CF700
                3EEE0038EB0021EF0015F20011F40013EF001CE6002AD2002ACB0025CE0025CD
                0012C800007837362BFFFFFFFFFFFF000000FFFFFFFFFFFFECECE51E1D1F0000
                720017E40038F60043FD003BF3003AEC0037E60035E10032DD0030DA002DD800
                2FD90023D1000DD60000791C1B1EEBEBE4FFFFFFFFFFFF000000FFFFFFFFFFFF
                FFFFFFF2F2EB3D3D310000530000C0000EE2002DF70035F40035ED0034E90031
                E4002CE40024E50009D90000C20000573D3C31F1F1EAFFFFFFFFFFFFFFFFFF00
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82826722212E00005A0000A20000E1
                0002FF0004FF0001FF0000E20000A500005C21202E808065FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE5CB
                CBBA73736D3A3A4707062F00003107062F3A3A4771716DCACAB8EDEDE5FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
              TabOrder = 4
              OnClick = btnCancelarCIDClick
            end
          end
          object pnlCID: TPanel
            Left = 50
            Top = 0
            Width = 1308
            Height = 508
            Align = alClient
            Enabled = False
            TabOrder = 1
            object Label67: TLabel
              Left = 33
              Top = 62
              Width = 36
              Height = 13
              Caption = 'CID-10:'
            end
            object Label65: TLabel
              Left = 212
              Top = 93
              Width = 25
              Height = 13
              Caption = 'Final:'
            end
            object Label68: TLabel
              Left = 41
              Top = 93
              Width = 28
              Height = 13
              Caption = 'Inicio:'
            end
            object comboCID: TRxDBLookupCombo
              Left = 73
              Top = 54
              Width = 280
              Height = 21
              DropDownCount = 8
              DataField = 'ID_CID'
              DataSource = DMPessoa.dsPessoa_Cid
              LookupField = 'ID'
              LookupDisplay = 'DESCRICAO'
              LookupSource = DMPessoa.dsTAB_CID
              TabOrder = 0
            end
            object DBDateEdit12: TDBDateEdit
              Left = 73
              Top = 85
              Width = 109
              Height = 21
              DataField = 'DATA_INICIO'
              DataSource = DMPessoa.dsPessoa_Cid
              NumGlyphs = 2
              TabOrder = 1
            end
            object DBDateEdit13: TDBDateEdit
              Left = 245
              Top = 85
              Width = 109
              Height = 21
              DataField = 'DATA_FINAL'
              DataSource = DMPessoa.dsPessoa_Cid
              NumGlyphs = 2
              TabOrder = 2
            end
            object DBCheckBox4: TDBCheckBox
              Left = 378
              Top = 58
              Width = 97
              Height = 17
              Caption = 'CID Principal'
              DataField = 'PRINCIPAL'
              DataSource = DMPessoa.dsPessoa_Cid
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 508
            Width = 1358
            Height = 85
            Align = alBottom
            TabOrder = 2
            object DBGrid4: TDBGrid
              Left = 1
              Top = 1
              Width = 1051
              Height = 83
              Align = alClient
              DataSource = DMPessoa.dsPessoa_Cid
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CID'
                  Title.Alignment = taCenter
                  Title.Caption = 'CID-10'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Nome_Cid'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o CID'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRINCIPAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Principal'
                  Width = 124
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_INICIO'
                  Title.Alignment = taCenter
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_FINAL'
                  Title.Alignment = taCenter
                  Width = 88
                  Visible = True
                end>
            end
          end
        end
      end
      object pnlCor: TPanel
        Left = 0
        Top = 659
        Width = 1362
        Height = 23
        Align = alBottom
        TabOrder = 2
      end
    end
  end
  inherited UCControls1: TUCControls
    UserControl = fMenu.UserControl1
    Left = 928
    Top = 42
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 872
    Top = 37
  end
  inherited PopupMenu1: TPopupMenu
    inherited Aniversariantes1: TMenuItem
      OnClick = Aniversariantes1Click
    end
  end
end
