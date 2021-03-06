USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_EXTRACTION_PO_Schedule_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <December, 2017>
-- Description:	<1.1 to 2.0 SAP data conversion>
-- =============================================[dbo].[1_0_EXTRACTION_INV_Item_ETL]
CREATE PROCEDURE [dbo].[1_0_EXTRACTION_PO_Schedule_ETL]
AS
BEGIN
	SET NOCOUNT ON;
select
'EKET_SYSID',
'EKET_MANDT',
'EKET_EBELN',
'EKET_EBELP',
'EKET_ETENR',
'EKET_ESTKZ',
'EKET_CHARG',
'EKET_LICHA',
'EKET_BEDAT',
'EKET_EINDT',
'EKET_SLFDT',
'EKET_MENGE',
'EKET_WEMNG',
'EKET_DABMG',
'EKET_BANFN',
'EKET_BNFPO',
'EKET_MAHNZ',
'EKET_GLMNG',
'EKET_AMENG',
'EKET_WAMNG',
'EKET_FIXKZ',
'EKET_ERUSERNAME',
'EKET_AEUSERNAME',
'EKET_UDATE',
'EKET_DATUM'
union all
select
	CASE WHEN replace([EKET_SYSID],' ','') = '' then NULL ELSE replace([EKET_SYSID],' ','') end as [EKET_SYSID],
	CASE WHEN replace([EKET_MANDT],' ','') = '' then NULL ELSE replace([EKET_MANDT],' ','') end as [EKET_MANDT],
	CASE WHEN replace([EKET_EBELN],' ','') = '' then NULL ELSE replace([EKET_EBELN],' ','') end as [EKET_EBELN],
	CASE WHEN replace([EKET_EBELP],' ','') = '' then NULL ELSE replace([EKET_EBELP],' ','') end as [EKET_EBELP],
	CASE WHEN replace([EKET_ETENR],' ','') = '' then NULL ELSE replace([EKET_ETENR],' ','') end as [EKET_ETENR],
	CASE WHEN replace([EKET_ESTKZ],' ','') = '' then NULL ELSE replace([EKET_ESTKZ],' ','') end as [EKET_ESTKZ],
	CASE WHEN replace([EKET_CHARG],' ','') = '' then NULL ELSE replace([EKET_CHARG],' ','') end as [EKET_CHARG],
	CASE WHEN replace([EKET_LICHA],' ','') = '' then NULL ELSE replace([EKET_LICHA],' ','') end as [EKET_LICHA],
	CASE WHEN replace([EKET_BEDAT],' ','') = '' then '00000000' WHEN replace([EKET_BEDAT],' ','') is null then '00000000' ELSE replace([EKET_BEDAT],' ','') end as [EKET_BEDAT],
	CASE WHEN replace([EKET_EINDT],' ','') = '' then '00000000' WHEN replace([EKET_EINDT],' ','') is null then '00000000' ELSE replace([EKET_EINDT],' ','') end as [EKET_EINDT],
	CASE WHEN replace([EKET_SLFDT],' ','') = '' then '00000000' WHEN replace([EKET_SLFDT],' ','') is null then '00000000' ELSE replace([EKET_SLFDT],' ','') end as [EKET_SLFDT],
	CASE WHEN replace([EKET_MENGE],' ','') = '' then '0.00' WHEN replace([EKET_MENGE],' ','') IS NULL THEN '0.00' ELSE replace([EKET_MENGE],' ','') end as [EKET_MENGE],
	CASE WHEN replace([EKET_WEMNG],' ','') = '' then '0.000' WHEN replace([EKET_WEMNG],' ','') IS NULL THEN '0.000' ELSE replace([EKET_WEMNG],' ','') end as [EKET_WEMNG],
	CASE WHEN replace([EKET_DABMG],' ','') = '' then '0.000' WHEN replace([EKET_DABMG],' ','') IS NULL THEN '0.000' ELSE replace([EKET_DABMG],' ','') end as [EKET_DABMG],
	CASE WHEN replace([EKET_BANFN],' ','') = '' then NULL ELSE replace([EKET_BANFN],' ','') end as [EKET_BANFN],
	CASE WHEN replace([EKET_BNFPO],' ','') = '' then NULL ELSE replace([EKET_BNFPO],' ','') end as [EKET_BNFPO],
	CASE WHEN replace([EKET_MAHNZ],' ','') = '' then '0' WHEN replace([EKET_MAHNZ],' ','') IS NULL THEN '0' ELSE replace([EKET_MAHNZ],' ','') end as [EKET_MAHNZ],
	CASE WHEN replace([EKET_GLMNG],' ','') = '' then '0.000' WHEN replace([EKET_GLMNG],' ','') IS NULL THEN '0.000' ELSE replace([EKET_GLMNG],' ','') end as [EKET_GLMNG],
	CASE WHEN replace([EKET_AMENG],' ','') = '' then '0.000' WHEN replace([EKET_AMENG],' ','') IS NULL THEN '0.000' ELSE replace([EKET_AMENG],' ','') end as [EKET_AMENG],
	CASE WHEN replace([EKET_WAMNG],' ','') = '' then '0.000' WHEN replace([EKET_WAMNG],' ','') IS NULL THEN '0.000' ELSE replace([EKET_WAMNG],' ','') end as [EKET_WAMNG],
	CASE WHEN replace([EKET_FIXKZ],' ','') = '' then NULL ELSE replace([EKET_FIXKZ],' ','') end as [EKET_FIXKZ],
	CASE WHEN replace([EKET_ERUSERNAME],' ','') = '' then NULL ELSE replace([EKET_ERUSERNAME],' ','') end as [EKET_ERUSERNAME],
	CASE WHEN replace([EKET_AEUSERNAME],' ','') = '' then NULL ELSE replace([EKET_AEUSERNAME],' ','') end as [EKET_AEUSERNAME],
	CASE WHEN replace([EKET_UDATE],' ','') = '' then '00000000' WHEN replace([EKET_UDATE],' ','') is null then '00000000' ELSE replace([EKET_UDATE],' ','') end as [EKET_UDATE],
	CASE WHEN replace([EKET_DATUM],' ','') = '' then '00000000' WHEN replace([EKET_DATUM],' ','') is null then '00000000' ELSE replace([EKET_DATUM],' ','') end as [EKET_DATUM]
	from
	[dbo].[1_0_PO_Schedule_ETL]
	WHERE [EKET_SYSID] not in ('LM3','IE3')
END

GO
