USE [DB_69490_axafailproof]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 01/20/2014 14:52:50 ******/
DROP TABLE [dbo].[Banner]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 01/20/2014 14:53:03 ******/
DROP TABLE [dbo].[Comments]
GO
/****** Object:  Table [dbo].[EventsRegistered]    Script Date: 01/20/2014 14:53:14 ******/
DROP TABLE [dbo].[EventsRegistered]
GO
/****** Object:  Table [dbo].[FailProofing]    Script Date: 01/20/2014 14:53:25 ******/
DROP TABLE [dbo].[FailProofing]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 01/20/2014 14:53:35 ******/
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[Mushroom]    Script Date: 01/20/2014 14:53:46 ******/
DROP TABLE [dbo].[Mushroom]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 01/20/2014 14:53:58 ******/
DROP TABLE [dbo].[Quiz]
GO
/****** Object:  Table [dbo].[SocialUsers]    Script Date: 01/20/2014 14:54:12 ******/
DROP TABLE [dbo].[SocialUsers]
GO
/****** Object:  Table [dbo].[StaticPage]    Script Date: 01/20/2014 14:54:34 ******/
DROP TABLE [dbo].[StaticPage]
GO
/****** Object:  Table [dbo].[Stories]    Script Date: 01/20/2014 14:54:49 ******/
DROP TABLE [dbo].[Stories]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 01/20/2014 14:55:05 ******/
DROP TABLE [dbo].[Topic]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 01/20/2014 14:55:05 ******/
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
INSERT [dbo].[Topic] ([TopicID], [Title], [DateCreated], [Status]) VALUES (14, N'Haemorrhage ', CAST(0x0000A2B100628BC2 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Topic] OFF
/****** Object:  Table [dbo].[Stories]    Script Date: 01/20/2014 14:54:49 ******/
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
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (16, 11, N'admin', N'Causes of Death', N'77fdbe9e-infographics_2_rev.png', N'<p>In 2011 about 36 million deaths worldwide were due to non-communicable diseases, a big up from the 2000 data that recorded about 31 million. The top 3 leading causes were heart disease, stroke and lower respiratory infection. &nbsp;In the next years, these cases are expected to increase by 20% in some regions of the world including South East Asia.</p>
', 0, N'causes, death', N'Causes of Death', N'Sample Description for Causes of Death', CAST(0x0000A2B10060B508 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (18, 11, N'admin', N'Stats on the Big C', N'539471e4-infographics_1_rev.png', N'<p>In 2008, about 12.7 million new cancer cases were diagnosed worldwide and the number is expected to go up to 21 million by 2030. This rise in the number of occurrence can be attributed to the increasing and aging global population. Life expectancy has doubled, from 46 years old in the 1950&rsquo;s to 67 years old in the 2000&rsquo;s (UN Population Division). And as people grow older they become more susceptible to diseases. Among the different types of cancer; lung, breast colorectal have the most number of occurrences.</p>

<p>&nbsp;</p>
', 0, N'cancer, filipino', N'Cancer', N'Sample description for Cancer', CAST(0x0000A2B10061D7A8 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (22, 13, N'Peachy Felix', N'Life is beautiful', N'5d9f7736-story-1-peachy.jpg', N'<p style="text-align: justify;">The last time I looked out my window, I not only saw LIFE as beautiful as it is. I felt it.&nbsp;<br />
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
', 1, N'veggie, bonus, vobis', N'veggie, bonus, vobis', N'Sample description for Peachy Felix', CAST(0x0000A2B10064701C AS DateTime), 1, 1)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (23, 12, N'Lisa Navidad', N'The Health Project', N'4c90de28-story-2.jpg', N'<p>Good health is not something we can buy. However, it can be an extremely valuable savings account. - Anne Wilson Schaef</p>

<p>My 14-year-old daughter, Pia approached me one morning and asked me if she could interview me and her daddy to get some information about our health history. She told me that she needed to submit our family&rsquo;s health history for a science project before the Christmas break and she wanted it to be done thoroughly. We sat on the bed and she proceeded to ask me basic questions like how old I was and what diseases I have so far. She was asking and jotting down notes nonchalantly as I enumerated my aches and pains. &nbsp;She also asked me about her grandparents and what their known diseases were right now. &nbsp;<br />
<br />
While she was writing down her notes, I noticed a frown forming on her forehead. She turned to me and asked in a concerned face if I have set aside money so that I could take myself to the hospital if needed and also asked how her Lolo and Lola were paying for their medicines and medical check-ups since they are both retired already. I could see in her eyes an epiphany, a realization that being sick and trying to get better requires money, possibly a lot of it. And she was right, getting sick and getting well requires hospital and doctor&rsquo;s bills, buying the prescribed medicines, which seems to have ballooned in amount year after year.&nbsp; I hurriedly assured my daughter, that mommy was lucky that I was covered by the company&rsquo;s HMO package and that her dad also made sure that there is a healthcare coverage for her and her younger sister. That made her smile in relief, but then the frown came back; &ldquo;what about Lolo and Lola? Do they have HMO coverage too?&rdquo; My daughters grew up with their grandparents and I can feel that her concern for them runs deep and that she didn&rsquo;t want anything bad to happen to them. &nbsp;My mom was wise enough to get a health coverage that would protect her and my dad up the age of 75. My dad is turning 72 this January and my mom 66 years old, sadly their coverage won&rsquo;t last that long. Although I&rsquo;m pretty sure that they had money tucked away for emergencies but at this point I could only hope and pray that when the time comes it will be enough.<br />
<br />
That exercise with my daughter, talking about health and protection although it was just for a science project has opened my eyes as well as that of my daughter&rsquo;s to take better care of our health and to take immediate steps in securing the future. I was glad that I took my insurance agent&rsquo;s advice when I was single to always include health riders whenever I buy insurance, but then I sometimes wonder if that is enough too. How about you, have you given much thought about your health lately?<br />
&nbsp;</p>

<blockquote><h11><em>Lisa is a working mom who loves to write about her family, her journey as a mother, life lessons and inspiring experiences. She is the author of the blog called &quot;Life is What You Make it&quot;. Lisa studied in the University of Santo Tomas and is a registered Medical Technologist. After a brief stint working in the hospital, she started her career in the health care business as an Underwriter. She has then transitioned into the various departments within life operations. She is currently our Customer Management Head.</em></h11></blockquote>
', 2, N'science, project', N'science, project', N'Sample description for The Health Project', CAST(0x0000A2B100885F54 AS DateTime), 1, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (30, 11, N'Shay', N'Test Table', N'b9ab8758-test-2.jpg', N'<p>Good health is not something we can buy. However, it can be an extremely valuable savings account. - Anne Wilson Schaef My 14-year-old daughter, Pia approached me one morning and asked me if she could interview me and her daddy to get some information about our health history.&nbsp;Good health is not something we can buy. However, it can be an extremely valuable savings account. - Anne Wilson Schaef My 14-year-old daughter, Pia approached me one morning and asked me if she could interview me and her daddy to get some information about our health history.&nbsp;Good health is not something we can buy. However, it can be an extremely valuable savings account. - Anne Wilson Schaef My 14-year-old daughter, Pia approached me one morning and asked me if she could interview me and her daddy to get some information about our health history.&nbsp;</p>
', 0, N'test test test test test ', N'test test test test test ', N'test test test test test ', CAST(0x0000A2B4003C5FDC AS DateTime), 0, 0)
INSERT [dbo].[Stories] ([StoryID], [TopicID], [Author], [Title], [Image], [Body], [CommnetsCount], [Tags], [MetaKeyWords], [MetaDescription], [DateCreated], [Status], [Featured]) VALUES (33, NULL, N'Nilo Dizon', N'Sample Title', NULL, N'This is a sample description/details for Share your Story Module.', 0, NULL, NULL, NULL, CAST(0x0000A2B801330A00 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Stories] OFF
/****** Object:  Table [dbo].[StaticPage]    Script Date: 01/20/2014 14:54:34 ******/
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
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (3, N'What is Fail Proof?', N'<section class="section">
  <div class="container">
    <div class="row-fluid">
    
    	<!-- Start of Content -->
        
    	<h7 class="header-center">FAIL PROOF YOUR FUTURE</h7><br >
        
        <div id="line-gap"></div><br >
   
        <!-- Second Part -->
        
        <div class="row-fluid style2 testimonial-grid">
        
        	<div class="span6 testimonial-grid-item">
				<div class="inner-content">
					<h11>With what you have right now, do you think you are moving towards success, or are you headed towards failure?</h11><br  />
                
                <br  /><h11>The numbers can be scary…</h11>
                <ul class="styled-list style 1">
                	
                	<li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>8 out of 10 parents fail to prepare for their child''s education</h11>
					</li>
                    
                    <li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>7 out of 0 patients fail to prepare for health emergencies</h11>
					</li>
                    
                    <li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>6 out of 10 breadwinners fail to safeguard their income</h11>
					</li>
                    
                    <li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>6 out of 10 seniors fail to prepare for their retirement</h11>
					</li>
                
                </ul>
                <h6>That''s why you need to Fail Proof Your Future.</h6><br  />   
				</div>
			</div>
                    
			<div class="span6 testimonial-grid-item">
				<div class="inner-content">
					<h18>Fail Proof Your Future is an advocacy to educate Filipinos about financial planning and preparing for the four (4) basic financial needs: education, retirement, income protection, and health. 
                    Because no one should be unprepared, AXA –  a global leader in life insurance – believes in educating you to face your own financial needs.</h18>
				</div>
			</div>
        
        </div>
        
        <!-- Second Part -->
       
        <!-- Fourth Part -->
                                  
      <h3 class="header-enlarge">Four Basic Financial Needs</h3>
                      
                <img src="/UserFiles/images/whatisfailproof-table.png" class="img-center2" /> </div>
                
                <br /><h18 class="header-center">Part of this advocacy is conducting Fail Proof Your Future interactive learning  sessions where you can get tips on personal money management and wealth building, 
                    get advice on how to accomplish your financial goals and fulfill your dreams of a brighter future. You also get practical tips and strategies on how to save effectively, reducing expenses, 
                    managing debt, earning more, protecting your family from financial disasters, preparing for your children''s education, planning for a comfortable retirement, and growing your money wisely.
				</h18>
                
                <br  /><h14 class="header-center">Interested in signing-up for a free session? <a href=''http://omgph.net/RegisterEvent'' class=''button''>Click Here</a> <br />to find out our Fail Proof pocket session schedules 
                and sign-up for one!</h14>
                
                <!-- Fourth Part -->
        
        <!-- End of Content -->
        
    </div>
  </div>
</section>', NULL, NULL, CAST(0x0000A2AA01353F30 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (7, N'Why Focus on your Health', N'<section class="section">
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
	<p class="failproof-header3">1. HEALTHCARE PLAN.<br />
	<span class="failproof-text2">This is available from Health Maintenance Organizations (HMOs). These plans cover both inpatient and outpatient services, although coverage may be limited.</span><br />
	<br />
	2. HOSPITALIZATION INCOME &amp; CRITICAL ILLNESS PLANS.<br />
	<span class="failproof-text2">These plans are usually offered as riders by life insurance companies.</span></p>

	<p class="failproof-header3"><span class="failproof-text2">The hospitalization income plan pays you a specific amount for each day that you are hospitalized.<br />
	<br />
	The critical illness plan pays you a certain amount once you are diagnosed with a dreaded disease like cancer of suffer a heart attack or stroke, which incidentally, are top 3 killers of Filipinos.</span></p>

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
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (8, N'Health Exentials', N'
<!-- Section post -->
<section class="section">
  <div class="container">
    <div class="row-fluid">
    
    	<!-- Start of Content -->
        
    	<h7 class="header-center">Why is HEALTH EXENTIALS is for you?</h7><br >
        
        <div id="line-gap"></div><br >
        

		<!-- First Part -->
        
		<div class="span12">
			<div class="inner-content">
				<ul class="styled-list style 1">
                
                	<li>
            		<i class="icon-arrow-right8"></i><h5>
                    <h11>If you are 20 to 45 years old, AXA provides you with 3 Health Exentials packages to choose from: Starter, Advance, Deluxe</h11>
            		</li>
                    
                    <li>
            		<i class="icon-arrow-right8"></i><h5>
                    <h11>You are covered from Day 1 of your Policy up until age 55</h11>
            		</li>
                    
                    <li>
            		<i class="icon-arrow-right8"></i><h5>
                    <h11>Get Daily Hospital Income coverage that provides cash allowance if you are confined for a minimum of 3 days up to a maximum of 1,000 days and double this cash allowance 
                    in the event of an ICU confinement for a maximum of 120 days</h11>
            		</li>
                    
                    <li>
                    
            		<i class="icon-arrow-right8"></i><h11>Receive a lump sum amount when you are afflicted with any of the 35 covered conditions* through the Critical Conditions Coverage</h11>
                    	<br ><br >
            			<ul class="styled-list style3">
                        
                		<li>
                		<i class="icon-arrow-right8"></i><h11>Coverage includes gender specific illnesses for women (such as breast and cervical cancer) or men (such as testicular and prostrate cancer)</h11>
                		</li>
                        
                        <li>
                		<i class="icon-arrow-right8"></i><h11>Additional 10% Critical Conditions Coverage if you are considered a non-smoker at the time of diagnosis</h11>
                		</li>
                        
               			</ul>
            		</li>
                    
                    <li>
            		<i class="icon-arrow-right8"></i><h5>
                    <h11>Receive an additional lump sum amount in case you become totally and permanently disabled due to the Critical Condition.</h11>
            		</li>
                    
                    <li>
            		<i class="icon-arrow-right8"></i><h5>
                    <h11>In the event of your demise, your beneficiaries will receive a lump sum amount through the Bereavement Benefit.</h11>
            		</li>
                    
                    <li>
            		<i class="icon-arrow-right8"></i><h5>
                    <h11>If you are healthy and alive at age 55, you will receive a guaranteed lump sum cash amount through the Health Bonus Benefit</h11>
            		</li>
                    
                <h12>*Including but not limited to Cancer, Heart Attack, Primary Pulmonary Arterial Hypertension, Stroke. </h12>   
                </ul>
                
			</div>
		</div>
        
        <!-- First Part -->
        
        <!-- Second Part -->
        
       	<h3 class="header-enlarge">Easy. Affordable. Complete</h3>
        
        <div class="span6">
		<br >
			<div class="inner-content">
				<h11>Health Exentials is a simple, all-in-one insurance plan that prepares you for unexpected medical emergencies. 
				Secure yourself from the worries of rising medical expenses for as low as P1,140 a month.</h11>
				<h6>Pay during your prime. Be secured for a lifetime.</h6><br >
			</div>
		</div>
        
        <div class="span6">
			<div class="inner-content">
				<ul class="styled-list style 1">
                                
					<li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>Hospitalization Allowance</h11>
					</li>
                                    
					<li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>Critical Conditions Coverage</h11>
					</li>
                                    
					<li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>Disability Benefit</h11>
					</li>
                                    
					<li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>Cash Benefit at age 55</h11>
					</li>
                                    
					<li>
					<i class="icon-arrow-right8"></i><h5>
					<h11>Surgical Reimbursement Benefit</h11>
					</li>
                    <br >                
				</ul>
			</div>
		</div>
        
        <!-- Second Part -->
        
        <!-- Third Part -->
                                  
                <br ><h3 class="header-enlarge">Health Essential Packages</h3>
                
                <br ><div class="row-fluid pricing-table">
                
                	<div class="span6">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Benefits</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11>DAILY Hospital Income (DHI) Benefit</h11></li>
              					<li><h11>Additional DHI in case of ICU confinement</h11></li>
                        		<li><h11>Critical Conditions (CC) Coverage</h11></li>
                        		<li><h11>Non-Smoker Bonus</h11></li>
                        		<li><h11>Additional Coverage should CC result in <br > Total & Permanent Disability</h11></li>
                        		<li><h11>One time Surgical Reimbursement <br >of expense resulting from accident</h11></li>
                        		<li><h11>Health Bonus*</h11></li>
                        		<li><h11>Bereavement Benefit</h11></li>
           			  			</ul>
						</div>	
                    </div>
                    
                    <div class="span16">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Starter</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11 class="header-center">P1,000</h11></li>
              					<li><h11 class="header-center">P1,000</h11></li>
                        		<li><h11 class="header-center">P500,000</h11></li>
                        		<li><h11 class="header-center">P50,000</h11></li>
                        		<li><h11 class="header-center"><br >P500,000</h11></li>
                        		<li><h11 class="header-center"><br >P50,000</h11></li>
                        		<li><h11 class="header-center">P150,000</h11></li>
                        		<li><h11 class="header-center">P150,000</h11></li>
           			  			</ul>
						</div>	
                    </div>
                    
                    <div class="span16">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Advance</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11 class="header-center">P2,000</h11></li>
              					<li><h11 class="header-center">P2,000</h11></li>
                        		<li><h11 class="header-center">P750,000</h11></li>
                        		<li><h11 class="header-center">P75,000</h11></li>
                        		<li><h11 class="header-center"><br >P750,000</h11></li>
                        		<li><h11 class="header-center"><br >P50,000</h11></li>
                        		<li><h11 class="header-center">P225,000</h11></li>
                        		<li><h11 class="header-center">P225,000</h11></li>
           			  			</ul>
						</div>	
                    </div>
                    
                    <div class="span16">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Advance</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11 class="header-center">P3,000</h11></li>
              					<li><h11 class="header-center">P3,000</h11></li>
                        		<li><h11 class="header-center">P1,000,000</h11></li>
                        		<li><h11 class="header-center"><br ></h11></li>
                        		<li><h11 class="header-center"><br >P1,000,000</h11></li>
                        		<li><h11 class="header-center"><br >P50,000</h11></li>
                        		<li><h11 class="header-center">P300,000</h11></li>
                        		<li><h11 class="header-center">P300,000</h11></li>
           			  			</ul>
						</div>	
                    </div>
               	
                </div>

				<!-- Third Part -->
                
                <!-- Fourth Part -->
                                  
                <h3 class="header-enlarge">Monthly Premium**</h3>
                
                <br ><div class="row-fluid pricing-table header-center">
                
                	<div class="span5">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Age</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11 class="header-center">Age 20-25</h11></li>
              					<li><h11 class="header-center">Age 26-30</h11></li>
                        		<li><h11 class="header-center">Age 31-35</h11></li>
                        		<li><h11 class="header-center">Age 36-40</h11></li>
                        		<li><h11 class="header-center">Age 41-45</h11></li>
           			  			</ul>
						</div>	
                    </div>
                    
                    <div class="span17">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Starter</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11 class="header-center">P1,140</h11></li>
              					<li><h11 class="header-center">P1,250</h11></li>
                        		<li><h11 class="header-center">P1,520</h11></li>
                        		<li><h11 class="header-center">P1,970</h11></li>
                        		<li><h11 class="header-center">P2,860</h11></li>
           			  			</ul>
						</div>	
                    </div>
                    
                    <div class="span17">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Advance</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11 class="header-center">P1,450</h11></li>
              					<li><h11 class="header-center">P1,710</h11></li>
                        		<li><h11 class="header-center">P2,110</h11></li>
                        		<li><h11 class="header-center">P2,770</h11></li>
                        		<li><h11 class="header-center">P4,100</h11></li>
           			  			</ul>
						</div>	
                    </div>
                    
                    <div class="span17">
                    	<div class="pricing-column">
                        	<div class="title-box"><h2>Advance</h2></div>
            					<ul class="feature-list"></h11>
              					<li><h11 class="header-center">P1,830</h11></li>
              					<li><h11 class="header-center">P2,170</h11></li>
                        		<li><h11 class="header-center">P2,700</h11></li>
                        		<li><h11 class="header-center">P3,580</h11></li>
                        		<li><h11 class="header-center">P5,350</h11></li>
                                </ul>
						</div>	
                    </div>
                    <h12>*To be received if you are healthy and alive at age 55<br >**Premiums are payable during the duration of the Plan.</h12><br >
               	</div>
                

				<!-- Fourth Part -->
                
                <!-- Fifth Part -->
                
                <h6 class="header-center">Save more on annual payments!</h6>
                
                <h11 class="header-center">Easy automatic payment options through any credit card or debit to your Metrobank, PNB, BPI, or BDO deposit account.</h11>
                
                <br >
                
                <!-- Fifth Part -->
           
        <!-- End of Content -->
        
    </div>
  </div>
</section>
', NULL, NULL, CAST(0x0000A2B000D24998 AS DateTime), 1)
INSERT [dbo].[StaticPage] ([StaticID], [Title], [Body], [MetaKeyWords], [MetaDescription], [DateCreated], [Status]) VALUES (9, N'Health Max', N'<!-- Section post -->
<section class="section">
	<div class="container">
    	<div class="row-fluid">
            		<!-- Start of content-->
                	<h7 class="header-center">You Can Plan for the Unexpected</h7>
                    <img src="/UserFiles/images/logo-healthmax.png" class="header-center" ><br >
                    <h7 class="header-center">Your Lifetime Health Coverage</h7><br >
                    
                    <!-- First Part-->
                    <br><h3 class="header-enlarge">Here''s how you can get Maximum Health Coverage for life until age 100</h3>
                    <div class="row-fluid style2 testimonial-grid">
                    
                    <h11 class="header-center">Health Max provides you coverage for an extensive list of major and minor medical conditions. <br >
            		This means that you have funding for medical expenses in case you get diagnosed with a critical condition, <br >from now until you reach the age of 100. </h11><br >
                    
                    <div class="span6 testimonial-grid-item">
                    	<div class="inner-content">
                    		<div class="testimonial"> 
                      		<img class="author-avatar" src="/UserFiles/images/team1.jpg" >
                        	<blockquote> <h13>You''re at the peak of your career. It''s the best time to purchase Health Max for a monthly premium of P2, 868.</h13>
                            <h6>Policy''s Original Sum Insured: P1, 000,000</h6>
                            </blockquote>
                        	</div>
                    	</div>
                    </div>
                    
                    <div class="span6 testimonial-grid-item">
                    	<div class="inner-content">
                    		<div class="testimonial"> 
                      		<img class="author-avatar" src="/UserFiles/images/team4.jpg">
                        	<blockquote> <h13>Retirement. HMO coverage expires, but remain covered by Health Max until age 100..</h13>
                            <h6>Policy''s Effective Sum Insured: P800, 000</h6>
                        	</div>
                    	</div>
                    </div>
                    
                    <div class="span6 testimonial-grid-item">
                    	<div class="inner-content">
                    		<div class="testimonial"> 
                      		<img class="author-avatar" src="/UserFiles/images/team2.jpg" >
                        	<blockquote> <h13>Unexpected diagnosis of a cardiovascular disease. Receive P200, 000 (20% of policy''s effective sum insured) for angioplasty treatment.</h13>
                            <h6>Policy''s Effective Sum Insured: P800, 000</h6>
                        	</div>
                    	</div>
                    </div>
                    
                    <div class="span6 testimonial-grid-item">
                    	<div class="inner-content">
                    		<div class="testimonial"> 
                      		<img class="author-avatar" src="/UserFiles/images/team5.jpg" >
                        	<blockquote> <h13>Have the option to withdraw as much as 20% of your original sum insured for medical emergencies. </h13>
                            <h6>Policy''s Effective Sum Insured: P800, 000 (assuming no withdrawals made)</h6>
                        	</div>
                    	</div>
                    </div>
                    
                    <div class="span6 testimonial-grid-item">
                    	<div class="inner-content">
                    		<div class="testimonial"> 
                      		<img class="author-avatar" src="/UserFiles/images/team3.jpg" >
                        	<blockquote> <h13>Policy''s Effective Sum Insured: P800, 000</h13>
                            <h6>Maturity Benefit: P800, 000</h6>
                        	</div>
                    	</div>
                    </div>
                    
                    <div class="span6 testimonial-grid-item">
                    	<div class="inner-content">
                    		<div class="testimonial"> 
                      		<img class="author-avatar" src="/UserFiles/images/team6.jpg" >
                        	<blockquote> <h13>End of coverage. Receive a maturity benefit of P800, 000 (provided no other claims nor withdrawals were made) </h13>
                            <h6>Maturity Benefit: P800, 000</h6>
                        	</div>
                    	</div>
                    </div>
                    
                    </div>
                    
                    <br ><h12 class="header-center">*Sample illustration for 35 years old, male, non-smoker, and with P1 million coverage. </h12><br >
                    
                    <h6 class="header-center">Pay during your prime. Be secured for a lifetime.</h6><br ><br >
                    
                    <!-- First Part-->
                    
                    <!-- Second Part-->
                    
                    <h3 class="header-enlarge">Disturbing Statistics</h3>
                    
                    <h11 class="header-center">Critical illness can happen to anyone, at any time. What if it happens to you? </h11><br >
                    
                    <div class="row-fluid style2">
                    
        				<div class="span4">
          					<div class="inner-content iconbox-container">
								<div class="feature_box style3"><img src="/UserFiles/images/icon1_diseases.png" >
								  <h14 class="header-center"><br >Heart attack, stroke, and cancer</h14>
								  <h11 class="header-center">Top causes of death in the Philippines.</h11>
							  </div>
							</div>
						</div>
                        
        				<div class="span4">
          					<div class="inner-content  iconbox-container ">
            					<div class="feature_box style3"><img src="/UserFiles/images/icon2_filipinos.png">
									<h14 class="header-center"><br >5 Filipinos</h14>
								  	<h11 class="header-center">Top causes of death in the Philippines.</h11>
            					</div>
          					</div>
        				</div>
                        
                        <div class="span4">
          					<div class="inner-content  iconbox-container ">
            					<div class="feature_box style3"><img src="/UserFiles/images/icon3_people.png" class="img-center2" >
									<h14 class="header-center"><br >276 People</h14>
								  	<h11 class="header-center">Die of cancer every hour.</h11>
            					</div>
          					</div>
        				</div>
                        
					</div>
                    
                    <br ><h11 class="header-center">Are you prepared to cover the costs of treatment?</h11><br >
                    
                    <div class="row-fluid style2">
                    
        				<div class="span4">
          					<div class="inner-content iconbox-container">
								<div class="feature_box style3">
									<h15 class="header-center">P400,000 </h15>
								  	<h14 class="header-center">CANCER</h14>
								  	<h11 class="header-center">one chemotherapy <br > for a full cycle of treatment</h11>
							  </div>
							</div>
						</div>
                        
        				<div class="span4">
          					<div class="inner-content  iconbox-container ">
            					<div class="feature_box style3">
									<h15 class="header-center">P900,000 </h15>
								  	<h14 class="header-center">HEART DISEASE</h14>
								  	<h11 class="header-center">Approximately for a triple <br > bypass surgery</h11>
            					</div>
          					</div>
        				</div>
                        
                        <div class="span4">
          					<div class="inner-content  iconbox-container ">
            					<div class="feature_box style3">
									<h15 class="header-center">P400,000 </h15>
								  	<h14 class="header-center">STROKE</h14>
								  	<h11 class="header-center">for brain aneurysm surgery</h11>
            					</div>
          					</div>
        				</div>
                        
					</div>
                    
                    <!-- Second Part-->
                    
                    <!-- Third Part-->
                    
                    <br ><h3 class="header-enlarge">So, you believe you''re ready</h3><br >
                    
                    <div class="row-fluid ">
                    
					<div class="span4">
						<div class="inner-content vertical-padding-large">
							<div class="feature_box style2">
                            	<table width="300" border="0" cellspacing="0" cellpadding="0">
  								<tr>
    							<td width="80" rowspan="2"><p>&nbsp;</p>
     							<p><img src="/UserFiles/images/icon4_work.png"></p></td>
								<td width="220" height="38"><h14>...for Work</h14></td>
								</tr>
								<tr>
								<td><h11>You always do your best to meet your goals, exceed your targets, and beat those deadlines.</h11></td>
								</tr>
								</table>
                            </div>
						</div>
					</div>
                    
                    <div class="span4">
						<div class="inner-content vertical-padding-large">
							<div class="feature_box style2">
                            	<table width="300" border="0" cellspacing="0" cellpadding="0">
  								<tr>
    							<td width="80" rowspan="2"><p>&nbsp;</p>
     							<p><img src="/UserFiles/images/icon5_family.png"></p></td>
								<td width="220" height="38"><h14>...for Family needs. </h14></td>
								</tr>
								<tr>
								<td><h11>You''ve committed to helping your loved ones at all stages of life, from birth to school, and even after they retire.</h11></td>
								</tr>
								</table>
                            </div>
						</div>
					</div>
                    
                    <div class="span4">
						<div class="inner-content vertical-padding-large">
							<div class="feature_box style2">
                            	<table width="300" border="0" cellspacing="0" cellpadding="0">
  								<tr>
    							<td width="80" rowspan="2"><p>&nbsp;</p>
     							<p><img src="/UserFiles/images/icon6_basichealth.png"></p></td>
								<td width="220" height="38"><h14>...for your basic Health. </h14></td>
								</tr>
								<tr>
								<td><h11>You''ve got an HMO plan or savings to deal with ordinary medical problems</h11></td>
								</tr>
								</table>
                            </div>
						</div>
					</div>
                    
					</div>
                    
                    <br ><h14 class="header-center">But are you prepared to deal with a major medical emergency? What would happen if today...
                    <br >... you have a major heart attack? ... you find out that you have cancer? ... you suffer a stroke?</h14><br >
                    
                    <br ><h14 class="header-center">How will you manage to survive the treatments physically and financially?
                    <br >... Will you have to sell your assets, borrow money, or set aside your plans for the future?</h14><br >
                    
                    <!-- Third Part-->
                    
                    <!-- Fourth Part-->
                    
                    <br ><h3 class="header-enlarge">Will your dreams have to stop?</h3>
                    
                    <div class="row-fluid style1">
                    
                    	<div class="span6">
          					<div class="inner-content">
                            	<span class="dropcap style2">53%</span><br ><h11>of medical treatments are still paid out-of-pocket</h11><br >
                           		<h12>(source: National Statistical Coordination Board, 2011)</h12>
                            	<br ><br >
                            	<h11 class="header-justified">
                            	All of your careful savings can be used up by unexpected health issues 
                            	You might also have to make tough decisions like sell off your assets just
                            	to raise enough funds for recovery and sustain your family''s well being.
                            	</h11>
                                <br >
                        	</div>
        				</div>
                        
                        <div class="span6">
          					<div class="inner-content">
                            	<div class="row-fluid pricing-table">
                            
                        		<div class="span3">
          							<div class="inner-content">
                          				<div class="pricing-column">
                            				<div class="pricing-box">
                                				<div><span class="price">AXA</span></div>
                                			</div>
                            			</div>
                        			</div>
        						</div>
                                
                                <div class="span8">
                                	<div class="inner-content">
                        				<div class="pricing-column">
                            				<ul class="feature-list">
                            				<li><h11>Provides a solution to cover major medical emergencies.</h11></li>
                            				<li><h11>Health Max is your secured lifetime health plan, that fits your needs, now and in the future.</h11></li>
                            				</ul>
                                        </div>
                           			</div>
                        		</div>
                                
                            	</div>
                        	</div>
        				</div>

                    </div>
                    
                    <!-- Fourth Part-->
                    
                    <!-- Fifth Part-->
                    
                    <h3 class="header-enlarge">Health Max<br >Maximize your benefits with Health Max</h3><br >
                    
                    <div class="row-fluid">
        				<div class="span6">
          					<div class="inner-content">
            					<div class="toggle" rel="1">
              						<div class="toggle-title"><a href="#"><i class="icon-fixed-plus icon-fixed-plus-nav"></i><h16>Have a secure medical fund when the need arises.</h16></a></div>
              							<div class="toggle-inner"><h11>Receive cash benefits you can use as payment for treatments and recovery in case of major and minor critical illness diagnosis.</h11>
                                    </div>
            					</div>
            					<div class="toggle">
              						<div class="toggle-title"><a href="#"><i class="icon-fixed-plus icon-fixed-plus-nav"></i><h16>Get the broadest range of coverage, including minor critical conditions.</h16></a></div>
              							<div class="toggle-inner"><h11>Health Max is specially designed to cover 18 minor critical conditions excluded by other health plans, such as early form of cancer (carcinoma in situ) and angioplasty, and also provides coverage for 56 major critical conditions, including heart attack, stroke, and cancer. Plus, you can claim twice for minor critical conditions over the period of coverage and get as much as 20% of the original sum insured for each minor critical condition. </h11>
                                        </div>
            						</div>
            					<div class="toggle">
              						<div class="toggle-title"><a href="#"><i class="icon-fixed-plus icon-fixed-plus-nav"></i><h16>Plan according to your budget</h16></a></div>
              							<div class="toggle-inner"><h11>You can choose to pay for 20 years or up to age 65 to suit your available budget.</h11>
                                        </div>
            					</div>
            					<div class="toggle">
              						<div class="toggle-title"><a href="#"><i class="icon-fixed-plus icon-fixed-plus-nav"></i><h16>Have maximum lifetime health coverage</h16></a></div>
              							<div class="toggle-inner"><h11>Health Max guarantees medical coverage until age 100 when most health plans have reached its end. </h11>
                                       	</div>
            					</div>
            					<div class="toggle">
              						<div class="toggle-title"><a href="#"><i class="icon-fixed-plus icon-fixed-plus-nav"></i><h16>Have available funds for medical emergencies as you grow older</h16></a></div>
              							<div class="toggle-inner"><h11>The Advanced Health Fund gives you the option to withdraw a portion of your original sum insured starting age 70.</h11>
                                        </div>
            					</div>
         				 </div>
        			</div>
                    
        				<div class="span6">
          					<div class="inner-content">
                            
                            	<div class="row-fluid pricing-table">
                    
                    	<div class="span15">
          					<div class="pricing-column">
            					<div class="title-box"><h2>Age</h2></div>
            					<ul class="feature-list">
              						<li><h17>Accumulated Amount of Available Fund</h17></li>
              						<li><h17>Sample Computation</h17></li>
            					</ul>
          					</div>
            			</div>
                        
                        <div class="span15">
          					<div class="pricing-column">
            					<div class="title-box"><h2>70</h2></div>
            					<ul class="feature-list">
              						<li><h11 class="header-center">20% <br > of sum insured</h11></li>
              						<li><h11 class="header-center"><br >P200,000</h11></li>
            					</ul>
          					</div>
            			</div> 
                        
                        <div class="span15">
          					<div class="pricing-column">
            					<div class="title-box"><h2>75</h2></div>
            					<ul class="feature-list">
              						<li><h11 class="header-center">35% <br > of sum insured</h11></li>
              						<li><h11 class="header-center"><br >P350,000</h11></li>
            					</ul>
          					</div>
            			</div>  
                        
                        <div class="span15">
          					<div class="pricing-column">
            					<div class="title-box"><h2>80</h2></div>
            					<ul class="feature-list">
              						<li><h11 class="header-center">45% <br > of sum insured</h11></li>
              						<li><h11 class="header-center"><br >P450,000</h11></li>
            					</ul>
          					</div>
            			</div>  
                        
                        <div class="span15">
          					<div class="pricing-column">
            					<div class="title-box"><h2>85</h2></div>
            					<ul class="feature-list">
              						<li><h11 class="header-center">50% <br > of sum insured</h11></li>
              						<li><h11 class="header-center"><br >P500,000</h11></li>
            					</ul>
          					</div>
            			</div>   
                        
                        </div>
                            
            				</div>
        				</div>
                        
                    </div>
                    
      				<br >
                    
                    <!-- Fifth Part-->
                    
                
                <!-- End of content-->
        </div>
    </div>
</section>
<!-- End of Section post -->', NULL, NULL, CAST(0x0000A2B000D2C954 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[StaticPage] OFF
/****** Object:  Table [dbo].[SocialUsers]    Script Date: 01/20/2014 14:54:12 ******/
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
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'101588956426104995507', N'Google', NULL, N'ja salazar', NULL, NULL, N'ja.salazar0817@gmail.com', CAST(0x0000A2B50133442C AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'111104904750126942380', N'Google', NULL, N'Nilo Dizon', NULL, NULL, N'daniloydizon@gmail.com', CAST(0x0000A2B80131E78A AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'112742874060860261292', N'Google', NULL, N'Ernani Bautista', NULL, NULL, N'bautistael23@gmail.com', CAST(0x0000A2B4002EB7A5 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'116322297195028393497', N'Google', NULL, N'Xtina Agilera', NULL, NULL, N'xtinayagilera@gmail.com', CAST(0x0000A2B6016E66C4 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'1695686943', N'Facebook', NULL, N'Concep Dizon', NULL, NULL, NULL, CAST(0x0000A2B6016B12F5 AS DateTime))
INSERT [dbo].[SocialUsers] ([SocialID], [SocialMedia], [UserName], [FullName], [FirstName], [LastName], [Email], [DateCreated]) VALUES (N'556427121', N'Facebook', NULL, N'Jerome Hung', NULL, NULL, NULL, CAST(0x0000A2B4013663A4 AS DateTime))
/****** Object:  Table [dbo].[Quiz]    Script Date: 01/20/2014 14:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[QuizID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
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
INSERT [dbo].[Quiz] ([QuizID], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [Score], [DateCreated], [Status]) VALUES (44, NULL, NULL, NULL, NULL, NULL, CAST(0x00000000 AS Date), N'27', CAST(0x0000A2B8012D1D1E AS DateTime), 1)
INSERT [dbo].[Quiz] ([QuizID], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [Score], [DateCreated], [Status]) VALUES (45, N'Ronald', N'E', N'Eskimo', N'0916-8487980', N'nhaldiii@yahoo.com', CAST(0x91090B00 AS Date), N'18', CAST(0x0000A2B8013062A8 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
/****** Object:  Table [dbo].[Mushroom]    Script Date: 01/20/2014 14:53:46 ******/
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
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (2, N'TAKE THE OFFBEAT DEATH QUIZ', N'<h3>TAKE THE OFFBEAT<br />
<h7>DEATH QUIZ</h7></h3>

<p><img src="/UserFiles/images/featured-img-quiz.jpg" /></p>

<p><h8>TAKE THE HEALTH QUIZ</h8></p>

<p><a href="/Quiz"><img border="0" class="img-center2" height="55" src="/UserFiles/images/btn-takethequiz.png" width="250" /></a></p>
', CAST(0x0000A2AA014CA5D0 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (4, N'HEALTH FACTS & FIGURES', N'<h3>HEALTH FACTS &amp;<br />
<h7>FIGURES</h7></h3>
<p><img src="/UserFiles/images/stats.jpg" /></p>
<p><h8>Stats on the Big C</h8><br />
In 2008, about 12.7 million new cancer cases were diagnosed worldwide and the number is expected to go up to 21 million by 2030. This rise in the number of occurrence can be attributed to the increasing and aging global population.<a href="HealthFactsFigures/11"> Read more</a></p>
', CAST(0x0000A2AA014F8DF4 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (5, N'AXA ION BANNER', N'<p><a href="/RegFailProofing"><input border="0" class="btn-wanttoknow" name="submit" src="/UserFiles/images/btn-wanttoknow.png" type="image" value="Submit" /> </a><a href="/Quiz"><input border="0" class="btn-takethequiz" name="submit" src="/UserFiles/images/btn-takethequiz.png" type="image" value="Submit" /></a></p>
', CAST(0x0000A2AA014FB248 AS DateTime), 1)
INSERT [dbo].[Mushroom] ([MushroomID], [Title], [Body], [DateCreated], [Status]) VALUES (6, N'Quiz', N'<p><img class="centeredImage" src="/UserFiles/images/quiz1-img.png" /></p>
', CAST(0x0000A2B5007651AF AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mushroom] OFF
/****** Object:  Table [dbo].[Location]    Script Date: 01/20/2014 14:53:35 ******/
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
/****** Object:  Table [dbo].[FailProofing]    Script Date: 01/20/2014 14:53:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FailProofing](
	[FailID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[MiddleName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
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
SET IDENTITY_INSERT [dbo].[FailProofing] ON
INSERT [dbo].[FailProofing] ([FailID], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [DateCreated], [Status]) VALUES (1, N'King', N'L.', N'Bautista', N'0919-3856142', N'king@yahoo.com', CAST(0xB5380B00 AS Date), CAST(0x0000A2B50079718F AS DateTime), 1)
INSERT [dbo].[FailProofing] ([FailID], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [DateCreated], [Status]) VALUES (2, N'Danilo', N'L', N'Dizon Sr.', N'0918-2312312', N'danilosr@gmail.com', CAST(0x1F0D0B00 AS Date), CAST(0x0000A2B601589EA7 AS DateTime), 1)
INSERT [dbo].[FailProofing] ([FailID], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [DateCreated], [Status]) VALUES (3, N'Danilo', N'L', N'Dizon', N'0917-7871238', N'daniloydizon@abs.com', CAST(0x3E1E0B00 AS Date), CAST(0x0000A2B8007B8E5C AS DateTime), 1)
INSERT [dbo].[FailProofing] ([FailID], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [DateCreated], [Status]) VALUES (4, N'Leslie', N'P', N'Kurdi', N'0918-3712987', N'lessfortune@gmail.com', CAST(0x80360B00 AS Date), CAST(0x0000A2B80080805A AS DateTime), 1)
INSERT [dbo].[FailProofing] ([FailID], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [DateCreated], [Status]) VALUES (5, N'Desiree', N'V', N'Estimo', N'0922-1477447', N'desiii21@gmail.com', CAST(0x1E170B00 AS Date), CAST(0x0000A2B801311BB1 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[FailProofing] OFF
/****** Object:  Table [dbo].[EventsRegistered]    Script Date: 01/20/2014 14:53:14 ******/
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
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (38, 0, CAST(0x1E380B00 AS Date), NULL, NULL, NULL, NULL, NULL, CAST(0x00000000 AS Date), NULL, CAST(0x0000A2B20157453E AS DateTime), 1, NULL)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (41, 0, CAST(0x0F380B00 AS Date), NULL, NULL, NULL, NULL, NULL, CAST(0x00000000 AS Date), NULL, CAST(0x0000A2B201784E0B AS DateTime), 1, NULL)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (43, 0, CAST(0x1C380B00 AS Date), NULL, NULL, NULL, NULL, NULL, CAST(0x00000000 AS Date), NULL, CAST(0x0000A2B3013429EE AS DateTime), 1, NULL)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (56, 2, CAST(0x14380B00 AS Date), N'Danilo', N'L', N'Dizon Jr.', N'0917-8882222', N'daniloydizon@gmail.com', CAST(0xB20B0B00 AS Date), 1, CAST(0x0000A2B6014CD5DC AS DateTime), 1, 1)
INSERT [dbo].[EventsRegistered] ([RegEventID], [LocationID], [EventDate], [FirstName], [MiddleName], [LastName], [ContactNumber], [Email], [BirthDate], [CardHolder], [DateCreated], [Status], [Terms]) VALUES (57, 2, CAST(0x14380B00 AS Date), N'Shay', N'D', N'Takeuchi', N'0922-8890123', N'shat.takeuchi@gmail.com', CAST(0x60120B00 AS Date), 0, CAST(0x0000A2B6014D2910 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[EventsRegistered] OFF
/****** Object:  Table [dbo].[Comments]    Script Date: 01/20/2014 14:53:03 ******/
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
SET IDENTITY_INSERT [dbo].[Comments] ON
INSERT [dbo].[Comments] ([CommentID], [StoryID], [Name], [Email], [Website], [Comments], [DateCreated], [Status]) VALUES (7, 23, N'Concep Dizon', NULL, NULL, N'Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.', CAST(0x0000A2B60171F30E AS DateTime), 1)
INSERT [dbo].[Comments] ([CommentID], [StoryID], [Name], [Email], [Website], [Comments], [DateCreated], [Status]) VALUES (8, 23, N'Concep Dizon', NULL, NULL, N'Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.

Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.', CAST(0x0000A2B60172B137 AS DateTime), 1)
INSERT [dbo].[Comments] ([CommentID], [StoryID], [Name], [Email], [Website], [Comments], [DateCreated], [Status]) VALUES (9, 22, N'Concep Dizon', NULL, NULL, N'Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.', CAST(0x0000A2B601765540 AS DateTime), 1)
INSERT [dbo].[Comments] ([CommentID], [StoryID], [Name], [Email], [Website], [Comments], [DateCreated], [Status]) VALUES (10, 23, N'Ernani Bautista', NULL, NULL, N'admin test', CAST(0x0000A2B70055DFEC AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Comments] OFF
/****** Object:  Table [dbo].[Banner]    Script Date: 01/20/2014 14:52:50 ******/
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
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (3, N'Home', N'0daf0992-title-why-focus-on-health.jpg', N'WHY FOCUS<br/>ON HEALTH?', N'READ MORE', N'http://omgph.net/FailProofYourHealth/7', CAST(0x0000A2AA018020B8 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (4, N'Fail Proof your Health', N'70d1e81f-title-failproof-health.jpg', NULL, NULL, NULL, CAST(0x0000A2AA018530D0 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (5, N'What is Fail Proof', N'293be0c4-title-what-is-failproof-header.jpg', NULL, NULL, NULL, CAST(0x0000A2AA01855074 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (6, N'Stories', N'43143c33-title-share-story.jpg', NULL, NULL, NULL, CAST(0x0000A2AA01856A3C AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (10, N'Home', N'b46f8ab4-title-slider-what-is-fail-proof.jpg', N'WHAT IS <br/>FAILPROOF?', N'READ MORE', N'http://omgph.net/WhatIsFailProof/3', CAST(0x0000A2AD00B05CD4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (12, N'Footer', N'7f165dfd-homebanner-ad_01.png', NULL, NULL, NULL, CAST(0x0000A2AF0017DAA4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (13, N'Home', N'9d7b778a-title-life-is-beautiful.jpg', N'Life is <br \> BEAUTIFUL', N'READ MORE', N'http://omgph.net/Story/22', CAST(0x0000A2B101691DB4 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (14, N'Home', N'439f91db-title-stats-on-big-c.jpg', N'STATS ON THE <br \> BIG C', N'READ MORE', N'http://omgph.net/Story/18', CAST(0x0000A2B1016C5EE8 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (17, N'Quiz', N'9ddb5bc8-quiz.jpeg', NULL, NULL, NULL, CAST(0x0000A2B4003618C8 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (18, N'Event', N'e1bab045-title-join-a-pocket-event.jpg', NULL, NULL, NULL, CAST(0x0000A2B400363765 AS DateTime), 1)
INSERT [dbo].[Banner] ([BannerID], [Position], [Image], [Label], [Button], [Link], [DateCreated], [Status]) VALUES (19, N'Home', N'f05af9bb-title-quiz.jpg', N'OFFBEAT DEATH<br>QUIZ', N'TAKE THE QUIZ', N'http://omgph.net/Quiz', CAST(0x0000A2B40042C1AD AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Banner] OFF
