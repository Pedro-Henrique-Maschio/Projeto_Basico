unit CadastroDeCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TCadastroDeCidadesForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CidadesQuery: TFDQuery;
    CidadesQueryCIDADE_ID: TIntegerField;
    CidadesQueryNOME: TStringField;
    CidadesDataSource: TDataSource;
    CidadesQuerySIGLA: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    EstadosQuery: TFDQuery;
    EstadosDataSource: TDataSource;
    NovoButton: TButton;
    ConfirmarButton: TButton;
    CancelarButton: TButton;
    ExcluirButton: TButton;
    DBGrid1: TDBGrid;
    procedure CidadesQueryAfterPost(DataSet: TDataSet);
    procedure CidadesQueryAfterCancel(DataSet: TDataSet);
    procedure NovoButtonClick(Sender: TObject);
    procedure ConfirmarButtonClick(Sender: TObject);
    procedure ExcluirButtonClick(Sender: TObject);
    procedure CancelarButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CidadesQueryAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroDeCidadesForm: TCadastroDeCidadesForm;

implementation

{$R *.dfm}

procedure TCadastroDeCidadesForm.CancelarButtonClick(Sender: TObject);
begin
  if CidadesQuery.state in [dsinsert,dsedit] then
    CidadesQuery.Cancel;

  DataModuleForm.conexao.RollbackRetaining;
  CidadesQuery.Refresh;
  CancelarButton.Enabled:= false;
  ConfirmarButton.Enabled:= false;
  
end;

procedure TCadastroDeCidadesForm.CidadesQueryAfterCancel(DataSet: TDataSet);
begin
  NovoButton.Enabled:= True;
  ExcluirButton.Enabled:= true;
end;


procedure TCadastroDeCidadesForm.CidadesQueryAfterEdit(DataSet: TDataSet);
begin
  NovoButton.Enabled:= false;
  ExcluirButton.Enabled:= false;
  ConfirmarButton.Enabled:= true;
  CancelarButton.Enabled:= true;
end;

procedure TCadastroDeCidadesForm.CidadesQueryAfterPost(DataSet: TDataSet);
begin
  NovoButton.Enabled:= True;
  ExcluirButton.Enabled:= true;
end;

procedure TCadastroDeCidadesForm.ConfirmarButtonClick(Sender: TObject);
begin
  if CidadesQuery.state in [dsinsert,dsedit] then
    CidadesQuery.Post;

  DataModuleForm.conexao.commit;
  CidadesQuery.Refresh;
  CancelarButton.Enabled:= false;
 ConfirmarButton.Enabled:= false;

  end;

procedure TCadastroDeCidadesForm.ExcluirButtonClick(Sender: TObject);
begin
  if not (CidadesQuery.state in [dsinsert,dsedit]) then
    CidadesQuery.Delete;

  DataModuleForm.conexao.commit;
  CidadesQuery.Refresh;
  CancelarButton.Enabled:= false;

end;

procedure TCadastroDeCidadesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CidadesQuery.close;
  EstadosQuery.close;
end;

procedure TCadastroDeCidadesForm.FormCreate(Sender: TObject);
begin
  CidadesQuery.open;
  EstadosQuery.open;
end;

procedure TCadastroDeCidadesForm.NovoButtonClick(Sender: TObject);
begin
  if not (CidadesQuery.state in [dsinsert,dsedit]) then
    CidadesQuery.Insert;

  NovoButton.enabled:= False;
  ExcluirButton.Enabled:= False;
  CancelarButton.Enabled:= true;
  ConfirmarButton.Enabled:= true;

end;

end.
