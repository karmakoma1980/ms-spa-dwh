USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_DUPLICATE_CFT_Item(old)]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Daniele, Salvigni>
-- Create date: <@2017>
-- Description:	<Create UID>
-- =============================================
CREATE PROCEDURE [dbo].[REMOVE_DUPLICATE_CFT_Item(old)]
AS
BEGIN
	SET NOCOUNT ON;

;WITH x AS 
(
  SELECT [EKPOA_SYSID],[EKPOA_MANDT],[EKPOA_EBELN],[EKPOA_EBELP], rn = ROW_NUMBER() OVER 
      (PARTITION BY [EKPOA_SYSID],[EKPOA_MANDT],[EKPOA_EBELN],[EKPOA_EBELP] ORDER BY [EKPOA_UID])
  FROM [dbo].[CFT_Item] 
)
DELETE x WHERE rn > 1;
END
GO
