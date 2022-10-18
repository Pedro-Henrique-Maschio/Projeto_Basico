object CadastroDeCidadesForm: TCadastroDeCidadesForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CadastroDeCidadesForm'
  ClientHeight = 362
  ClientWidth = 782
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
  object Label2: TLabel
    Left = 8
    Top = 75
    Width = 27
    Height = 13
    Caption = 'C'#243'd.:'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 71
    Top = 75
    Width = 31
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 659
    Top = 75
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 69
    Align = alTop
    Color = 5059078
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 772
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 228
      Height = 24
      Caption = 'Cadastro de Cidades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ExcluirButton: TButton
      AlignWithMargins = True
      Left = 703
      Top = 21
      Width = 71
      Height = 27
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 7
      Margins.Bottom = 20
      Align = alRight
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = ExcluirButtonClick
    end
    object NovoButton: TButton
      AlignWithMargins = True
      Left = 466
      Top = 21
      Width = 75
      Height = 27
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 20
      Align = alRight
      Caption = 'Novo'
      TabOrder = 1
      OnClick = NovoButtonClick
      ExplicitLeft = 400
    end
    object ConfirmarButton: TButton
      AlignWithMargins = True
      Left = 545
      Top = 21
      Width = 75
      Height = 27
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 20
      Align = alRight
      Caption = 'Confirmar'
      Enabled = False
      TabOrder = 2
      OnClick = ConfirmarButtonClick
      ExplicitLeft = 531
      ExplicitTop = 23
      ExplicitHeight = 25
    end
    object CancelarButton: TButton
      AlignWithMargins = True
      Left = 624
      Top = 21
      Width = 75
      Height = 27
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 20
      Align = alRight
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = CancelarButtonClick
      ExplicitLeft = 612
      ExplicitTop = 23
      ExplicitHeight = 25
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 90
    Width = 57
    Height = 21
    DataField = 'CIDADE_ID'
    DataSource = CidadesDataSource
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 71
    Top = 90
    Width = 582
    Height = 21
    DataField = 'NOME'
    DataSource = CidadesDataSource
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 659
    Top = 90
    Width = 115
    Height = 21
    DataField = 'SIGLA'
    DataSource = CidadesDataSource
    KeyField = 'SIGLA'
    ListField = 'NOME'
    ListSource = EstadosDataSource
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 117
    Width = 766
    Height = 225
    DataSource = CidadesDataSource
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CIDADE_ID'
        Title.Alignment = taCenter
        Title.Caption = '#'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SIGLA'
        Title.Caption = 'Estado'
        Visible = True
      end>
  end
  object CidadesQuery: TFDQuery
    AfterEdit = CidadesQueryAfterEdit
    AfterPost = CidadesQueryAfterPost
    AfterCancel = CidadesQueryAfterCancel
    Connection = DataModuleForm.Conexao
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_CIDADES_ID'
    UpdateOptions.AutoIncFields = 'CIDADE_ID'
    SQL.Strings = (
      'select * '
      'from cidades'
      'order by cidade_id')
    Left = 272
    Top = 192
    object CidadesQueryCIDADE_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CIDADE_ID'
      Origin = 'CIDADE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 272
    Top = 248
  end
  object EstadosQuery: TFDQuery
    Connection = DataModuleForm.Conexao
    SQL.Strings = (
      'select * '
      'from estados'
      'order by estado_id')
    Left = 416
    Top = 192
  end
  object EstadosDataSource: TDataSource
    DataSet = EstadosQuery
    Left = 408
    Top = 256
  end
end
