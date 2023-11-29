object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 410
  Width = 584
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\Progeto BB\BD\CEDUP.FDB'
    Params.Strings = (
      'user_name=SYSDBA')
    DefaultTransaction = IBTransaction1
    Left = 440
    Top = 16
  end
  object IBTablePaises: TIBTable
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
    IndexFieldNames = 'ID'
    StoreDefs = True
    TableName = 'PAISES'
    Left = 400
    Top = 88
    object IBTablePaisesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTablePaisesNOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object IBTablePaisesSIGLA: TIBStringField
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
  object DataSourcePaises: TDataSource
    DataSet = IBTablePaises
    Left = 504
    Top = 88
  end
  object DataSourceEstados: TDataSource
    DataSet = IBTableEstados
    Left = 504
    Top = 152
  end
  object IBTableEstados: TIBTable
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
        Name = 'IDPAISES'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_ESTADOS'
        Fields = 'ID'
        Options = [ixUnique]
      end
      item
        Name = 'FK_ESTADOS_2'
        Fields = 'IDPAISES'
      end>
    StoreDefs = True
    TableName = 'ESTADOS'
    Left = 384
    Top = 152
  end
  object IBTableCidades: TIBTable
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
    Left = 408
    Top = 240
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object IBTable1IDESTADO: TIntegerField
      FieldName = 'IDESTADO'
      Required = True
    end
  end
  object DataSourceCidades: TDataSource
    DataSet = IBTableCidades
    Left = 504
    Top = 232
  end
  object IBTableUsuario: TIBTable
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
        Name = 'USERNAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'PASSWORD'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'PK_USER'
        Fields = 'ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'USER'
    Left = 424
    Top = 304
    object IntegerField2: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
      Required = True
    end
    object IBStringField2: TIBStringField
      DisplayWidth = 36
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object IBTable1USERNAME: TIBStringField
      DisplayWidth = 18
      FieldName = 'USERNAME'
      Required = True
      Size = 15
    end
    object IBTable1PASSWORD: TIBStringField
      DisplayWidth = 30
      FieldName = 'PASSWORD'
      Required = True
      Size = 25
    end
  end
  object DataSourceUsuario: TDataSource
    DataSet = IBTableUsuario
    Left = 520
    Top = 296
  end
end
