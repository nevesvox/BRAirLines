unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, frxClass, frxDBSet;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    DBGrid2: TDBGrid;
    listaViagensRealizadas: TDataSource;
    Button1: TButton;
    Image2: TImage;
    BalloonHint1: TBalloonHint;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm9.Button1Click(Sender: TObject);
begin
  // Prepara o relatório
  frxReport1.PrepareReport();
  frxReport1.ShowPreparedReport;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  // Atualiza a query
  dtmPrincipal.qryBuscaDadosViagensRealizadas.Active := false;
  dtmPrincipal.qryBuscaDadosViagensRealizadas.Active := true;
end;

end.
