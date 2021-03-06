USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_BW_MD_A0MANUNIT]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Sangy Sangy>
-- Create date: <Jan, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_BW_MD_A0MANUNIT]
AS
BEGIN
	SET NOCOUNT ON;
select 
'ManagementUnit',
'Business Line',
'BusinessPartner',
'CarveOut',
'Complexity',
'Consolidation',
'Long description',
'PPSID',
'ProductRange1',
'ProductRange2',
'ProgramLine'
union all
select	distinct
	[ManagementUnit],
	[Business Line],
	[BusinessPartner],
	[CarveOut],
	[Complexity],
	[Consolidation],
	[Long description],
	[PPSID],
	[ProductRange1],
	[ProductRange2],
	[ProgramLine]
	from
[dbo].[BW_MD_A0MANUNIT]
END

GO
