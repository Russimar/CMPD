object DMCadEmpresa: TDMCadEmpresa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 447
  Top = 191
  Height = 430
  Width = 689
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM EMPRESA'#13#10'WHERE 0=0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 14
    Top = 17
    object sdsEmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsEmpresaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 30
    end
    object sdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsEmpresaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsEmpresaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsEmpresaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsEmpresaDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object sdsEmpresaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object sdsEmpresaDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object sdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsEmpresaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsEmpresaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsEmpresaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsEmpresaENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object sdsEmpresaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object sdsEmpresaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object sdsEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object sdsEmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object sdsEmpresaEXTENSAO: TStringField
      FieldName = 'EXTENSAO'
      Size = 5
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    UpdateMode = upWhereChanged
    OnGetTableName = dspEmpresaGetTableName
    Left = 48
    Top = 16
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 80
    Top = 15
    object cdsEmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEmpresaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 30
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsEmpresaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsEmpresaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;0'
      Size = 9
    end
    object cdsEmpresaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEmpresaDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsEmpresaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsEmpresaDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsEmpresaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsEmpresaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      EditMask = '99.999.999/9999-99;0'
      Size = 18
    end
    object cdsEmpresaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsEmpresaENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsEmpresaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsEmpresaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object cdsEmpresasdsEmpresa_Diretoria: TDataSetField
      FieldName = 'sdsEmpresa_Diretoria'
    end
    object cdsEmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object cdsEmpresaEXTENSAO: TStringField
      FieldName = 'EXTENSAO'
      Size = 5
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 112
    Top = 16
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    CommandText = 'SELECT * FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 266
    Top = 84
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
    Left = 306
    Top = 84
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 354
    Top = 84
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
    Left = 402
    Top = 84
  end
  object sdsEmpresa_Diretoria: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ED.*, C.NOME NOME_CARGO, LPAD((EXTRACT(DAY FROM E.INICIO_' +
      'EXERCICIO)),2,0) || '#39'/'#39' ||'#13#10'LPAD((EXTRACT(MONTH FROM E.INICIO_EX' +
      'ERCICIO)),2,0) || '#39'/'#39' ||'#13#10'LPAD((EXTRACT(YEAR FROM E.INICIO_EXERC' +
      'ICIO)),4,0)||'#13#10' '#39' a '#39' ||'#13#10'LPAD(EXTRACT(DAY FROM E.FIM_EXERCICIO)' +
      ',2,0) || '#39'/'#39' ||'#13#10'LPAD(EXTRACT(MONTH FROM E.FIM_EXERCICIO),2,0) |' +
      '| '#39'/'#39' ||'#13#10'LPAD(EXTRACT(YEAR FROM E.FIM_EXERCICIO),4,0) EXERCICIO' +
      #13#10'FROM EMPRESA_DIRETORIA ED'#13#10'LEFT JOIN CARGO C ON C.ID = ED.ID_C' +
      'ARGO'#13#10'LEFT JOIN EXERCICIO E ON E.ID = ED.ID_EXERCICIO'#13#10'WHERE ED.' +
      'ID = :ID'
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 19
    Top = 118
    object sdsEmpresa_DiretoriaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEmpresa_DiretoriaID_EXERCICIO: TIntegerField
      FieldName = 'ID_EXERCICIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEmpresa_DiretoriaID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEmpresa_DiretoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsEmpresa_DiretoriaCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object sdsEmpresa_DiretoriaDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object sdsEmpresa_DiretoriaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sdsEmpresa_DiretoriaNOME_CARGO: TStringField
      FieldName = 'NOME_CARGO'
      ProviderFlags = []
      Size = 100
    end
    object sdsEmpresa_DiretoriaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsEmpresa_DiretoriaEXERCICIO: TStringField
      FieldName = 'EXERCICIO'
      ProviderFlags = []
      Size = 23
    end
    object sdsEmpresa_DiretoriaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsEmpresa_DiretoriaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsEmpresa_DiretoriaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object sdsEmpresa_DiretoriaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsEmpresa_DiretoriaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsEmpresa_DiretoriaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsEmpresa_DiretoriaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsEmpresa_DiretoriaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsEmpresa_DiretoriaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
  end
  object cdsEmpresa_Diretoria: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEmpresasdsEmpresa_Diretoria
    IndexFieldNames = 'ID;ID_EXERCICIO;ID_CARGO'
    Params = <>
    OnNewRecord = cdsEmpresa_DiretoriaNewRecord
    Left = 50
    Top = 119
    object cdsEmpresa_DiretoriaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresa_DiretoriaID_EXERCICIO: TIntegerField
      FieldName = 'ID_EXERCICIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresa_DiretoriaID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresa_DiretoriaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEmpresa_DiretoriaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;'
      Size = 11
    end
    object cdsEmpresa_DiretoriaDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object cdsEmpresa_DiretoriaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsEmpresa_DiretoriaNOME_CARGO: TStringField
      FieldName = 'NOME_CARGO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEmpresa_DiretoriaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresa_DiretoriaEXERCICIO: TStringField
      FieldName = 'EXERCICIO'
      ProviderFlags = []
      Size = 23
    end
    object cdsEmpresa_DiretoriaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsEmpresa_DiretoriaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsEmpresa_DiretoriaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsEmpresa_DiretoriaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpresa_DiretoriaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsEmpresa_DiretoriaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsEmpresa_DiretoriaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsEmpresa_DiretoriaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEmpresa_DiretoriaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
  end
  object dsEmpresa_Diretoria: TDataSource
    DataSet = cdsEmpresa_Diretoria
    Left = 77
    Top = 119
  end
  object dsMestre: TDataSource
    DataSet = sdsEmpresa
    Left = 17
    Top = 72
  end
  object sdsCargo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM CARGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 266
    Top = 163
    object sdsCargoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCargoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspCargo: TDataSetProvider
    DataSet = sdsCargo
    Left = 315
    Top = 161
  end
  object cdsCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    Left = 347
    Top = 161
    object cdsCargoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCargoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsCargo: TDataSource
    DataSet = cdsCargo
    Left = 379
    Top = 161
  end
  object sdsExercicio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID,'#13#10'LPAD((EXTRACT(DAY FROM E.INICIO_EXERCICIO)),2,0) || ' +
      #39'/'#39' ||'#13#10'LPAD((EXTRACT(MONTH FROM E.INICIO_EXERCICIO)),2,0) || '#39'/' +
      #39' ||'#13#10'LPAD((EXTRACT(YEAR FROM E.INICIO_EXERCICIO)),4,0)||'#13#10' '#39' a ' +
      #39' ||'#13#10'LPAD(EXTRACT(DAY FROM E.FIM_EXERCICIO),2,0) || '#39'/'#39' ||'#13#10'LPA' +
      'D(EXTRACT(MONTH FROM E.FIM_EXERCICIO),2,0) || '#39'/'#39' ||'#13#10'LPAD(EXTRA' +
      'CT(YEAR FROM E.FIM_EXERCICIO),4,0) EXERCICIO'#13#10'FROM EXERCICIO E  '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 284
    Top = 244
    object sdsExercicioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsExercicioEXERCICIO: TStringField
      FieldName = 'EXERCICIO'
      Size = 23
    end
  end
  object dspExercicio: TDataSetProvider
    DataSet = sdsExercicio
    Left = 315
    Top = 245
  end
  object cdsExercicio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExercicio'
    Left = 348
    Top = 245
    object cdsExercicioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsExercicioEXERCICIO: TStringField
      FieldName = 'EXERCICIO'
      Size = 23
    end
  end
  object dsExercicio: TDataSource
    DataSet = cdsExercicio
    Left = 380
    Top = 245
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM EMPRESA'#13#10'WHERE 0=0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 280
    Top = 22
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 312
    Top = 22
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 344
    Top = 22
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsConsultaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 30
    end
    object cdsConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsConsultaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsConsultaNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsConsultaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsConsultaDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsConsultaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsConsultaDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsConsultaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsConsultaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsConsultaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsConsultaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsConsultaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsConsultaENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCNAE: TStringField
      FieldName = 'CNAE'
      Size = 7
    end
    object cdsConsultaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object cdsConsultaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object cdsConsultaEXTENSAO: TStringField
      FieldName = 'EXTENSAO'
      Size = 5
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 376
    Top = 22
  end
end
