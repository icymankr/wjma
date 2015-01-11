object dmDatabase: TdmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object ZConnection: TUniConnection
    Tag = 1
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'c521test'
    SpecificOptions.Strings = (
      'MySQL.Direct=False'
      'MySQL.Charset=euckr')
    Username = 'c521test'
    Server = '103.246.89.152'
    Connected = True
    Left = 56
    Top = 48
    EncryptedPassword = '8BFF9AFF8CFF8BFF'
  end
end
