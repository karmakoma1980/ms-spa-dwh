USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_CostCenter]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_CostCenter]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_CostCenter]
(
[HASH_COST_CENTER_UNIQUE],
[HASH_COST_CENTER],
[CSKS_SYSID],
[CSKS_MANDT],
[CSKS_KOKRS],
[CSKS_KOSTL],
[CSKS_SPRAS],
[CSKS_KTEXT],
[CSKS_LTEXT],
[CSKS_VERAK],
[CSKS_ABTEI],
[CSKS_RECID],
[CSKS_KHINR],
[CSKS_FUNC_AREA],
[CSKS_PRCTR],
[CSKS_DATAB],
[CSKS_DATBI],
[CSKS_ERSDA],
[CSKS_DATUM]
)
	SELECT
	HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([CSKS_SYSID],'"',''),' ',''),REPLACE(REPLACE([CSKS_MANDT],'"',''),' ',''),REPLACE(REPLACE([CSKS_KOKRS],'"',''),' ',''),REPLACE(REPLACE([CSKS_KOSTL],'"',''),' ',''),REPLACE(REPLACE([CSKS_DATAB],'"',''),' ',''))) as [HASH_COST_CENTER_UNIQUE],
	HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([CSKS_SYSID],'"',''),' ',''),REPLACE(REPLACE([CSKS_MANDT],'"',''),' ',''),REPLACE(REPLACE([CSKS_KOKRS],'"',''),' ',''),REPLACE(REPLACE([CSKS_KOSTL],'"',''),' ',''))) as [HASH_COST_CENTER],
	REPLACE([CSKS_SYSID],'"',''),
	REPLACE([CSKS_MANDT],'"',''),
	REPLACE([CSKS_KOKRS],'"',''),
	REPLACE([CSKS_KOSTL],'"',''),
	REPLACE([CSKS_SPRAS],'"',''),
	REPLACE([CSKS_KTEXT],'"',''),
	REPLACE([CSKS_LTEXT],'"',''),
	REPLACE([CSKS_VERAK],'"',''),
	REPLACE([CSKS_ABTEI],'"',''),
	REPLACE([CSKS_RECID],'"',''),
	REPLACE([CSKS_KHINR],'"',''),
	REPLACE([CSKS_FUNC_AREA],'"',''),
	REPLACE([CSKS_PRCTR],'"',''),
	CASE 
		WHEN REPLACE(REPLACE(REPLACE([CSKS_DATAB],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([CSKS_DATAB],CHAR(13),''),CHAR(10),''),'"',''))=1  THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CSKS_DATAB],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
		END AS [CSKS_DATAB],
	CASE 
		WHEN REPLACE(REPLACE(REPLACE([CSKS_DATBI],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([CSKS_DATBI],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CSKS_DATBI],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
		END AS [CSKS_DATBI],
	CASE 
		WHEN REPLACE(REPLACE(REPLACE([CSKS_ERSDA],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([CSKS_ERSDA],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CSKS_ERSDA],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
		END AS [CSKS_ERSDA],
	CASE 
		WHEN REPLACE(REPLACE(REPLACE([CSKS_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([CSKS_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CSKS_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
		END AS [CSKS_DATUM]
	FROM
	[dbo].[MD_CostCenter_ETL]
	where [CSKS_MANDT] is not null
	AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
