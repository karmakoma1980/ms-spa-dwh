USE [SPA_SQL]
GO
/****** Object:  UserDefinedFunction [dbo].[rem_0]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[rem_0]
(
    @InputStr varchar(8000)
)
RETURNS varchar(8000)
AS
BEGIN
declare @ResultStr varchar(8000)
if PATINDEX('%[^0^]%', @InputStr) = 0
return @InputStr
else
set @ResultStr = SUBSTRING(@InputStr, PATINDEX('%[^0]%', @InputStr+'.'), LEN(@InputStr))
return @ResultStr
END
GO
