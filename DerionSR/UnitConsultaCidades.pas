unit UnitConsultaCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TConCidades = class(TForm)
    ClCidadesStringGrid1: TStringGrid;
    ClCidadesButtonL: TButton;
    ClCidadesButtonC: TButton;
    ClCidadesLabel1: TLabel;
    ClCidadesEdit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConCidades: TConCidades;

implementation

{$R *.dfm}

end.
