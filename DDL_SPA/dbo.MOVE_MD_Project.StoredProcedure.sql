USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Project]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Project]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Project]
(
[HASH_PRJ_UNIQUE],
[HASH_PRJ],
[HASH_PRJ_PSPID],
[HASH_PRJ_POSID],
[HASH_PRJ_ORDER],
[PROJ_SYSID],
[PROJ_MANDT],
[PROJ_VBUKR],
[PROJ_PSPID],
[PROJ_POST1],
[PROJ_PLFAZ],
[PROJ_PLSEZ],
[PROJ_VERNA],
[PROJ_ASTNA],
[PROJ_ISTAT],
[PROJ_SPRAS],
[PROJ_TXT30],
[PROJ_PRCTR],
[PROJ_POSID],
[PROJ_PSPNR],
[PROJ_PRPS_POST1],
[PROJ_ERDAT],
[PROJ_AEDAT],
[PROJ_DATUM],
[PROJ_ZZBKZ]

)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([PROJ_SYSID],'"',''),' ',''),REPLACE(REPLACE([PROJ_MANDT],'"',''),' ',''),REPLACE(REPLACE([PROJ_SPRAS],'"',''),' ',''),COALESCE(REPLACE(REPLACE([PROJ_PSPID],'"',''),' ',''),REPLACE(REPLACE([PROJ_POSID],'"',''),' ','')))) as [HASH_PRJ_UNIQUE],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([PROJ_SYSID],'"',''),' ',''),REPLACE(REPLACE([PROJ_MANDT],'"',''),' ',''),COALESCE(REPLACE(REPLACE([PROJ_PSPID],'"',''),' ',''),REPLACE(REPLACE([PROJ_POSID],'"',''),' ','')))) as [HASH_PRJ],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([PROJ_SYSID],'"',''),' ',''),REPLACE(REPLACE([PROJ_MANDT],'"',''),' ',''),REPLACE(REPLACE([PROJ_PSPID],'"',''),' ',''))) as [HASH_PRJ_PSPID],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([PROJ_SYSID],'"',''),' ',''),REPLACE(REPLACE([PROJ_MANDT],'"',''),' ',''),REPLACE(REPLACE([PROJ_POSID],'"',''),' ',''))) as [HASH_PRJ_POSID],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([PROJ_SYSID],'"',''),' ',''),REPLACE(REPLACE([PROJ_MANDT],'"',''),' ',''),REPLACE(REPLACE([PROJ_PSPNR],'"',''),' ',''))) as [HASH_PRJ_ORDER],
REPLACE([PROJ_SYSID] ,'"',''),
REPLACE([PROJ_MANDT] ,'"',''),
REPLACE([PROJ_VBUKR] ,'"',''),
REPLACE([PROJ_PSPID] ,'"',''),
REPLACE([PROJ_POST1] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([PROJ_PLFAZ] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([PROJ_PLFAZ],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([PROJ_PLFAZ],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [PROJ_PLFAZ],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([PROJ_PLSEZ] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([PROJ_PLSEZ],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([PROJ_PLSEZ],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [PROJ_PLSEZ],
REPLACE([PROJ_VERNA] ,'"',''),
REPLACE([PROJ_ASTNA] ,'"',''),
REPLACE([PROJ_ISTAT] ,'"',''),
REPLACE([PROJ_SPRAS] ,'"',''),
REPLACE([PROJ_TXT30] ,'"',''),
REPLACE([PROJ_PRCTR] ,'"',''),
REPLACE([PROJ_POSID] ,'"',''),
REPLACE([PROJ_PSPNR] ,'"',''),
REPLACE([PROJ_PRPS_POST1] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([PROJ_ERDAT] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([PROJ_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([PROJ_ERDAT],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [PROJ_ERDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([PROJ_AEDAT] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([PROJ_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([PROJ_AEDAT],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [PROJ_AEDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([PROJ_DATUM] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([PROJ_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([PROJ_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [PROJ_DATUM],
REPLACE([PROJ_ZZBKZ],'"','')
FROM
[dbo].[MD_Project_ETL]
where [PROJ_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
