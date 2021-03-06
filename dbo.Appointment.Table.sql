USE [CONSULTORIO_LSTI]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT IF EXISTS [FK_Appointment_Health_Care]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT IF EXISTS [FK_Appointment_Doctors_Office]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
ALTER TABLE [dbo].[Appointment] DROP CONSTRAINT IF EXISTS [FK_Appointment_Doctor]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 25/10/2018 17:23:05 ******/
DROP TABLE IF EXISTS [dbo].[Appointment]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 25/10/2018 17:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[ID_Appointment] [uniqueidentifier] NOT NULL,
	[ID_Patient] [uniqueidentifier] NOT NULL,
	[ID_Doctor] [int] NOT NULL,
	[ID_Doctors_Office] [int] NOT NULL,
	[ID_Prescription] [int] NOT NULL,
	[ID_Health_Care] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[ID_Appointment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'a4bd4bc6-939a-d0d1-3062-01583f71509d', N'1c739918-bb67-0c14-94f6-3061f7191456', 72, 72, 72, 72, CAST(N'2018-03-09T12:56:09.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'a7b8f8dd-74bc-56d8-0f69-0ab05f50f63f', N'cd535ae2-b13d-643e-877c-96825bd35c3a', 43, 43, 43, 43, CAST(N'2019-11-05T02:08:51.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'444af2f5-e451-96b1-78bb-0b3293bedf32', N'451a6a36-6bfb-7e05-b122-a50761c7ad90', 25, 25, 25, 25, CAST(N'2019-05-07T18:32:52.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'7a0e01e9-8a84-d5e4-fe3c-16ef0d154600', N'7435cf4f-df76-0124-69f4-ac94d0088998', 7, 7, 7, 7, CAST(N'2017-01-07T18:30:12.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'55ca2951-6a6a-a79d-6d86-1857972b26eb', N'a450b7e5-541d-87d3-aa42-b9d032e9f6b7', 1, 1, 1, 1, CAST(N'2018-05-01T19:03:02.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'72140ad9-4ed0-41f5-ff53-20ad5c07484b', N'1828d73f-7514-a215-3f93-9d576a1cbb49', 80, 80, 80, 80, CAST(N'2019-02-03T17:30:05.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'46440cad-5ec0-b4f6-f970-20f1c1d3c3d9', N'9a2d6243-9bb0-ca54-e716-5827a26567a8', 27, 27, 27, 27, CAST(N'2018-12-04T04:50:53.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'9383ee5a-573d-7a90-5f54-296cf0f742dd', N'5be1576e-bfc2-f83e-6887-18db7fc1c3d6', 21, 21, 21, 21, CAST(N'2017-06-08T13:01:26.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'4d175e28-466f-02e7-c6d8-31b64ee10a92', N'bbd8edbe-4fa3-cd76-f67e-0f07168eb83c', 53, 53, 53, 53, CAST(N'2018-04-05T08:56:21.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'2ab64dd3-ac47-b77c-e9e5-31db0ebf6a45', N'3e5e3567-9105-bc95-baf2-dc74b9903b18', 15, 15, 15, 15, CAST(N'2018-04-10T04:53:12.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'ba396d0c-4e90-639c-c596-32147d95071e', N'8a9485b3-5f6a-3fbd-a63b-f0604e5c61a0', 32, 32, 32, 32, CAST(N'2019-03-10T01:46:03.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'cedf4d1c-b661-6332-dc9d-3d1078b5d6cb', N'af3f2539-c220-bac4-d59f-db3eac1206b7', 51, 51, 51, 51, CAST(N'2017-02-12T20:42:01.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'5e4e8244-36b8-9de7-fc34-3d58ad14fcdc', N'2eaf8cc8-8bc5-17b6-d211-3ede2fb86fd8', 74, 74, 74, 74, CAST(N'2019-04-08T09:57:11.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'51af0924-da39-967a-7ef6-46dfcd5f038f', N'2707e30f-fb3e-d92c-0090-c16848c330dc', 62, 62, 62, 62, CAST(N'2019-10-05T22:50:58.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'eb938cf9-32ca-0212-f5ee-49c0486bf29c', N'dac69051-92ce-6003-c100-408fe2888f0a', 99, 99, 99, 99, CAST(N'2018-08-12T01:20:16.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'c2ff5816-fa41-4cbb-17ab-5650a8afb29a', N'7dfd2a16-2883-c297-4d3d-daccd477d8b7', 57, 57, 57, 57, CAST(N'2017-03-07T04:13:39.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'59089d3e-1128-ff62-c993-5977ddd44824', N'a0b1c6f5-1d3e-56d6-b5d6-8414233baa7b', 54, 54, 54, 54, CAST(N'2017-07-12T23:17:07.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'3b108e27-0835-5164-32bc-5c92a4c200e9', N'9b950785-74f4-15fd-f6dd-a01f212039d5', 35, 35, 35, 35, CAST(N'2019-05-10T23:42:47.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'4b47629a-a374-23f3-f126-689157950df3', N'9ff693ff-7dab-3a84-aae0-29c270c91661', 61, 61, 61, 61, CAST(N'2018-04-05T12:19:30.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'b7a3c03c-4117-14a8-0ac0-6bc833ae0912', N'e4db2dba-3dbc-7125-8ddb-56effe1a9363', 19, 19, 19, 19, CAST(N'2017-04-12T06:56:06.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'e7db5fa0-50ca-8c0e-4570-7388a4920b18', N'ca07ec02-ec19-ff2f-4764-94e421408b78', 29, 29, 29, 29, CAST(N'2019-12-07T18:43:42.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'fe4fd5f2-e7f6-c451-a5f1-808bd64bbd33', N'3c5391ba-25cb-aea5-67d3-421efca21bf9', 18, 18, 18, 18, CAST(N'2018-09-06T02:55:14.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'71a5ea34-4b62-4651-0d3c-812b56a93e0a', N'8f14444a-2979-28f6-c794-c52ba4e13f0c', 4, 4, 4, 4, CAST(N'2018-11-06T01:35:48.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'cb0369a0-475d-2bf0-d206-870e6673a492', N'2eb264ec-5a6e-178d-42f7-fac8a9f5d118', 44, 44, 44, 44, CAST(N'2019-10-05T23:44:55.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'43b22b1f-b3c9-a02f-7fe2-8732e4b3aae8', N'32b7426f-843d-64d4-a87b-da37fbbc1902', 12, 12, 12, 12, CAST(N'2018-08-08T23:35:38.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'cd403549-c854-0022-5e81-8ac65a78836c', N'd256a21c-2f31-1391-8f46-6babd5b8d886', 90, 90, 90, 90, CAST(N'2018-07-01T14:45:30.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'f95b880b-12d4-ed02-e641-90cc11c466cb', N'40dd2f0b-2fff-669b-f00f-77259fa9f601', 92, 92, 92, 92, CAST(N'2018-11-12T09:24:29.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'27e3c02b-bc25-1e8a-5ed2-93a70c5680f3', N'4d2e1668-e14c-9805-e09a-513dced85f44', 67, 67, 67, 67, CAST(N'2019-09-10T15:13:11.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'09d3bfa2-c04b-1d79-825a-949a8016fe1a', N'15187eef-5a24-ceb0-adb2-4ade498e46bb', 24, 24, 24, 24, CAST(N'2019-01-02T17:34:33.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'eed4b3c4-bef1-65dc-7c61-9a815d34d662', N'26ceaab7-9f0d-c852-7405-e475f0fd64a1', 20, 20, 20, 20, CAST(N'2018-07-09T10:29:11.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'72d41f15-a303-e06e-0db5-a5a414e42efd', N'74f79731-8cd8-5965-9e45-fd706716d0f9', 38, 38, 38, 38, CAST(N'2019-09-03T06:49:40.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'fdec996b-9032-aa23-297e-a7d9a76919cc', N'35983cef-19d8-e180-2d69-a5b6137e0d47', 34, 34, 34, 34, CAST(N'2019-05-03T03:32:21.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'8f3a60a2-d264-4333-597e-aec97981dec3', N'ddacd600-cc60-8cdb-3722-7909ef7602b2', 25, 25, 25, 25, CAST(N'2017-07-12T17:11:04.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'074c65aa-5407-c9ea-45f5-af19aa43d57f', N'dc9e7110-da6d-22c3-cdd9-e38e4523916f', 86, 86, 86, 86, CAST(N'2018-06-09T18:50:36.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'26f34c31-ec25-fe24-8fb7-b02ce2da18de', N'c90d3e78-af95-770d-7164-c89b77ca025f', 66, 66, 66, 66, CAST(N'2017-08-09T13:04:43.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'8e43bc1f-a088-1633-f635-c4450ac533fc', N'6ce1c596-03ab-10e1-3567-d4d87214f463', 2, 2, 2, 2, CAST(N'2017-08-11T15:52:15.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'1553fbc8-dfe6-95b9-ffdb-c560b3e55c1e', N'2ae4dd4a-3fc5-efa9-d44d-aa9f16dd9f71', 23, 23, 23, 23, CAST(N'2017-07-04T11:41:33.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'878aae0f-ed69-b3b1-6d6d-ca2325c1a09c', N'991c9263-97bf-5042-4df4-da3649e39ef4', 79, 79, 79, 79, CAST(N'2018-11-02T11:19:44.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'dec3f111-7b81-b478-b087-d0867aff1be1', N'edabfe20-e294-197a-b6f3-bc2e66ee62be', 63, 63, 63, 63, CAST(N'2017-04-07T05:09:44.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'd3e0a656-d494-ce8d-1769-deae951fd862', N'fd8f9c57-0e9c-4fa1-75c6-d05e1cfb9f2d', 42, 42, 42, 42, CAST(N'2018-02-02T04:30:06.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'06e512bd-d37d-b7b9-19e9-e3c9e8db87c3', N'be21c69e-6897-ff57-42dd-439d55023782', 8, 8, 8, 8, CAST(N'2019-03-03T18:19:21.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'87f293f0-1bf2-f8f9-579b-ea6ae500c2aa', N'990f0a0c-e5f2-357c-8459-a9c694fa247e', 55, 55, 55, 55, CAST(N'2018-08-06T15:18:52.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'a975d8f2-0b19-c396-db8f-ece4df605a7e', N'22a5fffd-0d2f-9eb5-e355-574595ec5478', 36, 36, 36, 36, CAST(N'2017-02-10T09:25:47.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'b51b1f36-cbf0-d643-9250-ed58da1b2e45', N'5a8e5aab-2efa-a93e-cdd4-f1724c81f3f8', 22, 22, 22, 22, CAST(N'2019-06-02T05:24:54.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'6eca04a9-c5d8-cfd9-b9d0-f5d5dda15863', N'4f871e92-4c6a-6a8e-fdd7-3fe8c5c967dc', 77, 77, 77, 77, CAST(N'2018-08-01T00:06:01.000' AS DateTime))
INSERT [dbo].[Appointment] ([ID_Appointment], [ID_Patient], [ID_Doctor], [ID_Doctors_Office], [ID_Prescription], [ID_Health_Care], [Fecha]) VALUES (N'570d40a7-92f4-1b28-a3f7-fc4d3b4b25b9', N'4aece189-c4b7-fe6b-9db7-50e583e917c8', 30, 30, 30, 30, CAST(N'2017-02-11T13:19:51.000' AS DateTime))
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Doctor] FOREIGN KEY([ID_Doctor])
REFERENCES [dbo].[Doctor] ([ID_Doctor])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Doctor]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Doctors_Office] FOREIGN KEY([ID_Doctors_Office])
REFERENCES [dbo].[Doctors_Office] ([ID_Doctors_Office])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Doctors_Office]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Health_Care] FOREIGN KEY([ID_Health_Care])
REFERENCES [dbo].[Health_Care] ([ID_Health_Care])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Health_Care]
GO
