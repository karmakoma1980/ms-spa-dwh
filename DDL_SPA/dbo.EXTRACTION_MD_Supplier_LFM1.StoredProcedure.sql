USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Supplier_LFM1]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Supplier_LFM1]
AS
BEGIN
	SET NOCOUNT ON;
select
'LFM1_SYSID',
'LFM1_MANDT',
'LFM1_LIFNR',
'LFM1_EKORG',
'LFM1_ZTERM',
'LFM1_LOEVM',
'LFM1_SPERM',
'LFM1_DATUM'
union all
select	
	CASE WHEN replace([LFM1_SYSID],' ','') = '' then NULL ELSE replace([LFM1_SYSID],' ','') end as [LFM1_SYSID],
	CASE WHEN replace([LFM1_MANDT],' ','') = '' then NULL ELSE replace([LFM1_MANDT],' ','') end as [LFM1_MANDT],
	CASE WHEN replace([LFM1_LIFNR],' ','') = '' then NULL ELSE replace([LFM1_LIFNR],' ','') end as [LFM1_LIFNR],
	CASE WHEN replace([LFM1_EKORG],' ','') = '' then NULL ELSE replace([LFM1_EKORG],' ','') end as [LFM1_EKORG],
	CASE WHEN replace([LFM1_ZTERM],' ','') = '' then NULL ELSE replace([LFM1_ZTERM],' ','') end as [LFM1_ZTERM],
	CASE WHEN replace([LFM1_LOEVM],' ','') = '' then NULL ELSE replace([LFM1_LOEVM],' ','') end as [LFM1_LOEVM],
	CASE WHEN replace([LFM1_SPERM],' ','') = '' then NULL ELSE replace([LFM1_SPERM],' ','') end as [LFM1_SPERM],
	CASE WHEN replace([LFM1_DATUM],' ','') = '' then '00000000' WHEN replace([LFM1_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([LFM1_DATUM]),'YYYYMMDD'),' ','') end as [LFM1_DATUM]
	from
	[dbo].[MD_Supplier_LFM1]
	WHERE [LFM1_SYSID] not in ('LM3','IE3')
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
