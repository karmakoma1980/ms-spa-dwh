USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_PR_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<SanGy>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_PR_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by CONCAT(REPLACE(REPLACE([EBAN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EBAN_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EBAN_BANFN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EBAN_BNFPO] ,'"','')),' ','')) order by [EBAN_DATUM] DESC) as row_num
    from [dbo].[1_0_PR_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
