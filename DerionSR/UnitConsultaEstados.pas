unit UnitConsultaEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DB, IBCustomDataSet, IBTable, DBGrids, IBDatabase;

type
  TConEstados = class(TForm)
    ClEstadosButtonC: TButton;
    ClEstadosButtonL: TButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    IBTable1: TIBTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConEstados: TConEstados;

implementation

{$R *.dfm}

end.
