unit UnitfrmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Mask, DBCtrls, IBCustomDataSet,
  IBDatabase, IBTable, UDN;

type
  TCrClientes = class(TForm)
    CUCancelar: TButton;
    Button2: TButton;
    CUSalvar: TButton;
    DBGrid1: TDBGrid;
    CUExcluir: TButton;
    CUEditar: TButton;
    CUNovo: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure CUNovoClick(Sender: TObject);
    procedure CUEditarClick(Sender: TObject);
    procedure CUSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrClientes: TCrClientes;
  UmDM: TDataModule1;

implementation

{$R *.dfm}

procedure TCrClientes.CUEditarClick(Sender: TObject);
begin
try
    if MessageBox(handle, 'Deseja editar o registro?','ATEN��O!' , mb_YESNo )= mrYes then
    begin
        UmDM.IBTableUsuario.Edit;
        UmDM.IBTableUsuario
        UmDM.IBTableUsuarioNOME.Value:=DBEdit2.Text;
        UmDM.IBTableUsuarioUSERNAME.Value:=DBEdit3.Text;
        UmDM.IBTableUsuarioPASSWORD.Value:=DBEdit4.Text;
        UmDM.IBTableUsuario.Post;
        UmDM.IBTableUsuario.Close;
        UmDM.IBTableUsuario.Open;
        ShowMessage('Registro Editado!');
    end;
except
      ShowMessage('Erro ao executar atualiza��o!');
end;
end;

procedure TCrClientes.CUNovoClick(Sender: TObject);
begin
    UmDM:= TDataModule1.Create(Nil);
    UmDM.IBTableUsuario.Open;
    UmDM.IBTableUsuario.Append;
    CUNovo.SetFocus;
    UmDM.Destroy;
end;

procedure TCrClientes.CUSalvarClick(Sender: TObject);
begin

  try
      if UmDM.IBTableUsuario.State in [dsinsert] then
      begin
          UmDM.IBTableUsuario.Post;
          CUSalvar.SetFocus;
      end;
      UmDM.IBTransaction1.CommitRetaining;
      UmDM.IBTableUsuario.Close;
      UmDM.IBTableUsuario.Open;
  finally
      UmDM.IBTransaction1.RollbackRetaining;
  end;
end;

procedure TCrClientes.FormCreate(Sender: TObject);
begin
    UmDM:=TDataModule1.Create(Nil);
end;

end.
