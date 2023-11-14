unit UnitfrmPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBDatabase, IBCustomDataSet, IBTable, Mask, DBCtrls;

type
  TCrPaises = class(TForm)
    SalvarCP: TButton;
    CancelarCP: TButton;
    IBDatabase1: TIBDatabase;
    IBTable1: TIBTable;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    IBTable1ID: TIntegerField;
    IBTable1NOME: TIBStringField;
    IBTable1SIGLA: TIBStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CrPaises: TCrPaises;

implementation

{$R *.dfm}

procedure TCrPaises.Label3Click(Sender: TObject);
begin
try
    if MessageBox (handle, 'Deseja salvar o registro?','SALVANDO', mb_YesNo ) = mrYes then
    if IBTable1.State in (dsInsert) then
    begin
        IBTable1.Post;
        Tbtnnovo.SetFocus;
    end;
    IBTransaction1.CommitRetaining;
    IBTable1.Close;
    IBTable1.Open;
finally
        IBTransaction1.RollbackRetaining;
end;
end;

end.
