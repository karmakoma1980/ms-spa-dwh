USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Supplier_LFB1]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Supplier_LFB1]
AS
BEGIN
	SET NOCOUNT ON;
select
'LFB1_SYSID',
'LFB1_MANDT',
'LFB1_LIFNR',
'LFB1_BUKRS',
'LFB1_ZTERM',
'LFB1_ZAHLS',
'LFB1_LOEVM',
'LFB1_SPERR',
'LFB1_DATUM'
union all
select	
	CASE WHEN replace([LFB1_SYSID],' ','') = '' then NULL ELSE replace([LFB1_SYSID],' ','') end as [LFB1_SYSID],
	CASE WHEN replace([LFB1_MANDT],' ','') = '' then NULL ELSE replace([LFB1_MANDT],' ','') end as [LFB1_MANDT],
	CASE WHEN replace([LFB1_LIFNR],' ','') = '' then NULL ELSE replace([LFB1_LIFNR],' ','') end as [LFB1_LIFNR],
	CASE WHEN replace([LFB1_BUKRS],' ','') = '' then NULL ELSE replace([LFB1_BUKRS],' ','') end as [LFB1_BUKRS],
	CASE WHEN replace([LFB1_ZTERM],' ','') = '' then NULL ELSE replace([LFB1_ZTERM],' ','') end as [LFB1_ZTERM],
	CASE WHEN replace([LFB1_ZAHLS],' ','') = '' then NULL ELSE replace([LFB1_ZAHLS],' ','') end as [LFB1_ZAHLS],
	CASE WHEN replace([LFB1_LOEVM],' ','') = '' then NULL ELSE replace([LFB1_LOEVM],' ','') end as [LFB1_LOEVM],
	CASE WHEN replace([LFB1_SPERR],' ','') = '' then NULL ELSE replace([LFB1_SPERR],' ','') end as [LFB1_SPERR],
	CASE WHEN replace([LFB1_DATUM],' ','') = '' then '00000000' WHEN replace([LFB1_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([LFB1_DATUM]),'YYYYMMDD'),' ','') end as [LFB1_DATUM]
	from
	[dbo].[MD_Supplier_LFB1]
	WHERE [LFB1_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
