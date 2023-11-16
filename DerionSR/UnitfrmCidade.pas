unit UnitfrmCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, IBCustomDataSet, Grids, DBGrids,
  IBDatabase, IBTable;

type
  TCrCidades = class(TForm)
    CCCancelar: TButton;
    IBDatabase1: TIBDatabase;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    DBGrid1: TDBGrid;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    IBTable1IDESTADO: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    CCExcluir: TButton;
    CCEditar: TButton;
    CCSalvar: TButton;
    CCNovo: TButton;
    procedure CCEditarClick(Sender: TObject);
    procedure CCSalvarClick(Sender: TObject);
    procedure CCNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrCidades: TCrCidades;

implementation

{$R *.dfm}

end;

end;

procedure TCrCidades.CCEditarClick(Sender: TObject);
begin
try
    if MessageBox(handle, 'Deseja editar o registro?','ATENÇÂO!' , mb_YESNo )= mrYes then
    begin
        IBtable1.Edit;
        IBtable1NOME.Value:=DBEdit2.Text;
        IBtable1IDESTADO.Value:=DBEdit3.Text;
        IBtable1.Post;
        IBtable1.Close;
        IBtable1.Open;
        ShowMessage('Registro Editado!');
    end;
except
      ShowMessage('Erro ao executar atualização!');
end;

end;

procedure TCrCidades.CCNovoClick(Sender: TObject);
begin
    IBTable1.Open;
    IBTable1.Append;
    DBEdit1.SetFocus;
end;

procedure TCrCidades.CCSalvarClick(Sender: TObject);
begin

  try
      if MessageBox(handle, 'Deseja salvar o registro','SALVANDO', mb_YesNo ) = mrYes then
      if IBTable1.state in [dsinsert] then
      begin
          IBTable1.Post;
          CCNovo.SetFocus;
      end;
      IBTransaction1.ComitRetaining;
      IBTable1.Close;
      IBTTable1.Open;
  finally
      IBTransaction1.RollbackRetaining;
  end;
end;

end.
