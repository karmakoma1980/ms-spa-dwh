USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[FILL_IDT_INVOICE_DATA_SUMMARY]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[FILL_IDT_INVOICE_DATA_SUMMARY]
AS
BEGIN
delete 
from
[dbo].[IDT_INVOICE_DATA_SUMMARY]
END
BEGIN
insert into
[dbo].[IDT_INVOICE_DATA_SUMMARY](

	[Number_of_INV],
	[System],
	[Client],
	[Creation_Date]
) 
select 
count([BKPF_BELNR]),
[BKPF_SYSID],
[BKPF_MANDT],
[BKPF_BUDAT]
from
[dbo].[INV_Header] 
group by
[BKPF_SYSID],
[BKPF_MANDT],
[BKPF_BUDAT]
order by
[BKPF_BUDAT] asc,
[BKPF_SYSID],
[BKPF_MANDT]
END
GO
