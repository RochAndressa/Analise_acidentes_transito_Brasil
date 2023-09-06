/*Ajustes na Tabela [PRF].[tblArquivosAgrupadoPorOcorrencia] */


 /*INICIO UPDATE  */
 --Ajusta Colunas Null
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set uf = null
	,	br = null
	,	km = null
	where uf = '(null)'

	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set causa_acidente = null
	where causa_acidente = '(null)'

	
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set classificacao_acidente = null
	where classificacao_acidente = '(null)' or classificacao_acidente = ''

	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set fase_dia = null
	where fase_dia = '(null)' or fase_dia = ''

 
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set condicao_metereologica = null
	where condicao_metereologica = '(null)'  or condicao_metereologica = ''

	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set tipo_pista = null
	where tipo_pista = '(null)' or tipo_pista = ''


	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set uso_solo = null
	where uso_solo = '(null)' or uso_solo = ''
	  
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set latitude = null
	where latitude = '(null)' or latitude = ''

	
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set longitude = null
	where longitude = '(null)' or longitude = ''

	
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set regional = 'Não Informado'
	where regional = '(null)' or regional = ''

	
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set delegacia = null
	where delegacia = '(null)' or delegacia = ''
	
	update [PRF].[tblArquivosAgrupadoPorOcorrencia]
	set uop = null
	where uop = '(null)' or uop = ''

--Ajusta Dias da Semana
	update  [Projeto_PucMinas].[PRF].[tblArquivosAgrupadoPorOcorrencia] 
	SET dia_semana = case	when dia_semana = 'domingo'													then 'Domingo'
									when dia_semana = 'Segunda'	or dia_semana =	'segunda-feira'	then 'Segunda-Feira' 
									when dia_semana = 'Terça'		or dia_semana =	'terça-feira'		then 'Terça-Feira' 
									when dia_semana = 'Quarta'		or dia_semana =	'quarta-feira'		then 'Quarta-Feira' 
									when dia_semana = 'Quinta'		or dia_semana =	'quinta-feira'		then 'Quinta-Feira' 
									when dia_semana = 'Sexta'		or dia_semana =	'sexta-feira'		then 'Sexta-Feira' 
									when dia_semana = 'Sábado'														then 'Sábado' 
							end



 /*FIM UPDATE  */  

/*INCIO ALTER TABLE  */  
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		id								int  not null
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		horario						time(0)				
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		uf								varchar(2)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		br								varchar(3)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		km								varchar(6)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		causa_acidente				varchar(1000)	
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		fase_dia						varchar(25)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		sentido_via					varchar(25)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		condicao_metereologica	varchar(50)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		tipo_pista					varchar(25)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		tracado_via					varchar(25)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		uso_solo						varchar(25)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		uop							varchar(50)		
alter table [PRF].[tblArquivosAgrupadoPorOcorrencia]	alter column		arquivo						varchar(100)	
/*FIM ALTER TABLE  */  