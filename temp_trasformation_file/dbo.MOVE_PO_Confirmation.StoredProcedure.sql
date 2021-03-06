USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_PO_Confirmation]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_PO_Confirmation]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[PO_Confirmation]
(
[HASH_PO_CONFIRMATION],
[HASH_PO_ITEM],
[EKES_SYSID],
[EKES_MANDT],
[EKES_EBELN],
[EKES_EBELP],
[EKES_ETENS],
[EKES_EBTYP],
[EKES_EINDT],
[EKES_LPEIN],
[EKES_UZEIT],
[EKES_ERDAT],
[EKES_EZEIT],
[EKES_MENGE],
[EKES_DABMG],
[EKES_ESTKZ],
[EKES_LOEKZ],
[EKES_KZDIS],
[EKES_XBLNR],
[EKES_VBELN],
[EKES_VBELP],
[EKES_MPROF],
[EKES_EMATN],
[EKES_MAHNZ],
[EKES_CHARG],
[EKES_UECHA],
[EKES_REF_ETENS],
[EKES_IMWRK],
[EKES_VBELN_ST],
[EKES_VBELP_ST],
[EKES_J_3AETENR],
[EKES_ERUSERNAME],
[EKES_AEUSERNAME],
[EKES_UDATE],
[EKES_DATUM] 
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKES_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKES_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKES_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKES_EBELP] ,'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([EKES_ETENS] ,'"','')),' ',''))) as [HASH_PO_CONFIRMATION],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKES_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKES_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKES_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKES_EBELP] ,'"','')),' ',''))) as [HASH_PO_ITEM],
REPLACE([EKES_SYSID],'"',''),
REPLACE([EKES_MANDT],'"',''),
[dbo].[add_0](10,REPLACE([EKES_EBELN] ,'"','')),
[dbo].[add_0](5,REPLACE([EKES_EBELP] ,'"','')),
[dbo].[add_0](4,REPLACE([EKES_ETENS] ,'"','')),
REPLACE([EKES_EBTYP],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKES_EINDT] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKES_EINDT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKES_EINDT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_EINDT],
REPLACE([EKES_LPEIN],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKES_UZEIT] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKES_UZEIT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKES_UZEIT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_UZEIT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKES_ERDAT] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKES_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKES_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_ERDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKES_EZEIT] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKES_EZEIT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKES_EZEIT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_EZEIT],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKES_MENGE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKES_MENGE],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_MENGE],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKES_DABMG],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKES_DABMG],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_DABMG],
REPLACE([EKES_ESTKZ],'"',''),
REPLACE([EKES_LOEKZ],'"',''),
REPLACE([EKES_KZDIS],'"',''),
REPLACE([EKES_XBLNR],'"',''),
[dbo].[add_0](10,REPLACE([EKES_VBELN] ,'"','')),
[dbo].[add_0](6,REPLACE([EKES_VBELP] ,'"','')),
REPLACE([EKES_MPROF],'"',''),
REPLACE([EKES_EMATN],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKES_MAHNZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKES_MAHNZ],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_MAHNZ],
REPLACE([EKES_CHARG],'"',''),
REPLACE([EKES_UECHA],'"',''),
REPLACE([EKES_REF_ETENS],'"',''),
REPLACE([EKES_IMWRK],'"',''),
REPLACE([EKES_VBELN_ST],'"',''),
REPLACE([EKES_VBELP_ST],'"',''),
REPLACE([EKES_J_3AETENR],'"',''),
REPLACE([EKES_ERUSERNAME],'"',''),
REPLACE([EKES_AEUSERNAME],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKES_UDATE] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKES_UDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKES_UDATE],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_UDATE],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKES_DATUM] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKES_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKES_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKES_DATUM]

FROM
[dbo].[PO_Confirmation_ETL]
where [EKES_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
