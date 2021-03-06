USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_Delete_Duplicate_PO_History_from_1_0_reducted]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[2_0_Delete_Duplicate_PO_History_from_1_0_reducted]
AS
BEGIN
delete
from
[dbo].[1_0_PO_History_1.11_ETL_reducted_COMPLETED]
where 
[HASH_PO_HISTORY] in
(select [HASH_PO_HISTORY] from [dbo].[PO_History])
delete
from
[dbo].[1_0_PO_History_1.12_ETL_reducted_COMPLETED]
where 
[HASH_PO_HISTORY] in
(select [HASH_PO_HISTORY] from [dbo].[PO_History])
delete
from
[dbo].[1_0_PO_History_1.12SP1500_ETL_reducted_COMPLETED]
where 
[HASH_PO_HISTORY] in
(select [HASH_PO_HISTORY] from [dbo].[PO_History])
delete
from
[dbo].[1_0_PO_History_P11_010_2_ETL_reducted_COMPLETED]
where 
[HASH_PO_HISTORY] in
(select [HASH_PO_HISTORY] from [dbo].[PO_History])
delete
from
[dbo].[1_0_PO_History_P11_010_ETL_reducted_COMPLETED]
where 
[HASH_PO_HISTORY] in
(select [HASH_PO_HISTORY] from [dbo].[PO_History])
delete
from
[dbo].[1_0_PO_History_SP1_530_ETL_reducted_COMPLETED]
where 
[HASH_PO_HISTORY] in
(select [HASH_PO_HISTORY] from [dbo].[PO_History])
END


GO
