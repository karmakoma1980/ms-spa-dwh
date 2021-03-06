USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_GM_Item]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_GM_Item]
AS
BEGIN
	SET NOCOUNT ON;
select
'MSEG_SYSID',
'MSEG_MANDT',
'MSEG_MBLNR',
'MSEG_ZEILE',
'MSEG_MJAHR',
'MSEG_XAUTO',
'MSEG_BUKRS',
'MSEG_WERKS',
'MSEG_BUDAT_MKPF',
'MSEG_CPUDT_MKPF',
'MSEG_BWART',
'MSEG_SHKZG',
'MSEG_MENGE',
'MSEG_MEINS',
'MSEG_ERFMG',
'MSEG_ERFME',
'MSEG_BPMNG',
'MSEG_BPRME',
'MSEG_BSTMG',
'MSEG_BSTME',
'MSEG_EBELN',
'MSEG_EBELP',
'MSEG_SGTXT',
'MSEG_LIFNR',
'MSEG_SAKTO',
'MSEG_KOSTL',
'MSEG_POSID',
'MSEG_NPLNR',
'MSEG_PRCTR',
'MSEG_LGORT',
'MSEG_UMLGO',
'MSEG_LGNUM',
'MSEG_LGTYP',
'MSEG_LGPLA',
'MSEG_BWLVS',
'MSEG_TBNUM',
'MSEG_WEMPF',
'MSEG_SJAHR',
'MSEG_SMBLN',
'MSEG_SMBLP',
'MSEG_XWSBR',
'MSEG_GRUND',
'MSEG_USNAM_MKPF',
'MSEG_BEV2_ED_AEDAT',
'MSEG_DATUM'

union all
select	
	CASE WHEN replace([MSEG_SYSID],' ','') = '' then NULL ELSE replace([MSEG_SYSID],' ','') end as [MSEG_SYSID],
	CASE WHEN replace([MSEG_MANDT],' ','') = '' then NULL ELSE replace([MSEG_MANDT],' ','') end as [MSEG_MANDT],
	CASE WHEN replace([MSEG_MBLNR],' ','') = '' then NULL ELSE replace([MSEG_MBLNR],' ','') end as [MSEG_MBLNR],
	CASE WHEN replace([MSEG_ZEILE],' ','') = '' then NULL ELSE replace([MSEG_ZEILE],' ','') end as [MSEG_ZEILE],
	CASE WHEN replace([MSEG_MJAHR],' ','') = '' then NULL ELSE replace([MSEG_MJAHR],' ','') end as [MSEG_MJAHR],
	CASE WHEN replace([MSEG_XAUTO],' ','') = '' then NULL ELSE replace([MSEG_XAUTO],' ','') end as [MSEG_XAUTO],
	CASE WHEN replace([MSEG_BUKRS],' ','') = '' then NULL ELSE replace([MSEG_BUKRS],' ','') end as [MSEG_BUKRS],
	CASE WHEN replace([MSEG_WERKS],' ','') = '' then NULL ELSE replace([MSEG_WERKS],' ','') end as [MSEG_WERKS],
	CASE WHEN replace([MSEG_BUDAT_MKPF],' ','') = '' then '00000000' WHEN replace([MSEG_BUDAT_MKPF],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([MSEG_BUDAT_MKPF]),'YYYYMMDD'),' ','') end as [MSEG_BUDAT_MKPF],
	CASE WHEN replace([MSEG_CPUDT_MKPF],' ','') = '' then '00000000' WHEN replace([MSEG_CPUDT_MKPF],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([MSEG_CPUDT_MKPF]),'YYYYMMDD'),' ','') end as [MSEG_CPUDT_MKPF],
	CASE WHEN replace([MSEG_BWART],' ','') = '' then NULL ELSE replace([MSEG_BWART],' ','') end as [MSEG_BWART],
	CASE WHEN replace([MSEG_SHKZG],' ','') = '' then NULL ELSE replace([MSEG_SHKZG],' ','') end as [MSEG_SHKZG],
	CASE WHEN replace([MSEG_MENGE],' ','') = '' then '0.000' WHEN replace([MSEG_MENGE],' ','') IS NULL THEN '0.000' ELSE replace([MSEG_MENGE],' ','') end as [MSEG_MENGE],
	CASE WHEN replace([MSEG_MEINS],' ','') = '' then NULL ELSE replace([MSEG_MEINS],' ','') end as [MSEG_MEINS],
	CASE WHEN replace([MSEG_ERFMG],' ','') = '' then '0.000' WHEN replace([MSEG_ERFMG],' ','') IS NULL THEN '0.000' ELSE replace([MSEG_ERFMG],' ','') end as [MSEG_ERFMG],
	CASE WHEN replace([MSEG_ERFME],' ','') = '' then NULL ELSE replace([MSEG_ERFME],' ','') end as [MSEG_ERFME],
	CASE WHEN replace([MSEG_BPMNG],' ','') = '' then '0.000' WHEN replace([MSEG_BPMNG],' ','') IS NULL THEN '0.000' ELSE replace([MSEG_BPMNG],' ','') end as [MSEG_BPMNG],
	CASE WHEN replace([MSEG_BPRME],' ','') = '' then NULL ELSE replace([MSEG_BPRME],' ','') end as [MSEG_BPRME],
	CASE WHEN replace([MSEG_BSTMG],' ','') = '' then '0.000' WHEN replace([MSEG_BSTMG],' ','') IS NULL THEN '0.000' ELSE replace([MSEG_BSTMG],' ','') end as [MSEG_BSTMG],
	CASE WHEN replace([MSEG_BSTME],' ','') = '' then NULL ELSE replace([MSEG_BSTME],' ','') end as [MSEG_BSTME],
	CASE WHEN replace([MSEG_EBELN],' ','') = '' then NULL ELSE replace([MSEG_EBELN],' ','') end as [MSEG_EBELN],
	CASE WHEN replace([MSEG_EBELP],' ','') = '' then NULL ELSE replace([MSEG_EBELP],' ','') end as [MSEG_EBELP],
	CASE WHEN replace([MSEG_SGTXT],' ','') = '' then NULL ELSE replace([MSEG_SGTXT],' ','') end as [MSEG_SGTXT],
	CASE WHEN replace([MSEG_LIFNR],' ','') = '' then NULL ELSE replace([MSEG_LIFNR],' ','') end as [MSEG_LIFNR],
	CASE WHEN replace([MSEG_SAKTO],' ','') = '' then NULL ELSE replace([MSEG_SAKTO],' ','') end as [MSEG_SAKTO],
	CASE WHEN replace([MSEG_KOSTL],' ','') = '' then NULL ELSE replace([MSEG_KOSTL],' ','') end as [MSEG_KOSTL],
	CASE WHEN replace([MSEG_POSID],' ','') = '' then NULL ELSE replace([MSEG_POSID],' ','') end as [MSEG_POSID],
	CASE WHEN replace([MSEG_NPLNR],' ','') = '' then NULL ELSE replace([MSEG_NPLNR],' ','') end as [MSEG_NPLNR],
	CASE WHEN replace([MSEG_PRCTR],' ','') = '' then NULL ELSE replace([MSEG_PRCTR],' ','') end as [MSEG_PRCTR],
	CASE WHEN replace([MSEG_LGORT],' ','') = '' then NULL ELSE replace([MSEG_LGORT],' ','') end as [MSEG_LGORT],
	CASE WHEN replace([MSEG_UMLGO],' ','') = '' then NULL ELSE replace([MSEG_UMLGO],' ','') end as [MSEG_UMLGO],
	CASE WHEN replace([MSEG_LGNUM],' ','') = '' then NULL ELSE replace([MSEG_LGNUM],' ','') end as [MSEG_LGNUM],
	CASE WHEN replace([MSEG_LGTYP],' ','') = '' then NULL ELSE replace([MSEG_LGTYP],' ','') end as [MSEG_LGTYP],
	CASE WHEN replace([MSEG_LGPLA],' ','') = '' then NULL ELSE replace([MSEG_LGPLA],' ','') end as [MSEG_LGPLA],
	CASE WHEN replace([MSEG_BWLVS],' ','') = '' then NULL ELSE replace([MSEG_BWLVS],' ','') end as [MSEG_BWLVS],
	CASE WHEN replace([MSEG_TBNUM],' ','') = '' then NULL ELSE replace([MSEG_TBNUM],' ','') end as [MSEG_TBNUM],
	CASE WHEN replace([MSEG_WEMPF],' ','') = '' then NULL ELSE replace([MSEG_WEMPF],' ','') end as [MSEG_WEMPF],
	CASE WHEN replace([MSEG_SJAHR],' ','') = '' then NULL ELSE replace([MSEG_SJAHR],' ','') end as [MSEG_SJAHR],
	CASE WHEN replace([MSEG_SMBLN],' ','') = '' then NULL ELSE replace([MSEG_SMBLN],' ','') end as [MSEG_SMBLN],
	CASE WHEN replace([MSEG_SMBLP],' ','') = '' then NULL ELSE replace([MSEG_SMBLP],' ','') end as [MSEG_SMBLP],
	CASE WHEN replace([MSEG_XWSBR],' ','') = '' then NULL ELSE replace([MSEG_XWSBR],' ','') end as [MSEG_XWSBR],
	CASE WHEN replace([MSEG_GRUND],' ','') = '' then NULL ELSE replace([MSEG_GRUND],' ','') end as [MSEG_GRUND],
	CASE WHEN replace([MSEG_USNAM_MKPF],' ','') = '' then NULL ELSE replace([MSEG_USNAM_MKPF],' ','') end as [MSEG_USNAM_MKPF],
	CASE WHEN replace([MSEG_BEV2_ED_AEDAT],' ','') = '' then '00000000' WHEN replace([MSEG_BEV2_ED_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([MSEG_BEV2_ED_AEDAT]),'YYYYMMDD'),' ','') end as [MSEG_BEV2_ED_AEDAT],
	CASE WHEN replace([MSEG_DATUM],' ','') = '' then '00000000' WHEN replace([MSEG_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([MSEG_DATUM]),'YYYYMMDD'),' ','') end as [MSEG_DATUM]
	from
	[dbo].[GM_Item]
	WHERE [MSEG_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
