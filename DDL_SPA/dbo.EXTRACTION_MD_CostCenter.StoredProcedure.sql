USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_CostCenter]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<JOPE>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_CostCenter]
AS
BEGIN
	SET NOCOUNT ON;
select
'CSKS_SYSID',
'CSKS_MANDT',
'CSKS_KOKRS',
'CSKS_KOSTL',
'CSKS_SPRAS',
'CSKS_KTEXT',
'CSKS_LTEXT',
'CSKS_VERAK',
'CSKS_ABTEI',
'CSKS_RECID',
'CSKS_KHINR',
'CSKS_FUNC_AREA',
'CSKS_PRCTR',
'CSKS_DATAB',
'CSKS_DATBI',
'CSKS_ERSDA',
'CSKS_UDATE',
'CSKS_DATUM'
union all
select	
	CASE WHEN replace([CSKS_SYSID],' ','') = '' then NULL ELSE replace([CSKS_SYSID],' ','') end as [CSKS_SYSID],
	CASE WHEN replace([CSKS_MANDT],' ','') = '' then NULL ELSE replace([CSKS_MANDT],' ','') end as [CSKS_MANDT],
	CASE WHEN replace([CSKS_KOKRS],' ','') = '' then NULL ELSE replace([CSKS_KOKRS],' ','') end as [CSKS_KOKRS],
	CASE WHEN replace([CSKS_KOSTL],' ','') = '' then NULL ELSE replace([CSKS_KOSTL],' ','') end as [CSKS_KOSTL],
	CASE WHEN replace([CSKS_SPRAS],' ','') = '' then NULL ELSE replace([CSKS_SPRAS],' ','') end as [CSKS_SPRAS],
	CASE WHEN replace([CSKS_KTEXT],' ','') = '' then NULL ELSE replace([CSKS_KTEXT],' ','') end as [CSKS_KTEXT],
	CASE WHEN replace([CSKS_LTEXT],' ','') = '' then NULL ELSE replace([CSKS_LTEXT],' ','') end as [CSKS_LTEXT],
	CASE WHEN replace([CSKS_VERAK],' ','') = '' then NULL ELSE replace([CSKS_VERAK],' ','') end as [CSKS_VERAK],
	CASE WHEN replace([CSKS_ABTEI],' ','') = '' then NULL ELSE replace([CSKS_ABTEI],' ','') end as [CSKS_ABTEI],
	CASE WHEN replace([CSKS_RECID],' ','') = '' then NULL ELSE replace([CSKS_RECID],' ','') end as [CSKS_RECID],
	CASE WHEN replace([CSKS_KHINR],' ','') = '' then NULL ELSE replace([CSKS_KHINR],' ','') end as [CSKS_KHINR],
	CASE WHEN replace([CSKS_FUNC_AREA],' ','') = '' then NULL ELSE replace([CSKS_FUNC_AREA],' ','') end as [CSKS_FUNC_AREA],
	CASE WHEN replace([CSKS_PRCTR],' ','') = '' then NULL ELSE replace([CSKS_PRCTR],' ','') end as [CSKS_PRCTR],
	CASE WHEN replace([CSKS_DATAB],' ','') = '' then '00000000' WHEN replace([CSKS_DATAB],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CSKS_DATAB]),'YYYYMMDD'),' ','') end as [CSKS_DATAB],
	CASE WHEN replace([CSKS_DATBI],' ','') = '' then '00000000' WHEN replace([CSKS_DATBI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CSKS_DATBI]),'YYYYMMDD'),' ','') end as [CSKS_DATBI],
	CASE WHEN replace([CSKS_ERSDA],' ','') = '' then '00000000' WHEN replace([CSKS_ERSDA],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CSKS_ERSDA]),'YYYYMMDD'),' ','') end as [CSKS_ERSDA],
	CASE WHEN replace([CSKS_UDATE],' ','') = '' then '00000000' WHEN replace([CSKS_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CSKS_UDATE]),'YYYYMMDD'),' ','') end as [CSKS_UDATE],
	CASE WHEN replace([CSKS_DATUM],' ','') = '' then '00000000' WHEN replace([CSKS_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CSKS_DATUM]),'YYYYMMDD'),' ','') end as [CSKS_DATUM]
	from
	[dbo].[MD_CostCenter]
	WHERE [CSKS_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
