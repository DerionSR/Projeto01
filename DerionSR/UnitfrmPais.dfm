object CrPaises: TCrPaises
  Left = 0
  Top = 0
  Caption = 'Cadastro Pa'#237'ses'
  ClientHeight = 364
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 98
    Height = 19
    Caption = 'Nome do Pais'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 90
    Height = 19
    Caption = 'Sigla do Pais'
    FocusControl = DBEdit3
    OnClick = Label3Click
  end
  object SalvarCP: TButton
    Left = 500
    Top = 202
    Width = 75
    Height = 25
    Caption = '&Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Label3Click
  end
  object CancelarCP: TButton
    Left = 16
    Top = 202
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 40
    Width = 380
    Height = 27
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 112
    Width = 45
    Height = 27
    DataField = 'SIGLA'
    DataSource = DataSource1
    TabOrder = 3
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\Progeto BB\BD\CEDUP.FDB'
    Params.Strings = (
      'user_name=sysdba')
    DefaultTransaction = IBTransaction1
    Left = 440
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
        Size = 40
      end
      item
        Name = 'SIGLA'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'PK_PAISES'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PAISES'
    Left = 456
    Top = 88
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1NOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object IBTable1SIGLA: TIBStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 2
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 520
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 528
    Top = 80
  end
end
