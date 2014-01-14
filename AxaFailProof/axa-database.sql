USE [master]
GO
/****** Object:  Database [AxaFailProof]    Script Date: 01/14/2014 12:18:26 ******/
CREATE DATABASE [AxaFailProof] ON  PRIMARY 
( NAME = N'AxaFailProof', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\AxaFailProof.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AxaFailProof_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\AxaFailProof_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AxaFailProof] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AxaFailProof].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AxaFailProof] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AxaFailProof] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AxaFailProof] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AxaFailProof] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AxaFailProof] SET ARITHABORT OFF
GO
ALTER DATABASE [AxaFailProof] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AxaFailProof] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AxaFailProof] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AxaFailProof] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AxaFailProof] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AxaFailProof] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AxaFailProof] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AxaFailProof] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AxaFailProof] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AxaFailProof] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AxaFailProof] SET  DISABLE_BROKER
GO
ALTER DATABASE [AxaFailProof] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AxaFailProof] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AxaFailProof] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AxaFailProof] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AxaFailProof] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AxaFailProof] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AxaFailProof] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [AxaFailProof] SET  READ_WRITE
GO
ALTER DATABASE [AxaFailProof] SET RECOVERY SIMPLE
GO
ALTER DATABASE [AxaFailProof] SET  MULTI_USER
GO
ALTER DATABASE [AxaFailProof] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AxaFailProof] SET DB_CHAINING OFF
GO
USE [AxaFailProof]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ce35722f-67f2-401a-be9a-0054bd74870a', N'Jaja', 0, CAST(0x0000A2B000C012A0 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ed85a821-3f38-4862-a985-54c2fb8c5fe8', N'shay', 0, CAST(0x0000A2B20108626A AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'aba2b9ea-1115-40dc-9021-9d5f2208f4c4', N'Kingcute', 0, CAST(0x0000A2B10124337A AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'54dccc51-23b0-449a-9e19-af0ea8e95bbb', N'Nilo', 0, CAST(0x0000A2B200EA147A AS DateTime))
/****** Object:  Table [dbo].[Topic]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (11, N'Statistics', CAST(0x0000A2B100E0911F AS DateTime), 1)
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (12, N'Fitness', CAST(0x0000A2B100624B17 AS DateTime), 1)
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (13, N'Diabetes', CAST(0x0000A2B100627865 AS DateTime), 1)
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (14, N'Haemorrhage ', CAST(0x0000A2B100628BC2 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Topic] OFF
/****** Object:  Table [dbo].[Stories]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (16, 11, N'admin', N'Top 3 Causes of Death', N'78a89cd2-infographics_2_causes.png', N'<p>In 2011 non-communicable diseases were the top 3 leading causes of death; namely: heart disease, stroke and lower respiratory infection. In the next years, these cases are expected to increase by 20% in some regions of the world including South East Asia.&nbsp;</p>
', 0, N'causes, death, top, philippines', N'Causes of Death', N'Sample Description for Causes of Death', CAST(0x0000A2B10060B508 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (18, 11, N'Karizza Pineda', N'Stats on the Big C', N'966b8009-infographics_1_cancer.png', N'<p>In 2008, about 12.7 million new cancer cases were diagnosed worldwide and the number is expected to go up to 21 million by 2030.</p>
', 0, N'cancer, filipino, worldwide', N'Cancer', N'Sample description for Cancer', CAST(0x0000A2B10061D7A8 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (22, 13, N'Peachy Felix', N'Life as beautiful as it is', N'f238ab13-slide_03.png', N'<blockquote>
<p>The last time I looked out my window, I not only saw LIFE as beautiful as it is. I felt it.&nbsp;<br />
I am Peachy Felix, 33 years old.&nbsp;<br />
<br />
<span style="line-height: 1.6em;">And this is my story.</span></p>
</blockquote>

<p>I am happily married to Dr. Kennard Felix, a young ENT doctor and a proud mom of 3 lovely girls &ndash; 10 and 7. We have almost everything a normal, happy family would have. We can buy anything we please, I have a driver (isn&rsquo;t that perfect?), Kenn and I have travelled to Europe and we have taken the girls to trips both locally and Asia. My husband showers me with lavish things. We have family friends and loving relatives. I have a great job as Head of Training of AXA Philippines. Perfect. Perfect.&nbsp;</p>

<p>Oh, and I got &ldquo;Cancer&rdquo;.</p>

<p>It was in May of 2011, ten months after my mom was diagnosed with stage 3 Breast Cancer, that I was also diagnosed with stage 1. I couldn&rsquo;t believe how I could have gotten this sickness &ndash; &ldquo;Was it like a cold your mother passes on to you?&rdquo; &ldquo;Can this be real? I&rsquo;m 31 and I have cancer?!?&nbsp;<br />
Question after question and I couldn&rsquo;t find the answers in my blurry mind. What are my treatment options? How much will we spend? How will my family adjust to this event in our life? Am I going to die soon?&rdquo;</p>

<p>When I calmed down, I knew with certainty that all I wanted was to get well. I had to be cured. No matter what happens, no obstacle will stop me from making sure I hurdle this test with flying colors.&nbsp;</p>

<p>I had so much dreams for myself and my family. And we have started to work on some plans to achieve these dreams. We have acquired some properties, enrolled our kids to our school of choice, placed some money for savings and investment. And now with cancer, all of these dreams became uncertain for us.<br />
I meant to treat cancer just as I would treat myself from fever. Cancer, I believe must not get in the way of my life. I knew I had to change my lifestyle and had to hold on closer to our Lord. Anything. I just wanted physically healing.<br />
I&rsquo;ve been blessed to have an oncologist who I can consult with anytime and who gave me much hope by sharing several treatment options, the pros and cons and ultimately how much each option would cost us. What she was suggesting is that for me to have the latest treatment modality for cancer. Since I was positive with high chance of recurrence, she suggested that we don&rsquo;t stop at chemotherapy, but take more aggressive steps for prevention via herceptin. But this would be 5 times more expensive than my regular chemo.<br />
&nbsp;<br />
So, treatment for me included 3 surgeries, 6 cycles of chemotherapy, 18 cycles of neo-adjuvant treatment called herceptin and 5 years of hormonal therapy. With just &ldquo;lakas ng loob,&rdquo; I said &ldquo;Let&rsquo;s do this!&rdquo; I wanted to start at the soonest time possible.&nbsp;<br />
But then I had to be realistic. I needed to make sure that I have covered all the bases in order to achieve my end result which is cure. So one by one, I asked these questions: 1) Am I physically capable to undergo all the items in my treatment regimen? 2) Can I delegate some things at work and be absent for awhile? 3) Am I financially capable to finance all the items in my treatment list?&nbsp;<br />
I needed to do the math. I did some pencil pushing and came up with &nbsp;rough estimates of how much I would need to complete my treatment cycle. Three surgeries for me would easily cost Php150,000. My first cycle of chemo is around Php25,000 and I needed six of that. My herceptin is roughly Php120,000 and I would need 18 sessions. Nanghina ako, because obviously we are not financially ready with the entire amount. Most especially when I have used up some of our own savings for my mom&rsquo;s treatment barely a year ago. Not to mention our recurring familial expenses. I have growing kids, thus growing expenses.&nbsp;<br />
And never did I dream of letting my family feel the financial impact of my health condition. Just like most people, di ba ayaw nating maging pabigat? Ayaw natin na ma-burden ang ibang tao because of our condition. You would want to still have your dignity intact, even when you&rsquo;re physically weak. You&rsquo;d still want to be a fashionista and look good, even when you are losing all of your hair, in all parts of the body, mind you ☺<br />
So this part of my sharing will now dwell on. If I knew I was going to get my cancer cells active, what could I have done differently? I should have prioritized the critical illness cover I thought of buying.</p>

<p>Wouldn&rsquo;t it be better if when I was diagnosed of a critical illness such as cancer, all I will have to think of is how to get well and get the best treatment? Or where to get my treatment? Asian Hospital ba or Makati Med? While recovering, I can leisurely stay in Tagaytay so I&rsquo;d have fresh air, healthier food, etc.&nbsp;</p>

<p>If I had known, I would&rsquo;ve planned big time.&nbsp;</p>

<p>By planning, this meant someone taking over the bills for me anytime I need them to. And that someone is NOT my family, mind you. I want my husband and children and family to be &ldquo;worry free&rdquo;.</p>

<p>By acting on my future plans, it meant I just had to be committed to take care of my future.</p>

<p>What having this disease taught me was &ndash; dilly dallying on things that are important shouldn&rsquo;t happen. I learned how to act on everything with more urgency.&nbsp;</p>

<p>We have the power to control our future. More so, if we&rsquo;re financially sound, we can pretty much make our dreams or the future real for us and our family. We &nbsp;have options, we have choices. And we can have the right people who can help us achieve the potential success we can have in the future.<br />
And today I tap on your heart and mind to make that one big decision. Investing for your financial future will always be a good deal. So that when the unexpected happens, you can be life confident!</p>
', 0, N'veggie, bonus, vobis', N'veggie, bonus, vobis', N'Sample description for Peachy Felix', CAST(0x0000A2B10064701C AS DateTime), 1, 1)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (23, 12, N'Lisa Natividad', N'The Health Project', N'60f66e27-Bounceback_RyanGreen-650X250.jpg', N'<blockquote>
<p>Good health is not something we can buy. However, it can be an extremely valuable savings account. - Anne Wilson Schaef</p>
</blockquote>

<p>My 14-year-old daughter, Pia approached me one morning and asked me if she could interview me and her daddy to get some information about our health history. She told me that she needed to submit our family&rsquo;s health history for a science project before the Christmas break and she wanted it to be done thoroughly. We sat on the bed and she proceeded to ask me basic questions like how old I was and what diseases I have so far. She was asking and jotting down notes nonchalantly as I enumerated my aches and pains. &nbsp;She also asked me about her grandparents and what their known diseases were right now. &nbsp;<br />
While she was writing down her notes, I noticed a frown forming on her forehead. She turned to me and asked in a concerned face if I have set aside money so that I could take myself to the hospital if needed and also asked how her Lolo and Lola were paying for their medicines and medical check-ups since they are both retired already. I could see in her eyes an epiphany, a realization that being sick and trying to get better requires money, possibly a lot of it. And she was right, getting sick and getting well requires hospital and doctor&rsquo;s bills, buying the prescribed medicines, which seems to have ballooned in amount year after year.&nbsp;</p>

<p>I hurriedly assured my daughter, that mommy was lucky that I was covered by the company&rsquo;s HMO package and that her dad also made sure that there is a healthcare coverage for her and her younger sister. That made her smile in relief, but then the frown came back; &ldquo;what about Lolo and Lola? Do they have HMO coverage too?&rdquo; My daughters grew up with their grandparents and I can feel that her concern for them runs deep and that she didn&rsquo;t want anything bad to happen to them. &nbsp;</p>

<p>My mom was wise enough to get a health coverage that would protect her and my dad up the age of 75. My dad is turning 72 this January and my mom 66 years old, sadly their coverage won&rsquo;t last that long. Although I&rsquo;m pretty sure that they had money tucked away for emergencies but at this point I could only hope and pray that when the time comes it will be enough. &nbsp;</p>

<p>That exercise with my daughter, talking about health and protection although it was just for a science project has opened my eyes as well as that of my daughter&rsquo;s to take better care of our health and to take immediate steps in securing the future. I was glad that I took my insurance agent&rsquo;s advice when I was single to always include health riders whenever I buy insurance, but then I sometimes wonder if that is enough too. How about you, have you given much thought about your health lately?</p>
', 0, N'science, project', N'science, project', N'Sample description for The Health Project', CAST(0x0000A2B100885F54 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (25, NULL, N'Nilo Dizon', N'TEst', NULL, N'Test', 0, NULL, NULL, NULL, CAST(0x0000A2B200651B1F AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Stories] OFF
/****** Object:  Table [dbo].[StaticPage]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (3, N'What is Fail Proof?', N'<h2 class="textuppercase" style="text-align: center;">Why do we need to Fail Proof your Future?</h2>

<div class="inner-contentr"><span class="dropcap">H</span>ow would you feel if you or a loved one was diagnosed with a critical illness that requires long-term care? How will you recover the loss of income during the time you&rsquo;re undergoing treatment? How will you pay for the daily hospitalization and specialized medicines? Every year, 250,000 families fall into a lifetime of financial hardships due to illness. (World Health Organization, 2011)<br />
<br />
<strong>GOOD NEWS:</strong> Even the seriously ill are living longer due to BETTER TREATMENT.<br />
<br />
<strong>BAD NEWS:</strong> Treatment is EXPENSIVE.<br />
<br />
Prolonged hospital stay &amp; long-term treatment can lead to a lifetime of financial difficulties.<br />
&nbsp;</div>

<div class="post-info-container"><img class="img-center" src="/UserFiles/images/cost02.png" /></div>

<h2 class="textuppercase" style="text-align: center;">WHAT YOU CAN DO</h2>

<div class="hr" style="margin: 10px; text-align: center;"><span style="line-height: 1.2em;">Prepare for the unexpected through the following:</span></div>

<p>&nbsp;</p>

<div class="inner-content">
<h4 class="textuppercase">1. HMO HEALTHCARE PLAN.</h4>
to cover outpatient care and minor illnesses</div>

<div class="inner-content">
<h4 class="textuppercase">2. Hospital Income plan</h4>
to cover loss of income due to hospital confinement</div>

<div class="inner-content">
<h4 class="textuppercase">3. Health Insurance</h4>
to cover cost for major illnesses such as cancer and heart problems</div>
', N'Fail Proof, Keywords, Sample, Exentials', N'Why do we need to Fail Proof your Future? Ask expert now.', CAST(0x0000A2AA01353F30 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (4, N'Statistics', N'<div class="post-info-container">
<p class="failproof-header4">Statistics</p>
</div>

<div class="post-info-container">
<p class="failproof-text1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere, leo sed consectetur vehicula, nisi arcu ultrices eros, nec dignissim leo sem vel lectus. In massa turpis, ornare nec commodo non, auctor vel felis. Etiam pharetra, turpis nec sollicitudin cursusLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere, leo sed consectetur vehicula, nisi arcu ultrices eros, nec dignissim leo sem vel lectus. In massa turpis, ornare nec commodo non, auctor vel felis. Etiam pharetra, turpis nec sollicitudin cursus</p>
</div>
', NULL, NULL, CAST(0x0000A2AA0139F03C AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (7, N'Why Focus on your Health', N'<div class="inner-content">
<div class="post post-full-width-alternate clearfix" id="post-2355">
<div class="post-info-container">
<div class="inner-content"><span class="dropcap">A</span> healthcare plan or medical insurance will help defray the cost of treatment and recovery. Even if you have a healthy amount of savings, it is still strongly recommended that you get health coverage because a major illness can quickly eat up your savings.<br />
<br />
<br />
You are more likely to get sick or seriously injured before you die and treating a major illness or injury can be very costly. This can put your family in deep financial trouble if you do not have sufficient financial resources. In many case, people die unnecessarily due to lack of funds for proper medical treatment.<br />
&nbsp;</div>

<div class="inner-content">
<h2 class="textuppercase" style="text-align: center;">Cost of Medical Procedure / Treatment</h2>
<img class="img-center" src="/UserFiles/images/cost_05.png" /></div>

<h2 class="textuppercase" style="text-align: center;">Two basic types of medical insurance</h2>

<div class="hr" style="margin-bottom:25px;">&nbsp;</div>
&nbsp;

<div class="inner-content">
<h4 class="textuppercase">1. HEALTHCARE PLAN.</h4>
This is available from Health Maintenance Organizations (HMOs). These plans cover both inpatient and outpatient services, although coverage may be limited.</div>
&nbsp;

<div class="inner-content">
<h4 class="textuppercase">2. HOSPITALIZATION INCOME <span class="special_amp">&amp; </span> CRITICAL ILLNESS PLANS.</h4>
These plans are usually offered as riders by life insurance companies.</div>
<br />
The hospitalization income plan pays you a specific amount for each day that you are hospitalized.<br />
<br />
The critical illness plan pays you a certain amount once you are diagnosed with a dreaded disease like cancer of suffer a heart attack or stroke, which incidentally, are top 3 killers of Filipinos.<br />
<br />
It is crucial that you have this type of plan because treating a dreaded disease is very expensive and can cause irreparable damage to your finances.</div>
</div>
</div>
', N'Why Focus on your Health', N'A healthcare plan or medical insurance will help defray the cost of treatment and recovery. Even if you have a healthy amount of savings', CAST(0x0000A2AB000FC8A0 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (8, N'Health Exentials', N'<section class="section">
<div class="container">
<div class="row-fluid">
<div class="post post-full-width-alternate clearfix" id="post-2355">
<h3>EASY. AFFORDABLE. COMPLETE</h3>
<h9> 1. Hospitalization Allowance<br />
2. Critical Conditions Coverage<br />
3. Disability Benefit<br />
4. Cash Benefit at age 55<br />
5. Surgical Reimbursement Benefit </h9><br />
<br />
<h11> <h9>Health Exentials is a simple, all-in-one insurance plan that prepares you for unexpected medical emergencies.</h9><br />
<h9>Secure yourself from the worries of rising medical expenses for as low as P1,140 a month.</h9><br />
<br />
<h7>It&rsquo;s Surprisingly easy with AXA!</h7><br />
<br />
&nbsp;
<div style="text-align:center;"><img src="http://omgph.net//UserFiles/images/title_HealthEx.png" /></div>
<br />
<ul class="styled-list style1">
	<li>If you are 20 to 45 years old, AXA provides you with 3 Health Exentials packages to choose from: Starter, Advance, Deluxe</li>
	<li>You are covered from Day 1 of your Policy up until age 55</li>
	<li>Get Daily Hospital Income coverage that provides cash allowance if you are confined for a minimum of 3 days up to a maximum of 1,000 days and double this cash allowance in the event of an ICU confinement for a maximum of 120 days</li>
	<li>Receive a lump sum amount when you are afflicted with any of the 35 covered conditions* through the Critical Conditions Coverage</li>
	<li style="margin-left:20px;">Coverage includes gender specific illnesses for women (such as breast and cervical cancer) or men (such as testicular and prostrate cancer)</li>
	<li style="margin-left:20px;">Additional 10% Critical Conditions Coverage if you are considered a non-smoker at the time of diagnosis</li>
	<li>Receive an additional lump sum amount in case you become totally and permanently disabled due to the Critical Condition.</li>
	<li>In the event of your demise, your beneficiaries will receive a lump sum amount through the Bereavement Benefit.</li>
	<li>If you are healthy and alive at age 55, you will receive a guaranteed lump sum cash amount through the Health Bonus Benefit</li>
	<h12>*Including but not limited to Cancer, Heart Attack, Primary Pulmonary Arterial Hypertension, Stroke<!--12--> </h12>
	<li>&nbsp;</li>
</ul>
</h11></div>

<h3>Health Exentials Packages</h3>
&nbsp;

<div class="row-fluid pricing-table">
<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Benefits</h2>
</div>

<ul class="feature-list">
	<li>DAILY Hospital Income (DHI) Benefit</li>
	<li>Additional DHI in case of ICU confinement</li>
	<li>Critical Conditions (CC) Coverage</li>
	<li>Non-Smoker Bonus</li>
	<li>Additional Coverage should CC result in Total &amp; Permanent Disability</li>
	<li>One time Surgical Reimbursement of expense resulting from accident</li>
	<li>Health Bonus*</li>
	<li>Bereavement Benefit</li>
</ul>
</div>
</div>

<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Starter</h2>
</div>

<ul class="feature-list">
	<li><br />
	P1,000</li>
	<li><br />
	P1,000</li>
	<li><br />
	P500,000</li>
	<li>P50,000</li>
	<li><br />
	<br />
	P500,000</li>
	<li><br />
	<br />
	P50,000</li>
	<li>P150,000</li>
	<li>P150,000</li>
</ul>
</div>
</div>

<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Advance</h2>
</div>

<ul class="feature-list">
	<li><br />
	P2,000</li>
	<li><br />
	P2,000</li>
	<li><br />
	P750,000</li>
	<li>P75,000</li>
	<li><br />
	<br />
	P750,000</li>
	<li><br />
	<br />
	P50,000</li>
	<li>P225,000</li>
	<li>P225,000</li>
</ul>
</div>
</div>

<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Deluxe</h2>
</div>

<ul class="feature-list">
	<li><br />
	P3,000</li>
	<li><br />
	P3,000</li>
	<li><br />
	P1,000,000</li>
	<li>P1,000,000</li>
	<li><br />
	<br />
	P50,000</li>
	<li><br />
	<br />
	P300,000</li>
	<li>P300,000</li>
	<li>P300,000</li>
</ul>
</div>
</div>
</div>

<h3>Monthly Premium**</h3>
&nbsp;

<div class="row-fluid pricing-table">
<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Age</h2>
</div>

<ul class="feature-list">
	<li>20-25</li>
	<li>26-30</li>
	<li>31-35</li>
	<li>36-40</li>
	<li>41-45</li>
</ul>
</div>
</div>

<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Starter</h2>
</div>

<ul class="feature-list">
	<li>P1,140</li>
	<li>P1,250</li>
	<li>P1,520</li>
	<li>P1,970</li>
	<li>P2,860</li>
</ul>
</div>
</div>

<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Advance</h2>
</div>

<ul class="feature-list">
	<li>P1,450</li>
	<li>P1,710</li>
	<li>P2,110</li>
	<li>P2,770</li>
	<li>P4,100</li>
</ul>
</div>
</div>

<div class="span16">
<div class="pricing-column">
<div class="title-box">
<h2>Deluxe</h2>
</div>

<ul class="feature-list">
	<li>P1,830</li>
	<li>P2,170</li>
	<li>P2,700</li>
	<li>P3,580</li>
	<li>P5,350</li>
</ul>
</div>
</div>
</div>
<h12> *To be received if you are healthy and alive at age 55 **Premiums are payable during the duration of the Plan.</h12><br />
<br />
<br />
&nbsp;
<div id="line-gap">&nbsp;</div>
<br />
<h7>Save more on annual payments!</h7><br />
<h9>Easy automatic payment options through any credit card or debit to your Metrobank, PNB, BPI, or BDO deposit account.</h9></div>
</div>
</section>
', N'Sample, Keywords for Health Exentials, HVMO Live, Digital Media Division', N'Health EXENTIALS. Surprisingly Easy. Definitely Affordable.', CAST(0x0000A2B000D24998 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (9, N'Health Max', N'<section class="section">
<div class="container">
<div class="row-fluid">
<div class="post post-full-width-alternate clearfix" id="post-2355">
<div class="post-info-container"><h7>You Can Plan for the Unexpected</h7><br />
<img src="http://omgph.net//UserFiles/images/logo-healthmax.png" /><br />
<h7>Your Lifetime Health Coverage</h7>
<p>Health Max provides you coverage for an extensive list of major and minor medical conditions.<br />
This means that you have funding for medical expenses in case you get diagnosed with a critical condition, from now until you reach the age of 100.</p>
&nbsp;

<h3>Here&rsquo;s how you can get Maximum Health Coverage for life until age 100</h3>
&nbsp;

<ul class="styled-list style 1">
	<li>
	<h5>Age 35</h5>
	You&rsquo;re at the peak of your career. It&rsquo;s the best time to purchase Health Max for a monthly premium of P2, 868.

	<ul class="styled-list style3">
		<li>
		<h6>Policy&rsquo;s Original Sum Insured: P1, 000,000</h6>
		</li>
	</ul>
	</li>
	<li>
	<h5>Age 40</h5>
	&ndash; Unexpected diagnosis of a cardiovascular disease. Receive P200, 000 (20% of policy&rsquo;s effective sum insured) for angioplasty treatment.

	<ul class="styled-list style3">
		<li>
		<h6>Policy&rsquo;s Effective Sum Insured: P800, 000</h6>
		</li>
	</ul>
	</li>
	<li>&nbsp;</li>
	<li>
	<h5>Age 55</h5>
	&ndash; Policy is fully paid up.

	<ul class="styled-list style3">
		<li>
		<h6>Policy&rsquo;s Effective Sum Insured: P800, 000</h6>
		</li>
	</ul>
	</li>
	<li>
	<h5>Age 65</h5>
	Retirement. HMO coverage expires, but remain covered by Health Max until age 100.

	<ul class="styled-list style3">
		<li>
		<h6>Policy&rsquo;s Effective Sum Insured: P800, 000</h6>
		</li>
	</ul>
	</li>
	<li>
	<h5>Age 70</h5>
	Have the option to withdraw as much as 20% of your original sum insured for medical emergencies.

	<ul class="styled-list style3">
		<li>
		<h6>Policy&rsquo;s Effective Sum Insured: P800, 000 (assuming no withdrawals made)</h6>
		</li>
	</ul>
	</li>
	<li>
	<h5>Age 100</h5>
	End of coverage. Receive a maturity benefit of P800, 000 (provided no other claims nor withdrawals were made)

	<ul class="styled-list style3">
		<li>
		<h6>o Maturity Benefit: P800, 000</h6>
		</li>
	</ul>
	</li>
</ul>

<p>*Sample illustration for 35 years old, male, non-smoker, and with P1 million coverage.</p>

<h3>Pay during your prime. Be secured for a lifetime.</h3>
&nbsp;

<h2>Disturbing Statistics</h2>

<p>Critical illness can happen to anyone, at any time. What if it happens to you?</p>

<ul class="styled-list style 1"><h11>
	<li>Heart attack, stroke, and cancer are the top causes of death in the Philippines.</li>
	<li>5 Filipinos die of cancer every hour.</li>
	<li>276 people in this country suffer from a fatal heart attack every day.</li>
	</h11>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
	<li>&nbsp;</li>
</ul>
<h11> Are you prepared to cover the costs of treatment? CANCER: about <h9>P60,000</h9> for one chemotherapy session<br />
or up to <h9>P400,000</h9> for a full cycle of treatment.<br />
HEART DISEASE: approximately <h9>P900,000</h9> for a triple bypass surgery. STROKE: <h9> P400,000</h9> for brain aneurysm surgery.<br />
<h12>(Source: Medical Tourism Guide, 2009)</h12></h11><br />
&nbsp;
<h3>So, you believe you&rsquo;re ready&hellip;</h3>
<br />
<h11> <h9>...for Work. </h9>You always do your best to meet your goals, exceed your targets, and beat those deadlines.<br />
<h9>&hellip;for Family needs. </h9>You&rsquo;ve committed to helping your loved ones at all stages of life, from birth to school, and even after they retire.<br />
<h9>&hellip;for your basic Health. </h9>You&rsquo;ve got an HMO plan or savings to deal with ordinary medical problems.<br />
But are you prepared to deal with a major medical emergency? What would happen if today&hellip; &hellip; you have a major heart attack? &hellip; you find out that you have cancer? &hellip; you suffer a stroke?<br />
How will you manage to survive the treatments physically and financially? Will you have to sell your assets, borrow money, or set aside your plans for the future?</h11><br />
&nbsp;
<h3>Will your dreams have to stop?</h3>
<br />
<h11> <h9>53%</h9>of medical treatments are still paid out-of-pocket</h11><br />
<h12>(source: National Statistical Coordination Board, 2011)</h12><br />
<br />
<h11>All of your careful savings can be used up by unexpected health issues. You might also have to make tough decisions like sell off your assets just to raise enough funds for recovery and sustain your family&rsquo;s well being.<br />
<br />
<h9>It pays to prepare early for the unexpected.</h9></h11><br />
&nbsp;
<div class="row-fluid pricing-table">
<div class="span3">
<div class="pricing-column">
<div class="pricing-box">
<div><span class="price">AXA</span></div>
</div>
</div>
</div>

<div class="span8">
<div class="pricing-column">
<ul class="feature-list">
	<li><h11>Provides a solution to cover major medical emergencies.</h11></li>
	<li><h11>Health Max is your secured lifetime health plan, that fits your needs, now and in the future.</h11></li>
</ul>
</div>
</div>
</div>
&nbsp;

<h3>Health Max<br />
Maximize your benefits with Health Max</h3>
&nbsp;

<ul class="styled-list style 1">
	<li>
	<h5>Have a secure medical fund when the need arises.</h5>

	<ul class="styled-list style3">
		<li>
		<h6>Receive cash benefits you can use as payment for treatments and recovery in case of major and minor critical illness diagnosis.</h6>
		</li>
	</ul>
	</li>
	<li>Get the broadest range of coverage, including minor critical conditions.
	<ul class="styled-list style3">
		<li>
		<h6>Health Max is specially designed to cover 18 minor critical conditions excluded by other health plans, such as early form of cancer (carcinoma in situ) and angioplasty, and also provides coverage for 56 major critical conditions, including heart attack, stroke, and cancer. Plus, you can claim twice for minor critical conditions over the period of coverage and get as much as 20% of the original sum insured for each minor critical condition.</h6>
		</li>
	</ul>
	</li>
	<li>Plan according to your budget.
	<ul class="styled-list style3">
		<li>
		<h6>You can choose to pay for 20 years or up to age 65 to suit your available budget.</h6>
		</li>
	</ul>
	</li>
	<li>Have maximum lifetime health coverage.
	<ul class="styled-list style3">
		<li>
		<h6>Health Max guarantees medical coverage until age 100 when most health plans have reached its end.</h6>
		</li>
	</ul>
	</li>
	<li>Have available funds for medical emergencies as you grow older.
	<ul class="styled-list style3">
		<li>
		<h6>The Advanced Health Fund gives you the option to withdraw a portion of your original sum insured starting age 70.</h6>
		</li>
	</ul>
	</li>
</ul>

<h4>Advances Health Fund withdrawable amounts:</h4>

<div class="row-fluid pricing-table">
<div class="span15">
<div class="pricing-column">
<div class="title-box">
<h2>Age</h2>
</div>

<ul class="feature-list">
	<li>Accumulated Amount of Available Fund</li>
	<li>Sample Computation</li>
</ul>
</div>
</div>

<div class="span15">
<div class="pricing-column">
<div class="title-box">
<h2>70</h2>
</div>

<ul class="feature-list">
	<li>20%<br />
	of sum insured</li>
	<li>P200,000</li>
</ul>
</div>
</div>

<div class="span15">
<div class="pricing-column">
<div class="title-box">
<h2>75</h2>
</div>

<ul class="feature-list">
	<li>35%<br />
	of sum insured</li>
	<li>P350,000</li>
</ul>
</div>
</div>

<div class="span15">
<div class="pricing-column">
<div class="title-box">
<h2>80</h2>
</div>

<ul class="feature-list">
	<li>45%<br />
	of sum insured</li>
	<li>P450,000</li>
</ul>
</div>
</div>

<div class="span15">
<div class="pricing-column">
<div class="title-box">
<h2>85</h2>
</div>

<ul class="feature-list">
	<li>50%<br />
	of sum insured</li>
	<li>P500,000</li>
</ul>
</div>
</div>
</div>

<ul class="styled-list style 1">
	<li>Show your care for loved ones with life insurance benefits.
	<ul class="styled-list style3">
		<li>
		<h6>Your family and loved ones will remain financially secure even after your untimely demise from the first day of your policy until age 100.</h6>
		</li>
	</ul>
	</li>
	<li>Enhance your plan with supplementary protection.
	<ul class="styled-list style3">
		<li>
		<h6>You can choose to attach additional coverage for accident and hospitalization. If you are buying a Health Max plan for your child, ensure that his/her policy remains inforce no matter what happens through the Payor&rsquo;s Clause Rider.</h6>
		</li>
	</ul>
	</li>
</ul>
<h12> *Note:<br />
*Sample computation for a sum insured of P1 million.<br />
*The amount that can be withdrawn increases as a percentage of original sum insured if no previous withdrawals are made.<br />
*Any withdrawals made from the Advances Health Fund shall be deducted from the payable major critical condition or death benefit.</h12><br />
<br />
<h9> Choose Health MaX, your lifetime health coverage<br />
Help us plan for your lifetime health needs.<br />
Talk to your AXA Financial Partner or email<br />
customer.service@axa.com.ph </h9><br />
&nbsp;

<h7>Save more on annual payments!</h7><br />
<h9>Easy automatic payment options through any credit card or debit to your Metrobank, PNB, BPI, or BDO deposit account.</h9> </h11></div>
</div>
</div>
</div>
</section>
', N'Sample, Keywords for Health Max', N'Sample Description for Health Max', CAST(0x0000A2B000D2C954 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[StaticPage] OFF
/****** Object:  Table [dbo].[SocialUsers]    Script Date: 01/14/2014 12:18:27 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 01/14/2014 12:18:27 ******/
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
/****** Object:  Table [dbo].[Location]    Script Date: 01/14/2014 12:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
	[Event] [nvarchar](200) NULL,
	[DateCreated] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Location] ON
INSERT [dbo].[Location] ([LocationID], [Location], [Event], [DateCreated], [Status]) VALUES (2, N'Taguig City', N'C# Programming Tutorial', CAST(0x0000A2AB00B17AC4 AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Location], [Event], [DateCreated], [Status]) VALUES (3, N'Makati City', N'AXA Redefining our Lives', CAST(0x0000A2AB00B23AF4 AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Location], [Event], [DateCreated], [Status]) VALUES (4, N'Mandaluyong City', N'Baby Steps: A morning to remember', CAST(0x0000A2AB00B24B5C AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Location], [Event], [DateCreated], [Status]) VALUES (5, N'Ortigas, Pasig City', N'Bridal Fair at SM Megamall', CAST(0x0000A2AB00B25CF0 AS DateTime), 1)
INSERT [dbo].[Location] ([LocationID], [Location], [Event], [DateCreated], [Status]) VALUES (6, N'Tomas Morato, QC', N'Today with KrisTV', CAST(0x0000A2AB00B28018 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Location] OFF
/****** Object:  Table [dbo].[EventsRegistered]    Script Date: 01/14/2014 12:18:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventsRegistered](
	[RegEventID] [int] IDENTITY(1,1) NOT NULL,
	[LocationID] [int] NOT NULL,
	[EventDate] [date] NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
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
SET IDENTITY_INSERT [dbo].[EventsRegistered] ON
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (31, 2, CAST(0x06380B00 AS Date), N'Lucas', N'M', N'Syd', N'0987-2361738', N'lyd007@yahoo.com.sg', CAST(0xF7000B00 AS Date), 1, CAST(0x0000A2B1003F9D8C AS DateTime), 1, 1)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (33, 4, CAST(0x15380B00 AS Date), N'John', N'M', N'Valle', N'0936-6712653', N'john.valle@gmail.com', CAST(0xE00C0B00 AS Date), 0, CAST(0x0000A2B10073E588 AS DateTime), 1, 1)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (34, 2, CAST(0x06380B00 AS Date), N'Patrick Jan', N'S', N'Lacson', N'0928-9991222', N'pj@teamyehey.com', CAST(0xE1FB0A00 AS Date), 1, CAST(0x0000A2B10084F8A0 AS DateTime), 1, 1)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (35, 2, CAST(0x0E380B00 AS Date), N'Ronald', N'Q', N'Rodil', N'0918-2687263', N'ronald@gmail.com', CAST(0xC3150B00 AS Date), 1, CAST(0x0000A2B100A053C0 AS DateTime), 1, 1)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (36, 2, CAST(0x15380B00 AS Date), N'Danilo', N'D.', N'Sonza', N'0918-3128736', N'daniloydizon@gmail.com', CAST(0x230C0B00 AS Date), 0, CAST(0x0000A2B200617B14 AS DateTime), 1, 1)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (37, 2, CAST(0x04380B00 AS Date), NULL, NULL, NULL, NULL, NULL, CAST(0x00000000 AS Date), NULL, CAST(0x0000A2B2012173C1 AS DateTime), 1, NULL)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (38, 2, CAST(0x0F380B00 AS Date), NULL, NULL, NULL, NULL, NULL, CAST(0x00000000 AS Date), NULL, CAST(0x0000A2B300AE6137 AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[EventsRegistered] OFF
/****** Object:  Table [dbo].[ContactUs]    Script Date: 01/14/2014 12:18:27 ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 01/14/2014 12:18:27 ******/
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
/****** Object:  Table [dbo].[Banner]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (3, N'Home', N'ecc7354e-slide01.png', N'WHY FOCUS<br/>ON HEALTH?', N'READ MORE', N'http://omgph.net/FailProofYourHealth/7', CAST(0x0000A2AA018020B8 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (4, N'Fail Proof your Health', N'a055a4ba-failproof_banner.png', NULL, NULL, NULL, CAST(0x0000A2AA018530D0 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (5, N'What is Fail Proof', N'9fce25a8-slide04.png', NULL, NULL, NULL, CAST(0x0000A2AA01855074 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (6, N'Stories', N'7dd26722-slide03.png', NULL, NULL, NULL, CAST(0x0000A2AA01856A3C AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (7, N'Contact Us', N'6bd4c86a-slide05.png', NULL, NULL, NULL, CAST(0x0000A2AA01859340 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (10, N'Home', N'e4a2f0ba-slide02.png', N'WHAT IS FAIL<br/>PROOF?', N'READ MORE', N'http://omgph.net/WhatIsFailProof/3', CAST(0x0000A2AD00B05CD4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (11, N'Event', N'fe95b575-slide06.png', NULL, NULL, NULL, CAST(0x0000A2AD00DE3CE9 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (12, N'Footer', N'7f165dfd-homebanner-ad_01.png', NULL, NULL, NULL, CAST(0x0000A2AF0017DAA4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (13, N'Home', N'b37ed407-slide_03.png', N'Life is <br \> BEAUTIFUL', N'READ MORE', N'http://omgph.net/Story/22', CAST(0x0000A2B101691DB4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (14, N'Home', N'e19475d3-slide_04.png', N'STATS ON THE <br \> BIG C', N'READ MORE', N'http://omgph.net/Story/18', CAST(0x0000A2B1016C5F86 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Banner] OFF
/****** Object:  Table [dbo].[Applications]    Script Date: 01/14/2014 12:18:27 ******/
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
/****** Object:  Table [dbo].[Mushroom]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (2, N'HOW WILL YOU DIE?', N'              <h3>HOW WILL YOU<br/>
              <h7>DIE?</h7></h3>
              <p><img src="/UserFiles/images/subcontent-img-02.png" class="img-center2"></p>
              <p><h8>TAKE THE HEALTH QUIZ</h8></p>
              <p><a href="index.html"><img src="/UserFiles/images/btn-takethequiz.png" class="img-center2" border="0" ></a></p></div>
', CAST(0x0000A2AA014CA5D0 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (4, N'FAIL PROOF YOUR HEALTH', N'<h3>FAIL PROOF YOUR<br/>
              <h7>HEALTH</h7></h3>
              <p><img src="/UserFiles/images/subcontent-img-01.png" class="img-center2"></p>
              <p><h8>WHY FOCUS ON YOUR HEALTH?</h8><br>
              How would you feel if you or a loved one was diagnosed with a critical illness that requires long-term care? How will you recover the loss of income during the time you’re undergoing treatment?<a href="FailProofYourHealth/7"> Read more</a></p> </div>', CAST(0x0000A2AA014F8DF4 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (5, N'AXA ION BANNER', N'      <input name="submit" type="image" class="btn-wanttoknow" value="Submit" src="/UserFiles/images/btn-wanttoknow.png" border="0" class="bluestrip-img" />
      <input name="submit" type="image" class="btn-takethequiz" value="Submit" src="/UserFiles/images/btn-takethequiz.png" border="0" class="bluestrip-img" />
', CAST(0x0000A2AA014FB248 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mushroom] OFF
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'ed85a821-3f38-4862-a985-54c2fb8c5fe8', N'b774a3e0-4ff3-408e-b8cb-fe0e7135efda')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'aba2b9ea-1115-40dc-9021-9d5f2208f4c4', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a')
INSERT [dbo].[UsersInRoles] ([UserId], [RoleId]) VALUES (N'54dccc51-23b0-449a-9e19-af0ea8e95bbb', N'84d71557-0151-4a0f-9ab0-4d2f9dd5ee7a')
/****** Object:  Table [dbo].[Memberships]    Script Date: 01/14/2014 12:18:27 ******/
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
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ce35722f-67f2-401a-be9a-0054bd74870a', N'o8MSyQMznKYlHWEDAoRhGvX2CMximodWhY7Wlw9zQZo=', 1, N'WqSCgwC1O30jgrNyfnGzEw==', N'ja.salazar0817@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2AE003EF307 AS DateTime), CAST(0x0000A2B000C012A0 AS DateTime), CAST(0x0000A2AE003EF307 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'ed85a821-3f38-4862-a985-54c2fb8c5fe8', N'FtNh8gvpdlN10vo9ai2xyup9q+EtXgu9oxNIpR4KUUg=', 1, N'G4Ve00DS14x74tFKSvm4Kg==', N'shay.takeuchi@omnicommediagroup.com', NULL, NULL, 1, 0, CAST(0x0000A2AF00AC925F AS DateTime), CAST(0x0000A2B20108626A AS DateTime), CAST(0x0000A2AF00AC925F AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'aba2b9ea-1115-40dc-9021-9d5f2208f4c4', N'v1GdOifyjnhM4AqiEVEdwLuenQ9Tx5UWTwomzAcLEl0=', 1, N'NhvXoxLu63iNUI4w4QtIOQ==', N'bautista_el23@yahoo.com.ph', NULL, NULL, 1, 0, CAST(0x0000A1800047CDC7 AS DateTime), CAST(0x0000A2B10124337A AS DateTime), CAST(0x0000A1800047CDC7 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'694af4b1-0014-429d-9fc1-3b874f4a44e5', N'54dccc51-23b0-449a-9e19-af0ea8e95bbb', N'xyV0DZtejipqVHWiQcPVWbW+RxIh47SFrMlxmc5g5lQ=', 1, N'bL2LGVdAsYD64MPLlGFGww==', N'daniloydizon@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A2AE003EA6F3 AS DateTime), CAST(0x0000A2B200EA147A AS DateTime), CAST(0x0000A2AE003EA6F3 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[Profiles]    Script Date: 01/14/2014 12:18:27 ******/
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
/****** Object:  ForeignKey [UsersInRoleRole]    Script Date: 01/14/2014 12:18:27 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleRole]
GO
/****** Object:  ForeignKey [UsersInRoleUser]    Script Date: 01/14/2014 12:18:27 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [UsersInRoleUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [UsersInRoleUser]
GO
/****** Object:  ForeignKey [MembershipUser]    Script Date: 01/14/2014 12:18:27 ******/
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipUser]
GO
/****** Object:  ForeignKey [UserProfile]    Script Date: 01/14/2014 12:18:27 ******/
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [UserProfile]
GO
