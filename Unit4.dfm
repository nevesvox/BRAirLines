object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 793
  Width = 1200
  object SQLConnection1: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=C:\Users\neves\Desktop\BRAirLines\DBAIRLINES\BRAIRLINES' +
        '.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 64
    Top = 32
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from FROTA'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 520
    Top = 24
    object SimpleDataSet1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SimpleDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object SimpleDataSet1QTDE_PASSAGEIROS: TIntegerField
      FieldName = 'QTDE_PASSAGEIROS'
    end
    object SimpleDataSet1ATIVO: TStringField
      FieldName = 'ATIVO'
    end
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet1
    Left = 624
    Top = 24
  end
  object SQL: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 97
  end
  object qryBuscaCidadesOrigem: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT  ID, (CIDADE ||'#39' / '#39' ||NOME) AS NOMECIDADE, NOME, CIDADE,' +
      ' PAIS, LAT, LON, ELEVACAO'#13#10'FROM AEROPORTOS'#13#10'WHERE PAIS = '#39'BR'#39#13#10'O' +
      'RDER BY NOMECIDADE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 248
    object qryBuscaCidadesOrigemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaCidadesOrigemNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 513
    end
    object qryBuscaCidadesOrigemNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryBuscaCidadesOrigemCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 255
    end
    object qryBuscaCidadesOrigemPAIS: TStringField
      FieldName = 'PAIS'
      Size = 255
    end
    object qryBuscaCidadesOrigemLAT: TStringField
      FieldName = 'LAT'
      Size = 255
    end
    object qryBuscaCidadesOrigemLON: TStringField
      FieldName = 'LON'
      Size = 255
    end
    object qryBuscaCidadesOrigemELEVACAO: TStringField
      FieldName = 'ELEVACAO'
      Size = 255
    end
  end
  object qryBuscaCidadesDestino: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT  ID, (CIDADE ||'#39' / '#39' ||NOME) AS NOMECIDADE, NOME, CIDADE,' +
      ' PAIS, LAT, LON, ELEVACAO'#13#10'FROM AEROPORTOS'#13#10'WHERE PAIS = '#39'BR'#39#13#10'O' +
      'RDER BY NOMECIDADE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 200
    Top = 248
    object qryBuscaCidadesDestinoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaCidadesDestinoNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 513
    end
    object qryBuscaCidadesDestinoNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object qryBuscaCidadesDestinoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 255
    end
    object qryBuscaCidadesDestinoPAIS: TStringField
      FieldName = 'PAIS'
      Size = 255
    end
    object qryBuscaCidadesDestinoLAT: TStringField
      FieldName = 'LAT'
      Size = 255
    end
    object qryBuscaCidadesDestinoLON: TStringField
      FieldName = 'LON'
      Size = 255
    end
    object qryBuscaCidadesDestinoELEVACAO: TStringField
      FieldName = 'ELEVACAO'
      Size = 255
    end
  end
  object listaFrota: TDataSource
    DataSet = qryBuscaFrota
    Left = 624
    Top = 88
  end
  object qryBuscaAvioesAtivos: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from FROTA'#13#10'where ATIVO = '#39'ATIVO'#39
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 352
    Top = 248
    object qryBuscaAvioesAtivosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaAvioesAtivosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryBuscaAvioesAtivosQTDE_PASSAGEIROS: TIntegerField
      FieldName = 'QTDE_PASSAGEIROS'
    end
    object qryBuscaAvioesAtivosATIVO: TStringField
      FieldName = 'ATIVO'
    end
    object qryBuscaAvioesAtivosVALOR_KM: TFMTBCDField
      FieldName = 'VALOR_KM'
      Precision = 18
      Size = 2
    end
    object qryBuscaAvioesAtivosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Size = 1
    end
  end
  object qryBuscaFrota: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from FROTA'#13#10'order by ID'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 520
    Top = 88
    object qryBuscaFrotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaFrotaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryBuscaFrotaQTDE_PASSAGEIROS: TIntegerField
      FieldName = 'QTDE_PASSAGEIROS'
    end
    object qryBuscaFrotaATIVO: TStringField
      FieldName = 'ATIVO'
    end
    object qryBuscaFrotaVALOR_KM: TFMTBCDField
      FieldName = 'VALOR_KM'
      Precision = 18
      Size = 2
    end
    object qryBuscaFrotaIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Size = 1
    end
  end
  object qrySalvaNovoVoo: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'INSERT INTO VOO (AERONAVE_ID, DISTANCIA, ORIGEM_ID, DESTINO_ID, ' +
      'QTD_COMISSARIOS, VALOR_TOTAL, DATA_PARTIDA, DATA_RETORNO)'#13#10'VALUE' +
      'S (:par_Aeronave, :par_Distancia, :par_Origem, :par_Destino, :pa' +
      'r_Comissarios, :par_ValorTotal, :par_DataPartida, :par_DataRetor' +
      'no)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'par_Aeronave'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'par_Distancia'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'par_Origem'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'par_Destino'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'par_Comissarios'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'par_ValorTotal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'par_DataPartida'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'par_DataRetorno'
        ParamType = ptInput
      end>
    Params = <>
    Left = 488
    Top = 248
  end
  object qryBuscaDadosVoo: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT       VOO.ID,'#13#10'                   DISTANCIA AS DISTANCIA_' +
      'VIAGEM,'#13#10#9'   FROTA.DESCRICAO AS NOME_AVIAO,'#13#10#9'   FROTA.QTDE_PASS' +
      'AGEIROS AS QTDE_PASSAGEIROS,'#13#10#9'   (ORIGEM.CIDADE || '#39' / '#39' ||ORIG' +
      'EM.NOME) AS NOME_ORIGEM,'#13#10#9'   ORIGEM.LAT AS LAT_ORIGEM,'#13#10#9'   ORI' +
      'GEM.LON AS LON_ORIGEM,'#13#10#9'   ORIGEM.ELEVACAO AS ELEV_ORIGEM,'#13#10#9'  ' +
      ' ORIGEM.TZ AS TZ_ORIGEM,'#13#10#9'   (DESTINO.CIDADE || '#39' / '#39' ||DESTINO' +
      '.NOME) AS NOME_DESTINO,'#13#10#9'   DESTINO.LAT AS LAT_DESTINO,'#13#10#9'   DE' +
      'STINO.LON AS LON_DESTINO,'#13#10#9'   DESTINO.ELEVACAO AS ELEV_DESTINO,' +
      #13#10#9'   DESTINO.TZ AS TZ_DESTINO,'#13#10#9'   QTD_COMISSARIOS,'#13#10#9'   VALOR' +
      '_TOTAL,'#13#10#9'   DATA_PARTIDA,'#13#10#9'   DATA_RETORNO,'#13#10'                 ' +
      '  CONFIGURACOES.VALOR_COMISSARIO,'#13#10'                  (CONFIGURAC' +
      'OES.VALOR_COMISSARIO * QTD_COMISSARIOS) AS TOTAL_COMISSARIOS,'#13#10' ' +
      '                 (VALOR_TOTAL + (CONFIGURACOES.VALOR_COMISSARIO ' +
      '* QTD_COMISSARIOS)) AS VALOR_TOTAL_VIAGEM'#13#10'FROM VOO'#13#10'JOIN FROTA ' +
      'ON FROTA.ID = VOO.AERONAVE_ID'#13#10'JOIN AEROPORTOS ORIGEM ON ORIGEM.' +
      'ID = VOO.ORIGEM_ID'#13#10'JOIN AEROPORTOS DESTINO ON DESTINO.ID = VOO.' +
      'DESTINO_ID'#13#10'CROSS JOIN CONFIGURACOES'#13#10'WHERE VOO.ID = (SELECT max' +
      '(ID) AS ID'#13#10'                               FROM VOO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 56
    Top = 368
    object qryBuscaDadosVooID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaDadosVooDISTANCIA_VIAGEM: TFMTBCDField
      FieldName = 'DISTANCIA_VIAGEM'
      Precision = 18
      Size = 2
    end
    object qryBuscaDadosVooNOME_AVIAO: TStringField
      FieldName = 'NOME_AVIAO'
      Size = 100
    end
    object qryBuscaDadosVooQTDE_PASSAGEIROS: TIntegerField
      FieldName = 'QTDE_PASSAGEIROS'
    end
    object qryBuscaDadosVooNOME_ORIGEM: TStringField
      FieldName = 'NOME_ORIGEM'
      Size = 513
    end
    object qryBuscaDadosVooLAT_ORIGEM: TStringField
      FieldName = 'LAT_ORIGEM'
      Size = 255
    end
    object qryBuscaDadosVooLON_ORIGEM: TStringField
      FieldName = 'LON_ORIGEM'
      Size = 255
    end
    object qryBuscaDadosVooELEV_ORIGEM: TStringField
      FieldName = 'ELEV_ORIGEM'
      Size = 255
    end
    object qryBuscaDadosVooTZ_ORIGEM: TStringField
      FieldName = 'TZ_ORIGEM'
      Size = 255
    end
    object qryBuscaDadosVooNOME_DESTINO: TStringField
      FieldName = 'NOME_DESTINO'
      Size = 513
    end
    object qryBuscaDadosVooLAT_DESTINO: TStringField
      FieldName = 'LAT_DESTINO'
      Size = 255
    end
    object qryBuscaDadosVooLON_DESTINO: TStringField
      FieldName = 'LON_DESTINO'
      Size = 255
    end
    object qryBuscaDadosVooELEV_DESTINO: TStringField
      FieldName = 'ELEV_DESTINO'
      Size = 255
    end
    object qryBuscaDadosVooTZ_DESTINO: TStringField
      FieldName = 'TZ_DESTINO'
      Size = 255
    end
    object qryBuscaDadosVooQTD_COMISSARIOS: TIntegerField
      FieldName = 'QTD_COMISSARIOS'
    end
    object qryBuscaDadosVooVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryBuscaDadosVooDATA_PARTIDA: TDateField
      FieldName = 'DATA_PARTIDA'
    end
    object qryBuscaDadosVooDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object qryBuscaDadosVooVALOR_COMISSARIO: TFMTBCDField
      FieldName = 'VALOR_COMISSARIO'
      Precision = 18
      Size = 2
    end
    object qryBuscaDadosVooTOTAL_COMISSARIOS: TFMTBCDField
      FieldName = 'TOTAL_COMISSARIOS'
      Precision = 18
      Size = 2
    end
    object qryBuscaDadosVooVALOR_TOTAL_VIAGEM: TFMTBCDField
      FieldName = 'VALOR_TOTAL_VIAGEM'
      Precision = 18
      Size = 2
    end
  end
  object qyrBuscaQtdeAvioesAtivos: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 
      'SELECT COUNT(FROTA.ID) AS TOTAL_ATIVOS '#13#10'FROM FROTA'#13#10'WHERE ATIVO' +
      ' = '#39'ATIVO'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 1016
    Top = 392
    object qyrBuscaQtdeAvioesAtivosTOTAL_ATIVOS: TIntegerField
      FieldName = 'TOTAL_ATIVOS'
      Required = True
    end
  end
  object qryBuscaQtdeAvioesDesativados: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 
      'SELECT COUNT(FROTA.ID) AS TOTAL_DESATIVADOS'#13#10'FROM FROTA'#13#10'WHERE A' +
      'TIVO = '#39'DESATIVADO'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 1016
    Top = 456
    object qryBuscaQtdeAvioesDesativadosTOTAL_DESATIVADOS: TIntegerField
      FieldName = 'TOTAL_DESATIVADOS'
      Required = True
    end
  end
  object qyrBuscaQtdeViagensRealizadas: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT COUNT(ID) '#13#10'FROM VOO'#13#10'WHERE DATA_RETORNO < CAST('#39'NOW'#39' as ' +
      'DATE)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 846
    Top = 392
    object qyrBuscaQtdeViagensRealizadasCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
  object qryBuscaQtdeViagensAgendadas: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT COUNT(ID) '#13#10'FROM VOO'#13#10'WHERE DATA_RETORNO > CAST('#39'NOW'#39' as ' +
      'DATE)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 846
    Top = 456
    object qryBuscaQtdeViagensAgendadasCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
  object qyrQtdePartidasHoje: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT COUNT(ID) '#13#10'FROM VOO'#13#10'WHERE DATA_PARTIDA = CAST('#39'NOW'#39' as ' +
      'DATE)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 688
    Top = 392
    object qyrQtdePartidasHojeCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
  object qryBuscaQtdeRetornoHoje: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT COUNT(ID) '#13#10'FROM VOO'#13#10'WHERE DATA_RETORNO = CAST('#39'NOW'#39' as ' +
      'DATE)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 688
    Top = 456
    object qryBuscaQtdeRetornoHojeCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
  object qryBuscaConfiguracoes: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 'SELECT *'#13#10'FROM CONFIGURACOES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 280
    Top = 368
    object qryBuscaConfiguracoesVALOR_COMISSARIO: TFMTBCDField
      FieldName = 'VALOR_COMISSARIO'
      Precision = 18
      Size = 2
    end
  end
  object qryBuscaDadosViagensPartidaHoje: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 
      'SELECT VOO.ID,'#13#10#9'   VOO.DISTANCIA,'#13#10#9'   VOO.QTD_COMISSARIOS,'#13#10#9' ' +
      '  VOO.DATA_PARTIDA,'#13#10#9'   VOO.DATA_RETORNO,'#13#10#9'   FROTA.DESCRICAO ' +
      'AS AERONAVE,'#13#10#9'   FROTA.QTDE_PASSAGEIROS,'#13#10#9'   (ORIGEM.CIDADE ||' +
      ' '#39' / '#39' ||ORIGEM.NOME) AS AEROPORTO_ORIGEM,'#13#10#9'   (DESTINO.CIDADE ' +
      '|| '#39' / '#39' ||DESTINO.NOME) AS AEROPORTO_DESTINO,'#13#10#9'   VOO.VALOR_TO' +
      'TAL'#13#10'FROM VOO'#13#10'JOIN FROTA ON FROTA.ID = VOO.AERONAVE_ID '#13#10'JOIN A' +
      'EROPORTOS ORIGEM ON ORIGEM.ID = VOO.ORIGEM_ID '#13#10'JOIN AEROPORTOS ' +
      'DESTINO ON DESTINO.ID = VOO.DESTINO_ID'#13#10'WHERE (VOO.DATA_PARTIDA ' +
      '= CAST('#39'NOW'#39' as DATE))'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 77
    Top = 528
    object qryBuscaDadosViagensPartidaHojeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaDadosViagensPartidaHojeDISTANCIA: TFMTBCDField
      FieldName = 'DISTANCIA'
      Precision = 18
      Size = 2
    end
    object qryBuscaDadosViagensPartidaHojeQTD_COMISSARIOS: TIntegerField
      FieldName = 'QTD_COMISSARIOS'
    end
    object qryBuscaDadosViagensPartidaHojeDATA_PARTIDA: TDateField
      FieldName = 'DATA_PARTIDA'
    end
    object qryBuscaDadosViagensPartidaHojeDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object qryBuscaDadosViagensPartidaHojeAERONAVE: TStringField
      FieldName = 'AERONAVE'
      Size = 100
    end
    object qryBuscaDadosViagensPartidaHojeQTDE_PASSAGEIROS: TIntegerField
      FieldName = 'QTDE_PASSAGEIROS'
    end
    object qryBuscaDadosViagensPartidaHojeAEROPORTO_ORIGEM: TStringField
      FieldName = 'AEROPORTO_ORIGEM'
      Size = 513
    end
    object qryBuscaDadosViagensPartidaHojeAEROPORTO_DESTINO: TStringField
      FieldName = 'AEROPORTO_DESTINO'
      Size = 513
    end
    object qryBuscaDadosViagensPartidaHojeVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object qryBuscaDadosViagensRetornoHoje: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 
      'SELECT VOO.ID,'#13#10#9'   VOO.DISTANCIA,'#13#10#9'   VOO.QTD_COMISSARIOS,'#13#10#9' ' +
      '  VOO.DATA_PARTIDA,'#13#10#9'   VOO.DATA_RETORNO,'#13#10#9'   FROTA.DESCRICAO ' +
      'AS AERONAVE,'#13#10#9'   FROTA.QTDE_PASSAGEIROS,'#13#10#9'   (ORIGEM.CIDADE ||' +
      ' '#39' / '#39' ||ORIGEM.NOME) AS AEROPORTO_ORIGEM,'#13#10#9'   (DESTINO.CIDADE ' +
      '|| '#39' / '#39' ||DESTINO.NOME) AS AEROPORTO_DESTINO,'#13#10#9'   VOO.VALOR_TO' +
      'TAL'#13#10'FROM VOO'#13#10'JOIN FROTA ON FROTA.ID = VOO.AERONAVE_ID '#13#10'JOIN A' +
      'EROPORTOS ORIGEM ON ORIGEM.ID = VOO.ORIGEM_ID '#13#10'JOIN AEROPORTOS ' +
      'DESTINO ON DESTINO.ID = VOO.DESTINO_ID'#13#10'WHERE (VOO.DATA_RETORNO ' +
      '= CAST('#39'NOW'#39' as DATE))'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 75
    Top = 576
    object qryBuscaDadosViagensRetornoHojeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaDadosViagensRetornoHojeDISTANCIA: TFMTBCDField
      FieldName = 'DISTANCIA'
      Precision = 18
      Size = 2
    end
    object qryBuscaDadosViagensRetornoHojeQTD_COMISSARIOS: TIntegerField
      FieldName = 'QTD_COMISSARIOS'
    end
    object qryBuscaDadosViagensRetornoHojeDATA_PARTIDA: TDateField
      FieldName = 'DATA_PARTIDA'
    end
    object qryBuscaDadosViagensRetornoHojeDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object qryBuscaDadosViagensRetornoHojeAERONAVE: TStringField
      FieldName = 'AERONAVE'
      Size = 100
    end
    object qryBuscaDadosViagensRetornoHojeQTDE_PASSAGEIROS: TIntegerField
      FieldName = 'QTDE_PASSAGEIROS'
    end
    object qryBuscaDadosViagensRetornoHojeAEROPORTO_ORIGEM: TStringField
      FieldName = 'AEROPORTO_ORIGEM'
      Size = 513
    end
    object qryBuscaDadosViagensRetornoHojeAEROPORTO_DESTINO: TStringField
      FieldName = 'AEROPORTO_DESTINO'
      Size = 513
    end
    object qryBuscaDadosViagensRetornoHojeVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object qryBuscaDadosProximasViagens: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT VOO.ID,'#13#10#9'   VOO.DISTANCIA,'#13#10#9'   VOO.QTD_COMISSARIOS,'#13#10#9' ' +
      '  VOO.DATA_PARTIDA,'#13#10#9'   VOO.DATA_RETORNO,'#13#10#9'   FROTA.DESCRICAO ' +
      'AS AERONAVE,'#13#10#9'   FROTA.QTDE_PASSAGEIROS,'#13#10#9'   (ORIGEM.CIDADE ||' +
      ' '#39' / '#39' ||ORIGEM.NOME) AS AEROPORTO_ORIGEM,'#13#10#9'   (DESTINO.CIDADE ' +
      '|| '#39' / '#39' ||DESTINO.NOME) AS AEROPORTO_DESTINO,'#13#10#9'   VOO.VALOR_TO' +
      'TAL'#13#10'FROM VOO'#13#10'JOIN FROTA ON FROTA.ID = VOO.AERONAVE_ID '#13#10'JOIN A' +
      'EROPORTOS ORIGEM ON ORIGEM.ID = VOO.ORIGEM_ID '#13#10'JOIN AEROPORTOS ' +
      'DESTINO ON DESTINO.ID = VOO.DESTINO_ID'#13#10'WHERE (VOO.DATA_RETORNO ' +
      '> CAST('#39'NOW'#39' as DATE) OR VOO.DATA_PARTIDA > CAST('#39'NOW'#39' as DATE))' +
      ' AND '#13#10'              VOO.DATA_PARTIDA <> CAST('#39'NOW'#39' as DATE)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 75
    Top = 624
    object qryBuscaDadosProximasViagensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBuscaDadosProximasViagensDISTANCIA: TFMTBCDField
      FieldName = 'DISTANCIA'
      Precision = 18
      Size = 2
    end
    object qryBuscaDadosProximasViagensQTD_COMISSARIOS: TIntegerField
      FieldName = 'QTD_COMISSARIOS'
    end
    object qryBuscaDadosProximasViagensDATA_PARTIDA: TDateField
      FieldName = 'DATA_PARTIDA'
    end
    object qryBuscaDadosProximasViagensDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object qryBuscaDadosProximasViagensAERONAVE: TStringField
      FieldName = 'AERONAVE'
      Size = 100
    end
    object qryBuscaDadosProximasViagensQTDE_PASSAGEIROS: TIntegerField
      FieldName = 'QTDE_PASSAGEIROS'
    end
    object qryBuscaDadosProximasViagensAEROPORTO_ORIGEM: TStringField
      FieldName = 'AEROPORTO_ORIGEM'
      Size = 513
    end
    object qryBuscaDadosProximasViagensAEROPORTO_DESTINO: TStringField
      FieldName = 'AEROPORTO_DESTINO'
      Size = 513
    end
    object qryBuscaDadosProximasViagensVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object qryBuscaDadosViagensRealizadas: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 
      'SELECT VOO.ID,'#13#10#9'   VOO.DISTANCIA,'#13#10#9'   VOO.QTD_COMISSARIOS,'#13#10#9' ' +
      '  VOO.DATA_PARTIDA,'#13#10#9'   VOO.DATA_RETORNO,'#13#10#9'   FROTA.DESCRICAO ' +
      'AS AERONAVE,'#13#10#9'   FROTA.QTDE_PASSAGEIROS,'#13#10#9'   (ORIGEM.CIDADE ||' +
      ' '#39' / '#39' ||ORIGEM.NOME) AS AEROPORTO_ORIGEM,'#13#10#9'   (DESTINO.CIDADE ' +
      '|| '#39' / '#39' ||DESTINO.NOME) AS AEROPORTO_DESTINO,'#13#10#9'   VOO.VALOR_TO' +
      'TAL'#13#10'FROM VOO'#13#10'JOIN FROTA ON FROTA.ID = VOO.AERONAVE_ID '#13#10'JOIN A' +
      'EROPORTOS ORIGEM ON ORIGEM.ID = VOO.ORIGEM_ID '#13#10'JOIN AEROPORTOS ' +
      'DESTINO ON DESTINO.ID = VOO.DESTINO_ID'#13#10'WHERE VOO.DATA_RETORNO <' +
      ' CAST('#39'NOW'#39' as DATE)'#13#10'ORDER BY VOO.DATA_PARTIDA DESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 312
    Top = 528
  end
end
