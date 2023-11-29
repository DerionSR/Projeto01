﻿unit UnitfrmEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Mask, DBCtrls, IBCustomDataSet,
  IBDatabase, IBTable, UDN;

type
  TCrEstados = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    procedure CEEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrEstados: TCrEstados;

implementation

{$R *.dfm}

procedure TCrEstado.CEEditarClick(Sender: TObject);
begin
try
    if MessageBox(handle, 'Deseja editar o registro?','ATENÇÂO!' , mb_YESNo )= mrYes then
    begin
        UmDM.IBtableEstado.Edit;
        IBtable1NOME.Value:=DBEdit2.Text;
        IBtable1UF.Value:=DBEdit3.Text;
        IBtable1.Post;
        IBtable1.Close;
        IBtable1.Open;
        ShowMessage('Registro Editado!');
    end;
except
      ShowMessage('Erro ao executar atualização!');

end;

end;


end.
