USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_ProdOrder_Item]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_ProdOrder_Item]
AS
BEGIN
	SET NOCOUNT ON;
select
'AFPO_SYSID',
'AFPO_MANDT',
'AFPO_AUFNR',
'AFPO_POSNR',
'AFPO_SOBES',
'AFPO_PROJN',
'AFPO_KDAUF',
'AFPO_KDPOS',
'AFPO_PSAMG',
'AFPO_PSMNG',
'AFPO_WEMNG',
'AFPO_IAMNG',
'AFPO_MEINS',
'AFPO_MATNR',
'AFPO_LTRMI',
'AFPO_DWERK',
'AFPO_DAUTY',
'AFPO_DAUAT',
'AFPO_DGLTP',
'AFPO_DGLTS',
'AFPO_SERNP',
'AFPO_XLOEK',
'AFPO_ERDATE',
'AFPO_UDATE',
'AFPO_DATUM'
union all
select	
	CASE WHEN replace([AFPO_SYSID],' ','') = '' then NULL ELSE replace([AFPO_SYSID],' ','') end as [AFPO_SYSID],
	CASE WHEN replace([AFPO_MANDT],' ','') = '' then NULL ELSE replace([AFPO_MANDT],' ','') end as [AFPO_MANDT],
	CASE WHEN replace([AFPO_AUFNR],' ','') = '' then NULL ELSE replace([AFPO_AUFNR],' ','') end as [AFPO_AUFNR],
	CASE WHEN replace([AFPO_POSNR],' ','') = '' then NULL ELSE replace([AFPO_POSNR],' ','') end as [AFPO_POSNR],
	CASE WHEN replace([AFPO_SOBES],' ','') = '' then NULL ELSE replace([AFPO_SOBES],' ','') end as [AFPO_SOBES],
	CASE WHEN replace([AFPO_PROJN],' ','') = '' then NULL ELSE replace([AFPO_PROJN],' ','') end as [AFPO_PROJN],
	CASE WHEN replace([AFPO_KDAUF],' ','') = '' then NULL ELSE replace([AFPO_KDAUF],' ','') end as [AFPO_KDAUF],
	CASE WHEN replace([AFPO_KDPOS],' ','') = '' then NULL ELSE replace([AFPO_KDPOS],' ','') end as [AFPO_KDPOS],
	CASE WHEN replace([AFPO_PSAMG],' ','') = '' then '0.000' WHEN replace([AFPO_PSAMG],' ','') IS NULL THEN '0.000' ELSE replace([AFPO_PSAMG],' ','') end as [AFPO_PSAMG],
	CASE WHEN replace([AFPO_PSMNG],' ','') = '' then '0.000' WHEN replace([AFPO_PSMNG],' ','') IS NULL THEN '0.000' ELSE replace([AFPO_PSMNG],' ','') end as [AFPO_PSMNG],
	CASE WHEN replace([AFPO_WEMNG],' ','') = '' then '0.000' WHEN replace([AFPO_WEMNG],' ','') IS NULL THEN '0.000' ELSE replace([AFPO_WEMNG],' ','') end as [AFPO_WEMNG],
	CASE WHEN replace([AFPO_IAMNG],' ','') = '' then '0.000' WHEN replace([AFPO_IAMNG],' ','') IS NULL THEN '0.000' ELSE replace([AFPO_IAMNG],' ','') end as [AFPO_IAMNG],
	CASE WHEN replace([AFPO_MEINS],' ','') = '' then NULL ELSE replace([AFPO_MEINS],' ','') end as [AFPO_MEINS],
	CASE WHEN replace([AFPO_MATNR],' ','') = '' then NULL ELSE replace([AFPO_MATNR],' ','') end as [AFPO_MATNR],
	CASE WHEN replace([AFPO_LTRMI],' ','') = '' then '00000000' WHEN replace([AFPO_LTRMI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFPO_LTRMI]),'YYYYMMDD'),' ','') end as [AFPO_LTRMI],
	CASE WHEN replace([AFPO_DWERK],' ','') = '' then NULL ELSE replace([AFPO_DWERK],' ','') end as [AFPO_DWERK],
	CASE WHEN replace([AFPO_DAUTY],' ','') = '' then NULL ELSE replace([AFPO_DAUTY],' ','') end as [AFPO_DAUTY],
	CASE WHEN replace([AFPO_DAUAT],' ','') = '' then NULL ELSE replace([AFPO_DAUAT],' ','') end as [AFPO_DAUAT],
	CASE WHEN replace([AFPO_DGLTP],' ','') = '' then '00000000' WHEN replace([AFPO_DGLTP],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFPO_DGLTP]),'YYYYMMDD'),' ','') end as [AFPO_DGLTP],
	CASE WHEN replace([AFPO_DGLTS],' ','') = '' then '00000000' WHEN replace([AFPO_DGLTS],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFPO_DGLTS]),'YYYYMMDD'),' ','') end as [AFPO_DGLTS],
	CASE WHEN replace([AFPO_SERNP],' ','') = '' then NULL ELSE replace([AFPO_SERNP],' ','') end as [AFPO_SERNP],
	CASE WHEN replace([AFPO_XLOEK],' ','') = '' then NULL ELSE replace([AFPO_XLOEK],' ','') end as [AFPO_XLOEK],
	CASE WHEN replace([AFPO_ERDATE],' ','') = '' then '00000000' WHEN replace([AFPO_ERDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFPO_ERDATE]),'YYYYMMDD'),' ','') end as [AFPO_ERDATE],
	CASE WHEN replace([AFPO_UDATE],' ','') = '' then '00000000' WHEN replace([AFPO_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFPO_UDATE]),'YYYYMMDD'),' ','') end as [AFPO_UDATE],
	CASE WHEN replace([AFPO_DATUM],' ','') = '' then '00000000' WHEN replace([AFPO_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFPO_DATUM]),'YYYYMMDD'),' ','') end as [AFPO_DATUM]
	from
	[dbo].[ProdOrder_Item]
	WHERE [AFPO_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
