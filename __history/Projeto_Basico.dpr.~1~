program Projeto_Basico;

uses
  Vcl.Forms,
  Main in 'Forms\Main.pas' {MainForm},
  DataModule in 'Forms\DataModule.pas' {DataModuleForm: TDataModule},
  GeradorIni in 'Classes\GeradorIni.pas',
  ConfiguracoesDoBanco in 'Forms\ConfiguracoesDoBanco.pas' {ConfiguracoesDoBancoForm},
  CadastroDeClientes in 'Forms\CadastroDeClientes.pas' {CadastroDeClientesForm},
  CadastroDeCidades in 'Forms\CadastroDeCidades.pas' {CadastroDeCidadesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleForm, DataModuleForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
