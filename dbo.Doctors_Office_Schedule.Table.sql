USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Doctors_Office_Schedule]    Script Date: 25/10/2018 17:23:05 ******/
DROP TABLE IF EXISTS [dbo].[Doctors_Office_Schedule]
GO
/****** Object:  Table [dbo].[Doctors_Office_Schedule]    Script Date: 25/10/2018 17:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors_Office_Schedule](
	[ID_Schedule] [tinyint] NOT NULL,
	[Schedule] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[ID_Schedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
