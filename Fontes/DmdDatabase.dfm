object dmDatabase: TdmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 747
  Top = 176
  Height = 293
  Width = 464
  object scoPrincipal: TSQLConnection
    ConnectionName = 'CMPD'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\projetos\CMPD\Dados\CMPD.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 39
    Top = 14
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 168
    Top = 16
  end
  object Encoder64: TIdEncoderMIME
    FillChar = '='
    Left = 248
    Top = 16
  end
end
