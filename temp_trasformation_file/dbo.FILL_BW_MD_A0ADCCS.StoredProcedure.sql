USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[FILL_BW_MD_A0ADCCS]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[FILL_BW_MD_A0ADCCS]
AS
BEGIN
delete 
from
[dbo].[BW_MD_A0ADCCS]
END
BEGIN
insert into
[dbo].[BW_MD_A0ADCCS](

[ADCCS Code],
[AGCCS],
[Main Sub-commodity allocation (Orlando)],
[Commodity Manager (Orlando)],
[ADCCS CLUSTER],
[ADCCS CLUSTER (EEE)],
[Main Sub-commodity allocation (EEE)	],
[Commodity Manager (EEE)],
[Main Sub-commodity allocation (Production)],
[Commodity Manager (Production)],
[Main Sub-commodity allocation (CS/MRO)],
[Commodity Manager (CS/MRO)],
[Text]
) 
select 
distinct
cm.ADCCS as [ADCCS Code],
'' as [AGCCS],
'' as [Main Sub-commodity allocation (Orlando)],
'' as [Commodity Manager (Orlando)],
'' as [ADCCS CLUSTER],
'' as [ADCCS CLUSTER (EEE)],
'' as [Main Sub-commodity allocation (EEE)	],
'' as [Commodity Manager (EEE)],
'' as [Main Sub-commodity allocation (Production)],
'' as [Commodity Manager (Production)],
'' as [Main Sub-commodity allocation (CS/MRO)],
'' as [Commodity Manager (CS/MRO)],
'' as [Text]
from
[dbo].[BW_MD_C0COMMDTY] as cm
where cm.ADCCS
not in
	(
	select 
	distinct
	adccs.[ADCCS Code]
	from
	[dbo].[BW_MD_A0ADCCS_PREV] as adccs
	)
union
select 
distinct
[ADCCS Code],
[AGCCS],
[Main Sub-commodity allocation (Orlando)],
[Commodity Manager (Orlando)],
[ADCCS CLUSTER],
[ADCCS CLUSTER (EEE)],
[Main Sub-commodity allocation (EEE)	],
[Commodity Manager (EEE)],
[Main Sub-commodity allocation (Production)],
[Commodity Manager (Production)],
[Main Sub-commodity allocation (CS/MRO)],
[Commodity Manager (CS/MRO)],
[Text]
from
[dbo].[BW_MD_A0ADCCS_PREV]
END





GO
