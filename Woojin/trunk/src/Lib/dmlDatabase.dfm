object dmDatabase: TdmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object ZConnection: TUniConnection
    Tag = 1
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'icymankr_wjma'
    SpecificOptions.Strings = (
      'MySQL.Direct=False'
      'MySQL.Charset=euckr')
    Username = 'icymankr_wjma'
    Server = 'icyman.org'
    Connected = True
    Left = 56
    Top = 48
    EncryptedPassword = 'CFFFCEFFC6FFC6FFCDFFCBFFC7FFC7FFCAFFCFFF'
  end
end
