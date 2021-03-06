USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Schedule_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Schedule_ETL](
	[EKET_SYSID] [varchar](max) NULL,
	[EKET_MANDT] [varchar](max) NULL,
	[EKET_EBELN] [varchar](max) NULL,
	[EKET_EBELP] [varchar](max) NULL,
	[EKET_ETENR] [varchar](max) NULL,
	[EKET_ESTKZ] [varchar](max) NULL,
	[EKET_CHARG] [varchar](max) NULL,
	[EKET_LICHA] [varchar](max) NULL,
	[EKET_BEDAT] [varchar](max) NULL,
	[EKET_EINDT] [varchar](max) NULL,
	[EKET_SLFDT] [varchar](max) NULL,
	[EKET_MENGE] [varchar](max) NULL,
	[EKET_WEMNG] [varchar](max) NULL,
	[EKET_DABMG] [varchar](max) NULL,
	[EKET_BANFN] [varchar](max) NULL,
	[EKET_BNFPO] [varchar](max) NULL,
	[EKET_MAHNZ] [varchar](max) NULL,
	[EKET_GLMNG] [varchar](max) NULL,
	[EKET_AMENG] [varchar](max) NULL,
	[EKET_WAMNG] [varchar](max) NULL,
	[EKET_FIXKZ] [varchar](max) NULL,
	[EKET_ERUSERNAME] [varchar](max) NULL,
	[EKET_AEUSERNAME] [varchar](max) NULL,
	[EKET_UDATE] [varchar](max) NULL,
	[EKET_DATUM] [varchar](max) NULL,
	[HASH_PO_SCHEDULE] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PO_schedule_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Schedule_ETL] ADD  CONSTRAINT [DF__PO_schedule_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PO_Schedule_ETL] ADD  CONSTRAINT [DF__PO_schedule_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
