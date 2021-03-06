USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_PO_History_ETL_reducted]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_PO_History_ETL_reducted]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by [HASH_PO_HISTORY] order by [EKBE_DATUM] DESC) as row_num
    from [dbo].[1_0_PO_History_1.12SP1500_02_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
