USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_OTD]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Sangysssimooo>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================[dbo].[1_0_EXTRACTION_INV_Item_ETL]
CREATE PROCEDURE [dbo].[EXTRACTION_OTD]
AS
BEGIN
	SET NOCOUNT ON;
select
'System',
'Client',
'CompanyCode',
'Plant',
'SupplierID',
'UniqueIDPO',
'POID',
'POItem',
'POScheduleLine',
'LineType',
'PurchasingGroup',
'MaterialNumber',
'Identifier',
'SupplyChain',
'SupplyChain (TOPL)',
'MilestoneDeliveryDate',
'StatisticalDeliveryDate',
'DeliveryDueDate',
'MaxDeliveryDate', 
'ScheduledQuantity',
'FinalDeliveredQuantity',
'FinalDeliveryIndicator',
'FinalInvoiceIndicator',
'POItemDeleted',
'GoodsReceiptRequired'
union all
select
	[System],
	[Client],
	[CompanyCode],
	[Plant],
	[SupplierID],
	[UniqueIDPO],
	[POID],
	[POItem],
	[POScheduleLine],
	[LineType],
	[PurchasingGroup],
	[MaterialNumber],
	[Identifier],
	[SupplyChain],
	[SupplyChain (TOPL)],
	[MilestoneDeliveryDate],
	[StatisticalDeliveryDate],
	[DeliveryDueDate],
	[MaxDeliveryDate], 
	[ScheduledQuantity],
	[FinalDeliveredQuantity],
	[FinalDeliveryIndicator],
	[FinalInvoiceIndicator],
	[POItemDeleted],
	[GoodsReceiptRequired]
from
[dbo].[OTD]
END

GO
