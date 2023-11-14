object CrCidades: TCrCidades
  Left = 0
  Top = 0
  Caption = 'Cadstro da Cidade'
  ClientHeight = 509
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 13
    Top = 59
    Width = 43
    Height = 13
    Caption = 'Cidade : '
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 23
    Height = 13
    Caption = 'UF : '
    FocusControl = DBEdit3
  end
  object CCCancelar: TButton
    Left = 8
    Top = 476
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 288
    Width = 547
    Height = 182
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 8
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 56
    Width = 342
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 101
    Width = 134
    Height = 21
    DataField = 'IDESTADO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object CCExcluir: TButton
    Left = 16
    Top = 244
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    TabOrder = 5
  end
  object CCEditar: TButton
    Left = 368
    Top = 244
    Width = 75
    Height = 25
    Caption = '&Editar'
    TabOrder = 6
    OnClick = CCEditarClick
  end
  object CCSalvar: TButton
    Left = 464
    Top = 476
    Width = 75
    Height = 25
    Caption = '&Salvar'
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = CCSalvarClick
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\Progeto BB\BD\CEDUP.FDB'
    Params.Strings = (
      'user_name=SYSDBA')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 488
    Top = 16
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IDESTADO'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'FK_CIDADES_2'
        Fields = 'IDESTADO'
      end
      item
        Name = 'PK_CIDADES'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CIDADES'
    Left = 488
    Top = 80
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object IBTable1IDESTADO: TIntegerField
      FieldName = 'IDESTADO'
      Required = True
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 488
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 488
    Top = 200
  end
end
