
/****** Object:  Table [dbo].[employees]    Script Date: 11/22/2024 10:16:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [varchar](max) NULL,
	[full_name] [varchar](max) NULL,
	[gender] [varchar](max) NULL,
	[contact_number] [varchar](max) NULL,
	[position] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[salary] [int] NULL,
	[insert_date] [date] NULL,
	[update_date] [date] NULL,
	[delete_date] [date] NULL,
	[status] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/22/2024 10:16:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[date_register] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[employees] ON 
GO
INSERT [dbo].[employees] ([id], [employee_id], [full_name], [gender], [contact_number], [position], [image], [salary], [insert_date], [update_date], [delete_date], [status]) VALUES (10, N'ID-0568', N'KONHA', N'Male', N'0987979', N'Business Management', N'C:\Users\lloyd\Desktop\EMS\EMS\EMS\Directory\ID-0568.jpg', 1200, CAST(N'2024-11-22' AS Date), CAST(N'2024-11-22' AS Date), NULL, N'Active')
GO
INSERT [dbo].[employees] ([id], [employee_id], [full_name], [gender], [contact_number], [position], [image], [salary], [insert_date], [update_date], [delete_date], [status]) VALUES (11, N'ID-0988', N'TOM', N'Male', N'09609086', N'Front-End Developer', N'C:\Users\lloyd\Desktop\EMS\EMS\EMS\Directory\ID-0988.jpg', 0, CAST(N'2024-11-22' AS Date), NULL, NULL, N'Active')
GO
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([id], [username], [password], [date_register]) VALUES (10, N'RAK', N'123', CAST(N'2024-11-22' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  StoredProcedure [dbo].[Pro_SelectAllemployees]    Script Date: 11/22/2024 10:16:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Pro_SelectAllemployees]

as

SELECT [id]
      ,[employee_id]
      ,[full_name]
      ,[gender]
      ,[contact_number]
      ,[position]
      ,[image]
      ,[salary]
      ,[insert_date]
      ,[update_date]
      ,[delete_date]
      ,[status]
  FROM [dbo].[employees]

