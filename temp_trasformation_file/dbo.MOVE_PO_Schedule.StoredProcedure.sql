USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_PO_Schedule]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Salvigni - SanGy - Daniele>
-- Create date: <Januaryr, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_PO_Schedule]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[PO_Schedule]
(
	[HASH_PO_SCHEDULE],
	[HASH_PO_ITEM],
	[EKET_SYSID],
	[EKET_MANDT],
	[EKET_EBELN],
	[EKET_EBELP],
	[EKET_ETENR],
	[EKET_ESTKZ],
	[EKET_CHARG],
	[EKET_LICHA],
	[EKET_BEDAT],
	[EKET_EINDT],
	[EKET_SLFDT],
	[EKET_MENGE],
	[EKET_WEMNG],
	[EKET_DABMG],
	[EKET_BANFN],
	[EKET_BNFPO],
	[EKET_MAHNZ],
	[EKET_GLMNG],
	[EKET_AMENG],
	[EKET_WAMNG],
	[EKET_FIXKZ],
	[EKET_ERUSERNAME],
	[EKET_AEUSERNAME],
	[EKET_UDATE],
	[EKET_DATUM]
	)
SELECT
[HASH_PO_SCHEDULE],
[HASH_PO_ITEM],
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKET_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKET_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKET_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKET_EBELP] ,'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([EKET_ETENR] ,'"','')),' ',''))) as [HASH_PO_SCHEDULE],
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKET_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKET_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKET_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKET_EBELP] ,'"','')),' ',''))) as [HASH_PO_ITEM],
REPLACE([EKET_SYSID],'"',''),
REPLACE([EKET_MANDT],'"',''),
[dbo].[add_0](10,REPLACE([EKET_EBELN] ,'"','')),
[dbo].[add_0](5,REPLACE([EKET_EBELP] ,'"','')),
[dbo].[add_0](4,REPLACE([EKET_ETENR] ,'"','')),
REPLACE([EKET_ESTKZ],'"',''),
REPLACE([EKET_CHARG],'"',''),
REPLACE([EKET_LICHA],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKET_BEDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKET_BEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKET_BEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_BEDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKET_EINDT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKET_EINDT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKET_EINDT], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_EINDT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKET_SLFDT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKET_SLFDT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKET_SLFDT], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_SLFDT],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKET_MENGE], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKET_MENGE], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_MENGE],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKET_WEMNG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKET_WEMNG], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_WEMNG],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKET_DABMG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKET_DABMG], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_DABMG],
	REPLACE([EKET_BANFN] ,'"',''),
	[dbo].[add_0](5,REPLACE([EKET_BNFPO] ,'"','')),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKET_MAHNZ], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKET_MAHNZ], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_MAHNZ],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKET_GLMNG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKET_GLMNG], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_GLMNG],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKET_AMENG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKET_AMENG], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_AMENG],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKET_WAMNG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKET_WAMNG], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_WAMNG],
REPLACE([EKET_FIXKZ],'"',''),
REPLACE([EKET_ERUSERNAME],'"',''),
REPLACE([EKET_AEUSERNAME],'"',''),

CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKET_UDATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKET_UDATE], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKET_UDATE], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_UDATE],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKET_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKET_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKET_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [EKET_DATUM]
FROM
[dbo].[PO_Schedule_ETL]
where [EKET_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
