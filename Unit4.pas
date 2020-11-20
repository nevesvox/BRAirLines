unit Unit4;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Datasnap.DBClient, SimpleDS;

type
  TdtmPrincipal = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SimpleDataSet1: TSimpleDataSet;
    DataSource1: TDataSource;
    SQL: TSimpleDataSet;
    SimpleDataSet1ID: TIntegerField;
    SimpleDataSet1DESCRICAO: TStringField;
    SimpleDataSet1QTDE_PASSAGEIROS: TIntegerField;
    SimpleDataSet1ATIVO: TStringField;
    qryBuscaCidadesOrigem: TSimpleDataSet;
    qryBuscaCidadesOrigemID: TIntegerField;
    qryBuscaCidadesOrigemNOMECIDADE: TStringField;
    qryBuscaCidadesOrigemNOME: TStringField;
    qryBuscaCidadesOrigemCIDADE: TStringField;
    qryBuscaCidadesOrigemPAIS: TStringField;
    qryBuscaCidadesOrigemLAT: TStringField;
    qryBuscaCidadesOrigemLON: TStringField;
    qryBuscaCidadesOrigemELEVACAO: TStringField;
    qryBuscaCidadesDestino: TSimpleDataSet;
    qryBuscaCidadesDestinoID: TIntegerField;
    qryBuscaCidadesDestinoNOMECIDADE: TStringField;
    qryBuscaCidadesDestinoNOME: TStringField;
    qryBuscaCidadesDestinoCIDADE: TStringField;
    qryBuscaCidadesDestinoPAIS: TStringField;
    qryBuscaCidadesDestinoLAT: TStringField;
    qryBuscaCidadesDestinoLON: TStringField;
    qryBuscaCidadesDestinoELEVACAO: TStringField;
    listaFrota: TDataSource;
    qryBuscaAvioesAtivos: TSimpleDataSet;
    qryBuscaFrota: TSimpleDataSet;
    qryBuscaFrotaID: TIntegerField;
    qryBuscaFrotaDESCRICAO: TStringField;
    qryBuscaFrotaQTDE_PASSAGEIROS: TIntegerField;
    qryBuscaFrotaATIVO: TStringField;
    qryBuscaFrotaVALOR_KM: TFMTBCDField;
    qryBuscaFrotaIMAGEM: TBlobField;
    qryBuscaAvioesAtivosID: TIntegerField;
    qryBuscaAvioesAtivosDESCRICAO: TStringField;
    qryBuscaAvioesAtivosQTDE_PASSAGEIROS: TIntegerField;
    qryBuscaAvioesAtivosATIVO: TStringField;
    qryBuscaAvioesAtivosVALOR_KM: TFMTBCDField;
    qryBuscaAvioesAtivosIMAGEM: TBlobField;
    qrySalvaNovoVoo: TSimpleDataSet;
    qryBuscaDadosVoo: TSimpleDataSet;
    qryBuscaDadosVooID: TIntegerField;
    qryBuscaDadosVooDISTANCIA_VIAGEM: TFMTBCDField;
    qryBuscaDadosVooNOME_AVIAO: TStringField;
    qryBuscaDadosVooQTDE_PASSAGEIROS: TIntegerField;
    qryBuscaDadosVooNOME_ORIGEM: TStringField;
    qryBuscaDadosVooLAT_ORIGEM: TStringField;
    qryBuscaDadosVooLON_ORIGEM: TStringField;
    qryBuscaDadosVooELEV_ORIGEM: TStringField;
    qryBuscaDadosVooTZ_ORIGEM: TStringField;
    qryBuscaDadosVooNOME_DESTINO: TStringField;
    qryBuscaDadosVooLAT_DESTINO: TStringField;
    qryBuscaDadosVooLON_DESTINO: TStringField;
    qryBuscaDadosVooELEV_DESTINO: TStringField;
    qryBuscaDadosVooTZ_DESTINO: TStringField;
    qryBuscaDadosVooQTD_COMISSARIOS: TIntegerField;
    qryBuscaDadosVooVALOR_TOTAL: TFMTBCDField;
    qryBuscaDadosVooDATA_PARTIDA: TDateField;
    qryBuscaDadosVooDATA_RETORNO: TDateField;
    qryBuscaDadosVooVALOR_COMISSARIO: TFMTBCDField;
    qryBuscaDadosVooTOTAL_COMISSARIOS: TFMTBCDField;
    qryBuscaDadosVooVALOR_TOTAL_VIAGEM: TFMTBCDField;
    qyrBuscaQtdeAvioesAtivos: TSimpleDataSet;
    qryBuscaQtdeAvioesDesativados: TSimpleDataSet;
    qyrBuscaQtdeAvioesAtivosTOTAL_ATIVOS: TIntegerField;
    qryBuscaQtdeAvioesDesativadosTOTAL_DESATIVADOS: TIntegerField;
    qyrBuscaQtdeViagensRealizadas: TSimpleDataSet;
    qyrBuscaQtdeViagensRealizadasCOUNT: TIntegerField;
    qryBuscaQtdeViagensAgendadas: TSimpleDataSet;
    qryBuscaQtdeViagensAgendadasCOUNT: TIntegerField;
    qyrQtdePartidasHoje: TSimpleDataSet;
    qryBuscaQtdeRetornoHoje: TSimpleDataSet;
    qyrQtdePartidasHojeCOUNT: TIntegerField;
    qryBuscaQtdeRetornoHojeCOUNT: TIntegerField;
    qryBuscaConfiguracoes: TSimpleDataSet;
    qryBuscaConfiguracoesVALOR_COMISSARIO: TFMTBCDField;
    qryBuscaDadosViagensPartidaHoje: TSimpleDataSet;
    qryBuscaDadosViagensPartidaHojeID: TIntegerField;
    qryBuscaDadosViagensPartidaHojeDISTANCIA: TFMTBCDField;
    qryBuscaDadosViagensPartidaHojeQTD_COMISSARIOS: TIntegerField;
    qryBuscaDadosViagensPartidaHojeDATA_PARTIDA: TDateField;
    qryBuscaDadosViagensPartidaHojeDATA_RETORNO: TDateField;
    qryBuscaDadosViagensPartidaHojeAERONAVE: TStringField;
    qryBuscaDadosViagensPartidaHojeQTDE_PASSAGEIROS: TIntegerField;
    qryBuscaDadosViagensPartidaHojeAEROPORTO_ORIGEM: TStringField;
    qryBuscaDadosViagensPartidaHojeAEROPORTO_DESTINO: TStringField;
    qryBuscaDadosViagensPartidaHojeVALOR_TOTAL: TFMTBCDField;
    qryBuscaDadosViagensRetornoHoje: TSimpleDataSet;
    qryBuscaDadosViagensRetornoHojeID: TIntegerField;
    qryBuscaDadosViagensRetornoHojeDISTANCIA: TFMTBCDField;
    qryBuscaDadosViagensRetornoHojeQTD_COMISSARIOS: TIntegerField;
    qryBuscaDadosViagensRetornoHojeDATA_PARTIDA: TDateField;
    qryBuscaDadosViagensRetornoHojeDATA_RETORNO: TDateField;
    qryBuscaDadosViagensRetornoHojeAERONAVE: TStringField;
    qryBuscaDadosViagensRetornoHojeQTDE_PASSAGEIROS: TIntegerField;
    qryBuscaDadosViagensRetornoHojeAEROPORTO_ORIGEM: TStringField;
    qryBuscaDadosViagensRetornoHojeAEROPORTO_DESTINO: TStringField;
    qryBuscaDadosViagensRetornoHojeVALOR_TOTAL: TFMTBCDField;
    qryBuscaDadosProximasViagens: TSimpleDataSet;
    qryBuscaDadosProximasViagensID: TIntegerField;
    qryBuscaDadosProximasViagensDISTANCIA: TFMTBCDField;
    qryBuscaDadosProximasViagensQTD_COMISSARIOS: TIntegerField;
    qryBuscaDadosProximasViagensDATA_PARTIDA: TDateField;
    qryBuscaDadosProximasViagensDATA_RETORNO: TDateField;
    qryBuscaDadosProximasViagensAERONAVE: TStringField;
    qryBuscaDadosProximasViagensQTDE_PASSAGEIROS: TIntegerField;
    qryBuscaDadosProximasViagensAEROPORTO_ORIGEM: TStringField;
    qryBuscaDadosProximasViagensAEROPORTO_DESTINO: TStringField;
    qryBuscaDadosProximasViagensVALOR_TOTAL: TFMTBCDField;
    qryBuscaDadosViagensRealizadas: TSimpleDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit5;

{$R *.dfm}

end.
