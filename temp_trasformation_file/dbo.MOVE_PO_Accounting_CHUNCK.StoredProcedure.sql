USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_PO_Accounting_CHUNCK]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <March, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<INSERT/SELECT by Chunck>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_PO_Accounting_CHUNCK]
AS
--We start the dance...
SET IDENTITY_INSERT [dbo].[PO_Accounting] ON
WHILE 1=1
BEGIN
--We declare a TMP tab where to save the unique numeric id generated in the fast import
DECLARE @TempPOAccounting Table ([EKKN_UNIQU] int not null)

--we insert the chunk block from top select
SET DATEFORMAT DMY;
INSERT INTO
				[dbo].[PO_Accounting]
				(
				[EKKN_UNIQU],
				[HASH_PO_ACCOUNTING],
				[HASH_PO_ITEM],
				[HASH_PRODORDER],
				[HASH_SALESORDER_ITEM],
				[HASH_PRJ_POSID],
				[HASH_NETWORK],
				[EKKN_SYSID],
				[EKKN_MANDT],
				[EKKN_EBELN],
				[EKKN_EBELP],
				[EKKN_LOEKZ],
				[EKKN_AEDAT],
				[EKKN_MENGE],
				[EKKN_VPROZ],
				[EKKN_NETWR],
				[EKKN_ABLAD],
				[EKKN_ZEKKN],
				[EKKN_VETEN],
				[EKKN_SAKTO],
				[EKKN_KOSTL],
				[EKKN_VBELN],
				[EKKN_VBELP],
				[EKKN_AUFNR],
				[EKKN_PRCTR],
				[EKKN_POSID],
				[EKKN_NPLNR],
				[EKKN_ZZBKZ],
				[EKKN_ANLN1],
				[EKKN_ANLN2],
				[EKKN_WEMPF],
				[EKKN_AA_FINAL_IND],
				[EKKN_AA_FINAL_QTY],
				[EKKN_AA_FINAL_REASON],
				[EKKN_EREKZ],
				[EKKN_ERUSERNAME],
				[EKKN_AEUSERNAME],
				[EKKN_UDATE],
				[EKKN_DATUM]
				)
    OUTPUT INSERTED.[EKKN_UNIQU]
    INTO @TempPOAccounting
	SELECT TOP 100000
					[ID],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKN_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKKN_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKKN_EBELP] ,'"','')),' ',''),REPLACE([dbo].[add_0](2,REPLACE([EKKN_ZEKKN] ,'"','')),' ',''))) as [HASH_PO_ACCOUNTING],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKN_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKKN_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKKN_EBELP] ,'"','')),' ',''))) as [HASH_PO_ITEM],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKN_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EKKN_AUFNR] ,'"','')),' ',''))) as [HASH_PRODORDER_HEADER],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKN_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKKN_VBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKKN_VBELP] ,'"','')),' ',''))) as [HASH_SALESORDER_ITEM],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKN_MANDT],'"',''),' ',''),REPLACE(REPLACE([EKKN_POSID],'"',''),' ',''))) as [HASH_PRJ_POSID],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKN_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](12,REPLACE([EKKN_NPLNR] ,'"','')),' ',''))) as [HASH_NETWORK],
					REPLACE([EKKN_SYSID] ,'"',''),
					REPLACE([EKKN_MANDT] ,'"',''),
					[dbo].[add_0](10,REPLACE([EKKN_EBELN] ,'"','')),
					[dbo].[add_0](5,REPLACE([EKKN_EBELP] ,'"','')),
					REPLACE([EKKN_LOEKZ] ,'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EKKN_AEDAT] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKKN_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKN_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))
							ELSE NULL
						END AS [EKKN_AEDAT],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EKKN_MENGE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKKN_MENGE],CHAR(13),''),CHAR(10),''),'"',''))
							ELSE NULL
						END AS [EKKN_MENGE],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EKKN_VPROZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKKN_VPROZ],CHAR(13),''),CHAR(10),''),'"',''))
							ELSE NULL
						END AS [EKKN_VPROZ],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EKKN_NETWR],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKKN_NETWR],CHAR(13),''),CHAR(10),''),'"',''))
							ELSE NULL
						END AS [EKKN_NETWR],	
					REPLACE([EKKN_ABLAD] ,'"',''),
					[dbo].[add_0](2,REPLACE([EKKN_ZEKKN] ,'"','')),
					REPLACE([EKKN_VETEN] ,'"',''),
					REPLACE([EKKN_SAKTO] ,'"',''),
					REPLACE([EKKN_KOSTL] ,'"',''),
					[dbo].[add_0](10,REPLACE([EKKN_VBELN] ,'"','')),
					[dbo].[add_0](5,REPLACE([EKKN_VBELP] ,'"','')),
					REPLACE([EKKN_AUFNR] ,'"',''),
					REPLACE([EKKN_PRCTR] ,'"',''),
					REPLACE([EKKN_POSID] ,'"',''),
					[dbo].[add_0](12,REPLACE([EKKN_NPLNR] ,'"','')),
					REPLACE([EKKN_ZZBKZ] ,'"',''),
					REPLACE([EKKN_ANLN1] ,'"',''),
					REPLACE([EKKN_ANLN2] ,'"',''),
					REPLACE([EKKN_WEMPF] ,'"',''),
					REPLACE([EKKN_AA_FINAL_IND] ,'"',''),
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EKKN_AA_FINAL_QTY],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKKN_AA_FINAL_QTY],CHAR(13),''),CHAR(10),''),'"',''))
							ELSE NULL
						END AS [EKKN_AA_FINAL_QTY],
					REPLACE([EKKN_AA_FINAL_REASON] ,'"',''),
					REPLACE([EKKN_EREKZ] ,'"',''),
					REPLACE([EKKN_ERUSERNAME] ,'"',''),
					REPLACE([EKKN_AEUSERNAME] ,'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EKKN_UDATE] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKKN_UDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKN_UDATE],CHAR(13),''),CHAR(10),''),'"',''))
							ELSE NULL
						END AS [EKKN_UDATE],	
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EKKN_DATUM] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKKN_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKN_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
						END AS [EKKN_DATUM]
					FROM
					[dbo].[PO_Accounting_ETL]
					where [EKKN_MANDT] is not null
					AND [UPLOAD_TIME] > '2018-03-08 01:00:00.0000000'

--we delete the imported ID for every 
DELETE [dbo].[PO_Accounting_ETL]
    FROM [dbo].[PO_Accounting_ETL]
        INNER JOIN @TempPOAccounting as t ON [dbo].[PO_Accounting_ETL].[ID]=t.[EKKN_UNIQU] 
		IF (@@ROWCOUNT = 0)
		BREAK;
END 
GO
