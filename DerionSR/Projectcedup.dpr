program Projectcedup;

uses
  Forms,
  Unitprogram in 'Unitprogram.pas' {Form1},
  UnitfrmPais in 'UnitfrmPais.pas' {CrPaises},
  UnitfrmEstado in 'UnitfrmEstado.pas' {CrEstados},
  UnitfrmCidade in 'UnitfrmCidade.pas' {CrCidades},
  UnitfrmCliente in 'UnitfrmCliente.pas' {CrClientes},
  UnitConsultaPaises in 'UnitConsultaPaises.pas' {ConPaises},
  UnitConsultaEstados in 'UnitConsultaEstados.pas' {ConEstados},
  UnitConsultaCidades in 'UnitConsultaCidades.pas' {ConCidades},
  UDN in 'UDN.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCrPaises, CrPaises);
  Application.CreateForm(TCrEstados, CrEstados);
  Application.CreateForm(TCrCidades, CrCidades);
  Application.CreateForm(TCrClientes, CrClientes);
  Application.CreateForm(TConPaises, ConPaises);
  Application.CreateForm(TConEstados, ConEstados);
  Application.CreateForm(TConCidades, ConCidades);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
