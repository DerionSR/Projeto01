object CrClientes: TCrClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 484
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = CUEditarClick
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 11
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 22
    Top = 51
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 22
    Top = 88
    Width = 54
    Height = 13
    Caption = 'USERNAME'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 19
    Top = 144
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
    FocusControl = DBEdit4
  end
  object CUCancelar: TButton
    Left = 8
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 691
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
  end
  object CUSalvar: TButton
    Left = 504
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 2
    OnClick = CUSalvarClick
  end
  object DBGrid1: TDBGrid
    Left = 22
    Top = 256
    Width = 565
    Height = 168
    DataSource = DataModule1.DataSourceUsuario
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object CUExcluir: TButton
    Left = 504
    Top = 225
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    TabOrder = 4
  end
  object CUEditar: TButton
    Left = 22
    Top = 225
    Width = 75
    Height = 25
    Caption = '&Editar'
    TabOrder = 5
    OnClick = CUEditarClick
  end
  object CUNovo: TButton
    Left = 254
    Top = 225
    Width = 75
    Height = 25
    Caption = '&Novo'
    TabOrder = 6
    OnClick = CUNovoClick
  end
  object DBEdit1: TDBEdit
    Left = 83
    Top = 8
    Width = 160
    Height = 21
    DataField = 'ID'
    DataSource = DataModule1.DataSourceUsuario
    Enabled = False
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 83
    Top = 48
    Width = 224
    Height = 21
    DataField = 'NOME'
    DataSource = DataModule1.DataSourceUsuario
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 91
    Top = 85
    Width = 238
    Height = 21
    DataField = 'USERNAME'
    DataSource = DataModule1.DataSourceUsuario
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 91
    Top = 141
    Width = 242
    Height = 21
    DataField = 'PASSWORD'
    DataSource = DataModule1.DataSourceUsuario
    TabOrder = 10
  end
end
