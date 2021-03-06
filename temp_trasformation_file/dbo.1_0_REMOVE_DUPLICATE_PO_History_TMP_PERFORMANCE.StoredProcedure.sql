USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_PO_History_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Sangy>
-- Create date: <han, 2018>
-- Description:	<Deduplication>
-- =============================================

CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_PO_History_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
     select row_number() over(partition by CONCAT(REPLACE(REPLACE([EKBE_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKBE_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKBE_EBELN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKBE_EBELP],'"','')),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKBE_BELNR],'"','')),' ',''),REPLACE([dbo].[add_0](3,REPLACE([EKBE_BUZEI],'"','')),' ',''),REPLACE(REPLACE([EKBE_GJAHR],'"',''),' ',''),REPLACE(REPLACE([EKBE_VGABE],'"',''),' ',''),REPLACE([dbo].[add_0](2,REPLACE([EKBE_ZEKKN],'"','')),' ','')) order by [EKBE_DATUM] DESC) as row_num
	 from [dbo].[1_0_PO_History_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
