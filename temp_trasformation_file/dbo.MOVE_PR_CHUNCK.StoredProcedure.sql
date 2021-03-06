USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_PR_CHUNCK]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_PR_CHUNCK]
AS
--We start the dance...
SET IDENTITY_INSERT [dbo].[PR] ON
WHILE 1=1
BEGIN
--We declare a TMP tab where to save the unique numeric id generated in the fast import
DECLARE @TempPR Table ([EBAN_UNIQU] int not null)

--we insert the chunk block from top select
SET DATEFORMAT DMY;
INSERT INTO
				[dbo].[PR]
				(
				[EBAN_UNIQU],
				[HASH_PR] ,
				[HASH_MD_PGROUP],
				[HASH_SUPPLIER_LFA1],
				[HASH_SUPPLIER_LFM1],
				[HASH_PRJ],
				[EBAN_SYSID] ,
				[EBAN_MANDT] ,
				[EBAN_BANFN] ,
				[EBAN_BNFPO] ,
				[EBAN_BSART] ,
				[EBAN_PSTYP] ,
				[EBAN_LOEKZ] ,
				[EBAN_WERKS] ,
				[EBAN_BADAT] ,
				[EBAN_FRGDT] ,
				[EBAN_MENGE] ,
				[EBAN_MEINS] ,
				[EBAN_PREIS] ,
				[EBAN_AMOUNT] ,
				[EBAN_RLWRT] ,
				[EBAN_WAERS] ,
				[EBAN_RATE] ,
				[EBAN_EURAMOUNT] ,
				[EBAN_TXZ01] ,
				[EBAN_MATKL] ,
				[EBAN_MATNR] ,
				[EBAN_REVLV] ,
				[EBAN_KONNR] ,
				[EBAN_KTPNR] ,
				[EBAN_LIFNR] ,
				[EBAN_FLIEF] ,
				[EBAN_POSID] ,
				[EBAN_ZZBKZ] ,
				[EBAN_PRCTR] ,
				[EBAN_AFNAM] ,
				[EBAN_ESTKZ] ,
				[EBAN_STATU] ,
				[EBAN_DISPO] ,
				[EBAN_FRGKZ] ,
				[EBAN_FRGZU] ,
				[EBAN_FRGST] ,
				[EBAN_KNTTP] ,
				[EBAN_EKORG] ,
				[EBAN_EKGRP] ,
				[EBAN_ERNAM] ,
				[EBAN_ERUSERNAME] ,
				[EBAN_ERDAT] ,
				[EBAN_DATUM] ,
				[EBAN_PEINH]
				)
    OUTPUT INSERTED.[EBAN_UNIQU]
    INTO @TempPR
	SELECT TOP 100000
					[ID],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EBAN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EBAN_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EBAN_BANFN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EBAN_BNFPO] ,'"','')),' ',''))) as [HASH_PR],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EBAN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EBAN_MANDT],'"',''),' ',''),REPLACE(REPLACE([EBAN_EKGRP],'"',''),' ',''))) as [HASH_MD_PGROUP],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EBAN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EBAN_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EBAN_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EBAN_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EBAN_LIFNR],'"','')),' ',''),REPLACE([dbo].[rem_0](REPLACE([EBAN_EKORG],'"','')),' ',''))) as [HASH_SUPPLIER_LFM1],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EBAN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EBAN_MANDT],'"',''),' ',''),REPLACE(REPLACE([EBAN_POSID],'"',''),' ',''))) as [HASH_PRJ],
					REPLACE([EBAN_SYSID] ,'"',''),
					REPLACE([EBAN_MANDT] ,'"',''),
					REPLACE([EBAN_BANFN] ,'"',''),
					[dbo].[add_0](5,REPLACE([EBAN_BNFPO] ,'"','')),
					REPLACE([EBAN_BSART] ,'"',''),
					REPLACE([EBAN_PSTYP] ,'"',''),
					REPLACE([EBAN_LOEKZ] ,'"',''),
					REPLACE([EBAN_WERKS] ,'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBAN_BADAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBAN_BADAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBAN_BADAT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_BADAT],
						CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBAN_FRGDT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBAN_FRGDT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBAN_FRGDT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_FRGDT],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBAN_MENGE], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EBAN_MENGE], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_MENGE],
					REPLACE([EBAN_MEINS] ,'"',''),
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBAN_PREIS], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EBAN_PREIS], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_PREIS],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBAN_AMOUNT], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EBAN_AMOUNT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_AMOUNT],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBAN_RLWRT], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EBAN_RLWRT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_RLWRT],
					REPLACE([EBAN_WAERS] ,'"',''),
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBAN_RATE], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,5),REPLACE(REPLACE(REPLACE([EBAN_RATE], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_RATE],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBAN_EURAMOUNT], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EBAN_EURAMOUNT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_EURAMOUNT],
					REPLACE([EBAN_TXZ01] ,'"',''),
					REPLACE([EBAN_MATKL] ,'"',''),
					REPLACE([EBAN_MATNR] ,'"',''),
					REPLACE([EBAN_REVLV] ,'"',''),
					[dbo].[add_0](10,REPLACE([EBAN_KONNR],'"','')),
					[dbo].[add_0](5,REPLACE([EBAN_KTPNR],'"','')),
					[dbo].[rem_0](REPLACE([EBAN_LIFNR],'"','')),
					REPLACE([EBAN_FLIEF] ,'"',''),
					REPLACE([EBAN_POSID] ,'"',''),
					REPLACE([EBAN_ZZBKZ] ,'"',''),
					REPLACE([EBAN_PRCTR] ,'"',''),
					REPLACE([EBAN_AFNAM] ,'"',''),
					REPLACE([EBAN_ESTKZ] ,'"',''),
					REPLACE([EBAN_STATU] ,'"',''),
					REPLACE([EBAN_DISPO] ,'"',''),
					REPLACE([EBAN_FRGKZ] ,'"',''),
					REPLACE([EBAN_FRGZU] ,'"',''),
					REPLACE([EBAN_FRGST] ,'"',''),
					REPLACE([EBAN_KNTTP] ,'"',''),
					REPLACE([EBAN_EKORG] ,'"',''),
					REPLACE([EBAN_EKGRP] ,'"',''),
					REPLACE([EBAN_ERNAM] ,'"',''),
					REPLACE([EBAN_ERUSERNAME] ,'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBAN_ERDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBAN_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBAN_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_ERDAT],
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBAN_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBAN_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBAN_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_DATUM],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBAN_PEINH], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EBAN_PEINH], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBAN_PEINH]
					FROM
					[dbo].[PR_ETL]
					where [EBAN_MANDT] is not null
					AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))

--we delete the imported ID for every 
DELETE [dbo].[PR_ETL]
    FROM [dbo].[PR_ETL]
        INNER JOIN @TempPR as t ON [dbo].[PR_ETL].[ID]=t.[EBAN_UNIQU] 
		IF (@@ROWCOUNT = 0)
		BREAK;
END 
GO
