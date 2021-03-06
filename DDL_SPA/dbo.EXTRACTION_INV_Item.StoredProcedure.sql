USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_INV_Item]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Sangyyyy>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_INV_Item]
AS
BEGIN
	SET NOCOUNT ON;
select
'BSEG_SYSID',
'BSEG_MANDT',
'BSEG_GJAHR',
'BSEG_BELNR',
'BSEG_BUZEI',
'BSEG_BUZID',
'BSEG_BUKRS',
'BSEG_MENGE',
'BSEG_MEINS',
'BSEG_WRBTR',
'BSEG_DMBTR',
'BSEG_AMOUNTEUR',
'BSEG_LONGTEXT',
'BSEG_SGTXT',
'BSEG_MATNR',
'BSEG_LIFNR',
'BSEG_HKONT',
'BSEG_SAKNR',
'BSEG_WERKS',
'BSEG_KOSTL',
'BSEG_VERTN',
'BSEG_EBELN',
'BSEG_EBELP',
'BSEG_ZEKKN',
'BSEG_AUGDT',
'BSEG_ZUONR',
'BSEG_ZTERM',
'BSEG_BSCHL',
'BSEG_KOART',
'BSEG_SHKZG',
'BSEG_MWSKZ',
'BSEG_MWART',
'BSEG_KTOSL',
'BSEG_BEWAR',
'BSEG_XUMSW',
'BSEG_POSID',
'BSEG_NPLNR',
'BSEG_ZZBKZ',
'BSEG_PRCTR',
'BSEG_AUFNR',
'BSEG_VBEL2',
'BSEG_POSN2',
'BSEG_AUGGJ',
'BSEG_AUGBL',
'BSEG_AGZEI',
'BSEG_ERUSERNAME',
'BSEG_UDATE',
'BSEG_AEUSERNAME',
'BSEG_UDATE_2',
'BSEG_DATUM',
'BSEG_BUDAT',
'BSEG_PROJK',
'BSEG_ERDATE'

union all
select
		CASE WHEN replace([BSEG_SYSID],' ','') = '' then NULL ELSE replace([BSEG_SYSID],' ','') end as [BSEG_SYSID],
		CASE WHEN replace([BSEG_MANDT],' ','') = '' then NULL ELSE replace([BSEG_MANDT],' ','') end as [BSEG_MANDT],
		CASE WHEN replace([BSEG_GJAHR],' ','') = '' then NULL ELSE replace([BSEG_GJAHR],' ','') end as [BSEG_GJAHR],
		CASE WHEN replace([BSEG_BELNR],' ','') = '' then NULL ELSE replace([BSEG_BELNR],' ','') end as [BSEG_BELNR],
		CASE WHEN replace([BSEG_BUZEI],' ','') = '' then NULL ELSE replace([BSEG_BUZEI],' ','') end as [BSEG_BUZEI],
		CASE WHEN replace([BSEG_BUZID],' ','') = '' then NULL ELSE replace([BSEG_BUZID],' ','') end as [BSEG_BUZID],
		CASE WHEN replace([BSEG_BUKRS],' ','') = '' then NULL ELSE replace([BSEG_BUKRS],' ','') end as [BSEG_BUKRS],
		CASE WHEN replace([BSEG_MENGE],' ','') = '' then '0.000' WHEN replace([BSEG_MENGE],' ','') IS NULL THEN '0.000' ELSE replace([BSEG_MENGE],' ','') end as [BSEG_MENGE],
		CASE WHEN replace([BSEG_MEINS],' ','') = '' then NULL ELSE replace([BSEG_MEINS],' ','') end as [BSEG_MEINS],
		CASE WHEN replace([BSEG_WRBTR],' ','') = '' then '0.00' WHEN replace([BSEG_WRBTR],' ','') IS NULL THEN '0.00' ELSE replace([BSEG_WRBTR],' ','') end as [BSEG_WRBTR],
		CASE WHEN replace([BSEG_DMBTR],' ','') = '' then '0.00' WHEN replace([BSEG_DMBTR],' ','') IS NULL THEN '0.00' ELSE replace([BSEG_DMBTR],' ','') end as [BSEG_DMBTR],
		CASE WHEN replace([BSEG_AMOUNTEUR],' ','') = '' then '0.00' WHEN replace([BSEG_AMOUNTEUR],' ','') IS NULL THEN '0.00' ELSE replace([BSEG_AMOUNTEUR],' ','') end as [BSEG_AMOUNTEUR],
		CASE
		WHEN replace([BSEG_LONGTEXT],' ','')  = '' then NULL 
		WHEN replace([BSEG_LONGTEXT],' ','')  = ' ' then NULL 
		else replace([BSEG_LONGTEXT],' ','')  end as [BSEG_LONGTEXT],
		CASE 
		WHEN replace([BSEG_SGTXT],' ','')  = '' then NULL 
		WHEN replace([BSEG_SGTXT],' ','')  = ' ' then NULL 
		else replace([BSEG_SGTXT],' ','') end as [BSEG_SGTXT],
		CASE WHEN replace([BSEG_MATNR],' ','') = '' then NULL ELSE replace([BSEG_MATNR],' ','') end as [BSEG_MATNR],
		CASE WHEN replace([BSEG_LIFNR],' ','') = '' then NULL ELSE replace([BSEG_LIFNR],' ','') end as [BSEG_LIFNR],
		CASE WHEN replace([BSEG_HKONT],' ','') = '' then NULL ELSE replace([BSEG_HKONT],' ','') end as [BSEG_HKONT],
		CASE WHEN replace([BSEG_SAKNR],' ','') = '' then NULL ELSE replace([BSEG_SAKNR],' ','') end as [BSEG_SAKNR],
		CASE WHEN replace([BSEG_WERKS],' ','') = '' then NULL ELSE replace([BSEG_WERKS],' ','') end as [BSEG_WERKS],
		CASE WHEN replace([BSEG_KOSTL],' ','') = '' then NULL ELSE replace([BSEG_KOSTL],' ','') end as [BSEG_KOSTL],
		CASE WHEN replace([BSEG_VERTN],' ','') = '' then NULL ELSE replace([BSEG_VERTN],' ','') end as [BSEG_VERTN],
		CASE WHEN replace([BSEG_EBELN],' ','') = '' then NULL ELSE replace([BSEG_EBELN],' ','') end as [BSEG_EBELN],
		CASE WHEN replace([BSEG_EBELP],' ','') = '' then '00000' WHEN replace([BSEG_EBELP],' ','') IS NULL then '00000'  ELSE replace([BSEG_EBELP],' ','') end as [BSEG_EBELP],
		CASE WHEN replace([BSEG_ZEKKN],' ','') = '' then NULL ELSE replace([BSEG_ZEKKN],' ','') end as [BSEG_ZEKKN],
		CASE WHEN replace([BSEG_AUGDT],' ','') = '' then '00000000' WHEN replace([BSEG_AUGDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BSEG_AUGDT]),'YYYYMMDD'),' ','') end as [BSEG_AUGDT],
		CASE 
		WHEN replace([BSEG_ZUONR],' ','') = '' then NULL 
		WHEN replace([BSEG_ZUONR],' ','') = ' ' then NULL 
		else replace([BSEG_ZUONR],' ','') end as [BSEG_ZUONR],
		CASE WHEN replace([BSEG_ZTERM],' ','') = '' then NULL ELSE replace([BSEG_ZTERM],' ','') end as [BSEG_ZTERM],
		CASE WHEN replace([BSEG_BSCHL],' ','') = '' then NULL ELSE replace([BSEG_BSCHL],' ','') end as [BSEG_BSCHL],
		CASE WHEN replace([BSEG_KOART],' ','') = '' then NULL ELSE replace([BSEG_KOART],' ','') end as [BSEG_KOART],
		CASE WHEN replace([BSEG_SHKZG],' ','') = '' then NULL ELSE replace([BSEG_SHKZG],' ','') end as [BSEG_SHKZG],
		CASE WHEN replace([BSEG_MWSKZ],' ','') = '' then NULL ELSE replace([BSEG_MWSKZ],' ','') end as [BSEG_MWSKZ],
		CASE WHEN replace([BSEG_MWART],' ','') = '' then NULL ELSE replace([BSEG_MWART],' ','') end as [BSEG_MWART],
		CASE WHEN replace([BSEG_KTOSL],' ','') = '' then NULL ELSE replace([BSEG_KTOSL],' ','') end as [BSEG_KTOSL],
		CASE WHEN replace([BSEG_BEWAR],' ','') = '' then NULL ELSE replace([BSEG_BEWAR],' ','') end as [BSEG_BEWAR],
		CASE WHEN replace([BSEG_XUMSW],' ','') = '' then NULL ELSE replace([BSEG_XUMSW],' ','') end as [BSEG_XUMSW],
		CASE WHEN replace([BSEG_POSID],' ','') = '' then NULL ELSE replace([BSEG_POSID],' ','') end as [BSEG_POSID],
		CASE WHEN replace([BSEG_NPLNR],' ','') = '' then NULL ELSE replace([BSEG_NPLNR],' ','') end as [BSEG_NPLNR],
		CASE WHEN replace([BSEG_ZZBKZ],' ','') = '' then NULL ELSE replace([BSEG_ZZBKZ],' ','') end as [BSEG_ZZBKZ],
		CASE WHEN replace([BSEG_PRCTR],' ','') = '' then NULL ELSE replace([BSEG_PRCTR],' ','') end as [BSEG_PRCTR],
		CASE WHEN replace([BSEG_AUFNR],' ','') = '' then NULL ELSE replace([BSEG_AUFNR],' ','') end as [BSEG_AUFNR],
		CASE WHEN replace([BSEG_VBEL2],' ','') = '' then NULL ELSE replace([BSEG_VBEL2],' ','') end as [BSEG_VBEL2],
		CASE WHEN replace([BSEG_POSN2],' ','') = '' then NULL ELSE replace([BSEG_POSN2],' ','') end as [BSEG_POSN2],
		CASE WHEN replace([BSEG_AUGGJ],' ','') = '' then NULL ELSE replace([BSEG_AUGGJ],' ','') end as [BSEG_AUGGJ],
		CASE WHEN replace([BSEG_AUGBL],' ','') = '' then NULL ELSE replace([BSEG_AUGBL],' ','') end as [BSEG_AUGBL],
		CASE WHEN replace([BSEG_AGZEI],' ','') = '' then '0' WHEN replace([BSEG_AGZEI],' ','') IS NULL THEN '0' ELSE replace([BSEG_AGZEI],' ','') end as [BSEG_AGZEI],
		CASE 
			WHEN replace(replace([BSEG_ERUSERNAME],' ',''),'#','-') = '' then NULL 
			WHEN replace(replace([BSEG_ERUSERNAME],' ',''),'#','-') = '!' then NULL 
			WHEN replace(replace([BSEG_ERUSERNAME],' ',''),'#','-') = '#' then NULL 
			ELSE replace(replace([BSEG_ERUSERNAME],' ',''),'#','-')
		END AS [BSEG_ERUSERNAME],
		CASE WHEN replace([BSEG_UDATE],' ','') = '' then '00000000' WHEN replace([BSEG_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BSEG_UDATE]),'YYYYMMDD'),' ','') end as [BSEG_UDATE],
			CASE 
			WHEN replace(replace([BSEG_AEUSERNAME],' ',''),'#','-') = '' then NULL 
			WHEN replace(replace([BSEG_AEUSERNAME],' ',''),'#','-') = '!' then NULL 
			WHEN replace(replace([BSEG_AEUSERNAME],' ',''),'#','-') = '#' then NULL 
			ELSE replace(replace([BSEG_AEUSERNAME],' ',''),'#','-')
		END AS [BSEG_AEUSERNAME],
		CASE WHEN replace([BSEG_UDATE_2],' ','') = '' then '00000000' WHEN replace([BSEG_UDATE_2],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BSEG_UDATE_2]),'YYYYMMDD'),' ','') end as [BSEG_UDATE_2],	
		CASE WHEN replace([BSEG_DATUM],' ','') = '' then '00000000' WHEN replace([BSEG_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BSEG_DATUM]),'YYYYMMDD'),' ','') end as [BSEG_DATUM],
		CASE WHEN replace([BSEG_BUDAT],' ','') = '' then '00000000' WHEN replace([BSEG_BUDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BSEG_BUDAT]),'YYYYMMDD'),' ','') end as [BSEG_BUDAT],
		CASE WHEN replace([BSEG_PROJK],' ','') = '' then NULL ELSE replace([BSEG_PROJK],' ','') end as [BSEG_PROJK],
		CASE WHEN replace([BSEG_ERDATE],' ','') = '' then '00000000' WHEN replace([BSEG_ERDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([BSEG_ERDATE]),'YYYYMMDD'),' ','') end as [BSEG_ERDATE]
		from
		[dbo].[INV_Item]
		WHERE [BSEG_SYSID] not in ('LM3','IE3') 
		AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
