object ConPaises: TConPaises
  Left = 0
  Top = 0
  Caption = 'Consulta Pa'#237'ses'
  ClientHeight = 248
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ClPaisesLabel1: TLabel
    Left = 24
    Top = 8
    Width = 126
    Height = 19
    Caption = 'Consultar Pa'#237'ses :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ClPaisesEdit1: TEdit
    Left = 160
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object ClPaisesStringGrid1: TStringGrid
    Left = 24
    Top = 43
    Width = 512
    Height = 173
    ColCount = 3
    TabOrder = 1
  end
  object ClPaisesButtonC: TButton
    Left = 296
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
  end
  object ClPaisesButtonL: TButton
    Left = 392
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
  end
end
