USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_ProdOrder_Item]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_ProdOrder_Item]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[ProdOrder_Item]
(
[HASH_PRODORDER_ITEM],
[HASH_PRODORDER_HEADER],
[HASH_SALESORDER_ITEM],
[AFPO_SYSID],
[AFPO_MANDT],
[AFPO_AUFNR],
[AFPO_POSNR],
[AFPO_SOBES],
[AFPO_PROJN],
[AFPO_KDAUF],
[AFPO_KDPOS],
[AFPO_PSAMG],
[AFPO_PSMNG],
[AFPO_WEMNG],
[AFPO_IAMNG],
[AFPO_MEINS],
[AFPO_MATNR],
[AFPO_LTRMI],
[AFPO_DWERK],
[AFPO_DAUTY],
[AFPO_DAUAT],
[AFPO_DGLTP],
[AFPO_DGLTS],
[AFPO_SERNP],
[AFPO_XLOEK],
[AFPO_ERDATE],
[AFPO_UDATE],
[AFPO_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([AFPO_SYSID],'"',''),' ',''),REPLACE(REPLACE([AFPO_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([AFPO_AUFNR] ,'"','')),' ',''),REPLACE(REPLACE([AFPO_POSNR],'"',''),' ',''))) as [HASH_PRODORDER_ITEM],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([AFPO_SYSID],'"',''),' ',''),REPLACE(REPLACE([AFPO_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([AFPO_AUFNR] ,'"','')),' ',''))) as [HASH_PRODORDER_HEADER],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([AFPO_SYSID],'"',''),' ',''),REPLACE(REPLACE([AFPO_MANDT],'"',''),' ',''),REPLACE(REPLACE([AFPO_KDAUF],'"',''),' ',''),REPLACE(REPLACE([AFPO_KDPOS],'"',''),' ',''))) as [HASH_SALESORDER_ITEM],
REPLACE([AFPO_SYSID] ,'"',''),
REPLACE([AFPO_MANDT] ,'"',''),
REPLACE([AFPO_AUFNR] ,'"',''),
REPLACE([AFPO_POSNR] ,'"',''),
REPLACE([AFPO_SOBES] ,'"',''),
REPLACE([AFPO_PROJN] ,'"',''),
REPLACE([AFPO_KDAUF] ,'"',''),
REPLACE([AFPO_KDPOS] ,'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([AFPO_PSAMG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN 	TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([AFPO_PSAMG],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AFPO_PSAMG],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([AFPO_PSMNG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([AFPO_PSMNG],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AFPO_PSMNG],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([AFPO_WEMNG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([AFPO_WEMNG],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AFPO_WEMNG],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([AFPO_IAMNG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([AFPO_IAMNG],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AFPO_IAMNG],
REPLACE([AFPO_MEINS] ,'"',''),
REPLACE([AFPO_MATNR] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AFPO_LTRMI] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AFPO_LTRMI], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AFPO_LTRMI], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [AFPO_LTRMI],
REPLACE([AFPO_DWERK] ,'"',''),
REPLACE([AFPO_DAUTY] ,'"',''),
REPLACE([AFPO_DAUAT] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AFPO_DGLTP] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AFPO_DGLTP], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AFPO_DGLTP], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [AFPO_DGLTP],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AFPO_DGLTS] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AFPO_DGLTS], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AFPO_DGLTS], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [AFPO_DGLTS],
REPLACE([AFPO_SERNP] ,'"',''),
REPLACE([AFPO_XLOEK] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AFPO_ERDATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AFPO_ERDATE], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AFPO_ERDATE], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [AFPO_ERDATE],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AFPO_UDATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AFPO_UDATE], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AFPO_UDATE], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [AFPO_UDATE],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AFPO_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AFPO_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AFPO_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [AFPO_DATUM]
FROM
[dbo].[ProdOrder_Item_ETL]
where [AFPO_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
