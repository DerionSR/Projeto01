unit UnitConsultaPaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TConPaises = class(TForm)
    ClPaisesEdit1: TEdit;
    ClPaisesStringGrid1: TStringGrid;
    ClPaisesLabel1: TLabel;
    ClPaisesButtonC: TButton;
    ClPaisesButtonL: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConPaises: TConPaises;

implementation

{$R *.dfm}

end.
