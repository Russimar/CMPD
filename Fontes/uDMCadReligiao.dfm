object DMReligiao: TDMReligiao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 428
  Top = 201
  Height = 332
  Width = 492
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM RELIGIAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 32
    Top = 45
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 64
    Top = 45
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 96
    Top = 45
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 128
    Top = 44
  end
  object sdsReligiao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM RELIGIAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 264
    Top = 56
    object sdsReligiaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsReligiaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspReligiao: TDataSetProvider
    DataSet = sdsReligiao
    Left = 296
    Top = 56
  end
  object cdsReligiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReligiao'
    Left = 328
    Top = 56
    object cdsReligiaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsReligiaoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dsReligiao: TDataSource
    DataSet = cdsReligiao
    Left = 360
    Top = 56
  end
end
