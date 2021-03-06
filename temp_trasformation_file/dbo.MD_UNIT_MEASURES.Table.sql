USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_UNIT_MEASURES]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_UNIT_MEASURES](
	[SystemID] [varchar](50) NULL,
	[ClientID] [varchar](50) NULL,
	[Key] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[HarmonizedName] [varchar](50) NULL,
	[Statistical_UOM] [varchar](50) NULL
) ON [PRIMARY]
GO
