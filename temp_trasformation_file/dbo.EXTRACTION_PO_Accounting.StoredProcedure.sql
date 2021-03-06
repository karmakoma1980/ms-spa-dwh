USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_PO_Accounting]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================[dbo].[1_0_EXTRACTION_INV_Item_ETL]
CREATE PROCEDURE [dbo].[EXTRACTION_PO_Accounting]
AS
BEGIN
	SET NOCOUNT ON;
select
'EKKN_SYSID',
'EKKN_MANDT',
'EKKN_EBELN',
'EKKN_EBELP',
'EKKN_LOEKZ',
'EKKN_AEDAT',
'EKKN_MENGE',
'EKKN_VPROZ',
'EKKN_NETWR',
'EKKN_ABLAD',
'EKKN_ZEKKN',
'EKKN_VETEN',
'EKKN_SAKTO',
'EKKN_KOSTL',
'EKKN_VBELN',
'EKKN_VBELP',
'EKKN_AUFNR',
'EKKN_PRCTR',
'EKKN_POSID',
'EKKN_NPLNR',
'EKKN_ZZBKZ',
'EKKN_ANLN1',
'EKKN_ANLN2',
'EKKN_WEMPF',
'EKKN_AA_FINAL_IND',
'EKKN_AA_FINAL_QTY',
'EKKN_AA_FINAL_REASON',
'EKKN_EREKZ',
'EKKN_ERUSERNAME',
'EKKN_AEUSERNAME',
'EKKN_UDATE',
'EKKN_DATUM'
union all
select
	CASE WHEN replace([EKKN_SYSID],' ','') = '' then NULL ELSE replace([EKKN_SYSID],' ','') end as [EKKN_SYSID],
	CASE WHEN replace([EKKN_MANDT],' ','') = '' then NULL ELSE replace([EKKN_MANDT],' ','') end as [EKKN_MANDT],
	CASE WHEN replace([EKKN_EBELN],' ','') = '' then NULL ELSE replace([EKKN_EBELN],' ','') end as [EKKN_EBELN],
	CASE WHEN replace([EKKN_EBELP],' ','') = '' then '00000' WHEN replace([EKKN_EBELP],' ','') IS NULL then '00000'  ELSE replace([EKKN_EBELP],' ','') end as [EKKN_EBELP],
	CASE WHEN replace([EKKN_LOEKZ],' ','') = '' then NULL ELSE replace([EKKN_LOEKZ],' ','') end as [EKKN_LOEKZ],
	CASE WHEN replace([EKKN_AEDAT],' ','') = '' then '00000000' WHEN replace([EKKN_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKN_AEDAT]),'YYYYMMDD'),' ','') end as [EKKN_AEDAT],
	CASE WHEN replace([EKKN_MENGE],' ','') = '' then '0.000' WHEN replace([EKKN_MENGE],' ','') IS NULL THEN '0.000' ELSE replace([EKKN_MENGE],' ','') end as [EKKN_MENGE],
	CASE WHEN replace([EKKN_VPROZ],' ','') = '' then '0.0' WHEN replace([EKKN_VPROZ],' ','') IS NULL THEN '0.0' ELSE replace([EKKN_VPROZ],' ','') end as [EKKN_VPROZ],
	CASE WHEN replace([EKKN_NETWR],' ','') = '' then '0.00' WHEN replace([EKKN_NETWR],' ','') IS NULL THEN '0.00' ELSE replace([EKKN_NETWR],' ','') end as [EKKN_NETWR],
	CASE WHEN [EKKN_ABLAD] = '' then NULL ELSE [EKKN_ABLAD] end as [EKKN_ABLAD],
	CASE WHEN replace([EKKN_ZEKKN],' ','') = '' then NULL ELSE replace([EKKN_ZEKKN],' ','') end as [EKKN_ZEKKN],
	CASE WHEN replace([EKKN_VETEN],' ','') = '' then NULL ELSE replace([EKKN_VETEN],' ','') end as [EKKN_VETEN],
	CASE WHEN replace([EKKN_SAKTO],' ','') = '' then NULL ELSE replace([EKKN_SAKTO],' ','') end as [EKKN_SAKTO],
	CASE WHEN replace([EKKN_KOSTL],' ','') = '' then NULL ELSE replace([EKKN_KOSTL],' ','') end as [EKKN_KOSTL],
	CASE WHEN replace([EKKN_VBELN],' ','') = '' then NULL ELSE replace([EKKN_VBELN],' ','') end as [EKKN_VBELN],
	CASE WHEN replace([EKKN_VBELP],' ','') = '' then NULL ELSE replace([EKKN_VBELP],' ','') end as [EKKN_VBELP],
	CASE WHEN replace([EKKN_AUFNR],' ','') = '' then NULL ELSE replace([EKKN_AUFNR],' ','') end as [EKKN_AUFNR],
	CASE WHEN replace([EKKN_PRCTR],' ','') = '' then NULL ELSE replace([EKKN_PRCTR],' ','') end as [EKKN_PRCTR],
	CASE WHEN replace([EKKN_POSID],' ','') = '' then NULL ELSE replace([EKKN_POSID],' ','') end as [EKKN_POSID],
	CASE WHEN replace([EKKN_NPLNR],' ','') = '' then NULL ELSE replace([EKKN_NPLNR],' ','') end as [EKKN_NPLNR],
	CASE WHEN replace([EKKN_ZZBKZ],' ','') = '' then NULL ELSE replace([EKKN_ZZBKZ],' ','') end as [EKKN_ZZBKZ],
	CASE WHEN replace([EKKN_ANLN1],' ','') = '' then NULL ELSE replace([EKKN_ANLN1],' ','') end as [EKKN_ANLN1],
	CASE WHEN replace([EKKN_ANLN2],' ','') = '' then NULL ELSE replace([EKKN_ANLN2],' ','') end as [EKKN_ANLN2],
	CASE WHEN [EKKN_WEMPF] = '' then NULL ELSE [EKKN_WEMPF] end as [EKKN_WEMPF],
	CASE WHEN replace([EKKN_AA_FINAL_IND],' ','') = '' then NULL ELSE replace([EKKN_AA_FINAL_IND],' ','') end as [EKKN_AA_FINAL_IND],
	CASE WHEN replace([EKKN_AA_FINAL_QTY],' ','') = '' then '0.000' WHEN replace([EKKN_AA_FINAL_QTY],' ','') IS NULL THEN '0.000' ELSE replace([EKKN_AA_FINAL_QTY],' ','') end as [EKKN_AA_FINAL_QTY],
	CASE WHEN replace([EKKN_AA_FINAL_REASON],' ','') = '' then NULL ELSE replace([EKKN_AA_FINAL_REASON],' ','') end as [EKKN_AA_FINAL_REASON],
	CASE WHEN replace([EKKN_EREKZ],' ','') = '' then NULL ELSE replace([EKKN_EREKZ],' ','') end as [EKKN_EREKZ],
	CASE WHEN [EKKN_ERUSERNAME] = '' then NULL ELSE [EKKN_ERUSERNAME] end as [EKKN_ERUSERNAME],
	CASE WHEN [EKKN_AEUSERNAME] = '' then NULL ELSE [EKKN_AEUSERNAME] end as [EKKN_AEUSERNAME],
	CASE WHEN replace([EKKN_UDATE],' ','') = '' then '00000000' WHEN replace([EKKN_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKN_UDATE]),'YYYYMMDD'),' ','') end as [EKKN_UDATE],
	CASE WHEN replace([EKKN_DATUM],' ','') = '' then '00000000' WHEN replace([EKKN_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKN_DATUM]),'YYYYMMDD'),' ','') end as [EKKN_DATUM]
	from
	[dbo].[PO_Accounting]
	WHERE [EKKN_SYSID] not in ('LM3','IE3')
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE())) 
END

GO
