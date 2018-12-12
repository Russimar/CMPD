object DMCargo: TDMCargo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 451
  Top = 226
  Height = 372
  Width = 555
  object sdsCargo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CARGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 52
    Top = 47
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
    Left = 84
    Top = 49
  end
  object cdsCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    Left = 116
    Top = 49
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
    Left = 148
    Top = 49
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM CARGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 302
    Top = 51
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 334
    Top = 52
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 366
    Top = 52
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
    Left = 398
    Top = 52
  end
end
