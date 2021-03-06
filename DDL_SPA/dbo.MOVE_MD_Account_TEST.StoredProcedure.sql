USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Account_TEST]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Salvigni - SanGy - Daniele>
-- Create date: <March, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_MD_Account_TEST]
AS
WHILE 1=1
begin
DECLARE @Temp Table ([ID] int not null)

INSERT INTO
		[dbo].[MD_Account_TEST]
		(
			[ID],
			[HASH_MD_Account_TEST],
			[HASH_MD_MAJOR_Account_TEST],
			[SKA1_SYSID],
			[SKA1_MANDT],
			[SKA1_BUKRS],
			[SKA1_SAKNR],
			[SKA1_TXT50],
			[SKA1_KTOPL],
			[SKA1_KTPLT],
			[SKA1_SKB1_ERDAT],
			[SKA1_ERDAT],
			[SKA1_DATUM]	
			)
    OUTPUT INSERTED.[ID]
    INTO @Temp
	SELECT TOP 20000
		[ID],
		HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([SKA1_SYSID],'"',''),' ',''),REPLACE(REPLACE([SKA1_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([SKA1_SAKNR],'"','')),' ',''))) as [HASH_MD_ACCOUNT],
		HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([SKA1_SYSID],'"',''),' ',''),REPLACE(REPLACE([SKA1_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([SKA1_SAKNR],'"','')),' ',''),REPLACE(REPLACE([SKA1_KTOPL],'"',''),' ',''))) as [HASH_MD_MAJOR_ACCOUNT],
		REPLACE([SKA1_SYSID],'"','') as [SKA1_SYSID],
		REPLACE([SKA1_MANDT],'"','') as [SKA1_MANDT],
		[dbo].[add_0](4,REPLACE([SKA1_BUKRS],'"','')) as [SKA1_BUKRS],
		REPLACE([dbo].[add_0](10,REPLACE([SKA1_SAKNR],'"','')),' ','') as [SKA1_SAKNR],
		REPLACE([SKA1_TXT50],'"','') as [SKA1_TXT50],
		REPLACE([SKA1_KTOPL],'"','') as [SKA1_KTOPL],
		REPLACE([SKA1_KTPLT],'"','') as [SKA1_KTPLT],
		CASE 
			WHEN REPLACE(REPLACE(REPLACE([SKA1_SKB1_ERDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
				WHEN ISDATE(REPLACE(REPLACE(REPLACE([SKA1_SKB1_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SKA1_SKB1_ERDAT],CHAR(13),''),CHAR(10),''),'"','')) 
				ELSE NULL
			END AS [SKA1_SKB1_ERDAT],
		CASE 
			WHEN REPLACE(REPLACE(REPLACE([SKA1_ERDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
				WHEN ISDATE(REPLACE(REPLACE(REPLACE([SKA1_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SKA1_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))
				ELSE NULL
			END AS [SKA1_ERDAT],
		CASE 
			WHEN REPLACE(REPLACE(REPLACE([SKA1_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
				WHEN ISDATE(REPLACE(REPLACE(REPLACE([SKA1_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SKA1_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
				ELSE NULL
			END AS [SKA1_DATUM]
		FROM
		[dbo].[MD_Account_ETL_TEST]
		where [SKA1_MANDT] is not null and
		REPLACE([dbo].[add_0](10,REPLACE([SKA1_SAKNR],'"','')),' ','')  not in ('0000000113','0000000114','0000000115')

DELETE [dbo].[MD_Account_ETL_TEST]
    FROM [dbo].[MD_Account_ETL_TEST]
        INNER JOIN @Temp as t ON [dbo].[MD_Account_ETL_TEST].[ID]=t.[ID] 
		IF (@@ROWCOUNT = 0)
		BREAK;
--select count(*) from [dbo].[MD_Account_TEST]
--select count(*) from [dbo].[MD_Account_ETL_TEST]

--delete from [dbo].[MD_Account_TEST]
--delete from [dbo].[MD_Account_ETL_TEST]
END 


GO
