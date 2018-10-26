USE [CONSULTORIO_LSTI]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25/10/2018 17:23:05 ******/
DROP TABLE IF EXISTS [dbo].[Role]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25/10/2018 17:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_Role] [tinyint] NOT NULL,
	[Role] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (1, N' Farmaceutico')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (2, N' Seguridad')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (3, N' Doctor ')
INSERT [dbo].[Role] ([ID_Role], [Role]) VALUES (4, N' Recepcionista')

drop table Role
select * from Role