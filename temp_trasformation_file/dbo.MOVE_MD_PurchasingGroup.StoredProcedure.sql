USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_PurchasingGroup]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_PurchasingGroup]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_PurchasingGroup]
(
[HASH_MD_PGROUP],
[T024_SYSID],
[T024_MANDT],
[T024_EKORG],
[T024_EKGRP],
[T024_EKNAM],
[T024_TELFX],
[T024_TEL_NUMBER],
[T024_TEL_EXTENS],
[T024_TITLE],
[T024_ZZ_DNAME],
[T024_ZZ_TNAME],
[T024_ZZ_ABTLG],
[T024_ZZ_STBEZ],
[T024_SMTP_ADDR],
[T024_EKTEL],
[T024_DATUM],
[T024_SupplyChain],
[T024_TacticalBuying],
[T024_identifier],
[T024_UniqueIDRoleGroup]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([T024_SYSID],'"',''),' ',''),REPLACE(REPLACE([T024_MANDT],'"',''),' ',''),REPLACE(REPLACE([T024_EKGRP],'"',''),' ',''))) as [HASH_MD_PGROUP],
REPLACE([T024_SYSID],'"','') as [T024_SYSID],
REPLACE([T024_MANDT],'"','') as [T024_MANDT],
REPLACE([T024_EKORG],'"',''),
REPLACE([T024_EKGRP],'"',''),
REPLACE([T024_EKNAM],'"',''),
REPLACE([T024_TELFX],'"',''),
REPLACE([T024_TEL_NUMBER],'"',''),
REPLACE([T024_TEL_EXTENS],'"',''),
REPLACE([T024_TITLE],'"',''),
REPLACE([T024_ZZ_DNAME],'"','') as [T024_ZZ_DNAME],
REPLACE([T024_ZZ_TNAME],'"','') as [T024_ZZ_TNAME],
REPLACE([T024_ZZ_ABTLG],'"',''),
REPLACE([T024_ZZ_STBEZ],'"','') as [T024_ZZ_STBEZ],
REPLACE([T024_SMTP_ADDR],'"','') as [T024_SMTP_ADDR],
REPLACE([T024_ZZ_STBEZ],'"','') as [T024_EKTEL],
CASE 
WHEN REPLACE(REPLACE(REPLACE([T024_DATUM] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([T024_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN  TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([T024_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
ELSE NULL
END AS [T024_DATUM],
CASE
WHEN REPLACE([T024_SYSID],'"','')='ADP' THEN 
REPLACE(REPLACE(COALESCE([T024_TELFX],[T024_TEL_NUMBER]),'.',''),LEFT(REPLACE(COALESCE([T024_TELFX],[T024_TEL_NUMBER]),'.',''),CHARINDEX('_',REPLACE(COALESCE([T024_TELFX],[T024_TEL_NUMBER]),'.',''))),'')
WHEN [T024_TEL_EXTENS] = '0' THEN ''
ELSE [T024_TEL_EXTENS]
END AS [T024_SupplyChain],
CASE
WHEN REPLACE([T024_SYSID],'"','')='ADP' THEN 
REPLACE(REPLACE(REPLACE(COALESCE([T024_TELFX],[T024_TEL_NUMBER]),'.',''),CONCAT('_',REPLACE(REPLACE(COALESCE([T024_TELFX],[T024_TEL_NUMBER]),'.',''),LEFT(REPLACE(COALESCE([T024_TELFX],[T024_TEL_NUMBER]),'.',''),CHARINDEX('_',REPLACE(COALESCE([T024_TELFX],[T024_TEL_NUMBER]),'.',''))),'')),''),'-','_')
WHEN [T024_TEL_EXTENS] = '0' THEN ''
ELSE [T024_TEL_EXTENS]
END AS  [T024_TacticalBuying],
CASE
WHEN REPLACE(REPLACE(REPLACE(REPLACE([T024_TELFX],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TELFX],'.',''),LEFT(REPLACE([T024_TELFX],'.',''),CHARINDEX('_',REPLACE([T024_TELFX],'.',''))),'')),''),'(',''),'+','') LIKE '[0-9]%' or
REPLACE(REPLACE(REPLACE(REPLACE([T024_TEL_EXTENS],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TEL_EXTENS],'.',''),LEFT(REPLACE([T024_TEL_EXTENS],'.',''),CHARINDEX('_',REPLACE([T024_TEL_EXTENS],'.',''))),'')),''),'(',''),'+','') LIKE '[0-9]%' or
REPLACE(REPLACE([T024_TELFX],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TELFX],'.',''),LEFT(REPLACE([T024_TELFX],'.',''),CHARINDEX('_',REPLACE([T024_TELFX],'.',''))),'')),'') ='' AND REPLACE(REPLACE([T024_TEL_EXTENS],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TEL_EXTENS],'.',''),LEFT(REPLACE([T024_TEL_EXTENS],'.',''),CHARINDEX('_',REPLACE([T024_TEL_EXTENS],'.',''))),'')),'') =''
THEN NULL
WHEN REPLACE([T024_SYSID],'"','')='ADP' THEN
REPLACE(REPLACE(REPLACE([T024_TELFX],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TELFX],'.',''),LEFT(REPLACE([T024_TELFX],'.',''),CHARINDEX('_',REPLACE([T024_TELFX],'.',''))),'')),''),'-','_')
WHEN REPLACE(REPLACE([T024_TELFX],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TELFX],'.',''),LEFT(REPLACE([T024_TELFX],'.',''),CHARINDEX('_',REPLACE([T024_TELFX],'.',''))),'')),'') = '' then 
REPLACE(REPLACE(REPLACE([T024_TEL_NUMBER],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TEL_NUMBER],'.',''),LEFT(REPLACE([T024_TEL_NUMBER],'.',''),CHARINDEX('_',REPLACE([T024_TEL_NUMBER],'.',''))),'')),''),'-','_')
WHEN [T024_TELFX] not like '%-%' or  [T024_TELFX] not like '%.%' or [T024_TELFX] not like '%.%'  then
REPLACE(REPLACE(REPLACE([T024_TEL_NUMBER],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TEL_NUMBER],'.',''),LEFT(REPLACE([T024_TEL_NUMBER],'.',''),CHARINDEX('_',REPLACE([T024_TEL_NUMBER],'.',''))),'')),''),'-','_')
ELSE REPLACE(REPLACE(REPLACE([T024_TELFX],'.',''),CONCAT('_',REPLACE(REPLACE([T024_TELFX],'.',''),LEFT(REPLACE([T024_TELFX],'.',''),CHARINDEX('_',REPLACE([T024_TELFX],'.',''))),'')),''),'-','_')
END 
as [T024_identifier],
CONCAT(REPLACE([T024_SYSID],'"',''),'_',REPLACE([T024_EKGRP],'"',''))	[T024_UniqueIDRoleGroup]
FROM
[dbo].[MD_PurchasingGroup_ETL]
where [T024_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END
GO
