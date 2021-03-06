USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_PO_Spent]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<SanGy Super Super 80!!!>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_PO_Spent]
AS
BEGIN
	SET NOCOUNT ON;
select
replace(concat(poi.EKPO_SYSID,'_',dbo.rem_0(poi.EKPO_EBELN),'_',dbo.rem_0(poi.EKPO_EBELP)),' ','') as 'UniqueIDPO',
plant.[Country Long] as 'Responsable Country',
plant.CityAggregated as 'Rersponsable Site',
poi.EKPO_SYSID as 'System',
company.FACTS as 'FACTS',
dbo.fnFormatDate(poi.EKPO_UDATE,'YYYY') as 'Fiscal Year',
poi.EKPO_EBELN as 'PO',
dbo.rem_0(poi.EKPO_EBELN) as 'Po Line Item',
poi.EKPO_BUKRS as 'Company Code',
dbo.rem_0(plant.T001W_WERKS) as 'Plant',
poh.EKKO_BSART as 'Line Type',
pol.Category1 as 'Line Type Category',
psgr.T024_EKORG as 'Buyer Group',
psgr.T024_EKNAM as 'Buyer Group Name',
dbo.fnFormatDate(poi.EKPO_UDATE,'DD.MM.YYYY') as 'CreationDate'
from PO_Item as poi
left join 
[dbo].[BW_MD_C0PLANT] as plant 
on replace(concat(poi.EKPO_SYSID,'CLNT',poi.EKPO_MANDT,dbo.rem_0(poi.EKPO_WERKS)),' ','') = replace(concat(plant.[Key],dbo.rem_0(plant.T001W_WERKS)),' ','')
left join 
[dbo].[BW_MD_C0BUKRS] as company 
on replace(concat(poi.EKPO_SYSID,'_',dbo.rem_0(poi.EKPO_EBELN),'_',dbo.rem_0(poi.EKPO_BUKRS)),' ','')=replace((concat(company.Client,company.CompanyCode)),' ','')
left join 
PO_Header as poh
on replace(concat(poi.EKPO_SYSID,poi.EKPO_MANDT,dbo.rem_0(poi.EKPO_EBELN)),' ','')=replace(concat(poh.EKKO_SYSID,poh.EKKO_MANDT,dbo.rem_0(poh.EKKO_EBELN)),' ','')
left join
[dbo].[BW_MD_C0POLNTY] as pol
on
concat(pol.client,pol.LineType)=replace(concat(poh.EKKO_SYSID,'CLNT',poh.EKKO_MANDT,poh.EKKO_BSART),' ','')
left join
(select * from MD_PurchasingGroup as p where p.T024_EKGRP <> '') as psgr
on replace(concat(poh.EKKO_SYSID,poh.EKKO_MANDT,poh.EKKO_EKGRP),' ','') = replace(concat(psgr.T024_SYSID, psgr.T024_MANDT,psgr.T024_EKGRP),' ','')
left join
[dbo].[BW_MD_C0EKGRP1] as psgr_md
on replace(concat(poh.EKKO_SYSID,poh.EKKO_MANDT,poh.EKKO_EKGRP),' ','') = replace(concat(psgr_md.Client,psgr_md.PurchasingGroup),' ','')
where
(dbo.fnFormatDate(poi.EKPO_UDATE,'DD.MM.YYYY') > '30.11.2019' )



END


GO
