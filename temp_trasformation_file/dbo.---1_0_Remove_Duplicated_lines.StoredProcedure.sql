USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[---1_0_Remove_Duplicated_lines]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[---1_0_Remove_Duplicated_lines]
AS
BEGIN
exec [dbo].[1_0_REMOVE_DUPLICATE_CO_Header_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_CO_Item_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_GM_Header_ETL]
--exec [dbo].[1_0_REMOVE_DUPLICATE_GM_item_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_INV_Header_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_INV_Item_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PO_Accounting_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PO_Confirmation_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PO_Header_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PO_History_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PO_Item_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PO_Schedule_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PR_Accounting_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_PR_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_QN_Header_ETL]
exec [dbo].[1_0_REMOVE_DUPLICATE_Savings_ETL]
END
GO
