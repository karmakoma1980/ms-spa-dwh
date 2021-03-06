USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Supplier_LFM1]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Supplier_LFM1]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Supplier_LFM1]
(
[HASH_SUPPLIER_LFM1],
[HASH_SUPPLIER_LFA1],
[LFM1_SYSID],
[LFM1_MANDT],
[LFM1_LIFNR],
[LFM1_EKORG],
[LFM1_ZTERM],
[LFM1_LOEVM],
[LFM1_SPERM],
[LFM1_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([LFM1_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([LFM1_LIFNR],'"','')),' ',''),REPLACE([dbo].[rem_0](REPLACE([LFM1_EKORG],'"','')),' ',''))) as [HASH_SUPPLIER_LFM1],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([LFM1_SYSID],'"',''),' ',''),REPLACE(REPLACE([LFM1_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([LFM1_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
REPLACE([LFM1_SYSID],'"',''),
REPLACE([LFM1_MANDT],'"',''),
[dbo].[rem_0](REPLACE([LFM1_LIFNR],'"','')),
REPLACE([LFM1_EKORG],'"',''),
REPLACE([LFM1_ZTERM],'"',''),
REPLACE([LFM1_LOEVM],'"',''),
REPLACE([LFM1_SPERM],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([LFM1_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([LFM1_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([LFM1_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [LFM1_DATUM]
FROM
[dbo].[MD_Supplier_LFM1_ETL]
where [LFM1_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
