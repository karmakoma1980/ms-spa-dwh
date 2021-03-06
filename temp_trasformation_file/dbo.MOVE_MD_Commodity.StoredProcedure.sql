USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Commodity]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Commodity]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Commodity]
(
[HASH_ADCCS],
[HASH_ADCCS_LANG],
[T023T_SYSID],
[T023T_MANDT],
[T023T_SPRAS],
[T023T_MATKL],
[T023T_WGBEZ],
[T023T_WGBEZ60],
[T023T_DATUM]
)
SELECT
	HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([T023T_SYSID],'"',''),' ',''),REPLACE(REPLACE([T023T_MANDT],'"',''),' ',''),REPLACE(REPLACE([T023T_MATKL],'"',''),' ',''))) as [HASH_ADCCS],
	HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([T023T_SYSID],'"',''),' ',''),REPLACE(REPLACE([T023T_MANDT],'"',''),' ',''),REPLACE(REPLACE([T023T_SPRAS],'"',''),' ',''),REPLACE(REPLACE([T023T_MATKL],'"',''),' ',''))) as [HASH_ADCCS_LANG],
	REPLACE([T023T_SYSID],'"',''),
	REPLACE([T023T_MANDT],'"',''),
	REPLACE([T023T_SPRAS],'"',''),
	REPLACE([T023T_MATKL],'"',''),
	REPLACE([T023T_WGBEZ],'"',''),
	REPLACE([T023T_WGBEZ60],'"',''),
	CASE 
		WHEN REPLACE(REPLACE(REPLACE([T023T_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([T023T_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([T023T_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
		END AS [T023T_DATUM]
	FROM
	[dbo].[MD_Commodity_ETL]
	where [T023T_MANDT] is not null
	AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
