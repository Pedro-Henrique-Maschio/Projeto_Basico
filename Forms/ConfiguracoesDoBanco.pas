unit ConfiguracoesDoBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, GeradorIni, DataModule;

type
  TConfiguracoesDoBancoForm = class(TForm)
    Label1: TLabel;
    ConfigEdit: TEdit;
    SalvarButton: TButton;
    BuscarButton: TButton;
    ConfigOpenDialog: TOpenDialog;
    procedure BuscarButtonClick(Sender: TObject);
    procedure SalvarButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConfiguraBanco;
  public
    { Public declarations }
  end;

var
  ConfiguracoesDoBancoForm: TConfiguracoesDoBancoForm;

implementation

{$R *.dfm}

{ TConfiguracoesDoBancoForm }

procedure TConfiguracoesDoBancoForm.BuscarButtonClick(Sender: TObject);
begin
  ConfiguraBanco;
end;

procedure TConfiguracoesDoBancoForm.ConfiguraBanco;
var
  vFilePath : string;
begin
  if ConfigOpenDialog.execute = true then
  begin
    ConfigEdit.text:= ConfigOpenDialog.FileName;
    vFilePath:= ExtractFilePath(Application.ExeName)+'Projeto_Basico.ini';
    SetValorIni(vFilePath,'CONFIG','LOCAL_DB',ConfigEdit.text);
    DataModuleForm.Conexao.params.Database:= ConfigEdit.text;
  end;

end;

procedure TConfiguracoesDoBancoForm.FormCreate(Sender: TObject);
var
  vfilePath : string;
begin
  vFilePath:= ExtractFilePath(Application.ExeName)+'Projeto_Basico.ini';
  ConfigEdit.Text:= GetValorIni(vFilePath,'CONFIG','LOCAL_DB');
end;

procedure TConfiguracoesDoBancoForm.SalvarButtonClick(Sender: TObject);
begin
  Self.Close;
end;

end.
