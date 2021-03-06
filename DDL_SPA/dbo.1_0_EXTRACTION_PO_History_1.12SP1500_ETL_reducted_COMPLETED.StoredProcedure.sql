USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_EXTRACTION_PO_History_1.12SP1500_ETL_reducted_COMPLETED]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================[dbo].[1_0_EXTRACTION_INV_Item_ETL]

CREATE PROCEDURE [dbo].[1_0_EXTRACTION_PO_History_1.12SP1500_ETL_reducted_COMPLETED]
AS
BEGIN
SET NOCOUNT ON;
select
'EKBE_SYSID',
'EKBE_MANDT',
'EKBE_EBELN',
'EKBE_EBELP',
'EKBE_AREWB',
'EKBE_AREWR',
'EKBE_AREWR_POP',
'EKBE_AREWW',
'EKBE_BAMNG',
'EKBE_BEKKN',
'EKBE_BELNR',
'EKBE_BEWTP',
'EKBE_BLDAT',
'EKBE_BPMNG',
'EKBE_BPMNG_POP',
'EKBE_BPWEB',
'EKBE_BPWES',
'EKBE_BUDAT',
'EKBE_BUZEI',
'EKBE_BWART',
'EKBE_BWTAR',
'EKBE_CHARG',
'EKBE_CPUDT',
'EKBE_CPUTM',
'EKBE_DMBTR',
'EKBE_DMBTR_POP',
'EKBE_ELIKZ',
'EKBE_EMATN',
'EKBE_ERNAM',
'EKBE_ET_UPD',
'EKBE_ETENS',
'EKBE_EVERE',
'EKBE_GJAHR',
'EKBE_GRUND',
'EKBE_HSWAE',
'EKBE_INTROW',
'EKBE_KNUMV',
'EKBE_KUDIF',
'EKBE_LEMIN',
'EKBE_LFBNR',
'EKBE_LFGJA',
'EKBE_LFPOS',
'EKBE_LSMEH',
'EKBE_LSMNG',
'EKBE_MATNR',
'EKBE_MENGE',
'EKBE_MENGE_POP',
'EKBE_MWSKZ',
'EKBE_PACKNO',
'EKBE_REEWR',
'EKBE_REFWR',
'EKBE_RETAMT_FC',
'EKBE_RETAMT_LC',
'EKBE_RETAMTP_FC',
'EKBE_RETAMTP_LC',
'EKBE_REWRB',
'EKBE_SAPRL',
'EKBE_SHKZG',
'EKBE_SRVPOS',
'EKBE_VGABE',
'EKBE_WAERS',
'EKBE_WEORA',
'EKBE_WERKS',
'EKBE_WESBB',
'EKBE_WESBS',
'EKBE_WKURS',
'EKBE_WRBTR',
'EKBE_WRBTR_POP',
'EKBE_XBLNR',
'EKBE_XMACC',
'EKBE_XUNPL',
'EKBE_XWOFF',
'EKBE_XWSBR',
'EKBE_ZEKKN',
'EKBE_ERUSERNAME',
'EKBE_AEUSERNAME',
'EKBE_UDATE',
'EKBE_DATUM'
union all
select
	CASE WHEN replace([EKBE_SYSID],' ','') = '' then NULL ELSE replace([EKBE_SYSID],' ','') end as [EKBE_SYSID],
	CASE WHEN replace([EKBE_MANDT],' ','') = '' then NULL ELSE replace([EKBE_MANDT],' ','') end as [EKBE_MANDT],
	CASE WHEN replace([EKBE_EBELN],' ','') = '' then NULL ELSE replace([EKBE_EBELN],' ','') end as [EKBE_EBELN],
	CASE WHEN replace([EKBE_EBELP],' ','') = '' then '00000' WHEN replace([EKBE_EBELP],' ','') IS NULL then '00000'  ELSE replace([EKBE_EBELP],' ','') end as [EKBE_EBELP],		
	'0.00' as [EKBE_AREWB],
	'0.00' as [EKBE_AREWR],
	'0.00' as [EKBE_AREWR_POP],
	'0.00' as [EKBE_AREWW],
	CASE WHEN replace([EKBE_BAMNG],' ','') = '' then '0.000' WHEN replace([EKBE_BAMNG],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_BAMNG],' ','') end as [EKBE_BAMNG],		
	NULL as [EKBE_BEKKN],
	CASE WHEN replace([EKBE_BELNR],' ','') = '' then NULL ELSE replace([EKBE_BELNR],' ','') end as [EKBE_BELNR],
	NULL as [EKBE_BEWTP],
	CASE WHEN replace([EKBE_BLDAT],' ','') = '' then '00000000' WHEN replace([EKBE_BLDAT],' ','') is null then '00000000' ELSE replace([EKBE_BLDAT],' ','') end as [EKBE_BLDAT],		
	'0.000' as [EKBE_BPMNG],
	'0.000' as [EKBE_BPMNG_POP],
	'0.000' as [EKBE_BPWEB],
	'0.000' as [EKBE_BPWES],
	CASE WHEN replace([EKBE_BUDAT],' ','') = '' then '00000000' WHEN replace([EKBE_BUDAT],' ','') is null then '00000000' ELSE replace([EKBE_BUDAT],' ','') end as [EKBE_BUDAT],
	CASE WHEN replace([EKBE_BUZEI],' ','') = '' then NULL ELSE replace([EKBE_BUZEI],' ','') end as [EKBE_BUZEI],
	NULL as [EKBE_BWART],
	NULL as [EKBE_BWTAR],
	NULL as [EKBE_CHARG],		
	CASE WHEN replace([EKBE_CPUDT],' ','') = '' then '00000000' WHEN replace([EKBE_CPUDT],' ','') is null then '00000000' ELSE replace([EKBE_CPUDT],' ','') end as [EKBE_CPUDT],
	NULL as [EKBE_CPUTM],	
	'0.00' as [EKBE_DMBTR],
	'0.00' as [EKBE_DMBTR_POP],
	NULL as [EKBE_ELIKZ],
	NULL as [EKBE_EMATN],
	NULL as [EKBE_ERNAM],
	NULL as [EKBE_ET_UPD],
	NULL as [EKBE_ETENS],
	NULL as [EKBE_EVERE],
	CASE 
	WHEN replace([EKBE_GJAHR],' ','') = '' then NULL WHEN len(replace([EKBE_GJAHR],' ','')) > 4 then NULL ELSE replace([EKBE_GJAHR],' ','') end as [EKBE_GJAHR],

	NULL as [EKBE_GRUND],
	NULL as [EKBE_HSWAE],
	NULL as [EKBE_INTROW],
	NULL as [EKBE_KNUMV],
	'0.00' as [EKBE_KUDIF],
	NULL as [EKBE_LEMIN],
	NULL as [EKBE_LFBNR],
	NULL as [EKBE_LFGJA],
	NULL as [EKBE_LFPOS],
	NULL as [EKBE_LSMEH],
	NULL as [EKBE_LSMNG],
	NULL as [EKBE_MATNR],
	'0.00' as [EKBE_MENGE],
	'0.000' as [EKBE_MENGE_POP],
	NULL as [EKBE_MWSKZ],
	NULL as [EKBE_PACKNO],
	'0.00' as [EKBE_REEWR],
	'0.00' as [EKBE_REFWR],
	'0.00' as [EKBE_RETAMT_FC],
	'0.00' as [EKBE_RETAMT_LC],
	'0.00' as [EKBE_RETAMTP_FC],
	'0.00' as [EKBE_RETAMTP_LC],
	'0.00' as [EKBE_REWRB],
	NULL as [EKBE_SAPRL],
	NULL as [EKBE_SHKZG],
	NULL as [EKBE_SRVPOS],
	CASE WHEN replace([EKBE_VGABE],' ','') = '' then NULL ELSE replace([EKBE_VGABE],' ','') end as [EKBE_VGABE],
	NULL as [EKBE_WAERS],
	NULL as [EKBE_WEORA],
	NULL as [EKBE_WERKS],	
	'0.000' as [EKBE_WESBB],
	'0.00' as [EKBE_WESBS],
	'0.00000' as [EKBE_WKURS],
	'0.00' as [EKBE_WRBTR],
	'0.00' as [EKBE_WRBTR_POP],
	NULL as [EKBE_XBLNR],
	CASE WHEN replace([EKBE_XMACC],' ','') = '' then NULL ELSE replace([EKBE_XMACC],' ','') end as [EKBE_XMACC],
	NULL as [EKBE_XUNPL],
	NULL as [EKBE_XWOFF],
	NULL as [EKBE_XWSBR],
	CASE WHEN replace([EKBE_ZEKKN],' ','') = '' then NULL ELSE replace([EKBE_ZEKKN],' ','') end as [EKBE_ZEKKN],
	NULL as [EKBE_ERUSERNAME],
	CASE WHEN replace([EKBE_AEUSERNAME],' ','') = '' then NULL ELSE replace([EKBE_AEUSERNAME],' ','') end as [EKBE_AEUSERNAME],
	'00000000' as [EKBE_UDATE],
	CASE WHEN replace([EKBE_DATUM],' ','') = '' then '00000000' WHEN replace([EKBE_DATUM],' ','') is null then '00000000' ELSE replace([EKBE_DATUM],' ','') end as [EKBE_DATUM]
	from
	[dbo].[1_0_PO_History_1.12SP1500_ETL_reducted_COMPLETED]
	WHERE [EKBE_SYSID] not in ('LM3','IE3')
END

GO
