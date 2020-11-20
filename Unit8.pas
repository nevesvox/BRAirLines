unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, DateUtils, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    lblDataHoje: TLabel;
    listaPartidasViagensHoje: TDataSource;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    listaRetornosViagensHoje: TDataSource;
    Image1: TImage;
    listaProximasViagens: TDataSource;
    DBGrid2: TDBGrid;
    popPartidas: TPopupMenu;
    Excluir1: TMenuItem;
    popRetornos: TPopupMenu;
    Excluir2: TMenuItem;
    popProximasViagens: TPopupMenu;
    Excluir3: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure AtualizaQuerys(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excluir2Click(Sender: TObject);
    procedure Excluir3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit4, Unit1;

procedure TForm8.Excluir1Click(Sender: TObject);
var par_sql : string;
begin
  dtmPrincipal.SQL.Active := false;
  // Crial a query
  par_sql := 'DELETE FROM VOO ' +
             'WHERE ID = ' + dtmPrincipal.qryBuscaDadosViagensPartidaHojeID.AsString;
  // Atualiza o command
  dtmPrincipal.SQL.DataSet.CommandText := par_sql;
  // Executa a query
  dtmPrincipal.SQL.Execute;

  AtualizaQuerys(Sender);
end;

procedure TForm8.Excluir2Click(Sender: TObject);
var par_sql : string;
begin
  dtmPrincipal.SQL.Active := false;
  // Crial a query
  par_sql := 'DELETE FROM VOO ' +
             'WHERE ID = ' + dtmPrincipal.qryBuscaDadosViagensRetornoHojeID.AsString;
  // Atualiza o command
  dtmPrincipal.SQL.DataSet.CommandText := par_sql;
  // Executa a query
  dtmPrincipal.SQL.Execute;

  AtualizaQuerys(Sender);
end;

procedure TForm8.Excluir3Click(Sender: TObject);
var par_sql : string;
begin
  dtmPrincipal.SQL.Active := false;
  // Crial a query
  par_sql := 'DELETE FROM VOO ' +
             'WHERE ID = ' + dtmPrincipal.qryBuscaDadosProximasViagensID.AsString;
  // Atualiza o command
  dtmPrincipal.SQL.DataSet.CommandText := par_sql;
  // Executa a query
  dtmPrincipal.SQL.Execute;

  AtualizaQuerys(Sender);
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.AtualizaTela(Sender);
end;

procedure TForm8.FormShow(Sender: TObject);
begin
 lblDataHoje.Caption := DateToStr(date);

 AtualizaQuerys(Sender);
end;

procedure TForm8.AtualizaQuerys(Sender: TObject);
begin
  // Atualiza as querys
  dtmPrincipal.qryBuscaDadosViagensPartidaHoje.Active := false;
  dtmPrincipal.qryBuscaDadosViagensPartidaHoje.Active := true;

  dtmPrincipal.qryBuscaDadosViagensRetornoHoje.Active := false;
  dtmPrincipal.qryBuscaDadosViagensRetornoHoje.Active := true;

  dtmPrincipal.qryBuscaDadosProximasViagens.Active := false;
  dtmPrincipal.qryBuscaDadosProximasViagens.Active := true;
end;

end.
