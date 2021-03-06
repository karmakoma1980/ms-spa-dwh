USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_ProfitCenter]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_ProfitCenter]
AS
BEGIN
	SET NOCOUNT ON;
select
'CEPC_SYSID',
'CEPC_MANDT',
'CEPC_KOKRS',
'CEPC_PRCTR',
'CEPC_SPRAS',
'CEPC_KTEXT',
'CEPC_LTEXT',
'CEPC_VERAK',
'CEPC_ABTEI',
'CEPC_STATUS',
'CEPC_KHINR',
'CEPC_HITXT',
'CEPC_DATAB',
'CEPC_DATBI',
'CEPC_ERSDA',
'CEPC_DATUM'
union all
select	
	CASE WHEN replace([CEPC_SYSID],' ','') = '' then NULL ELSE replace([CEPC_SYSID],' ','') end as [CEPC_SYSID],
	CASE WHEN replace([CEPC_MANDT],' ','') = '' then NULL ELSE replace([CEPC_MANDT],' ','') end as [CEPC_MANDT],
	CASE WHEN replace([CEPC_KOKRS],' ','') = '' then NULL ELSE replace([CEPC_KOKRS],' ','') end as [CEPC_KOKRS],
	CASE WHEN replace([CEPC_PRCTR],' ','') = '' then NULL ELSE replace([CEPC_PRCTR],' ','') end as [CEPC_PRCTR],
	CASE WHEN replace([CEPC_SPRAS],' ','') = '' then NULL ELSE replace([CEPC_SPRAS],' ','') end as [CEPC_SPRAS],
	CASE WHEN replace([CEPC_KTEXT],' ','') = '' then NULL ELSE replace([CEPC_KTEXT],' ','') end as [CEPC_KTEXT],
	CASE WHEN replace([CEPC_LTEXT],' ','') = '' then NULL ELSE replace([CEPC_LTEXT],' ','') end as [CEPC_LTEXT],
	CASE WHEN replace([CEPC_VERAK],' ','') = '' then NULL ELSE replace([CEPC_VERAK],' ','') end as [CEPC_VERAK],
	CASE WHEN replace([CEPC_ABTEI],' ','') = '' then NULL ELSE replace([CEPC_ABTEI],' ','') end as [CEPC_ABTEI],
	CASE WHEN replace([CEPC_STATUS],' ','') = '' then NULL ELSE replace([CEPC_STATUS],' ','') end as [CEPC_STATUS],
	CASE WHEN replace([CEPC_KHINR],' ','') = '' then NULL ELSE replace([CEPC_KHINR],' ','') end as [CEPC_KHINR],
	CASE WHEN replace([CEPC_HITXT],' ','') = '' then NULL ELSE replace([CEPC_HITXT],' ','') end as [CEPC_HITXT],
	CASE WHEN replace([CEPC_DATAB],' ','') = '' then '00000000' WHEN replace([CEPC_DATAB],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CEPC_DATAB]),'YYYYMMDD'),' ','') end as [CEPC_DATAB],
	CASE WHEN replace([CEPC_DATBI],' ','') = '' then '00000000' WHEN replace([CEPC_DATBI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CEPC_DATBI]),'YYYYMMDD'),' ','') end as [CEPC_DATBI],
	CASE WHEN replace([CEPC_ERSDA],' ','') = '' then '00000000' WHEN replace([CEPC_ERSDA],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CEPC_ERSDA]),'YYYYMMDD'),' ','') end as [CEPC_ERSDA],
	CASE WHEN replace([CEPC_DATUM],' ','') = '' then '00000000' WHEN replace([CEPC_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([CEPC_DATUM]),'YYYYMMDD'),' ','') end as [CEPC_DATUM]
	from
	[dbo].[MD_ProfitCenter]
	WHERE [CEPC_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
