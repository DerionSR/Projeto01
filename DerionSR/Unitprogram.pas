unit Unitprogram;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, UnitfrmPais, UnitfrmEstado, UnitfrmCidade, UnitfrmCliente,
  UnitConsultaPaises, UnitConsultaEstados, UnitConsultaCidades;

type
  TForm1 = class(TForm)
    MenuInicial: TMainMenu;
    Cadastros: TMenuItem;
    Consultas: TMenuItem;
    Opcoes: TMenuItem;
    Sair: TMenuItem;
    CPaises: TMenuItem;
    CEstados: TMenuItem;
    CCidades: TMenuItem;
    CClientes: TMenuItem;
    CoPaises: TMenuItem;
    CoEstados: TMenuItem;
    CoCidades: TMenuItem;
    CoClientes: TMenuItem;
    u1: TMenuItem;
    Usuario1: TMenuItem;
    Desenvolvimento1: TMenuItem;
    procedure CPaisesClick(Sender: TObject);
    procedure CEstadosClick(Sender: TObject);
    procedure CCidadesClick(Sender: TObject);
    procedure CClientesClick(Sender: TObject);
    procedure CoPaisesClick(Sender: TObject);
    procedure CoEstadosClick(Sender: TObject);
    procedure CoCidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CCidadesClick(Sender: TObject);
begin
CrCidades.ShowModal;
end;

procedure TForm1.CClientesClick(Sender: TObject);
begin
CrClientes.ShowModal;
end;

procedure TForm1.CEstadosClick(Sender: TObject);
begin
CrEstados.ShowModal;
end;

procedure TForm1.CoCidadesClick(Sender: TObject);
begin
ConCidades.ShowModal;
end;

procedure TForm1.CoEstadosClick(Sender: TObject);
begin
ConEstados.ShowModal;
end;

procedure TForm1.CoPaisesClick(Sender: TObject);
begin
ConPaises.ShowModal;
end;

procedure TForm1.CPaisesClick(Sender: TObject);
begin
          CrPaises.ShowModal;
end;

end.
