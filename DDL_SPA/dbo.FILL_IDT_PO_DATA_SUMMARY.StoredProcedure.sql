USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[FILL_IDT_PO_DATA_SUMMARY]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[FILL_IDT_PO_DATA_SUMMARY]
AS
BEGIN
delete 
from
[dbo].[IDT_PO_DATA_SUMMARY]
END
BEGIN
insert into
[dbo].[IDT_PO_DATA_SUMMARY](
	[Number_of_PO],
	[System],
	[Client],
	[Creation_Date]
) 
select 
count([EKKO_EBELN]),
[EKKO_SYSID],
[EKKO_MANDT],
[EKKO_AEDAT]
from
[dbo].[PO_Header] 
group by
[EKKO_SYSID],
[EKKO_MANDT],
[EKKO_AEDAT]
order by
[EKKO_AEDAT] asc,
[EKKO_SYSID],
[EKKO_MANDT]
END
GO
