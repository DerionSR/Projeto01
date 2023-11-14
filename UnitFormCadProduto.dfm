object FormCadProduto: TFormCadProduto
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE PRODUTO'
  ClientHeight = 509
  ClientWidth = 527
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
    Left = 24
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Button1: TButton
    Left = 8
    Top = 476
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 432
    Top = 476
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 1
    OnClick = Button2Click
  end
  object EdtDescProduto: TEdit
    Left = 80
    Top = 45
    Width = 297
    Height = 21
    TabOrder = 2
    Text = 'EdtDescProduto'
  end
end
