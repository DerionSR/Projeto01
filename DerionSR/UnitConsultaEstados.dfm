object ConEstados: TConEstados
  Left = 0
  Top = 0
  Caption = 'Consultar Estados'
  ClientHeight = 382
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ClEstadosButtonC: TButton
    Left = 312
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 0
  end
  object ClEstadosButtonL: TButton
    Left = 392
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 28
    Top = 200
    Width = 517
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Aluno\Desktop\Progeto BB\BD\CEDUP.FDB'
    Params.Strings = (
      'user_name=SYSDBA')
    DefaultTransaction = IBTransaction1
    Left = 440
    Top = 64
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 520
    Top = 64
  end
  object DataSource1: TDataSource
    Left = 504
    Top = 136
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
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'ESTADOS'
    Left = 448
    Top = 136
  end
end
