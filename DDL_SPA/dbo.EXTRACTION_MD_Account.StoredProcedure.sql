USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Account]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<JOPE>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Account]
AS
BEGIN
	SET NOCOUNT ON;
select
'SKA1_SYSID',
'SKA1_MANDT',
'SKA1_BUKRS',
'SKA1_SAKNR',
'SKA1_TXT50',
'SKA1_KTOPL',
'SKA1_KTPLT',
'SKA1_SKB1_ERDAT',
'SKA1_ERDAT',
'SKA1_DATUM'
union all
select	
	CASE WHEN replace([SKA1_SYSID],' ','') = '' then NULL ELSE replace([SKA1_SYSID],' ','') end as [SKA1_SYSID],
	CASE WHEN replace([SKA1_MANDT],' ','') = '' then NULL ELSE replace([SKA1_MANDT],' ','') end as [SKA1_MANDT],
	CASE WHEN replace([SKA1_BUKRS],' ','') = '' then NULL ELSE replace([SKA1_BUKRS],' ','') end as [SKA1_BUKRS],
	CASE WHEN replace([SKA1_SAKNR],' ','') = '' then NULL ELSE replace([SKA1_SAKNR],' ','') end as [SKA1_SAKNR],
	CASE WHEN replace([SKA1_TXT50],' ','') = '' then NULL ELSE replace([SKA1_TXT50],' ','') end as [SKA1_TXT50],
	CASE WHEN replace([SKA1_KTOPL],' ','') = '' then NULL ELSE replace([SKA1_KTOPL],' ','') end as [SKA1_KTOPL],
	CASE WHEN replace([SKA1_KTPLT],' ','') = '' then NULL ELSE replace([SKA1_KTPLT],' ','') end as [SKA1_KTPLT],
	CASE WHEN replace([SKA1_SKB1_ERDAT],' ','') = '' then '00000000' WHEN replace([SKA1_SKB1_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([SKA1_SKB1_ERDAT]),'YYYYMMDD'),' ','') end as [SKA1_SKB1_ERDAT],
	CASE WHEN replace([SKA1_ERDAT],' ','') = '' then '00000000' WHEN replace([SKA1_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([SKA1_ERDAT]),'YYYYMMDD'),' ','') end as [SKA1_ERDAT],
	CASE WHEN replace([SKA1_DATUM],' ','') = '' then '00000000' WHEN replace([SKA1_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([SKA1_DATUM]),'YYYYMMDD'),' ','') end as [SKA1_DATUM]
	from
	[dbo].[MD_Account]
	WHERE [SKA1_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
