USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_All_MD_Data_ETL------]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[MOVE_All_MD_Data_ETL------]
AS
BEGIN
EXEC [dbo].[MOVE_MD_Account]
EXEC [dbo].[MOVE_MD_Account_ESP]
EXEC [dbo].[MOVE_MD_Commodity]
EXEC [dbo].[MOVE_MD_CostCenter]
EXEC [dbo].[MOVE_MD_CurrencyMap]
EXEC [dbo].[MOVE_MD_Network]
EXEC [dbo].[MOVE_MD_PaymentTerm]
EXEC [dbo].[MOVE_MD_Plant]
EXEC [dbo].[MOVE_MD_ProfitCenter]
EXEC [dbo].[MOVE_MD_Project]
EXEC [dbo].[MOVE_MD_PurchasingGroup]
EXEC [dbo].[MOVE_MD_Supplier_LFA1]
EXEC [dbo].[MOVE_MD_Supplier_LFB1]
EXEC [dbo].[MOVE_MD_Supplier_LFM1]
EXEC [dbo].[MOVE_MD_UOM]
EXEC [dbo].[MOVE_MD_User]
EXEC [dbo].[MOVE_MD_Part]
END

GO
