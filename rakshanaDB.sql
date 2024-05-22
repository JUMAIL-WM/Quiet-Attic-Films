USE [Rakshana]
GO
/****** Object:  Table [dbo].[Client_Table]    Script Date: 10/11/2023 9:45:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client_Table](
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Date_Of_Birth] [datetime] NULL,
	[Age] [nchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Contact_Number] [nchar](10) NULL,
	[Client_ID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Client_Table] PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location_Table]    Script Date: 10/11/2023 9:45:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location_Table](
	[Location_ID] [nchar](10) NOT NULL,
	[Location_Name] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Location_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Location_Table] PRIMARY KEY CLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login_Table]    Script Date: 10/11/2023 9:45:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Table](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login_Table] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment_Table]    Script Date: 10/11/2023 9:45:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Table](
	[Payment_ID] [nchar](10) NOT NULL,
	[Payment_Name] [nvarchar](50) NULL,
	[Payment_Date] [date] NULL,
	[Payment_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payment_Table] PRIMARY KEY CLUSTERED 
(
	[Payment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Production_Table]    Script Date: 10/11/2023 9:45:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_Table](
	[Production_ID] [nchar](10) NOT NULL,
	[Production_Date] [date] NULL,
	[Production_Type] [nvarchar](50) NULL,
	[Production_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Production_Table] PRIMARY KEY CLUSTERED 
(
	[Production_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Property_Table]    Script Date: 10/11/2023 9:45:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property_Table](
	[Property_ID] [nchar](10) NOT NULL,
	[Property_Name] [nvarchar](50) NULL,
	[Property_Type] [nchar](10) NULL,
 CONSTRAINT [PK_Property_Table] PRIMARY KEY CLUSTERED 
(
	[Property_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff_Table]    Script Date: 10/11/2023 9:45:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Table](
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Date_Of_Birth] [date] NULL,
	[Age] [nchar](10) NULL,
	[Contact_Number] [nchar](10) NULL,
	[Staff_ID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Staff_Table] PRIMARY KEY CLUSTERED 
(
	[Staff_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Client_Table] ([First_Name], [Last_Name], [Date_Of_Birth], [Age], [Address], [Email], [Contact_Number], [Client_ID]) VALUES (N'Fathima', N'Rakshana', CAST(N'2001-06-28 00:00:00.000' AS DateTime), N'22        ', N'Colombo', N'rakshana@gmail.com', N'0760527243', N'001       ')
INSERT [dbo].[Client_Table] ([First_Name], [Last_Name], [Date_Of_Birth], [Age], [Address], [Email], [Contact_Number], [Client_ID]) VALUES (N'Mohammed', N'Jumail', CAST(N'2001-07-30 00:00:00.000' AS DateTime), N'22        ', N'Ninthavur', N'jumailwm@gmail.com', N'0760527243', N'002       ')
INSERT [dbo].[Location_Table] ([Location_ID], [Location_Name], [Date], [Location_Type]) VALUES (N'001       ', N'Ninthavur', CAST(N'2023-08-29' AS Date), N'None')
INSERT [dbo].[Location_Table] ([Location_ID], [Location_Name], [Date], [Location_Type]) VALUES (N'002       ', N'Colombo', CAST(N'2023-08-29' AS Date), N'None')
INSERT [dbo].[Location_Table] ([Location_ID], [Location_Name], [Date], [Location_Type]) VALUES (N'003       ', N'Kandy', CAST(N'2023-08-29' AS Date), N'None')
INSERT [dbo].[Login_Table] ([UserName], [Password]) VALUES (N'Rakshana', N'1234')
INSERT [dbo].[Payment_Table] ([Payment_ID], [Payment_Name], [Payment_Date], [Payment_Type]) VALUES (N'001       ', N'Jumal', CAST(N'2023-08-29' AS Date), N'Cash')
INSERT [dbo].[Payment_Table] ([Payment_ID], [Payment_Name], [Payment_Date], [Payment_Type]) VALUES (N'002       ', N'Rakshana', CAST(N'2023-08-29' AS Date), N'Check')
INSERT [dbo].[Production_Table] ([Production_ID], [Production_Date], [Production_Type], [Production_Name]) VALUES (N'001       ', CAST(N'2023-08-29' AS Date), N'Delivery', N'Ticket')
INSERT [dbo].[Production_Table] ([Production_ID], [Production_Date], [Production_Type], [Production_Name]) VALUES (N'002       ', CAST(N'2023-08-29' AS Date), N'Delivery', N'Movie')
INSERT [dbo].[Property_Table] ([Property_ID], [Property_Name], [Property_Type]) VALUES (N'001       ', N'Rakshana', N'Veeran    ')
INSERT [dbo].[Property_Table] ([Property_ID], [Property_Name], [Property_Type]) VALUES (N'002       ', N'Jumail', N'Jailar    ')
INSERT [dbo].[Staff_Table] ([First_Name], [Last_Name], [Date_Of_Birth], [Age], [Contact_Number], [Staff_ID]) VALUES (N'Mohammed', N'Jumail', CAST(N'2001-07-30' AS Date), N'22        ', N'0760527243', N'001       ')
INSERT [dbo].[Staff_Table] ([First_Name], [Last_Name], [Date_Of_Birth], [Age], [Contact_Number], [Staff_ID]) VALUES (N'Fathima', N'Rakshana', CAST(N'2001-07-30' AS Date), N'22        ', N'0760527243', N'002       ')
