unit UnitfrmEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UDN, Grids, DBGrids, Mask, DBCtrls;

type
  TCrEstados = class(TForm)
    SalvarCE: TButton;
    CancelarCE: TButton;
    DBGrid1: TDBGrid;
    EditarCE: TButton;
    ExcluirCE: TButton;
    NovoCE: TButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    procedure EditarCEClick(Sender: TObject);
    procedure NovoCEClick(Sender: TObject);
    procedure SalvarCEClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrEstados: TCrEstados;
  UmDM: TDataModule1;

implementation

{$R *.dfm}


procedure TCrEstados.EditarCEClick(Sender: TObject);
begin
  try
    if MessageBox(handle, 'Deseja editar o registro?','ATEN��O' , mb_YESNo )= mrYes then
    begin
      UmDM:=IBTableEstados.Edit;
      UmDM:=IBTableEstadosNOME.Value:=DBEdit1;
      UmDM:=IBTableEstadosIDPAISES.Value:DBEdit2;
      UmDM:=IBTableEstados.Post;
      UmDM:=IBTableEstados.Close;
      UmDM:=IBTableEstados.Open;
      ShowMessage('Registro Editado!');
    end;
  except
      ShowMessage('Erro ao executar atualiza��o!;')

  finally

  end;
end;

procedure TCrEstados.NovoCEClick(Sender: TObject);
begin
    UmDM:= TDataModule1.Create();
    UmDM.IBTableEstados.Open;
    UmDM.IBTableEstados.Append;
    NovoCE.SetFocus;
    UmDM.Destroy;
end;

procedure TCrEstados.SalvarCEClick(Sender: TObject);
begin
 try
      if MessageBox (handle, 'Deseja salvar o registro?','SALVANDO', mb_YesNo ) = mrYes then
      if UmDM.IBTableEstados.State in (dsInsert) then
    begin
        UmDM.IBTableEstados.Post;
        NovoCE.SetFocus;
    end;
    IBTransaction1.CommitRetaining;
    UmDM.IBTableEstados.Close;
    UmDM.IBTableEstados.Open;
finally
        IBTransaction1.RollbackRetaining;
end;

end.
