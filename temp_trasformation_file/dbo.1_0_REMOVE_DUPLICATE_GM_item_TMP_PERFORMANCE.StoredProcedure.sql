USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_GM_item_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_GM_item_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
	select row_number() over(partition by CONCAT(REPLACE(REPLACE([MSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([MSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([MSEG_MBLNR] ,'"','')),' ',''),REPLACE(REPLACE([MSEG_MJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](4,REPLACE([MSEG_ZEILE] ,'"','')),' ','')) order by [MSEG_DATUM] DESC) as row_num
    from [dbo].[1_0_GM_item_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
