unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  GeradorIni, Vcl.Forms, Vcl.Dialogs;

type
  TDataModuleForm = class(TDataModule)
    Conexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaBanco;
  public
    { Public declarations }
  end;

var
  DataModuleForm: TDataModuleForm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConfiguracoesDoBanco;

{$R *.dfm}

{ TDataModuleForm }

procedure TDataModuleForm.CarregaBanco;
var
  vFilePath: string;
begin
  vFilePath:= ExtractFilePath(Application.ExeName)+'Projeto_Basico.ini';
  try
    Conexao.Params.Database:= GetValorIni(vFilePath,'CONFIG','LOCAL_DB');
    Conexao.connected:= true;
  except
    with TConfiguracoesDoBancoForm.create(self) do
    try
      showmodal;
    finally
      free;
    end;
  end;
end;

procedure TDataModuleForm.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
