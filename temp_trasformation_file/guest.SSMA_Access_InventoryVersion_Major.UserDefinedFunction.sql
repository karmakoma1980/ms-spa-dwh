USE [SPA_SQL]
GO
/****** Object:  UserDefinedFunction [guest].[SSMA_Access_InventoryVersion_Major]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE FUNCTION [guest].[SSMA_Access_InventoryVersion_Major]() 
   RETURNS INT                                                                     
 AS                                                                                
 BEGIN                                                                             
   RETURN 1                                                                        
 END                                                                               

GO
