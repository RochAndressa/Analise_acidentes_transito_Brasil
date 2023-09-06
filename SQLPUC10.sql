USE [Projeto_PucMinas]
GO

/****** Object:  Table [PRF].[tblAgrupadoPorPessoa]    Script Date: 07/11/2022 22:33:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [PRF].[tblAgrupadoPorPessoa](
	[id] [varchar](1000) NULL,
	[pesid] [varchar](1000) NULL,
	[data_inversa] [varchar](1000) NULL,
	[dia_semana] [varchar](1000) NULL,
	[horario] [varchar](1000) NULL,
	[uf] [varchar](1000) NULL,
	[br] [varchar](1000) NULL,
	[km] [varchar](1000) NULL,
	[municipio] [varchar](1000) NULL,
	[causa_acidente] [varchar](1000) NULL,
	[tipo_acidente] [varchar](1000) NULL,
	[classificacao_acidente] [varchar](1000) NULL,
	[fase_dia] [varchar](1000) NULL,
	[sentido_via] [varchar](1000) NULL,
	[condicao_metereologica] [varchar](1000) NULL,
	[tipo_pista] [varchar](1000) NULL,
	[tracado_via] [varchar](1000) NULL,
	[uso_solo] [varchar](1000) NULL,
	[id_veiculo] [varchar](1000) NULL,
	[tipo_veiculo] [varchar](1000) NULL,
	[marca] [varchar](1000) NULL,
	[ano_fabricacao_veiculo] [varchar](1000) NULL,
	[tipo_envolvido] [varchar](1000) NULL,
	[estado_fisico] [varchar](1000) NULL,
	[idade] [varchar](1000) NULL,
	[sexo] [varchar](1000) NULL,
	[ilesos] [varchar](1000) NULL,
	[feridos_leves] [varchar](1000) NULL,
	[feridos_graves] [varchar](1000) NULL,
	[mortos] [varchar](1000) NULL,
	[latitude] [varchar](1000) NULL,
	[longitude] [varchar](1000) NULL,
	[regional] [varchar](1000) NULL,
	[delegacia] [varchar](1000) NULL,
	[uop] [varchar](1000) NULL,
	[Arquivo] [varchar](1000) NULL,
	[nacionalidade] [varchar](1000) NULL,
	[naturalidade] [varchar](1000) NULL
) ON [PRIMARY]
GO


select * from [PRF].[tblAgrupadoPorPessoa]
where ISNUMERIC (id) >1

--where id is null

alter table [PRF].[tblAgrupadoPorPessoa]
alter column id int;

select * from[PRF].[tblArquivosAgrupadoPorOcorrencia]
where data_inversa = '2020-08-07' and horario = '16:50:00' and municipio = 'Nova Iguacu'

UPDATE [PRF].[tblAgrupadoPorPessoa]
set id = TRIM (id)


alter table [PRF].[tblAgrupadoPorPessoa]
alter column id int

select id from [PRF].[tblAgrupadoPorPessoa]
order by id desc


--select distinct pesid as id_pessoa, id_veiculo from PRF.tblAgrupadoPorPessoa
--order by id_pessoa desc;
 
 --SELECT *
 --FROM PRF.tblAgrupadoPorPessoa
 --ORDER BY id asc;

 --select distinct id id_int, id_veiculo from PRF.tblAgrupadoPorPessoa
 --order by id_int asc;

 select causa_acidente from [PRF].[tblAgrupadoPorPessoa]
group by causa_acidente

select max(len(naturalidade))from [PRF].[tblAgrupadoPorPessoa]
