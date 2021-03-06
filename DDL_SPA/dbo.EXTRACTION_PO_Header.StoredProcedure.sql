USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_PO_Header]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Gali GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_PO_Header]
AS
BEGIN
	SET NOCOUNT ON;
select
'EKKO_SYSID',
'EKKO_MANDT',
'EKKO_BUKRS',
'EKKO_EBELN',
'EKKO_LOEKZ',
'EKKO_AEDAT',
'EKKO_BEDAT',
'EKKO_WAERS',
'EKKO_WKURS',
'EKKO_KUFIX',
'EKKO_CWAERS',
'EKKO_LONGTEXT',
'EKKO_LIFNR',
'EKKO_BSTYP',
'EKKO_BSART',
'EKKO_INCO1',
'EKKO_INCO2',
'EKKO_ZTERM',
'EKKO_EKORG',
'EKKO_EKGRP',
'EKKO_IHREZ',
'EKKO_UNSEZ',
'EKKO_KDATB',
'EKKO_KDATE',
'EKKO_KONNR',
'EKKO_ANGNR',
'EKKO_IHRAN',
'EKKO_SUBMI',
'EKKO_STCEG',
'EKKO_EKGSM',
'EKKO_UEBDT',
'EKKO_ERNAM',
'EKKO_AEUSERNAME',
'EKKO_UDATE',
'EKKO_DATUM'
union all
select	
	CASE WHEN replace([EKKO_SYSID],' ','') = '' then NULL ELSE replace([EKKO_SYSID],' ','') end as [EKKO_SYSID],
	CASE WHEN replace([EKKO_MANDT],' ','') = '' then NULL ELSE replace([EKKO_MANDT],' ','') end as [EKKO_MANDT],
	CASE WHEN replace([EKKO_BUKRS],' ','') = '' then NULL ELSE replace([EKKO_BUKRS],' ','') end as [EKKO_BUKRS],
	CASE WHEN replace([EKKO_EBELN],' ','') = '' then NULL ELSE replace([EKKO_EBELN],' ','') end as [EKKO_EBELN],
	CASE WHEN replace([EKKO_LOEKZ],' ','') = '' then NULL ELSE replace([EKKO_LOEKZ],' ','') end as [EKKO_LOEKZ],
	CASE WHEN replace([EKKO_AEDAT],' ','') = '' then '00000000' WHEN replace([EKKO_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_AEDAT]),'YYYYMMDD'),' ','') end as [EKKO_AEDAT],
	CASE WHEN replace([EKKO_BEDAT],' ','') = '' then '00000000' WHEN replace([EKKO_BEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_BEDAT]),'YYYYMMDD'),' ','') end as [EKKO_BEDAT],
	CASE WHEN replace([EKKO_WAERS],' ','') = '' then NULL ELSE replace([EKKO_WAERS],' ','') end as [EKKO_WAERS],
	CASE WHEN replace([EKKO_WKURS],' ','') = '' then '0.00000' WHEN replace([EKKO_WKURS],' ','') IS NULL THEN '0.00000' ELSE replace([EKKO_WKURS],' ','') end as [EKKO_WKURS],
	CASE WHEN replace([EKKO_KUFIX],' ','') = '' then NULL ELSE replace([EKKO_KUFIX],' ','') end as [EKKO_KUFIX],
	CASE WHEN replace([EKKO_CWAERS],' ','') = '' then NULL ELSE replace([EKKO_CWAERS],' ','') end as [EKKO_CWAERS],
	[EKKO_LONGTEXT],
	CASE WHEN replace([EKKO_LIFNR],' ','') = '' then NULL ELSE replace([EKKO_LIFNR],' ','') end as [EKKO_LIFNR],
	CASE WHEN replace([EKKO_BSTYP],' ','') = '' then NULL ELSE replace([EKKO_BSTYP],' ','') end as [EKKO_BSTYP],
	CASE WHEN replace([EKKO_BSART],' ','') = '' then NULL ELSE replace([EKKO_BSART],' ','') end as [EKKO_BSART],
	CASE WHEN replace([EKKO_INCO1],' ','') = '' then NULL ELSE replace([EKKO_INCO1],' ','') end as [EKKO_INCO1],
	CASE WHEN replace([EKKO_INCO2],' ','') = '' then NULL ELSE replace([EKKO_INCO2],' ','') end as [EKKO_INCO2],
	CASE WHEN replace([EKKO_ZTERM],' ','') = '' then NULL ELSE replace([EKKO_ZTERM],' ','') end as [EKKO_ZTERM],
	CASE WHEN replace([EKKO_EKORG],' ','') = '' then NULL ELSE replace([EKKO_EKORG],' ','') end as [EKKO_EKORG],
	CASE WHEN replace([EKKO_EKGRP],' ','') = '' then NULL ELSE replace([EKKO_EKGRP],' ','') end as [EKKO_EKGRP],
	CASE WHEN replace([EKKO_IHREZ],' ','') = '' then NULL ELSE replace([EKKO_IHREZ],' ','') end as [EKKO_IHREZ],
	CASE WHEN replace([EKKO_UNSEZ],' ','') = '' then NULL ELSE replace([EKKO_UNSEZ],' ','') end as [EKKO_UNSEZ],
	CASE WHEN replace([EKKO_KDATB],' ','') = '' then '00000000' WHEN replace([EKKO_KDATB],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_KDATB]),'YYYYMMDD'),' ','') end as [EKKO_KDATB],
	CASE WHEN replace([EKKO_KDATE],' ','') = '' then '00000000' WHEN replace([EKKO_KDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_KDATE]),'YYYYMMDD'),' ','') end as [EKKO_KDATE],
	CASE WHEN replace([EKKO_KONNR],' ','') = '' then NULL ELSE replace([EKKO_KONNR],' ','') end as [EKKO_KONNR],
	CASE WHEN replace([EKKO_ANGNR],' ','') = '' then NULL ELSE replace([EKKO_ANGNR],' ','') end as [EKKO_ANGNR],
	CASE WHEN replace([EKKO_IHRAN],' ','') = '' then '00000000' WHEN replace([EKKO_IHRAN],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_IHRAN]),'YYYYMMDD'),' ','') end as [EKKO_IHRAN],
	CASE WHEN replace([EKKO_SUBMI],' ','') = '' then NULL ELSE replace([EKKO_SUBMI],' ','') end as [EKKO_SUBMI],
	CASE WHEN replace([EKKO_STCEG],' ','') = '' then NULL ELSE replace([EKKO_STCEG],' ','') end as [EKKO_STCEG],
	CASE WHEN replace([EKKO_EKGSM],' ','') = '' then NULL ELSE replace([EKKO_EKGSM],' ','') end as [EKKO_EKGSM],
	CASE WHEN replace([EKKO_UEBDT],' ','') = '' then '00000000' WHEN replace([EKKO_UEBDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_UEBDT]),'YYYYMMDD'),' ','') end as [EKKO_UEBDT],
	CASE WHEN replace([EKKO_ERNAM],' ','') = '' then NULL ELSE replace([EKKO_ERNAM],' ','') end as [EKKO_ERNAM],
	CASE WHEN replace([EKKO_AEUSERNAME],' ','') = '' then NULL ELSE replace([EKKO_AEUSERNAME],' ','') end as [EKKO_AEUSERNAME],
	CASE WHEN replace([EKKO_UDATE],' ','') = '' then '00000000' WHEN replace([EKKO_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_UDATE]),'YYYYMMDD'),' ','') end as [EKKO_UDATE],
	CASE WHEN replace([EKKO_DATUM],' ','') = '' then '00000000' WHEN replace([EKKO_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKO_DATUM]),'YYYYMMDD'),' ','') end as [EKKO_DATUM]
	from
	[dbo].[PO_Header]
	WHERE [EKKO_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
