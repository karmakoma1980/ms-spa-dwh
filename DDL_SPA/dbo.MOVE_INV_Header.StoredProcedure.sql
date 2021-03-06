USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_INV_Header]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_INV_Header]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[INV_Header]
(
[HASH_INV_HEADER_UNIQUE],
[HASH_INV_HEADER],
[BKPF_SYSID],
[BKPF_MANDT],
[BKPF_GJAHR],
[BKPF_BELNR],
[BKPF_BUKRS],
[BKPF_BUDAT],
[BKPF_CPUDT],
[BKPF_BLDAT],
[BKPF_WAERS],
[BKPF_KURSF],
[BKPF_WWERT],
[BKPF_HWAER],
[BKPF_BKTXT],
[BKPF_BLART],
[BKPF_XBLNR],
[BKPF_BSTAT],
[BKPF_STJAH],
[BKPF_STBLG],
[BKPF_XREVERSAL],
[BKPF_ERUSERNAME],
[BKPF_AEUSERNAME],
[BKPF_AEDAT],
[BKPF_DATUM],
[BKPF_AUSBK]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BKPF_SYSID],'"',''),' ',''),REPLACE(REPLACE([BKPF_MANDT],'"',''),' ',''),REPLACE(REPLACE([BKPF_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BKPF_BELNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([BKPF_BUKRS],'"','')),' ',''))) as [HASH_INV_HEADER_UNIQUE],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BKPF_SYSID],'"',''),' ',''),REPLACE(REPLACE([BKPF_MANDT],'"',''),' ',''),REPLACE(REPLACE([BKPF_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BKPF_BELNR],'"','')),' ',''))) as [HASH_INV_HEADER],
REPLACE([BKPF_SYSID],'"',''),
REPLACE([BKPF_MANDT],'"',''),
REPLACE([BKPF_GJAHR],'"',''),
[dbo].[add_0](10,REPLACE([BKPF_BELNR],'"','')),
[dbo].[add_0](4,REPLACE([BKPF_BUKRS],'"','')),
CASE 
WHEN REPLACE(REPLACE(REPLACE([BKPF_BUDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([BKPF_BUDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BKPF_BUDAT],CHAR(13),''),CHAR(10),''),'"','')) 
ELSE NULL
END AS [BKPF_BUDAT],
CASE 
WHEN REPLACE(REPLACE(REPLACE([BKPF_CPUDT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([BKPF_CPUDT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BKPF_CPUDT],CHAR(13),''),CHAR(10),''),'"','')) 
ELSE NULL
END AS [BKPF_CPUDT],
CASE 
WHEN REPLACE(REPLACE(REPLACE([BKPF_BLDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([BKPF_BLDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BKPF_BLDAT],CHAR(13),''),CHAR(10),''),'"','')) 
ELSE NULL
END AS [BKPF_BLDAT],
REPLACE([BKPF_WAERS],'"',''),
CASE
WHEN 
ISNUMERIC(REPLACE(REPLACE(REPLACE([BKPF_KURSF],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,5),REPLACE(REPLACE(REPLACE([BKPF_KURSF],CHAR(13),''),CHAR(10),''),'"',''))
ELSE NULL
END AS [BKPF_KURSF],
CASE 
WHEN REPLACE(REPLACE(REPLACE([BKPF_WWERT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([BKPF_WWERT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BKPF_WWERT],CHAR(13),''),CHAR(10),''),'"','')) 
ELSE NULL
END AS [BKPF_WWERT],
REPLACE([BKPF_HWAER],'"',''),
REPLACE([BKPF_BKTXT],'"',''),
REPLACE([BKPF_BLART],'"',''),
REPLACE([BKPF_XBLNR],'"',''),
REPLACE([BKPF_BSTAT],'"',''),
REPLACE([BKPF_STJAH],'"',''),
REPLACE([BKPF_STBLG],'"',''),
REPLACE([BKPF_XREVERSAL],'"',''),
REPLACE([BKPF_ERUSERNAME],'"',''),
REPLACE([BKPF_AEUSERNAME],'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([BKPF_AEDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([BKPF_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BKPF_AEDAT],CHAR(13),''),CHAR(10),''),'"','')) 
ELSE NULL
END AS [BKPF_AEDAT],
CASE 
WHEN REPLACE(REPLACE(REPLACE([BKPF_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([BKPF_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BKPF_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
ELSE NULL
END AS [BKPF_DATUM],
REPLACE([BKPF_AUSBK],'"','')
FROM
[dbo].[INV_Header_ETL]
where [BKPF_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
