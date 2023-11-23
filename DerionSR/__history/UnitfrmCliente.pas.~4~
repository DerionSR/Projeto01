unit UnitfrmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Mask, DBCtrls, IBCustomDataSet,
  IBDatabase, IBTable,;

type
  TCrClientes = class(TForm)
    CUCancelar: TButton;
    Button2: TButton;
    IBDatabase1: TIBDatabase;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    IBTable1USERNAME: TIBStringField;
    IBTable1PASSWORD: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DataSource1: TDataSource;
    CUSalvar: TButton;
    DBGrid1: TDBGrid;
    CUExcluir: TButton;
    CUEditar: TButton;
    procedure CUEditarClick(Sender: TObject);
    procedure CUSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrClientes: TCrClientes;

implementation

{$R *.dfm}

procedure TCrClientes.CUEditarClick(Sender: TObject);
begin
try
    if MessageBox(handle, 'Deseja editar o registro?','ATENÇÂO!' , mb_YESNo )= mrYes then
    begin
        IBtable1.Edit;
        IBtable1NOME.Value:=DBEdit2.Text;
        IBtable1USERNAME.Value:=DBEdit3.Text;
        IBtable1PASSWORD.Value:=DBEdit4.Text;
        IBtable1.Post;
        IBtable1.Close;
        IBtable1.Open;
        ShowMessage('Registro Editado!');
    end;
except
      ShowMessage('Erro ao executar atualização!');

end;

end;

procedure TCrClientes.CUSalvarClick(Sender: TObject);
begin

  try
      if IBTable1.State in [dsinsert] then
      begin
          IBTable1.Post;
          CUSalvar.SetFocus;
      end;
      IBTransaction1.CommitRetaining;
      IBTable1.Close;
      IBTable1.Open;
  finally
      IBTransaction1.RollbackRetaining;
  end;
end;

end.
