USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_MD_Data_Per_System_ETL]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[Delete_All_MD_Data_Per_System_ETL]
AS
BEGIN
DELETE FROM [dbo].[MD_Account_ETL]
where
[SKA1_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--[SKA1_SYSID] like 'SP1'
--and
--[SKA1_MANDT] like '500'
DELETE FROM [dbo].[MD_Commodity_ETL]
where
[T023T_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[T023T_MANDT] like '500'
DELETE FROM [dbo].[MD_CostCenter_ETL]
where
[CSKS_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[CSKS_MANDT] like '500'
DELETE FROM [dbo].[MD_CurrencyMap_ETL]
where
[TCURC_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[TCURC_MANDT] like '500'
DELETE FROM [dbo].[MD_Network_ETL]
where
[AUFK_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[AUFK_MANDT] like '500'
DELETE FROM [dbo].[MD_Part_ETL]
where
[MARA_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[MARA_MANDT] like '500'
DELETE FROM [dbo].[MD_PaymentTerm_ETL]
where
[T052_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[T052_MANDT] like '500'
DELETE FROM [dbo].[MD_Plant_ETL]
where
[T001W_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[T001W_MANDT] like '500'
DELETE FROM [dbo].[MD_ProfitCenter_ETL]
where
[CEPC_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[CEPC_MANDT] like '500'
DELETE FROM [dbo].[MD_Project_ETL]
where
[PROJ_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[PROJ_MANDT] like '500'
DELETE FROM [dbo].[MD_PurchasingGroup_ETL]
where
[T024_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[T024_MANDT] like '500'
DELETE FROM [dbo].[MD_Supplier_LFM1_ETL]
where
[LFM1_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[LFM1_MANDT] like '500'
DELETE FROM [dbo].[MD_Supplier_LFB1_ETL]
where
[LFB1_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[LFB1_MANDT] like '500'
DELETE FROM [dbo].[MD_Supplier_LFA1_ETL]
where
[LFA1_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[LFA1_MANDT] like '500'
DELETE FROM [dbo].[MD_UOM_ETL]
where
[T006_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[T006_MANDT] like '500'
DELETE FROM [dbo].[MD_User_ETL]
where
[USR03_SYSID] in ('ADP','DE3','IE3','LM3','O40','OP3','P11','PRD','U40','P01')
--and
--[USR03_MANDT] like '500'
END
GO
