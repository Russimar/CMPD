object DMParentesco: TDMParentesco
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 339
  Top = 184
  Height = 379
  Width = 449
  object sdsParentesco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PARENTESCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 20
    Top = 31
    object sdsParentescoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsParentescoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dspParentesco: TDataSetProvider
    DataSet = sdsParentesco
    Left = 52
    Top = 31
  end
  object cdsParentesco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParentesco'
    Left = 85
    Top = 31
    object cdsParentescoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsParentescoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsParentesco: TDataSource
    DataSet = cdsParentesco
    Left = 116
    Top = 31
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PARENTESCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 235
    Top = 39
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 267
    Top = 39
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 301
    Top = 39
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 331
    Top = 39
  end
end
