unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, StrUtils, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.ExtDlgs;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    grpManutencao: TGroupBox;
    Label1: TLabel;
    edtDescricao: TEdit;
    Label2: TLabel;
    edtQtdPassageiros: TEdit;
    checkDesativar: TCheckBox;
    PopupMenu1: TPopupMenu;
    mnuAlterar: TMenuItem;
    edtID: TEdit;
    Label3: TLabel;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    edtValorPorQuilometro: TEdit;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    BalloonHint1: TBalloonHint;
    Image3: TImage;
    Button1: TButton;
    Button2: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Label5: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure mnuAlterarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
     sql : string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit4, Unit1;

procedure TForm3.btnIncluirClick(Sender: TObject);
begin
  if edtDescricao.Text = '' then
  begin
    ShowMessage('Preencha o campo com a Descri��o!');
    edtDescricao.SetFocus;
    exit;
  end;

  if edtQtdPassageiros.Text = '' then
  begin
    ShowMessage('Preencha o campo com a Quantdade de Passageiros!');
    edtQtdPassageiros.SetFocus;
    exit;
  end;

  if edtValorPorQuilometro.Text = '' then
  begin
    ShowMessage('Preencha o campo com o Velor p/ KM!');
    edtValorPorQuilometro.SetFocus;
    exit;
  end;

  if grpManutencao.Tag = 2 then
  begin
    dtmPrincipal.SQL.Active := false;
    // Monta o SQL
    sql := 'UPDATE FROTA ' +
           'SET DESCRICAO = '        + QuotedStr(edtDescricao.Text) + ', ' +
               'QTDE_PASSAGEIROS = ' + edtQtdPassageiros.Text +  ', ' +
               'ATIVO = '            + IfThen(checkDesativar.Checked, QuotedStr('DESATIVADO'), QuotedStr('ATIVO')) +  ', ' +
               'VALOR_KM = '         + StringReplace(edtValorPorQuilometro.Text, ',', '.', [rfReplaceAll]) + ' ' +
               IfThen(OpenPictureDialog1.FileName <> '', ', IMAGEM = (:par_imagem) ', ', IMAGEM = null ') +
           'WHERE ID = ' + edtID.Text;

    // Atualiza o Comand
    dtmPrincipal.SQL.DataSet.CommandText := sql;

    // Verifica se a imagem foi selecionada
    if OpenPictureDialog1.FileName <> '' then
    begin
      dtmPrincipal.SQL.DataSet.ParamByName('par_imagem').LoadFromFile(OpenPictureDialog1.FileName, ftBlob);
    end;

    // Executa a Sql
    dtmPrincipal.SQL.Execute;
             
  end;

  // Verifica se est� no modo Inclus�o
  if grpManutencao.Tag = 1 then
  begin
    dtmPrincipal.SQL.Active := false;
    // Monta o SQL
    sql := 'INSERT INTO FROTA (DESCRICAO, QTDE_PASSAGEIROS, ATIVO, VALOR_KM '+ IfThen(OpenPictureDialog1.FileName <> '', ', IMAGEM ', ' ')+ ') ' +
           'VALUES (' + QuotedStr(edtDescricao.Text) + ', ' +
                        edtQtdPassageiros.Text + ', ' +
                        IfThen(checkDesativar.Checked, QuotedStr('DESATIVADO'), QuotedStr('ATIVO')) + ', ' +
                        StringReplace(edtValorPorQuilometro.Text, ',', '.', [rfReplaceAll]) + ' ' +
                        IfThen(OpenPictureDialog1.FileName <> '', ', :par_imagem ', ' ') + ' )';
    // Atualiza o Comand
    dtmPrincipal.SQL.DataSet.CommandText := sql;

    // Verifica se a imagem foi selecionada
    if OpenPictureDialog1.FileName <> '' then
    begin
      dtmPrincipal.SQL.DataSet.ParamByName('par_imagem').LoadFromFile(OpenPictureDialog1.FileName, ftBlob);
    end;

    // Executa a Sql
    dtmPrincipal.SQL.Execute;

  end;

  // Atualiza os campos
  btnCancelar.OnClick(Sender);

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  // Limpa a imagem
  Image1.Picture := nil;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if (OpenPictureDialog1.Execute = false) then
    exit;

  Self.Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.AtualizaTela(Sender);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  edtID.Clear;
  edtDescricao.Clear;
  edtQtdPassageiros.Clear;
  edtValorPorQuilometro.Clear;
  // Limpa a imagem
  Image1.Picture := nil;

  // Atualiza o Grid
  dtmPrincipal.qryBuscaFrota.Active := false;
  dtmPrincipal.qryBuscaFrota.Active := true;

end;

procedure TForm3.btnCancelarClick(Sender: TObject);
begin
  // Limpa os campos
  edtDescricao.Clear;
  edtQtdPassageiros.Clear;
  edtID.Clear;
  edtValorPorQuilometro.Clear;
  checkDesativar.Checked := false;

  // Atualiza o Grid
  dtmPrincipal.qryBuscaFrota.Active := false;
  dtmPrincipal.qryBuscaFrota.Active := true;

  // Limpa a imagem
  Image1.Picture := nil;

  // Atualiza o group box
  grpManutencao.Caption := 'Inclus�o';
  grpManutencao.Tag     := 1;
  btnIncluir.Caption    := 'Inserir';

  edtDescricao.SetFocus;
end;

procedure TForm3.mnuAlterarClick(Sender: TObject);
begin
  // Atualiza o group box
  grpManutencao.Caption := 'Altera��o';
  grpManutencao.Tag     := 2;
  btnIncluir.Caption    := 'Atualizar';
  // Atualiza os edit
  edtID.Text                 := dtmPrincipal.qryBuscaFrotaID.AsString;
  edtDescricao.Text          := dtmPrincipal.qryBuscaFrotaDESCRICAO.AsString;
  edtQtdPassageiros.Text     := dtmPrincipal.qryBuscaFrotaQTDE_PASSAGEIROS.AsString;
  edtValorPorQuilometro.Text := dtmPrincipal.qryBuscaFrotaVALOR_KM.AsString;

  // Verifica se possui imagem
  if dtmPrincipal.qryBuscaFrotaIMAGEM.AsString <> '' then
  begin
    TBlobField(dtmPrincipal.qryBuscaFrotaIMAGEM).SaveToFile('C:\BRAIRLINES\PICTURE.JPG');
    Image1.Picture.LoadFromFile('C:\BRAIRLINES\PICTURE.JPG');
  end
  else
  begin
    // Limpa a imagem
    Image1.Picture := nil;
  end;

  // Verifica se o registro est� ativo
  if dtmPrincipal.qryBuscaFrotaATIVO.AsString = 'ATIVO' then
  begin
    checkDesativar.Checked := false;
  end
  else
  begin
    checkDesativar.Checked := True;
  end;
  
end;

end.





