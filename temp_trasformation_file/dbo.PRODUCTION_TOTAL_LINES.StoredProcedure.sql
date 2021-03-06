USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[PRODUCTION_TOTAL_LINES]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[PRODUCTION_TOTAL_LINES]
AS
BEGIN
select count(*) from [dbo].[CO_Header]
select count(*) from [dbo].[CO_Item]
select count(*) from [dbo].[GM_Item]
select count(*) from [dbo].[GM_Header]
select count(*) from [dbo].[INV_Header]
select count(*) from [dbo].[INV_Item_ETL]
select count(*) from [dbo].[PO_Accounting]
select count(*) from [dbo].[PO_Confirmation]
select count(*) from [dbo].[PO_Header]
select count(*) from [dbo].[PO_History]
select count(*) from [dbo].[PO_Item]
select count(*) from [dbo].[PO_Schedule]
select count(*) from [dbo].[PR_Accounting]
select count(*) from [dbo].[PR]
select count(*) from [dbo].[Savings]
select count(*) from [dbo].[QN_Header]
END

GO
