unit UnitFormCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormCadProduto = class(TForm)
    Button1: TButton;
    Button2: TButton;
    EdtDescProduto: TEdit;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadProduto: TFormCadProduto;

implementation

{$R *.dfm}

procedure TFormCadProduto.Button2Click(Sender: TObject);
begin
  FormCadProduto.close;
end;

end.
