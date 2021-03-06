USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_Delete_Duplicate_PO_History_1.12_from_1_0_TMP_01]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[2_0_Delete_Duplicate_PO_History_1.12_from_1_0_TMP_01]
AS
BEGIN
delete
from
[dbo].[1_0_PO_History_1.12_01_TMP]
where 
[HASH_PO_HISTORY] in
(			select 
			[HASH_PO_HISTORY]
			from
			PO_HISTORY
			where
			SSMA_TimeStamp < dbo.fnFormatDate('2018-02-02','YYYY-MM-DD')
			and HASH_PO_CONFIRMATION is not null
			and (EKBE_SYSID <> 'P11' and EKBE_MANDT <> '010')
			and (EKBE_SYSID <> 'SP1'and EKBE_MANDT <> '530')		
			)
END





	
GO
