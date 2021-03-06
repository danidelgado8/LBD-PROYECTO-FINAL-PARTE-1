USE [CONSULTORIO_LSTI]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prescription]') AND type in (N'U'))
ALTER TABLE [dbo].[Prescription] DROP CONSTRAINT IF EXISTS [FK_Prescription_Prescription_Product]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 25/10/2018 17:23:05 ******/
DROP TABLE IF EXISTS [dbo].[Prescription]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 25/10/2018 17:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[ID_Prescription] [int] NOT NULL,
	[ID_Appointment] [uniqueidentifier] NOT NULL,
	[ID_Prescription_Product] [int] NULL,
	[Diagnosis] [text] NOT NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED 
(
	[ID_Prescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (1, N'2539b1dd-0119-ce45-81bd-e760dc203c34', 1, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (2, N'cfb659ec-da7a-4920-783a-125da5852375', 2, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (3, N'46b09f08-d2ae-c0b9-cd44-a71deb08706f', 3, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (4, N'02c7cf05-5297-4e76-8bb0-495a5dc8d229', 4, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (5, N'f9663e95-e365-5d0d-44b9-8f4257de8a7c', 5, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (6, N'5b29e999-40e7-5603-e884-72bb85820286', 6, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (7, N'6e74f967-319d-fff6-0dd6-095102211695', 7, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (8, N'b0742d72-1815-7a7e-835f-89948b6c3163', 8, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (9, N'57ea5e63-777a-13d3-b846-68961c7cd801', 9, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (10, N'ad9bd5e6-cf54-d6b2-754e-7111f7409d19', 10, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (11, N'5ad798ab-d447-3944-a122-35854e427d69', 11, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (12, N'4d5bb210-9d93-ce84-ee53-1081ceab1510', 12, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (13, N'718f3a16-c0ef-e26d-40ac-39ab97882933', 13, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (14, N'e0ecdd11-5b1d-56cb-e10c-9a0ac675432a', 14, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (15, N'6ac2ad85-c2ef-00d5-bbfa-ddb60a5ba495', 15, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (16, N'f7fe7f6c-28e3-fa2c-8e93-5b8bb787f503', 16, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (17, N'28d31538-69cf-660a-8db2-8256f0040ce1', 17, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (18, N'c9ee39f4-95f0-6ac2-924d-ec043d18b96d', 18, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (19, N'f978485f-bf91-51f7-187c-fffd085ae27c', 19, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (20, N'25cf9de4-64f2-6a14-e7a6-57f01d9cb5a5', 20, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (21, N'81ae7fbe-5224-472a-9978-d6742c08e201', 21, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (22, N'5ca08ce6-a9ab-95ac-c66e-96a5b0456533', 22, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (23, N'91ce58ab-f80d-e3d2-71fe-3d8bec7cc858', 23, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (24, N'c6ecea4d-32c6-126e-485e-f3ba6b31b30c', 24, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (25, N'24c5b34c-4b0a-f65b-ecc8-4701cb916f11', 25, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (26, N'd1d83598-4471-bf01-d0de-41602b02a10f', 26, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (27, N'6bf0fe2d-1c13-e3f3-4dbc-18fbf635d0ac', 27, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (28, N'ce2147aa-6e0f-6847-f2cd-36275653f5b2', 28, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (29, N'b7d487fe-3e34-1954-2d0d-4d3ed2fa182e', 29, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (30, N'46062e95-946d-e123-5e09-5fab98737c99', 30, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (31, N'6b5f2c7f-3002-ad15-4f8f-7958456f9db3', 31, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (32, N'0f08cb61-b1e2-dc51-b15d-3e294f61b324', 32, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (33, N'787ae244-ace1-e8de-d721-db8f7dc0e221', 33, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (34, N'9d9bb329-59e5-6a80-36a1-d3fcdde70d79', 34, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (35, N'670ab4e5-5f38-be51-cd57-9ddb15ef4654', 35, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (36, N'834683b6-ab75-a52c-b436-a8d60ff51dca', 36, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (37, N'bebc74bb-8dde-ebf2-058b-2fe55a88ac4d', 37, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (38, N'd8b750e3-385c-49f9-d67b-89382e5e8bd1', 38, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (39, N'87260eeb-7e78-263d-eea0-d0900f725c8d', 39, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (40, N'2a2834dc-6d54-68aa-deea-ee569d5137b9', 40, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (41, N'c6fcb88d-61eb-61f6-7283-e4f7c2f898f1', 41, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (42, N'206fd4ca-8de2-9cfc-5bb8-a930f252e7cc', 42, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (43, N'30e4072a-7e16-acda-8f3b-0aff530295be', 43, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (44, N'09992b74-abe5-4224-f2dd-b7e75959ebde', 44, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (45, N'bd0a55e9-0285-c72d-1ded-4aaa3c13fb5a', 45, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (46, N'fc29dde2-084e-0593-3bf9-42531e9f2734', 46, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (47, N'e26bc468-e8d5-92fb-8fde-ddba5137975e', 47, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (48, N'0caef965-8a55-5142-5be9-ec41a9e5b7f8', 48, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (49, N'192dc371-bba9-9209-e8c0-a9ae3094a9bb', 49, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (50, N'cf80daa9-25d5-ea6f-4833-0c6c38645723', 50, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (51, N'e5c5bfbe-b11c-9be5-c77e-68d4b03adc52', 51, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (52, N'4698d3c5-30d3-43a6-7571-76a096677266', 52, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (53, N'1288c447-7c5c-3f7d-b243-fc3f1916c36f', 53, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (54, N'0c0eef3b-bc62-46f4-869b-5bf69f88fc7f', 54, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (55, N'ae88a3ea-e581-de77-df6c-d711f1d6d97a', 55, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (56, N'702e12aa-f927-c37c-befd-10114408f2c2', 56, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (57, N'0171c570-bbb2-6e8c-c747-3d8347ff8413', 57, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (58, N'7d582ca7-fa79-a651-b361-51325c1f7939', 58, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (59, N'e363bf19-c87e-4287-f670-c6e016a3c0ea', 59, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (60, N'7cf132a8-b522-00de-9612-154a7c304cb6', 60, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (61, N'9f1e6a70-ee3c-70e6-ccbb-add824359b82', 61, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (62, N'a9fe9247-4b44-1803-b093-820055aab386', 62, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (63, N'bf91df10-d602-0b5e-25b1-806295f1739f', 63, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (64, N'195cf09c-7f96-c8ee-13e8-dde5c5f36913', 64, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (65, N'8e965e0b-73c5-e343-c5ce-8fcc799a2da0', 65, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (66, N'c4c752ec-eec0-5bee-c0a4-e780b7c95aaf', 66, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (67, N'604237de-1733-6f32-c6ec-1f38f6b9d487', 67, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (68, N'9847a216-a9c7-5b42-9f52-b1ff43fb5155', 68, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (69, N'd326bbf2-1b5e-fa2c-de3c-00df1bb85b3f', 69, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (70, N'a5039073-3012-6cb6-8395-1440c5ea240b', 70, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (71, N'8033a8b1-808e-f081-9c44-6ff505c7c8da', 71, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (72, N'01545238-9b8b-6a4b-c813-2e9a4d125e09', 72, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (73, N'8aa84847-1cf6-da73-e6db-269285c66c2d', 73, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (74, N'48835d05-2e2d-e75d-6ef0-b39ef1a419b2', 74, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (75, N'67ed38f2-bbcb-8ad5-f928-67f5c19d6c67', 75, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (76, N'e252241d-29c4-5afa-e072-9f18ccdca4c8', 76, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (77, N'228f5e72-54a3-30d4-877f-695c85ecdbe0', 77, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (78, N'a49b7eac-7286-ad81-0934-818b82a16f1b', 78, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (79, N'c177abf2-4722-eb98-950a-1a2a39fc07c5', 79, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (80, N'a4542e4e-1f5a-fb64-180a-13edb12544c7', 80, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (81, N'4fafa31e-cb2d-b34b-8acc-1b5bdee909a5', 81, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (82, N'fbd9b4c0-dedd-4c38-b094-2c3c43797ed2', 82, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (83, N'a8de1a1f-5c6f-3d73-fe90-a335d22d5b33', 83, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (84, N'0d1f0c65-c711-292a-a033-ae41f49e1161', 84, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (85, N'9628ee74-2417-3ded-9c07-61c955569e2c', 85, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (86, N'fce6329e-7d7b-9121-45e7-2f8f6b3820aa', 86, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (87, N'98dbd3a1-6b4b-a6f0-7c9f-697bbb84cd36', 87, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (88, N'de1b9ee4-b87f-2280-13d3-db090e9a2075', 88, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (89, N'19794951-2e7e-b39c-92de-f60ae26439cb', 89, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (90, N'525121dd-48b6-96ba-b880-ce55522b2a76', 90, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (91, N'bb60c77f-cdef-04dd-ceab-0cda1ae9bd1f', 91, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (92, N'cc6fea21-bd76-d1af-0a11-6a492e9c9359', 92, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (93, N'6c8f0204-764c-b501-e58b-3cdcccd9d7b2', 93, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (94, N'ad364137-0eda-cc9b-1746-9904511e1265', 94, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (95, N'1e8a5598-6349-1875-3aae-57f2659ce133', 95, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (96, N'03126976-012e-ddeb-4c32-18a97813561f', 96, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (97, N'aa45d3ef-f666-a830-7b45-c5746c9aef94', 97, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (98, N'9497d981-1a44-8c25-09c0-844f92ee3ba4', 98, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (99, N'b475c342-0d58-ee42-2978-94db72cd4c4a', 99, N'Diagnostico completado')
INSERT [dbo].[Prescription] ([ID_Prescription], [ID_Appointment], [ID_Prescription_Product], [Diagnosis]) VALUES (100, N'ef96e9e9-f32a-11c6-8b60-4a77b070fa71', 100, N'Diagnostico completado')
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Prescription_Product] FOREIGN KEY([ID_Prescription_Product])
REFERENCES [dbo].[Prescription_Product] ([ID_Prescription_Product])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_Prescription_Product]
GO
