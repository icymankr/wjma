object dmDatabase: TdmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object ZConnection: TUniConnection
    Tag = 1
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'kimsutong'
    SpecificOptions.Strings = (
      'MySQL.Direct=False'
      'MySQL.Charset=euckr')
    Username = 'kimsutong'
    Server = '202.9.109.140'
    Connected = True
    Left = 56
    Top = 48
    EncryptedPassword = 'CFFFCEFFC6FFC6FFCDFFCBFFC7FFC7FFCAFFCFFF'
  end
end
