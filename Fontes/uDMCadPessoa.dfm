object DMPessoa: TDMPessoa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 354
  Top = 115
  Height = 514
  Width = 759
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PESSOA'#13#10'WHERE 0=0 '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 30
    Top = 13
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsPessoaCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object sdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object sdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 80
    end
    object sdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 80
    end
    object sdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object sdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
    end
    object sdsPessoaID_DEFICIENCIA: TIntegerField
      FieldName = 'ID_DEFICIENCIA'
      Required = True
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaDTALTERACAO: TDateField
      FieldName = 'DTALTERACAO'
    end
    object sdsPessoaTEMPORARIO: TStringField
      FieldName = 'TEMPORARIO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaNIS: TStringField
      FieldName = 'NIS'
      Size = 15
    end
    object sdsPessoaTITULO_ELEITORAL: TStringField
      FieldName = 'TITULO_ELEITORAL'
      Size = 15
    end
    object sdsPessoaSECAO_ELEITORAL: TStringField
      FieldName = 'SECAO_ELEITORAL'
      Size = 5
    end
    object sdsPessoaZONA_ELEITORAL: TStringField
      FieldName = 'ZONA_ELEITORAL'
      Size = 5
    end
    object sdsPessoaCARTAO_SUS: TStringField
      FieldName = 'CARTAO_SUS'
      Size = 15
    end
    object sdsPessoaID_CID: TIntegerField
      FieldName = 'ID_CID'
    end
    object sdsPessoaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object sdsPessoaDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object sdsPessoaRENDA_FAMILIAR: TFMTBCDField
      FieldName = 'RENDA_FAMILIAR'
      Precision = 15
      Size = 2
    end
    object sdsPessoaRENDA_INDIVIDUAL: TFMTBCDField
      FieldName = 'RENDA_INDIVIDUAL'
      Precision = 15
      Size = 2
    end
    object sdsPessoaPASSE_MUNICIPAL: TStringField
      FieldName = 'PASSE_MUNICIPAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPASSE_INTERMUNICIPAL: TStringField
      FieldName = 'PASSE_INTERMUNICIPAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPASSE_INTERESTADUAL: TStringField
      FieldName = 'PASSE_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaDT_VENC_PASSEMUNICIPAL: TDateField
      FieldName = 'DT_VENC_PASSEMUNICIPAL'
    end
    object sdsPessoaDT_VENC_PASSEINTERMUNIPAL: TDateField
      FieldName = 'DT_VENC_PASSEINTERMUNIPAL'
    end
    object sdsPessoaDT_VENC_PASSEINTERESTADUAL: TDateField
      FieldName = 'DT_VENC_PASSEINTERESTADUAL'
    end
    object sdsPessoaDT_EMISSAO_PASSEMUNICIPAL: TDateField
      FieldName = 'DT_EMISSAO_PASSEMUNICIPAL'
    end
    object sdsPessoaDT_EMISSAO_PASSEINTERMUNICIPAL: TDateField
      FieldName = 'DT_EMISSAO_PASSEINTERMUNICIPAL'
    end
    object sdsPessoaDT_EMISSAO_PASSEINTERESTADUAL: TDateField
      FieldName = 'DT_EMISSAO_PASSEINTERESTADUAL'
    end
    object sdsPessoaVAGA_ESP_ESTACIONAMENTO: TStringField
      FieldName = 'VAGA_ESP_ESTACIONAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaQTDE_MEMBRO_FAMILIAR: TIntegerField
      FieldName = 'QTDE_MEMBRO_FAMILIAR'
    end
    object sdsPessoaDT_EMISSAO_ESTACIONAMENTO: TDateField
      FieldName = 'DT_EMISSAO_ESTACIONAMENTO'
    end
    object sdsPessoaDT_VENC_ESTACIONAMENTO: TDateField
      FieldName = 'DT_VENC_ESTACIONAMENTO'
    end
    object sdsPessoaID_RELIGIAO: TIntegerField
      FieldName = 'ID_RELIGIAO'
    end
    object sdsPessoaLINK_FACEBOOK: TStringField
      FieldName = 'LINK_FACEBOOK'
      Size = 150
    end
    object sdsPessoaESCOLARIDADE: TIntegerField
      FieldName = 'ESCOLARIDADE'
    end
    object sdsPessoaNUMERO_BC: TStringField
      FieldName = 'NUMERO_BC'
      Size = 15
    end
    object sdsPessoaNUMERO_REGISTRO_PI: TStringField
      FieldName = 'NUMERO_REGISTRO_PI'
      Size = 15
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Options = [poCascadeDeletes]
    UpdateMode = upWhereChanged
    OnGetTableName = dspPessoaGetTableName
    Left = 72
    Top = 16
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    OnCalcFields = cdsPessoaCalcFields
    OnNewRecord = cdsPessoaNewRecord
    Left = 107
    Top = 15
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99.999-999;0;_'
      Size = 10
    end
    object cdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;'
      Size = 11
    end
    object cdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object cdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 80
    end
    object cdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 80
    end
    object cdsPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object cdsPessoaDDDCELULAR: TIntegerField
      FieldName = 'DDDCELULAR'
    end
    object cdsPessoaID_DEFICIENCIA: TIntegerField
      FieldName = 'ID_DEFICIENCIA'
      Required = True
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaDTALTERACAO: TDateField
      FieldName = 'DTALTERACAO'
    end
    object cdsPessoaTEMPORARIO: TStringField
      FieldName = 'TEMPORARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaNIS: TStringField
      FieldName = 'NIS'
      Size = 15
    end
    object cdsPessoaTITULO_ELEITORAL: TStringField
      FieldName = 'TITULO_ELEITORAL'
      Size = 15
    end
    object cdsPessoaSECAO_ELEITORAL: TStringField
      FieldName = 'SECAO_ELEITORAL'
      Size = 5
    end
    object cdsPessoaZONA_ELEITORAL: TStringField
      FieldName = 'ZONA_ELEITORAL'
      Size = 5
    end
    object cdsPessoasdsPessoaAcompa: TDataSetField
      FieldName = 'sdsPessoaAcompa'
    end
    object cdsPessoaCARTAO_SUS: TStringField
      FieldName = 'CARTAO_SUS'
      Size = 15
    end
    object cdsPessoaID_CID: TIntegerField
      FieldName = 'ID_CID'
    end
    object cdsPessoaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object cdsPessoaDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object cdsPessoaRENDA_FAMILIAR: TFMTBCDField
      FieldName = 'RENDA_FAMILIAR'
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPessoaRENDA_INDIVIDUAL: TFMTBCDField
      FieldName = 'RENDA_INDIVIDUAL'
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPessoaPASSE_MUNICIPAL: TStringField
      FieldName = 'PASSE_MUNICIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPASSE_INTERMUNICIPAL: TStringField
      FieldName = 'PASSE_INTERMUNICIPAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPASSE_INTERESTADUAL: TStringField
      FieldName = 'PASSE_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaDT_VENC_PASSEMUNICIPAL: TDateField
      FieldName = 'DT_VENC_PASSEMUNICIPAL'
    end
    object cdsPessoaDT_VENC_PASSEINTERMUNIPAL: TDateField
      FieldName = 'DT_VENC_PASSEINTERMUNIPAL'
    end
    object cdsPessoaDT_VENC_PASSEINTERESTADUAL: TDateField
      FieldName = 'DT_VENC_PASSEINTERESTADUAL'
    end
    object cdsPessoaDT_EMISSAO_PASSEMUNICIPAL: TDateField
      FieldName = 'DT_EMISSAO_PASSEMUNICIPAL'
    end
    object cdsPessoaDT_EMISSAO_PASSEINTERMUNICIPAL: TDateField
      FieldName = 'DT_EMISSAO_PASSEINTERMUNICIPAL'
    end
    object cdsPessoaDT_EMISSAO_PASSEINTERESTADUAL: TDateField
      FieldName = 'DT_EMISSAO_PASSEINTERESTADUAL'
    end
    object cdsPessoaVAGA_ESP_ESTACIONAMENTO: TStringField
      FieldName = 'VAGA_ESP_ESTACIONAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasdsPessoaRenda: TDataSetField
      FieldName = 'sdsPessoaRenda'
    end
    object cdsPessoaRenda_Per_Capita: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Renda_Per_Capita'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object cdsPessoaQTDE_MEMBRO_FAMILIAR: TIntegerField
      FieldName = 'QTDE_MEMBRO_FAMILIAR'
    end
    object cdsPessoaDT_EMISSAO_ESTACIONAMENTO: TDateField
      FieldName = 'DT_EMISSAO_ESTACIONAMENTO'
    end
    object cdsPessoaDT_VENC_ESTACIONAMENTO: TDateField
      FieldName = 'DT_VENC_ESTACIONAMENTO'
    end
    object cdsPessoaID_RELIGIAO: TIntegerField
      FieldName = 'ID_RELIGIAO'
    end
    object cdsPessoaLINK_FACEBOOK: TStringField
      FieldName = 'LINK_FACEBOOK'
      Size = 150
    end
    object cdsPessoaESCOLARIDADE: TIntegerField
      FieldName = 'ESCOLARIDADE'
    end
    object cdsPessoaNUMERO_BC: TStringField
      FieldName = 'NUMERO_BC'
      Size = 15
    end
    object cdsPessoaNUMERO_REGISTRO_PI: TStringField
      FieldName = 'NUMERO_REGISTRO_PI'
      Size = 15
    end
    object cdsPessoasdsPessoaBeneficio: TDataSetField
      FieldName = 'sdsPessoaBeneficio'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 144
    Top = 16
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select P.CODIGO, P.NOME, CID.NOME CIDADE,P.BAIRRO, '#39'('#39' || P.DDDF' +
      'ONE1 || '#39')'#39' || P.TELEFONE1 FONE, P.CPF, P.ID_DEFICIENCIA'#13#10'from P' +
      'ESSOA P'#13#10'left join CIDADE CID on CID.ID = P.ID_CIDADE  '#13#10'WHERE 0' +
      '=0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 232
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 264
    Top = 16
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 296
    Top = 16
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsConsultaFONE: TStringField
      FieldName = 'FONE'
      Size = 28
    end
    object cdsConsultaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;'
      Size = 11
    end
    object cdsConsultaID_DEFICIENCIA: TIntegerField
      FieldName = 'ID_DEFICIENCIA'
    end
    object cdsConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 328
    Top = 16
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 21
    Top = 316
    object sdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 61
    Top = 316
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 109
    Top = 316
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 157
    Top = 316
  end
  object sdsDeficiencia: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM DEFICIENCIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 42
    Top = 370
    object sdsDeficienciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDeficienciaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dspDeficiencia: TDataSetProvider
    DataSet = sdsDeficiencia
    Left = 74
    Top = 370
  end
  object cdsDeficiencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDeficiencia'
    Left = 106
    Top = 370
    object cdsDeficienciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDeficienciaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsDeficiencia: TDataSource
    DataSet = cdsDeficiencia
    Left = 138
    Top = 370
  end
  object sdsPessoaAcompa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PESSOA_ACOMPANHANTE'#13#10'WHERE CODIGO = :CODIGO'
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 32
    Top = 112
    object sdsPessoaAcompaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaAcompaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaAcompaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsPessoaAcompaIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object sdsPessoaAcompaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object sdsPessoaAcompaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaAcompaCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object sdsPessoaAcompaDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object sdsPessoaAcompaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sdsPessoaAcompaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sdsPessoaAcompaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sdsPessoaAcompaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sdsPessoaAcompaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsPessoaAcompaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsPessoaAcompaID_PARENTESCO: TIntegerField
      FieldName = 'ID_PARENTESCO'
    end
  end
  object cdsPessoaAcomp: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPessoasdsPessoaAcompa
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    OnCalcFields = cdsPessoaAcompCalcFields
    Left = 94
    Top = 112
    object cdsPessoaAcompCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaAcompITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaAcompNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPessoaAcompIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 15
    end
    object cdsPessoaAcompDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
    end
    object cdsPessoaAcompSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaAcompCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;'
      Size = 11
    end
    object cdsPessoaAcompDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object cdsPessoaAcompTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsPessoaAcompENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsPessoaAcompBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsPessoaAcompCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsPessoaAcompUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsPessoaAcompCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99.999-999;0;_'
      Size = 8
    end
    object cdsPessoaAcompID_PARENTESCO: TIntegerField
      FieldName = 'ID_PARENTESCO'
    end
    object cdsPessoaAcompNome_Parentesco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome_Parentesco'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
  end
  object dsPessoaAcomp: TDataSource
    DataSet = cdsPessoaAcomp
    Left = 136
    Top = 112
  end
  object dsMestre: TDataSource
    DataSet = sdsPessoa
    Left = 32
    Top = 64
  end
  object sdsTAB_CID: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, CID || '#39' - '#39' || DESCRICAO DESCRICAO FROM TAB_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 242
    Top = 105
    object sdsTAB_CIDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTAB_CIDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 218
    end
  end
  object dspTAB_CID: TDataSetProvider
    DataSet = sdsTAB_CID
    Left = 274
    Top = 105
  end
  object cdsTAB_CID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTAB_CID'
    Left = 306
    Top = 105
    object cdsTAB_CIDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTAB_CIDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object dsTAB_CID: TDataSource
    DataSet = cdsTAB_CID
    Left = 338
    Top = 105
  end
  object sdsParentesco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    NumericMapping = True
    CommandText = 'SELECT * FROM PARENTESCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 261
    Top = 205
    object sdsParentescoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParentescoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dspParentesco: TDataSetProvider
    DataSet = sdsParentesco
    Left = 293
    Top = 205
  end
  object cdsParentesco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParentesco'
    Left = 325
    Top = 205
    object cdsParentescoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParentescoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsParentesco: TDataSource
    DataSet = cdsParentesco
    Left = 357
    Top = 205
  end
  object sdsPessoaRenda: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PESSOA_RENDA WHERE CODIGO = :CODIGO'
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 35
    Top = 170
    object sdsPessoaRendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaRendaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaRendaID_PARENTESCO: TIntegerField
      FieldName = 'ID_PARENTESCO'
      Required = True
    end
    object sdsPessoaRendaPOSSUI_RENDA: TStringField
      FieldName = 'POSSUI_RENDA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRendaVALOR_RENDA: TFMTBCDField
      FieldName = 'VALOR_RENDA'
      Precision = 15
      Size = 2
    end
    object sdsPessoaRendaRENDA_INFORMAL: TStringField
      FieldName = 'RENDA_INFORMAL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRendaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object cdsPessoaRenda: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPessoasdsPessoaRenda
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    OnCalcFields = cdsPessoaRendaCalcFields
    OnNewRecord = cdsPessoaRendaNewRecord
    Left = 98
    Top = 171
    object cdsPessoaRendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaRendaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaRendaID_PARENTESCO: TIntegerField
      FieldName = 'ID_PARENTESCO'
      Required = True
    end
    object cdsPessoaRendaPOSSUI_RENDA: TStringField
      FieldName = 'POSSUI_RENDA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRendaVALOR_RENDA: TFMTBCDField
      FieldName = 'VALOR_RENDA'
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPessoaRendaRENDA_INFORMAL: TStringField
      FieldName = 'RENDA_INFORMAL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRendaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPessoaRendaNome_Parentesco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome_Parentesco'
      ProviderFlags = []
      Size = 50
      Calculated = True
    end
  end
  object dsPessoaRenda: TDataSource
    DataSet = cdsPessoaRenda
    Left = 141
    Top = 171
  end
  object mAniversario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Mes'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Dia'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 261
    Top = 286
    Data = {
      C10000009619E0BD010000001800000007000000000003000000C10006436F64
      69676F0400010000000000044E6F6D6501004900000001000557494454480200
      0200320006436964616465010049000000010005574944544802000200320004
      466F6E650100490000000100055749445448020002001E00034D657301004900
      0000010005574944544802000200020003446961010049000000010005574944
      54480200020002000642616972726F0100490000000100055749445448020002
      001E000000}
    object mAniversarioCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object mAniversarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object mAniversarioCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object mAniversarioFone: TStringField
      FieldName = 'Fone'
      Size = 30
    end
    object mAniversarioMes: TStringField
      FieldName = 'Mes'
      Size = 2
    end
    object mAniversarioDia: TStringField
      FieldName = 'Dia'
      Size = 2
    end
    object mAniversarioBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
  end
  object dsmAniversario: TDataSource
    DataSet = mAniversario
    Left = 288
    Top = 285
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43066.473055532400000000
    ReportOptions.LastChange = 43246.542887766210000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 470
    Top = 219
    Datasets = <
      item
        DataSet = frxAniversario
        DataSetName = 'frxAniversario'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 245.669450000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Relat'#195#179'rio de Anivers'#195#161'rios')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 639.299630000000000000
          Top = 25.236240000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 663.756340000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 595.031850000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pag.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 591.252320000000000000
          Top = 25.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Data:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 313.700990000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Telefone')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.984540000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cidade')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Dia')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 467.857142860000000000
          Top = 1.702226190000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Bairro')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxAniversario
        DataSetName = 'frxAniversario'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.338590000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxAniversario."Nome"]')
        end
        object Memo6: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.338590000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxAniversario."Dia"]')
        end
        object Memo8: TfrxMemoView
          Left = 309.921460000000000000
          Top = 3.338590000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxAniversario."Fone"]')
        end
        object Memo10: TfrxMemoView
          Left = 583.157390950000000000
          Top = 3.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxAniversario."Cidade"]')
        end
        object Memo14: TfrxMemoView
          Left = 467.857142860000000000
          Top = 3.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxAniversario."Bairro"]')
        end
      end
    end
  end
  object frxAniversario: TfrxDBDataset
    UserName = 'frxAniversario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Codigo=Codigo'
      'Nome=Nome'
      'Cidade=Cidade'
      'Fone=Fone'
      'Mes=Mes'
      'Dia=Dia'
      'Bairro=Bairro')
    DataSource = dsmAniversario
    BCDToCurrency = False
    Left = 471
    Top = 269
  end
  object qAniversario: TSQLQuery
    NoMetaData = False
    GetMetadata = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT A.CODIGO, A.NOME, C.NOME CIDADE, A.BAIRRO, '#39'('#39' || A.DDDFO' +
        'NE1 || '#39') '#39' || A.TELEFONE1 AS FONE,'
      
        '       EXTRACT(MONTH FROM A.DATA_NASCIMENTO) AS MES, EXTRACT(DAY' +
        ' FROM A.DATA_NASCIMENTO) AS DIA'
      'FROM PESSOA A'
      'LEFT JOIN CIDADE C ON A.ID_CIDADE = C.ID')
    SQLConnection = dmDatabase.scoPrincipal
    Left = 258
    Top = 331
    object qAniversarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qAniversarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object qAniversarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qAniversarioFONE: TStringField
      FieldName = 'FONE'
      Size = 29
    end
    object qAniversarioMES: TSmallintField
      FieldName = 'MES'
    end
    object qAniversarioDIA: TSmallintField
      FieldName = 'DIA'
    end
    object qAniversarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
  end
  object sdsConsVencto_Passe: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT COALESCE(A.DT_VENC_PASSEMUNICIPAL - CURRENT_DATE, 0) DIAS' +
      '_PASSEMUNICIPAL,'#13#10'       COALESCE(A.DT_VENC_PASSEINTERMUNIPAL - ' +
      'CURRENT_DATE, 0) DIAS_PASSEINTERMUNICIPAL,'#13#10'       COALESCE(A.DT' +
      '_VENC_PASSEINTERESTADUAL - CURRENT_DATE, 0) DIAS_PASSEINTERESTAD' +
      'UAL, A.CODIGO, A.NOME,'#13#10'       '#39'('#39' || A.DDDFONE1 || '#39') '#39' || A.TE' +
      'LEFONE1 TELEFONE, A.DT_VENC_PASSEMUNICIPAL PASSE_MUNICIPAL,'#13#10'   ' +
      '    A.DT_VENC_PASSEINTERMUNIPAL PASSE_INTERMUNICIPAL, A.DT_VENC_' +
      'PASSEINTERESTADUAL PASSE_INTERESTADUAL,'#13#10'       A.DT_VENC_ESTACI' +
      'ONAMENTO, A.ENDERECO || '#39' '#39' || A.NUM_END || '#39' '#39' || A.COMPLEMENTO' +
      '_END ENDERECO, A.BAIRRO'#13#10'FROM PESSOA A'#13#10'WHERE ((COALESCE(A.DT_VE' +
      'NC_PASSEMUNICIPAL - CURRENT_DATE, 0) >= :DATA_INICIO AND'#13#10'      ' +
      'COALESCE(A.DT_VENC_PASSEMUNICIPAL - CURRENT_DATE, 0) <= :DATA_FI' +
      'NAL)) OR'#13#10'      ((COALESCE(A.DT_VENC_PASSEINTERMUNIPAL - CURRENT' +
      '_DATE, 0) >= :DATA_INICIO AND'#13#10'      COALESCE(A.DT_VENC_PASSEINT' +
      'ERMUNIPAL - CURRENT_DATE, 0) <= :DATA_FINAL)) OR'#13#10'      ((COALES' +
      'CE(A.DT_VENC_PASSEINTERESTADUAL - CURRENT_DATE, 0) >= :DATA_INIC' +
      'IO AND'#13#10'      COALESCE(A.DT_VENC_PASSEINTERESTADUAL - CURRENT_DA' +
      'TE, 0) <= :DATA_FINAL))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DATA_INICIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_INICIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_INICIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 517
    Top = 32
  end
  object dspConsVencto_Passe: TDataSetProvider
    DataSet = sdsConsVencto_Passe
    Left = 549
    Top = 32
  end
  object cdsConsVencto_Passe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsVencto_Passe'
    Left = 581
    Top = 32
    object cdsConsVencto_PasseDIAS_PASSEMUNICIPAL: TIntegerField
      FieldName = 'DIAS_PASSEMUNICIPAL'
    end
    object cdsConsVencto_PasseDIAS_PASSEINTERMUNICIPAL: TIntegerField
      FieldName = 'DIAS_PASSEINTERMUNICIPAL'
    end
    object cdsConsVencto_PasseDIAS_PASSEINTERESTADUAL: TIntegerField
      FieldName = 'DIAS_PASSEINTERESTADUAL'
    end
    object cdsConsVencto_PasseCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsVencto_PasseNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object cdsConsVencto_PasseTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 29
    end
    object cdsConsVencto_PassePASSE_MUNICIPAL: TDateField
      FieldName = 'PASSE_MUNICIPAL'
    end
    object cdsConsVencto_PassePASSE_INTERMUNICIPAL: TDateField
      FieldName = 'PASSE_INTERMUNICIPAL'
    end
    object cdsConsVencto_PassePASSE_INTERESTADUAL: TDateField
      FieldName = 'PASSE_INTERESTADUAL'
    end
    object cdsConsVencto_PasseDT_VENC_ESTACIONAMENTO: TDateField
      FieldName = 'DT_VENC_ESTACIONAMENTO'
    end
    object cdsConsVencto_PasseENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 142
    end
    object cdsConsVencto_PasseBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
  end
  object dsConsVencto_Passe: TDataSource
    DataSet = cdsConsVencto_Passe
    Left = 613
    Top = 32
  end
  object sdsReligiao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM RELIGIAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 438
    Top = 118
    object sdsReligiaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsReligiaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspReligiao: TDataSetProvider
    DataSet = sdsReligiao
    Left = 469
    Top = 118
  end
  object cdsReligiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReligiao'
    Left = 501
    Top = 118
    object cdsReligiaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsReligiaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsReligiao: TDataSource
    DataSet = cdsReligiao
    Left = 533
    Top = 118
  end
  object sdsPessoaBeneficio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PES.*, BEN.NOME NOME_BENEFICIO'#13#10'FROM PESSOA_BENEFICIO PES' +
      #13#10'LEFT JOIN BENEFICIO BEN ON PES.ID_BENEFICIO = BEN.ID'#13#10'WHERE CO' +
      'DIGO = :CODIGO  '
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 33
    Top = 239
    object sdsPessoaBeneficioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaBeneficioITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaBeneficioID_BENEFICIO: TIntegerField
      FieldName = 'ID_BENEFICIO'
      Required = True
    end
    object sdsPessoaBeneficioNUMERO_BENEFICIO: TStringField
      FieldName = 'NUMERO_BENEFICIO'
      Size = 15
    end
    object sdsPessoaBeneficioNOME_BENEFICIO: TStringField
      FieldName = 'NOME_BENEFICIO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsPessoaBeneficio: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPessoasdsPessoaBeneficio
    IndexFieldNames = 'CODIGO;ITEM'
    Params = <>
    Left = 93
    Top = 238
    object cdsPessoaBeneficioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaBeneficioITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaBeneficioID_BENEFICIO: TIntegerField
      FieldName = 'ID_BENEFICIO'
      Required = True
    end
    object cdsPessoaBeneficioNUMERO_BENEFICIO: TStringField
      FieldName = 'NUMERO_BENEFICIO'
      Size = 15
    end
    object cdsPessoaBeneficioNOME_BENEFICIO: TStringField
      FieldName = 'NOME_BENEFICIO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsPessoaBeneficio: TDataSource
    DataSet = cdsPessoaBeneficio
    Left = 141
    Top = 239
  end
  object sdsBeneficio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM BENEFICIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 422
    Top = 380
    object sdsBeneficioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBeneficioNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspBeneficio: TDataSetProvider
    DataSet = sdsBeneficio
    Left = 454
    Top = 380
  end
  object cdsBeneficio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBeneficio'
    Left = 486
    Top = 380
    object cdsBeneficioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBeneficioNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsBeneficio: TDataSource
    DataSet = cdsBeneficio
    Left = 518
    Top = 380
  end
  object frxConsPessoa: TfrxDBDataset
    UserName = 'frxConsPessoa'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 552
    Top = 266
  end
  object sdsCidadeConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CIDADE'#13#10'WHERE UF = :UF'#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 532
    Top = 184
  end
  object dspCidadeConsulta: TDataSetProvider
    DataSet = sdsCidadeConsulta
    Left = 564
    Top = 184
  end
  object cdsCidadeConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidadeConsulta'
    Left = 596
    Top = 184
    object cdsCidadeConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsCidadeConsulta: TDataSource
    DataSet = cdsCidadeConsulta
    Left = 627
    Top = 184
  end
end
