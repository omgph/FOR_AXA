USE [DB_69490_axafailproof]
GO
/****** Object:  ForeignKey [MembershipUser]    Script Date: 04/29/2014 17:37:14 ******/
ALTER TABLE [dbo].[Memberships] DROP CONSTRAINT [MembershipUser]
GO
/****** Object:  ForeignKey [UserProfile]    Script Date: 04/29/2014 17:37:30 ******/
ALTER TABLE [dbo].[Profiles] DROP CONSTRAINT [UserProfile]
GO
/****** Object:  ForeignKey [UsersInRoleRole]    Script Date: 04/29/2014 17:38:40 ******/
ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [UsersInRoleRole]
GO
/****** Object:  ForeignKey [UsersInRoleUser]    Script Date: 04/29/2014 17:38:40 ******/
ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [UsersInRoleUser]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 04/29/2014 17:37:30 ******/
ALTER TABLE [dbo].[Profiles] DROP CONSTRAINT [UserProfile]
GO
DROP TABLE [dbo].[Profiles]
GO
/****** Object:  Table [dbo].[Memberships]    Script Date: 04/29/2014 17:37:14 ******/
ALTER TABLE [dbo].[Memberships] DROP CONSTRAINT [MembershipUser]
GO
DROP TABLE [dbo].[Memberships]
GO
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 04/29/2014 17:38:40 ******/
ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [UsersInRoleRole]
GO
ALTER TABLE [dbo].[UsersInRoles] DROP CONSTRAINT [UsersInRoleUser]
GO
DROP TABLE [dbo].[UsersInRoles]
GO
/****** Object:  Table [dbo].[Mushroom]    Script Date: 04/29/2014 17:37:22 ******/
DROP TABLE [dbo].[Mushroom]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 04/29/2014 17:37:38 ******/
DROP TABLE [dbo].[Quiz]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 04/29/2014 17:37:46 ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[SocialUsers]    Script Date: 04/29/2014 17:37:56 ******/
DROP TABLE [dbo].[SocialUsers]
GO
/****** Object:  Table [dbo].[StaticPage]    Script Date: 04/29/2014 17:38:06 ******/
DROP TABLE [dbo].[StaticPage]
GO
/****** Object:  Table [dbo].[Stories]    Script Date: 04/29/2014 17:38:15 ******/
DROP TABLE [dbo].[Stories]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 04/29/2014 17:38:23 ******/
DROP TABLE [dbo].[Topic]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/29/2014 17:38:31 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 04/29/2014 17:36:07 ******/
DROP TABLE [dbo].[Applications]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 04/29/2014 17:36:15 ******/
DROP TABLE [dbo].[Banner]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 04/29/2014 17:36:24 ******/
DROP TABLE [dbo].[Comments]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 04/29/2014 17:36:32 ******/
DROP TABLE [dbo].[ContactUs]
GO
/****** Object:  Table [dbo].[EventsRegistered]    Script Date: 04/29/2014 17:36:40 ******/
DROP TABLE [dbo].[EventsRegistered]
GO
/****** Object:  Table [dbo].[FailProofing]    Script Date: 04/29/2014 17:36:48 ******/
DROP TABLE [dbo].[FailProofing]
GO
/****** Object:  Table [dbo].[HealthRiskScore]    Script Date: 04/29/2014 17:36:56 ******/
DROP TABLE [dbo].[HealthRiskScore]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 04/29/2014 17:37:05 ******/
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 04/29/2014 17:37:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Event] [nvarchar](200) NULL,
	[EventDescription] [nvarchar](3000) NULL,
	[EventDate] [nvarchar](50) NULL,
	[EventTime] [nvarchar](50) NULL,
	[Location] [nvarchar](100) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([LocationID], [Event], [EventDescription], [EventDate], [EventTime], [Location], [DateCreated], [Status]) VALUES (2, N'C# Programming Tutorial', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', N'Feb 1 - Feb 15', N'10:30 AM - 10:30 PM', N'Taguig City', CAST(0x0000A2AB00B17AC4 AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Event], [EventDescription], [EventDate], [EventTime], [Location], [DateCreated], [Status]) VALUES (3, N'AXA Redefining our Lives', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', N'Feb 1 - Feb 15', N'10:30 AM - 10:30 PM', N'Makati City', CAST(0x0000A2AB00B23AF4 AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Event], [EventDescription], [EventDate], [EventTime], [Location], [DateCreated], [Status]) VALUES (4, N'Baby Steps: A morning to remember', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', N'Feb 15 - Feb 30', N'10:30 AM - 10:30 PM', N'Mandaluyong City', CAST(0x0000A2AB00B24B5C AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Event], [EventDescription], [EventDate], [EventTime], [Location], [DateCreated], [Status]) VALUES (5, N'Bridal Fair at SM Megamall', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt', N'Feb 15 - Feb 30', N'10:30 AM - 10:30 PM', N'Ortigas, Pasig City', CAST(0x0000A2AB00B25CF0 AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Event], [EventDescription], [EventDate], [EventTime], [Location], [DateCreated], [Status]) VALUES (6, N'Today with KrisTV', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque', N'Feb 1 - Feb 15', N'10:30 AM - 10:30 PM', N'Tomas Morato, QC', CAST(0x0000A2AB00B28018 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[HealthRiskScore]    Script Date: 04/29/2014 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthRiskScore](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bday] [nvarchar](50) NOT NULL,
	[Gender] [nchar](10) NULL,
	[Smoker] [nchar](10) NULL,
	[Pounds] [int] NULL,
	[Feet] [int] NULL,
	[Inches] [int] NULL,
	[ParentsIllness] [nchar](10) NOT NULL,
	[YouIllness] [nchar](10) NULL,
	[Alcohol] [int] NULL,
	[Coffee] [int] NULL,
	[Exercise] [nchar](10) NULL,
	[Income] [int] NULL,
	[Savings] [int] NULL,
	[SaveFor] [nvarchar](4000) NULL,
	[Owned] [nvarchar](4000) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_HealthRiskScore] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FailProofing]    Script Date: 04/29/2014 17:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FailProofing](
	[FailID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[LocationCity] [nvarchar](200) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[BirthDate] [date] NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_FailProofing] PRIMARY KEY CLUSTERED 
(
	[FailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventsRegistered]    Script Date: 04/29/2014 17:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventsRegistered](
	[RegEventID] [int] IDENTITY(1,1) NOT NULL,
	[LocationID] [int] NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[LocationCity] [nvarchar](200) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[BirthDate] [date] NULL,
	[CardHolder] [bit] NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
	[Terms] [bit] NULL,
 CONSTRAINT [PK_EventsRegistered] PRIMARY KEY CLUSTERED 
(
	[RegEventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 04/29/2014 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ContactUs] ON
INSERT [dbo].[ContactUs] ([ContactID], [Name], [Email], [Message], [DateCreated]) VALUES (11, N'Samantha Joyce Soriano', N'sam@aol.com', N'Bacon ipsum dolor sit amet sausage bresaola short loin tri-tip meatball capicola cow sirloin. Hamburger tongue doner cow chuck andouille. Meatball hamburger fatback bacon chicken, swine filet mignon drumstick cow sirloin salami ham. Drumstick sausage corned beef jowl. Short loin landjaeger capicola salami, shankle tri-tip cow spare ribs turducken fatback bacon ball tip leberkas jerky.

Bacon jowl turkey, pork loin pork belly meatball tri-tip beef shankle shank. Tail ribeye prosciutto tri-tip pancetta sausage cow biltong swine pork loin pig bacon. Flank tenderloin kielbasa filet mignon capicola salami tail. Leberkas ribeye jerky bacon hamburger sirloin. Ground round hamburger pork chop sausage. Bacon short loin capicola tri-tip shank short ribs turducken jerky.', CAST(0x0000A2B100736CD4 AS DateTime))
INSERT [dbo].[ContactUs] ([ContactID], [Name], [Email], [Message], [DateCreated]) VALUES (12, N'Darrie Andrei Dizon', N'darr007@yahoo.com', N'Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.', CAST(0x0000A2B100842F57 AS DateTime))
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
/****** Object:  Table [dbo].[Comments]    Script Date: 04/29/2014 17:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[StoryID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Website] [nvarchar](200) NULL,
	[Comments] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 04/29/2014 17:36:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[BannerID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[Label] [nvarchar](100) NULL,
	[Button] [nvarchar](100) NULL,
	[Link] [nvarchar](200) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[BannerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Banner] ON
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (4, N'Fail Proof your Health', N'70d1e81f-title-failproof-health.jpg', NULL, NULL, NULL, CAST(0x0000A2AA018530D0 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (5, N'What is Fail Proof', N'293be0c4-title-what-is-failproof-header.jpg', NULL, NULL, NULL, CAST(0x0000A2AA01855074 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (6, N'Stories', N'43143c33-title-share-story.jpg', NULL, NULL, NULL, CAST(0x0000A2AA01856A3C AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (12, N'Footer', N'cb915e17-sample-ad_03.png', NULL, NULL, NULL, CAST(0x0000A2AF0017DAA4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (13, N'Home', N'9d7b778a-title-life-is-beautiful.jpg', N'Life is <br \> BEAUTIFUL', N'READ MORE', N'http://omgph.net/Story/22', CAST(0x0000A2B101691DB4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (14, N'Home', N'439f91db-title-stats-on-big-c.jpg', N'Hypertension <br \> Statistics', N'READ MORE', N'http://omgph.net/HealthDetail/46#sthash.otUR4Qq3.dpbs', CAST(0x0000A2B1016C5EE8 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (17, N'Quiz', N'9ddb5bc8-quiz.jpeg', NULL, NULL, NULL, CAST(0x0000A2B4003618C8 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (18, N'Event', N'e1bab045-title-join-a-pocket-event.jpg', NULL, NULL, NULL, CAST(0x0000A2B400363765 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (19, N'Home', N'1edd00a1-slide12.png', N'WHAT''S YOUR HEALTH <br > RISK SCORE?', N'TAKE THE QUIZ', N'http://omgph.net/', CAST(0x0000A2B40042C174 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (20, N'Exentials', N'7675d576-slide16.png', NULL, NULL, NULL, CAST(0x0000A2BB00578E74 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (21, N'Max', N'b56903a3-slide15.png', NULL, NULL, NULL, CAST(0x0000A2BB0057B19C AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (23, N'Home', N'c7001ed5-slide11.png', N'WHAT IS<br>FAILPROOF?', N'READ MORE', N'http://omgph.net/WhatIsFailProof/3', CAST(0x0000A2C001442FAB AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (24, N'Home', N'6b0c453d-slide01.png', N'WHY FOCUS<br>ON HEALTH?', N'READ MORE', N'http://omgph.net/FailProofYourHealth/7', CAST(0x0000A2C00144C84B AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (25, N'HealthRiskScore', N'1d765ace-slide12.png', N'WHAT''S YOUR<br>HEALTH RISK<br>SCORE?</div>', NULL, NULL, CAST(0x0000A2FC000278D0 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Banner] OFF
/****** Object:  Table [dbo].[Applications]    Script Date: 04/29/2014 17:36:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[ApplicationName] [nvarchar](235) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Applications] ([ApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'694af4b1-0014-429d-9fc1-3b874f4a44e5', NULL)
/****** Object:  Table [dbo].[Users]    Script Date: 04/29/2014 17:38:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ce35722f-67f2-401a-be9a-0054bd74870a', N'Jaja', 0, CAST(0x0000A2FC0019A7BE AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ba566166-09d0-417f-bead-369982a9814e', N'digitalmoz', 0, CAST(0x0000A3170061B901 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'5765ee6f-9a17-4cd0-a91d-4176f8c8ee42', N'jerome.hung@omnicommediagroup.com', 0, CAST(0x0000A31B005DF293 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'8698f389-983a-48d0-a6a8-43060c73a718', N'tinamontalban', 0, CAST(0x0000A3060030FDED AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ed85a821-3f38-4862-a985-54c2fb8c5fe8', N'shay', 0, CAST(0x0000A3090077499C AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'aba2b9ea-1115-40dc-9021-9d5f2208f4c4', N'Kingcute', 0, CAST(0x0000A3140080B926 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'54dccc51-23b0-449a-9e19-af0ea8e95bbb', N'Nilo', 0, CAST(0x0000A31C000697EF AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'f54a03d6-3235-4051-8037-ceb734965538', N'jerome', 0, CAST(0x0000A2C90075CD37 AS DateTime))
/****** Object:  Table [dbo].[Topic]    Script Date: 04/29/2014 17:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[TopicID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[TopicID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Topic] ON
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (11, N'Health Facts & Figures', CAST(0x0000A2B100E090AC AS DateTime), 1)
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (12, N'Fitness', CAST(0x0000A2B100624B17 AS DateTime), 1)
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (13, N'Diabetes', CAST(0x0000A2B100627865 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Topic] OFF
/****** Object:  Table [dbo].[Stories]    Script Date: 04/29/2014 17:38:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stories](
	[StoryID] [int] IDENTITY(1,1) NOT NULL,
	[TopicID] [int] NULL,
	[Author] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Image] [nvarchar](200) NULL,
	[Body] [nvarchar](max) NULL,
	[CommnetsCount] [int] NOT NULL,
	[Tags] [nvarchar](max) NULL,
	[MetaKeyWords] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](200) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
	[Featured] [bit] NULL,
 CONSTRAINT [PK_Stories2] PRIMARY KEY CLUSTERED 
(
	[StoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Stories] ON
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (16, 11, N'AXA Philippines', N'Causes of Death', N'3e37d37b-death.png', N'<p>In 2011 about 36 million deaths worldwide were due to non-communicable diseases, a big up from the 2000 data that recorded about 31 million. The top 3 leading causes were heart disease, stroke and lower respiratory infection. &nbsp;In the next years, these cases are expected to increase by 20% in some regions of the world including South East Asia.</p>
', 0, N'causes, death', N'Causes of Death', N'Sample Description for Causes of Death', CAST(0x0000A2B10060B508 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (18, 11, N'AXA Philippines', N'Stats on the Big C', N'0c0d71c1-bigc.png', N'<p>In 2008, about 12.7 million new cancer cases were diagnosed worldwide and the number is expected to go up to 21 million by 2030. This rise in the number of occurrence can be attributed to the increasing and aging global population. Life expectancy has doubled, from 46 years old in the 1950&rsquo;s to 67 years old in the 2000&rsquo;s (UN Population Division). And as people grow older they become more susceptible to diseases. Among the different types of cancer; lung, breast colorectal have the most number of occurrences.</p>

<p>&nbsp;</p>
', 0, N'cancer, filipino', N'Cancer', N'Sample description for Cancer', CAST(0x0000A2B10061D7A8 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (22, 13, N'Peachy Felix', N'Life is beautiful', N'bb9c4af4-96dfe2e7-lifeisbeautiful.jpg', N'<p style="text-align: justify;">The last time I looked out my window, I not only saw LIFE as beautiful as it is. I felt it.&nbsp;<br />
I am Peachy Felix, 33 years old.&nbsp;And this is my story.<br />
<br />
<span style="line-height: 1.6em;">I am happily married to Dr. Kennard Felix, a young ENT doctor and a proud mom of 3 lovely girls -&nbsp;10 and 7. We have almost everything a normal, happy family would have. We can buy anything we please, I have a driver (isn&rsquo;t that perfect?), Kenn and I have travelled to Europe and we have taken the girls to trips both locally and Asia. My husband showers me with lavish things. We have family friends and loving relatives. I have a great job as Head of Training of AXA Philippines. Perfect. Perfect.&nbsp;</span><br />
<br />
<span style="line-height: 1.6em;">Oh, and I got &ldquo;Cancer&rdquo;.</span><br />
<br />
<span style="line-height: 1.6em;">It was in May of 2011, ten months after my mom was diagnosed with stage 3 Breast Cancer, that I was also diagnosed with stage 1. I couldn&rsquo;t believe how I could have gotten this sickness &ndash; &ldquo;Was it like a cold your mother passes on to you?&rdquo; &ldquo;Can this be real? I&rsquo;m 31 and I have cancer?!?&nbsp;</span><br />
<br />
<span style="line-height: 1.6em;">Question after question and I couldn&rsquo;t find the answers in my blurry mind. What are my treatment options? How much will we spend? How will my family adjust to this event in our life? Am I going to die soon?&rdquo;</span><br />
<br />
<span style="line-height: 1.6em;">When I calmed down, I knew with certainty that all I wanted was to get well. I had to be cured. No matter what happens, no obstacle will stop me from making sure I hurdle this test with flying colors.&nbsp;</span><br />
<br />
<span style="line-height: 1.6em;">I had so much dreams for myself and my family. And we have started to work on some plans to achieve these dreams. We have acquired some properties, enrolled our kids to our school of choice, placed some money for savings and investment. And now with cancer, all of these dreams became uncertain for us.</span><br />
<br />
<span style="line-height: 1.6em;">I meant to treat cancer just as I would treat myself from fever. Cancer, I believe must not get in the way of my life. I knew I had to change my lifestyle and had to hold on closer to our Lord. Anything. I just wanted physically healing.</span><br />
<br />
<span style="line-height: 1.6em;">I&rsquo;ve been blessed to have an oncologist who I can consult with anytime and who gave me much hope by sharing several treatment options, the pros and cons and ultimately how much each option would cost us. What she was suggesting is that for me to have the latest treatment modality for cancer. Since I was positive with high chance of recurrence, she suggested that we don&rsquo;t stop at chemotherapy, but take more aggressive steps for prevention via herceptin. But this would be 5 times more expensive than my regular chemo.</span><br />
<br />
<span style="line-height: 1.6em;">So, treatment for me included 3 surgeries, 6 cycles of chemotherapy, 18 cycles of neo-adjuvant treatment called herceptin and 5 years of hormonal therapy. With just &ldquo;lakas ng loob,&rdquo; I said &ldquo;Let&rsquo;s do this!&rdquo; I wanted to start at the soonest time possible.&nbsp;</span><br />
<br />
<span style="line-height: 1.6em;">But then I had to be realistic. I needed to make sure that I have covered all the bases in order to achieve my end result which is cure. So one by one, I asked these questions:</span><br />
&nbsp;</p>

<p style="margin-left: 80px;"><span style="line-height: 1.6em;">1. &nbsp;Am I physically capable to undergo all the items in my treatment regimen?</span><br />
<span style="line-height: 1.6em;">2. &nbsp;Can I delegate some things at work and be absent for awhile?</span><br />
<span style="line-height: 1.6em;">3. &nbsp;Am I financially capable to finance all the items in my treatment list?&nbsp;</span><br />
&nbsp;</p>

<p style="text-align: justify;">I needed to do the math. I did some pencil pushing and came up with &nbsp;rough estimates of how much I would need to complete my treatment cycle. Three surgeries for me would easily cost Php150,000. My first cycle of chemo is around Php25,000 and I needed six of that. My herceptin is roughly Php120,000 and I would need 18 sessions. Nanghina ako, because obviously we are not financially ready with the entire amount. Most especially when I have used up some of our own savings for my mom&rsquo;s treatment barely a year ago. Not to mention our recurring familial expenses. I have growing kids, thus growing expenses.&nbsp;<br />
<br />
<span style="line-height: 1.6em;">And never did I dream of letting my family feel the financial impact of my health condition. Just like most people, <em>di ba ayaw nating maging pabigat?</em> <em>Ayaw natin na ma-burden ang ibang tao</em> because of our condition. You would want to still have your dignity intact, even when you&rsquo;re physically weak. You&rsquo;d still want to be a fashionista and look good, even when you are losing all of your hair, in all parts of the body, mind you ☺</span><br />
<br />
<span style="line-height: 1.6em;">So this part of my sharing will now dwell on. If I knew I was going to get my cancer cells active, what could I have done differently? I should have prioritized the critical illness cover I thought of buying.</span><br />
<br />
<span style="line-height: 1.6em;">Wouldn&rsquo;t it be better if when I was diagnosed of a critical illness such as cancer, all I will have to think of is how to get well and get the best treatment? Or where to get my treatment? Asian Hospital ba or Makati Med? While recovering, I can leisurely stay in Tagaytay so I&rsquo;d have fresh air, healthier food, etc.&nbsp;</span><br />
<br />
<span style="line-height: 1.6em;">If I had known, I would&rsquo;ve planned big time.&nbsp;</span><br />
<br />
<span style="line-height: 1.6em;">By planning, this meant someone taking over the bills for me anytime I need them to. And that someone is NOT my family, mind you. I want my husband and children and family to be &ldquo;worry free&rdquo;.</span></p>

<p style="text-align: justify;">By acting on my future plans, it meant I just had to be committed to take care of my future.<br />
<br />
<span style="line-height: 1.6em;">What having this disease taught me was &ndash; dilly dallying on things that are important shouldn&rsquo;t happen. I learned how to act on everything with more urgency.&nbsp;</span><br />
<br />
<span style="line-height: 1.6em;">We have the power to control our future. More so, if we&rsquo;re financially sound, we can pretty much make our dreams or the future real for us and our family. We &nbsp;have options, we have choices. And we can have the right people who can help us achieve the potential success we can have in the future.</span><br />
<br />
<span style="line-height: 1.6em;">And today I tap on your heart and mind to make that one big decision. Investing for your financial future will always be a good deal. So that when the unexpected happens, you can be life confident!</span></p>
', 0, N'veggie, bonus, vobis', N'veggie, bonus, vobis', N'Sample description for Peachy Felix', CAST(0x0000A2B10064701C AS DateTime), 1, 1)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (23, 12, N'Lisa Navidad', N'The Health Project', N'3fd37935-lisanavidad.png', N'<p>Good health is not something we can buy. However, it can be an extremely valuable savings account. - Anne Wilson Schaef</p>

<p>My 14-year-old daughter, Pia approached me one morning and asked me if she could interview me and her daddy to get some information about our health history. She told me that she needed to submit our family&rsquo;s health history for a science project before the Christmas break and she wanted it to be done thoroughly. We sat on the bed and she proceeded to ask me basic questions like how old I was and what diseases I have so far. She was asking and jotting down notes nonchalantly as I enumerated my aches and pains. &nbsp;She also asked me about her grandparents and what their known diseases were right now. &nbsp;<br />
<br />
While she was writing down her notes, I noticed a frown forming on her forehead. She turned to me and asked in a concerned face if I have set aside money so that I could take myself to the hospital if needed and also asked how her Lolo and Lola were paying for their medicines and medical check-ups since they are both retired already. I could see in her eyes an epiphany, a realization that being sick and trying to get better requires money, possibly a lot of it. And she was right, getting sick and getting well requires hospital and doctor&rsquo;s bills, buying the prescribed medicines, which seems to have ballooned in amount year after year.&nbsp; I hurriedly assured my daughter, that mommy was lucky that I was covered by the company&rsquo;s HMO package and that her dad also made sure that there is a healthcare coverage for her and her younger sister. That made her smile in relief, but then the frown came back; &ldquo;what about Lolo and Lola? Do they have HMO coverage too?&rdquo; My daughters grew up with their grandparents and I can feel that her concern for them runs deep and that she didn&rsquo;t want anything bad to happen to them. &nbsp;My mom was wise enough to get a health coverage that would protect her and my dad up the age of 75. My dad is turning 72 this January and my mom 66 years old, sadly their coverage won&rsquo;t last that long. Although I&rsquo;m pretty sure that they had money tucked away for emergencies but at this point I could only hope and pray that when the time comes it will be enough.<br />
<br />
That exercise with my daughter, talking about health and protection although it was just for a science project has opened my eyes as well as that of my daughter&rsquo;s to take better care of our health and to take immediate steps in securing the future. I was glad that I took my insurance agent&rsquo;s advice when I was single to always include health riders whenever I buy insurance, but then I sometimes wonder if that is enough too. How about you, have you given much thought about your health lately?<br />
&nbsp;</p>

<blockquote><h11><em>Lisa is a working mom who loves to write about her family, her journey as a mother, life lessons and inspiring experiences. She is the author of the blog called &quot;Life is What You Make it&quot;. Lisa studied in the University of Santo Tomas and is a registered Medical Technologist. After a brief stint working in the hospital, she started her career in the health care business as an Underwriter. She has then transitioned into the various departments within life operations. She is currently our Customer Management Head.</em></h11></blockquote>
', 0, N'science, project', N'science, project', N'Sample description for The Health Project', CAST(0x0000A2B100885F54 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (34, 11, N'AXA Philippines ', N'Vital Vitamins and Magic Minerals - Where to Find Them', N'38a3019e-Article Vitamins.jpg', N'<p style="text-align: justify;"><span style="color:#000080;"><strong>Vitamins and minerals are essential nutrients your body needs in small amounts to work properly.</strong></span> Most people should get all the nutrients they need by eating a varied and balanced diet, but for certain conditions and life stages you may need more of a particular nutrient. If you are unsure what foods to choose when shopping, here you&rsquo;ll find a comprehensive list of the best food sources to choose from and we reveal the ones you&rsquo;re most likely to be short of.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><span style="color: rgb(0, 0, 128);"><strong>Vital vitamins</strong></span></span></p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Vitamin A</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">Healthy skin, hair, eyes, digestion and immunity. Beta-carotene (the form in fruit and veg), may protect against cancer and heart disease.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">One in eight teens and one in ten men.</p>

<p style="text-align: justify;">Clues to look out for Dry skin, hair, eyes and brittle nails, night blindness, lower resistance to infection.<br />
Good sources: Meat, liver, dark green leafy veg and orange and yellow fruit and veg.<br />
One large carrot = your daily allowance of beta-carotene</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>B Vitamins</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">To make energy from food. Folic acid/folate (vitamin B9) helps make red blood cells and prevents birth defects. B12 (cobalamin) is needed for a healthy nervous system and to manufacture red blood cells.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">A fifth of teenage girls and one in eight women (vitamin B2, riboflavin), over-65s (folate and B12).<br />
Clues to look out for Fatigue, digestive problems, cracks and sores in the corners of the mouth (B2). Tiredness and lethargy (folate and B12). Good sources: Bread, fish, chicken, meat, eggs and dairy plus some nice leafy greens. A 200ml glass of milk a day boosts B2 to the recommended level</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Vitamin C</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">Healthy cells and connective tissue. Helps healing and aids iron absorption. As a powerful antioxidant, it also helps protect against cancer and heart disease.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">Pregnant or breastfeeding women, smokers, people recovering from surgery or bad burns. Clues to look out for Tiredness, inflamed gums, joint pain, poor wound healing and corkscrew hairs. Good sources: Citrus, strawberries, broccoli, blackcurrants, peppers and potatoes. &lsquo;5 strawberries = a day&rsquo;s supply of vitamin C&rsquo;</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Vitamin D</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">May lower risk of cancer, type 2 diabetes, diseases in which body turns against itself and nervous system problems. Along with calcium, it&rsquo;s essential for healthy teeth and bones.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">Half of us (16 per cent are severely deficient come spring). Toddlers, pregnant and breastfeeding women, people with dark skin and older people are most at risk. Clues to look out for Weak bones (rickets in children), bone pain and muscle weakness (adults). Good sources: Salmon, sardines, eggs, fortified cereals, spreads and sun-dried shiitake mushrooms. Most vitamin D comes from the action of sun on skin. 2 portions of oily fish + a daily 15 minutes&rsquo; sun on bare skin = your week&rsquo;s needs of vitamin D</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Vitamin E</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">A healthy immune system, to help protect cells against free radical damage and maintain cell structure.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">People with Crohn&rsquo;s disease, cystic fibrosis and certain rare genetic diseases. Clues to look out for Loss of feeling in the arms and legs, muscle weakness, vision problems, poor immunity. Good sources: Soya, corn and olive oil, seeds, cereals, margarine, leafy greens. Magic minerals</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Calcium</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">Strong bones and teeth, strong heartbeat, healthy muscles, normal blood clotting.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">Six per cent of teenage boys, 12 per cent of teenage girls, four per cent of men and eight per cent of women, especially vegans.Clues to look out for A long-term shortage can lead to osteoporosis, high blood pressure and an irregular heartbeat. Good sources: Milk, yoghurt, canned sardines, leafy green veg, almonds and tahini. 200ml semi-skimmed milk + 1 pot of low-fat fruit yogurt + a small chunk of low-fat Cheddar = a day&rsquo;s worth of calcium</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Iodine</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">A healthy thyroid, brain and skin, a developing unborn baby&rsquo;s brain.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">Half of women of child bearing age. Clues to look out for Swollen thyroid (in neck), dry skin, hair loss and many other symptoms. Good sources: Non-organic milk, fish and seafood, meat, vegetables and iodised salt. 2 boiled eggs + a small low-fat natural yoghurt = your day&rsquo;s supply of iodine</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Iron</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">Healthy red blood cells, a healthy immune system, energy, helping your body process drugs and foreign substances.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">More than one in five women and two in five teenage girls. Clues to look out for Fatigue, irritability and poor concentration. Good sources: Liver, red meat, beans, nuts, dried apricots and dark green leafy veg. 2 scrambled eggs + a slice of wholemeal toast + a slice of liver = your day&rsquo;s supply of iron</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Magnesium</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">To turn food into energy, for bone health, for healthy muscles (including the heart), nerves and immune system.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">Two in five teenage girls and just under one in ten women. Clues to look out for Loss of appetite, nausea, vomiting, fatigue (mild), weakness, numbness, tingling, muscle contractions, cramps and abnormal heart rhythms (more severe deficiency). Good sources: Brown rice, wholemeal bread, fish and seafood, nuts, seeds and green leafy veg. 6 prawns + half a pack spinach + 300g brown rice + 1 tbsp sesame seeds = your day&rsquo;s supply of magnesium</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Potassium</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">To help nerves and muscles communicate, move nutrients into and waste products out of cells, to maintain body&rsquo;s water balance and help keep blood pressure steady.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">Women and teenage girls and over-65s. Clues to look out for Muscle weakness or stiffness, spasms, cramps, palpitations. Good sources: Spinach, spring greens, grapes, blackberries, root veg and bananas.<br />
One jacket potato + a portion of baked cod + two grilled tomatoes = your day&rsquo;s supply of potassium</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Selenium</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">A healthy immune system, normal thyroid function, healthy reproduction, and as a key antioxidant to prevent free radical damage to cells and tissues.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">One in three teenagers, one in five adults (under 65) and one in five aged 65+. The British diet only provides around half the selenium we need. Clues to look out for Male infertility; severe deficiency can lead to an enlarged heart. Good sources: Nuts, especially Brazils, cereals and fish. One jacket potato + a slice of tuna = your day&rsquo;s supply of selenium</p>

<p style="text-align: justify;"><span style="font-size:14px;"><strong>Zinc</strong></span></p>

<p style="text-align: justify;"><span style="color:#000080;">What for?</span></p>

<p style="text-align: justify;">Wound healing, growth, fertility, to help make new cells and enzymes, process carbohydrates, fat and protein in food and for the proper functioning of over 2,500 proteins.</p>

<p style="text-align: justify;"><span style="color:#000080;">Who&rsquo;s going short?</span></p>

<p style="text-align: justify;">People who eat a poor diet or are ill and don&rsquo;t absorb nutrients well. Clues to look out for Slow healing, tiredness, tendency to infections. Good sources: Milk, cheese, wholemeal bread, lamb, beef, scallops, and prawns. Beef stew + slice of wholemeal bread = your day&rsquo;s supply of zinc.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;">Source: https://www.axappphealthcare.co.uk/healthy-lifestyle/diet-and-nutrition/article/are-you-getting-enough-vitamins-and-minerals/</p>
', 0, N'Vitamins, Minerals, Health, Lifestyle', N'Vitamins, Minerals, Health, Lifestyle', N'Vital Vitamins and Magic Minerals - Where to Find Them', CAST(0x0000A2BA0189AE6C AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (35, 11, N'AXA Philippines', N'A Healthy Mouth Speaks Volumes', N'bf545223-Article Healthy Mouth.jpg', N'<p style="text-align: justify;"><span style="color:#000080;"><span style="font-size: 12px;">Good oral health is as vital to our well-being as a healthy diet and regular exercise, say dental professionals, with growing evidence that gum disease is linked with a higher risk of serious illnesses like heart attacks and strokes.</span></span><span style="font-size: 12px;"> In 2007, a British organization, British Dental Health Foundation (BDHF), conducted a survey, and it was found that one in three people brush their teeth just once a day or less, one in five can&rsquo;t remember when they last changed their toothbrush, and more than one in three brush for less than a minute, instead of the recommended two minutes or longer.</span></p>

<p style="text-align: justify;"><span style="font-size: 12px;">The survey also revealed that 29 per cent of people suffer with bleeding gums &ndash; a sign not just of a poor oral healthcare routine, but one that may be associated with an increased risk of serious medical conditions such as heart disease and strokes.</span></p>

<p style="text-align: justify;"><span style="font-size: 12px;">According to the BDHF, &quot;There is a growing body of evidence suggesting that people with gum disease are more at risk of heart disease, heart attacks, strokes, diabetes and, in the case of pregnant women, giving birth to underweight babies.&quot;<br />
&nbsp;<br />
Despite this evidence, 85 per cent of the people questioned for the survey were unaware of the link between the health of the mouth and the health of the body.</span></p>

<p style="text-align: justify;"><span style="font-size: 12px;">Good oral hygiene practices can prevent problems like tooth decay, bad breath and gum disease, and there are simple tips we can follow to keep our mouths healthy:</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">1. Brush your teeth twice a day using a good fluoride toothpaste. Pay particular attention to the areas where the teeth meet the gums.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">2. Replace your toothbrush every three months, as worn and splayed bristles are not as effective at cleaning. If the bristles are bent or flattened, you may actually cause damage to your gums.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">3. Avoiding sugary snacks between meals is a key component of a healthy lifestyle &ndash; eliminating sugar will benefit your teeth.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">4. Visit your dentist regularly.&nbsp;</span></p>

<h2 style="text-align: justify;"><span style="color:#000080;"><strong><span style="font-size: 12px;">A healthier diet for a healthier mouth</span></strong></span></h2>

<p style="text-align: justify;"><span style="font-size: 12px;">A poor diet that includes lots of sugary and acidic foods and drinks increases the likelihood of experiencing oral health problems, dental professionals explain. Sugary food and drinks cause tooth decay, while acidic drinks like fruit juice and squash cause erosion (loss of tooth enamel). Dentists recommend that you avoid acidic drinks wherever possible and opt for water or milk instead.<br />
&nbsp;<br />
Dietitian Azmina Govindji from the UK offers the following tips to minimize damage to your teeth and gums at mealtimes and in between:</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">1. If you consume sugary drinks, keep them to meal times only. If you have them in between meals on their own, the sugar can cause decay. Avoid sipping sugary drinks throughout the day &ndash; if you open a bottle of soda, juice, or a smoothie, try to drink it in one sitting.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">2. Are you a snacker? If you are constantly grazing &ndash; say, seven or eight times a day &ndash; then you allow more opportunity for your teeth to become eroded. Choose sugar-free snacks like vegetable sticks or a handful of heart-healthy nuts in between meals.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">3. Going for a diet drink to reduce damage to your teeth? Yes, it&#39;s sugar free, but the acid in diet drinks can dissolve the enamel on your teeth.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size: 12px;">4. You may think that brushing after every meal is a good thing, but think again. When you brush straight after food, you also brush away tiny bits of enamel. Wait at least an hour after you&#39;ve eaten.</span></p>

<p style="text-align: justify;"><span style="font-size: 12px;">If you produce more saliva, this helps to neutralize the acid you make in your mouth after you&#39;ve eaten or drunk something. Chewing gum makes your mouth produce more saliva and can help prevent tooth decay - but go for sugar-free versions only.&nbsp;</span></p>

<p style="text-align: justify;"><span style="font-size: 12px;"><em>Source: https://www.axappphealthcare.co.uk/Health-worries/Dental-health/A-healthy-mouth-speaks-volumes/</em></span></p>
', 0, N'Oral health, Health, Diet ', N'Oral health, Health, Diet ', N'A healthy Mouth Speaks Volumes', CAST(0x0000A2BB0000D098 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (36, 11, N'AXA Philippines', N'Vitamin E Can Slow Alzheimer’s', N'd394889d-Article Al.jpg', N'<p style="text-align: justify;"><span style="color:#000080;"><strong>Regular vitamin E supplements can slow the onset of Alzheimer&#39;s disease.</strong></span> US Experts from the Minneapolis VA Health Care System examined 613 patients with mild to moderate symptoms of the disease over a period of 2.3 years. They were all already taking medication for their symptoms.</p>

<p style="text-align: justify;">During the study, those who were given a daily dose of 2,000 international units of alpha tocopherol, a form of vitamin E, showed a 19% reduction in the extent to which Alzheimer&#39;s affected their daily lives.</p>

<p style="text-align: justify;">The study authors said that reduction amounted to a &quot;clinically meaningful&quot; delay in worsening ability to deal with activities such as shopping and preparing meals of 6.2 months.</p>

<p style="text-align: justify;">The drug memantine or a combination of memantine and vitamin E were found to be less beneficial, the trial results showed.</p>

<p style="text-align: justify;">Lead researcher Dr Maurice Dysken, writing in the Journal of the American Medical Association , hailed the results, and added: &quot;Because vitamin E is inexpensive, it is likely these benefits are cost-effective as alpha tocopherol improves functional outcomes and decreases caregiver burden.&quot;&nbsp;</p>

<p>&nbsp;</p>

<p><em>Source: https://www.axappphealthcare.co.uk/health-worries/ageing-well/news/vitamin-e-can-slow-alzheimers/</em></p>
', 0, N'Alzheimer, Health, Vitamin, Lifestyle ', N'Alzheimer, Health, Vitamin, Lifestyle ', N'Vitamin E Can Slow Alzheimer’s', CAST(0x0000A2BB00021534 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (37, 11, N'AXA Philippines', N'Tackling Stress Through Positive Changes', N'17f9ca24-Article Positive.jpg', N'<p style="text-align: justify;">Taking time out to face up to the stress in our lives and examine potential lifestyle and attitude changes could pay significant dividends in terms of our future well-being, says behaviour expert Judi James.</p>

<p style="text-align: justify;">Stress is a natural reaction to having too much pressure in our lives and being unable to cope with all the demands that are made of us. A CIPD survey in the UK carried out in 2011 confirmed, stress has become the most common cause of long-term sickness absence for both manual and non-manual employees. According to HSE, In 2009/10, an estimated 9.8 million working days were lost through work-related stress.</p>

<h2 style="text-align: justify;"><span style="color:#000080;"><strong><span style="font-size: 14px;">Positive steps to reduce stress</span></strong></span></h2>

<p style="text-align: justify;">If stress is already a constant feature in your life, you might feel that an awareness day is superfluous. However, being stress-aware is about more than just recognizing the symptoms, notes Judi.<br />
<br />
She explains, &ldquo;By taking a day out to look at potential changes of lifestyle and attitude, you can start to take steps and make changes that will help with your stress levels the whole year round.&rdquo;<br />
<br />
Here are some tips from Judi on how to face up to stress and implement positive actions to deal with it.<br />
<br />
<span style="color:#000080;"><strong>Understand your stress. </strong></span>Understanding is the key to controlling, coping ,and curing. Stress is part of a natural survival response, aimed at making your body stronger, faster and quicker-thinking during moments of threat and danger. Your stress symptoms are natural; it is what prompts them that is wrong.</p>

<p style="text-align: justify;">Modern life is full of challenges that spark our &#39;fight/flight&#39; response, even though they&#39;re not physically threatening. Once the stress response kicks in, the triggers can become more trivial while the responses get greater. This means your most valuable efforts at stress-busting should involve changing your perception of the circumstances of your life.</p>

<p style="text-align: justify;"><span style="color:#000080;"><strong>Create mantras.</strong></span> Stress affects us when we&#39;re placed under pressure, meaning you&#39;ll need some emergency thinking techniques to help move you back towards calm. Create two or three mantras that you can focus on when you feel things getting on top of you. Good examples are &ldquo;Life&#39;s too short&rdquo;, &ldquo;Let it drop&rdquo; and &ldquo;Don&#39;t sweat the small stuff&rdquo;.</p>

<p style="text-align: justify;"><span style="color:#000080;"><strong>Create a book of calm.</strong></span> This is a small notebook that travels everywhere with you, in which you write down all your feelings and thoughts when you&#39;re suffering from stress, anger, anxieties or worries. It&#39;s a &lsquo;dump-bin&rsquo; for all your negative thinking and is one of the best ways to offload, rather than allowing your thoughts to fester and grow. Keep it by the bedside, as some of our worst worries pop into our heads at night time.</p>

<p style="text-align: justify;"><span style="color:#000080;"><strong>Stop moaning. </strong></span>Does this sound harsh? It should! Although talking a problem over can be therapeutic, constant and fruitless moaning will increase your overall stress levels by ensuring that the problem keeps hurting rather than healing. I describe it as picking a scab, making it continue to hurt and bleed rather than heal over.</p>

<p style="text-align: justify;"><span style="color:#000080;"><strong>Eat well.</strong></span> Stress can make us drink, eat and smoke more. Although it&#39;s often easier to maintain a healthy diet in the summer, the foods we eat in winter should sustain a positive approach to nutrition, as comfort eating in the cold weather can not only pile on the pounds, but also add to our stress levels.</p>

<p style="text-align: justify;">While alcohol and fatty or sugary foods might seem to provide an instant feeling of relaxation and well-being, the effect is temporary and overall they can increase our stress and anxiety levels. (Compare that first mouthful of wine on a Friday evening to that Saturday morning hangover when you&#39;ve drunk too much!) Make sure you have plenty of healthy, fresh food in the house, and keep your booze consumption within the recommended limits.</p>

<p style="text-align: justify;"><span style="color:#000080;">Exercise.</span> Exercise decreases stress levels as it gives a natural outlet for all that &lsquo;fight/flight&rsquo; adrenalin. For ideas on fun ways to keep physically active during the colder months, see our feature on winter sports. Have fun keeping active this time of the year!</p>

<p style="text-align: justify;"><span style="color:#000080;"><strong>Create structure out of chaos. </strong></span>Factors like the recession can prompt life changes that are both unwelcome and out of our control. Stress is strongly linked to our feelings of control, so worries about (or the reality of) redundancy or cut-backs can easily escalate your stress levels.</p>

<p style="text-align: justify;">Regain intellectual control over your life by creating and writing down strategies that will take you through any option in your life, from the best-case to the worst-case scenarios. You might think dwelling on your problems will increase your anxiety levels, but by facing them head-on and quietly planning alternative actions and fall-backs, you will be helping your mind to regain a sense of control.</p>

<p style="text-align: justify;"><span style="color:#000080;"><strong>Build relationships.</strong></span> When stress is prompted by factors that are out of our overall control, like job-related and money worries, it&#39;s easy to take out our suppressed anger and resentment on the wrong targets, leading to conflict and rifts with families and friends.<br />
<br />
Remember that stress exaggerates our negative emotions, making us more irritable, snappy and emotional than normal, and it&#39;s easy to pick the wrong targets for all that suppressed rage or distress.<br />
<br />
If you find yourself getting into regular arguments, try to recognize the flashpoints and then take steps to avoid them by backing down or walking away to take stock. But do keep talking: the company of friends and family can provide vital support when you see it as a way of having fun and taking your mind off your worries.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><em>Source: https://www.axappphealthcare.co.uk/Health-worries/Stress/Tackling-stress-through-positive-changes/</em></p>
', 0, N'Lifestyle, Stress, Well-being, Health ', N'Lifestyle, Stress, Well-being, Health ', N'Tackling Stress Through Positive Changes', CAST(0x0000A2BB0002CAD8 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (38, 11, N'AXA Philippines', N'Beat Everyday Stress', N'80d145e0-Article Beat Everyday Stress.jpg', N'<p style="text-align: justify;"><span style="font-size:12px;">The worries and concerns of modern life can take their toll on your health and well-being. If you&rsquo;re keen to change your outlook and tackle stress head-on, British coach and personal development expert Antoinette Dale Henderson has some well-tried tips.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">Stress and anxiety seem to have become an all too common side-effect of our busy, pressured and modern lives. According to recent research by UK-based company Mintel, as many as 40 million adults now admit to suffering from stress and anxiety on a regular basis. Only a fortunate 17% of adults in the UK claim to be free of any kind of worry.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">According to Antoinette, of all the issues worrying people, the top five tend to be caused by money, family and relationships, health, stress at work and job security or employment.<br />
<br />
Most people admit to being troubled with one or two worries but a third of adults are burdened by three or more concerns causing them stress.&nbsp;</span></p>

<h2 style="text-align: justify;"><span style="color:#000080;"><span style="font-size: 14px;"><strong>The big five stressors</strong></span></span></h2>

<p style="text-align: justify;"><span style="font-size:12px;">Can you relate to any of these causes of stress?</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;"><strong>1. Money</strong><br />
40% of people are regularly stressed out and worried about money issues, such as the cost of living, managing cash flow and paying bills.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;"><strong>2. Family and relationships</strong><br />
25% of the people surveyed worry about family and relationships, including difficulties other people are going through.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;"><strong>3. Health</strong><br />
Health concerns cause stress and worry to 24% of people; common worries revolve around current health issues and concern about future health.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;"><strong>4. Stress at work</strong><br />
Pressure and stress at work, such as dealing with difficult work situations, colleagues and demands, causes stress for 22% of people.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;"><strong>5. Job security or employment</strong><br />
Worries about employment and job security have been heightened by the recession, resulting in 21% of people feeling stressed about these issues.&nbsp;</span></p>

<h2 style="text-align: justify;"><strong><span style="color:#000080;"><span style="font-size: 14px;">What does &lsquo;being stressed&rsquo; feel like?</span></span></strong></h2>

<p style="text-align: justify;"><span style="font-size:12px;">According to the NHS, stress can affect you physically, emotionally and behaviourally, resulting in symptoms and feelings such as exhaustion, headaches, high blood pressure, insomnia, irritability, anxiety, fear and depression. It becomes difficult to function normally and your ability to work, juggle family life and think straight can be affected.<br />
<br />
&ldquo;Every person&rsquo;s experience of stress is unique but most people&rsquo;s stress is compounded by a sense of helplessness and the feeling that nothing can be done to overcome their situation,&rdquo; explains Antoinette.<br />
<br />
&ldquo;Even though you may feel helpless and at your wit&rsquo;s end, there&rsquo;s usually something that you can do to alleviate stress and move towards a more fulfilling future,&rdquo; says Antoinette.&nbsp;</span></p>

<h2 style="text-align: justify;"><span style="color:#000080;"><strong><span style="font-size: 14px;">Reducing stress</span></strong></span></h2>

<p style="text-align: justify;"><span style="font-size:12px;">Keen to change things and ease your worries?<br />
<br />
Here&#39;s Antoinette&rsquo;s three-step approach to taking small - but important &ndash; steps to reduce the stress in your life:</span></p>

<p style="text-align: justify; margin-left: 40px;"><strong><span style="font-size:12px;">1. Identify the root source of your worries and stress</span></strong></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">Sometimes it&rsquo;s not always obvious to identify the root cause of your worries or there could be more than one area in life triggering stress.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">&quot;Keeping a stress diary can be a useful way of identifying the triggers,&rdquo; suggests Antoinette.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">&ldquo;Once you&rsquo;re clear on the area/s of your life that are causing you the most stress, you can begin to take steps to address them.&rdquo;</span></p>

<p style="text-align: justify; margin-left: 40px;"><strong><span style="font-size:12px;">2. Devise ways to change</span></strong></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">Start thinking about the things you can do that will make a positive difference.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">For example, devising a budget and organizing your finances more efficiently could help ease some of your cash-flow worries. Looking for a new job or cutting back on working hours could help you begin to move away from a stressful working environment.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">And don&rsquo;t feel you&rsquo;ve got to do this on your own &ndash; advice and suggestions from others can be beneficial. &ldquo;You may like to talk these through with a friend or work them through with a qualified coach,&rdquo; says Antoinette.</span></p>

<p style="text-align: justify; margin-left: 40px;"><strong><span style="font-size:12px;">3. Think positively </span></strong></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">There may be areas in your life that feel completely beyond your control.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">&ldquo;Although you may not be able to change everything in your life that brings you stress, what you can change is the way you think about them,&rdquo; advises Antoinette.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">&ldquo;For example, rather than thinking negatively about your problems or worries, try and view them in a more positive light.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">&ldquo;Instead of thinking &lsquo;my finances are terrible and I&rsquo;ll never be able to afford to move&rsquo;, change the negative language into positive words, such as &lsquo;I&rsquo;m learning to manage my finances and save towards the future&rsquo;.</span></p>

<p style="text-align: justify; margin-left: 40px;"><span style="font-size:12px;">Writing down positive thoughts (e.g. &ldquo;Every day, I&rsquo;m making small changes and things are getting better&rdquo;) can also help lift your mood and the way you view thing</span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:12px;"><em>Source: https://www.axappphealthcare.co.uk/Health-worries/Stress/Beat-everyday-stress/</em></span></p>
', 0, N'Health, Stress, Lifestyle, Wellness', N'Health, Stress, Lifestyle, Wellness', N'Beat Everyday Stress', CAST(0x0000A2BB0003A278 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (39, 11, N'AXA Philippines', N'Tomato-rich Diets ‘Cut Breast Cancer Risk’', N'ab094c6c-Article Breast Cancer.jpg', N'<p><span style="color:#000080;"><strong>Eating plenty of tomatoes can prevent women from developing breast cancer.</strong></span></p>

<p style="text-align: justify;">That&#39;s the finding of a 20-week study of 70 post-menopausal women in the US. It is established that those in this particular category are more likely than other women to suffer from the disease, but the research published in the Journal of Clinical Endocrinology and Metabolism found eating a lot of tomatoes could lower the risk.</p>

<p style="text-align: justify;">Around one in eight women living in the US (12.4%) are diagnosed with breast cancer at some time in their lives and the older they are, the more the risk increases, the National Cancer Institute states.</p>

<p style="text-align: justify;">Those aged between 50 and 60 have a one-in-42 chance of suffering from the disease. Leading the research is Adana Llanos, of Rutgers University in New Jersey.</p>

<p style="text-align: justify;">She said the risk postmenopausal women face of developing breast cancer increases with their body mass index (BMI), but changing their diet can have an impact.</p>

<p style="text-align: justify;">In the first 10 weeks of the study participants ate a diet rich in tomatoes and the antioxidant Lycopene in the fruit. They would have at least 25 mg of lycopene a day.</p>

<p style="text-align: justify;">During the second half of the research period they ate a diet with plenty of soy - a minimum of 40g of soy protein each day. They were asked not to eat any soy or tomatoes in the fortnight before the study.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><em>Source: https://www.axappphealthcare.co.uk/health-worries/cancer/news/tomato-rich-diets-cut-breast-cancer-risk/</em></p>
', 0, N'Health, Cancer, Breast Cancer, Fitness, Diet, Vitamin, Tomato, Critical Illness', N'Health, Cancer, Breast Cancer, Fitness, Diet, Vitamin, Tomato, Critical Illness', N'Tomato-rich Diets ‘Cut Breast Cancer Risk’', CAST(0x0000A2BB0004617C AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (40, 11, N'AXA Philippines', N'Extra Fibre in Diet Cuts Risk of Heart Attack', N'a5e24c63-Article Extra Fiber.jpg', N'<p style="text-align: justify;"><strong>Eating more fibre could significantly cut a person&#39;s risk of heart disease.</strong></p>

<p style="text-align: justify;">Researchers from the University of Leeds in the UK claim that diets with a greater amount of fruit and vegetables, whole grains and beans in them are extremely beneficial.</p>

<p style="text-align: justify;">They found that every extra 7g (0.25oz) of fibre consumed per day reduced the risk of coronary heart disease and cardiovascular disease by as much as 9%.</p>

<p style="text-align: justify;">The data, gathered from the United States, Europe, Japan and Australia, also showed that eating more cereal fibre had a positive effect.</p>

<p style="text-align: justify;">Cardiovascular disease is one of the major causes of death in the UK, and with prevalence rates among the population estimated to be around 13%-16%, the researchers believe that small reductions in risk could be beneficial to thousands of individuals.</p>

<p style="text-align: justify;">An extra 7g of fibre is the same as a portion of whole grains, lentils, or a couple of portions of fruit and vegetables.</p>

<p style="text-align: justify;">In an accompanying editorial, Dr Robert Baron, professor of medicine at the University of California, wrote that the recommendation for diets to have adequate amounts of dietary fibre &quot;may turn out to be the most important nutrition recommendation of them all&quot;.</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><em>Source: https://www.axappphealthcare.co.uk/health-worries/heart/news/extra-fibre-in-diet-cuts-risk-of-heart-attack/</em></p>
', 0, N'Heart Attack, Health, Fibre, Diet, Lifestyle, Critical Illness', N'Heart Attack, Health, Fibre, Diet, Lifestyle, Critical Illness', N'Extra Fibre in Diet Cuts Risk of Heart Attack', CAST(0x0000A2BB00054024 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (41, 11, N'AXA Philippines', N'Low-fibre Diet Bad for Heart Health', N'f625762e-Article Bad For The Heart.jpg', N'<p style="text-align: justify;"><span style="color:#000080;"><strong>Low-fibre diets raise risk of heart disease, diabetes or stroke, a study says. </strong></span>US researchers analysed data from 23,168 men and non-pregnant women aged 20 and above who participated in the country&#39;s National Health and Nutrition Examination Survey between 1999 and 2010.<br />
<br />
They examined the link between fibre consumption and cardiometabolic risk factors such as metabolic syndrome, cardiovascular inflammation and obesity, which increase the chances of a person having heart disease, stroke, or diabetes.<br />
<br />
Previous studies have already shown that high-fibre diets can help reduce blood pressure, cholesterol and cardiovascular inflammation.<br />
<br />
Men aged 19-50 are recommended to consume 38g of fibre a day, while women should have 25g daily. Men over 50 ought to consume 30g a day and women in this age group 21g, according to the Institute of Medicine. A good source of fibre is lentil soup, which packs in 12g of fibre in one cup, while a bowl of corn flakes only provides 1g.<br />
<br />
In the latest research, published in the American Journal of Medicine, scientists looked at the fibre intake of different groups determined by age, gender, socio-economic status and race/ethnicity.<br />
<br />
The higher the fibre intake, the lower the occurrence of metabolic syndrome, obesity and inflammation, the study found.<br />
<br />
Dr. Clark said: &quot;Overall, the prevalence of the metabolic syndrome, inflammation and obesity each decreased with increasing quintiles of dietary fibre intake. Compared with participants in the lowest quintile of dietary fibre intake, participants in the highest quintile of dietary fibre intake had a statistically significant lower risk of having the metabolic syndrome, inflammation and obesity.&quot;</p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><em>Source: https://www.axappphealthcare.co.uk/health-worries/heart/news/low-fibre-diet-bad-for-heart-health/</em></p>
', 0, N'Health, Heart, Diet, Lifestyle, Fibre ', N'Health, Heart, Diet, Lifestyle, Fibre ', N'Low-fibre Diet Bad for Heart Health', CAST(0x0000A2BB0005D9A8 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (42, 11, N'AXA Philippines', N'Is Your Body Paying the Price for Wearing High Heels?', N'0dd25bc1-two-girls-in-heels.jpg', N'<p style="text-align: justify;"><span style="font-size:12px;">Dr. Alasdair Wright and Dr. Tony Redmond from the UK explain how high heels can affect our musculoskeletal system, and how you can take better care of your feet and reduce the damage to your body.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">They seem to be getting higher by the year and are as popular as ever with celebrities, however, regularly wearing high heels can affect your knees, hips and back &ndash; and cause long-lasting problems.&nbsp;</span></p>

<h4 style="text-align: justify;"><span style="font-size:14px;"><span style="color: rgb(0, 0, 128);"><strong>The low-down on high heels</strong></span></span></h4>

<p style="text-align: justify;"><span style="font-size:12px;">The most common health problems caused by high heels are felt in your feet. It&rsquo;s not surprising, with your toes squeezed into tight spaces and your heels elevated unnaturally by your shoes&rsquo; high heels. The highest heels &ndash; over five inches &ndash; cause the most damage. &ldquo;The higher the heel, the greater the pelvic tilt and forefoot pressure (literally, pressure on the front of your foot),&rdquo; explains Dr Alasdair Wright.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">A 5cm (just under 2&rdquo;) heel increases the pressure on the ball of your foot by about 52% with each step you take. Wear an 8cm heel (just over 3&rdquo;), and the pressure increases to about 79%.&nbsp;</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">&ldquo;This causes unnatural loading of the forefoot, with potential for hammer toe deformities, bunions, callouses and thickening of the nerves between the toes (Morton&rsquo;s neuroma),&rdquo; says Dr. Wright. If you wear high heels daily you may also find that the Achilles tendon at the back of your ankle changes, becoming tight, thickened and shortened.&nbsp;</span></p>

<h4 style="text-align: justify;"><span style="color:#000080;"><span style="font-size: 12px;"><strong><span style="font-size: 14px;">What could go wrong?</span> &nbsp; &nbsp;</strong> &nbsp; &nbsp;&nbsp;</span></span></h4>

<p style="text-align: justify;"><span style="font-size:12px;">The damage doesn&rsquo;t stop at your feet. High heels tend to push your body weight forward. This places extra strain on your knees, and alters the natural curvature of your back, which can lead to knee and back pain.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">If you already have alignment problems in these areas, wearing high heels for long periods could make them worse. Dr. Tony Redmond is the Arthritis UK Senior Lecturer in rheumatological podiatry at the University of Leeds, and an expert in biomechanics.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">&ldquo;High heels are a great fashion accessory, but from the point of view of the foot, high heels are a disaster. The joints of the feet can be damaged by wearing high heels, and this can cause some forms of arthritis,&rdquo; he explains.&nbsp;</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">&ldquo;The classic example is the bunion, a form of osteoarthritis.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">&ldquo;And wearing high heels increases some of the forces around the knee joints, which makes it more difficult to keep the knee straight. This means you contract the muscles a little more, and this compresses the knee joint. This increase in the mechanical wear and tear probably increases your risk of osteoarthritis.&nbsp;</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">&ldquo;High heels also increase the curvature of your lower back, and if you already have a weakness in that area, it will increase the tendency of the vertebrae to slip, relative to one another. This is another risk factor for osteoarthritis.&rdquo; &nbsp;</span></p>

<h4 style="text-align: justify;"><span style="font-size:14px;"><span style="color: rgb(0, 0, 128);"><strong>Use in small doses</strong></span></span></h4>

<p style="text-align: justify;"><span style="font-size:12px;">Keeping your high heels for special occasions will save you some of the problems that come from wearing high heels daily. And that includes pain. Recent research by the College of Podiatry found that high heels start hurting their wearer after one hour, six minutes and 48 seconds. &nbsp; For everyday wear, try to keep to heels no more than 3cm (about 1&frac14;&rdquo;) high. &ldquo;Wear your heels for as short a period as possible, taking them off when you need to walk longer distances or when you&rsquo;re sitting, and carry some flat, supportive shoes to change into,&quot; says Dr Wright.</span></p>

<h4 style="text-align: justify;"><span style="font-size:14px;"><span style="color: rgb(0, 0, 128);"><strong>Reduce the damage</strong></span></span></h4>

<p style="text-align: justify;"><span style="font-size:12px;">Taking care of your feet doesn&rsquo;t mean a lifetime spent in flats. Dr Wright&rsquo;s advice should help you reduce the impact wearing high heels has on your feet and body.</span></p>

<p style="margin-left: 40px; text-align: justify;"><span style="font-size:12px;">1. &ldquo;Try some shock absorbing pads and callous protectors for the parts of your feet that hurt the most. You should find these in most drugstores.</span></p>

<p style="margin-left: 40px; text-align: justify;"><span style="font-size:12px;">2. When you take your high heels off, mobilize your foot and ankle, by moving your foot in a circular motion. Stretch your Achilles tendon by stretching your legs out in front of you and pushing your heels down and your toes up.</span></p>

<p style="margin-left: 40px; text-align: justify;"><span style="font-size:12px;">3. Keep fit and work on your overall body posture and muscle tone. Pilates-type exercises are excellent for building good postural control.</span></p>

<p style="margin-left: 40px; text-align: justify;"><span style="font-size:12px;">4. Wear shoes with varying heel heights. This will give your tendons and joints a rest from holding stressful positions.</span></p>

<p style="margin-left: 40px; text-align: justify;"><span style="font-size:12px;">5. Most of all, listen to your body. Don&rsquo;t push through pain, otherwise you run the risk of longer term damage.&rdquo;</span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:12px;"><em>Source: https://www.axappphealthcare.co.uk/Health-worries/Muscles---bones---joints/Is-your-body-paying-the-price-for-wearing-high-heels-/</em></span></p>
', 0, N'Fashion, Women, Health, Wellness, Shoes', N'Fashion, Women, Health, Wellness, Shoes', N'Is Your Body Paying the Price for Wearing High Heels?', CAST(0x0000A2BB00069528 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (43, 11, N'AXA Philippines', N'Energy Drink Link To Health Issues', N'8efdc27e-Article Energy Drink.jpg', N'<p style="text-align: justify;"><span style="font-size:12px;">Energy drinks can significantly increase blood pressure and heighten the risk of heart disease, research claims.</span></p>

<p style="text-align: justify;"><span style="font-size:12px;">Scientists from the University of the Pacific in Stockton, and the David Grant Medical Centre, both in California, USA, found that consuming energy drinks can have a detrimental effect on a person&#39;s heart health.<br />
<br />
Using data published in several different studies, the researchers highlighted a &quot;convincing and concerning&quot; correlation between energy drinks and increased systolic blood pressure.<br />
<br />
However, they claimed further studies are needed to assess the impact on the heart rhythm.<br />
<br />
In part of the pooled analysis, the team examined the QT interval - a segment of the heart&#39;s rhythm - of 93 people who had just consumed one to three cans of energy drinks.<br />
<br />
They found that those who drank more energy drinks had a longer QT interval. For each can of energy drink the participants drank, their QT interval increased by 10 milliseconds.<br />
<br />
If the heart&#39;s rhythm becomes prolonged, it can cause serious irregular heartbeats or sudden death. &quot;Patients with high blood pressures or long QT syndrome should use caution and judgment before consuming an energy drink,&quot; said lead author of the study, Dr Sachin Shah.<br />
<br />
&quot;Since energy drinks also contain caffeine, people who do not normally drink much caffeine might have an exaggerated increase in blood pressure.&quot;<br />
<br />
He added that patients who are older or have pre-existing health concerns are at a greater risk of experiencing health-related side effects from energy drinks.</span></p>

<p style="text-align: justify;">&nbsp;</p>

<p style="text-align: justify;"><span style="font-size:12px;"><em>Source: https://www.axappphealthcare.co.uk/Healthy-lifestyle/Healthy-living/Energy-drink-link-to-health-issues/</em></span></p>
', 0, N'Health, Energy Drink, Lifestyle, Health Issues ', N'Health, Energy Drink, Lifestyle, Health Issues ', N'Energy Drink Link To Health Issues', CAST(0x0000A2BB00072420 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (45, 11, N'AXA Philippines', N'Characteristics of Non-Communicable Diseases', N'a5d8b3a0-Characteristics_of_Non_Communicable_Diseases.png', N'<p>Non-communicable diseases comprise 60% of total deaths in the Philippines in 2010. And with the increasing population of the elderly, you too can be part of the growing number of those living with heart and lung ailments.</p>
', 0, N'Health, Diseases, Illness, Wellness, Health', NULL, NULL, CAST(0x0000A3060027ED66 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (46, 11, N'AXA Philippines', N'Hypertension Statistics In The Philippines', N'10181043-Hypertension_Stats_In_The_Philippines.png', N'<p>The risk of hypertension increases with age. In a 2008 study, nearly half of Filipinos in early adulthood have blood pressures that are above normal. You could be one of them.</p>
', 0, N'Heart, Illness, Health ', N'Heart, Illness, Health ', N'Hypertension Statistics In The Philippines', CAST(0x0000A30600287D3C AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Stories] OFF
/****** Object:  Table [dbo].[StaticPage]    Script Date: 04/29/2014 17:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaticPage](
	[StaticID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[MetaKeyWords] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](200) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Static] PRIMARY KEY CLUSTERED 
(
	[StaticID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StaticPage] ON
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (3, N'What is Fail Proof?', N'<!-- Section post -->
<section class="section">
<div class="container">
<div class="row-fluid"><!-- Start of Content --><h7 class="header-center">FAIL PROOF YOUR FUTURE</h7>
<div id="line-gap">&nbsp;</div>
<br />
<!-- Second Part -->
<div class="row-fluid">
<div class="span14">
<div class="inner-content"><h11>With what you have right now, do you think you are moving towards success, or are you headed towards failure?</h11><br />
<br />
<h11>The numbers can be scary&hellip;</h11>

<ul class="styled-list style 1">
	<li>
	<h5><h11>8 out of 10 parents fail to prepare for their child&#39;s education</h11></h5>
	</li>
	<li>
	<h5><h11>7 out of 10 patients fail to prepare for health emergencies</h11></h5>
	</li>
	<li>
	<h5><h11>6 out of 10 breadwinners fail to safeguard their income</h11></h5>
	</li>
	<li>
	<h5><h11>6 out of 10 seniors fail to prepare for their retirement</h11></h5>
	</li>
</ul>

<h6>That&#39;s why you need to Fail Proof Your Future.</h6>
<br />
<h18>Fail Proof Your Future is an advocacy to educate Filipinos about financial planning and preparing for the four (4) basic financial needs: education, retirement, income protection, and health. </h18></div>
</div>
</div>
<!-- Second Part --> <!-- Fourth Part -->

<h3 class="header-enlarge">Four Basic Financial Needs</h3>
<img class="img-center2" src="/UserFiles/images/whatisfailproof-table.png" /></div>
<br />
<br />
<h18 class="header-center">Part of this advocacy is taking customers through a FINANCIAL NEEDS ANALYSIS (FNA).<br />
Through this activity, we aim to help people plan for the four basic financial needs, with advice on money management and wealth building. </h18><br />
<br />
<img class="img-center2" src="/UserFiles/images/whatisfailproof-table2.png" /></div>
<br />
<br />
<h14 class="header-center"> <a href="http://www.axaion.com.ph/" target="_blank"><img border="0" src="/UserFiles/images/btn-visit-onlinestore.png" /></a> <a href="http://myaxapartner.com.ph/" target="_blank"><img border="0" src="/UserFiles/images/btn-financial-adviser.png" /></a> </h14> <!-- Fourth Part --> <!-- End of Content --></section>', NULL, NULL, CAST(0x0000A2AA01353F30 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (7, N'Why Focus on your Health', N'<!-- Section post -->
<section class="section">
<div class="container">
<div class="row-fluid">
<ul class="portfolio-items portfolio-style1 filterable-items row-fluid style2" data-columns="4">
	<li class="portfolio-item focusonyourhealth first-row">
	<div class="inner-content">
	<div class="post post-full-width-alternate clearfix" id="post-2355">
	<div class="post-info-container">
	<p class="failproof-text1"><span class="failproof-text3">A</span><br />
	healthcare plan or medical insurance will help defray the cost of treatment and recovery. Even if you have a healthy amount of savings, it is still strongly recommended that you get health coverage because a major illness can quickly eat up your savings.</p>
	</div>
	&nbsp;

	<div class="post-info-container">
	<p class="failproof-text2"><span class="failproof-text3">Y</span>ou are more likely to get sick or seriously injured before you die and treating a major illness or injury can be very costly. This can put your family in deep financial trouble if you do not have sufficient financial resources. In many case, people die unnecessarily due to lack of funds for proper medical treatment.</p>
	</div>

	<div class="post-info-container">
	<p class="failproof-header1">Cost of Medical Procedure / Treatment</p>
	<img class="img-center" src="/UserFiles/images/cost_05.png" /></div>

	<div class="post-info-container">
	<p class="failproof-header2">Two basic types of medical insurance</p>
	</div>

	<div class="post-info-container">
	<p class="failproof-header3">1. HEALTHCARE PLAN<br />
	<span class="failproof-text2">This is available from Health Maintenance Organizations (HMOs). These plans cover both inpatient and outpatient services, although coverage may be limited.</span><br />
	<br />
	2. HOSPITALIZATION INCOME &amp; CRITICAL ILLNESS PLANS<br />
	<span class="failproof-text2">These plans are usually offered as riders by life insurance companies.</span></p>

	<p class="failproof-header3"><span class="failproof-text2">The hospitalization income plan pays you a specific amount for each day that you are hospitalized.<br />
	<br />
	The Critical illness plan pays you a certain amount once you are diagnosed with a dreaded disease like cancer, heart attack, or stroke, which incidentally are the top 3 killers amongst Filipinos. </span></p>

	<p class="failproof-header3"><span class="failproof-text2">It is crucial that you have this type of plan because treating a dreaded disease is very expensive and can cause irreparable damage to your finances. </span></p>
	</div>
	</div>
	</div>
	</li>
</ul>
</div>
</div>
</section>
', NULL, NULL, CAST(0x0000A2AB000FC8A0 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (8, N'Health eXentials', N'<section class="section">
<div class="container">
<div class="row-fluid"><!-- Start of Content --><h24 class="header-center">Value-for-Money health coverage of more than P5M,<br />
for as low as P59*/day.</h24><br />
<h14 class="header-center">Health eXentials is a simple, all-in-one insurance plan that prepares you for unexpected medical emergencies.<br />
Secure yourself from the worries of rising medical expenses with one of our 3 Health eXentials Packages!</h14>
<div id="healthexentials-container">
<div id="healthexentials-box-a">
<div id="healthexentials-icon"><img src="/UserFiles/images/icon_illness.png" /></div>

<div class="content-text4">Coverage for <a class="text-link" href="/FailProofYourHealth/10" target="_blank">35 Critical Conditions</a></div>
</div>

<div id="healthexentials-box-b">
<div class="content-text5">P 1,000,000.00</div>
</div>
</div>

<div id="healthexentials-container">
<div id="healthexentials-box-a">
<div id="healthexentials-icon"><img src="/UserFiles/images/icon_disabilitybenefits.png" /></div>

<div class="content-text4">Coverage in <span class="text-link">Disability Benefits</span></div>
</div>

<div id="healthexentials-box-b">
<div class="content-text5">P 1,000,000.00</div>
</div>
</div>

<div id="healthexentials-container">
<div id="healthexentials-box-a">
<div id="healthexentials-icon"><img src="/UserFiles/images/icon_dailyhospitalization.png" /></div>

<div class="content-text6">Daily Hospitalization Income<br />
<a class="text-link" href="/FailProofYourHealth/11" target="_blank">(including ICU confinement)</a></div>
</div>

<div id="healthexentials-box-b">
<div class="content-text5">P 3,300,000.00</div>
</div>
</div>

<div id="healthexentials-container">
<div id="healthexentials-box-a">
<div id="healthexentials-icon"><img src="/UserFiles/images/icon_surgicalreimbursement.png" /></div>

<div class="content-text6">A one-time <span class="text-link">Surgical Reimbursement</span><br />
(in case of accident)</div>
</div>

<div id="healthexentials-box-b">
<div class="content-text5">P 50,000.00</div>
</div>
</div>

<div id="healthexentials-container">
<div id="healthexentials-box-a">
<div id="healthexentials-icon"><img src="/UserFiles/images/icon_nonsmoker.png" /></div>

<div class="content-text4">A <a class="text-link" href="/FailProofYourHealth/11" target="_blank">Non-Smoker Bonus</a></div>
</div>

<div id="healthexentials-box-b">
<div class="content-text5">P 100,000.00</div>
</div>
</div>
</div>

<div class="header-center" id="line3-gap">&nbsp;</div>

<div id="healthexentials-boxtotal">
<div class="content-text7">P 5,450,000.00</div>

<div class="check-icon"><img src="/UserFiles/images/icon_check.png" /></div>
</div>

<div id="healthexentials-box-c">PLUS
<ul>
	<li>A guaranteed <a href="/FailProofYourHealth/11" target="_blank">Maturity Benefit</a> at age 55 of P300,000.</li>
	<li>A <span class="text-link">Bereavement Benefit </span> of P300,000 in case of death.</li>
	<li>Coverage from age 20 to 55.</li>
</ul>
</div>
<br />
<h23 class="header-center">Premiums can go as low as P37/day**</h23><br />
<h14 class="header-center"><a href="http://www.axaion.com.ph/" target="_blank"><img border="0" src="/UserFiles/images/btn_purchase-online.png" /></a> <a href="http://myaxapartner.com.ph/" target="_blank"><img border="0" src="/UserFiles/images/btn_set-appointment.png" /></a> </h14><br />
<h12> *Php 1,830/31 &ndash; P59 &ndash; Deluxe Package for age 20-25<br />
**Starter Package for age 20-25, with Critical Illness cover of P500,000 </h12> <!-- End of Content --></div>
</section>
', NULL, NULL, CAST(0x0000A2B000D24998 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (9, N'Health Max', N'<section class="section">
<div class="container">
<div class="row-fluid"><!-- Start of Content --><h24 class="header-center">Maximum health coverage for life, guaranteed.</h24><br />
<h14 class="header-center">Health MaX provides you coverage for an extensive list of major and minor medical conditions.<br />
This means that you have funding for medical expenses in case you get diagnosed<br />
with a critical condition from now until you reach the age of 100.</h14>
<h6 class="header-center">Pay during your prime. Be secure for a lifetime.</h6>
&nbsp;

<div id="healthmax-box-a">
<div id="healthmax-icon"><img src="/UserFiles/images/icon_illness.png" /></div>

<div class="content-text">MaX coverage of <a class="text-link" href="/FailProofYourHealth/12" target="_blank">56 Major Illnesses</a><br />
<h25>Most number of covered illnesses in the market!</h25></div>
</div>
&nbsp;

<div id="healthmax-box-b">
<div id="healthmax-icon"><img src="/UserFiles/images/icon_minorconditions.png" /></div>

<div class="content-text">MaX Coverage for <a class="text-link" href="/FailProofYourHealth/13" target="_blank">18 Minor Conditions</a><br />
<h25>Financial assistance for angioplasty, carcinoma-in-situ-treatment, and other<br />
minor conditions! </h25></div>
</div>
&nbsp;

<div id="healthmax-box-a">
<div id="healthmax-icon"><img src="/UserFiles/images/icon_age100.png" /></div>

<div class="content-text">MaX Coverage until <span class="text-link">age 100</span><br />
<h25>Health cover in your golden years, when you need it the most!</h25></div>
</div>
&nbsp;

<div id="healthmax-box-b">
<div id="healthmax-icon"><img src="/UserFiles/images/icon_10million.png" /></div>

<div class="content-text">MaX coverage up to <span class="text-link">P10 million</span><br />
<h25>Substantial funds for medical treatments and other expensess!</h25></div>
</div>
&nbsp;

<div id="healthmax-box-a">
<div id="healthmax-icon"><img src="/UserFiles/images/icon_healthfund.png" /></div>

<div class="content-text"><a class="text-link" href="#">Advanced Health Fund </a>starting age 70<br />
<h25>Flexible access to fund, in case you need it!</h25></div>
</div>
&nbsp;

<div id="healthmax-box-b">
<div id="healthmax-icon"><img src="/UserFiles/images/icon_riders.png" /></div>

<div class="content-text">Customizable plan that can be enhanced by <a class="text-link" href="/FailProofYourHealth/14" target="_blank">riders</a></div>
</div>
</div>
<br />
<h14 class="header-center">&nbsp;<a href="http://myaxapartner.com.ph/" target="_blank"><img border="0" src="/UserFiles/images/btn_set-appointment.png" /></a></h14></div>
</section>
', NULL, NULL, CAST(0x0000A2B000D2C954 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (10, N'35 Critical Conditions covered by Health eXentials', N'<section class="section">
  <div class="container">
    <div class="row-fluid"> 
      
      <!-- Start of Content -->
      
      <h23 class="header-center">35 Critical Conditions covered by Health eXentials</h23>
      <br >
      <div class="span6 content-text2"> •	Alzheimer’s Disease <br>
        •	Amyotrophic Lateral Sclerosis<br>
        •	Aplastic Anaemia<br>
        •	Benign Brain Tumour<br>
        •	Blindness<br>
        •	Cancer<br>
        •	Cardiomyopathy<br>
        •	Chronic and Irreversible Kidney Failure<br>
        •	Coma<br>
        •	Coronary Artery Bypass Graft Surgery (CABG)<br>
        •	Deafness (loss of hearing)<br>
        •	Dissecting Aortic Aneurysm<br>
        •	Encephalitis<br>
        •	End Stage Liver Disease<br>
        •	End Stage Lung Disease<br>
        •	Fulminant Hepatitis<br>
        •	Heart Attack<br>
        •	Heart Valve Surgery<br>
        •	Loss of Speech<br>
        •	Major Organ Transplantation<br>
      </div>
      <div class="span6 content-text2"> •	Medullary Cystic Disease<br>
        •	Meningitis<br>
        •	Motor Neuron Disease<br>
        •	Multiple Sclerosis<br>
        •	Muscular Dystrophy<br>
        •	Paralysis<br>
        •	Parkinson’s Disease<br>
        •	Poliomyelitis<br>
        •	Primary Pulmonary Arterial Hypertension (PPAH)<br>
        •	Progressive Bullbar Pallsy (PBP)<br>
        •	Progressive Muscular Atrophy<br>
        •	Severance of Limbs<br>
        •	Stroke<br>
        •	Surgery to the Aorta<br>
        •	Terminal Illness<br>
      </div>
      
      <!-- End of Content --> 
      
    </div>
  </div>
</section>', NULL, NULL, CAST(0x0000A30600A96132 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (11, N'Hospitalization', N'<section class="section">
  <div class="container">
    <div class="row-fluid"> 
      
      <!-- Start of Content -->
      
      <h23 class="header-center">Health eXentials</h23>
      <br >
      <div class="span11 content-text2">
        <h21>Daily Hospitalization Income</h21>
        – coverage that provides cash allowance if you are confined for a minimum of 3 days, up to a maximum of 1,000 days, and double this cash allowance in the event of an ICU confinement for a maximum of 120 days <br>
        <br>
        <h21>Non-Smoker Bonus </h21>
        – Receive an additional 10% Critical Conditions Coverage if you are considered a non-smoker at the time of diagnosis <br>
        <br>
        <h21>Maturity Benefit</h21>
        – if you are healthy and alive at age 55, you will receive a guaranteed lump sum cash amount (also known as the Health Bonus Benefit) </div>
      
      <!-- End of Content --> 
      
    </div>
  </div>
</section>', NULL, NULL, CAST(0x0000A30600AA1C8E AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (12, N'35 Major Illnesses covered by Health MaX', N'<section class="section">
  <div class="container">
    <div class="row-fluid"> 
      
      <!-- Start of Content -->
      
      <h23 class="header-center">35 Major Illnesses covered by Health MaX</h23>
      <br >
      <div class="span4 content-text2"> •	AIDS / HIV due to Blood Transfusion <br >
        •	Alzheimer’s Disease <br >
        •	Amputation of Both Feet due to Complication from Diabetes<br >
        •	Amyotrophic Lateral Sclerosis<br >
        •	Apallic Syndrome<br >
        •	Aplastic Anaemia<br >
        •	Benign Brain Tumour<br >
        •	Blindness<br >
        •	Brain Damage<br >
        •	Cancer<br >
        •	Cardiomyopathy<br >
        •	Chronic Adrenal Insufficiency <br >
        (Addison''s Disease)<br >
        •	Chronic and Irreversible Kidney Failure<br >
        •	Chronic Relapsing Pancreatitis<br >
        •	Coma<br >
        •	Coronary Artery Bypass Graft Surgery (CABG)<br >
        •	Deafness (loss of hearing)<br >
        •	Dissecting Aortic Aneurysm<br >
      </div>
      <div class="span4 content-text2"> •	Eisenmenger’s Syndrome<br >
        •	Elephantiasis<br >
        •	Encephalitis<br >
        •	End Stage Liver Disease<br >
        •	End Stage Lung Disease<br >
        •	Fulminant Hepatitis<br >
        •	Heart Attack<br >
        •	Heart Valve Surgery<br >
        •	Loss of Independent Existence<br >
        •	Loss of Speech<br >
        •	Major Burns <br >
        •	Major Organ Transplantation<br >
        •	Medullary Cystic DiseaseMeningitis<br >
        •	Motor Neuron Disease<br >
        •	Multiple Sclerosis<br >
        •	Muscular Dystrophy<br >
        •	Necrotizing Fasciitis<br >
        •	Occupationally Acquired AIDS / HIV<br >
        •	Paralysis<br >
        •	Parkinson’s Disease<br >
        •	Poliomyelitis<br >
        •	Primary Pulmonary Arterial<br >
      </div>
      <div class="span4 content-text2"> •	Hypertension (PPAH)<br >
        •	Progressive Bullbar Pallsy (PBP)<br >
        •	Progressive Muscular Atrophy<br >
        •	Progressive Supranuclear Palsy<br >
        •	Severance of Limbs<br >
        •	Severe Creutzfeld-Jacob Disease (CJD)<br >
        •	Severe Crohn’s Disease<br >
        •	Severe Infective Endocarditis<br >
        •	Severe Rheumatoid Arthritis<br >
        •	Severe Ulcerative Colitis<br >
        •	Stroke<br >
        •	Surgery to the Aorta<br >
        •	Systemic Lupus Erythematosus (S.L.E.) with Lupus Nephritis<br >
        •	Systemic Scleroderma<br >
        •	Terminal Illness<br >
        •	Tuberculosis Meningitis<br >
      </div>
      
      <!-- End of Content --> 
      
    </div>
  </div>
</section>', NULL, NULL, CAST(0x0000A30600ABC01E AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (13, N'18 Minor Conditions covered by Health MaX', N'<section class="section">
  <div class="container">
    <div class="row-fluid"> 
      
      <!-- Start of Content -->
      
      <h23 class="header-center">18 Minor Conditions covered by Health MaX</h23>
      <br >
      <div class="span6 content-text2">
        <h21>Covered conditions for ages 22 and below only:</h21>
        <br >
        •	Dengue Hemorrhagic Fever (Grades III and IV)<br >
        •	Hemophilia A and Hemophilia B<br >
        •	Insulin Dependent Diabetes Mellitus<br >
        •	Kawasaki Disease<br >
        •	Osteogenesis Imperfecta<br >
        •	Rheumatic Fever with Valvular Impairment<br >
        •	Still''s Disease<br >
        •	Wilson’s Disease<br >
      </div>
      <div class="span6 content-text2">
        <h21>Covered conditions for ages 23 and above only:</h21>
        <br >
        •	Carcinoma-in-situ (CIS) at Breast, Cervix Uteri, Uterus,  Ovary, Fallopian Tube, Vagina or Testicles<br >
        •	Early Stage Cancer of Prostate<br >
        •	Angioplasty and other Invasive Treatments for Coronary Artery Disease<br >
        •	Aortic Aneurysm<br >
        •	Chronic Auto-immune Hepatitis<br >
        •	Facial Reconstructive Surgery for Injury due to Accident<br >
        •	Hepatitis with Cirrhosis<br >
        •	Insertion of pacemaker or defibrillator<br >
        •	Skin Transplantation Due to Accidental Burning<br >
        •	Systemic Lupus Erythematosus (S.L.E.)<br >
      </div>
      
      <!-- End of Content --> 
      
    </div>
  </div>
</section>', NULL, NULL, CAST(0x0000A30600AC09C5 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (14, N'Riders', N'<section class="section">
  <div class="container">
    <div class="row-fluid"> 
      
      <!-- Start of Content -->
      
      <h23 class="header-center">Riders</h23>
      <br >
      <div class="span11 content-text2">
        <h21>CARE</h21>
        – provides Daily Hospitalization Income (DHI) in the event that the insured is confined to the hospital due to an illness or injury. It provides for twice the DHI benefit in the event that the insured is confined in the Intensive Care Unit (ICU). <br>
        <br>
        <h21>SECURE</h21>
        – provides for a pre-determined cash benefit for injuries sustained in an accident. <br>
        <br>
        <h21>PAYOR’S CLAUSE</h21>
        – If Payor passes away or becomes totally and permanently disabled prior to age 60, or prior to the insured attainment of age 21 (whichever comes first), all future annual basic premiums will be waived until the insured reaches age 21. </div>
      
      <!-- End of Content --> 
      
    </div>
  </div>
</section>', NULL, NULL, CAST(0x0000A30600AC6A7F AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[StaticPage] OFF
/****** Object:  Table [dbo].[SocialUsers]    Script Date: 04/29/2014 17:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialUsers](
	[SocialID] [nvarchar](100) NOT NULL,
	[SocialMedia] [nvarchar](50) NULL,
	[UserName] [nvarchar](100) NULL,
	[FullName] [nvarchar](100) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_SocialUsers] PRIMARY KEY CLUSTERED 
(
	[SocialID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'100000132334328', N'Facebook', NULL, N'Nash De Vivar', NULL, NULL, NULL, CAST(0x0000A2CD01247338 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'100001893520362', N'Facebook', NULL, N'King Bautista', NULL, NULL, NULL, CAST(0x0000A31B016FF14B AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'1002144341', N'Facebook', NULL, N'Amor Balagtas', NULL, NULL, NULL, CAST(0x0000A2C701316DE1 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'101588956426104995507', N'Google', NULL, N'ja salazar', NULL, NULL, N'ja.salazar0817@gmail.com', CAST(0x0000A2B50133442C AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'111104904750126942380', N'Google', NULL, N'Nilo Dizon', NULL, NULL, N'daniloydizon@gmail.com', CAST(0x0000A2B80131E78A AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'112742874060860261292', N'Google', NULL, N'Ernani Bautista', NULL, NULL, N'bautistael23@gmail.com', CAST(0x0000A2B4002EB7A5 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'116322297195028393497', N'Google', NULL, N'Xtina Agilera', NULL, NULL, N'xtinayagilera@gmail.com', CAST(0x0000A2B6016E66C4 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'1695686943', N'Facebook', NULL, N'Concep Dizon', NULL, NULL, NULL, CAST(0x0000A2B6016B12F5 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'521416809', N'Facebook', NULL, N'Tina Montalban', NULL, NULL, NULL, CAST(0x0000A2BC0179643B AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'556427121', N'Facebook', NULL, N'Jerome Hung', NULL, NULL, NULL, CAST(0x0000A2B4013663A4 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'https://me.yahoo.com/a/DWa9YXAgyv0gD50cFufwraIEe_bnpoapO6o-', N'Yahoo', NULL, N'', NULL, NULL, N'', CAST(0x0000A31C0029E011 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'WY456K754A46OLIPRED6ZVQPTM', N'Yahoo', NULL, N'Ernani Bautista', NULL, NULL, N'', CAST(0x0000A2B9013E18F2 AS DateTime))
/****** Object:  Table [dbo].[Roles]    Script Date: 04/29/2014 17:37:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Roles] ([ApplicationId], [RoleId], [RoleName], [Description]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a', N'Administrator', NULL)
INSERT [dbo].[Roles] ([ApplicationId], [RoleId], [RoleName], [Description]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'b774a3e0-4ff3-408e-b8cb-fe0e7135efda', N'Site Admin', NULL)
/****** Object:  Table [dbo].[Quiz]    Script Date: 04/29/2014 17:37:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[QuizID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[LocationCity] [nvarchar](200) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[BirthDate] [date] NULL,
	[Score] [nvarchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[QuizID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON
INSERT [dbo].[Quiz] ([QuizID], [FirstName], [LastName], [LocationCity], [ContactNumber], [Email], [BirthDate], [Score], [DateCreated], [Status]) VALUES (30, N'King', N'Bautista', N'taguig city', N'0919-3856142', N'test@yahoo.com', CAST(0x7A0C0B00 AS Date), N'25', CAST(0x0000A31B0181A49C AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
/****** Object:  Table [dbo].[Mushroom]    Script Date: 04/29/2014 17:37:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mushroom](
	[MushroomID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Mushroom] PRIMARY KEY CLUSTERED 
(
	[MushroomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mushroom] ON
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (2, N'FIND OUT YOUR HEALTH RISK SCORE', N'<h3>WHAT&#39;S YOUR<br />
<h7>HEALTH RISK SCORE?</h7></h3>
<p><a href="/HealthRiskScore"><img class="img-center2" src="/UserFiles/images/featured-img-healthriskscore.jpg" /></a></p>
<p><h8>DO YOU CONSIDER YOURSELF QUITE HEALTHY?</h8></p>
<p>We never think critical illness such as heart disease, stroke, or cancer can happen to us. Find out what your real health score is by taking this quiz!</p>
<p><a href="/HealthRiskScore"><img border="0" class="img-center2" height="55" src="/UserFiles/images/btn-healthriskscore.png" width="250" /></a></p>', CAST(0x0000A2AA014CA5D0 AS DateTime), 0)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (4, N'HEALTH FACTS & FIGURES', N'<h3>HEALTH FACTS &amp;<br />
<h7>FIGURES</h7></h3>

<p><a href="http://omgph.net/HealthDetail/18"><img class="img-center2" src="/UserFiles/images/stats.jpg" /></a></p>

<p><h8>Stats on the Big C</h8><br />
In 2008, about 12.7 million new cancer cases were diagnosed worldwide and the number is expected to go up to 21 million by 2030. This rise in the number of occurrence can be attributed to the increasing and aging global population.<a href="http://omgph.net/HealthDetail/18"> Read more</a></p>
', CAST(0x0000A2AA014F8DF4 AS DateTime), 0)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (5, N'FLOATING BAR', N'<a href="http://www.axaion.com.ph" target="_blank"><img border="0" class="btn-buyinsurance" src="/UserFiles/images/btn-buyinsurance.png" /></a><a href="http://myaxapartner.com.ph/" target="_blank"><img border="0" class="btn-wanttoknow" src="/UserFiles/images/btn-wanttoknow.png" /></a><a href="/HealthRiskScore"><img border="0" class="btn-takethequiz" src="/UserFiles/images/btn-healthriskscore.png" /></a>
', CAST(0x0000A2AA014FB248 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (6, N'Quiz', N'<p><img class="centeredImage" src="/UserFiles/images/quiz1-img.png" /></p>
', CAST(0x0000A2B5007651AF AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (7, N'Question 1', N'<img class="centeredImage" src="/UserFiles/images/01-quiz-image.png" />', CAST(0x0000A2BC0010A8C8 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (8, N'Question 2', N'<img class="centeredImage" src="/UserFiles/images/01-quiz-image.png" />', CAST(0x0000A2BC0010CD83 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (9, N'Question 3', N'<img class="centeredImage" src="/UserFiles/images/01-quiz-image.png" />', CAST(0x0000A2BC0010DB5F AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (10, N'Question 4', N'<img class="centeredImage" src="/UserFiles/images/01-quiz-image.png" />', CAST(0x0000A2BC0010E995 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (11, N'Question 5', N'<img class="centeredImage" src="/UserFiles/images/01-quiz-image.png" />', CAST(0x0000A2BC0010F433 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (12, N'Question 6', N'<img class="centeredImage" src="/UserFiles/images/01-quiz-image.png" />', CAST(0x0000A2BC001100AC AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mushroom] OFF
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 04/29/2014 17:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ce35722f-67f2-401a-be9a-0054bd74870a', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ba566166-09d0-417f-bead-369982a9814e', N'b774a3e0-4ff3-408e-b8cb-fe0e7135efda')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'5765ee6f-9a17-4cd0-a91d-4176f8c8ee42', N'b774a3e0-4ff3-408e-b8cb-fe0e7135efda')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'8698f389-983a-48d0-a6a8-43060c73a718', N'b774a3e0-4ff3-408e-b8cb-fe0e7135efda')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ed85a821-3f38-4862-a985-54c2fb8c5fe8', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ed85a821-3f38-4862-a985-54c2fb8c5fe8', N'b774a3e0-4ff3-408e-b8cb-fe0e7135efda')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'aba2b9ea-1115-40dc-9021-9d5f2208f4c4', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'54dccc51-23b0-449a-9e19-af0ea8e95bbb', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'f54a03d6-3235-4051-8037-ceb734965538', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a')
/****** Object:  Table [dbo].[Memberships]    Script Date: 04/29/2014 17:37:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memberships](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowsStart] [datetime] NOT NULL,
	[Comment] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ce35722f-67f2-401a-be9a-0054bd74870a', N'o8MSyQMznKYlHWEDAoRhGvX2CMximodWhY7Wlw9zQZo=', 1, N'WqSCgwC1O30jgrNyfnGzEw==', N'ja.salazar0817@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2AE003EF307 AS DateTime), CAST(0x0000A2FC0019A7BE AS DateTime), CAST(0x0000A2AE003EF307 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 2, CAST(0x0000A2FC0019A7C2 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ba566166-09d0-417f-bead-369982a9814e', N'lF5Em3mBJWa5MlE0IKjqnuu48xilReJhAz86lt1ynqI=', 1, N'VmOgI3o8H7jJhvEOOkbDiw==', N'anna.g@digitalmoz.com', NULL, NULL, 1, 0, CAST(0x0000A309007A7D3E AS DateTime), CAST(0x0000A3170061B901 AS DateTime), CAST(0x0000A309007A7D3E AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'5765ee6f-9a17-4cd0-a91d-4176f8c8ee42', N'hxwzuFuZcUXXXaTwAZ/XBhV1/Z8XpwoTZfc8w1lHQ9M=', 1, N'7U+eVLDTl1lhw1eoS00y/g==', N'jerome.hung@omnicommediagroup.com', NULL, NULL, 1, 0, CAST(0x0000A2DC00AE9EB2 AS DateTime), CAST(0x0000A31B005DF293 AS DateTime), CAST(0x0000A2DC00AE9EB2 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'8698f389-983a-48d0-a6a8-43060c73a718', N'PyPyOfySOTtym0DrnXJ2l553UgMIsKxkAyN3iRti/kA=', 1, N'VKyq53xqBDpMDveU0NCkqA==', N'tina.montalban@axa.com.ph', NULL, NULL, 1, 0, CAST(0x0000A2C90074E652 AS DateTime), CAST(0x0000A3060030FDED AS DateTime), CAST(0x0000A2C90074E652 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ed85a821-3f38-4862-a985-54c2fb8c5fe8', N'FtNh8gvpdlN10vo9ai2xyup9q+EtXgu9oxNIpR4KUUg=', 1, N'G4Ve00DS14x74tFKSvm4Kg==', N'shay.takeuchi@omnicommediagroup.com', NULL, NULL, 1, 0, CAST(0x0000A2AF00AC925F AS DateTime), CAST(0x0000A3090077499C AS DateTime), CAST(0x0000A2AF00AC925F AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'aba2b9ea-1115-40dc-9021-9d5f2208f4c4', N'v1GdOifyjnhM4AqiEVEdwLuenQ9Tx5UWTwomzAcLEl0=', 1, N'NhvXoxLu63iNUI4w4QtIOQ==', N'bautista_el23@yahoo.com.ph', NULL, NULL, 1, 0, CAST(0x0000A1800047CDC7 AS DateTime), CAST(0x0000A3140080B926 AS DateTime), CAST(0x0000A1800047CDC7 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'54dccc51-23b0-449a-9e19-af0ea8e95bbb', N'xyV0DZtejipqVHWiQcPVWbW+RxIh47SFrMlxmc5g5lQ=', 1, N'bL2LGVdAsYD64MPLlGFGww==', N'daniloydizon@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2AE003EA6F3 AS DateTime), CAST(0x0000A31C000697EF AS DateTime), CAST(0x0000A2AE003EA6F3 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'f54a03d6-3235-4051-8037-ceb734965538', N'u9RpChvJt3A0nX2Y/rMa1ctKnCTqjDv5A0XGMgpDwpM=', 1, N'w3Z/XJ9+LtU4pMsMV9ld6g==', N'jerome.hung@omnicommediagroup.com', NULL, NULL, 1, 0, CAST(0x0000A2C90075CD29 AS DateTime), CAST(0x0000A2C90075CD29 AS DateTime), CAST(0x0000A2C90075CD29 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[Profiles]    Script Date: 04/29/2014 17:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [nvarchar](4000) NOT NULL,
	[PropertyValueStrings] [nvarchar](4000) NOT NULL,
	[PropertyValueBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [MembershipUser]    Script Date: 04/29/2014 17:37:14 ******/
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipUser]
GO
/****** Object:  ForeignKey [UserProfile]    Script Date: 04/29/2014 17:37:30 ******/
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [UserProfile]
GO
/****** Object:  ForeignKey [UsersInRoleRole]    Script Date: 04/29/2014 17:38:40 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleRole]
GO
/****** Object:  ForeignKey [UsersInRoleUser]    Script Date: 04/29/2014 17:38:40 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleUser]
GO
