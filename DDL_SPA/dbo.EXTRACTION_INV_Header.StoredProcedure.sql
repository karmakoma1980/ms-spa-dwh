USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_INV_Header]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_INV_Header]
AS
BEGIN
	SET NOCOUNT ON;
select
'BKPF_SYSID',
'BKPF_MANDT',
'BKPF_GJAHR',
'BKPF_BELNR',
'BKPF_BUKRS',
'BKPF_BUDAT',
'BKPF_CPUDT',
'BKPF_BLDAT',
'BKPF_WAERS',
'BKPF_KURSF',
'BKPF_WWERT',
'BKPF_HWAER',
'BKPF_BKTXT',
'BKPF_BLART',
'BKPF_XBLNR',
'BKPF_BSTAT',
'BKPF_STJAH',
'BKPF_STBLG',
'BKPF_XREVERSAL',
'BKPF_ERUSERNAME',
'BKPF_AEUSERNAME',
'BKPF_AEDAT',
'BKPF_DATUM', 
'BKPF_AUSBK'
union all
select
	CASE WHEN replace([BKPF_SYSID],' ','') = '' then NULL ELSE replace([BKPF_SYSID],' ','') end as [BKPF_SYSID],
	CASE WHEN replace([BKPF_MANDT],' ','') = '' then NULL ELSE replace([BKPF_MANDT],' ','') end as [BKPF_MANDT],
	CASE WHEN replace([BKPF_GJAHR],' ','') = '' then NULL ELSE replace([BKPF_GJAHR],' ','') end as [BKPF_GJAHR],
	CASE WHEN replace([BKPF_BELNR],' ','') = '' then NULL ELSE replace([BKPF_BELNR],' ','') end as [BKPF_BELNR],
	CASE WHEN replace([BKPF_BUKRS],' ','') = '' then NULL ELSE replace([BKPF_BUKRS],' ','') end as [BKPF_BUKRS],
	CASE WHEN replace([BKPF_BUDAT],' ','') = '' then '00000000' WHEN replace([BKPF_BUDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BKPF_BUDAT]),'YYYYMMDD'),' ','') end as [BKPF_BUDAT],
	CASE WHEN replace([BKPF_CPUDT],' ','') = '' then '00000000' WHEN replace([BKPF_CPUDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BKPF_CPUDT]),'YYYYMMDD'),' ','') end as [BKPF_CPUDT],
	CASE WHEN replace([BKPF_BLDAT],' ','') = '' then '00000000' WHEN replace([BKPF_BLDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BKPF_BLDAT]),'YYYYMMDD'),' ','') end as [BKPF_BLDAT],
	CASE WHEN replace([BKPF_WAERS],' ','') = '' then NULL ELSE replace([BKPF_WAERS],' ','') end as [BKPF_WAERS],
	CASE WHEN replace([BKPF_KURSF],' ','') = '' then '0.00000' WHEN replace([BKPF_KURSF],' ','') IS NULL THEN '0.00000' ELSE replace([BKPF_KURSF],' ','') end as [BKPF_KURSF],
	CASE WHEN replace([BKPF_WWERT],' ','') = '' then '00000000' WHEN replace([BKPF_WWERT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BKPF_WWERT]),'YYYYMMDD'),' ','') end as [BKPF_WWERT],
	CASE WHEN replace([BKPF_HWAER],' ','') = '' then NULL ELSE replace([BKPF_HWAER],' ','') end as [BKPF_HWAER],
	CASE 
	WHEN replace([BKPF_BKTXT],' ','') = '' then NULL 
	WHEN replace([BKPF_BKTXT],' ','') = ' ' then NULL 
	else replace([BKPF_BKTXT],' ','') end as [BKPF_BKTXT],
	CASE WHEN replace([BKPF_BLART],' ','') = '' then NULL ELSE replace([BKPF_BLART],' ','') end as [BKPF_BLART],
	CASE WHEN replace([BKPF_XBLNR],' ','') = '' then NULL ELSE replace([BKPF_XBLNR],' ','') end as [BKPF_XBLNR],
	CASE WHEN replace([BKPF_BSTAT],' ','') = '' then NULL ELSE replace([BKPF_BSTAT],' ','') end as [BKPF_BSTAT],
	CASE WHEN replace([BKPF_STJAH],' ','') = '' then NULL ELSE replace([BKPF_STJAH],' ','') end as [BKPF_STJAH],
	CASE WHEN replace([BKPF_STBLG],' ','') = '' then NULL ELSE replace([BKPF_STBLG],' ','') end as [BKPF_STBLG],
	CASE WHEN replace([BKPF_XREVERSAL],' ','') = '' then NULL ELSE replace([BKPF_XREVERSAL],' ','') end as [BKPF_XREVERSAL],
	CASE WHEN replace([BKPF_ERUSERNAME],' ','') = '' then NULL ELSE replace([BKPF_ERUSERNAME],' ','') end as [BKPF_ERUSERNAME],
	CASE WHEN replace([BKPF_AEUSERNAME],' ','') = '' then NULL ELSE replace([BKPF_AEUSERNAME],' ','') end as [BKPF_AEUSERNAME],
	CASE WHEN replace([BKPF_AEDAT],' ','') = '' then '00000000' WHEN replace([BKPF_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BKPF_AEDAT]),'YYYYMMDD'),' ','') end as [BKPF_AEDAT],
	CASE WHEN replace([BKPF_DATUM],' ','') = '' then '00000000' WHEN replace([BKPF_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BKPF_DATUM]),'YYYYMMDD'),' ','') end as [BKPF_DATUM],
	CASE WHEN replace([BKPF_AUSBK],' ','') = '' then NULL ELSE replace([BKPF_AUSBK],' ','') end as [BKPF_AUSBK]
	from
	[dbo].[INV_Header]
	WHERE [BKPF_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
