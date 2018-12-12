object DMConsPessoa: TDMConsPessoa
  OldCreateOrder = False
  Left = 360
  Top = 163
  Height = 488
  Width = 713
  object sdsConsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME,'#13#10'       P.ENDERECO || '#39' '#39' || COALESCE(P' +
      '.NUM_END, '#39#39') || '#39' '#39' || COALESCE(P.COMPLEMENTO_END, '#39#39') ENDERECO' +
      ', P.BAIRRO,'#13#10'       C.NOME CIDADE'#13#10'FROM PESSOA P'#13#10'LEFT JOIN CIDA' +
      'DE C ON C.ID = P.ID_CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 15
    Top = 15
  end
  object dspConsCidade: TDataSetProvider
    DataSet = sdsConsCidade
    Left = 47
    Top = 15
  end
  object cdsConsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsCidade'
    Left = 79
    Top = 15
    object cdsConsCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsCidadeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object cdsConsCidadeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 140
    end
    object cdsConsCidadeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsConsCidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object dsConsCidade: TDataSource
    DataSet = cdsConsCidade
    Left = 111
    Top = 15
  end
  object sdsTipoDeficiencia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM DEFICIENCIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 503
    Top = 21
  end
  object dspTipoDeficiencia: TDataSetProvider
    DataSet = sdsTipoDeficiencia
    Left = 535
    Top = 21
  end
  object cdsTipoDeficiencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoDeficiencia'
    Left = 567
    Top = 21
    object cdsTipoDeficienciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTipoDeficienciaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsTipoDeficiencia: TDataSource
    DataSet = cdsTipoDeficiencia
    Left = 599
    Top = 21
  end
  object sdsConsTD: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, '#39'('#39' || P.DDDFONE1 || '#39')'#39' || P.TELEFONE1' +
      ' FONE, D.NOME NOME_DEFICIENCIA, P.NIS'#13#10'FROM PESSOA P'#13#10'LEFT JOIN ' +
      'DEFICIENCIA D ON D.ID = P.ID_DEFICIENCIA '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 13
    Top = 85
  end
  object dspConsTD: TDataSetProvider
    DataSet = sdsConsTD
    Left = 45
    Top = 85
  end
  object cdsConsTD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsTD'
    Left = 77
    Top = 85
    object cdsConsTDCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsTDNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object cdsConsTDFONE: TStringField
      FieldName = 'FONE'
      Size = 28
    end
    object cdsConsTDNOME_DEFICIENCIA: TStringField
      FieldName = 'NOME_DEFICIENCIA'
      Size = 50
    end
    object cdsConsTDNIS: TStringField
      FieldName = 'NIS'
      Size = 15
    end
  end
  object dsConsTD: TDataSource
    DataSet = cdsConsTD
    Left = 109
    Top = 85
  end
  object qResumo: TSQLQuery
    NoMetaData = False
    GetMetadata = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COUNT(ID_DEFICIENCIA) TOTAL_DEFICIENCIA, D.NOME, D.ID'
      'FROM PESSOA P'
      'LEFT JOIN DEFICIENCIA D ON P.ID_DEFICIENCIA = D.ID'
      'GROUP BY P.ID_DEFICIENCIA, D.NOME, D.ID  ')
    SQLConnection = dmDatabase.scoPrincipal
    Left = 489
    Top = 121
    object qResumoTOTAL_DEFICIENCIA: TIntegerField
      FieldName = 'TOTAL_DEFICIENCIA'
      Required = True
    end
    object qResumoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qResumoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object sdsConsEscolaridade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME,'#13#10'       case P.ESCOLARIDADE'#13#10'       whe' +
      'n '#39'1'#39' then '#39'Analfabeto'#39#13#10'       when '#39'2'#39' then '#39'At'#233' o 5'#186' ano Inco' +
      'mpleto'#39#13#10'       when '#39'3'#39' then '#39'5'#186' ano do Ensino Fundamental Comp' +
      'leto'#39#13#10'       when '#39'4'#39' then '#39'6'#186' ao 9'#186' ano do Ensino Fundamental ' +
      'Incompleto'#39#13#10'       when '#39'5'#39' then '#39'Ensino Fundamental Completo'#39#13 +
      #10'       when '#39'6'#39' then '#39'Ensino M'#233'dio Incompleto'#39#13#10'       when '#39'7'#39 +
      ' then '#39'Ensino M'#233'dio Completo'#39#13#10'       when '#39'8'#39' then '#39'Educa'#231#227'o Su' +
      'perior Incompleta'#39#13#10'       when '#39'9'#39' then '#39'Educa'#231#227'o Superior Comp' +
      'leta'#39#13#10'       when '#39'10'#39' then '#39'Mestrado Completo'#39#13#10'       when '#39'1' +
      '1'#39' then '#39'Doutorado Completo'#39#13#10'       end as Escolaridade,'#13#10'     ' +
      '  (SELECT * FROM SP_CALCULAR_IDADE(P.DATA_NASCIMENTO)) IDADE'#13#10'FR' +
      'OM PESSOA P'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 14
    Top = 151
  end
  object dspConsEscolaridade: TDataSetProvider
    DataSet = sdsConsEscolaridade
    Left = 46
    Top = 151
  end
  object cdsConsEscolaridade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsEscolaridade'
    Left = 78
    Top = 151
    object cdsConsEscolaridadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsEscolaridadeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object cdsConsEscolaridadeESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
      FixedChar = True
      Size = 45
    end
    object cdsConsEscolaridadeIDADE: TIntegerField
      FieldName = 'IDADE'
    end
  end
  object dsConsEscolaridade: TDataSource
    DataSet = cdsConsEscolaridade
    Left = 110
    Top = 151
  end
  object frxConsCidade: TfrxDBDataset
    UserName = 'frxConsCidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE')
    DataSource = dsConsCidade
    BCDToCurrency = False
    Left = 396
    Top = 244
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43330.540652534700000000
    ReportOptions.LastChange = 43333.591843923610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 395
    Top = 191
    Datasets = <
      item
        DataSet = frxConsTD
        DataSetName = 'frxConsTD'
      end
      item
        DataSet = frxEmpresa
        DataSetName = 'frxEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        Height = 130.356215240000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 41.571428570000000000
          Top = 107.056895240000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 250.333333330000000000
          Top = 107.056895240000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Defici'#195#170'ncia')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 491.190476190000000000
          Top = 108.009276190000000000
          Width = 56.393011900000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fone')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.571428570000000000
          Top = 125.919294760000000000
          Width = 713.303339520000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Picture1: TfrxPictureView
          Left = 8.571428570000000000
          Top = 6.824056670000000000
          Width = 104.964440480000000000
          Height = 83.659554760000000000
          DataField = 'LOGOTIPO'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 239.670223090000000000
          Top = 42.373376430000000000
          Width = 238.770253810000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'Relat'#195#179'rio de Pessoas Por Defici'#195#170'ncia')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 675.047619040000000000
          Top = 15.443104280000000000
          Width = 49.666357620000000000
          Height = 10.326221430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 675.095238100000000000
          Top = 31.585961420000000000
          Width = 37.405380480000000000
          Height = 11.278602380000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 639.857142860000000000
          Top = 32.490723320000000000
          Width = 31.631107140000000000
          Height = 9.373840480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 651.195732860000000000
          Top = 15.395485230000000000
          Width = 20.292517140000000000
          Height = 9.373840480000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Data:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 2.857142860000000000
          Top = 107.769016670000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cod')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 596.190476190000000000
          Top = 108.721397620000000000
          Width = 56.393011900000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.202844760000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxConsTD
        DataSetName = 'frxConsTD'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 41.571428570000000000
          Top = 0.224798570000000000
          Width = 204.072047140000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxConsTD."NOME"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 250.333333330000000000
          Top = 0.224798570000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxConsTD."NOME_DEFICIENCIA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.190476190000000000
          Top = 0.224798570000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxConsTD."FONE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 2.857142860000000000
          Top = 0.224798570000000000
          Width = 29.786332850000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxConsTD."CODIGO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 596.190476190000000000
          Top = 0.224798570000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxConsTD."NIS"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 40.952380950000000000
          Top = 3.104823330000000000
          Width = 55.440630950000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 1.904761900000000000
          Top = 1.057204290000000000
          Width = 713.303339520000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 103.809523810000000000
          Top = 3.104823330000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qEmpresa: TSQLQuery
    NoMetaData = False
    GetMetadata = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, LOGOTIPO FROM EMPRESA'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoPrincipal
    Left = 549
    Top = 121
    object qEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qEmpresaLOGOTIPO: TMemoField
      FieldName = 'LOGOTIPO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object frxEmpresa: TfrxDBDataset
    UserName = 'frxEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'LOGOTIPO=LOGOTIPO')
    DataSet = qEmpresa
    BCDToCurrency = False
    Left = 469
    Top = 242
  end
  object sdsConsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, LOGOTIPO, NOME_FANTASIA FROM EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 17
    Top = 210
  end
  object dspConsEmpresa: TDataSetProvider
    DataSet = sdsConsEmpresa
    Left = 49
    Top = 210
  end
  object cdsConsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsEmpresa'
    Left = 81
    Top = 210
    object cdsConsEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsConsEmpresaLOGOTIPO: TMemoField
      FieldName = 'LOGOTIPO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsEmpresaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 30
    end
  end
  object dsConsEmpresa: TDataSource
    DataSet = cdsConsEmpresa
    Left = 113
    Top = 210
  end
  object frxConsTD: TfrxDBDataset
    UserName = 'frxConsTD'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'FONE=FONE'
      'NOME_DEFICIENCIA=NOME_DEFICIENCIA'
      'NIS=NIS')
    DataSource = dsConsTD
    BCDToCurrency = False
    Left = 395
    Top = 304
  end
  object frxConsEscolaridade: TfrxDBDataset
    UserName = 'frxConsEscolaridade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'ESCOLARIDADE=ESCOLARIDADE'
      'IDADE=IDADE')
    DataSource = dsConsEscolaridade
    BCDToCurrency = False
    Left = 474
    Top = 304
  end
  object sdsConsPasseLivre: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME,'#13#10'       CASE P.PASSE_MUNICIPAL'#13#10'       ' +
      '  WHEN '#39'S'#39' THEN '#39'X'#39#13#10'         ELSE '#39' '#39#13#10'       END PASSE_MUNICIP' +
      'AL,'#13#10'       CASE P.PASSE_INTERMUNICIPAL'#13#10'         WHEN '#39'S'#39' THEN ' +
      #39'X'#39#13#10'         ELSE '#39' '#39#13#10'       END PASSE_INTERMUNICIPAL,'#13#10'      ' +
      ' CASE P.PASSE_INTERESTADUAL'#13#10'         WHEN '#39'S'#39' THEN '#39'X'#39#13#10'       ' +
      '  ELSE '#39' '#39#13#10'       END PASSE_INTERESTADUAL'#13#10'FROM PESSOA P'#13#10'WHERE' +
      ' P.PASSE_MUNICIPAL = '#39'S'#39' OR P.PASSE_INTERMUNICIPAL = '#39'S'#39' OR P.PA' +
      'SSE_INTERESTADUAL = '#39'S'#39'   '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 19
    Top = 277
  end
  object dspConsPasseLivre: TDataSetProvider
    DataSet = sdsConsPasseLivre
    Left = 51
    Top = 277
  end
  object cdsConsPasseLivre: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsPasseLivre'
    Left = 83
    Top = 277
    object cdsConsPasseLivreCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsPasseLivreNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object cdsConsPasseLivrePASSE_MUNICIPAL: TStringField
      FieldName = 'PASSE_MUNICIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsConsPasseLivrePASSE_INTERMUNICIPAL: TStringField
      FieldName = 'PASSE_INTERMUNICIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsConsPasseLivrePASSE_INTERESTADUAL: TStringField
      FieldName = 'PASSE_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
  end
  object dsConsPasseLivre: TDataSource
    DataSet = cdsConsPasseLivre
    Left = 115
    Top = 277
  end
  object frxConsPasseLivre: TfrxDBDataset
    UserName = 'frxConsPasseLivre'
    CloseDataSource = False
    DataSource = dsConsPasseLivre
    BCDToCurrency = False
    Left = 553
    Top = 306
  end
  object sdsConsEstacionamento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.VAGA_ESP_ESTACIONAMENTO, P.DT_EMISSAO' +
      '_ESTACIONAMENTO, P.DT_VENC_ESTACIONAMENTO'#13#10'FROM PESSOA P'#13#10'WHERE ' +
      'P.VAGA_ESP_ESTACIONAMENTO = '#39'S'#39'   '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 18
    Top = 335
  end
  object dspConsEstacionamento: TDataSetProvider
    DataSet = sdsConsEstacionamento
    Left = 50
    Top = 335
  end
  object cdsConsEstacionamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsEstacionamento'
    Left = 82
    Top = 335
    object cdsConsEstacionamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsEstacionamentoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object cdsConsEstacionamentoVAGA_ESP_ESTACIONAMENTO: TStringField
      FieldName = 'VAGA_ESP_ESTACIONAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsConsEstacionamentoDT_EMISSAO_ESTACIONAMENTO: TDateField
      FieldName = 'DT_EMISSAO_ESTACIONAMENTO'
    end
    object cdsConsEstacionamentoDT_VENC_ESTACIONAMENTO: TDateField
      FieldName = 'DT_VENC_ESTACIONAMENTO'
    end
  end
  object dsConsEstacionamento: TDataSource
    DataSet = cdsConsEstacionamento
    Left = 114
    Top = 335
  end
  object frxConsEstacionamento: TfrxDBDataset
    UserName = 'frxConsEstacionamento'
    CloseDataSource = False
    DataSource = dsConsEstacionamento
    BCDToCurrency = False
    Left = 631
    Top = 309
  end
end
