
 
 -- update para remover espaços
update PRF.tblAgrupadoPorPessoa
set id = trim(id)


--update para tirar aspas
UPDATE PRF.tblAgrupadoPorPessoa
set dia_semana = replace(dia_semana , '"', ''),
	data_inversa = replace(data_inversa , '"', ''),
	horario = replace(horario , '"', ''),
	uf = replace(uf , '"', ''),
	br = replace(br , '"', ''),
	km = replace(km , '"', ''),
	municipio = replace(municipio , '"', ''),
	causa_acidente = replace(causa_acidente , '"', ''),
	tipo_acidente = replace(tipo_acidente , '"', ''),
	classificacao_acidente = replace(classificacao_acidente , '"', ''),
	fase_dia = replace(fase_dia , '"', ''),
	sentido_via = replace(sentido_via , '"', ''),
	condicao_metereologica = replace(condicao_metereologica , '"', ''),
	tipo_pista = replace(tipo_pista , '"', ''),
	tracado_via = replace(tracado_via , '"', ''),
	uso_solo = replace(uso_solo , '"', ''),
	id_veiculo = replace (id_veiculo, '"', ''),
	tipo_veiculo = replace (tipo_veiculo, '"', ''),
	marca = replace (marca, '"', ''),
	ano_fabricacao_veiculo = replace (ano_fabricacao_veiculo, '"', ''),
	tipo_envolvido = replace (tipo_envolvido, '"', ''),
	estado_fisico = replace (estado_fisico, '"', ''),
	idade = replace(idade , '"', ''),
	sexo = replace (sexo, '"', ''),
	ilesos = replace(ilesos , '"', ''),
	feridos_leves = replace(feridos_leves , '"', ''),
	feridos_graves = replace(feridos_graves , '"', ''),
	mortos = replace(mortos , '"', ''),
	latitude = replace(latitude , '"', ''),
	longitude = replace(longitude , '"', ''),
	regional = replace(regional , '"', ''),
	delegacia = replace(delegacia , '"', ''),
	uop = replace(uop , '"', ''),
	arquivo = replace(arquivo , '"', ''),
	nacionalidade = replace(nacionalidade , '"', ''),
	naturalidade = replace(naturalidade , '"', '')


	--Ajuste das campos Null
	update [PRF].[tblAgrupadoPorPessoa]
	set uf = null,
		br = null,
		km = null
	where uf = '(null)'

	update [PRF].[tblAgrupadoPorPessoa]
	set pesid = null
	where pesid = 'NA'

	update [PRF].[tblAgrupadoPorPessoa]
	set idade = null
	where idade = 'NA' or idade = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set municipio = null
	where municipio = '(null)' or municipio = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = null
	where causa_acidente = '(null)'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Defeito Mecanico no Veiculo'
	where causa_acidente = 'Defeito MecÃ¢nico no VeÃ­culo'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Fenômenos da Natureza'
	where causa_acidente = 'FenÃ´menos da Natureza'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Conversão proibida'
	where causa_acidente = 'ConversÃ£o proibida'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Desobediência das normas de trânsito pelo condutor'
	where causa_acidente = 'DesobediÃªncia Ã s normas de trÃ¢nsito pelo condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Reação tardia ou ineficiente do condutor'
	where causa_acidente = 'ReaÃ§Ã£o tardia ou ineficiente do condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ausência de sinalização'
	where causa_acidente = 'AusÃªncia de sinalizaÃ§Ã£o'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Iluminação deficiente'
	where causa_acidente = 'IluminaÃ§Ã£o deficiente'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Iluminação deficiente'
	where causa_acidente = 'IluminaÃ§Ã£o deficiente'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ingestão de álcool pelo condutor'
	where causa_acidente = 'IngestÃ£o de Ã¡lcool pelo condutor' or causa_acidente = 'IngestÃ£o de Ãlcool'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Fumaça'
	where causa_acidente = 'FumaÃ§a'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Não guardar distância de segurança'
	where causa_acidente = 'NÃ£o guardar distÃ¢ncia de seguranÃ§a'
		  
	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ingestão de álcool e/ou substâncias psicoativas pelo pedestre'
	where causa_acidente = 'IngestÃ£o de Ã¡lcool e/ou substÃ¢ncias psicoativas pelo pedestre' or
		  causa_acidente = 'IngestÃ£o de Ã¡lcool ou de substÃ¢ncias psicoativas pelo pedestre'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Mal súbito'
	where causa_acidente = 'Mal SÃºbito'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Acostamento em desnível'
	where causa_acidente = 'Acostamento em desnÃ­vel'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Agressão externa'
	where causa_acidente = 'AgressÃ£o Externa'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Condutor desrespeitou a iluminação vermelha do semáforo'
	where causa_acidente = 'Condutor desrespeitou a iluminaÃ§Ã£o vermelha do semÃ¡foro'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Sinalização da via insuficiente ou inadequada'
	where causa_acidente = 'SinalizaÃ§Ã£o da via insuficiente ou inadequada'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ausência de reação do condutor'
	where causa_acidente = 'AusÃªncia de reaÃ§Ã£o do condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Acúmulo de água sobre o pavimento'
	where causa_acidente = 'Acumulo de Ã¡gua sobre o pavimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Demais falhas mecânicas ou elétricas'
	where causa_acidente = 'Demais falhas mecÃ¢nicas ou elÃ©tricas'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Afundamento ou ondulação no pavimento'
	where causa_acidente = 'Afundamento ou ondulaÃ§Ã£o no pavimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Desrespeitar a preferência no cruzamento'
	where causa_acidente = 'Desrespeitar a preferÃªncia no cruzamento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Acessar a via sem observar a presença dos outros veículos'
	where causa_acidente = 'Acessar a via sem observar a presenÃ§a dos outros veÃ­culos'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Falta de atenção á condução'
	where causa_acidente = 'Falta de AtenÃ§Ã£o Ã  ConduÃ§Ã£o'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Mal súbito do condutor'
	where causa_acidente = 'Mal sÃºbito do condutor'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Deficiência ou não acionamento do Sistema de Iluminação/Sinalização do Veículo'
	where causa_acidente = 'DeficiÃªncia ou nÃ£o Acionamento do Sistema de IluminaÃ§Ã£o/SinalizaÃ§Ã£o do VeÃ­culo'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Transitar pela contramão'
	where causa_acidente = 'Transitar na contramÃ£o'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Condutor deixou de manter distância do veículo da frente'
	where causa_acidente = 'Condutor deixou de manter distÃ¢ncia do veÃ­culo da frente'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Velocidade incompatível'
	where causa_acidente = 'Velocidade IncompatÃ­vel'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Desobediência das normas de trânsito pelo pedestre '
	where causa_acidente = 'DesobediÃªncia Ã s normas de trÃ¢nsito pelo pedestre'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Ingestão de substâncias Psicoativas'
	where causa_acidente = 'IngestÃ£o de SubstÃ¢ncias Psicoativas'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Manobra de mudança de faixa'
	where causa_acidente = 'Manobra de mudanÃ§a de faixa'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Objeto estático sobre o leito carroçável '
	where causa_acidente = 'Objeto estÃ¡tico sobre o leito carroÃ§Ã¡vel'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Restrição de Visibilidade '
	where causa_acidente = 'RestriÃ§Ã£o de Visibilidade'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Acúmulo de óleo sobre o pavimento'
	where causa_acidente = 'Acumulo de Ã³leo sobre o pavimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set causa_acidente = 'Falta de Atenção do Pedestre'
	where causa_acidente = 'Falta de AtenÃ§Ã£o do Pedestre'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = null
	where tipo_acidente = '(null)' or tipo_acidente = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão lateral mesmo sentido'
	where tipo_acidente = 'ColisÃ£o lateral mesmo sentido'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão lateral sentido oposto'
	where tipo_acidente = 'ColisÃ£o lateral sentido oposto'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão com objeto em movimento'
	where tipo_acidente = 'ColisÃ£o com objeto em movimento'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão transversal'
	where tipo_acidente = 'ColisÃ£o transversal'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão com objeto estático'
	where tipo_acidente = 'ColisÃ£o com objeto estÃ¡tico'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Incêndio'
	where tipo_acidente = 'IncÃªndio'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão com objeto'
	where tipo_acidente = 'ColisÃ£o com objeto'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Eventos atípicos'
	where tipo_acidente = 'Eventos atÃ­picos'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão frontal'
	where tipo_acidente = 'ColisÃ£o frontal'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Queda de ocupante de veículo'
	where tipo_acidente = 'Queda de ocupante de veÃ­culo'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão lateral'
	where tipo_acidente = 'ColisÃ£o lateral'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Saída de leito cassoçável'
	where tipo_acidente = 'SaÃ­da de leito carroÃ§Ã¡vel'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_acidente = 'Colisão traseira'
	where tipo_acidente = 'ColisÃ£o traseira'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = null
	where classificacao_acidente = '(null)' or classificacao_acidente = '' or
		  classificacao_acidente = 'Ignorado'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = 'Sem Vítimas'
	where classificacao_acidente = 'Sem VÃ­timas'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = 'Com Vítimas Fatais'
	where classificacao_acidente = 'Com VÃ­timas Fatais'

	update [PRF].[tblAgrupadoPorPessoa]
	set classificacao_acidente = 'Com Vítimas Feridas'
	where classificacao_acidente = 'Com VÃ­timas Feridas'

	update [PRF].[tblAgrupadoPorPessoa]
	set fase_dia = null
	where fase_dia = '(null)' or fase_dia = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set sentido_via = null
	where sentido_via = 'NÃ£o Informado' or sentido_via = 'Não Informado'

    update [PRF].[tblAgrupadoPorPessoa]
	set condicao_metereologica = null
	where condicao_metereologica = '(null)'  or condicao_metereologica = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set condicao_metereologica = null
	where condicao_metereologica = 'Ignorado' or condicao_metereologica = 'Ignorada'

	update [PRF].[tblAgrupadoPorPessoa]
	set condicao_metereologica = 'Céu Claro'
	where condicao_metereologica = 'CÃ©u Claro' or condicao_metereologica = 'Ceu Claro'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_pista = null
	where tipo_pista = '(null)' or tipo_pista = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_pista = 'Múltipla'
	where tipo_pista = 'MÃºltipla'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = 'Rotatória'
	where tracado_via = 'RotatÃ³ria'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = 'Interseção de vias'
	where tracado_via = 'InterseÃ§Ã£o de vias'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = 'Túnel'
	where tracado_via = 'TÃºnel'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = null
	where tracado_via = 'NÃ£o Informado' or tracado_via = 'Não Informado'


	update [PRF].[tblAgrupadoPorPessoa]
	set uso_solo = null
	where uso_solo = '(null)' or uso_solo = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set uso_solo = 'Não'
	where uso_solo = 'NÃ£o'

	  
	update [PRF].[tblAgrupadoPorPessoa]
	set latitude = null
	where latitude = '(null)' or latitude = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set longitude = null
	where longitude = '(null)' or longitude = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set regional = 'Não Informado'
	where regional = '(null)' or regional = '' or 
		  regional = 'Não Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set delegacia = null
	where delegacia = '(null)' or delegacia = ''
	
	update [PRF].[tblAgrupadoPorPessoa]
	set uop = null
	where uop = '(null)' or uop = '' 

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = 'Feminino'
	where sexo = 'F'

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = 'Masculino'
	where sexo = 'M'

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = null
	where sexo = 'Inválido'

	update [PRF].[tblAgrupadoPorPessoa]
	set sexo = null
	where sexo = 'NA' or sexo = 'Ignorado' or sexo = 'Não Informado' or sexo = 'I'
				or sexo = 'NULL' or sexo = 'NÃ£o Informado' or sexo = 'Inválido'
				or sexo = '(null)' or sexo = '' 

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = null
	where estado_fisico = '(null)' or estado_fisico = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set marca = null
	where marca = '(null)' or marca = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = null
	where tipo_veiculo = '(null)' or tipo_veiculo = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set id = case when id = '1e+05' then '100000'
					when id = '2e+05' then '200000'
					when id = '3e+05' then '300000'
					when id = '4e+05' then '400000' 
			 end
	where id like '%e+05%'
	

	update [PRF].[tblAgrupadoPorPessoa]
	set id_veiculo = null
	where id_veiculo = '(null)' or id_veiculo = '' or id_veiculo = 'NA'

	update [PRF].[tblAgrupadoPorPessoa]
	set tracado_via = null
	where tracado_via = '(null)' or tracado_via = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_envolvido = null
	where tipo_envolvido = 'Não Informado' or tipo_envolvido = 'NÃ£o Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = null
	where estado_fisico = 'Ignorado' or estado_fisico = 'Não Informado' or
		  estado_fisico = 'NÃ£o Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = 'Lesões Leves'
	where estado_fisico = 'LesÃµes Leves'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = 'Lesões Graves'
	where estado_fisico = 'LesÃµes Graves'

	update [PRF].[tblAgrupadoPorPessoa]
	set estado_fisico = 'Óbito'
	where estado_fisico = 'Ã“bito'

	update [PRF].[tblAgrupadoPorPessoa]
	set sentido_via = null
	where sentido_via = '(null)' or sentido_via = ''

	update [PRF].[tblAgrupadoPorPessoa]
	set nacionalidade = null
	where nacionalidade = 'NA' or nacionalidade = 'Não Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set naturalidade = null
	where naturalidade = 'NA' or naturalidade = 'Não Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Automóvel'
	where tipo_veiculo = 'AutomÃ³vel'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Carroça/Charrete'
	where tipo_veiculo = 'CarroÃ§a-charrete' or tipo_veiculo = 'Carroça-charrete' or
		  tipo_veiculo = 'Carroça' or tipo_veiculo = 'Charrete'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = null
	where tipo_veiculo = 'Não Informado' or tipo_veiculo = 'NÃ£o Informado'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Caminhão'
	where tipo_veiculo = 'CaminhÃ£o'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Micro-ônibus'
	where tipo_veiculo = 'Micro-Ã´nibus' or tipo_veiculo = 'Microônibus'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Caminhão-Trator'
	where tipo_veiculo = 'CaminhÃ£o-trator'
	
	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Carro de mão'
	where tipo_veiculo = 'Carro de mÃ£o' or tipo_veiculo = 'Carro-de-mao'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Utilitário'
	where tipo_veiculo = 'UtilitÃ¡rio'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Ônibus'
	where tipo_veiculo = 'Ã”nibus'

	update [PRF].[tblAgrupadoPorPessoa]
	set tipo_veiculo = 'Semi-reboque'
	where tipo_veiculo = 'Semireboque'


	--Ajuste dos dias da semana
	update   [PRF].[tblAgrupadoPorPessoa]
	SET dia_semana = case	when dia_semana = 'domingo'													then 'Domingo'
									when dia_semana = 'Segunda'	or dia_semana =	'segunda-feira'	then 'Segunda-Feira' 
									when dia_semana = 'Terça'		or dia_semana =	'terça-feira'		then 'Terça-Feira' 
									when dia_semana = 'Quarta'		or dia_semana =	'quarta-feira'		then 'Quarta-Feira' 
									when dia_semana = 'Quinta'		or dia_semana =	'quinta-feira'		then 'Quinta-Feira' 
									when dia_semana = 'Sexta'		or dia_semana =	'sexta-feira'		then 'Sexta-Feira' 
									when dia_semana = 'Sábado'														then 'Sábado' 
							end

							
--INCIO ALTER TABLE 
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		id								int 
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		pesid							int 		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		data_inversa					date		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		dia_semana						varchar(15)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		horario							time(0)				
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		uf								varchar(2)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		br								varchar(3)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		km								varchar(6)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		municipio						varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		causa_acidente				    varchar(100)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_acidente					varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		classificacao_acidente			varchar(20)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		fase_dia						varchar(15)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		sentido_via						varchar(15)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		condicao_metereologica			varchar(20)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_pista						varchar(15)	
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tracado_via						varchar(25)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		uso_solo						varchar(10)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		id_veiculo						int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_veiculo					varchar(20)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		marca							varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	drop column		   ano_fabricacao_veiculo			
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		tipo_envolvido					varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		estado_fisico					varchar (50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		idade							int 
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		sexo							varchar(10)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		feridos_leves					int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		feridos_graves					int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		ilesos							int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		mortos							int
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		latitude						varchar(100)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		longitude						varchar(100)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		regional						varchar(20)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		delegacia						varchar (15)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		uop								varchar(15)		
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		arquivo							varchar(50)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		nacionalidade					varchar(30)
alter table [PRF].[tblAgrupadoPorPessoa]	alter column		naturalidade					varchar(35)
--FIM ALTER TABLE

-- RODAR DEPOIS ALTERAR PARA A IDADE DE VARCHAR PARA INT
update[PRF].[tblAgrupadoPorPessoa]
set idade = null
where idade > 120
