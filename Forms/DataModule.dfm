object DataModuleForm: TDataModuleForm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\T2-Programa'#231#227'o-01\Documents\DelphiProjects\Pro' +
        'jeto_Basico\Databases\PROJETO_BASCIO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 56
  end
end
