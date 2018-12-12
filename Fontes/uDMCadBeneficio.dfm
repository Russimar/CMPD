object DMBeneficio: TDMBeneficio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 518
  Top = 228
  Height = 362
  Width = 505
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM BENEFICIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 54
    Top = 48
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 86
    Top = 48
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 118
    Top = 48
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 150
    Top = 48
  end
  object sdsBeneficio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM BENEFICIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 285
    Top = 53
    object sdsBeneficioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsBeneficioNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspBeneficio: TDataSetProvider
    DataSet = sdsBeneficio
    Left = 317
    Top = 53
  end
  object cdsBeneficio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBeneficio'
    Left = 349
    Top = 53
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
    Left = 381
    Top = 53
  end
end
