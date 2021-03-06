USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_PurchasingGroup]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_PurchasingGroup]
AS
BEGIN
	SET NOCOUNT ON;
select
'T024_SYSID',
'T024_MANDT',
'T024_EKORG',
'T024_EKGRP',
'T024_EKNAM',
'T024_TELFX',
'T024_TEL_NUMBER',
'T024_TEL_EXTENS',
'T024_TITLE',
'T024_ZZ_DNAME',
'T024_ZZ_TNAME',
'T024_ZZ_ABTLG',
'T024_ZZ_STBEZ',
'T024_DATUM'
union all
select	
	CASE WHEN replace([T024_SYSID],' ','') = '' then NULL ELSE replace([T024_SYSID],' ','') end as [T024_SYSID],
	CASE WHEN replace([T024_MANDT],' ','') = '' then NULL ELSE replace([T024_MANDT],' ','') end as [T024_MANDT],
	CASE WHEN replace([T024_EKORG],' ','') = '' then NULL ELSE replace([T024_EKORG],' ','') end as [T024_EKORG],
	CASE WHEN replace([T024_EKGRP],' ','') = '' then NULL ELSE replace([T024_EKGRP],' ','') end as [T024_EKGRP],
	CASE WHEN replace([T024_EKNAM],' ','') = '' then NULL ELSE replace([T024_EKNAM],' ','') end as [T024_EKNAM],
	CASE WHEN replace([T024_TELFX],' ','') = '' then NULL ELSE replace([T024_TELFX],' ','') end as [T024_TELFX],
	CASE WHEN replace([T024_TEL_NUMBER],' ','') = '' then NULL ELSE replace([T024_TEL_NUMBER],' ','') end as [T024_TEL_NUMBER],
	CASE WHEN replace([T024_TEL_EXTENS],' ','') = '' then NULL ELSE replace([T024_TEL_EXTENS],' ','') end as [T024_TEL_EXTENS],
	CASE WHEN replace([T024_TITLE],' ','') = '' then NULL ELSE replace([T024_TITLE],' ','') end as [T024_TITLE],
	CASE WHEN replace([T024_ZZ_DNAME],' ','') = '' then NULL ELSE replace([T024_ZZ_DNAME],' ','') end as [T024_ZZ_DNAME],
	CASE WHEN replace([T024_ZZ_TNAME],' ','') = '' then NULL ELSE replace([T024_ZZ_TNAME],' ','') end as [T024_ZZ_TNAME],
	CASE WHEN replace([T024_ZZ_ABTLG],' ','') = '' then NULL ELSE replace([T024_ZZ_ABTLG],' ','') end as [T024_ZZ_ABTLG],
	CASE WHEN replace([T024_ZZ_STBEZ],' ','') = '' then NULL ELSE replace([T024_ZZ_STBEZ],' ','') end as [T024_ZZ_STBEZ],
	CASE WHEN replace([T024_DATUM],' ','') = '' then '00000000' WHEN replace([T024_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([T024_DATUM]),'YYYYMMDD'),' ','') end as [T024_DATUM]
	from
	[dbo].[MD_PurchasingGroup]
	WHERE [T024_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))

END


GO
