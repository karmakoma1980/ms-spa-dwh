USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_DUPLICATE_MD_PaymentTerm]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[REMOVE_DUPLICATE_MD_PaymentTerm]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by HASH_MD_PAYMENTTERM, T052_SPRAS order by T052_DATUM DESC) as row_num --Added language as partition in order not to deduplicate languages
    from [dbo].[MD_PaymentTerm]
)
delete
from cte
where row_num > 1
;
END

GO
