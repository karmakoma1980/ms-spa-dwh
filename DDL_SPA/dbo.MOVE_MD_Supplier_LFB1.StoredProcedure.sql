USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Supplier_LFB1]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Supplier_LFB1]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Supplier_LFB1]
(
[HASH_SUPPLIER_LFB1],
[HASH_SUPPLIER_LFA1],
[LFB1_SYSID],
[LFB1_MANDT],
[LFB1_LIFNR],
[LFB1_BUKRS],
[LFB1_ZTERM],
[LFB1_ZAHLS],
[LFB1_LOEVM],
[LFB1_SPERR],
[LFB1_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([LFB1_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([LFB1_LIFNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([LFB1_BUKRS] ,'"','')),' ',''))) as [HASH_SUPPLIER_LFB1],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([LFB1_SYSID],'"',''),' ',''),REPLACE(REPLACE([LFB1_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([LFB1_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
REPLACE([LFB1_SYSID] ,'"',''),
REPLACE([LFB1_MANDT] ,'"',''),
[dbo].[rem_0](REPLACE([LFB1_LIFNR],'"','')),
[dbo].[add_0](4,REPLACE([LFB1_BUKRS] ,'"','')),
REPLACE([LFB1_ZTERM] ,'"',''),
REPLACE([LFB1_ZAHLS] ,'"',''),
REPLACE([LFB1_LOEVM] ,'"',''),
REPLACE([LFB1_SPERR] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([LFB1_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([LFB1_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([LFB1_DATUM], CHAR(13), ''), CHAR(10), ''),'"','')) 
		ELSE NULL
	END AS [LFB1_DATUM]
FROM
[dbo].[MD_Supplier_LFB1_ETL]
where [LFB1_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
