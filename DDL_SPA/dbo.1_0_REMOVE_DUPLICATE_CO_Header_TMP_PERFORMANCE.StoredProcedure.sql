USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_CO_Header_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Sang>
-- Create date: <han, 2018>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_CO_Header_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
     select row_number() over(partition by 
	 [dbo].[add_0](10,REPLACE([EKKOK_KONNR],'"',''))
	 order by [EKKOK_DATUM] DESC) as row_num
	 from [dbo].[1_0_CO_Header_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
