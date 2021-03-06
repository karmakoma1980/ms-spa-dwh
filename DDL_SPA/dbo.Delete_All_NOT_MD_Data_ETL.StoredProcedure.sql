USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_NOT_MD_Data_ETL]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Delete_All_NOT_MD_Data_ETL]
AS
BEGIN
DELETE FROM [dbo].[CFT_Header_ETL]
DELETE FROM [dbo].[CFT_Item_ETL]
DELETE FROM [dbo].[CO_Header_ETL]
DELETE FROM [dbo].[CO_Item_ETL]
DELETE FROM [dbo].[GM_Header_ETL]
DELETE FROM [dbo].[GM_Item_ETL]
DELETE FROM [dbo].[GM_Item_ESP_ETL]
DELETE FROM [dbo].[INV_Header_ETL]
DELETE FROM [dbo].[INV_Item_ETL]
DELETE FROM [dbo].[INV_Item_ESP_ETL]
DELETE FROM [dbo].[PO_Accounting_ETL]
DELETE FROM [dbo].[PO_Confirmation_ETL]
DELETE FROM [dbo].[PO_Header_ETL]
DELETE FROM [dbo].[PO_InfRecGE_ETL]
DELETE FROM [dbo].[PO_InfRecPOOrg_ETL]
DELETE FROM [dbo].[PO_InfRecPOOrg_ETL]
DELETE FROM [dbo].[PO_Item_ETL]
DELETE FROM [dbo].[PO_Schedule_ETL]
DELETE FROM [dbo].[PR_ETL]
DELETE FROM [dbo].[PR_Accounting_ETL]
DELETE FROM [dbo].[ProdOrder_Header_ETL]
DELETE FROM [dbo].[ProdOrder_Item_ETL]
DELETE FROM [dbo].[QInfRec_ETL]
DELETE FROM [dbo].[QN_Action_ETL]
DELETE FROM [dbo].[QN_Header_ETL]
DELETE FROM [dbo].[QN_Item_ETL]
DELETE FROM [dbo].[QN_Measure_ETL]
DELETE FROM [dbo].[Savings_ETL]
DELETE FROM [dbo].[SO_Header_ETL]
DELETE FROM [dbo].[SO_Item_ETL]
DELETE FROM [dbo].[User_ETL]
END

GO
