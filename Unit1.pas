unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Imaging.pngimage, DateUtils;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Label3: TLabel;
    lblQtdeAvioesDesativados: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    lblTotalViagensRealizadas: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    lblQtdeRetornosHoje: TLabel;
    Panel5: TPanel;
    Label1: TLabel;
    lblQtdeAvioesAtivos: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    lblQtdeAgendadas: TLabel;
    Panel7: TPanel;
    Label11: TLabel;
    lblQtdePartidasHoje: TLabel;
    Button5: TButton;
    procedure AtualizaTela(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit5, Unit4, Unit7, Unit8, Unit9;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Form9.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form1.AtualizaTela(Sender);
end;

procedure TForm1.AtualizaTela(Sender: TObject);
begin
  // Realiza a Busca
  dtmPrincipal.qyrBuscaQtdeAvioesAtivos.Active := false;
  dtmPrincipal.qyrBuscaQtdeAvioesAtivos.Active := true;
  // Atualiza a tela
  lblQtdeAvioesAtivos.Caption := dtmPrincipal.qyrBuscaQtdeAvioesAtivosTOTAL_ATIVOS.AsString;

  // Realiza a Busca
  dtmPrincipal.qryBuscaQtdeAvioesDesativados.Active := false;
  dtmPrincipal.qryBuscaQtdeAvioesDesativados.Active := true;
  // Atualiza a tela
  lblQtdeAvioesDesativados.Caption := dtmPrincipal.qryBuscaQtdeAvioesDesativadosTOTAL_DESATIVADOS.AsString;

  // Realiza a Busca
  dtmPrincipal.qyrBuscaQtdeViagensRealizadas.Active := false;
  dtmPrincipal.qyrBuscaQtdeViagensRealizadas.Active := true;
  // Atualiza a tela
  lblTotalViagensRealizadas.Caption := dtmPrincipal.qyrBuscaQtdeViagensRealizadasCOUNT.AsString;

  // Realiza a Busca
  dtmPrincipal.qryBuscaQtdeViagensAgendadas.Active := false;
  dtmPrincipal.qryBuscaQtdeViagensAgendadas.Active := true;
  // Atualiza a tela
  lblQtdeAgendadas.Caption := dtmPrincipal.qryBuscaQtdeViagensAgendadasCOUNT.AsString;

  // Realiza a Busca
  dtmPrincipal.qyrQtdePartidasHoje.Active := false;
  dtmPrincipal.qyrQtdePartidasHoje.Active := true;
  // Atualiza a tela
  lblQtdePartidasHoje.Caption := dtmPrincipal.qyrQtdePartidasHojeCOUNT.AsString;

  // Realiza a Busca
  dtmPrincipal.qryBuscaQtdeRetornoHoje.Active := false;
  dtmPrincipal.qryBuscaQtdeRetornoHoje.Active := true;
  // Atualiza a tela
  lblQtdeRetornosHoje.Caption := dtmPrincipal.qryBuscaQtdeRetornoHojeCOUNT.AsString;
end;

end.
