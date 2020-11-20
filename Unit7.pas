unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons;

type
  TForm7 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    maskValorComissario: TMaskEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm7.BitBtn1Click(Sender: TObject);
var par_sql : string;
var valor_formatado : string;
begin
  // Formata o valor inserido
  valor_formatado := StringReplace(maskValorComissario.Text, '.', '', [rfReplaceAll]);
  valor_formatado := StringReplace(valor_formatado, ',', '.', [rfReplaceAll]);

  dtmPrincipal.SQL.Active := false;
  // Cria a query
  par_sql := 'UPDATE CONFIGURACOES ' +
             'SET VALOR_COMISSARIO = ' + valor_formatado;
  // Atualiza o comando
  dtmPrincipal.SQL.DataSet.CommandText := par_sql;
  // Executa a Sql
  dtmPrincipal.SQL.Execute;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  // Realiza a Busca
  dtmPrincipal.qryBuscaConfiguracoes.Active := false;
  dtmPrincipal.qryBuscaConfiguracoes.Active := true;

  // Atualiza a tela
  maskValorComissario.Text := Formatfloat('##,##0.00',dtmPrincipal.qryBuscaConfiguracoesVALOR_COMISSARIO.AsFloat);
end;

end.
