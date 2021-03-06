USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[FILL_BW_MD_C0COMMDTY]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[FILL_BW_MD_C0COMMDTY]
AS
BEGIN
delete 
from
[dbo].[BW_MD_C0COMMDTY]
END
BEGIN
insert into
[dbo].[BW_MD_C0COMMDTY](
	[Source System],
	[Client],
	[ComodityCode],
	[ADCCS],
	[CommodityFamily],
	[Non-EGP],
	[CommodityType]
) 
select 
distinct
[dbo].[rem_0](mdcd.T023T_SYSID) as [Source System],
[dbo].[rem_0](mdcd.T023T_MANDT) as [Client],
[dbo].[rem_0](mdcd.T023T_MATKL) as [CommodityCode],
bwcd.ADCCS,
bwcd.CommodityFamily,
bwcd.[Non-EGP],
bwcd.CommodityType
from
[dbo].[MD_Commodity] as mdcd
left join
[dbo].[BW_MD_C0COMMDTY_PREV] as bwcd on 
CONCAT([dbo].[rem_0](bwcd.[Source System]),[dbo].[rem_0](bwcd.Client),[dbo].[rem_0](bwcd.ComodityCode))=
CONCAT([dbo].[rem_0](mdcd.T023T_SYSID),[dbo].[rem_0](mdcd.T023T_MANDT),[dbo].[rem_0](mdcd.T023T_MATKL))
END


GO
