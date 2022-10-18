object CadastroDeClientesForm: TCadastroDeClientesForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes'
  ClientHeight = 498
  ClientWidth = 1224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 103
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 591
    Top = 77
    Width = 39
    Height = 13
    Caption = 'Apelido:'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 774
    Top = 77
    Width = 23
    Height = 13
    Caption = 'CPF:'
    FocusControl = DBEdit4
  end
  object Label6: TLabel
    Left = 979
    Top = 77
    Width = 46
    Height = 13
    Caption = 'Telefone:'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 8
    Top = 114
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
    FocusControl = DBEdit6
  end
  object Label8: TLabel
    Left = 424
    Top = 114
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
    FocusControl = DBEdit7
  end
  object Label2: TLabel
    Left = 8
    Top = 77
    Width = 60
    Height = 13
    Caption = 'C'#243'd. do Cli.:'
    FocusControl = DBEdit1
  end
  object Label9: TLabel
    Left = 591
    Top = 114
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit7
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1224
    Height = 73
    Align = alTop
    Color = 6560768
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 240
      Height = 24
      Caption = 'Cadastro de Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ExcluirButton: TButton
      AlignWithMargins = True
      Left = 1144
      Top = 23
      Width = 75
      Height = 27
      Margins.Left = 0
      Margins.Top = 22
      Margins.Right = 4
      Margins.Bottom = 22
      Align = alRight
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = ExcluirButtonClick
    end
    object CadastrarButton: TButton
      AlignWithMargins = True
      Left = 986
      Top = 23
      Width = 75
      Height = 27
      Margins.Left = 0
      Margins.Top = 22
      Margins.Right = 4
      Margins.Bottom = 22
      Align = alRight
      Caption = 'Confirmar'
      Enabled = False
      TabOrder = 1
      OnClick = CadastrarButtonClick
    end
    object CancelarButton: TButton
      AlignWithMargins = True
      Left = 1065
      Top = 23
      Width = 75
      Height = 27
      Margins.Left = 0
      Margins.Top = 22
      Margins.Right = 4
      Margins.Bottom = 22
      Align = alRight
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = CancelarButtonClick
    end
    object NovoButton: TButton
      AlignWithMargins = True
      Left = 907
      Top = 23
      Width = 75
      Height = 27
      Margins.Left = 0
      Margins.Top = 22
      Margins.Right = 4
      Margins.Bottom = 22
      Align = alRight
      Caption = 'Novo'
      TabOrder = 3
      OnClick = NovoButtonClick
    end
  end
  object DBEdit2: TDBEdit
    Left = 103
    Top = 92
    Width = 482
    Height = 21
    DataField = 'NOME'
    DataSource = ClienteDataSource
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 591
    Top = 92
    Width = 177
    Height = 21
    DataField = 'APELIDO'
    DataSource = ClienteDataSource
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 774
    Top = 92
    Width = 199
    Height = 21
    DataField = 'CPF'
    DataSource = ClienteDataSource
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 979
    Top = 92
    Width = 189
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ClienteDataSource
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 130
    Width = 410
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ClienteDataSource
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 424
    Top = 130
    Width = 161
    Height = 21
    DataField = 'NUMERO'
    DataSource = ClienteDataSource
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 92
    Width = 89
    Height = 21
    DataField = 'CLIENTE_ID'
    DataSource = ClienteDataSource
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 168
    Width = 1194
    Height = 312
    DataSource = ClienteDataSource
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLIENTE_ID'
        Title.Alignment = taCenter
        Title.Caption = '#'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELIDO'
        Title.Caption = 'Apelido'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 591
    Top = 130
    Width = 145
    Height = 21
    DataField = 'CIDADES_ID'
    DataSource = ClienteDataSource
    KeyField = 'CIDADE_ID'
    ListField = 'NOME'
    ListSource = CidadesDataSource
    TabOrder = 9
  end
  object ClientesQuery: TFDQuery
    AfterEdit = ClientesQueryAfterEdit
    BeforePost = ClientesQueryBeforePost
    AfterPost = ClientesQueryAfterPost
    AfterCancel = ClientesQueryAfterCancel
    Connection = DataModuleForm.Conexao
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_CLIENTES_ID'
    UpdateOptions.AutoIncFields = 'Cliente_ID'
    SQL.Strings = (
      'select c.*,cd.Nome as cidade from clientes c'
      'left join cidades cd'
      '  on cd.cidade_id = c.cidades_id'
      'order by c.cliente_id'
      '')
    Left = 464
    Top = 264
    object ClientesQueryCLIENTE_ID: TFDAutoIncField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object ClientesQueryNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object ClientesQueryAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 30
    end
    object ClientesQueryCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object ClientesQueryTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object ClientesQueryENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object ClientesQueryNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object ClientesQueryCIDADES_ID: TIntegerField
      FieldName = 'CIDADES_ID'
      Origin = 'CIDADES_ID'
    end
    object ClientesQueryESTADOS_ID: TIntegerField
      FieldName = 'ESTADOS_ID'
      Origin = 'ESTADOS_ID'
    end
    object ClientesQueryCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object ClienteDataSource: TDataSource
    DataSet = ClientesQuery
    Left = 464
    Top = 308
  end
  object CidadesQuery: TFDQuery
    Connection = DataModuleForm.Conexao
    SQL.Strings = (
      'Select * from cidades')
    Left = 928
    Top = 256
    object CidadesQueryCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
      Origin = 'CIDADE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CidadesQueryNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object CidadesQuerySIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
  end
  object CidadesDataSource: TDataSource
    DataSet = CidadesQuery
    Left = 928
    Top = 304
  end
end
