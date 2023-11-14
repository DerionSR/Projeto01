object FormPrograma: TFormPrograma
  Left = 0
  Top = 0
  Caption = 'PROGRAMA'
  ClientHeight = 539
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 539
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 144
    ExplicitWidth = 249
    ExplicitHeight = 185
    object Button1: TButton
      Left = 278
      Top = 184
      Width = 75
      Height = 25
      Caption = 'cadproduto'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object PRODUTO1: TMenuItem
        Caption = 'PRODUTO'
        OnClick = PRODUTO1Click
      end
      object MARCA1: TMenuItem
        Caption = 'MARCA'
      end
    end
  end
end
