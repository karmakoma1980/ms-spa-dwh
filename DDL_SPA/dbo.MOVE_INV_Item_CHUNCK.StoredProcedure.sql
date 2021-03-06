USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_INV_Item_CHUNCK]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Salvigni - SanGy - Daniele>
-- Create date: <March, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<INSERT/SELECT by Chunck>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_INV_Item_CHUNCK]
AS
--We start the dance...
SET IDENTITY_INSERT [dbo].[INV_Item] ON
WHILE 1=1
BEGIN
--We declare a TMP tab where to save the unique numeric id generated in the fast import
DECLARE @TempINVItem Table ([BSEG_UNIQU] int not null)

--we insert the chunk block from top select

INSERT INTO
[dbo].[INV_Item]
				(
				[BSEG_UNIQU],
				[HASH_INV_HEADER_UNIQUE],
				[HASH_INV_HEADER],
				[HASH_INV_ITEM_UNIQUE],
				[HASH_INV_ITEM],
				[HASH_PO_ITEM],
				[HASH_SUPPLIER_LFA1],
				[HASH_SUPPLIER_LFB1],
				[HASH_MD_ACCOUNT],
				[HASH_INV_FINANCE],
				[BSEG_SYSID],
				[BSEG_MANDT],
				[BSEG_GJAHR],
				[BSEG_BELNR],
				[BSEG_BUZEI],
				[BSEG_BUZID],
				[BSEG_BUKRS],
				[BSEG_MENGE],
				[BSEG_MEINS],
				[BSEG_WRBTR],
				[BSEG_DMBTR],
				[BSEG_AMOUNTEUR],
				[BSEG_LONGTEXT],
				[BSEG_SGTXT],
				[BSEG_MATNR],
				[BSEG_LIFNR],
				[BSEG_HKONT],
				[BSEG_SAKNR],
				[BSEG_WERKS],
				[BSEG_KOSTL],
				[BSEG_VERTN],
				[BSEG_EBELN],
				[BSEG_EBELP],
				[BSEG_ZEKKN],
				[BSEG_AUGDT],
				[BSEG_ZUONR],
				[BSEG_ZTERM],
				[BSEG_BSCHL],
				[BSEG_KOART],
				[BSEG_SHKZG],
				[BSEG_MWSKZ],
				[BSEG_MWART],
				[BSEG_KTOSL],
				[BSEG_BEWAR],
				[BSEG_XUMSW],
				[BSEG_POSID],
				[BSEG_NPLNR],
				[BSEG_ZZBKZ],
				[BSEG_PRCTR],
				[BSEG_AUFNR],
				[BSEG_VBEL2],
				[BSEG_POSN2],
				[BSEG_AUGGJ],
				[BSEG_AUGBL],
				[BSEG_AGZEI],
				[BSEG_ERUSERNAME],
				[BSEG_UDATE],
				[BSEG_AEUSERNAME],
				[BSEG_UDATE_2],
				[BSEG_DATUM],
				[BSEG_BUDAT],
				[BSEG_PROJK],
				[BSEG_ERDATE]
				)
    OUTPUT INSERTED.[BSEG_UNIQU]
    INTO @TempINVItem
	SELECT TOP 500000
						[ID],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE(REPLACE([BSEG_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BSEG_BELNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([BSEG_BUKRS],'"','')),' ',''))) as [HASH_INV_HEADER_UNIQUE],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE(REPLACE([BSEG_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BSEG_BELNR],'"','')),' ',''))) as [HASH_INV_HEADER],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE(REPLACE([BSEG_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BSEG_BELNR],'"','')),' ',''),REPLACE([dbo].[add_0](3,REPLACE([BSEG_BUZEI],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([BSEG_BUKRS],'"','')),' ',''))) as [HASH_INV_ITEM_UNIQUE],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE(REPLACE([BSEG_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BSEG_BELNR],'"','')),' ',''),REPLACE([dbo].[add_0](3,REPLACE([BSEG_BUZEI],'"','')),' ',''))) as [HASH_INV_ITEM],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BSEG_EBELN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([BSEG_EBELP],'"','')),' ',''))) as [HASH_PO_ITEM],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([BSEG_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([BSEG_LIFNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([BSEG_BUKRS],'"','')),' ',''))) as [HASH_SUPPLIER_LFB1],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BSEG_SAKNR],'"','')),' ',''))) as [HASH_MD_ACCOUNT],
						HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([BSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([BSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([BSEG_BELNR],'"','')),' ',''),REPLACE([dbo].[add_0](3,REPLACE([BSEG_BUZEI],'"','')),' ',''))) as [HASH_INV_FINANCE],	
						REPLACE([BSEG_SYSID],'"',''),
						REPLACE([BSEG_MANDT],'"',''),
						REPLACE([BSEG_GJAHR],'"',''),
						[dbo].[add_0](10,REPLACE([BSEG_BELNR],'"','')),
						[dbo].[add_0](3,REPLACE([BSEG_BUZEI],'"','')),
						REPLACE([BSEG_BUZID],'"',''),
						[dbo].[add_0](4,REPLACE([BSEG_BUKRS],'"','')),
						CASE
						WHEN 
						ISNUMERIC(REPLACE(REPLACE(REPLACE([BSEG_MENGE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([BSEG_MENGE],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_MENGE],
						REPLACE([BSEG_MEINS],'"',''),
						CASE
						WHEN 
						ISNUMERIC(REPLACE(REPLACE(REPLACE([BSEG_WRBTR],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([BSEG_WRBTR],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_WRBTR],
						CASE
						WHEN 
						ISNUMERIC(REPLACE(REPLACE(REPLACE([BSEG_DMBTR],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([BSEG_DMBTR],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_DMBTR],
						CASE
						WHEN 
						ISNUMERIC(REPLACE(REPLACE(REPLACE([BSEG_AMOUNTEUR],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([BSEG_AMOUNTEUR],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_AMOUNTEUR],
						REPLACE([BSEG_LONGTEXT],'"',''),
						REPLACE([BSEG_SGTXT],'"',''),
						REPLACE([BSEG_MATNR],'"',''),
						[dbo].[rem_0](REPLACE([BSEG_LIFNR],'"','')),
						REPLACE([BSEG_HKONT],'"',''),
						[dbo].[add_0](10,REPLACE([BSEG_SAKNR],'"','')),
						REPLACE([BSEG_WERKS],'"',''),
						REPLACE([BSEG_KOSTL],'"',''),
						[dbo].[add_0](10,REPLACE([BSEG_VERTN],'"','')),
						[dbo].[add_0](10,REPLACE([BSEG_EBELN],'"','')),
						[dbo].[add_0](10,REPLACE([BSEG_EBELP],'"','')),
						[dbo].[add_0](2,REPLACE([BSEG_ZEKKN],'"','')),
						CASE 
						WHEN REPLACE(REPLACE(REPLACE([BSEG_AUGDT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
						WHEN ISDATE(REPLACE(REPLACE(REPLACE([BSEG_AUGDT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BSEG_AUGDT],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_AUGDT],
						REPLACE([BSEG_ZUONR],'"',''),
						REPLACE([BSEG_ZTERM],'"',''),
						REPLACE([BSEG_BSCHL],'"',''),
						REPLACE([BSEG_KOART],'"',''),
						REPLACE([BSEG_SHKZG],'"',''),
						REPLACE([BSEG_MWSKZ],'"',''),
						REPLACE([BSEG_MWART],'"',''),
						REPLACE([BSEG_KTOSL],'"',''),
						REPLACE([BSEG_BEWAR],'"',''),
						REPLACE([BSEG_XUMSW],'"',''),
						REPLACE([BSEG_POSID],'"',''),
						[dbo].[add_0](12,REPLACE([BSEG_NPLNR],'"','')),
						REPLACE([BSEG_ZZBKZ],'"',''),
						REPLACE([BSEG_PRCTR],'"',''),
						REPLACE([BSEG_AUFNR],'"',''),
						REPLACE([BSEG_VBEL2],'"',''),
						REPLACE([BSEG_POSN2],'"',''),
						REPLACE([BSEG_AUGGJ],'"',''),
						REPLACE([BSEG_AUGBL],'"',''),
						CASE
						WHEN 
						ISNUMERIC(REPLACE(REPLACE(REPLACE([BSEG_AGZEI],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([BSEG_AGZEI],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_AGZEI],
						REPLACE([BSEG_ERUSERNAME],'"',''),
						CASE 
						WHEN REPLACE(REPLACE(REPLACE([BSEG_UDATE],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
						WHEN ISDATE(REPLACE(REPLACE(REPLACE([BSEG_UDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BSEG_UDATE],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_UDATE],
						REPLACE([BSEG_AEUSERNAME],'"',''),
						CASE 
						WHEN REPLACE(REPLACE(REPLACE([BSEG_UDATE_2],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
						WHEN ISDATE(REPLACE(REPLACE(REPLACE([BSEG_UDATE_2],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BSEG_UDATE_2],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_UDATE_2],
						CASE 
						WHEN REPLACE(REPLACE(REPLACE([BSEG_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
						WHEN ISDATE(REPLACE(REPLACE(REPLACE([BSEG_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BSEG_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_DATUM],
						CASE 
						WHEN REPLACE(REPLACE(REPLACE([BSEG_BUDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
						WHEN ISDATE(REPLACE(REPLACE(REPLACE([BSEG_BUDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BSEG_BUDAT],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_BUDAT],
						REPLACE([BSEG_PROJK],'"',''),
						CASE 
						WHEN REPLACE(REPLACE(REPLACE([BSEG_ERDATE],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
						WHEN ISDATE(REPLACE(REPLACE(REPLACE([BSEG_ERDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([BSEG_ERDATE],CHAR(13),''),CHAR(10),''),'"',''))
						ELSE NULL
						END AS [BSEG_ERDATE]
						FROM
						[dbo].[INV_Item_ETL]
						where [BSEG_MANDT] is not null

--we delete the imported ID for every line just saved
--In case of failure we need to delete the duplicated chunks in the final table. 
DELETE [dbo].[INV_Item_ETL]
    FROM [dbo].[INV_Item_ETL]
        INNER JOIN @TempINVItem as t ON [dbo].[INV_Item_ETL].[ID]=t.[BSEG_UNIQU]
		IF (@@ROWCOUNT = 0)
		BREAK;
END 
GO
