object CrPaises: TCrPaises
  Left = 0
  Top = 0
  Caption = 'Cadastro Pa'#237'ses'
  ClientHeight = 396
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
  end
  object SalvarCP: TButton
    Left = 500
    Top = 363
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
    OnClick = SalvarCPClick
  end
  object CancelarCP: TButton
    Left = 8
    Top = 363
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
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 112
    Width = 45
    Height = 27
    DataField = 'SIGLA'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 537
    Height = 128
    DataSource = DataModule1.DataSourcePaises
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EditarCP: TButton
    Left = 16
    Top = 187
    Width = 75
    Height = 25
    Caption = '&Editar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = EditarCPClick
  end
  object ExcluirCP: TButton
    Left = 500
    Top = 187
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object NovoCP: TButton
    Left = 248
    Top = 187
    Width = 75
    Height = 25
    Caption = '&Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = NovoCPClick
  end
end
