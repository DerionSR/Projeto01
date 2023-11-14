unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitFormCadProduto, StdCtrls, Menus, ExtCtrls;

type
  TFormPrograma = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    MainMenu1: TMainMenu;
    CADASTRO1: TMenuItem;
    PRODUTO1: TMenuItem;
    MARCA1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure PRODUTO1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrograma: TFormPrograma;

implementation

{$R *.dfm}

procedure TFormPrograma.Button1Click(Sender: TObject);
begin
     FormCadProduto.Show;
end;

procedure TFormPrograma.PRODUTO1Click(Sender: TObject);
begin
    FormCadProduto.Show;
end;

end.
