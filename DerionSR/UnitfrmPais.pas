unit UnitfrmPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBDatabase, IBCustomDataSet, IBTable, Mask, DBCtrls,
  Grids, DBGrids, UDN;

type
  TCrPaises = class(TForm)
    SalvarCP: TButton;
    CancelarCP: TButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    EditarCP: TButton;
    ExcluirCP: TButton;
    NovoCP: TButton;
    procedure NovoCPClick(Sender: TObject);
    procedure SalvarCPClick(Sender: TObject);
    procedure EditarCPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrPaises: TCrPaises;
  UmDM: TDataModule1;

implementation

{$R *.dfm}


procedure TCrPaises.EditarCPClick(Sender: TObject);
begin
try
    if MessageBox(handle, 'Deseja editar o registro?','ATEN��O' , mb_YESNo )= mrYes then
    begin
      UmDM.IBTablePaises.Edit;
      UmDM.IBTablePaisesNOME.Value:=DBEdit2.Text;
      UmDM.IBTablePaisesSIGLA.Value:=DBEdit3.Text;
      UmDM.IBTablePaises.Post;
      UmDM.IBTablePaises.Close;
      UmDM.IBTablePaises.Open;
      ShowMessage('Registro Editado!');
    end;
  except
      ShowMessage('Erro ao executar atualiza��o!');
end;
end;

procedure TCrPaises.NovoCPClick(Sender: TObject);
begin
     UmDM:= TDataModule1.Create(Nil);
    UmDM.IBTablePaises.Open;
    UmDM.IBTablePaises.Append;
    NovoCP.SetFocus;
    UmDM.Destroy;
end;

procedure TCrPaises.SalvarCPClick(Sender: TObject);
begin
    try
      if MessageBox (handle, 'Deseja salvar o registro?','SALVANDO', mb_YesNo ) = mrYes then
        if UmDM.IBTablePaises.State in [dsInsert] then
        begin
          UmDM.IBTablePaises.Post;
          NovoCP.SetFocus;
    end;
    UmDM.IBTransaction1.CommitRetaining;
    UmDM.IBTablePaises.Close;
    UmDM.IBTablePaises.Open;
finally
        UmDM.IBTransaction1.RollbackRetaining;
end;
end;
end.
