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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 19
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 22
    Top = 56
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 22
    Top = 96
    Width = 54
    Height = 13
    Caption = 'USERNAME'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 19
    Top = 136
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
  object DBEdit1: TDBEdit
    Left = 64
    Top = 16
    Width = 134
    Height = 21
    DataField = 'ID'
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 53
    Width = 374
    Height = 21
    DataField = 'NOME'
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 93
    Width = 199
    Height = 21
    DataField = 'USERNAME'
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 109
    Top = 133
    Width = 186
    Height = 21
    DataField = 'PASSWORD'
    TabOrder = 5
  end
  object CUSalvar: TButton
    Left = 504
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 6
    OnClick = CUSalvarClick
  end
  object DBGrid1: TDBGrid
    Left = 22
    Top = 256
    Width = 565
    Height = 168
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object CUExcluir: TButton
    Left = 376
    Top = 225
    Width = 75
    Height = 25
    Caption = 'E&xcluir'
    TabOrder = 8
  end
  object CUEditar: TButton
    Left = 22
    Top = 225
    Width = 75
    Height = 25
    Caption = '&Editar'
    TabOrder = 9
    OnClick = CUEditarClick
  end
end
