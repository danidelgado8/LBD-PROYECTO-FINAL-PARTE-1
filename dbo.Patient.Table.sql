USE [CONSULTORIO_LSTI]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT IF EXISTS [FK_Patient_Expedient]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Patient]') AND type in (N'U'))
ALTER TABLE [dbo].[Patient] DROP CONSTRAINT IF EXISTS [FK_Patient_Address]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 25/10/2018 17:23:05 ******/
DROP TABLE IF EXISTS [dbo].[Patient]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 25/10/2018 17:23:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID_Patient] [uniqueidentifier] NOT NULL,
	[Patient_num] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[First_Surname] [varchar](50) NOT NULL,
	[Second_Surname] [varchar](50) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[Age]  AS (floor(datediff(day,[Birthdate],getdate())/(365.25))),
	[ID_Address] [int] NOT NULL,
	[ID_Expedient] [int] NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID_Patient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'236e8805-ec72-cca5-af99-00743f14aa42', 50, N'Simon', N'Dunlap', N'Espinoza', CAST(N'2007-07-17' AS Date), 50, 50)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f6a7fbf9-5062-7e40-8044-01459d305a6d', 33, N'Ursa', N'Shannon', N'Rowe', CAST(N'1934-06-17' AS Date), 33, 33)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'78618688-0bc7-0e90-ab5a-01b0505c5382', 58, N'Amy', N'Kennedy', N'Blackwell', CAST(N'1991-12-12' AS Date), 58, 58)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'97b4416d-d90e-356d-e0e2-035e36046bd2', 26, N'Wynter', N'Best', N'Merritt', CAST(N'1920-08-23' AS Date), 26, 26)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'7a9b29b1-c99e-b16c-79d6-07a2047d1332', 39, N'Anika', N'Hale', N'Golden', CAST(N'1938-07-23' AS Date), 39, 39)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a2f09389-6595-b6c3-eec7-1130cbef606e', 10, N'Brooke', N'Williams', N'Hyde', CAST(N'1965-11-15' AS Date), 10, 10)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1dc8695d-1dc7-6059-cb74-113455e4cff6', 59, N'Rinah', N'Higgins', N'Warren', CAST(N'1930-06-20' AS Date), 59, 59)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ca178a13-9cfe-052b-9ff3-142cc33828e8', 61, N'Nicole', N'Cherry', N'Hodges', CAST(N'1979-08-22' AS Date), 61, 61)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2551878e-63db-70c5-37a1-14d02bda2257', 2, N'Yasir', N'Clayton', N'Shaffer', CAST(N'2002-03-03' AS Date), 2, 2)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0cd3caa9-f7d5-7b66-b138-1c99b3de1fd6', 55, N'Gage', N'Hodge', N'Cabrera', CAST(N'1979-08-27' AS Date), 55, 55)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'13f82e2a-aacf-8331-4480-2070b554c7ac', 88, N'Taylor', N'Hurley', N'Leon', CAST(N'1988-04-20' AS Date), 88, 88)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'81f5f76b-a0d6-abdb-9332-241a829800a0', 38, N'Lawrence', N'Fleming', N'Cruz', CAST(N'1955-02-14' AS Date), 38, 38)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'6510ea92-8e4b-e481-0464-24d09e91f3c3', 16, N'Whoopi', N'Larsen', N'Bonner', CAST(N'1954-03-20' AS Date), 16, 16)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0eec795b-0b08-a955-9182-26b3d2bbab1a', 89, N'Zelda', N'Hess', N'Massey', CAST(N'1978-06-28' AS Date), 89, 89)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e0d022de-a68f-3ea3-0ce9-28edcbef1d20', 40, N'Cruz', N'Tillman', N'Terrell', CAST(N'1938-09-05' AS Date), 40, 40)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'99ae45fa-f0b9-a996-7e21-2bc4cc8ae8fa', 87, N'Bradley', N'Crane', N'Rose', CAST(N'1951-11-17' AS Date), 87, 87)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'411809f0-8a78-fef5-2087-2ca5f65392fb', 69, N'Duncan', N'Franco', N'Boyer', CAST(N'1957-11-09' AS Date), 69, 69)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'fc0b4495-e57a-e4e3-065a-2f974bd6ee65', 82, N'Paula', N'Holmes', N'Riggs', CAST(N'2007-06-22' AS Date), 82, 82)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f28ccf8f-5207-cf9b-99c5-3065b6bc8d0d', 42, N'Noah', N'Hammond', N'Fleming', CAST(N'2017-03-06' AS Date), 42, 42)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'528bec5f-3f1b-2ee1-0332-31e7be3bb804', 20, N'Donovan', N'Bowers', N'Molina', CAST(N'2003-12-07' AS Date), 20, 20)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'c4433255-a24e-e419-145f-3352b2677faf', 96, N'Amanda', N'Moody', N'Woods', CAST(N'1976-09-19' AS Date), 96, 96)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0be14e7b-4076-75bf-4d79-3553828dc85b', 75, N'Kareem', N'Castaneda', N'Mann', CAST(N'1980-03-17' AS Date), 75, 75)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4a6bdc77-4407-d218-c02c-3a66edb819e5', 44, N'Isabelle', N'Coleman', N'Morse', CAST(N'1998-03-24' AS Date), 44, 44)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'af19ddac-d40f-6934-5a19-3a7ec94c4732', 64, N'Miriam', N'Carson', N'Simmons', CAST(N'1948-07-30' AS Date), 64, 64)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'35ca97d5-9b09-93c4-0955-447716751ee9', 15, N'Ora', N'Cortez', N'Dillard', CAST(N'1999-10-26' AS Date), 15, 15)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'897b0534-0f79-9f41-3bb5-45b3c8b9db9c', 11, N'Charlotte', N'Norris', N'Contreras', CAST(N'1961-07-17' AS Date), 11, 11)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1442d949-0ad3-d3ae-2486-4796585cc729', 3, N'Jonah', N'Rodriguez', N'Cannon', CAST(N'1977-02-13' AS Date), 3, 3)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ef7ae5a9-fae0-6ab7-c312-4856a545c22b', 56, N'Rachel', N'Browning', N'Rosario', CAST(N'1983-11-18' AS Date), 56, 56)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'5b70f654-dfd9-8434-d01e-4b17febb2f88', 17, N'Natalie', N'Patterson', N'Wooten', CAST(N'1926-10-12' AS Date), 17, 17)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'12b15ada-d164-5f62-1777-4c18d2e2fe7f', 43, N'Phelan', N'Bradshaw', N'Wall', CAST(N'2016-02-24' AS Date), 43, 43)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f7081a1e-fad4-3020-76df-4eb487b95fa2', 51, N'Malik', N'Martinez', N'Meadows', CAST(N'1988-01-23' AS Date), 51, 51)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'b718eac9-c652-80b7-391f-53274bff9a21', 48, N'Aline', N'Gates', N'Wood', CAST(N'1934-10-14' AS Date), 48, 48)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'dbd4e013-8c7a-c1e0-2e54-53dbbfd4f1db', 6, N'Yolanda', N'Mcbride', N'Blankenship', CAST(N'1964-04-29' AS Date), 6, 6)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ef3d65e7-4eec-858b-d69d-546c1a2e429d', 90, N'Caesar', N'Rosales', N'Schmidt', CAST(N'1963-05-03' AS Date), 90, 90)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'd775f51f-5eb0-556e-bc20-55cbf2b72f1e', 91, N'Tanisha', N'Stokes', N'Haynes', CAST(N'1942-07-24' AS Date), 91, 91)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f3d6961f-b2ce-72dd-5c6d-5602f151a838', 65, N'Gil', N'Johns', N'Bowen', CAST(N'2007-07-05' AS Date), 65, 65)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'da775daa-1cba-ad72-f1fa-5997823ca442', 97, N'Odette', N'Patel', N'Boyle', CAST(N'1973-02-21' AS Date), 97, 97)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'10f46be1-62cd-160f-aaaf-5b270907f200', 31, N'Hilda', N'Walton', N'Gutierrez', CAST(N'1980-07-25' AS Date), 31, 31)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'23efeabc-54a2-2ec5-40e8-60fff667c2ac', 76, N'Aphrodite', N'Riggs', N'Glenn', CAST(N'1962-07-16' AS Date), 76, 76)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'fd5f3ffd-7f5a-ffce-d069-68ea9be0dcc3', 8, N'Indira', N'Benson', N'Harmon', CAST(N'2005-04-28' AS Date), 8, 8)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'81cd60ae-d99f-c7e4-5f52-6950bdb5d693', 12, N'Quinlan', N'Rivera', N'Quinn', CAST(N'1992-01-08' AS Date), 12, 12)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4a5fc430-ad6f-6d7c-03b1-6a0e88863105', 63, N'Oprah', N'Jefferson', N'Stone', CAST(N'1943-02-09' AS Date), 63, 63)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'31632c05-37c1-f71e-77e0-6a998afea67b', 22, N'Kasper', N'Castaneda', N'Black', CAST(N'1989-09-27' AS Date), 22, 22)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'225443d7-7b05-9ad8-a936-6b08bcea2b23', 86, N'Zephania', N'Hayes', N'Savage', CAST(N'1933-06-08' AS Date), 86, 86)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'd2035137-93a9-6d3a-bb50-6cbf36230913', 84, N'Germane', N'Jarvis', N'Rice', CAST(N'1929-03-07' AS Date), 84, 84)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'907f80bf-98f1-7a71-40c8-6d4363b13c3c', 21, N'Cruz', N'Richardson', N'Olsen', CAST(N'1981-07-30' AS Date), 21, 21)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'7d91f715-132c-0f33-5299-7002f490730f', 92, N'Samson', N'Leon', N'Briggs', CAST(N'1944-05-22' AS Date), 92, 92)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'33d24847-6184-a179-50c0-70395c65eb31', 36, N'Kylan', N'Rocha', N'Kennedy', CAST(N'2011-06-30' AS Date), 36, 36)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'fe626cf1-c0bb-f8e5-adbe-75552bfa852c', 14, N'Zephania', N'Solis', N'Irwin', CAST(N'1957-09-27' AS Date), 14, 14)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f10548ac-10fb-a4a4-99c2-767e8faa64e4', 79, N'Whitney', N'Roach', N'Newton', CAST(N'1953-08-06' AS Date), 79, 79)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'894973ed-9179-1d55-20e0-783f8ab631a2', 98, N'Elmo', N'Burris', N'Tillman', CAST(N'1946-10-01' AS Date), 98, 98)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'3334a950-dd58-a397-2bbf-7901c3a621bf', 35, N'Maggy', N'Sandoval', N'Ball', CAST(N'1985-04-04' AS Date), 35, 35)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0a92f29f-83b3-72f1-4843-7a90730fb5fa', 27, N'Stuart', N'Russell', N'Mckinney', CAST(N'1965-11-26' AS Date), 27, 27)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'410cee3e-1938-f13f-694e-818145f4df1a', 70, N'Ulric', N'Clayton', N'Benton', CAST(N'1965-01-01' AS Date), 70, 70)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'dc1a2ff4-4512-a8a2-72af-81d1e8f9d9f3', 93, N'Steven', N'Parsons', N'Wells', CAST(N'2011-03-17' AS Date), 93, 93)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2ca96b7b-2473-7a6c-ccd5-84d23df22fe9', 53, N'Paula', N'Robertson', N'Emerson', CAST(N'1923-10-26' AS Date), 53, 53)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ea73a693-d27d-44c9-b83e-873af89164d3', 24, N'Nehru', N'Hayes', N'Osborne', CAST(N'1920-11-26' AS Date), 24, 24)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'6f287764-5759-f93e-eec4-89042e8b40e3', 9, N'Macey', N'Stokes', N'Calderon', CAST(N'2012-05-24' AS Date), 9, 9)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f13ba914-d7a2-5798-de34-9057fdb32165', 77, N'Veda', N'Delgado', N'Kane', CAST(N'2004-07-08' AS Date), 77, 77)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'8a344320-c641-b150-a801-9356617b66b8', 32, N'Jesse', N'Knapp', N'Gutierrez', CAST(N'1976-10-01' AS Date), 32, 32)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a61afa0e-6b39-7fc4-e3af-96851a4556e0', 46, N'Rhoda', N'Sims', N'Sanford', CAST(N'1948-12-21' AS Date), 46, 46)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e8e00075-78bf-9355-bff9-9b392109da85', 68, N'Zachary', N'Robbins', N'Schneider', CAST(N'1958-02-06' AS Date), 68, 68)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'57a64fcf-e324-41f2-0715-9b3ed40196ae', 37, N'Jeanette', N'French', N'Mejia', CAST(N'1998-12-31' AS Date), 37, 37)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a1e57c2b-81db-3468-2e09-9df0ff6b380f', 83, N'Barry', N'Roach', N'Pickett', CAST(N'2007-12-12' AS Date), 83, 83)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'5c2a992b-0658-921d-e169-a0fd46ede55b', 47, N'Victor', N'Wheeler', N'Fischer', CAST(N'1962-08-12' AS Date), 47, 47)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'77437142-e589-15a6-7b96-a13bdc22386a', 52, N'Uta', N'Compton', N'Horne', CAST(N'1986-11-16' AS Date), 52, 52)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1d8f3423-8772-19c2-4abd-a2485b8d5007', 29, N'Isaac', N'Burke', N'David', CAST(N'1961-04-21' AS Date), 29, 29)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e0429c7a-760e-6332-ae69-a32903922b5f', 80, N'Ryan', N'Walters', N'Hoffman', CAST(N'1983-01-23' AS Date), 80, 80)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'04fae3e3-7bfa-02c1-d116-a4c6d4c9f2f7', 28, N'Bert', N'Roy', N'Hunt', CAST(N'1952-03-14' AS Date), 28, 28)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'529a1723-1d0a-afba-bb45-a68284d47340', 5, N'Tanek', N'Riley', N'Lamb', CAST(N'2001-02-27' AS Date), 5, 5)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'82e6f24b-c61b-6827-e5ae-a96525cc30fb', 30, N'Pearl', N'Campos', N'Cooper', CAST(N'1975-07-09' AS Date), 30, 30)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'b8087e22-faa6-ed16-ac8e-aa0727876cfc', 99, N'Ingrid', N'Holmes', N'Holland', CAST(N'1930-01-13' AS Date), 99, 99)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'faa39634-e4fa-1072-50e8-ac8a4e619262', 62, N'Howard', N'Herring', N'Dale', CAST(N'1941-09-02' AS Date), 62, 62)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'48fdaaff-b3d5-4797-22d0-ad7910453654', 1, N'Gretchen', N'Wheeler', N'Whitney', CAST(N'1994-02-21' AS Date), 1, 1)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0335afdd-69ad-37c7-abd8-ad9ca827b5d1', 23, N'Ivan', N'Rodgers', N'Frazier', CAST(N'2000-11-17' AS Date), 23, 23)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'454ab953-2c44-31ba-21db-af7c6807ac8c', 60, N'Brennan', N'Carr', N'Carpenter', CAST(N'2002-03-05' AS Date), 60, 60)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'942e0052-af51-3e91-25ca-b1a94bb378f0', 7, N'Dalton', N'Alford', N'Keith', CAST(N'2007-12-27' AS Date), 7, 7)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'9a110178-b756-62df-8cd8-b64cf02a1496', 73, N'Eric', N'Golden', N'Mayer', CAST(N'1974-09-24' AS Date), 73, 73)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'0d6a852f-1ec6-b21a-9a61-ba787a78fd8e', 66, N'Uriah', N'Ellison', N'Pearson', CAST(N'1935-09-17' AS Date), 66, 66)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4858d04c-4e3f-2486-4100-bb4b561d7e53', 85, N'Zenia', N'Irwin', N'Cherry', CAST(N'1958-01-05' AS Date), 85, 85)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'8e3ba4a0-f535-9e94-8a78-c3a73c794e2c', 34, N'Graham', N'Sanford', N'Weiss', CAST(N'1993-07-10' AS Date), 34, 34)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'7ab7c62b-0ae2-e0c0-e0bb-ca5ef339062b', 25, N'Carly', N'Rasmussen', N'Petersen', CAST(N'1921-05-21' AS Date), 25, 25)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ba7c9c5f-9d91-848c-26e5-cb67301e9e46', 74, N'Cody', N'Blanchard', N'Cooper', CAST(N'2017-05-01' AS Date), 74, 74)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'ef5b869a-3542-f84b-5dee-d414e944ff33', 100, N'Jonah', N'Roy', N'Lindsey', CAST(N'1969-03-08' AS Date), 100, 100)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e7f5ae17-dab0-3490-6d29-d908297fff9a', 19, N'Whilemina', N'Pope', N'Conrad', CAST(N'2007-08-29' AS Date), 19, 19)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'827e5e54-126c-5132-a63c-de88f6792d70', 54, N'Mark', N'Mayo', N'Lancaster', CAST(N'2007-07-29' AS Date), 54, 54)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'4a8385ce-392a-fa67-1d79-dfcbc02021c3', 67, N'Cadman', N'Johns', N'Flowers', CAST(N'1964-10-09' AS Date), 67, 67)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'f2073a06-0651-f4c8-41ca-e357e275d5aa', 94, N'Yeo', N'Ortiz', N'Mendez', CAST(N'1975-10-30' AS Date), 94, 94)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'c5969782-19cf-3062-c089-e7ca87f881fa', 71, N'Cairo', N'Bishop', N'Guy', CAST(N'2015-10-11' AS Date), 71, 71)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'cda05441-3b0d-945a-684e-e89f23ba41fc', 45, N'Philip', N'Coleman', N'Barnes', CAST(N'1995-02-08' AS Date), 45, 45)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'1dac8041-d40b-68ba-9350-ea04276b022d', 4, N'Unity', N'Tanner', N'Hood', CAST(N'1951-06-30' AS Date), 4, 4)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2c71c252-1f8a-3936-a611-ea8d5b95f791', 18, N'Garrett', N'Dillard', N'Sandoval', CAST(N'1997-09-01' AS Date), 18, 18)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e88f7e2f-6059-4654-6340-eba69dc32a1f', 57, N'Dorian', N'Vincent', N'Eaton', CAST(N'1991-07-31' AS Date), 57, 57)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'd1667044-fea3-82e6-6c0d-ef144bd8e6ae', 78, N'Abbot', N'Contreras', N'House', CAST(N'1941-09-02' AS Date), 78, 78)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'447d7a86-3287-96c4-e6a1-f503ff0cd374', 95, N'Calvin', N'Walter', N'Curtis', CAST(N'2005-04-22' AS Date), 95, 95)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'6a62a036-0394-af85-926a-f5aae4e7566b', 49, N'Hiroko', N'Merrill', N'Greer', CAST(N'2007-07-07' AS Date), 49, 49)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'a2388fa0-9af9-9b5c-1102-f925c00016b8', 72, N'Christian', N'Rosa', N'Rose', CAST(N'1931-07-20' AS Date), 72, 72)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'2c5a7935-e13b-c3d3-43ed-fa038d6248d0', 81, N'Hillary', N'Boyle', N'Fuller', CAST(N'1962-11-28' AS Date), 81, 81)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'e8de6aef-5741-c5d7-5618-fc5f90609799', 13, N'Mariam', N'Conner', N'Phillips', CAST(N'2015-10-15' AS Date), 13, 13)
INSERT [dbo].[Patient] ([ID_Patient], [Patient_num], [Name], [First_Surname], [Second_Surname], [Birthdate], [ID_Address], [ID_Expedient]) VALUES (N'110ee57c-5736-874f-f150-fcf75b781ae0', 41, N'Stella', N'Spencer', N'Langley', CAST(N'1933-03-25' AS Date), 41, 41)
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Address] FOREIGN KEY([ID_Address])
REFERENCES [dbo].[Address] ([ID_Address])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Address]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Expedient] FOREIGN KEY([ID_Expedient])
REFERENCES [dbo].[Expedient] ([ID_Expedient])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Expedient]
GO
