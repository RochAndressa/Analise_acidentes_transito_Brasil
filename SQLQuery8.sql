/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[data_inversa]
      ,[dia_semana]
      ,[horario]
      ,[uf]
      ,[br]
      ,[km]
      ,[municipio]
      ,[causa_acidente]
      ,[tipo_acidente]
      ,[classificacao_acidente]
      ,[fase_dia]
      ,[sentido_via]
      ,[condicao_metereologica]
      ,[tipo_pista]
      ,[tracado_via]
      ,[uso_solo]
      ,[ano]
      ,[pessoas]
      ,[mortos]
      ,[feridos_leves]
      ,[feridos_graves]
      ,[ilesos]
      ,[ignorados]
      ,[feridos]
      ,[veiculos]
      ,[latitude]
      ,[longitude]
      ,[regional]
      ,[delegacia]
      ,[uop]
      ,[Arquivo]



 select max(len (km)) FROM [Projeto_PucMinas].[PRF].[tblArquivosAgrupadoPorOcorrencia]
 

  UPDATE [PRF].[tblArquivosAgrupadoPorOcorrencia]
  set uf = null, br = null, km = null
  where uf = '(null)'
  
  
  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
alter column horario time

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column uf varchar(2)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column br varchar(3)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column km varchar(6)


  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column causa_acidente varchar(1000)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column fase_dia varchar(25)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column sentido_via varchar(25)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column condicao_metereologica varchar(50)

 alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column tipo_pista varchar(25)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column tracado_via varchar(25)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column uso_solo varchar(25)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column uop varchar(50)

  alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]
  alter column arquivo varchar(100)