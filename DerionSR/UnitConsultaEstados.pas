unit UnitConsultaEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TConEstados = class(TForm)
    ClEstadosEdit1: TEdit;
    ClEstadosLabel1: TLabel;
    ClEstadosStringGrid1: TStringGrid;
    ClEstadosButtonC: TButton;
    ClEstadosButtonL: TButton;
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
