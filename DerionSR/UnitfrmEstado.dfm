object CrEstados: TCrEstados
  Left = 0
  Top = 0
  Caption = 'Cadastro do Estado'
  ClientHeight = 500
  ClientWidth = 567
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
    Left = 16
    Top = 16
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Estado: TLabel
    Left = 16
    Top = 56
    Width = 43
    Height = 13
    Caption = 'Estado : '
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 16
    Top = 112
    Width = 81
    Height = 13
    Caption = 'Pais de Origem : '
    FocusControl = DBEdit3
  end
  object SalvarCE: TButton
    Left = 492
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
    OnClick = SalvarCEClick
  end
  object CancelarCE: TButton
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
  object DBGrid1: TDBGrid
    Left = 16
    Top = 224
    Width = 537
    Height = 128
    DataSource = DataModule1.DataSourceEstados
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EditarCE: TButton
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
    TabOrder = 3
    OnClick = EditarCEClick
  end
  object ExcluirCE: TButton
    Left = 492
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
    TabOrder = 4
  end
  object NovoCE: TButton
    Left = 240
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
    TabOrder = 5
    OnClick = NovoCEClick
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 13
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = DataModule1.DataSourceEstados
    Enabled = False
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 53
    Width = 326
    Height = 21
    DataField = 'NOME'
    DataSource = DataModule1.DataSourceEstados
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 109
    Width = 134
    Height = 21
    DataField = 'IDPAISES'
    DataSource = DataModule1.DataSourceEstados
    TabOrder = 8
  end
end
