program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormPrograma},
  UnitFormCadProduto in 'UnitFormCadProduto.pas' {FormCadProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrograma, FormPrograma);
  Application.CreateForm(TFormCadProduto, FormCadProduto);
  Application.Run;
end.
