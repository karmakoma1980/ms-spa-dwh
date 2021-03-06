USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_MD_Data]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Delete_All_MD_Data]
AS
BEGIN
DELETE FROM [dbo].[MD_Account]
DELETE FROM [dbo].[MD_Commodity]
DELETE FROM [dbo].[MD_CostCenter]
DELETE FROM [dbo].[MD_CurrencyMap]
DELETE FROM [dbo].[MD_Network]
DELETE FROM [dbo].[MD_Part]
DELETE FROM [dbo].[MD_PaymentTerm]
DELETE FROM [dbo].[MD_Plant]
DELETE FROM [dbo].[MD_ProfitCenter]
DELETE FROM [dbo].[MD_Project]
DELETE FROM [dbo].[MD_PurchasingGroup]
DELETE FROM [dbo].[MD_Supplier_LFM1]
DELETE FROM [dbo].[MD_Supplier_LFB1]
DELETE FROM [dbo].[MD_Supplier_LFA1]
DELETE FROM [dbo].[MD_UOM]
DELETE FROM [dbo].[MD_User]
END

GO
