﻿unit UnitfrmEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Mask, DBCtrls, IBCustomDataSet,
  IBDatabase, IBTable, UDN;

type
  TCrEstados = class(TForm)
    DBGrid1: TDBGrid;
    NovoCE: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Estado: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
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
    if MessageBox(handle, 'Deseja editar o registro?','ATENÇÂO!' , mb_YESNo )= mrYes then
    begin
        UmDM.IBTableEstados.Edit;
        UmDM.IBTableEstadosNOME.Value:=DBEdit2.Text;
        UmDM.IBTableEstadosIDPAISES.Value:=DBEdit3.Text;
        UmDM.IBTableEstados.Post;
        UmDM.IBTableEstados.Close;
        UmDM.IBTableEstados.Open;
        ShowMessage('Registro Editado!');
    end;
except
      ShowMessage('Erro ao executar atualização!');
end;

procedure TCrEstados.NovoCEClick(Sender: TObject);
begin
     UmDM:= TDataModule1.Create(Nil);
    UmDM.IBTableEstados.Open;
    UmDM.IBTableEstados.Append;
    NovoCE.SetFocus;
    UmDM.Destroy;
end;

procedure TCrEstados.SalvarCEClick(Sender: TObject);
begin
    try
      if MessageBox (handle, 'Deseja salvar o registro?','SALVANDO', mb_YesNo ) = mrYes then
        if UmDM.IBTableEstados.State in [dsInsert] then
        begin
          UmDM.IBTableEstados.Post;
          NovoCE.SetFocus;
    end;
    UmDM.IBTransaction1.CommitRetaining;
    UmDM.IBTableEstados.Close;
    UmDM.IBTableEstados.Open;
finally
        UmDM.IBTransaction1.RollbackRetaining;
end;
end;

procedure TCrEstados.FormCreate(Sender: TObject);
begin
    UmDM:=TDataModule1.Create(Nil);
end;

end;

end.
