object frmConsPessoa: TfrmConsPessoa
  Left = -8
  Top = -8
  Width = 1382
  Height = 744
  Caption = 'Consulta Geral'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1366
    Height = 705
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1364
      Height = 102
      Align = alTop
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 1170
        Height = 100
        Align = alClient
        Anchors = [akRight]
        Caption = 'Filtros'
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 2
          Top = 15
          Width = 218
          Height = 83
          Align = alLeft
          Caption = 'Cidade'
          TabOrder = 0
          object Label1: TLabel
            Left = 22
            Top = 19
            Width = 17
            Height = 13
            Caption = 'UF:'
          end
          object Label2: TLabel
            Left = 3
            Top = 46
            Width = 36
            Height = 13
            Caption = 'Cidade:'
          end
          object dbcbxUf: TComboBox
            Left = 47
            Top = 12
            Width = 62
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            OnExit = cbEscolaridadeExit
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
          end
          object dbrxCidade: TRxDBLookupCombo
            Left = 46
            Top = 38
            Width = 163
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = DMPessoa.dsCidadeConsulta
            TabOrder = 1
          end
        end
        object rdgOrdem: TRadioGroup
          Left = 768
          Top = 16
          Width = 101
          Height = 82
          Caption = 'Ordem'
          ItemIndex = 0
          Items.Strings = (
            'C'#243'digo'
            'Nome')
          TabOrder = 1
        end
        object GroupBox4: TGroupBox
          Left = 222
          Top = 16
          Width = 242
          Height = 41
          Caption = 'Tipo Defici'#234'ncia'
          TabOrder = 2
          object Label4: TLabel
            Left = 9
            Top = 20
            Width = 77
            Height = 13
            Caption = 'Tipo Defici'#234'ncia'
          end
          object dbrxTipoDeficiencia: TRxDBLookupCombo
            Left = 93
            Top = 12
            Width = 132
            Height = 22
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = DMConsPessoa.dsTipoDeficiencia
            TabOrder = 0
          end
        end
        object GroupBox5: TGroupBox
          Left = 222
          Top = 57
          Width = 242
          Height = 41
          Caption = 'Escolaridade'
          TabOrder = 3
          object Label5: TLabel
            Left = 6
            Top = 19
            Width = 64
            Height = 13
            Caption = 'Escolaridade:'
          end
          object cbEscolaridade: TComboBox
            Left = 72
            Top = 12
            Width = 165
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            OnExit = cbEscolaridadeExit
            Items.Strings = (
              'Analfabeto'
              'At'#233' o 5'#186' ano Incompleto'
              '5'#186' ano do Ensino Fundamental Completo'
              '6'#186' ao 9'#186' ano do Ensino Fundamental Incompleto'
              'Ensino Fundamental Completo'
              'Ensino M'#233'dio Incompleto'
              'Ensino M'#233'dio Completo'
              'Educa'#231#227'o Superior Incompleta'
              'Educa'#231#227'o Superior Completa'
              'Mestrado Completo'
              'Doutorado Completo')
          end
        end
        object GroupBox6: TGroupBox
          Left = 469
          Top = 16
          Width = 295
          Height = 82
          Caption = 'Logotipo'
          TabOrder = 4
          object Label6: TLabel
            Left = 9
            Top = 27
            Width = 41
            Height = 13
            Caption = 'Empresa'
          end
          object dbrxEmpresa: TRxDBLookupCombo
            Left = 58
            Top = 19
            Width = 213
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NOME_FANTASIA'
            TabOrder = 0
            OnExit = dbrxEmpresaExit
          end
        end
      end
      object Panel4: TPanel
        Left = 1171
        Top = 1
        Width = 192
        Height = 100
        Align = alRight
        TabOrder = 1
        object btnPesquisar: TBitBtn
          Left = 4
          Top = 6
          Width = 92
          Height = 92
          TabOrder = 0
          OnClick = btnPesquisarClick
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
            72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
            0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
            A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
            109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
            EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
            A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
            B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
            97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
            5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
            98634797653998765499876899927799977F99967F99907799826295704B9B64
            3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
            99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
            6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
            34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
            DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
            AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
            90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
            F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
            E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
            B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
            574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
            96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
            C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
            D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        end
        object btnImprimir: TBitBtn
          Left = 98
          Top = 6
          Width = 92
          Height = 92
          TabOrder = 1
          OnClick = btnImprimirClick
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            18000000000078060000C40E0000C40E00000000000000000000FCFFFFFFFEFE
            FCFFFCF9FEFEF9FCFDFFFCFFF3FAFBF3FAFAF3FAFAF2FAFAF3FAFAF4F9FAF4F9
            FAF2FAFAF2FAFAF4F9FAF5FAFAFDFBFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FEFFFEFEFEFEFBFFFDFCFDFEFFFFFFD5EAF0489FC55DB4D15EB4D157B3D2
            5BB3D05BB4D458B2D359B3D25AB3D45DB1D352A8C3AFDDEAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FEFFFDFEFDFEFCFFFCFFFDFEFFFFFFB5E2EA4AB8D0A1
            FAFC9EF1F597F1F69DF1F59AF1F699F1F69EF1F598F1F4A0F6FB58C7D98DCFE8
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FAFFFEFEFDFEFCFFFDFFFEFEFFFF
            FEB8E1EC53C0D899E8E97EBCC083BECA8CBEC189BCC582BCC785BEC282BAB899
            E0E667D1E08CCEE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFEFFFDFE
            FFFFFFFFFFFFFFFFFFC1E6F147BFDA84E1E860ADB05FAFB862B1B45AB1B559B1
            B659B1B54EA8AE70D9E25ED0E28FCFE9FFFFFFFFFFFFFFFFFFFFFFFFFDFFFF00
            0000FAFEFEFFFFFFDCDAD9D5D2D2E0D9D6AABFCD41C3DD8AF5FD8BDEE591E4EA
            92DFEA8FE0E78CE1E697DFEA8FDDEA8AF3FB4FD4E48FC6D5E1D8D5D5D3D2DBD9
            D9FDFDFDFDFFFF000000FFFFFFB5B1B371635E806E6B503A2F0E3B4C69E7FF6E
            E2F660C9D361CCD95FC7D65FC8D661C8D761CBD55DC7CD6BDFF069EEFF114764
            45322C776C666E6460AEAAA9FFFFFF000000FDFDFC827A78CFBFB9E9DDD66F5B
            52324448396F7A4373754974744574734674754B73764B727545757544747549
            6F75426D793646505F5049DDCDCAD1C1BE827B78FCFCFB000000FCFCFB87817D
            CCC0BADEDCD4D2C2BCAD9A9CAB9697AF9895AF9794AC9794A79994AC9693AD99
            8FAD9893A79897A89A92AC9B90AE9E98C1B7B2E8DBD9CFC0BD897F7CFBFBFA00
            0000FCFCFB8B807ED3C7C3E6E6E2EAE4E4F2ECECF6EEEBF3EEEEF7EEEEF7EEEF
            F0EFEEF5EFF0F4EFEEF7EEF0F5EDF2EFF1EFF1EFEEF2ECEEEBE6EAEAE4E3D3C8
            C4887F7DFCFBFB000000FCFCFC89817FDBCECEF7F2F2F7F0F4EBEAE7E4E3DEDF
            E3E1E4E1E2E3E0DFDDE1DFE2E0DFE1E0E0E1E0DEE5E0DDE4DDDCE0DDDDECE8E7
            F2F2F3F5F3F1DAD2D188827DFBFCFB000000FCFDFC8B8282DFD3D4FFFDFFE8EC
            EB7D797665605E68626165605F635E5D635D5B625C5C605A595F59595C58575B
            5655585453676362E9E8EAFFFDFDE1D4D189837EFAFCFC000000FCFDFD8B8482
            DED6D5FFFFFFC2C4C3514B4A322F2D3735353835353735353734343735353633
            333836353835343836353431304C4746AFB0B0FFFFFFE4D4DB8C8485FCFCFC00
            0000FCFCFD8F8986DCD5D1FFFFFFC6C5C4554F4D2F2E2D383838383838373838
            37383838373837393737383737393738373733302F4C4747B7B1B2FFFFFFDED6
            D0898884FCFBFD000000FBFCFC928C89D4CAC5DAD4D0BDBAB8605C5A2C2D2D25
            28282B2E2E313434333737343737363838363737353838363838343131514C4C
            ADA1AE7F70C2CEC2CA938B8BFAFBFC000000FFFFFF999490B7A9A2BEAFADAAA0
            A084807FA6A6A58182825C5C5C46474739383835363635333332323231333332
            32322F2D2D534C4FA1A19760AB80BAB8AA9A9290FCFFFF000000FFFFFFC6C1BE
            94817DC4AFACA39A98868784C9CACAB9BABBBABBBCB4B5B5A9AAAB9D9E9F9093
            938A87888482827A7B7C7F7F7E6D6669918D8195A67B847F79C1BEBFFFFFFF00
            0000FFFFFEFEFFFFB2A9A99F9494989895796C6EA69694A49593A1918EA0908C
            9B8D899A8C899889879987849686809882808C7C7C6359588E8B8BA4999EAEA9
            ACFFFFFFFFFFFF000000FEFCFEFCFEFFFFFFFFFFFFFFFFFFFF98AFC059919F6A
            9FA5689CA2689CA165989D679BA065989D5E999A56999D5E959F498295A2ABB4
            FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF000000FDFDFDFCFDFEFEFEFCFAFDFDFFFF
            FF90D3EC50CEE37FF9FF7DF4FF7EF5FF7DF4FF7DF5FF7CF5FF7FF8FC7FF6FF89
            FAFF3DBBD5C8EAF1FFFFFFFDFDFDFEFFFFFDFEFEFFFFFF000000FBFEFEFAFDFE
            FDFFFCFCFDFEFFFFFF88C9E457CCDF8DFAFE89F4FC89F5FB89F6FB8AF6FC86F4
            FC8DF5FC8DF5FC91FBFF39B8D0B5E1EBFFFFFFFCFFFFFCFFFFFFFEFEFFFFFF00
            0000FDFEFFFFFDFFFEFFFDFFFDFEFFFFFFA7DBE44AA8C558B6D059B5CE5AB5CD
            59B5CD5AB5CF55B5CF5DB4D059B1D356B5D246A5C3D4ECF0FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FEFDFFFDFDFFF7FFFFFCFEFBFFFDFEF8FEFEF1F9FAEF
            F8F9F0F8F9F0F8FAF0F8FAF0F8F9F0F8F9F0F8FAEEF8FAF0F7FAF3FAFAFCFDFF
            FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF000000}
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 648
      Width = 1364
      Height = 56
      Align = alBottom
      TabOrder = 1
      object GroupBox3: TGroupBox
        Left = 1
        Top = 1
        Width = 1362
        Height = 54
        Align = alClient
        Caption = 'Resumo'
        TabOrder = 0
        DesignSize = (
          1362
          54)
        object Label3: TLabel
          Left = 1173
          Top = 19
          Width = 119
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'Total Pessoas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotalGeral: TLabel
          Left = 1304
          Top = 19
          Width = 26
          Height = 20
          Anchors = [akTop, akRight]
          Caption = '.....'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAuditiva: TRxLabel
          Left = 21
          Top = 23
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVisual: TRxLabel
          Left = 178
          Top = 23
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMental: TRxLabel
          Left = 335
          Top = 23
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblFisica: TRxLabel
          Left = 491
          Top = 23
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMultipla: TRxLabel
          Left = 648
          Top = 23
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIntelectual: TRxLabel
          Left = 790
          Top = 23
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTEA: TRxLabel
          Left = 920
          Top = 23
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object nxPCGeral: TNxPageControl
      Left = 1
      Top = 103
      Width = 1364
      Height = 545
      ActivePage = ts_Estacionamento
      ActivePageIndex = 4
      Align = alClient
      TabOrder = 2
      Margin = 0
      Options = [pgBoldActiveTab, pgScrollButtons, pgTopBorder]
      Spacing = 0
      TabHeight = 17
      object ts_Cidade: TNxTabSheet
        Caption = 'Cidade'
        PageIndex = 0
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object SMDBGrid1: TSMDBGrid
          Left = 0
          Top = 0
          Width = 1364
          Height = 524
          Align = alClient
          DataSource = DMConsPessoa.dsConsCidade
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 6
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 261
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDERECO'
              Title.Alignment = taCenter
              Title.Caption = 'Endere'#231'o'
              Width = 345
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIRRO'
              Title.Alignment = taCenter
              Title.Caption = 'Bairro'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Cidade'
              Width = 173
              Visible = True
            end>
        end
      end
      object ts_TipoDeficiencia: TNxTabSheet
        Caption = 'Tipo Defici'#234'ncia'
        PageIndex = 1
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object SMDBGrid2: TSMDBGrid
          Left = 0
          Top = 0
          Width = 1364
          Height = 524
          Align = alClient
          DataSource = DMConsPessoa.dsConsTD
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 7
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 311
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE'
              Title.Alignment = taCenter
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE2'
              Title.Alignment = taCenter
              Title.Caption = 'Telefone2'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_DEFICIENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Defici'#234'ncia'
              Width = 201
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NIS'
              Title.Alignment = taCenter
              Title.Caption = 'Nis'
              Width = 173
              Visible = True
            end>
        end
      end
      object ts_Escolaridade: TNxTabSheet
        Caption = 'Escolaridade/Idade'
        PageIndex = 2
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object SMDBGrid3: TSMDBGrid
          Left = 0
          Top = 0
          Width = 1364
          Height = 524
          Align = alClient
          DataSource = DMConsPessoa.dsConsEscolaridade
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 302
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESCOLARIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Escolaridade'
              Width = 216
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Idade'
              Visible = True
            end>
        end
      end
      object ts_PasseLivre: TNxTabSheet
        Caption = 'Passe-Livre'
        PageIndex = 3
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object SMDBGrid4: TSMDBGrid
          Left = 0
          Top = 0
          Width = 1364
          Height = 524
          Align = alClient
          DataSource = DMConsPessoa.dsConsPasseLivre
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 6
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 392
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PASSE_MUNICIPAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Passe Municipal'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PASSE_INTERMUNICIPAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Passe Intermunicipal'
              Width = 89
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PASSE_INTERESTADUAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Passe Interestadual'
              Width = 85
              Visible = True
            end>
        end
      end
      object ts_Estacionamento: TNxTabSheet
        Caption = 'Estacionamento'
        PageIndex = 4
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object SMDBGrid5: TSMDBGrid
          Left = 0
          Top = 0
          Width = 1364
          Height = 524
          Align = alClient
          DataSource = DMConsPessoa.dsConsEstacionamento
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 6
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VAGA_ESP_ESTACIONAMENTO'
              Title.Caption = 'Possui Vaga'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_EMISSAO_ESTACIONAMENTO'
              Title.Caption = 'Data Emiss'#227'o'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_VENC_ESTACIONAMENTO'
              Title.Caption = 'Data Vencimento'
              Width = 64
              Visible = True
            end>
        end
      end
    end
  end
end
