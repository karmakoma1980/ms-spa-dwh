USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_QN_Measure]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_QN_Measure]
AS
BEGIN
	SET NOCOUNT ON;
select
'QMSM_SYSID',
'QMSM_MANDT',
'QMSM_QMNUM',
'QMSM_MANUM',
'QMSM_MNKAT',
'QMSM_MNGRP',
'QMSM_MNCOD',
'QMSM_MNVER',
'QMSM_FOLGEACT',
'QMSM_FOLACTPROT',
'QMSM_MATXT',
'QMSM_ERNAM',
'QMSM_ERDAT',
'QMSM_AENAM',
'QMSM_AEDAT',
'QMSM_PSTER',
'QMSM_PETER',
'QMSM_OBJNR',
'QMSM_INDTX',
'QMSM_KZMLA',
'QMSM_PSTUR',
'QMSM_PETUR',
'QMSM_ERLNAM',
'QMSM_ERLDAT',
'QMSM_ERLZEIT',
'QMSM_WDVDAT',
'QMSM_FENUM',
'QMSM_URNUM',
'QMSM_ERZEIT',
'QMSM_AEZEIT',
'QMSM_PARVW',
'QMSM_PARNR',
'QMSM_MMENGE',
'QMSM_MMGEIN',
'QMSM_BAUTL',
'QMSM_KZLOESCH',
'QMSM_QSMNUM',
'QMSM_AUTKZ',
'QMSM_HANDLE',
'QMSM_TSEGFL',
'QMSM_TSEGTP',
'QMSM_TZONSO',
'QMSM_TZONSM',
'QMSM_TZONID',
'QMSM_KZACTIONBOX',
'QMSM_FUNKTION',
'QMSM_DATUM'
union all
	select	
	CASE WHEN replace([QMSM_SYSID],' ','') = '' then NULL ELSE replace([QMSM_SYSID],' ','') end as [QMSM_SYSID],
	CASE WHEN replace([QMSM_MANDT],' ','') = '' then NULL ELSE replace([QMSM_MANDT],' ','') end as [QMSM_MANDT],
	CASE WHEN replace([QMSM_QMNUM],' ','') = '' then NULL ELSE replace([QMSM_QMNUM],' ','') end as [QMSM_QMNUM],
	CASE WHEN replace([QMSM_MANUM],' ','') = '' then NULL ELSE replace([QMSM_MANUM],' ','') end as [QMSM_MANUM],
	CASE WHEN replace([QMSM_MNKAT],' ','') = '' then NULL ELSE replace([QMSM_MNKAT],' ','') end as [QMSM_MNKAT],
	CASE WHEN replace([QMSM_MNGRP],' ','') = '' then NULL ELSE replace([QMSM_MNGRP],' ','') end as [QMSM_MNGRP],
	CASE WHEN replace([QMSM_MNCOD],' ','') = '' then NULL ELSE replace([QMSM_MNCOD],' ','') end as [QMSM_MNCOD],
	CASE WHEN replace([QMSM_MNVER],' ','') = '' then NULL ELSE replace([QMSM_MNVER],' ','') end as [QMSM_MNVER],
	CASE WHEN replace([QMSM_FOLGEACT],' ','') = '' then NULL ELSE replace([QMSM_FOLGEACT],' ','') end as [QMSM_FOLGEACT],
	CASE WHEN replace([QMSM_FOLACTPROT],' ','') = '' then NULL ELSE replace([QMSM_FOLACTPROT],' ','') end as [QMSM_FOLACTPROT],
	CASE WHEN replace([QMSM_MATXT],' ','') = '' then NULL ELSE replace([QMSM_MATXT],' ','') end as [QMSM_MATXT],
	CASE WHEN replace([QMSM_ERNAM],' ','') = '' then NULL ELSE replace([QMSM_ERNAM],' ','') end as [QMSM_ERNAM],
	CASE WHEN replace([QMSM_ERDAT],' ','') = '' then '00000000' WHEN replace([QMSM_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMSM_ERDAT]),'YYYYMMDD'),' ','') end as [QMSM_ERDAT],
	CASE WHEN replace([QMSM_AENAM],' ','') = '' then NULL ELSE replace([QMSM_AENAM],' ','') end as [QMSM_AENAM],
	CASE WHEN replace([QMSM_AEDAT],' ','') = '' then '00000000' WHEN replace([QMSM_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMSM_AEDAT]),'YYYYMMDD'),' ','') end as [QMSM_AEDAT],
	CASE WHEN replace([QMSM_PSTER],' ','') = '' then '00000000' WHEN replace([QMSM_PSTER],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMSM_PSTER]),'YYYYMMDD'),' ','') end as [QMSM_PSTER],
	CASE WHEN replace([QMSM_PETER],' ','') = '' then '00000000' WHEN replace([QMSM_PETER],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMSM_PETER]),'YYYYMMDD'),' ','') end as [QMSM_PETER],
	CASE WHEN replace([QMSM_OBJNR],' ','') = '' then NULL ELSE replace([QMSM_OBJNR],' ','') end as [QMSM_OBJNR],
	CASE WHEN replace([QMSM_INDTX],' ','') = '' then NULL ELSE replace([QMSM_INDTX],' ','') end as [QMSM_INDTX],
	CASE WHEN replace([QMSM_KZMLA],' ','') = '' then NULL ELSE replace([QMSM_KZMLA],' ','') end as [QMSM_KZMLA],
	CASE WHEN replace([QMSM_PSTUR],' ','') = '' then NULL ELSE replace([QMSM_PSTUR],' ','') end as [QMSM_PSTUR],
	CASE WHEN replace([QMSM_PETUR],' ','') = '' then NULL ELSE replace([QMSM_PETUR],' ','') end as [QMSM_PETUR],
	CASE WHEN replace([QMSM_ERLNAM],' ','') = '' then NULL ELSE replace([QMSM_ERLNAM],' ','') end as [QMSM_ERLNAM],
	CASE WHEN replace([QMSM_ERLDAT],' ','') = '' then '00000000' WHEN replace([QMSM_ERLDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMSM_ERLDAT]),'YYYYMMDD'),' ','') end as [QMSM_ERLDAT],
	CASE WHEN replace([QMSM_ERLZEIT],' ','') = '' then NULL ELSE replace([QMSM_ERLZEIT],' ','') end as [QMSM_ERLZEIT],
	CASE WHEN replace([QMSM_WDVDAT],' ','') = '' then '00000000' WHEN replace([QMSM_WDVDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMSM_WDVDAT]),'YYYYMMDD'),' ','') end as [QMSM_WDVDAT],
	CASE WHEN replace([QMSM_FENUM],' ','') = '' then NULL ELSE replace([QMSM_FENUM],' ','') end as [QMSM_FENUM],
	CASE WHEN replace([QMSM_URNUM],' ','') = '' then NULL ELSE replace([QMSM_URNUM],' ','') end as [QMSM_URNUM],
	CASE WHEN replace([QMSM_ERZEIT],' ','') = '' then NULL ELSE replace([QMSM_ERZEIT],' ','') end as [QMSM_ERZEIT],
	CASE WHEN replace([QMSM_AEZEIT],' ','') = '' then NULL ELSE replace([QMSM_AEZEIT],' ','') end as [QMSM_AEZEIT],
	CASE WHEN replace([QMSM_PARVW],' ','') = '' then NULL ELSE replace([QMSM_PARVW],' ','') end as [QMSM_PARVW],
	CASE WHEN replace([QMSM_PARNR],' ','') = '' then NULL ELSE replace([QMSM_PARNR],' ','') end as [QMSM_PARNR],
	CASE WHEN replace([QMSM_MMENGE],' ','') = '' then '0.000' WHEN replace([QMSM_MMENGE],' ','') IS NULL THEN '0.000' ELSE replace([QMSM_MMENGE],' ','') end as [QMSM_MMENGE],
	CASE WHEN replace([QMSM_MMGEIN],' ','') = '' then NULL ELSE replace([QMSM_MMGEIN],' ','') end as [QMSM_MMGEIN],
	CASE WHEN replace([QMSM_BAUTL],' ','') = '' then NULL ELSE replace([QMSM_BAUTL],' ','') end as [QMSM_BAUTL],
	CASE WHEN replace([QMSM_KZLOESCH],' ','') = '' then NULL ELSE replace([QMSM_KZLOESCH],' ','') end as [QMSM_KZLOESCH],
	CASE WHEN replace([QMSM_QSMNUM],' ','') = '' then NULL ELSE replace([QMSM_QSMNUM],' ','') end as [QMSM_QSMNUM],
	CASE WHEN replace([QMSM_AUTKZ],' ','') = '' then NULL ELSE replace([QMSM_AUTKZ],' ','') end as [QMSM_AUTKZ],
	CASE WHEN replace([QMSM_HANDLE],' ','') = '' then NULL ELSE replace([QMSM_HANDLE],' ','') end as [QMSM_HANDLE],
	CASE WHEN replace([QMSM_TSEGFL],' ','') = '' then NULL ELSE replace([QMSM_TSEGFL],' ','') end as [QMSM_TSEGFL],
	CASE WHEN replace([QMSM_TSEGTP],' ','') = '' then NULL ELSE replace([QMSM_TSEGTP],' ','') end as [QMSM_TSEGTP],
	CASE WHEN replace([QMSM_TZONSO],' ','') = '' then NULL ELSE replace([QMSM_TZONSO],' ','') end as [QMSM_TZONSO],
	CASE WHEN replace([QMSM_TZONSM],' ','') = '' then NULL ELSE replace([QMSM_TZONSM],' ','') end as [QMSM_TZONSM],
	CASE WHEN replace([QMSM_TZONID],' ','') = '' then NULL ELSE replace([QMSM_TZONID],' ','') end as [QMSM_TZONID],
	CASE WHEN replace([QMSM_KZACTIONBOX],' ','') = '' then NULL ELSE replace([QMSM_KZACTIONBOX],' ','') end as [QMSM_KZACTIONBOX],
	CASE WHEN replace([QMSM_FUNKTION],' ','') = '' then NULL ELSE replace([QMSM_FUNKTION],' ','') end as [QMSM_FUNKTION],
	CASE WHEN replace([QMSM_DATUM],' ','') = '' then '00000000' WHEN replace([QMSM_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMSM_DATUM]),'YYYYMMDD'),' ','') end as [QMSM_DATUM]
	from
	[dbo].[QN_Measure]
	WHERE [QMSM_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
