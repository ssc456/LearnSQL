USE [master]

Create Database LearnSQL

GO

USE [LearnSQL]
GO
/****** Object:  Table [dbo].[Drinks]    Script Date: 27/03/2019 22:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Drinks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DrinkName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 27/03/2019 22:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Location](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](50) NULL,
	[Country] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[People]    Script Date: 27/03/2019 22:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[People](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Location] [int] NULL,
	[Age] [int] NULL,
	[DateOfBirth] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PeopleBasic]    Script Date: 27/03/2019 22:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PeopleBasic](
	[FirstName] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[Age] [int] NULL,
	[DateOfBirth] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonDrinks]    Script Date: 27/03/2019 22:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonDrinks](
	[DrinkID] [int] NOT NULL,
	[PersonID] [int] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Drinks] ON 

GO
INSERT [dbo].[Drinks] ([ID], [DrinkName]) VALUES (1, N'Fosters')
GO
INSERT [dbo].[Drinks] ([ID], [DrinkName]) VALUES (2, N'Guiness')
GO
INSERT [dbo].[Drinks] ([ID], [DrinkName]) VALUES (3, N'Vodka')
GO
INSERT [dbo].[Drinks] ([ID], [DrinkName]) VALUES (4, N'Strongbow')
GO
INSERT [dbo].[Drinks] ([ID], [DrinkName]) VALUES (5, N'Gin')
GO
SET IDENTITY_INSERT [dbo].[Drinks] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

GO
INSERT [dbo].[Location] ([ID], [Location], [Country]) VALUES (1, N'London', N'England')
GO
INSERT [dbo].[Location] ([ID], [Location], [Country]) VALUES (2, N'London', N'England')
GO
INSERT [dbo].[Location] ([ID], [Location], [Country]) VALUES (3, N'Paris', N'France')
GO
INSERT [dbo].[Location] ([ID], [Location], [Country]) VALUES (4, N'New York', N'USA')
GO
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 

GO
INSERT [dbo].[People] ([ID], [FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (1, N'Scott', N'Johnson', 1, 28, CAST(0x78170B00 AS Date))
GO
INSERT [dbo].[People] ([ID], [FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (2, N'Jennifer', N'Smith', 2, 28, CAST(0x52180B00 AS Date))
GO
INSERT [dbo].[People] ([ID], [FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (3, N'Marc', N'Blackburn', 3, 68, CAST(0xE9CE0A00 AS Date))
GO
INSERT [dbo].[People] ([ID], [FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (4, N'Ian', N'Bangs', 4, 34, CAST(0xCE0D0B00 AS Date))
GO
INSERT [dbo].[People] ([ID], [FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (5, N'Mark', N'Thomas', 1, 34, CAST(0x330D0B00 AS Date))
GO
INSERT [dbo].[People] ([ID], [FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (6, N'Natasha', N'James', 1, 24, CAST(0xA81C0B00 AS Date))
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
INSERT [dbo].[PeopleBasic] ([FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (N'Scott', N'Johnson', N'London', 28, CAST(0x78170B00 AS Date))
GO
INSERT [dbo].[PeopleBasic] ([FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (N'Jennifer', N'Smith', N'Stantonbury', 29, CAST(0x52180B00 AS Date))
GO
INSERT [dbo].[PeopleBasic] ([FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (N'Marc', N'Blackburn', N'Paris', 65, NULL)
GO
INSERT [dbo].[PeopleBasic] ([FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (N'Ian', N'Bangs', N'New York', NULL, NULL)
GO
INSERT [dbo].[PeopleBasic] ([FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (N'Mark', N'Thomas', N'London', NULL, NULL)
GO
INSERT [dbo].[PeopleBasic] ([FirstName], [Surname], [Location], [Age], [DateOfBirth]) VALUES (N'Natasha', N'James', N'London', NULL, NULL)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (1, 6)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (2, 6)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (3, 6)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (4, 6)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (5, 6)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (1, 5)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (2, 5)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (3, 5)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (4, 5)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (5, 5)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (1, 1)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (2, 1)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (1, 2)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (4, 2)
GO
INSERT [dbo].[PersonDrinks] ([DrinkID], [PersonID]) VALUES (5, 3)
GO
