USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_EXTRACTION_GM_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_EXTRACTION_GM_Header_ETL]
AS
BEGIN
	SET NOCOUNT ON;
select
'MKPF_SYSID',
'MKPF_MANDT',
'MKPF_MBLNR',
'MKPF_MJAHR',
'MKPF_VGART',
'MKPF_BLART',
'MKPF_BLDAT',
'MKPF_BUDAT',
'MKPF_CPUDT',
'MKPF_ZZBARCODE',
'MKPF_BKTXT',
'MKPF_XBLNR',
'MKPF_USNAM',
'MKPF_AEDAT',
'MKPF_DATUM'
union all
select	
	CASE WHEN replace([MKPF_SYSID],' ','') = '' then NULL ELSE replace([MKPF_SYSID],' ','') end as [MKPF_SYSID],
	CASE WHEN replace([MKPF_MANDT],' ','') = '' then NULL ELSE replace([MKPF_MANDT],' ','') end as [MKPF_MANDT],
	CASE WHEN replace([MKPF_MBLNR],' ','') = '' then NULL ELSE replace([MKPF_MBLNR],' ','') end as [MKPF_MBLNR],
	CASE WHEN replace([MKPF_MJAHR],' ','') = '' then NULL ELSE replace([MKPF_MJAHR],' ','') end as [MKPF_MJAHR],
	CASE WHEN replace([MKPF_VGART],' ','') = '' then NULL ELSE replace([MKPF_VGART],' ','') end as [MKPF_VGART],
	CASE WHEN replace([MKPF_BLART],' ','') = '' then NULL ELSE replace([MKPF_BLART],' ','') end as [MKPF_BLART],
	CASE WHEN replace(replace(LOWER([MKPF_BLDAT]),' ',''),'p','') = '' then '00000000' WHEN replace(replace(LOWER([MKPF_BLDAT]),' ',''),'p','') is null then '00000000' ELSE replace(replace(LOWER([MKPF_BLDAT]),' ',''),'p','')  end as [MKPF_BLDAT],
	CASE WHEN replace([MKPF_BUDAT],' ','') = '' then '00000000' WHEN replace([MKPF_BUDAT],' ','') is null then '00000000' ELSE replace([MKPF_BUDAT],' ','') end as [MKPF_BUDAT],
	CASE WHEN replace([MKPF_CPUDT],' ','') = '' then '00000000' WHEN replace([MKPF_CPUDT],' ','') is null then '00000000' ELSE replace([MKPF_CPUDT],' ','') end as [MKPF_CPUDT],
	CASE WHEN replace([MKPF_ZZBARCODE],' ','') = '' then NULL ELSE replace([MKPF_ZZBARCODE],' ','') end as[MKPF_ZZBARCODE],
	CASE WHEN replace([MKPF_BKTXT],' ','') = '' then NULL ELSE replace([MKPF_BKTXT],' ','') end as[MKPF_BKTXT],
	CASE WHEN replace([MKPF_XBLNR],' ','') = '' then NULL ELSE replace([MKPF_XBLNR],' ','') end as [MKPF_XBLNR],
	CASE WHEN replace([MKPF_USNAM],' ','') = '' then NULL ELSE replace([MKPF_USNAM],' ','') end as [MKPF_USNAM],
	CASE WHEN replace([MKPF_AEDAT],' ','') = '' then '00000000' WHEN replace([MKPF_AEDAT],' ','') is null then '00000000' ELSE replace([MKPF_AEDAT],' ','') end as [MKPF_AEDAT],
	CASE WHEN replace([MKPF_DATUM],' ','') = '' then '00000000' WHEN replace([MKPF_DATUM],' ','') is null then '00000000' ELSE replace([MKPF_DATUM],' ','') end as [MKPF_DATUM]
	from
	[dbo].[1_0_GM_Header_ETL]
	WHERE [MKPF_SYSID] not in ('LM3','IE3') 
END

GO
