USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Plant]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Plant]
AS
BEGIN
	SET NOCOUNT ON;
select
'T001W_SYSID',
'T001W_MANDT',
'T001W_WERKS',
'T001W_NAME1',
'T001W_NAME2',
'T001W_STRAS',
'T001W_ORT01',
'T001W_REGIO',
'T001W_LAND1',
'T001W_PSTLZ',
'T001W_BEZEI',
'T001W_DATUM'
union all
select	
	CASE WHEN replace([T001W_SYSID],' ','') = '' then NULL ELSE replace([T001W_SYSID],' ','') end as [T001W_SYSID],
	CASE WHEN replace([T001W_MANDT],' ','') = '' then NULL ELSE replace([T001W_MANDT],' ','') end as [T001W_MANDT],
	CASE WHEN replace([T001W_WERKS],' ','') = '' then NULL ELSE replace([T001W_WERKS],' ','') end as [T001W_WERKS],
	CASE WHEN replace([T001W_NAME1],' ','') = '' then NULL ELSE replace([T001W_NAME1],' ','') end as [T001W_NAME1],
	CASE WHEN replace([T001W_NAME2],' ','') = '' then NULL ELSE replace([T001W_NAME2],' ','') end as [T001W_NAME2],
	CASE WHEN replace([T001W_STRAS],' ','') = '' then NULL ELSE replace([T001W_STRAS],' ','') end as [T001W_STRAS],
	CASE WHEN replace([T001W_ORT01],' ','') = '' then NULL ELSE replace([T001W_ORT01],' ','') end as [T001W_ORT01],
	CASE WHEN replace([T001W_REGIO],' ','') = '' then NULL ELSE replace([T001W_REGIO],' ','') end as [T001W_REGIO],
	CASE WHEN replace([T001W_LAND1],' ','') = '' then NULL ELSE replace([T001W_LAND1],' ','') end as [T001W_LAND1],
	CASE WHEN replace([T001W_PSTLZ],' ','') = '' then NULL ELSE replace([T001W_PSTLZ],' ','') end as [T001W_PSTLZ],
	CASE WHEN replace([T001W_BEZEI],' ','') = '' then NULL ELSE replace([T001W_BEZEI],' ','') end as [T001W_BEZEI],
	CASE WHEN replace([T001W_DATUM],' ','') = '' then '00000000' WHEN replace([T001W_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([T001W_DATUM]),'YYYYMMDD'),' ','') end as [T001W_DATUM]
	from
	[dbo].[MD_Plant]
	WHERE [T001W_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
