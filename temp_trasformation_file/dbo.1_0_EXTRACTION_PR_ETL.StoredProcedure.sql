USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_EXTRACTION_PR_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <December, 2017>
-- Description:	<1.1 to 2.0 SAP data conversion>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_EXTRACTION_PR_ETL]
AS
BEGIN
	SET NOCOUNT ON;
select
'EBAN_SYSID',
'EBAN_MANDT',
'EBAN_BANFN',
'EBAN_BNFPO',
'EBAN_BSART',
'EBAN_PSTYP',
'EBAN_LOEKZ',
'EBAN_WERKS',
'EBAN_BADAT',
'EBAN_FRGDT',
'EBAN_MENGE',
'EBAN_MEINS',
'EBAN_PREIS',
'EBAN_AMOUNT',
'EBAN_RLWRT',
'EBAN_WAERS',
'EBAN_RATE',
'EBAN_EURAMOUNT',
'EBAN_TXZ01',
'EBAN_MATKL',
'EBAN_MATNR',
'EBAN_REVLV',
'EBAN_KONNR',
'EBAN_KTPNR',
'EBAN_LIFNR',
'EBAN_FLIEF',
'EBAN_POSID',
'EBAN_ZZBKZ',
'EBAN_PRCTR',
'EBAN_AFNAM',
'EBAN_ESTKZ',
'EBAN_STATU',
'EBAN_DISPO',
'EBAN_FRGKZ',
'EBAN_FRGZU',
'EBAN_FRGST',
'EBAN_KNTTP',
'EBAN_EKORG',
'EBAN_EKGRP',
'EBAN_ERNAM',
'EBAN_ERUSERNAME',
'EBAN_ERDAT',
'EBAN_DATUM'
union all
select
		CASE WHEN replace([EBAN_SYSID],' ','') = '' then NULL ELSE replace([EBAN_SYSID],' ','') end as [EBAN_SYSID],
		CASE WHEN replace([EBAN_MANDT],' ','') = '' then NULL ELSE replace([EBAN_MANDT],' ','') end as [EBAN_MANDT],
		CASE WHEN replace([EBAN_BANFN],' ','') = '' then NULL ELSE replace([EBAN_BANFN],' ','') end as [EBAN_BANFN],
		CASE WHEN replace([EBAN_BNFPO],' ','') = '' then NULL ELSE replace([EBAN_BNFPO],' ','') end as [EBAN_BNFPO],
		CASE WHEN replace([EBAN_BSART],' ','') = '' then NULL ELSE replace([EBAN_BSART],' ','') end as [EBAN_BSART],
		CASE WHEN replace([EBAN_PSTYP],' ','') = '' then NULL ELSE replace([EBAN_PSTYP],' ','') end as [EBAN_PSTYP],
		CASE WHEN replace([EBAN_LOEKZ],' ','') = '' then NULL ELSE replace([EBAN_LOEKZ],' ','') end as [EBAN_LOEKZ],
		CASE WHEN replace([EBAN_WERKS],' ','') = '' then NULL ELSE replace([EBAN_WERKS],' ','') end as [EBAN_WERKS],
		CASE WHEN replace([EBAN_BADAT],' ','') = '' then '00000000' WHEN replace([EBAN_BADAT],' ','') is null then '00000000' ELSE replace([EBAN_BADAT],' ','') end as [EBAN_BADAT],
		CASE WHEN replace([EBAN_FRGDT],' ','') = '' then '00000000' WHEN replace([EBAN_FRGDT],' ','') is null then '00000000' ELSE replace([EBAN_FRGDT],' ','') end as [EBAN_FRGDT],
		CASE WHEN replace([EBAN_MENGE],' ','') = '' then '0.00' WHEN replace([EBAN_MENGE],' ','') IS NULL THEN '0.00' ELSE replace([EBAN_MENGE],' ','') end as [EBAN_MENGE],
		CASE WHEN replace([EBAN_MEINS],' ','') = '' then NULL ELSE replace([EBAN_MEINS],' ','') end as [EBAN_MEINS],
		CASE WHEN replace([EBAN_PREIS],' ','') = '' then '0.00' WHEN replace([EBAN_PREIS],' ','') IS NULL THEN '0.00' ELSE replace([EBAN_PREIS],' ','') end as [EBAN_PREIS],
		CASE WHEN replace([EBAN_AMOUNT],' ','') = '' then '0.00' WHEN replace([EBAN_AMOUNT],' ','') IS NULL THEN '0.00' ELSE replace([EBAN_AMOUNT],' ','') end as [EBAN_AMOUNT],
		CASE WHEN replace([EBAN_RLWRT],' ','') = '' then '0.00' WHEN replace([EBAN_RLWRT],' ','') IS NULL THEN '0.00' ELSE replace([EBAN_RLWRT],' ','') end as [EBAN_RLWRT],
		CASE WHEN replace([EBAN_WAERS],' ','') = '' then NULL ELSE replace([EBAN_WAERS],' ','') end as [EBAN_WAERS],
		CASE WHEN replace([EBAN_RATE],' ','') = '' then '0.00' WHEN replace([EBAN_RATE],' ','') IS NULL THEN '0.00' ELSE replace([EBAN_RATE],' ','') end as [EBAN_RATE],
		CASE WHEN replace([EBAN_EURAMOUNT],' ','') = '' then '0.00' WHEN replace([EBAN_EURAMOUNT],' ','') IS NULL THEN '0.00' ELSE replace([EBAN_EURAMOUNT],' ','') end as [EBAN_EURAMOUNT],
		CASE WHEN replace([EBAN_TXZ01],' ','') = '' then NULL ELSE replace([EBAN_TXZ01],' ','') end as [EBAN_TXZ01],
		CASE WHEN replace([EBAN_MATKL],' ','') = '' then NULL ELSE replace([EBAN_MATKL],' ','') end as [EBAN_MATKL],
		CASE WHEN replace([EBAN_MATNR],' ','') = '' then NULL ELSE replace([EBAN_MATNR],' ','') end as [EBAN_MATNR],
		CASE WHEN replace([EBAN_REVLV],' ','') = '' then NULL ELSE replace([EBAN_REVLV],' ','') end as [EBAN_REVLV],
		CASE WHEN replace([EBAN_KONNR],' ','') = '' then NULL ELSE replace([EBAN_KONNR],' ','') end as [EBAN_KONNR],
		CASE WHEN replace([EBAN_KTPNR],' ','') = '' then NULL ELSE replace([EBAN_KTPNR],' ','') end as [EBAN_KTPNR],
		CASE WHEN replace([EBAN_LIFNR],' ','') = '' then NULL ELSE replace([EBAN_LIFNR],' ','') end as [EBAN_LIFNR],
		CASE WHEN replace([EBAN_FLIEF],' ','') = '' then NULL ELSE replace([EBAN_FLIEF],' ','') end as [EBAN_FLIEF],
		CASE WHEN replace([EBAN_POSID],' ','') = '' then NULL ELSE replace([EBAN_POSID],' ','') end as [EBAN_POSID],
		CASE WHEN replace([EBAN_ZZBKZ],' ','') = '' then NULL ELSE replace([EBAN_ZZBKZ],' ','') end as [EBAN_ZZBKZ],
		CASE WHEN replace([EBAN_PRCTR],' ','') = '' then NULL ELSE replace([EBAN_PRCTR],' ','') end as [EBAN_PRCTR],
		CASE WHEN replace([EBAN_AFNAM],' ','') = '' then NULL ELSE replace([EBAN_AFNAM],' ','') end as [EBAN_AFNAM],
		CASE WHEN replace([EBAN_ESTKZ],' ','') = '' then NULL ELSE replace([EBAN_ESTKZ],' ','') end as [EBAN_ESTKZ],
		CASE WHEN replace([EBAN_STATU],' ','') = '' then NULL ELSE replace([EBAN_STATU],' ','') end as [EBAN_STATU],
		CASE WHEN replace([EBAN_DISPO],' ','') = '' then NULL ELSE replace([EBAN_DISPO],' ','') end as [EBAN_DISPO],
		CASE WHEN replace([EBAN_FRGKZ],' ','') = '' then NULL ELSE replace([EBAN_FRGKZ],' ','') end as [EBAN_FRGKZ],
		CASE WHEN replace([EBAN_FRGZU],' ','') = '' then NULL ELSE replace([EBAN_FRGZU],' ','') end as [EBAN_FRGZU],
		CASE WHEN replace([EBAN_FRGST],' ','') = '' then NULL ELSE replace([EBAN_FRGST],' ','') end as [EBAN_FRGST],
		CASE WHEN replace([EBAN_KNTTP],' ','') = '' then NULL ELSE replace([EBAN_KNTTP],' ','') end as [EBAN_KNTTP],
		CASE WHEN replace([EBAN_EKORG],' ','') = '' then NULL ELSE replace([EBAN_EKORG],' ','') end as [EBAN_EKORG],
		CASE WHEN replace([EBAN_EKGRP],' ','') = '' then NULL ELSE replace([EBAN_EKGRP],' ','') end as [EBAN_EKGRP],
		CASE WHEN replace([EBAN_ERNAM],' ','') = '' then NULL ELSE replace([EBAN_ERNAM],' ','') end as [EBAN_ERNAM],
		CASE WHEN replace([EBAN_ERUSERNAME],' ','') = '' then NULL ELSE replace([EBAN_ERUSERNAME],' ','') end as [EBAN_ERUSERNAME],
		CASE WHEN replace([EBAN_ERDAT],' ','') = '' then '00000000' WHEN replace([EBAN_ERDAT],' ','') is null then '00000000' ELSE replace([EBAN_ERDAT],' ','') end as [EBAN_ERDAT],
		CASE WHEN replace([EBAN_DATUM],' ','') = '' then '00000000' WHEN replace([EBAN_DATUM],' ','') is null then '00000000' ELSE replace([EBAN_DATUM],' ','') end as [EBAN_DATUM]
		from
		[dbo].[1_0_PR_ETL]
		WHERE [EBAN_SYSID] not in ('LM3','IE3') 
END

GO
