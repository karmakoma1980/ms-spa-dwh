USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_PO_Item_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_PO_Item_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by CONCAT(REPLACE(REPLACE([EKPO_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKPO_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKPO_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKPO_EBELP] ,'"','')),' ','')) order by [EKPO_DATUM] DESC) as row_num
    from [dbo].[1_0_PO_Item_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
