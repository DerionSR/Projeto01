object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Programa DerionSR'
  ClientHeight = 416
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuInicial
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MenuInicial: TMainMenu
    Left = 24
    Top = 56
    object Cadastros: TMenuItem
      Caption = 'Cadastros'
      object CPaises: TMenuItem
        Caption = 'Pa'#237'ses'
        OnClick = CPaisesClick
      end
      object CEstados: TMenuItem
        Caption = 'Estados'
        OnClick = CEstadosClick
      end
      object CCidades: TMenuItem
        Caption = 'Cidades'
        OnClick = CCidadesClick
      end
      object CClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = CClientesClick
      end
      object u1: TMenuItem
        Caption = 'Usuario'
      end
    end
    object Consultas: TMenuItem
      Caption = 'Consultas'
      object CoPaises: TMenuItem
        Caption = 'Pa'#237'ses'
        OnClick = CoPaisesClick
      end
      object CoEstados: TMenuItem
        Caption = 'Estados'
        OnClick = CoEstadosClick
      end
      object CoCidades: TMenuItem
        Caption = 'Cidades'
        OnClick = CoCidadesClick
      end
      object CoClientes: TMenuItem
        Caption = 'Clientes'
      end
      object Usuario1: TMenuItem
        Caption = 'Usuario'
      end
    end
    object Opcoes: TMenuItem
      Caption = 'Op'#231#245'es'
      object Desenvolvimento1: TMenuItem
        Caption = 'Desenvolvimento'
      end
    end
    object Sair: TMenuItem
      Caption = 'Sair'
    end
  end
end
