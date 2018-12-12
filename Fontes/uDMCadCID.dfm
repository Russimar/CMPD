object DMCID: TDMCID
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 528
  Top = 230
  Height = 325
  Width = 485
  object sdsConsultaCID: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM TAB_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 248
    Top = 32
    object sdsConsultaCIDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaCIDCID: TStringField
      FieldName = 'CID'
      Required = True
      Size = 15
    end
    object sdsConsultaCIDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object dspConsultaCID: TDataSetProvider
    DataSet = sdsConsultaCID
    Left = 280
    Top = 32
  end
  object cdsConsultaCID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaCID'
    Left = 312
    Top = 32
    object cdsConsultaCIDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaCIDCID: TStringField
      FieldName = 'CID'
      Required = True
      Size = 15
    end
    object cdsConsultaCIDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object dsConsultaCID: TDataSource
    DataSet = cdsConsultaCID
    Left = 344
    Top = 32
  end
  object sdsCID: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM TAB_CID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 24
    Top = 32
    object sdsCIDID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCIDCID: TStringField
      FieldName = 'CID'
      Required = True
      Size = 15
    end
    object sdsCIDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object dspCID: TDataSetProvider
    DataSet = sdsCID
    Left = 56
    Top = 32
  end
  object cdsCID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCID'
    Left = 88
    Top = 32
    object cdsCIDID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCIDCID: TStringField
      FieldName = 'CID'
      Required = True
      Size = 15
    end
    object cdsCIDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object dsCID: TDataSource
    DataSet = cdsCID
    Left = 120
    Top = 32
  end
end
