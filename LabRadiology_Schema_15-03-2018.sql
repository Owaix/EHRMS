USE [LabRadiology]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/15/2018 6:40:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Auth]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auth](
	[authID] [int] IDENTITY(1,1) NOT NULL,
	[roleID] [int] NULL,
	[pageID] [int] NULL,
 CONSTRAINT [PK_Auth] PRIMARY KEY CLUSTERED 
(
	[authID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[commentId] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[labDeptID] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[commentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DBConfig]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBConfig](
	[dbConfigID] [int] IDENTITY(1,1) NOT NULL,
	[allowNull] [bit] NULL,
	[pageNumber] [int] NULL,
	[pageSize] [int] NULL,
 CONSTRAINT [PK_DBConfig] PRIMARY KEY CLUSTERED 
(
	[dbConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 3/15/2018 6:40:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[docID] [int] IDENTITY(1,1) NOT NULL,
	[docCode] [varchar](10) NULL,
	[docName] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[docID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FilmSize]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmSize](
	[filmId] [int] IDENTITY(1,1) NOT NULL,
	[Size] [varchar](20) NULL,
	[discp] [varchar](50) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](20) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](20) NULL,
	[modDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[filmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gel]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoOfGel] [int] NOT NULL,
	[Discp] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[crtDate] [datetime] NULL,
	[crtBy] [varchar](20) NULL,
	[modDate] [datetime] NULL,
	[modBy] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LabDepartment]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabDepartment](
	[labDeptID] [int] IDENTITY(1,1) NOT NULL,
	[labDeptCode] [varchar](10) NULL,
	[labDeptName] [varchar](50) NULL,
	[labDeptDesc] [varchar](100) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
 CONSTRAINT [PK_LabDepartment] PRIMARY KEY CLUSTERED 
(
	[labDeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LabReports]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabReports](
	[reportID] [int] IDENTITY(1,1) NOT NULL,
	[labDeptID] [int] NULL,
	[reportName] [varchar](50) NULL,
	[reportDesc] [varchar](5000) NULL,
	[charges] [numeric](8, 2) NULL,
	[ETA] [int] NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[orderNo] [int] NULL,
	[isPrintOnNextPage] [bit] NULL,
	[isHidden] [bit] NULL,
	[TestCategoryID] [int] NULL,
 CONSTRAINT [PK_LabReports] PRIMARY KEY CLUSTERED 
(
	[reportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LabTests]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabTests](
	[testID] [int] IDENTITY(1,1) NOT NULL,
	[labDeptID] [int] NULL,
	[testCode] [varchar](10) NULL,
	[testName] [varchar](50) NULL,
	[testUnit] [varchar](50) NULL,
	[normalRange] [varchar](1000) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[heading] [varchar](50) NULL,
	[shortName] [varchar](50) NULL,
	[orderNo] [int] NULL,
	[filmId] [int] NULL,
	[NoOfItems] [int] NULL,
 CONSTRAINT [PK_LabTests] PRIMARY KEY CLUSTERED 
(
	[testID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoginDetails]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginDetails](
	[loginID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[logTime] [datetime] NULL,
	[logOut] [datetime] NULL,
	[nightShift] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[loginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[logID] [int] IDENTITY(1,1) NOT NULL,
	[logTypeID] [int] NULL,
	[logDetails] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[relTable] [varchar](50) NULL,
	[relID] [int] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[logID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogTypes]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogTypes](
	[logTypeID] [int] IDENTITY(1,1) NOT NULL,
	[logType] [varchar](50) NULL,
	[descr] [varchar](250) NULL,
	[modifier] [varchar](50) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
 CONSTRAINT [PK_LogTypes] PRIMARY KEY CLUSTERED 
(
	[logTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pages]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[pageID] [int] IDENTITY(1,1) NOT NULL,
	[pageName] [varchar](50) NULL,
	[pagePath] [varchar](50) NULL,
	[descr] [varchar](50) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[pageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientDetails]    Script Date: 3/15/2018 6:40:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientDetails](
	[pdID] [int] IDENTITY(1,1) NOT NULL,
	[patientID] [int] NULL,
	[fatherName] [varchar](50) NULL,
	[gender] [varchar](1) NULL,
	[cell] [varchar](15) NULL,
	[comments] [varchar](500) NULL,
	[dob] [datetime] NULL,
	[childrens] [int] NULL,
	[cellPhone] [varchar](50) NULL,
	[address] [varchar](500) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](100) NULL,
	[zip] [varchar](100) NULL,
	[country] [varchar](100) NULL,
	[cnic] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[isHiv] [bit] NULL,
	[isHepatitis_C] [bit] NULL,
	[isHepatitis_B] [bit] NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[patAge] [varchar](50) NULL,
	[ageType] [varchar](50) NULL,
 CONSTRAINT [PK_PatientDetails] PRIMARY KEY CLUSTERED 
(
	[pdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientReportDetails]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientReportDetails](
	[PRDID] [int] IDENTITY(1,1) NOT NULL,
	[patientReportID] [int] NULL,
	[testID] [int] NULL,
	[testResult] [varchar](50) NULL,
	[comments] [varchar](500) NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[bacteria] [varchar](50) NULL,
	[verifiyBy] [varchar](50) NULL,
	[test] [varchar](50) NULL,
 CONSTRAINT [PK_PatientReportDetails] PRIMARY KEY CLUSTERED 
(
	[PRDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PatientReports]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientReports](
	[patientReportID] [int] IDENTITY(1,1) NOT NULL,
	[patientID] [int] NULL,
	[reportID] [int] NULL,
	[docID] [int] NULL,
	[XraySerialNo] [varchar](50) NULL,
	[discountRate] [int] NULL,
	[discountSum] [numeric](8, 2) NULL,
	[totalAmount] [numeric](8, 2) NULL,
	[rcvdAmount] [numeric](8, 2) NULL,
	[balAmount] [numeric](8, 2) NULL,
	[labNo] [varchar](50) NULL,
	[ward] [varchar](50) NULL,
	[bed] [varchar](50) NULL,
	[recptNo] [varchar](50) NULL,
	[refBy] [varchar](50) NULL,
	[comments] [varchar](100) NULL,
	[reportingDate] [datetime] NULL,
	[deliveryDate] [datetime] NULL,
	[sampleAttached] [bit] NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[opd8] [varchar](50) NULL,
	[deptCode] [int] NULL,
	[repName] [varchar](50) NULL,
	[recieveNo] [varchar](50) NULL,
	[isDestroy] [bit] NULL,
	[isMedicular] [bit] NULL,
	[labNoRef] [varchar](50) NULL,
	[descr] [varchar](250) NULL,
 CONSTRAINT [PK_PatientReports] PRIMARY KEY CLUSTERED 
(
	[patientReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patients]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[patientID] [int] IDENTITY(1,1) NOT NULL,
	[patientCode] [varchar](10) NULL,
	[patientName] [varchar](50) NULL,
	[gender] [varchar](1) NULL,
	[cell] [varchar](15) NULL,
	[comments] [varchar](100) NULL,
	[dob] [datetime] NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[patAge] [varchar](50) NULL,
	[ageType] [varchar](50) NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[patientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReportTests]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportTests](
	[reportTestID] [int] IDENTITY(1,1) NOT NULL,
	[reportID] [int] NULL,
	[testID] [int] NULL,
	[active] [bit] NULL,
	[ordinal] [int] NULL,
 CONSTRAINT [PK_ReportTests] PRIMARY KEY CLUSTERED 
(
	[reportTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](50) NULL,
	[roleDesc] [varchar](100) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shift]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[shftId] [int] IDENTITY(1,1) NOT NULL,
	[shifts] [varchar](20) NULL,
	[dtFrom] [datetime] NULL,
	[dtTo] [datetime] NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](20) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](20) NULL,
	[modDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[shftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestCategory]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCategory](
	[testcategoryID] [int] IDENTITY(1,1) NOT NULL,
	[testcategoryName] [varchar](50) NULL,
	[Discription] [varchar](500) NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[testcategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestFilms]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestFilms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[filmId] [int] NULL,
	[NoOfItems] [int] NULL,
	[testID] [int] NULL,
	[reportID] [int] NULL,
	[labDeptID] [int] NULL,
	[IsActive] [bit] NULL,
	[crtBy] [int] NULL,
	[crtDate] [datetime] NULL,
	[modby] [int] NULL,
	[modDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLog](
	[logID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[logTime] [datetime] NULL,
	[logOut] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[logID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/15/2018 6:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[roleID] [int] NULL,
	[categoryID] [int] NULL,
	[shftId] [int] NULL,
	[labdeptID] [int] NULL,
	[staffName] [varchar](50) NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](15) NULL,
	[active] [bit] NULL,
	[crtBy] [varchar](50) NULL,
	[crtDate] [datetime] NULL,
	[modBy] [varchar](50) NULL,
	[modDate] [datetime] NULL,
	[isNight] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[ActiveReportTest_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActiveReportTest_Select]
(
	@reportID int
)
AS
BEGIN


SELECT
	ISNULL(a.[reportTestID], 0) AS [reportTestID]
	,ISNULL(a.[reportID], 0) AS [reportID]
	,ISNULL(a.[testID], 0) AS [testID]
	,ISNULL(a.[active], 1) AS [active]
	--,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
	,ISNULL(r.reportName, '') AS [reportName]
	,ISNULL(t.testName, '') AS [testName]
	,ISNULL(t.testUnit, '') AS [testUnit]
	,ISNULL(t.normalRange, '') AS [normalRange]
	,ISNULL(t.heading, '') AS [heading]
FROM
	[ReportTests] AS a
	INNER JOIN LabReports AS r ON a.reportID = r.reportID
	INNER JOIN LabTests AS t ON a.testID = t.testID
WHERE
	--(0 = @reportTestID OR a.[reportTestID] LIKE @reportTestID)
	(0 = @reportID OR a.[reportID] LIKE @reportID)
	--AND (0 = @testID OR a.[testID] LIKE @testID)
	AND (ISNULL(a.[active],1) = 1)
	AND (ISNULL(t.[active],1) = 1)
END

RETURN 0




GO
/****** Object:  StoredProcedure [dbo].[AdvanceSearch_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AdvanceSearch_Select]
(
	@patientID int,@reportID int,@fromDate datetime ,@toDate datetime , @ward varchar(50), @bed varchar(50)
)
AS
BEGIN

SELECT

	ISNULL(a.[patientReportID], 0) AS [patientReportID]
	,ISNULL(a.[labNo], 0) AS [labNo]
	,ISNULL(a.[recptNo], '') AS [recptNo]
	,ISNULL(p.patientName, '') AS [patientName]
	,ISNULL(a.[ward], '') AS [ward]
	,ISNULL(a.[bed], '') AS [bed]
	,ISNULL(d.docName, '') AS [docName]
	,ISNULL(a.[totalAmount] ,0) AS [totalAmount]
	,ISNULL(a.[discountRate], 0) AS [discountRate]
	,ISNULL(r.reportName, '') AS [reportName]
	,ISNULL(a.[reportingDate] ,'1/1/1900') AS [crtDate]	
	
FROM
	[PatientReports] AS a
	INNER JOIN Patients AS p ON a.patientID = p.patientID
	INNER JOIN LabReports AS r ON a.reportID = r.reportID
	LEFT OUTER JOIN Doctors As d ON a.docID = d.docID
WHERE
		(0 = @patientID OR a.[patientID] = @patientID)
	AND (0 = @reportID OR a.[reportID] = @reportID)
	AND ('' = @ward OR a.[ward] LIKE @ward)
	AND ('' = @bed OR a.[bed] LIKE @bed)
	AND (('' = @fromDate AND ''=@toDate) OR (a.[reportingDate] >= @fromDate AND a.[reportingDate] <= @toDate))



END





GO
/****** Object:  StoredProcedure [dbo].[Auth_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[Auth_Delete]
(
	@authID int
)
AS
BEGIN
DELETE FROM 
	Auth
WHERE
	authID = @authID
END



GO
/****** Object:  StoredProcedure [dbo].[Auth_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Auth_Insert]
(
	@roleID int, @pageID int
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @roleID = 0 BEGIN SET @roleID = NULL END;
IF @pageID = 0 BEGIN SET @pageID = NULL END;

END;

INSERT INTO [Auth] (
	[roleID], [pageID]
) VALUES (
	@roleID, @pageID
)

SET @ReturnValue = (select IDENT_CURRENT('Auth'))
Return @ReturnValue
END



GO
/****** Object:  StoredProcedure [dbo].[Auth_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Auth_Select]
(
	@authID int, @roleID int, @pageID int
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Auth];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[authID], 0) AS [authID]
	,ISNULL(a.[roleID], 0) AS [roleID]
	,ISNULL(a.[pageID], 0) AS [pageID]
	,ISNULL(p.pageName,'') AS [pageName]
	,ISNULL(p.pagePath,'') AS [pagePath]
	,ISNULL(p.descr,'') AS [desr]
	,ISNULL(r.roleName,'') AS [roleName]
	,ISNULL(p.active,1) AS [active]
	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[Auth] AS a
	INNER JOIN Pages AS p ON (a.pageID=p.pageID)
	INNER JOIN Roles AS r oN (a.roleID=r.roleID)
WHERE
	(0 = @authID OR a.[authID] LIKE @authID)
	AND (0 = @roleID OR a.[roleID] LIKE @roleID)
	AND (0 = @pageID OR a.[pageID] LIKE @pageID)
ORDER BY
	a.[authID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END



GO
/****** Object:  StoredProcedure [dbo].[Auth_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Auth_Update]
(
	@authID int, @roleID int, @pageID int
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @roleID = 0 BEGIN SET @roleID = NULL END;
IF @pageID = 0 BEGIN SET @pageID = NULL END;

END;

UPDATE
	[Auth]
SET
	[roleID] = @roleID, [pageID] = @pageID
WHERE
	[authID] = @authID
END



GO
/****** Object:  StoredProcedure [dbo].[BookingSummary_ReportCount]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BookingSummary_ReportCount]
		@reportStartDate DateTime 
, @reportEndDate DateTime ,
@userName nvarchar(50)
AS
	SELECT 
	ISNULL(r.reportName,'') AS 'reportName'
	,COUNT(PR.patientReportID) AS reportCount
	FROM 
	PatientReports PR
	INNER JOIN LabReports r ON PR.reportID = r.reportID
	WHERE
	('All' = @userName OR PR.[crtBy] LIKE @userName)
	AND PR.crtDate BETWEEN @reportStartDate AND @reportEndDate
	
	GROUP BY [reportName]	


RETURN 0




GO
/****** Object:  StoredProcedure [dbo].[BookingSummary_UserTotalAmount]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BookingSummary_UserTotalAmount]
	--@userName varchar(50),
	@reportStartDate DateTime 
, @reportEndDate DateTime 
AS
	SELECT
	pat.[crtBy]
	,SUM(pat.[rcvdAmount])/COUNT(pat.[rcvdAmount]) AS rcvdAmount
	--,PAT.[labNo]

	FROM 
		[PatientReports] AS Pat
	WHERE  
		pat.[crtDate] Between @reportStartDate AND @reportEndDate
	GROUP BY 
		[crtBy],[labNo]

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[comment_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[comment_Delete]
(	
	@commentId int
)	
AS
BEGIN
DELETE FROM 
	Comments
WHERE
	commentId = @commentID
END



GO
/****** Object:  StoredProcedure [dbo].[comment_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[comment_Insert]
(
	@labDeptID int,@comment nvarchar(250),@active bit
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END; 
IF @comment= '' BEGIN SET @comment= NULL END;
IF @active = 1 BEGIN SET @active = NULL END;

END;

INSERT INTO [Comments](
	[labDeptID],[comment],[active]
)
values
(
	@labDeptID,@comment,@active
)

SET @ReturnValue = (select IDENT_CURRENT('Comments'))
Return @ReturnValue
END



GO
/****** Object:  StoredProcedure [dbo].[comment_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[comment_Select]
(
	@commentID int,@labDeptID int,@comment nvarchar(255),@active bit, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [LabReports];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[commentId], 0) AS [commentId]
	,ISNULL(a.[labDeptID] , 0)  AS [labDeptID]
	,ISNULL(a.[comment], '') AS [comment]
	,ISNULL(a.[active], 1) AS [active]

	FROM
	[Comments] As a

	WHERE 
	(0 = @commentID OR a.[commentId] LIKE @commentID)
	AND (0 = @labDeptID OR a.[labDeptID] LIKE @labDeptID)
	AND ('' = @comment OR a.[comment] LIKE @comment)
	AND (1 = @active OR a.[active] LIKE @active)

ORDER BY
	a.[commentId]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END



GO
/****** Object:  StoredProcedure [dbo].[comment_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[comment_Update]
(
	@commentId int,@labDeptID int,@comment nvarchar(255),@active bit
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END; 
IF @comment= '' BEGIN SET @comment= NULL END;
IF @active = 1 BEGIN SET @active = NULL END;

END;

Update [Comments] 
SET 
[labDeptID] = @labDeptID,[comment] =@comment,[active]=@active
WHERE 
[commentId] = @commentID
	
END



GO
/****** Object:  StoredProcedure [dbo].[Doctors_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Doctors_Delete]
(
	@docID int
)
AS
BEGIN
DELETE FROM 
	Doctors
WHERE
	docID = @docID
END







GO
/****** Object:  StoredProcedure [dbo].[Doctors_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Doctors_Insert]
(
	@docCode varchar(10), @docName varchar(50), @designation varchar(50), @department varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @docCode = '' BEGIN SET @docCode = NULL END;
IF @docName = '' BEGIN SET @docName = NULL END;
IF @designation = '' BEGIN SET @designation = NULL END;
IF @department = '' BEGIN SET @department = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

INSERT INTO [Doctors] (
	[docCode], [docName], [designation], [department], [active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@docCode, @docName, @designation, @department, @active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('Doctors'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[Doctors_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Doctors_Select]
(
	@docID int, @docCode varchar(10), @docName varchar(50), @designation varchar(50), @department varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Doctors];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[docID], 0) AS [docID]
	,ISNULL(a.[docCode], '') AS [docCode]
	,ISNULL(a.[docName], '') AS [docName]
	,ISNULL(a.[designation], '') AS [designation]
	,ISNULL(a.[department], '') AS [department]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[Doctors] AS a
WHERE
	(0 = @docID OR a.[docID] LIKE @docID)
	AND ('' = @docCode OR a.[docCode] LIKE @docCode)
	AND ('' = @docName OR a.[docName] LIKE @docName)
	AND ('' = @designation OR a.[designation] LIKE @designation)
	AND ('' = @department OR a.[department] LIKE @department)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[docID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END







GO
/****** Object:  StoredProcedure [dbo].[Doctors_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Doctors_Update]
(
	@docID int, @docCode varchar(10), @docName varchar(50), @designation varchar(50), @department varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @docCode = '' BEGIN SET @docCode = NULL END;
IF @docName = '' BEGIN SET @docName = NULL END;
IF @designation = '' BEGIN SET @designation = NULL END;
IF @department = '' BEGIN SET @department = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;
IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

UPDATE
	[Doctors]
SET
	[docCode] = @docCode, [docName] = @docName, [designation] = @designation, [department] = @department, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[docID] = @docID
END


GO
/****** Object:  StoredProcedure [dbo].[FilmSize_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmSize_Delete]
(
	@filmId int
)
AS
BEGIN
DELETE FROM 
	FilmSize
WHERE
	filmId = @filmId
END

GO
/****** Object:  StoredProcedure [dbo].[FilmSize_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmSize_Insert]
(
	@Size varchar(20), @discp varchar(50), @active bit, @crtBy varchar(20), @crtDate datetime, @modBy varchar(20), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @Size = '' BEGIN SET @Size = NULL END;
IF @discp = '' BEGIN SET @discp = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

INSERT INTO [FilmSize] (
	[Size], [discp], [active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@Size, @discp, @active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('FilmSize'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[FilmSize_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmSize_Select]
(
	@filmId int, @Size varchar(20), @discp varchar(50), @active bit, @crtBy varchar(20), @crtDate datetime, @modBy varchar(20), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [FilmSize];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[filmId], 0) AS [filmId]
	,ISNULL(a.[Size], '') AS [Size]
	,ISNULL(a.[discp], '') AS [discp]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	,CONVERT(decimal(7,2),@PageCount) AS [PageCount]
FROM
	[FilmSize] AS a
WHERE
	(0 = @filmId OR a.[filmId] LIKE @filmId)
	AND ('' = @Size OR a.[Size] LIKE @Size)
	AND ('' = @discp OR a.[discp] LIKE @discp)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[filmId]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[FilmSize_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmSize_Update]
(
	@filmId int, @Size varchar(20), @discp varchar(50), @active bit, @crtBy varchar(20), @crtDate datetime, @modBy varchar(20), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @Size = '' BEGIN SET @Size = NULL END;
IF @discp = '' BEGIN SET @discp = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

UPDATE
	[FilmSize]
SET
	[Size] = @Size, [discp] = @discp, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[filmId] = @filmId
END
GO
/****** Object:  StoredProcedure [dbo].[Gel_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Gel_Delete]
(
	@Id int
)
AS
BEGIN
DELETE FROM 
	Gel
WHERE
	Id = @Id
END


GO
/****** Object:  StoredProcedure [dbo].[Gel_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Gel_Insert]
(
	@NoOfGel int, @Discp varchar(50), @IsActive bit, @crtDate datetime, @crtBy varchar(20), @modDate datetime, @modBy varchar(20)
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @NoOfGel = 0 BEGIN SET @NoOfGel = NULL END;
IF @Discp = '' BEGIN SET @Discp = NULL END;
IF @IsActive = 1 BEGIN SET @IsActive = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;

END;

INSERT INTO [Gel] (
	[NoOfGel], [Discp], [IsActive], [crtDate], [crtBy], [modDate], [modBy]
) VALUES (
	@NoOfGel, @Discp, @IsActive, @crtDate, @crtBy, @modDate, @modBy
)

SET @ReturnValue = (select IDENT_CURRENT('Gel'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[Gel_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Gel_Select]
(
	@Id int, @NoOfGel int, @Discp varchar(50), @IsActive bit, @crtDate datetime, @crtBy varchar(20), @modDate datetime, @modBy varchar(20)
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Gel];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[Id], 0) AS [Id]
	,ISNULL(a.[NoOfGel], 0) AS [NoOfGel]
	,ISNULL(a.[Discp], '') AS [Discp]
	,ISNULL(a.[IsActive], 1) AS [IsActive]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]
	,ISNULL(a.[modBy], '') AS [modBy]

	,CONVERT(decimal(7,2),@PageCount) AS [PageCount]
FROM
	[Gel] AS a
WHERE
	(0 = @Id OR a.[Id] LIKE @Id)
	AND (0 = @NoOfGel OR a.[NoOfGel] LIKE @NoOfGel)
	AND ('' = @Discp OR a.[Discp] LIKE @Discp)
	AND (1 = @IsActive OR a.[IsActive] LIKE @IsActive)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)

ORDER BY
	a.[Id]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END


GO
/****** Object:  StoredProcedure [dbo].[Gel_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Gel_Update]
(
	@Id int, @NoOfGel int, @Discp varchar(50), @IsActive bit, @crtDate datetime, @crtBy varchar(20), @modDate datetime, @modBy varchar(20)
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @NoOfGel = 0 BEGIN SET @NoOfGel = NULL END;
IF @Discp = '' BEGIN SET @Discp = NULL END;
IF @IsActive = 1 BEGIN SET @IsActive = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;

END;

UPDATE
	[Gel]
SET
	[NoOfGel] = @NoOfGel, [Discp] = @Discp, [IsActive] = @IsActive, [crtDate] = @crtDate, [crtBy] = @crtBy, [modDate] = @modDate, [modBy] = @modBy
WHERE
	[Id] = @Id
END


GO
/****** Object:  StoredProcedure [dbo].[Generic_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Generic_Select]
(
	@table nvarchar(250), @cols nvarchar(250), @filters nvarchar(250), @order nvarchar(250)
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Doctors];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

DECLARE @sqlCmd nvarchar(4000);

SET @sqlCmd = N'DECLARE @PageCount int;
SELECT @PageCount = (COUNT(*)) FROM ' + @table + ';

';
SET @sqlCmd = @sqlCmd + N'SELECT
	' + @cols + '
	, CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	' + @table + '
';

IF LEN(@filters) > 0 BEGIN
SET @sqlCmd = @sqlCmd + N'WHERE
	' + @filters + '
';
END;

IF LEN(@order) > 0 BEGIN
SET @sqlCmd = @sqlCmd + N'ORDER BY
	' + @order + '
';
END;
SET @sqlCmd = @sqlCmd + N'OFFSET ' + CONVERT(VARCHAR(10), @PageSize) + N' * (' + CONVERT(VARCHAR(10),@PageNumber) + N' - 1) ROWS
FETCH NEXT ' + CONVERT(VARCHAR(10),@PageSize) + ' ROWS ONLY OPTION (RECOMPILE)';

--SELECT @sqlCmd
EXECUTE sp_executesql @sqlCmd

END







GO
/****** Object:  StoredProcedure [dbo].[GetPatientInformation]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPatientInformation]
	@labNo varchar(30) 

AS BEGIN SET NOCOUNT ON

	Select Distinct
	[p].patientID,
	[p].patientName,
	[p].patAge,
	[P].ageType,
	[p].gender,
	[p].cell,
	ISNULL(P.[dob],'1/1/1900') AS [dob],
	[p].crtDate,
	[p].crtBy,
	[p].modDate,
	[p].modBy,
	[p].active,
	[pr].bed,
	[pr].ward,
	[d].docID,
	[d].docName
	
	from Patients as P
	INNER JOIN PatientReports AS [pr] ON [p].patientID = [pr].patientID
	LEFT JOIN Doctors AS [d] ON [pr].docID = [d].docID
	where [pr].labNo = @labNo
END

GO
/****** Object:  StoredProcedure [dbo].[LabDepartment_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabDepartment_Delete]
(
	@labDeptID int
)
AS
BEGIN
DELETE FROM 
	LabDepartment
WHERE
	labDeptID = @labDeptID
END







GO
/****** Object:  StoredProcedure [dbo].[LabDepartment_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabDepartment_Insert]
(
	@labDeptCode varchar(10), @labDeptName varchar(50), @labDeptDesc varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptCode = '' BEGIN SET @labDeptCode = NULL END;
IF @labDeptName = '' BEGIN SET @labDeptName = NULL END;
IF @labDeptDesc = '' BEGIN SET @labDeptDesc = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;
IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;
INSERT INTO [LabDepartment] (
	[labDeptCode], [labDeptName], [labDeptDesc], [active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@labDeptCode, @labDeptName, @labDeptDesc, @active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('LabDepartment'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[LabDepartment_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabDepartment_Select]
(
	@labDeptID int, @labDeptCode varchar(10), @labDeptName varchar(50), @labDeptDesc varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [LabDepartment];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[labDeptID], 0) AS [labDeptID]
	,ISNULL(a.[labDeptCode], '') AS [labDeptCode]
	,ISNULL(a.[labDeptName], '') AS [labDeptName]
	,ISNULL(a.[labDeptDesc], '') AS [labDeptDesc]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[LabDepartment] AS a
WHERE
	(0 = @labDeptID OR a.[labDeptID] LIKE @labDeptID)
	AND ('' = @labDeptCode OR a.[labDeptCode] LIKE @labDeptCode)
	AND ('' = @labDeptName OR a.[labDeptName] LIKE @labDeptName)
	AND ('' = @labDeptDesc OR a.[labDeptDesc] LIKE @labDeptDesc)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[labDeptID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END



GO
/****** Object:  StoredProcedure [dbo].[LabDepartment_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabDepartment_Update]
(
	@labDeptID int, @labDeptCode varchar(10), @labDeptName varchar(50), @labDeptDesc varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptCode = '' BEGIN SET @labDeptCode = NULL END;
IF @labDeptName = '' BEGIN SET @labDeptName = NULL END;
IF @labDeptDesc = '' BEGIN SET @labDeptDesc = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;
--IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;
UPDATE
	[LabDepartment]
SET
	[labDeptCode] = @labDeptCode, [labDeptName] = @labDeptName, [labDeptDesc] = @labDeptDesc, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[labDeptID] = @labDeptID
END


GO
/****** Object:  StoredProcedure [dbo].[LabReport_Max]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LabReport_Max]
	
AS
BEGIN
	SELECT 
	MAX(rep.orderNo) AS orderNo
	From 
	LabReports AS rep 


RETURN 0
END


GO
/****** Object:  StoredProcedure [dbo].[LabReports_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabReports_Delete]
(
	@reportID int
)
AS
BEGIN
DELETE FROM 
	LabReports
WHERE
	reportID = @reportID
END







GO
/****** Object:  StoredProcedure [dbo].[LabReports_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LabReports_Insert]
(
	@labDeptID int, @reportName varchar(50), @reportDesc varchar(5000), @charges decimal(8,2), @ETA int, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@orderNo int, @isPrintOnNextPage bit,@isHidden bit , @TestCategoryID  int 
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END;
IF @reportName = '' BEGIN SET @reportName = NULL END;
IF @reportDesc = '' BEGIN SET @reportDesc = NULL END;
IF @charges = 0 BEGIN SET @charges = NULL END;
IF @ETA = 0 BEGIN SET @ETA = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @orderNo = 0 BEGIN SET @orderNo = NULL END;
IF @isPrintOnNextPage = 1 BEGIN SET @isPrintOnNextPage = NULL END;
IF @isHidden = 1 BEGIN SET @isHidden = NULL END;
IF @TestCategoryID = 0 BEGIN SET @TestCategoryID = NULL END;

END;
IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;
INSERT INTO [LabReports] (
	[labDeptID], [reportName], [reportDesc], [charges], [ETA], [active], [crtBy], [crtDate], [modBy], [modDate],[orderNo],[isPrintOnNextPage], [isHidden] ,[TestCategoryID]
) VALUES (
	@labDeptID, @reportName, @reportDesc, @charges, @ETA, @active, @crtBy, @crtDate, @modBy, @modDate,@orderNo, @isPrintOnNextPage, @isHidden , @TestCategoryID
)

SET @ReturnValue = (select IDENT_CURRENT('LabReports'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[LabReports_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LabReports_Select]
(
	@reportID int, @labDeptID int, @reportName varchar(50), @reportDesc varchar(5000), @charges decimal(8,2), @ETA int, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@orderNo int, @isPrintOnNextPage bit,@isHidden bit ,@TestCategoryID int
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [LabReports];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[reportID], 0) AS [reportID]
	,ISNULL(a.[labDeptID], 0) AS [labDeptID]
	,ISNULL(a.[reportName], '') AS [reportName]
	,ISNULL(a.[reportDesc], '') AS [reportDesc]
	,ISNULL(a.[charges], 0) AS [charges]
	,ISNULL(a.[ETA], 0) AS [ETA]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]
	,ISNULL(a.[orderNo], 0) AS [orderNo]
	,ISNULL(d.[labDeptName], '') AS [labDeptName]
	,ISNULL(a.[isPrintOnNextPage], 1) AS [isPrintOnNextPage]
	,ISNULL(a.[isHidden], 1) AS [isHidden]
	,ISNULL(a.[TestCategoryID],0) AS [TestCategoryID] 
	,CONVERT(decimal(7,2),@PageCount) AS [PageCount]
FROM
	[LabReports] AS a
	INNER JOIN LabDepartment AS d ON a.[labDeptID] = d.[labDeptID]
WHERE
	(0 = @reportID OR a.[reportID] LIKE @reportID)
	AND (0 = @labDeptID OR a.[labDeptID] LIKE @labDeptID)
	AND ('' = @reportName OR a.[reportName] LIKE @reportName)
	AND ('' = @reportDesc OR a.[reportDesc] LIKE @reportDesc)
	AND (0 = @charges OR a.[charges] LIKE @charges)
	AND (0 = @ETA OR a.[ETA] LIKE @ETA)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)
	AND (0 = @orderNo OR a.[orderNo] LIKE @orderNo)
	AND (1 = @isPrintOnNextPage OR a.[isPrintOnNextPage] LIKE @isPrintOnNextPage)
	AND (1 = @isHidden OR a.[isHidden] LIKE @isHidden)
	AND (0=@TestCategoryID OR a.[TestCategoryID] like @TestCategoryID)
ORDER BY
	a.[reportID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[LabReports_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LabReports_Update]
(
	@reportID int, @labDeptID int, @reportName varchar(50), @reportDesc varchar(5000), @charges decimal(8,2), @ETA int, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@orderNo int, @isPrintOnNextPage bit,@isHidden bit,@TestCategoryID int
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END;
IF @reportName = '' BEGIN SET @reportName = NULL END;
IF @reportDesc = '' BEGIN SET @reportDesc = NULL END;
IF @charges = 0 BEGIN SET @charges = NULL END;
IF @ETA = 0 BEGIN SET @ETA = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @orderNo = 0 BEGIN SET @orderNo = NULL END;
IF @isPrintOnNextPage = 1 BEGIN SET @isPrintOnNextPage = NULL END;
IF @isHidden = 1 BEGIN SET @isHidden = NULL END;
IF @TestCategoryID =0 BEGIN SET @TestCategoryID = NULL END;
END;

IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;
UPDATE
	[LabReports]
SET
	[labDeptID] = @labDeptID, [reportName] = @reportName, [reportDesc] = @reportDesc, [charges] = @charges, [ETA] = @ETA, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate,[orderNo] = @orderNo, [isPrintOnNextPage] = @isPrintOnNextPage, [isHidden] = @isHidden,[TestCategoryID]=@TestCategoryID
WHERE
	[reportID] = @reportID
END
GO
/****** Object:  StoredProcedure [dbo].[LabTests_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabTests_Delete]
(
	@testID int
)
AS
BEGIN
DELETE FROM 
	LabTests
WHERE
	testID = @testID
END







GO
/****** Object:  StoredProcedure [dbo].[LabTests_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabTests_Insert]
(
	@labDeptID int,@testCode varchar(10), @testName varchar(50), @testUnit varchar(50), @normalRange varchar(1000), @heading varchar(50), @shortName varchar(50),@orderNo int ,@active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime ,@filmId int ,@NoOfItems int
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END;
IF @testCode = '' BEGIN SET @testCode = NULL END;
IF @testName = '' BEGIN SET @testName = NULL END;
IF @testUnit = '' BEGIN SET @testUnit = NULL END;
IF @normalRange = '' BEGIN SET @normalRange = NULL END;
IF @heading = '' BEGIN SET @heading = NULL END;
IF @shortName = '' BEGIN SET @shortName = NULL END;
IF @orderNo = 0 BEGIN SET @orderNo = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @filmId = 0 BEGIN SET @filmId = NULL END;
IF @NoOfItems = 0 BEGIN SET @NoOfItems = NULL END;

END;

IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

INSERT INTO [LabTests] (
	[labDeptID], [testCode], [testName], [testUnit], [normalRange], [active], [crtBy], [crtDate], [modBy], [modDate], [heading],[shortName],[orderNo] ,[filmId] , [NoOfItems]
) VALUES (
	@labDeptID,@testCode, @testName, @testUnit, @normalRange, @active, @crtBy, @crtDate, @modBy, @modDate, @heading, @shortName, @orderNo ,@filmId,@NoOfItems
)

SET @ReturnValue = (select IDENT_CURRENT('LabTests'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[LabTests_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabTests_Select]
(
	@testID int, @labDeptID int,@testCode varchar(10), @testName varchar(50), @testUnit varchar(50), @normalRange varchar(1000), @heading varchar(50), @shortName varchar(50), @orderNo int,@active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int ,@filmId int ,@NoOfItems int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [LabTests];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[testID], 0) AS [testID]
	,ISNULL(a.[labDeptID], 0) AS [labDeptID]
	,ISNULL(dept.[labDeptName], '') AS [labDeptName]
	,ISNULL(a.[testCode], '') AS [testCode]
	,ISNULL(a.[testName], '') AS [testName]
	,ISNULL(a.[testUnit], '') AS [testUnit]
	,ISNULL(a.[normalRange], '') AS [normalRange]
	,ISNULL(a.[heading],'') AS [heading]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[shortName], '') AS [shortName]
	,ISNULL(a.[orderNo], 0) AS [orderNo]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]
	,ISNULL(labrep.[reportID], 0) AS [reportID]
	,ISNULL(labrep.[reportName], '') AS [reportName]
	,ISNULL(a.NoOfItems,0) AS [NoOfItems]

	--Properties from other tables
	,ISNULL(fz.filmId,0) AS [filmId]
	,ISNULL(fz.Size,'') AS [Size]



	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[LabTests] AS a INNER JOIN
	[LabDepartment] AS dept ON (a.labDeptID=dept.labDeptID)
	left JOIN [ReportTests] AS rep ON rep.testID = a.testID 
	left JOIN [LabReports] AS labrep ON  rep.reportID = labrep.reportID
	left  JOIN [FilmSize] AS fz ON fz.filmId = a.filmId
	
WHERE
	(0 = @testID OR a.[testID] LIKE @testID)
	AND (0 = @labDeptID OR a.[labDeptID] LIKE @labDeptID)
	AND ('' = @testCode OR a.[testCode] LIKE @testCode)
	AND ('' = @testName OR a.[testName] LIKE @testName)
	AND ('' = @testUnit OR a.[testUnit] LIKE @testUnit)
	AND ('' = @normalRange OR a.[normalRange] LIKE @normalRange)
	AND ('' = @heading OR a.[testUnit] LIKE @heading)
	AND ('' = @shortName OR a.[shortName] LIKE @shortName)
	AND (0 = @orderNo OR a.[orderNo] LIKE @orderNo)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[testID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[LabTests_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LabTests_Update]
(
	@testID int, @labDeptID int, @testCode varchar(10), @testName varchar(50), @testUnit varchar(50), @normalRange varchar(1000), @heading varchar(50) , @shortName varchar(50) , @orderNo int,@active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime ,@filmId int ,@NoOfItems int
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END;
IF @testCode = '' BEGIN SET @testCode = NULL END;
IF @testName = '' BEGIN SET @testName = NULL END;
IF @testUnit = '' BEGIN SET @testUnit = NULL END;
IF @normalRange = '' BEGIN SET @normalRange = NULL END;
IF @heading = '' BEGIN SET @heading = NULL END;
IF @shortName = '' BEGIN SET @shortName = NULL END;
IF @orderNo = 0 BEGIN SET @orderNo = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @filmId = 0 BEGIN SET @filmId = NULL END;
IF @NoOfItems = 0 BEGIN SET @NoOfItems = NULL END;

END;

IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

UPDATE
	[LabTests]
SET
	[labDeptID] = @labDeptID, [testCode] = @testCode, [testName] = @testName, [testUnit] = @testUnit, [normalRange] = @normalRange, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate, [heading] = @heading, [shortName] = @shortName, [orderNo] = @orderNo , [filmId] = @filmId ,[NoOfItems] = @NoOfItems
WHERE
	[testID] = @testID
END
GO
/****** Object:  StoredProcedure [dbo].[LoginDetails_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LoginDetails_Delete]
	(
		@loginID int
	)
AS
BEGIN
DELETE FROM 
	LoginDetails
WHERE
	loginID = @loginID
END





GO
/****** Object:  StoredProcedure [dbo].[LoginDetails_Information]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[LoginDetails_Information]
(
	@userID int 
)

AS
BEGIN	
DECLARE @nightShiftTime DATETIME
SET @nightShiftTime = CONVERT(DATETIME, CONVERT(CHAR(9), CURRENT_TIMESTAMP, 112) + ' 10:00 PM');



DECLARE @currDate DateTime = GetDate();
Declare @status varchar(10) = 'false';
If (@currDate > @nightShiftTime) 
BEGIN
SET @status = 'true';
END

IF NOT EXISTS (
    SELECT * FROM LoginDetails WHERE userID = @userID AND CONVERT(varchar(10),logTime,101) = CONVERT(varchar(10),GETDATE(),101)
)

INSERT INTO LoginDetails(userID,logTime,logOut,nightShift) VALUES (@userID, GETDATE(),CONVERT(varchar(10),'1/1/1900'),@status);

--new editing 13/7/2016
--IF(@nightShiftTime > GETDATE())
--INSERT INTO LoginDetails(userID,logTime,logOut,nightShift) VALUES (@userID, GETDATE(),CONVERT(varchar(10),'1/1/1900'),'false');

--ELSE IF(@nightShiftTime <=GETDATE() )
--INSERT INTO LoginDetails(userID,logTime,logOut,nightShift) VALUES (@userID, GETDATE(),Convert(varchar(10),'1/1/1900'),'true');
 --end editing

RETURN 0
END



GO
/****** Object:  StoredProcedure [dbo].[LoginDetails_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[LoginDetails_Insert]
	 @userID int, @logTime Datetime,@logOut Datetime,@nightShift bit
AS
BEGIN
	
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @userID= '' BEGIN SET @userID = NULL END;
IF @logTime = '1/1/1900' BEGIN SET @logTime = NULL END;
IF @logOut = '1/1/1900' BEGIN SET @logOut= NULL END;
IF @nightShift = 1 BEGIN SET @nightShift = NULL END;

END;

IF @logTime IS NOT NULL BEGIN SET @logTime = GETDATE() END;
IF @logOut IS NOT NULL BEGIN SET @logOut = GETDATE() END;

INSERT INTO [LoginDetails](
[userID],[logTime],[logOut],[nightShift]
) Values(
	@userID,@logTime,@logOut,@nightShift
)

SET @ReturnValue = (select IDENT_CURRENT('LoginDetails'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[LoginDetails_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[LoginDetails_Select]
	@loginID int,@userID int, @logTime Datetime,@logOut Datetime,@nightShift bit, @pageNumber int, @pageSize int
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Doctors];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;
SELECT
	ISNULL(l.[loginID], 0) AS [loginID]
	,ISNULL(l.[userID], '') AS [userID]
	,ISNULL(l.[logTime], '1/1/1900') AS [logTime]
	,ISNULL(l.[logOut], '1/1/1900') AS [logOut]
	,ISNULL(l.[nightShift],1) AS [nightShift]
	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
[LoginDetails] AS l
WHERE
	(0 = @loginID OR l.[loginID] LIKE @loginID)
	AND ('' = @userID OR l.[userID] LIKE @userID)
	AND ('1/1/1900' = @logTime OR l.[logTime] between  @logTime and GETDATE())
	AND ('1/1/1900' = @logOut OR l.[logOut] between  @logOut and GETDATE())
	AND (1 = @nightShift OR l.[nightShift] LIKE @nightShift)
ORDER BY
	l.[loginID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END





GO
/****** Object:  StoredProcedure [dbo].[LoginDetails_SelectInformation]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[LoginDetails_SelectInformation]
	@userID int
	
AS
Begin
	--SELECT 
	--loginDet.[userID],
	--loginDet.logTime
	--From 

	--LoginDetails As loginDet

	--WHERE userID = @userID AND CONVERT(varchar(10),logTime,101) = CONVERT(varchar(10),GETDATE(),101)


	SELECT 
		logs.userID
		,logs.logTime
	FROM
		 LoginDetails As logs
	INNER JOIN (
	SELECT
		userID,max(logTime) AS logTime
	FROM 
		LoginDetails 
	GROUP BY
		userID
	) 
		tm 
	ON 
		logs.userID = @userID AND logs.logTime = tm.logTime AND logs.nightShift='false'

	--SELECT 
	--logs.[userID],
	--MAX(logs.[logTime]),
	--logs.[nightShift]
	--FROM 
	--LoginDetails AS logs
	--WHERE userID = @userID AND CONVERT(varchar(10),logTime,101) = CONVERT(varchar(10),GETDATE(),101)

	--GROUP BY logs.[userID],logs.[nightShift]


RETURN 0
END



GO
/****** Object:  StoredProcedure [dbo].[LoginDetails_SelectInformation_Person]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[LoginDetails_SelectInformation_Person]
	@userID int
AS
	begin

	SELECT 
	logs.[userID],
	MAX(logs.[logTime]) As logTime
	FROM 
	LoginDetails AS logs
	WHERE userID = @userID AND logs.logTime = logs.logTime AND nightShift = 'true'

	GROUP BY logs.[userID],logs.[nightShift]

RETURN 0
end





GO
/****** Object:  StoredProcedure [dbo].[LoginDetails_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[LoginDetails_Update]
	(
		@loginID int, @userID int, @logTime Datetime ,@logOut Datetime,@nightShift bit
	)
AS

BEGIN
DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @userID= '' BEGIN SET @userID = NULL END;
IF @logTime = '1/1/1900' BEGIN SET @logTime = NULL END;
IF @logOut = '1/1/1900' BEGIN SET @logOut = NULL END;
IF @nightShift = 1 BEGIN SET @nightShift= NULL END;
END;

IF @logOut IS NOT NULL BEGIN SET @logOut = GETDATE() END;
UPDATE 
	[LoginDetails]
SET
	[userID] = @userID  , [logTime] = @logTime,[logOut]=@logOut,[nightShift]=@nightShift 
WHERE
	[loginID] = @loginID

END


GO
/****** Object:  StoredProcedure [dbo].[Logs_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Logs_Delete]
(
	@logID int
)
AS
BEGIN
DELETE FROM 
	Logs
WHERE
	logID = @logID
END





GO
/****** Object:  StoredProcedure [dbo].[Logs_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Logs_Insert]
(
	@logTypeID int, @logDetails varchar(50), @IPAddress varchar(50), @relTable varchar(50), @relID int, @crtBy varchar(50), @crtDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @logTypeID = 0 BEGIN SET @logTypeID = NULL END;
IF @logDetails = '' BEGIN SET @logDetails = NULL END;
IF @IPAddress = '' BEGIN SET @IPAddress = NULL END;
IF @relTable = '' BEGIN SET @relTable = NULL END;
IF @relID = 0 BEGIN SET @relID = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;

END;

INSERT INTO [Logs] (
	[logTypeID], [logDetails], [IPAddress], [relTable], [relID], [crtBy], [crtDate]
) VALUES (
	@logTypeID, @logDetails, @IPAddress, @relTable, @relID, @crtBy, @crtDate
)

SET @ReturnValue = (select IDENT_CURRENT('Logs'))
Return @ReturnValue
END





GO
/****** Object:  StoredProcedure [dbo].[Logs_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Logs_Select]
(
	@logID int, @logTypeID int, @logDetails varchar(50), @IPAddress varchar(50), @relTable varchar(50), @relID int, @crtBy varchar(50), @crtDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Logs];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[logID], 0) AS [logID]
	,ISNULL(a.[logTypeID], 0) AS [logTypeID]
	,ISNULL(a.[logDetails], '') AS [logDetails]
	,ISNULL(a.[IPAddress], '') AS [IPAddress]
	,ISNULL(a.[relTable], '') AS [relTable]
	,ISNULL(a.[relID], 0) AS [relID]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]

	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[Logs] AS a
WHERE
	(0 = @logID OR a.[logID] LIKE @logID)
	AND (0 = @logTypeID OR a.[logTypeID] LIKE @logTypeID)
	AND ('' = @logDetails OR a.[logDetails] LIKE @logDetails)
	AND ('' = @IPAddress OR a.[IPAddress] LIKE @IPAddress)
	AND ('' = @relTable OR a.[relTable] LIKE @relTable)
	AND (0 = @relID OR a.[relID] LIKE @relID)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)

ORDER BY
	a.[logID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END





GO
/****** Object:  StoredProcedure [dbo].[Logs_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Logs_Update]
(
	@logID int, @logTypeID int, @logDetails varchar(50), @IPAddress varchar(50), @relTable varchar(50), @relID int, @crtBy varchar(50), @crtDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @logTypeID = 0 BEGIN SET @logTypeID = NULL END;
IF @logDetails = '' BEGIN SET @logDetails = NULL END;
IF @IPAddress = '' BEGIN SET @IPAddress = NULL END;
IF @relTable = '' BEGIN SET @relTable = NULL END;
IF @relID = 0 BEGIN SET @relID = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;

END;

UPDATE
	[Logs]
SET
	[logTypeID] = @logTypeID, [logDetails] = @logDetails, [IPAddress] = @IPAddress, [relTable] = @relTable, [relID] = @relID, [crtBy] = @crtBy, [crtDate] = @crtDate
WHERE
	[logID] = @logID
END





GO
/****** Object:  StoredProcedure [dbo].[LogTypes_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LogTypes_Delete]
(
	@logTypeID int
)
AS
BEGIN
DELETE FROM 
	LogTypes
WHERE
	logTypeID = @logTypeID
END





GO
/****** Object:  StoredProcedure [dbo].[LogTypes_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LogTypes_Insert]
(
	@logType varchar(50), @descr varchar(250), @modifier varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @logType = '' BEGIN SET @logType = NULL END;
IF @descr = '' BEGIN SET @descr = NULL END;
IF @modifier = '' BEGIN SET @modifier = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

INSERT INTO [LogTypes] (
	[logType], [descr], [modifier], [active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@logType, @descr, @modifier, @active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('LogTypes'))
Return @ReturnValue
END





GO
/****** Object:  StoredProcedure [dbo].[LogTypes_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LogTypes_Select]
(
	@logTypeID int, @logType varchar(50), @descr varchar(250), @modifier varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [LogTypes];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[logTypeID], 0) AS [logTypeID]
	,ISNULL(a.[logType], '') AS [logType]
	,ISNULL(a.[descr], '') AS [descr]
	,ISNULL(a.[modifier], '') AS [modifier]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[LogTypes] AS a
WHERE
	(0 = @logTypeID OR a.[logTypeID] LIKE @logTypeID)
	AND ('' = @logType OR a.[logType] LIKE @logType)
	AND ('' = @descr OR a.[descr] LIKE @descr)
	AND ('' = @modifier OR a.[modifier] LIKE @modifier)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[logTypeID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END





GO
/****** Object:  StoredProcedure [dbo].[LogTypes_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LogTypes_Update]
(
	@logTypeID int, @logType varchar(50), @descr varchar(250), @modifier varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @logType = '' BEGIN SET @logType = NULL END;
IF @descr = '' BEGIN SET @descr = NULL END;
IF @modifier = '' BEGIN SET @modifier = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

UPDATE
	[LogTypes]
SET
	[logType] = @logType, [descr] = @descr, [modifier] = @modifier, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[logTypeID] = @logTypeID
END





GO
/****** Object:  StoredProcedure [dbo].[LogUser_InsertUsersTime]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LogUser_InsertUsersTime]
(
	@userID int 
)
AS
BEGIN	

DECLARE @currDate DateTime = GetDate();

INSERT INTO UserLog(userID,logTime,logOut) VALUES (@userID, @currDate,CONVERT(varchar(10),'1/1/1900'));
RETURN 0

END





GO
/****** Object:  StoredProcedure [dbo].[Pages_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Pages_Delete]
(
	@pageID int
)
AS
BEGIN
DELETE FROM 
	Pages
WHERE
	pageID = @pageID
END



GO
/****** Object:  StoredProcedure [dbo].[Pages_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[Pages_Insert]
(
	@pageName varchar(50), @pagePath varchar(50), @descr varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @pageName = '' BEGIN SET @pageName = NULL END;
IF @pagePath = '' BEGIN SET @pagePath = NULL END;
IF @descr = '' BEGIN SET @descr = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

INSERT INTO [Pages] (
	[pageName], [pagePath], [descr], [active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@pageName, @pagePath, @descr, @active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('Pages'))
Return @ReturnValue
END



GO
/****** Object:  StoredProcedure [dbo].[Pages_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[Pages_Select]
(
	@pageID int, @pageName varchar(50), @pagePath varchar(50), @descr varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Pages];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[pageID], 0) AS [pageID]
	,ISNULL(a.[pageName], '') AS [pageName]
	,ISNULL(a.[pagePath], '') AS [pagePath]
	,ISNULL(a.[descr], '') AS [descr]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[Pages] AS a
WHERE
	(0 = @pageID OR a.[pageID] LIKE @pageID)
	AND ('' = @pageName OR a.[pageName] LIKE @pageName)
	AND ('' = @pagePath OR a.[pagePath] LIKE @pagePath)
	AND ('' = @descr OR a.[descr] LIKE @descr)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[pageID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END



GO
/****** Object:  StoredProcedure [dbo].[Pages_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================


CREATE PROCEDURE [dbo].[Pages_Update]
(
	@pageID int, @pageName varchar(50), @pagePath varchar(50), @descr varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @pageName = '' BEGIN SET @pageName = NULL END;
IF @pagePath = '' BEGIN SET @pagePath = NULL END;
IF @descr = '' BEGIN SET @descr = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

UPDATE
	[Pages]
SET
	[pageName] = @pageName, [pagePath] = @pagePath, [descr] = @descr, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[pageID] = @pageID
END



GO
/****** Object:  StoredProcedure [dbo].[PatientDetails_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PatientDetails_Delete]
(
	@pdID int
)
AS
BEGIN
DELETE FROM 
	PatientDetails
WHERE
	pdID = @pdID
END
GO
/****** Object:  StoredProcedure [dbo].[PatientDetails_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientDetails_Insert]
(
	@patientID int, @fatherName varchar(50), @gender varchar(1), @cell varchar(15), @comments varchar(500), @dob datetime, @childrens int, @cellPhone varchar(50), @address varchar(500), @city varchar(100), @state varchar(100), @zip varchar(100), @country varchar(100), @cnic varchar(50), @email varchar(100), @isHiv bit, @isHepatitis_C bit, @isHepatitis_B bit, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime, @patAge varchar(50), @ageType varchar(50)
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientID = 0 BEGIN SET @patientID = NULL END;
IF @fatherName = '' BEGIN SET @fatherName = NULL END;
IF @gender = '' BEGIN SET @gender = NULL END;
IF @cell = '' BEGIN SET @cell = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @dob = '1/1/1900' BEGIN SET @dob = NULL END;
IF @childrens = 0 BEGIN SET @childrens = NULL END;
IF @cellPhone = '' BEGIN SET @cellPhone = NULL END;
IF @address = '' BEGIN SET @address = NULL END;
IF @city = '' BEGIN SET @city = NULL END;
IF @state = '' BEGIN SET @state = NULL END;
IF @zip = '' BEGIN SET @zip = NULL END;
IF @country = '' BEGIN SET @country = NULL END;
IF @cnic = '' BEGIN SET @cnic = NULL END;
IF @email = '' BEGIN SET @email = NULL END;
IF @isHiv = 1 BEGIN SET @isHiv = NULL END;
IF @isHepatitis_C = 1 BEGIN SET @isHepatitis_C = NULL END;
IF @isHepatitis_B = 1 BEGIN SET @isHepatitis_B = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @patAge = '' BEGIN SET @patAge = NULL END;
IF @ageType = '' BEGIN SET @ageType = NULL END;

END;

INSERT INTO [PatientDetails] (
	[patientID], [fatherName], [gender], [cell], [comments], [dob], [childrens], [cellPhone], [address], [city], [state], [zip], [country], [cnic], [email], [isHiv], [isHepatitis_C], [isHepatitis_B], [active], [crtBy], [crtDate], [modBy], [modDate], [patAge], [ageType]
) VALUES (
	@patientID, @fatherName, @gender, @cell, @comments, @dob, @childrens, @cellPhone, @address, @city, @state, @zip, @country, @cnic, @email, @isHiv, @isHepatitis_C, @isHepatitis_B, @active, @crtBy, @crtDate, @modBy, @modDate, @patAge, @ageType
)

SET @ReturnValue = (select IDENT_CURRENT('PatientDetails'))
Return @ReturnValue
END

GO
/****** Object:  StoredProcedure [dbo].[PatientDetails_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientDetails_Select]
(
	@pdID int, @patientID int, @fatherName varchar(50), @gender varchar(1), @cell varchar(15), @comments varchar(500), @dob datetime, @childrens int, @cellPhone varchar(50), @address varchar(500), @city varchar(100), @state varchar(100), @zip varchar(100), @country varchar(100), @cnic varchar(50), @email varchar(100), @isHiv bit, @isHepatitis_C bit, @isHepatitis_B bit, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime, @patAge varchar(50), @ageType varchar(50)
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [PatientDetails];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[pdID], 0) AS [pdID]
	,ISNULL(a.[patientID], 0) AS [patientID]
	,ISNULL(a.[fatherName], '') AS [fatherName]
	,ISNULL(a.[gender], '') AS [gender]
	,ISNULL(a.[cell], '') AS [cell]
	,ISNULL(a.[comments], '') AS [comments]
	,ISNULL(a.[dob], '1/1/1900') AS [dob]
	,ISNULL(a.[childrens], 0) AS [childrens]
	,ISNULL(a.[cellPhone], '') AS [cellPhone]
	,ISNULL(a.[address], '') AS [address]
	,ISNULL(a.[city], '') AS [city]
	,ISNULL(a.[state], '') AS [state]
	,ISNULL(a.[zip], '') AS [zip]
	,ISNULL(a.[country], '') AS [country]
	,ISNULL(a.[cnic], '') AS [cnic]
	,ISNULL(a.[email], '') AS [email]
	,ISNULL(a.[isHiv], 1) AS [isHiv]
	,ISNULL(a.[isHepatitis_C], 1) AS [isHepatitis_C]
	,ISNULL(a.[isHepatitis_B], 1) AS [isHepatitis_B]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]
	,ISNULL(a.[patAge], '') AS [patAge]
	,ISNULL(a.[ageType], '') AS [ageType]
	,ISNULL(p.[patientName], '') AS [patientName]

	,CONVERT(decimal(7,2),@PageCount) AS [PageCount]
FROM
	[PatientDetails] AS a
	INNER JOIN Patients AS P ON p.[patientID] = a.[patientID]
WHERE
	(0 = @pdID OR a.[pdID] LIKE @pdID)
	AND (0 = @patientID OR a.[patientID] LIKE @patientID)
	AND ('' = @fatherName OR a.[fatherName] LIKE @fatherName)
	AND ('' = @gender OR a.[gender] LIKE @gender)
	AND ('' = @cell OR a.[cell] LIKE @cell)
	AND ('' = @comments OR a.[comments] LIKE @comments)
	AND ('1/1/1900' = @dob OR a.[dob] LIKE @dob)
	AND (0 = @childrens OR a.[childrens] LIKE @childrens)
	AND ('' = @cellPhone OR a.[cellPhone] LIKE @cellPhone)
	AND ('' = @address OR a.[address] LIKE @address)
	AND ('' = @city OR a.[city] LIKE @city)
	AND ('' = @state OR a.[state] LIKE @state)
	AND ('' = @zip OR a.[zip] LIKE @zip)
	AND ('' = @country OR a.[country] LIKE @country)
	AND ('' = @cnic OR a.[cnic] LIKE @cnic)
	AND ('' = @email OR a.[email] LIKE @email)
	AND (1 = @isHiv OR a.[isHiv] LIKE @isHiv)
	AND (1 = @isHepatitis_C OR a.[isHepatitis_C] LIKE @isHepatitis_C)
	AND (1 = @isHepatitis_B OR a.[isHepatitis_B] LIKE @isHepatitis_B)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)
	AND ('' = @patAge OR a.[patAge] LIKE @patAge)
	AND ('' = @ageType OR a.[ageType] LIKE @ageType)

ORDER BY
	a.[pdID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[PatientDetails_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientDetails_Update]
(
	@pdID int, @patientID int, @fatherName varchar(50), @gender varchar(1), @cell varchar(15), @comments varchar(500), @dob datetime, @childrens int, @cellPhone varchar(50), @address varchar(500), @city varchar(100), @state varchar(100), @zip varchar(100), @country varchar(100), @cnic varchar(50), @email varchar(100), @isHiv bit, @isHepatitis_C bit, @isHepatitis_B bit, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime, @patAge varchar(50), @ageType varchar(50)
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientID = 0 BEGIN SET @patientID = NULL END;
IF @fatherName = '' BEGIN SET @fatherName = NULL END;
IF @gender = '' BEGIN SET @gender = NULL END;
IF @cell = '' BEGIN SET @cell = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @dob = '1/1/1900' BEGIN SET @dob = NULL END;
IF @childrens = 0 BEGIN SET @childrens = NULL END;
IF @cellPhone = '' BEGIN SET @cellPhone = NULL END;
IF @address = '' BEGIN SET @address = NULL END;
IF @city = '' BEGIN SET @city = NULL END;
IF @state = '' BEGIN SET @state = NULL END;
IF @zip = '' BEGIN SET @zip = NULL END;
IF @country = '' BEGIN SET @country = NULL END;
IF @cnic = '' BEGIN SET @cnic = NULL END;
IF @email = '' BEGIN SET @email = NULL END;
IF @isHiv = 1 BEGIN SET @isHiv = NULL END;
IF @isHepatitis_C = 1 BEGIN SET @isHepatitis_C = NULL END;
IF @isHepatitis_B = 1 BEGIN SET @isHepatitis_B = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @patAge = '' BEGIN SET @patAge = NULL END;
IF @ageType = '' BEGIN SET @ageType = NULL END;

END;

END
GO
/****** Object:  StoredProcedure [dbo].[Patientreport_Select_AllLabNo]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Patientreport_Select_AllLabNo]
	@labDeptID int,
	@startDate Datetime,
	@endDate Datetime
AS
	
SELECT pr.[labno],pat.[patientName],Max(pr.[patientReportID]) AS [patientReportID] from
PatientReports AS pr inner join LabReports lr on pr.reportid=lr.reportid
INNER JOIN Patients pat ON pat.patientID = pr.patientID
where
    lr.labdeptid = @labDeptID
	AND
	pr.crtDate Between  @startDate AND @endDate
GROUP  BY
labNo,
patientName
RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[PatientReport_Select_LabDepartment]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatientReport_Select_LabDepartment]
	@labNo varchar(50)
	
AS
	SELECT 
	MAX(PR.[reportID]) AS reportID,
	rep.[labDeptID],
	dept.[labDeptName],
	pat.[patientName],
	MAx(Pr.[reportingDate]) as reportingDate
	
	From 
	[PatientReports] AS PR
	INNER JOIN [LabReports] AS rep ON rep.[reportID] = PR.[reportID]
	INNER JOIN [LabDepartment] AS dept ON dept.[labDeptID] = rep.[labDeptID]
	INNER JOIN [Patients] As pat ON pat.[patientID] = PR.[patientID]
	Where PR.[labNo] = @labNo --@labNo

	Group By rep.[labDeptID],dept.[labDeptName],pat.[patientName]--,PR.[reportingDate]

RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[PatientReport_select_LabNo_Name]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatientReport_select_LabNo_Name] --'1/1/2017','1/29/2018'
	@crtDate datetime , @endDate datetime
AS
		SELECT 
	PR.[labNo],
	Pat.[patientName],
	PR.[opd8],
	PR.[recieveNo],
	pat.[patientCode]
	--,pat.[locID]
	,MAX(PR.crtDate) As crtDate
	From [PatientReports] AS PR
	INNER JOIN [Patients] Pat ON pat.patientID = Pr.[patientID]
	Where
	PR.[crtDate] >= @crtDate  AND 
	PR.[crtDate] <= @endDate

	GROUP BY PR.[labNo],PR.[opd8],PR.[recieveNo],
	Pat.[patientName],pat.[patientCode]--,pat.[locID]
	Order By PR.[labNo]
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[PatientReport_Select_PatientName]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatientReport_Select_PatientName]
(	
	@labNo varchar(50)
)
AS
	SELECT 
	MAX(Pr.[patientID]),
	p.[patientName],
	p.[dob],
	p.[patAge],
	p.[ageType],
	p.[gender],
	MAX(p.[crtDate]) AS crtDate

	From [PatientReports] AS Pr 
	INNER JOIN [Patients] As p ON p.[patientID] = Pr.[patientID]

	WHERE Pr.[labNo] = @labNo 
	
	Group BY p.[patientName],p.[dob],p.[gender],p.[patAge],p.[ageType]

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[PatientREport_Select_ReportName]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatientREport_Select_ReportName]
(
	@labNo varchar(50), @deptID int
)
AS
BEGIN

SELECT 
	MAX(PR.[reportID]) AS reportID
	, rep.[reportName]
	,rep.labDeptID
From
	[PatientReports] AS PR
	 INNER JOIN LabReports AS rep ON rep.[reportID] = PR.[reportID]
	AND PR.[labNo] = @labNo
	AND rep.labDeptID = @deptID 
	AND PR.[active] IS NULL
GROUP BY
	rep.[reportName],rep.labDeptID,rep.orderNo

	Order By rep.orderNo
END


GO
/****** Object:  StoredProcedure [dbo].[PatientReportDetails_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientReportDetails_Delete]
(
	@PRDID int
)
AS
BEGIN
DELETE FROM 
	PatientReportDetails
WHERE
	PRDID = @PRDID
END







GO
/****** Object:  StoredProcedure [dbo].[PatientReportDetails_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientReportDetails_Insert]
(
	@patientReportID int, @testID int, @testResult varchar(50), @comments varchar(500),@bacteria varchar(50), @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@verifiyBy  varchar(50),@test varchar(50)
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientReportID = 0 BEGIN SET @patientReportID = NULL END;
IF @testID = 0 BEGIN SET @testID = NULL END;
IF @testResult = '' BEGIN SET @testResult = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @bacteria = '' BEGIN SET @bacteria = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @verifiyBy  = '' BEGIN SET @verifiyBy = NULL END;
IF @test  = '' BEGIN SET @test = NULL END;
END;
IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;
INSERT INTO [PatientReportDetails] (
	[patientReportID], [testID], [testResult], [comments],[bacteria], [crtBy], [crtDate], [modBy], [modDate],[verifiyBy],[test]
) VALUES (
	@patientReportID, @testID, @testResult, @comments, @bacteria,@crtBy, @crtDate, @modBy, @modDate, @verifiyBy ,@test
)

SET @ReturnValue = (select IDENT_CURRENT('PatientReportDetails'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[PatientReportDetails_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientReportDetails_Select]
(
	@PRDID int, @patientReportID int, @testID int, @testResult varchar(50), @comments varchar(500),@bacteria varchar(50), @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@verifiyBy  varchar(50),@test varchar(50)
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [PatientReportDetails];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[PRDID], 0) AS [PRDID]
	,ISNULL(a.[patientReportID], 0) AS [patientReportID]
	,ISNULL(a.[testID], 0) AS [testID]
	,ISNULL(a.[testResult], '') AS [testResult]
	,ISNULL(a.[comments], '') AS [comments]
	,ISNULL(a.[bacteria], '') AS [bacteria]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]
	,ISNULL(a.[verifiyBy], '') AS [verifiyBy]
	,ISNULL(a.[test], '') AS [test]
	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[PatientReportDetails] AS a
WHERE
	(0 = @PRDID OR a.[PRDID] LIKE @PRDID)
	AND (0 = @patientReportID OR a.[patientReportID] LIKE @patientReportID)
	AND (0 = @testID OR a.[testID] LIKE @testID)
	AND ('' = @testResult OR a.[testResult] LIKE @testResult)
	AND ('' = @comments OR a.[comments] LIKE @comments)
	AND ('' = @bacteria OR a.[bacteria] LIKE @bacteria)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)
	AND ('' = @verifiyBy  OR a.[verifiyBy] LIKE @verifiyBy )
	AND ('' = @test  OR a.[test] LIKE @test )
ORDER BY
	a.[PRDID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END


GO
/****** Object:  StoredProcedure [dbo].[PatientReportDetails_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientReportDetails_Update]
(
	@PRDID int, @patientReportID int, @testID int, @testResult varchar(50), @comments varchar(500),@bacteria varchar(50), @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@verifiyBy varchar(50),@test varchar(50)
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientReportID = 0 BEGIN SET @patientReportID = NULL END;
IF @testID = 0 BEGIN SET @testID = NULL END;
IF @testResult = '' BEGIN SET @testResult = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @bacteria = '' BEGIN SET @bacteria = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @verifiyBy  = '' BEGIN SET @verifiyBy = NULL END;
IF @test  = '' BEGIN SET @test = NULL END;

END;

IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

UPDATE
	[PatientReportDetails]
SET
	[patientReportID] = @patientReportID, [testID] = @testID, [testResult] = @testResult,[bacteria]=@bacteria ,[comments] = @comments, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate,[verifiyBy]=@verifiyBy,[test] = @test 
WHERE
	[PRDID] = @PRDID
END


GO
/****** Object:  StoredProcedure [dbo].[PatientReports_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PatientReports_Delete]
(
	@patientReportID int
)
AS
BEGIN
DELETE FROM 
	PatientReports
WHERE
	patientReportID = @patientReportID
END







GO
/****** Object:  StoredProcedure [dbo].[PatientReports_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PatientReports_Insert]
(
	@patientID int, @reportID int, @docID int,@XraySerialNo varchar(50) , @discountRate int, @discountSum decimal(8,2), @totalAmount decimal(8,2), @rcvdAmount decimal(8,2), @balAmount decimal(8,2), @labNo varchar(50), @ward varchar(50), @bed varchar(50), @recptNo varchar(50), @refBy varchar(50), @comments varchar(100), @reportingDate datetime, @deliveryDate datetime, @sampleAttached bit, @active bit, @opd8 varchar(50), @recieveNo varchar(50),@deptCode int,@crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@repName varchar(50), @isMedicular bit, @labNoRef varchar(50),@descr varchar(250) , @TestCategoryID int
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientID = 0 BEGIN SET @patientID = NULL END;
IF @reportID = 0 BEGIN SET @reportID = NULL END;
IF @docID = 0 BEGIN SET @docID = NULL END;
IF @XraySerialNo = '' BEGIN SET @XraySerialNo = NULL END;
IF @discountRate = 0 BEGIN SET @discountRate = NULL END;
IF @discountSum = 0 BEGIN SET @discountSum = NULL END;
IF @totalAmount = 0 BEGIN SET @totalAmount = NULL END;
IF @rcvdAmount = 0 BEGIN SET @rcvdAmount = NULL END;
IF @balAmount = 0 BEGIN SET @balAmount = NULL END;
IF @labNo = '' BEGIN SET @labNo = NULL END;
IF @ward = '' BEGIN SET @ward = NULL END;
IF @bed = '' BEGIN SET @bed = NULL END;
IF @recptNo = '' BEGIN SET @recptNo = NULL END;
IF @refBy = '' BEGIN SET @refBy = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @reportingDate = '1/1/1900' BEGIN SET @reportingDate = NULL END;
IF @deliveryDate = '1/1/1900' BEGIN SET @deliveryDate = NULL END;
IF @sampleAttached = 1 BEGIN SET @sampleAttached = NULL END;
IF @opd8= '' BEGIN SET @opd8= NULL END;
IF @recieveNo= '' BEGIN SET @recieveNo= NULL END;
IF @deptCode = 0 BEGIN SET @deptCode= NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @repName = '' BEGIN SET @repName = NULL END;
IF @isMedicular= 0 BEGIN SET @isMedicular=NULL END;
IF @labNoRef = 0 BEGIN SET @labNoRef = NULL END;
IF @descr='' BEGIN SET @descr=NULL END
IF @TestCategoryID = 0 BEGIN SET @TestCategoryID = NULL END;

END;

IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

-------Generating Lab Number Starts Here
-------Local Variables
--DECLARE @dt varchar(4);
--DECLARE @maxID varchar(15);

-------Setup Date YYMM 1510
--SET @dt = right(CONVERT(varchar(10),getdate(),10),2) + LEFT(CONVERT(varchar(10),getdate(),10),2);

-------Get max labNo
--SELECT TOP(1) @maxID = labNo from PatientReports WHERE labNo LIKE @dt+'%' ORDER BY labNo DESC

-------Null Fallback, if no labNo for current month
--SET @maxID = ISNULL(@maxID,0);

-------Increment labNo + 1
--SET @maxID = convert(int,REPLACE(@maxID,@dt,'')) + 1;

-------New LabNo
--Select @labNo = @dt + '' + REPLICATE(0,7 - LEN(@maxID)) + @maxID;
-------Select @labNo = right(CONVERT(varchar(10),getdate(),10),2) + LEFT(CONVERT(varchar(10),getdate(),10),2) + '-' + CONVERT(varchar(10),IDENT_CURRENT('PatientReports'));
-------Generating Lab Number Ends Here

 DECLARE @dt varchar(12);
SET @dt = format(getdate(),'yyyy-MM-dd');
 DECLARE @Serial int;
 SET @Serial = (SELECT TOP(1) p.XraySerialNo From PatientReports p INNER JOIN Labreports L ON L.reportID = p.reportID INNER JOIN TestCategory t ON t.testcategoryID = L.TestCategoryID where CONVERT(varchar(12),p.reportingDate,126) LIKE @dt+'%'AND t.testcategoryID = @TestCategoryID order by p.[patientReportID] desc)+1;
 IF @Serial IS NULL BEGIN SET @Serial = 1 END
 Select @Serial

INSERT INTO [PatientReports] (
	[patientID], [reportID], [docID],[XraySerialNo] ,[discountRate], [discountSum], [totalAmount], [rcvdAmount], [balAmount], [labNo], [ward], [bed], [recptNo], [refBy], [comments], [reportingDate], [deliveryDate], [sampleAttached], [active], [crtBy], [crtDate], [modBy], [modDate], [opd8], [deptCode],[repName],[recieveNo],[isMedicular],[labNoRef],[descr]
) VALUES (
	@patientID, @reportID, @docID, @Serial ,@discountRate, @discountSum, @totalAmount, @rcvdAmount, @balAmount, @labNo, @ward, @bed, @recptNo, @refBy, @comments, @reportingDate, @deliveryDate, @sampleAttached, @active, @crtBy, @crtDate, @modBy, @modDate, @opd8, @deptCode,@repName, @recieveNo,@isMedicular, @labNoRef,@descr
)

SET @ReturnValue = (SELECT IDENT_CURRENT('PatientReports'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[PatientReports_ReportRefNo]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PatientReports_ReportRefNo]-- 1
 @CategoryID int 
AS
BEGIN

-----Local Variables
DECLARE @dt varchar(12);
DECLARE @maxID varchar(15);
DECLARE @RepRef varchar(2);

--IF @ReportRefNo = 1 BEGIN SET @RepRef = 'X' END ELSE IF @ReportRefNo = 4 BEGIN SET @RepRef = 'U' END

-----Setup Date DDMMYY 020218
SET @dt = format(getdate(),'yyyy-MM-dd');

--Select XraySerialNo from PatientReports where CONVERT(varchar(12),reportingDate,126) LIKE @dt+'%'

SELECT TOP(1) @maxID = p.XraySerialNo From PatientReports p
INNER JOIN Labreports L ON L.reportID = p.reportID
INNER JOIN TestCategory t ON t.testcategoryID = L.TestCategoryID 
where CONVERT(varchar(12),p.reportingDate,126) LIKE @dt+'%'AND t.testcategoryID = @CategoryID
order by p.[patientReportID] desc

IF @maxID IS NULL BEGIN SET @maxID = 0 END

select @maxID AS [XraySerialNo];
END

GO
/****** Object:  StoredProcedure [dbo].[PatientReports_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PatientReports_Select]
(
	@patientReportID int, @patientID int, @reportID int, @docID int,@XraySerialNo varchar(50) ,  @discountRate int, @discountSum decimal(8,2), @totalAmount decimal(8,2), @rcvdAmount decimal(8,2), @balAmount decimal(8,2), @labNo varchar(50), @ward varchar(50), @bed varchar(50), @recptNo varchar(50), @refBy varchar(50), @comments varchar(100), @reportingDate datetime, @deliveryDate datetime, @sampleAttached bit, @opd8 varchar(50), @recieveNo varchar(50), @deptCode int, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@repName varchar(50)
	, @pageNumber int, @pageSize int,@isMedicular bit,@labNoRef varchar(50),@descr varchar(250),@patAge varchar(250)
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [PatientReports];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[patientReportID], 0) AS [patientReportID]
	,ISNULL(a.[patientID], 0) AS [patientID]
	,ISNULL(a.[reportID], 0) AS [reportID]
	,ISNULL(a.[docID], 0) AS [docID]
	,ISNULL(a.[XraySerialNo] , 0) AS [XraySerialNo]
	,ISNULL(a.[discountRate], 0) AS [discountRate]
	,ISNULL(a.[discountSum], 0) AS [discountSum]
	,ISNULL(a.[totalAmount], 0) AS [totalAmount]
	,ISNULL(a.[rcvdAmount], 0) AS [rcvdAmount]
	,ISNULL(a.[balAmount], 0) AS [balAmount]
	,ISNULL(a.[labNo], '') AS [labNo]
	,ISNULL(a.[ward], '') AS [ward]
	,ISNULL(a.[bed], '') AS [bed]
	,ISNULL(a.[recptNo], '') AS [recptNo]
	,ISNULL(a.[refBy], '') AS [refBy]
	,ISNULL(a.[comments], '') AS [comments]
	,ISNULL(a.[reportingDate], '1/1/1900') AS [reportingDate]
	,ISNULL(a.[deliveryDate], '1/1/1900') AS [deliveryDate]
	,ISNULL(a.[sampleAttached], 1) AS [sampleAttached]
	,ISNULL(a.[opd8], '') AS [opd8]
	,ISNULL(a.[recieveNo], '') AS [recieveNo]
	,ISNULL(a.[deptCode], 0) AS [deptCode]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]
	,ISNULL(a.[repName], '') AS [repName]
	,CONVERT(decimal(11,2),@PageCount) AS [PageCount]
	,ISNULL(p.patientName, '') AS [patientName]
	,ISNULL(p.dob, '1/1/1900') AS [dob]
	,ISNULL(p.gender, '') AS [gender]
	,ISNULL(r.reportName, '') AS [reportName]
	,ISNULL(d.docName, '') AS [docName]
	,ISNULL(a.isMedicular,0) AS [isMedicular]
	,ISNULL(a.labNoRef,'') AS [labNoRef]
	,ISNULL(a.descr,'') AS [descr]
	,ISNULL(p.patAge,'') AS [patAge]
FROM
	[PatientReports] AS a
	INNER JOIN Patients AS p ON a.patientID = p.patientID
	INNER JOIN LabReports AS r ON a.reportID = r.reportID
	LEFT OUTER JOIN Doctors As d ON a.docID = d.docID
WHERE
	(0 = @patientReportID OR a.[patientReportID] LIKE @patientReportID)
	AND (0 = @patientID OR a.[patientID] LIKE @patientID)
	AND (0 = @reportID OR a.[reportID] LIKE @reportID)
	AND (0 = @docID OR a.[docID] LIKE @docID)
	AND (''=  @XraySerialNo OR a.[XraySerialNo] LIKE @XraySerialNo)
	AND (0 = @discountRate OR a.[discountRate] LIKE @discountRate)
	AND (0 = @discountSum OR a.[discountSum] LIKE @discountSum)
	AND (0 = @totalAmount OR a.[totalAmount] LIKE @totalAmount)
	AND (0 = @rcvdAmount OR a.[rcvdAmount] LIKE @rcvdAmount)
	AND (0 = @balAmount OR a.[balAmount] LIKE @balAmount)
	AND ('' = @labNo OR a.[labNo] LIKE @labNo)
	AND ('' = @ward OR a.[ward] LIKE @ward)
	AND ('' = @bed OR a.[bed] LIKE @bed)
	AND ('' = @recptNo OR a.[recptNo] LIKE @recptNo)
	AND ('' = @refBy OR a.[refBy] LIKE @refBy)
	AND ('' = @comments OR a.[comments] LIKE @comments)
	AND ('1/1/1900' = @reportingDate OR a.[reportingDate] LIKE @reportingDate)
	AND ('1/1/1900' = @deliveryDate OR a.[deliveryDate] LIKE @deliveryDate)
	AND (1 = @sampleAttached OR a.[sampleAttached] LIKE @sampleAttached)
	AND ('' = @opd8 OR a.[opd8] LIKE @opd8)
	AND ('' = @recieveNo OR a.[recieveNo] LIKE @recieveNo)
	AND (0 = @deptCode OR a.[deptCode] LIKE @deptCode)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)
	AND ('' = @repName OR a.[repName] LIKE @repName)
	AND (0 =@isMedicular OR a.[isMedicular] LIKE @isMedicular)
	AND ('' =@labNoRef OR a.[labNoRef] LIKE @labNoRef)
	AND ('' =@descr OR a.[descr] LIKE @descr)
	
	
ORDER BY
	a.[patientReportID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[PatientReports_SelectLabNo]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[PatientReports_SelectLabNo]
AS
BEGIN

-----Local Variables

DECLARE @dt varchar(4);
DECLARE @maxID varchar(15);

-----Setup Date YYMM 1510
SET @dt = right(CONVERT(varchar(10),getdate(),10),2) + LEFT(CONVERT(varchar(10),getdate(),10),2);

-----Get max labNo
SELECT TOP(1) @maxID = labNo from PatientReports WHERE labNo LIKE @dt+'%' ORDER BY labNo DESC

-----Null Fallback, if no labNo for current month
SET @maxID = ISNULL(@maxID,@dt + '000000');

-----Increment labNo + 1
SET @maxID = convert(int,Right(@maxID,LEN(@maxID)-4)) + 1;

-----New LabNo
Select @dt + '' + REPLICATE(0,6 - LEN(@maxID)) + @maxID AS [labNo];

END




GO
/****** Object:  StoredProcedure [dbo].[PatientReports_SelectXrayNo]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PatientReports_SelectXrayNo]
@ReportRefNo int 
AS
BEGIN

DECLARE @dt varchar(8);
DECLARE @maxID varchar(15);
DECLARE @RepRef varchar(2);


SELECT TOP(1) @maxID = XraySerialNo  from  PatientReports pr 
INNER JOIN LabReports lr ON lr.reportID = pr.reportID
INNER JOIN TestCategory tc ON tc.testcategoryID = lr.TestCategoryID
WHERE tc.testcategoryID = @ReportRefNo 
ORDER BY XraySerialNo ,  pr.reportingDate desc

IF @maxID IS NULL BEGIN SET @maxID = 0 END

Select @maxID

END

GO
/****** Object:  StoredProcedure [dbo].[PatientReports_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PatientReports_Update]
(
	@patientReportID int, @patientID int, @reportID int, @docID int, @XraySerialNo varchar(50) , @discountRate int, @discountSum decimal(8,2), @totalAmount decimal(8,2), @rcvdAmount decimal(8,2), @balAmount decimal(8,2), @labNo varchar(50), @ward varchar(50), @bed varchar(50), @recptNo varchar(50), @refBy varchar(50), @comments varchar(100), @reportingDate datetime, @deliveryDate datetime, @sampleAttached bit, @opd8 varchar(50), @recieveNo varchar(50),@deptCode int, @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@repName varchar(50), @isMedicular bit,@labNoRef varchar(50) , @descr varchar(50)
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientID = 0 BEGIN SET @patientID = NULL END;
IF @reportID = 0 BEGIN SET @reportID = NULL END;
IF @docID = 0 BEGIN SET @docID = NULL END;
IF @XraySerialNo = '' BEGIN SET @XraySerialNo = NULL END;
IF @discountRate = 0 BEGIN SET @discountRate = NULL END;
IF @discountSum = 0 BEGIN SET @discountSum = NULL END;
IF @totalAmount = 0 BEGIN SET @totalAmount = NULL END;
IF @rcvdAmount = 0 BEGIN SET @rcvdAmount = NULL END;
IF @balAmount = 0 BEGIN SET @balAmount = NULL END;
IF @labNo = '' BEGIN SET @labNo = NULL END;
IF @ward = '' BEGIN SET @ward = NULL END;
IF @bed = '' BEGIN SET @bed = NULL END;
IF @recptNo = '' BEGIN SET @recptNo = NULL END;
IF @refBy = '' BEGIN SET @refBy = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @reportingDate = '1/1/1900' BEGIN SET @reportingDate = NULL END;
IF @deliveryDate = '1/1/1900' BEGIN SET @deliveryDate = NULL END;
IF @sampleAttached = 1 BEGIN SET @sampleAttached = NULL END;
IF @opd8= '' BEGIN SET @opd8= NULL END;
IF @recieveNo= '' BEGIN SET @recieveNo= NULL END;
IF @deptCode = 0 BEGIN SET @deptCode= NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @repName= '' BEGIN SET @repName = NULL END;
IF @isMedicular=0 BEGIN SET @isMedicular = NULL END
IF @labNoRef='' BEGIN SET @labNoRef = NULL END;
IF @descr= '' BEGIN SET @descr = NULL END;
END;

--IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

UPDATE
	[PatientReports]
SET
	[patientID] = @patientID, [reportID] = @reportID, [docID] = @docID , [XraySerialNo] = @XraySerialNo ,[discountRate] = @discountRate, [discountSum] = @discountSum, [totalAmount] = @totalAmount, [rcvdAmount] = @rcvdAmount, [balAmount] = @balAmount, [labNo] = @labNo, [ward] = @ward, [bed] = @bed, [recptNo] = @recptNo, [refBy] = @refBy, [comments] = @comments, [reportingDate] = @reportingDate, [deliveryDate] = @deliveryDate, [sampleAttached] = @sampleAttached, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate, [opd8] = @opd8, [deptCode] = @deptCode , [repName] = @repName,[recieveNo] = @recieveNo,[isMedicular]=@isMedicular, [labNoRef]=@labNoRef
	WHERE
	[patientReportID] = @patientReportID
END
GO
/****** Object:  StoredProcedure [dbo].[Patients_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patients_Delete]
(
	@patientID int
)
AS
BEGIN
DELETE FROM 
	Patients
WHERE
	patientID = @patientID
END







GO
/****** Object:  StoredProcedure [dbo].[Patients_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patients_Insert]
(
	@patientCode varchar(10), @patientName varchar(50), @gender varchar(1), @cell varchar(15), @comments varchar(100), @dob datetime, @patAge varchar(50), @ageType varchar(50),@active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientCode = '' BEGIN SET @patientCode = NULL END;
IF @patientName = '' BEGIN SET @patientName = NULL END;
IF @gender = '' BEGIN SET @gender = NULL END;
IF @cell = '' BEGIN SET @cell = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @dob = '1/1/1900' BEGIN SET @dob = NULL END;
IF @patAge = '' BEGIN SET @patAge = NULL END;
IF @ageType = '' BEGIN SET @ageType= NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;
IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

INSERT INTO [Patients] (
	[patientCode], [patientName], [gender], [cell], [comments], [dob], [active], [crtBy], [crtDate], [modBy], [modDate], [patAge], [ageType]
) VALUES (
	@patientCode, @patientName, @gender, @cell, @comments, @dob, @active, @crtBy, @crtDate, @modBy, @modDate, @patAge, @ageType
)

SET @ReturnValue = (select IDENT_CURRENT('Patients'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[Patients_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patients_Select]
(
	@patientID int, @patientCode varchar(10), @patientName varchar(50), @gender varchar(1), @cell varchar(15), @comments varchar(100), @dob datetime, @patAge varchar(50), @ageType varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Patients];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[patientID], 0) AS [patientID]
	,ISNULL(a.[patientCode], '') AS [patientCode]
	,ISNULL(a.[patientName], '') AS [patientName]
	,ISNULL(a.[gender], '') AS [gender]
	,ISNULL(a.[cell], '') AS [cell]
	,ISNULL(a.[comments], '') AS [comments]
	,ISNULL(a.[dob], '1/1/1900') AS [dob]
	,ISNULL(a.[patAge],'') AS [patAge]
	,ISNULL(a.[ageType],'') AS [ageType]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	--,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[Patients] AS a
WHERE
	(0 = @patientID OR a.[patientID] LIKE @patientID)
	AND ('' = @patientCode OR a.[patientCode] LIKE @patientCode)
	AND ('' = @patientName OR a.[patientName] LIKE @patientName)
	AND ('' = @gender OR a.[gender] LIKE @gender)
	AND ('' = @cell OR a.[cell] LIKE @cell)
	AND ('' = @comments OR a.[comments] LIKE @comments)
	AND ('1/1/1900' = @dob OR a.[dob] LIKE @dob)
	AND ('' = @patAge OR a.[patAge] LIKE @patAge)
	AND ('' = @ageType OR a.[ageType] LIKE @ageType)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[patientID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[Patients_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patients_Update]
(
	@patientID int, @patientCode varchar(10), @patientName varchar(50), @gender varchar(1), @cell varchar(15), @comments varchar(100), @dob datetime,@patAge varchar(50), @ageType varchar(50), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @patientCode = '' BEGIN SET @patientCode = NULL END;
IF @patientName = '' BEGIN SET @patientName = NULL END;
IF @gender = '' BEGIN SET @gender = NULL END;
IF @cell = '' BEGIN SET @cell = NULL END;
IF @comments = '' BEGIN SET @comments = NULL END;
IF @dob = '1/1/1900' BEGIN SET @dob = NULL END;
IF @patAge = '' BEGIN SET @patAge = NULL END;
IF @ageType = '' BEGIN SET @ageType= NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;
--IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

UPDATE
	[Patients]
SET
	[patientCode] = @patientCode, [patientName] = @patientName, [gender] = @gender, [cell] = @cell, [comments] = @comments, [dob] = @dob, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate, [patAge]= @patAge, [ageType] = @ageType
WHERE
	[patientID] = @patientID
END


GO
/****** Object:  StoredProcedure [dbo].[Report_BookingSummary]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report_BookingSummary] --'2017/2/1','2017/2/28','Waqas'
@reportStartDate DateTime 
, @reportEndDate DateTime ,
@userName nvarchar(50) 
AS

SELECT 

	MAX(ISNULL(PR.crtBy,'') )AS userName,
	ISNULL(labNo,'') AS labno,
	MAX(ISNULL(PR.crtDate,'')) AS  [Date], 
	--Max( case when discountRate = 100 then 'Free' when discountRate > 0 then 'Disc' else 'Cash' END ) AS Stat
	Max( case when discountRate = 100 AND opd8 IS NULL then 'Free' when discountRate > 0 AND opd8 IS NULL then 'Disc' when discountRate IS NULL AND opd8 IS NULL then 'Cash' else 'Opd-8' END ) AS Stat
	,case when ISNULL(PR.[opd8],'') <> '' then PR.opd8  else PR.[recieveNo] END AS 'Opd8recNo'  
	,ISNULL(PR.[ward],'')AS ward
	,ISNULL(P.patientName,'') AS 'Patient'
	,ISNULL(d.docName,'') AS 'Authorized_By'
	,(ISNull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) AS 'Gross'
	,ISNull(sum(PR.discountSum),0) AS 'Disc'
	,(ISNull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) - ISNULL(sum(discountSum),0) AS 'Net_Amount'
	,MAX(ISNull((PR.[rcvdAmount]),0)) AS 'Amt' 
	,Max(ISNull((PR.[balAmount]),0)) AS 'BAL'
	,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd
	,CAST (0 AS DECIMAL) AS  billCountBydoctor
	,CAST (0 AS DECIMAL) AS  discCountbydoctor
	,ISNULL(PR.opd8,'') AS totalopd8Pat
	,ISNULL(PR.[bed], '') AS bed
	
FROM 
	PatientReports PR
	INNER JOIN Patients P ON PR.patientID = P.patientID
	LEFT OUTER JOIN Doctors d ON PR.docID = d.docID
	
WHERE
	('All' = @userName OR PR.[crtBy] LIKE @userName)
	AND PR.crtDate BETWEEN @reportStartDate AND @reportEndDate
	
GROUP BY
		labNo
	,PR.discountRate
	,P.patientName
	,d.docName
	,PR.ward,PR.opd8,PR.recieveNo, PR.[bed]

GO
/****** Object:  StoredProcedure [dbo].[Report_BookingSummary_Summary]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report_BookingSummary_Summary]
	@reportStartDate DateTime 
, @reportEndDate DateTime ,
@userName nvarchar(50) 
AS
	SELECT 
	SUM(data.billCountBydoctor) AS billCountBydoctor,
	SUM(data.discCountbydoctor) AS discCountbydoctor,
	data.Authorized_By

	 FROM 
	(
	SELECT 
	''  AS  userName, --userName ,
	'' AS labno
	,CAST('1/1/1900' AS datetime) AS  [Date], 
	'' AS Stat
	,'' AS 'Patient'
	,ISNULL(d.docName,'') AS 'Authorized_By'
	,CAST(0 AS int) AS 'reportID'
	,CAST(0 AS DECIMAL) AS 'Gross'
	,CAST(0 AS DECIMAL) AS 'Disc'
	,CAST(0 AS DECIMAL) AS 'Net_Amount'
	,CAST(0 AS DECIMAL) AS 'Amt' 
	,CAST(0 AS DECIMAL) AS 'BAL'
	,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd 
	,CASE WHEN discountRate = 100  THEN COUNT(Distinct(PR.patientID)) ELSE 0 END AS billCountBydoctor
	,CASE WHEN discountRate = 50  THEN COUNT(Distinct(PR.patientID)) ELSE 0 END AS discCountbydoctor

FROM 
	PatientReports PR
	INNER JOIN Doctors d ON PR.docID = d.docID
WHERE
	('All' = @userName OR PR.[crtBy] LIKE @userName )
	AND PR.crtDate BETWEEN @reportStartDate AND @reportEndDate
GROUP  by
	
	d.docName,pr.[discountRate]
	) as data

	GROUP  by
	
	data.Authorized_By

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[Report_CategoryandLabWiseTest]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report_CategoryandLabWiseTest] --'1-1-1990','4-3-2018','All'
  @reportStartDate DateTime 
, @reportEndDate DateTime ,
  @userName nvarchar(50) 
AS
--declare   @reportStartDate DateTime ='1/1/1900'
--, @reportEndDate DateTime ='1/1/2018',
--  @userName nvarchar(50)='Admin' ;
	
Select labno  ,MRI , UltraSound ,CTScan, XRay  from
(
Select pr.LabNo as labno ,l.reportID as Total_Test , t.testcategoryName as category from PatientReports pr
Left JOIN Patients p ON p.patientID = pr.patientID
Left JOIN LabReports l ON l.reportID = pr.reportID 
Left JOIN TestCategory t ON t.testCategoryID = l.testCategoryID 
WHERE
	('All' = @userName OR pr.[crtBy] LIKE @userName)
	AND pr.reportingDate BETWEEN @reportStartDate AND @reportEndDate
) as SourceTable
PIVOT (
  COUNT(Total_Test)
  FOR category
  IN(MRI , UltraSound ,CTScan, XRay )

) as BookingSummary
GO
/****** Object:  StoredProcedure [dbo].[Report_DestroyReport]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report_DestroyReport]--'1/26/2018 12:00:00AM','1/26/2018  12:00:00PM'
(
	 @dtStart datetime,@dtEnd datetime
)
AS
BEGIN
SELECT
	 ISNULL(a.[labNo], '') AS [labNo]
	,ISNULL(r.reportName, '') AS [reportName]
	,ISNULL(a.[repName], '') AS [repName]
	,ISNULL(a.labNoRef,'') AS [labNoRef]
	,CAST(ISNULL(a.[crtDate], '1/1/1900') AS DATE) AS [crtDate]

	
FROM
	[PatientReports] AS a
	INNER JOIN Patients AS p ON a.patientID = p.patientID
	INNER JOIN LabReports AS r ON a.reportID = r.reportID
	LEFT OUTER JOIN Doctors As d ON a.docID = d.docID
WHERE

	(a.crtDate BETWEEN @dtStart AND @dtEnd)
	And a.labNoRef is not Null


Group By
	  a.[labNo],r.[reportName],a.[repName],a.[labNoRef],a.crtDate,a.[patientReportID] --CAST(ISNULL(a.[crtDate], '1/1/1900') AS DATE)
END
GO
/****** Object:  StoredProcedure [dbo].[Report_DiscountPatients]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report_DiscountPatients]
	@docID int,
	@dtStart datetime,
	@dtEnd datetime
AS
BEGIN

--SELECT * FROM (
--	Select d.docID, d.docName, 'Discount' AS [Type], ISNULL(SUM(discountSum + totalAmount),0) AS [Count] FROM PatientReports AS pr inner join Doctors As d ON pr.docID = d.docID AND discountRate between 0 and 99 AND (0 = @docID OR @docID = d.docID) AND PR.[crtDate] BETWEEN @dtStart AND @dtEnd GROUP BY d.docID, d.docName
--	UNION
--	Select d.docID, d.docName, 'Free' AS [Type], ISNULL(SUM(discountSum + totalAmount),0) AS [Count] FROM PatientReports AS pr inner join Doctors As d ON pr.docID = d.docID AND discountRate = 100 AND (0 = @docID OR @docID = d.docID) AND PR.[crtDate] BETWEEN @dtStart AND @dtEnd GROUP BY d.docID, d.docName
--) Tbl1
--Pivot (SUM([Count]) for [Type] in ([Discount],[Free])) as [Counts]


SELECT 

	MAX(ISNULL(PR.crtBy,'') )AS userName,
	ISNULL(labNo,'') AS labno,
	MAX(ISNULL(PR.crtDate,'')) AS  [Date], 
	Max( case when discountRate = 100 then 'Free' when discountRate > 0 then 'Disc' else 'Cash' END ) AS Stat
	,ISNULL(P.patientName,'') AS 'Patient'
	,ISNULL(d.docName,'') AS 'Authorized_By'
	,(ISNull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) AS 'Gross'
	,ISNull(sum(PR.discountSum),0) AS 'Disc'
	,(ISNull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) - ISNULL(sum(discountSum),0) AS 'Net_Amount'
	,MAX(ISNull((PR.[rcvdAmount]),0)) AS 'Amt' 
	,Max(ISNull((PR.[balAmount]),0)) AS 'BAL'
	,@dtStart AS dtStart ,@dtEnd AS dtEnd 
FROM 
	PatientReports PR
	INNER JOIN Patients P ON PR.patientID = P.patientID
	LEFT OUTER JOIN Doctors d ON PR.docID = d.docID
	
WHERE
	PR.crtDate between @dtStart and @dtEnd
	AND PR.[discountRate] = 50
	AND (0 = @docID OR Pr.[docID] LIKE @docID)
	--AND PR.docID = @docID
	
GROUP BY
		labNo
	,PR.discountRate
	,P.patientName
	,d.docName

--SELECT 
--	DR.[docName] ,SUM(PR.[totalAmount]+PR.[discountSum]) AS SUM
--FROM
--	[PatientReports] AS PR
--	INNER JOIN [Doctors] AS DR ON DR.[docID] = PR.[docID]
--	AND  PR.[discountRate] > 0
--	AND (0 = @docID OR DR.[docID] LIKE @docID)
--	AND PR.[crtDate] BETWEEN @dtStart AND @dtEnd
--GROUP BY
--	DR.[docName]
--HAVING
--	SUM(PR.[totalAmount]+PR.[discountSum]) > 0
--ORDER BY
--	DR.[docName]

END



GO
/****** Object:  StoredProcedure [dbo].[Report_FilmConsume]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report_FilmConsume]  --0 , '2018-01-25 09:17:50.100' , '2018-02-10 09:17:50.100'
	@FilmId int = 0,
	@dtfrom datetime,
	@dtto datetime

AS
	Select
	  ISNULL(p.repName,'') As [ReportName]
	 ,ISNULL(f.Size,'') As [FilmSize]
	 ,ISNULL(t.NoOfItems,1) As [TotalItems]  
	 From TestFilms t 
	LEFT JOIN FilmSize f on f.filmId = t.filmId
	LEFT JOIN PatientReports p ON p.reportID = t.reportID
  	where f.filmId = @FilmId Or @FilmId = 0 AND p.reportingDate BETWEEN @dtfrom AND @dtto
  	AND p.XraySerialNo IS NOT NULL
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Report_FilmSize]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report_FilmSize]
	@dateFrom datetime, @dateTo datetime, @labNo nvarchar(20)
AS
BEGIN

select
ISNULL(patrep.labNo,'') as 'labNo'
,ISNULL(pat.patientName,'') as 'patientName'
,ISNULL(lbrep.reportName,'') as 'reportName'
,ISNULL(flmsz.discp,'') as 'filmType'
,ISNULL(flmsz.filmId,0) as 'filmId'
,ISNULL(flmsz.Size,'') as 'Size'
,ISNULL(tstflms.NoOfItems,0) as 'NoOfItems'
From FilmSize flmsz
inner join TestFilms tstflms on tstflms.filmId=flmsz.filmId
inner join LabTests lbtst on lbtst.testID=tstflms.testID and lbtst.labDeptID=tstflms.labDeptID
inner join ReportTests repTst on repTst.testID=lbtst.testID and repTst.reportID=tstflms.reportID
inner join LabReports lbrep on lbrep.reportID=repTst.reportID and lbrep.labDeptID=tstflms.labDeptID
inner join LabDepartment lbdep on lbdep.labDeptID=lbrep.labDeptID and lbdep.labDeptID=tstflms.labDeptID
inner join PatientReports patrep on patrep.reportID=lbrep.reportID and patrep.reportID=lbrep.reportID
inner join Patients pat on pat.patientID=patrep.patientID
WHERE
(CONVERT(date,lbtst.crtDate) between CONVERT(date,@dateFrom) and CONVERT(date,@dateTo))
AND (@labNo='' or patrep.labNo=@labNo)

END

GO
/****** Object:  StoredProcedure [dbo].[Report_FreePatients]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Report_FreePatients]
	@dtStart datetime,
	@dtEnd datetime,
	@docID int 
AS

SELECT 
	ISNULL(PR.crtBy,'') AS crtBy,
	ISNULL(labNo,'') AS labno,
	MAX(ISNULL(PR.crtDate,'')) AS [Date]
	,ISNULL(PR.docID,0) 
	,Max( case when discountRate = 100 then 'Free' when discountRate > 0 then 'Disc' END ) AS Stat
	--,ISNULL(LR.reportName, '') AS Investigation
	--case when discountRate = 100 then 'Free' when discountRate > 0 then 'Disc' else 'Cash' END as Stat
	,ISNULL(P.patientName,'') 'Patient'
	,ISNULL(d.docName,'') 'Authorized_By'
	,(ISNull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) AS 'Charges'
	--,(isnull(totalAmount,0) + ISNULL(discountSum,0)) AS 'Charges'
	,ISNull(sum(PR.discountSum),0) AS 'Disc'
	,@dtStart AS dtStart ,@dtEnd AS dtEnd 
	--,(isnull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) - ISNULL(sum(discountSum),0) AS 'Net Amount'
	
FROM 
	PatientReports AS PR
	INNER JOIN Patients P ON PR.patientID = P.patientID
	LEFT OUTER JOIN Doctors d ON PR.docID = d.docID
	INNER JOIN LabReports LR ON PR.reportID = LR.reportID

WHERE 
	PR.crtDate between @dtStart and @dtEnd
	AND PR.[discountRate] = 100
	AND (0 = @docID OR Pr.[docID] LIKE @docID)
	--AND PR.docID = @docID

	
	
GROUP BY
	PR.crtBy
	,PR.docID
	,labNo
	,docName
	,patientName



GO
/****** Object:  StoredProcedure [dbo].[Report_GelReport]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Report_GelReport] --'1/21/2018 8:19:35 AM' , '1/29/2018 8:19:35 AM'
(
       @dtStart datetime  , @dtEnd datetime 
)
as 
begin

select SUM(g.NoOfGel) as 'NoOfGels' from [Gel] as g where g.crtDate between @dtStart
 AND @dtEnd

end
GO
/****** Object:  StoredProcedure [dbo].[Report_MedicularTest]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report_MedicularTest]
	@dateFrom date, @dateTo date, @modBy nvarchar(20)
AS
BEGIN

SELECT 
ISNULL(patRep.patientReportID,'') AS patientReportID
,ISNULL(pat.patientID,'') AS patientID
,ISNULL(pat.patientName,'') AS patientName
--,ISNULL(doc.docName,'') as docName
,ISNULL(patRep.totalAmount,0.0) as rcvdAmount
,ISNULL(patRep.labNo,'') as labNo
,ISNULL(patRep.ward,'') as ward
,ISNULL(patRep.bed,'') as bed
,ISNULL(patRep.repName,'') as repName
,ISNULL(patRep.reportingDate,'1/1/1900') as reportingDate
,ISNULL(patRep.modBy,'') as modBy
FROM Patients AS pat
inner join PatientReports patRep on patRep.patientID=pat.patientID

WHERE
(patRep.isMedicular is null)
AND(CONVERT(date,patRep.reportingDate) BETWEEN CONVERT(date,@dateFrom) and CONVERT(date,@dateTo))
AND(@modBy='' OR @modBy=patRep.modBy)
order by pat.patientID
END
GO
/****** Object:  StoredProcedure [dbo].[Report_MonthlySummary]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Report_MonthlySummary]
(
@reportStartDate DateTime 
, @reportEndDate DateTime 
)
AS

SELECT 

	MAX(ISNULL(PR.crtBy,'') )AS userName,
	ISNULL(labNo,'') AS labno,
	MAX(ISNULL(PR.crtDate,'')) AS  [Date], 
	--Max( case when discountRate = 100 then 'Free' when discountRate > 0 then 'Disc' else 'Cash' END ) AS Stat
	Max( case when discountRate = 100 AND opd8 IS NULL then 'Free' when discountRate > 0 AND opd8 IS NULL then 'Disc' when discountRate IS NULL AND opd8 IS NULL then 'Cash' else 'Opd-8' END ) AS Stat
	,ISNULL(PR.[ward],'')AS ward
	,ISNULL(P.patientName,'') AS 'Patient'
	,ISNULL(d.docName,'') AS 'Authorized_By'
	,(ISNull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) AS Gross
	,ISNull(sum(PR.discountSum),0) AS 'Disc'
	,(ISNull(sum(totalAmount),0) + ISNULL(sum(discountSum),0)) - ISNULL(sum(discountSum),0) AS 'Net_Amount'
	,MAX(ISNull((PR.[rcvdAmount]),0)) AS 'Amt' 
	,Max(ISNull((PR.[balAmount]),0)) AS 'BAL'
	,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd
	,CAST (0 AS DECIMAL) AS  billCountBydoctor
	,CAST (0 AS DECIMAL) AS  discCountbydoctor
FROM 
	PatientReports AS PR
	INNER JOIN Patients AS P ON PR.patientID = P.patientID
	Left OUTER JOIN Doctors AS d ON PR.docID = d.docID
	
WHERE
	PR.crtDate BETWEEN @reportStartDate AND @reportEndDate 	
GROUP BY
		Pr.labNo
	,PR.discountRate
	,P.patientName
	,d.docName
	,PR.ward

	Order by labno


GO
/****** Object:  StoredProcedure [dbo].[Report_MonthlySummary_Summary]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report_MonthlySummary_Summary]
(
	@reportStartDate DateTime 
, @reportEndDate DateTime 
)
AS
	SELECT 
	SUM(data.billCountBydoctor) AS billCountBydoctor,
	SUM(data.discCountbydoctor) AS discCountbydoctor,
	data.Authorized_By

	 FROM 
	(
	SELECT 
	''  AS  userName, --userName ,
	'' AS labno
	,CAST('1/1/1900' AS datetime) AS  [Date], 
	'' AS Stat
	,'' AS 'Patient'
	,ISNULL(d.docName,'') AS 'Authorized_By'
	,CAST(0 AS int) AS 'reportID'
	,CAST(0 AS DECIMAL) AS 'Gross'
	,CAST(0 AS DECIMAL) AS 'Disc'
	,CAST(0 AS DECIMAL) AS 'Net_Amount'
	,CAST(0 AS DECIMAL) AS 'Amt' 
	,CAST(0 AS DECIMAL) AS 'BAL'
	,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd 
	,CASE WHEN discountRate = 100  THEN COUNT(Distinct(PR.patientID)) ELSE 0 END AS billCountBydoctor
	,CASE WHEN discountRate = 50  THEN COUNT(Distinct(PR.patientID)) ELSE 0 END AS discCountbydoctor

FROM 
	PatientReports PR
	INNER JOIN Doctors d ON PR.docID = d.docID
WHERE
	PR.crtDate BETWEEN @reportStartDate AND @reportEndDate
GROUP  by
	
	d.docName,pr.[discountRate]
	) as data

	GROUP  by
	
	data.Authorized_By

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[Report_Receipt]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report_Receipt]
	@labNo nvarchar(50)
AS
BEGIN
SELECT
	PR.[labNo],ISNULL(PR.[XraySerialNo],'0') AS XraySerialNo ,PR.[reportingDate],Pr.[ward],PR.[opd8],PR.[bed], PR.[balAmount], PR.[crtBy],PR.[comments], PR.[deliveryDate], PR.[discountRate], PR.[discountSum], PR.[totalAmount], PR.[rcvdAmount],
	P.[patientName], P.[gender],P.[dob], ISNULL(FLOOR(DATEDIFF(Year,P.[dob],GETDATE())),0) AS AGE,
	LR.[reportName],ISNULL(ISNULL(PR.discountSum,0) + ISNULL(PR.totalAmount,0), 0) AS Charges,
	DR.[docName],
	p.[patAge],
	p.[ageType],
	PR.[descr],
	LD.[labDeptName] AS department, LD.[labDeptID]
FROM [PatientReports] AS PR
	INNER JOIN [Patients] AS P ON P.[patientID] = PR.[patientID]
	LEFT OUTER JOIN [Doctors] AS DR ON DR.[docID] = Pr.[docID]
	INNER JOIN [LabReports] AS LR ON LR.[reportID] = PR.[reportID]
	INNER JOIN [LabDepartment] AS LD ON LD.[labDeptID] = LR.[labDeptID]
	
WHERE PR.[labNo] = @labNo

END
GO
/****** Object:  StoredProcedure [dbo].[Report_ShiftWiseUser]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report_ShiftWiseUser]
	@dtStart datetime,
	@dtEnd datetime,
	@shftID int 
AS

Select 
  ISNULL(l.userID,0) as [UserID] ,
  ISNULL(u.staffName,'') as [StaffName],
  ISNULL(l.logTime , '') as [StartTime],
  ISNULL(l.logOut ,'')  as [EndTime],
  ISNULL(u.shftId,0) as [ShiftId]

  from UserLog l
Inner Join Users u on u.userID = l.userID

Where u.shftId = @shftID AND l.logTime BETWEEN  @dtStart AND  @dtEnd
GO
/****** Object:  StoredProcedure [dbo].[Report_SpecialChemistry]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create PROCEDURE [dbo].[Report_SpecialChemistry]
(
	@labNo nvarchar(50)  , @labDeptID int
)
AS
BEGIN
SELECT
	P.[patientName]
	, P.[dob], ISNULL(FLOOR(DATEDIFF(Year,P.[dob],GETDATE())),0) AS AGE
	,P.[patAge]
	,P.[ageType]
	, P.[gender]
	, P.[patientCode]
	, LR.[reportID]
	, LR.[reportName]
	, LT.[testName]
	, PR.[patientReportID]
	, PR.[reportingDate]
	, PR.[deliveryDate]
	, PR.[labNo]
	,PR.[ward]
	,PR.[bed]
	,PR.[discountRate]
	,PR.[opd8]
	,PR.[deptCode]
	, LT.[testID]
	, LD.labDeptName
	, LD.labDeptID
	, LT.[testName]
	, LT.[testUnit]
	, LT.normalRange
	,LT.[heading]
	, PRD.[testResult]
	, PRD.[patientReportID]
	, PRD.[comments]
	,PRD.[bacteria]
	,PRD.[verifiyBy]
	,PRD.[crtBy]
	,PRD.[crtDate]
	, LT.[testID]
	,D.[docName]
	,pr.[comments] AS bookingComments
FROM
	[PatientReports] AS PR
	INNER JOIN [Patients] AS P ON P.[patientID] = PR.[patientID]
	Left Outer JOIN [Doctors] AS D ON D.[docID] = Pr.[docID]
	INNER JOIN [LabReports] AS LR ON LR.[reportID] = PR.[reportID]
	INNER JOIN [ReportTests] AS RT ON RT.[reportID] = LR.[reportID]
	INNER JOIN [LabTests] AS LT ON LT.[testID] = RT.[testID]
	INNER JOIN LabDepartment AS LD ON LR.labDeptID = LD.labDeptID
	INNER JOIN [PatientReportDetails] AS PRD ON PR.patientReportID = PRD.patientReportID
		AND LT.testID = PRD.testID
WHERE
	 PR.[labNo] = @labNo
	 AND LD.[labDeptID] = @labDeptID  AND PRD.[testResult] != '0' AND LR.reportName !='Widal' AND LD.labDeptName = 'Special Chemistry'
END


GO
/****** Object:  StoredProcedure [dbo].[Report_TestCategoryWiseReport]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Report_TestCategoryWiseReport]
@dateFrom datetime, @dateTo datetime
as
begin
select ISNULL(tstCat.testcategoryName,'') 'testcategoryName', 
ISNULL(COUNT(tstCat.testcategoryName),0) 'tstCount', 
ISNULL(sum(patrep.totalAmount),0) 'totalAmount'
from 
PatientReports patrep
inner join LabReports lbrep on lbrep.reportID=patrep.reportID
inner join TestCategory tstCat on tstCat.testcategoryID=lbrep.TestCategoryID
where
(CONVERT(date,patrep.crtDate) between CONVERT(date,@dateFrom) and CONVERT(date,@dateTo))
group by tstCat.testcategoryName
order by tstCat.testcategoryName

end
GO
/****** Object:  StoredProcedure [dbo].[Report_TestReport_Count]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Report_TestReport_Count]
	@reportID int,
	@dtStart datetime,
	@dtEnd datetime,
	@userName nvarchar(50)
AS
BEGIN

SELECT
	ISNULL(COUNT(PR.[reportID]),0) AS ReportCount, LR.[reportName] 
FROM [PatientReports] AS PR
	INNER JOIN [LabReports] AS LR ON LR.[reportID] = PR.[reportID]
WHERE
	(0 = @reportID OR PR.[reportID] LIKE @reportID)
AND	('All' = @userName OR PR.[crtBy] LIKE @userName)
AND	PR.[crtDate] BETWEEN @dtStart AND @dtEnd

GROUP BY 
	LR.[reportName]


END



GO
/****** Object:  StoredProcedure [dbo].[Report_TestReportByDepartment]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Report_TestReportByDepartment]
(
	@labNo nvarchar(50)  , @labDeptID int
)
AS
BEGIN
SELECT
	P.[patientName]
	, P.[dob], ISNULL(FLOOR(DATEDIFF(Year,P.[dob],GETDATE())),0) AS AGE
	,P.[patAge]
	,P.[ageType]
	, P.[gender]
	, P.[patientCode]
	, LR.[reportID]
	, LR.[reportName]
	,LR.[isPrintOnNextPage] AS isPrintOnNextPage
	,LR.[isHidden] AS isHidden
	,LR.reportDesc AS repComments
	, LT.[testName]
	, PR.[patientReportID]
	, PR.[reportingDate]
	, PR.[deliveryDate]
	, PR.[labNo]
	,PR.[ward]
	,PR.[bed]
	,PR.[discountRate]
	,PR.[opd8]
	,PR.[deptCode]
	, LT.[testID]
	, LD.labDeptName
	, LD.labDeptID
	, LT.[testName]
	, LT.[testUnit]
	, LT.normalRange
	,LT.[heading]
	, PRD.[testResult]
	, PRD.[patientReportID]
	, PRD.[comments]
	,PRD.[bacteria]
	,PRD.[verifiyBy]
	,PRD.[crtBy]
	,PRD.[crtDate]
	, LT.[testID]
	,D.[docName]
	,pr.[comments] AS bookingComments
FROM
	[PatientReports] AS PR
	INNER JOIN [Patients] AS P ON P.[patientID] = PR.[patientID]
	Left Outer JOIN [Doctors] AS D ON D.[docID] = Pr.[docID]
	INNER JOIN [LabReports] AS LR ON LR.[reportID] = PR.[reportID]
	INNER JOIN [ReportTests] AS RT ON RT.[reportID] = LR.[reportID]
	INNER JOIN [LabTests] AS LT ON LT.[testID] = RT.[testID]
	INNER JOIN LabDepartment AS LD ON LR.labDeptID = LD.labDeptID
	INNER JOIN [PatientReportDetails] AS PRD ON PR.patientReportID = PRD.patientReportID
		AND LT.testID = PRD.testID
WHERE
	 PR.[labNo] = @labNo
	 AND LD.[labDeptID] = @labDeptID  AND PRD.[testResult] != '0' AND LR.reportName !='Widal' AND LD.labDeptName != 'Special Chemistry'
END

GO
/****** Object:  StoredProcedure [dbo].[Report_TestReports]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Report_TestReports]
	@labNo nvarchar(50),
	@reportID int
AS
BEGIN
	
SELECT
	P.[patientName], 
	P.[dob], 
	P.[gender],
	PRD.[crtBy]
	,PR.[labNo]
	,PRD.[testResult]
	,LR.[reportName]
	,LT.[testName], 
	LT.[testUnit], 
	LT.[normalRange]
	,PRD.[testResult], 
	PRD.[comments]
FROM [PatientReportDetails]  AS PRD
INNER JOIN [PatientReports] AS PR ON PR.[patientReportID]=PRD.[patientReportID]
INNER JOIN [Patients] AS P ON P.[patientID] = PR.[patientID]

INNER JOIN [LabReports] AS LR ON LR.[reportID] = PR.[reportID]
INNER JOIN [LabTests] AS LT ON LT.[testID] =PRD.[testID]

WHERE
	 PR.[labNo] = @labNo
AND PR.[reportID] = @reportID

END

GO
/****** Object:  StoredProcedure [dbo].[Report_TestWisePendingReport]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report_TestWisePendingReport] --6087,'2/1/2017 12:00:00 AM','2/1/2017 11:59:00 PM'
	(
	@reportID int,
	@startDate Datetime,
	@endDate Datetime
)
AS
	SELECT 
	PR.crtDate AS[Date]
	,PR.crtBy
	,PR.labNo
	,case when discountRate = 100 AND opd8 IS NULL then 'Free' when discountRate > 0 AND opd8 IS NULL then 'Disc' when discountRate IS NULL AND opd8 IS NULL then 'Cash' else 'Opd-8' END AS Stat
	,p.patientName AS [Patient]
	,lr.reportName
	,pr.reportID
	,PRD.patientReportID
	,PRD.test AS testName
	,@startDate AS startDate 
	,@endDate AS endDate
	,PRD.testResult
	,PR.comments
	--,PR.crtBy
	From 
	PatientReports AS PR
	LEFT JOIN PatientReportDetails AS PRD ON PRD.[patientReportID] = PR.patientReportID 
INNER JOIN Patients as p ON p.patientID =  PR.patientID
LEFt JOIN LabTests AS test ON test.testID = PRD.testID
LEFt JOIN ReportTests AS rt ON rt.testID = test.testID
LEFt JOIN LabReports AS lr ON lr.reportID = rt.reportID
--	where (PR.crtDate >= @startDate AND PR.crtDate <= @endDate) and (lr.reportID = @reportID ) AND PR.patientReportID Not in(select prd1.patientReportID from PatientReportDetails as prd1 INNER JOIN PatientReports as PR on prd1.patientReportID = PR.patientReportID)
where PR.crtDate >= @startDate AND PR.crtDate <= @endDate AND  PR.ReportID = @reportID
AND PR.patientReportID not in (select prd1.patientReportID from PatientReportDetails as prd1 INNER JOIN PatientReports as PR on prd1.patientReportID = PR.patientReportID)

ORDER BY PR.labNo
	
RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[ReportTests_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReportTests_Delete]
(
	@reportTestID int
)
AS
BEGIN
DELETE FROM 
	ReportTests
WHERE
	reportTestID = @reportTestID
END







GO
/****** Object:  StoredProcedure [dbo].[ReportTests_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReportTests_Insert]
(
	@reportID int, @testID int, @active bit,@ordinal int
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @reportID = 0 BEGIN SET @reportID = NULL END;
IF @testID = 0 BEGIN SET @testID = NULL END;
IF @ordinal = 0 BEGIN SET @ordinal = NULL END;

END;

INSERT INTO [ReportTests] (
	[reportID], [testID], [active],[ordinal]
) VALUES (
	@reportID, @testID, @active,@ordinal
)

SET @ReturnValue = (select IDENT_CURRENT('ReportTests'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[ReportTests_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReportTests_Select]
(
	@reportTestID int, @reportID int, @testID int , @active bit,@ordinal int
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [ReportTests];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[reportTestID], 0) AS [reportTestID]
	,ISNULL(a.[reportID], 0) AS [reportID]
	,ISNULL(a.[testID], 0) AS [testID]
	,ISNULL(a.[active], 1) AS [active]
	,CONVERT(decimal(7,2),@PageCount) AS [PageCount]
	,ISNULL(r.reportName, '') AS [reportName]
	,ISNULL(t.testName, '') AS [testName]
	,ISNULL(t.testUnit, '') AS [testUnit]
	,ISNULL(t.normalRange, '') AS [normalRange]
	,ISNULL(t.heading, '') AS [heading]
	,ISNULL(a.[ordinal], 0) AS [ordinal]
FROM
	[ReportTests] AS a
	INNER JOIN LabReports AS r ON a.reportID = r.reportID
	INNER JOIN LabTests AS t ON a.testID = t.testID
WHERE
	(0 = @reportTestID OR a.[reportTestID] LIKE @reportTestID)
	AND (0 = @reportID OR a.[reportID] LIKE @reportID)
	AND (0 = @testID OR a.[testID] LIKE @testID)
	AND (1 = @active OR a.[active] LIKE @active)
	AND (0 = @ordinal OR a.[ordinal] LIKE @ordinal)
	--AND (ISNULL(a.[active],1) = 1)
ORDER BY
	a.[reportTestID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[ReportTests_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReportTests_Update]
(
	@reportTestID int, @reportID int, @testID int, @active bit,@ordinal int
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @reportID = 0 BEGIN SET @reportID = NULL END;
IF @testID = 0 BEGIN SET @testID = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @ordinal = 0 BEGIN SET @ordinal = NULL END;

END;

UPDATE
	[ReportTests]
SET
	[reportID] = @reportID, [testID] = @testID, [active] = @active 
WHERE
	[reportTestID] = @reportTestID
END
GO
/****** Object:  StoredProcedure [dbo].[Roles_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Roles_Delete]
(
	@roleID int
)
AS
BEGIN
DELETE FROM 
	Roles
WHERE
	roleID = @roleID
END







GO
/****** Object:  StoredProcedure [dbo].[Roles_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Roles_Insert]
(
	@roleName varchar(50), @roleDesc varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @roleName = '' BEGIN SET @roleName = NULL END;
IF @roleDesc = '' BEGIN SET @roleDesc = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

INSERT INTO [Roles] (
	[roleName], [roleDesc], [active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@roleName, @roleDesc, @active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('Roles'))
Return @ReturnValue
END







GO
/****** Object:  StoredProcedure [dbo].[Roles_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Roles_Select]
(
	@roleID int, @roleName varchar(50), @roleDesc varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Roles];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[roleID], 0) AS [roleID]
	,ISNULL(a.[roleName], '') AS [roleName]
	,ISNULL(a.[roleDesc], '') AS [roleDesc]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[Roles] AS a
WHERE
	(0 = @roleID OR a.[roleID] LIKE @roleID)
	AND ('' = @roleName OR a.[roleName] LIKE @roleName)
	AND ('' = @roleDesc OR a.[roleDesc] LIKE @roleDesc)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[roleID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END



GO
/****** Object:  StoredProcedure [dbo].[Roles_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Roles_Update]
(
	@roleID int, @roleName varchar(50), @roleDesc varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @roleName = '' BEGIN SET @roleName = NULL END;
IF @roleDesc = '' BEGIN SET @roleDesc = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

UPDATE
	[Roles]
SET
	[roleName] = @roleName, [roleDesc] = @roleDesc, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[roleID] = @roleID
END







GO
/****** Object:  StoredProcedure [dbo].[Select_AllReportREsult_Labno]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_AllReportREsult_Labno]
(
	@labNo Varchar(50)	
)
AS
	SELECT 
	PRDL.[PRDID],
	PRDL.[patientReportID],
	PRDL.[testID],
	PRDL.[testResult],
	PRDL.[comments],
	PRDL.[crtBy],
	PRDL.[crtDate],
	PRDL.[modBy],
	PRDL.[modDate],
	PRDL.[bacteria]
	From 
	PatientReportDetails AS PRDL 
	INNER JOIN PatientReports AS PR ON PR.[patientReportID] = PRDL.[patientReportID]
	WHERE 
	PR.[labNo] = @labNO
RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[Select_BookedTestByname]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_BookedTestByname]
(
	@reportID int,
	@startDate Datetime,
	@endDate Datetime
)

AS
	SELECT 
	PR.labNo
	,P.patientName AS [Patient]
	,case when discountRate = 100 AND opd8 IS NULL then 'Free' when discountRate > 0 AND opd8 IS NULL then 'Disc' when discountRate IS NULL AND opd8 IS NULL then 'Cash' else 'Opd-8' END AS Stat
	,LR.reportName
	,PR.crtDate AS [Date]
	,@startDate AS startDate 
	,@endDate AS endDate
	,PR.crtBy
	From 
	PatientReports AS PR
	INNER JOIN LabReports AS lr ON lr.reportID = PR.reportID
	INNER JOIN Patients AS p ON p. patientID = PR.patientID
	WHERE 
	PR.reportID = @reportID AND
	PR.crtDate Between @startDate AND @endDate
	
	Order by PR.labNo

RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[Select_CheckedReports_date_dept]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_CheckedReports_date_dept]
(
	@labNo varchar(50),@deptID int
)
AS
	SELECT 
	PR.[labNo],
	lr.[reportName],
	MAX(PRDL.[modDate]) AS modDate
	From 
	[PatientReports] AS PR
	INNER JOIN [LabReports] AS lr ON lr.reportID = PR.reportID
	INNER JOIN [PatientReportDetails] AS PRDL ON PRDL.patientReportID = PR.patientReportID
	WHERE
	PR.labNo =@labNo
	AND
	lr.labDeptID = @deptID
	AND 
	PRDL.[verifiyBy] != ''

	Group By PR.labNo,lr.reportName

RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[Select_getPatientBydepart]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_getPatientBydepart]
(
	@startDate Datetime,
	@endDate Datetime,
	@deptID int
)
AS

	SELECT 
	Pr.labNo,
	P.patientName,
	MAX(PR.reportingDate) AS crtDate
	From 
	PatientReports As Pr
	INNER JOIN Patients AS P ON P.patientID = PR.patientID
	INNER JOIN LabReports As lr ON lr.reportID = PR.reportID
	LEFT JOIN PatientReportDetails AS PRDL ON PRDL.patientReportID = PR.patientReportID 
	Where 
	lr.labDeptID = @deptID --2009
	AND
	(PR.[crtDate] Between @startDate AND @endDate)--'9/28/2016 12:00:00 AM' AND '9/28/2016 11:59:00 PM')
	AND
	PR.active = 0
	AND
	PRDL.verifiyBy IS NULL 
	Group By
	PR.labNo,P.patientName
	ORDER BY Pr.labNo

RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[Select_LabReports_DeptID]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_LabReports_DeptID] 
(
	 @deptID int
)
AS BEGIN
	SELECT
	PR.[reportID],
	PR.[labNo],
	rep.[reportName]

	From PatientReports AS PR
	INNER JOIN LabReports AS rep ON rep.reportID=PR.reportID
	WHERE	 
	(rep.labDeptID = @deptID OR 0 = @deptID) AND PR.active = 0 


END

GO
/****** Object:  StoredProcedure [dbo].[Select_PatientDetails]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_PatientDetails]
(
		@labNo nvarchar(50)  --, @labDeptID int
)
AS
	SELECT 
	P.[patientName]
	,P.[patAge]
	,P.[ageType]
	, P.[gender]
	, MAX(PR.[reportingDate]) AS reportingDate
	, MAX(PR.[deliveryDate]) AS deliveryDate
	, PR.[labNo]
	,PR.[ward]
	,PR.[bed]
	,PR.[opd8]
	,PR.[deptCode]
	, LD.labDeptName
	,LD.labDeptID
	,D.[docName]
	,pr.[comments] AS bookingComments
	,PRD.[crtBy]
	,MAX(PRD.[crtDate]) AS crtDate
	,PR.[reportID] AS reportID
	,ISNULL(LR.[isPrintOnNextPage],1) AS isPrintOnNextPage
	,LR.[isHidden] AS isHidden
	From 
	PatientReports AS PR
	INNER JOIN [Patients] AS P ON P.[patientID] = PR.[patientID]
	Left Outer JOIN [Doctors] AS D ON D.[docID] = PR.[docID]
	INNER JOIN [LabReports] AS LR ON LR.[reportID] = PR.[reportID]
	INNER JOIN LabDepartment AS LD ON LR.labDeptID = LD.labDeptID
	INNER JOIN [PatientReportDetails] AS PRD ON PR.patientReportID = PRD.patientReportID

	Where PR.labNo = @labNo

	GROUP BY Pr.labNo,P.patientName,P.patAge,P.ageType,PR.ward,PR.bed,PR.opd8,PR.deptCode,LD.labDeptName,LD.labDeptID,
	D.docName,PR.comments,PR.crtBy,P.gender,PRD.crtBy,PR.[reportID],LR.[isPrintOnNextPage],LR.[isHidden]

RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[Select_PatientReportRecord]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_PatientReportRecord]
	@labDeptId int ,
	@labno varchar(50)
AS
	SELECT 
	
	
	--PR.[reportID],
	Prd.[patientReportID],
	Pr.[reportID],
	Prd.[testID],
	Pr.[labNo],
	lb.[testName],
	Prd.[testResult],
	Prd.[bacteria],
	lb.[testUnit],
	lb.[normalRange]
	,lb.[heading]
	,Prd.[comments]
	,Prd.[PRDID]
	,PR.[deptCode]
	

	From PatientReportDetails AS Prd
	
	INNER JOIN PatientReports As Pr ON Pr.patientReportID = Prd.patientReportID
	INNER JOIN ReportTests AS rs ON rs.reportID = Pr.reportID
	INNER Join LabTests As lb ON lb.testID = rs.testID

	Where 
	Pr.[patientReportID] = Prd.patientReportID 
	AND rs.[reportID] = Pr.[reportID] 
	AND rs.testID = Prd.[testID] 
	--AND PR.[reportID] = @reportID 
	AND Pr.labNo = @labno
	AND lb.[labDeptID]  = @labDeptId


RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[Select_WidalReport]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_WidalReport]
(
	@labNo varchar(50),@labDeptID int
)
AS
	SELECT heading,[1:20] AS test1,[1:40] AS test2,[1:80] AS test3, [1:160] AS test4,[1:320] AS test5,comments FROM (
	
	Select 
	prd.test
	,prd.testResult
	, lt.heading
	,prd.comments

	from PatientReports AS pr
	INNER JOIN Patients P ON P.patientID = PR.patientID
	INNER JOIN PatientReportDetails AS prd ON pr.patientReportID = prd.patientReportID
	INNER JOIN LabTests AS lt ON prd.testID = lt.testID
	INNER JOIN LabReports AS rep ON rep.reportID = PR.reportID
	INNER JOIN LabDepartment AS dep ON dep.labDeptID = rep.labDeptID
	where Pr.labNo = @labNo AND dep.labDeptID = @labDeptID AND rep.reportName = 'Widal'
	
) AS Tbl1 
Pivot ( Count(testResult) FOR test IN ([1:20],[1:40],[1:80],[1:160],[1:320])) AS pvt 
--Order by heading DESC
RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[SelectAllDepartmentTest]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllDepartmentTest]
(
	@labdeptID int
	,@startDate Datetime
	,@endDate Datetime
)
AS

	SELECT 
	Pr.patientReportID
	,Pr.labNo
	,P.patientName
	,Prd.testID
	--,Prd.test AS testName
	,lt.shortName testName
	,Prd.testResult
	--,@startDate AS startDate
	--,@endDate AS endDate
	,lt.orderNo
	From 
	PatientReportDetails AS Prd 
	INNER JOIN PatientReports AS Pr ON Pr.patientReportID = Prd.patientReportID
	INNER JOIN Patients As P ON P.patientID = PR.patientID
	INNER JOIN LabTests AS lt ON lt.testID = Prd.testID
	
	Where lt.labDeptID = @labdeptID 
	AND Prd.crtDate Between @startDate AND @endDate
	
	Order by lt.orderNo asc --Pr.labNo ,P.patientName ,
 
	RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[SelectAllTestResult]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectAllTestResult]
(
	@reportID int,
	@startDate Datetime,
	@endDate Datetime
)
AS
	SELECT 
	PRD.crtDate AS[Date]
	,PRD.crtBy
	,PR.labNo
	,case when discountRate = 100 AND opd8 IS NULL then 'Free' when discountRate > 0 AND opd8 IS NULL then 'Disc' when discountRate IS NULL AND opd8 IS NULL then 'Cash' else 'Opd-8' END AS Stat
	,p.patientName AS [Patient]
	,lr.reportName
	,lr.reportID
	,PRD.test AS testName
	,@startDate AS startDate 
	,@endDate AS endDate
	,PRD.testResult
	,PR.comments
	--,PR.crtBy
	From 
	PatientReports AS PR
	INNER JOIN PatientReportDetails AS PRD ON PRD.[patientReportID] = PR.patientReportID
	INNER JOIN Patients AS p ON p.patientID = PR.patientID
	INNER JOIN LabTests AS test ON test.testID = PRD.testID
	INNER JOIN ReportTests AS rt ON rt.testID = test.testID
	INNER JOIN LabReports AS lr ON lr.reportID = rt.reportID
	where PRD.crtDate Between @startDate AND @endDate AND lr.reportID = @reportID AND PRD.testResult != '0'

	ORDER BY PR.labNo
	--GRoup BY PRD.crtDate,PRD.crtBy,PR.labNo,PR.discountRate,p.patientName,lr.reportName,test.testName,PRD.testResult,PR.comments,PR.opd8,lr.reportID

RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[SelectAllUserLogin]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectAllUserLogin]
(
	@startDate datetime,@endDate datetime,@userID int
)
AS
	SELECT 
	us.userName,
	uslogs.[logTime],
	uslogs.[logOut]
	From [UserLog] As uslogs
	INNER JOIN Users us ON us.userID = uslogs.userID
	Where uslogs.[userID]  = @userID  AND (logTime Between @startDate And @endDate )

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[Shift_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Shift_Delete]
(
	@shftId int
)
AS
BEGIN
DELETE FROM 
	Shift
WHERE
	shftId = @shftId
END


GO
/****** Object:  StoredProcedure [dbo].[Shift_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Shift_Insert]
(
	@shifts varchar(20), @dtFrom datetime, @dtTo datetime, @active bit, @crtBy varchar(20), @crtDate datetime, @modBy varchar(20), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @shifts = '' BEGIN SET @shifts = NULL END;
IF @dtFrom = '1/1/1900' BEGIN SET @dtFrom = NULL END;
IF @dtTo = '1/1/1900' BEGIN SET @dtTo = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

INSERT INTO [Shift] (
	[shifts], [dtFrom], [dtTo], [active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@shifts, @dtFrom, @dtTo, @active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('Shift'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[Shift_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Shift_Select]
(
	@shftId int, @shifts varchar(20), @dtFrom datetime, @dtTo datetime, @active bit, @crtBy varchar(20), @crtDate datetime, @modBy varchar(20), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Shift];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[shftId], 0) AS [shftId]
	,ISNULL(a.[shifts], '') AS [shifts]
	,ISNULL(a.[dtFrom] , '1/1/1900') AS [dtFrom]
	,ISNULL(a.[dtTo],  '1/1/1900') AS [dtTo]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	--,CONVERT(decimal(7,2),@PageCount) AS [PageCount]
FROM
	[Shift] AS a
WHERE
	(0 = @shftId OR a.[shftId] LIKE @shftId)
	AND ('' = @shifts OR a.[shifts] LIKE @shifts)
	AND ('1/1/1900' = @dtFrom OR a.[dtFrom] LIKE @dtFrom)
	AND ('1/1/1900' = @dtTo OR a.[dtTo] LIKE @dtTo)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[shftId]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[Shift_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Shift_Update]
(
	@shftId int, @shifts varchar(20), @dtFrom datetime, @dtTo datetime, @active bit, @crtBy varchar(20), @crtDate datetime, @modBy varchar(20), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @shifts = '' BEGIN SET @shifts = NULL END;
IF @dtFrom = '1/1/1900' BEGIN SET @dtFrom = NULL END;
IF @dtTo = '1/1/1900' BEGIN SET @dtTo = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

UPDATE
	[Shift]
SET
	[shifts] = @shifts, [dtFrom] = @dtFrom, [dtTo] = @dtTo, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[shftId] = @shftId
END


GO
/****** Object:  StoredProcedure [dbo].[TestCategory_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestCategory_Insert]
(
	 @testcategoryName varchar(10),@Discription varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @testcategoryName = '' BEGIN SET @testcategoryName = NULL END;
IF @Discription = '' BEGIN SET @Discription = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

INSERT INTO [TestCategory] (
	[testcategoryName], [Discription],[active], [crtBy], [crtDate], [modBy], [modDate]
) VALUES (
	@testcategoryName, @Discription,@active, @crtBy, @crtDate, @modBy, @modDate
)

SET @ReturnValue = (select IDENT_CURRENT('TestCategory'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[TestCategory_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TestCategory_Select]
(
	@testcategoryId int, @testcategoryName varchar(10),@Discription varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
	, @pageNumber int, @pageSize int
)
AS
BEGIN
		DECLARE @pageCount int
	    Select @pageCount = (COUNT(*)) from [TestCategory];
		IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
		IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
   	ISNULL(a.[testcategoryId], 0) AS [TestcategoryId]
	,ISNULL(a.[testcategoryName], '') AS [testcategoryName]
	,ISNULL(a.[Discription], '') AS [Discription]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]

	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[TestCategory] AS a
WHERE
	(0 = @testcategoryId OR a.[testcategoryId] LIKE @testcategoryId)
	AND ('' = @testcategoryName OR a.[testcategoryName] LIKE @testcategoryName)
	AND ('' = @Discription OR a.[Discription] LIKE @Discription)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)

ORDER BY
	a.[testcategoryId]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[TestCategory_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestCategory_Update]
(
@testcategoryId int, @testcategoryName varchar(10),@Discription varchar(100), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @testcategoryName = '' BEGIN SET @testcategoryName = NULL END;
IF @Discription = '' BEGIN SET @Discription = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;

END;

UPDATE
	[TestCategory]
SET
	[testcategoryName] = @testcategoryName, [Discription] = @Discription, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate
WHERE
	[testcategoryID] = @testcategoryId
END
GO
/****** Object:  StoredProcedure [dbo].[TestFilms_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestFilms_Delete]
(
	@Id int
)
AS
BEGIN
DELETE FROM 
	TestFilms
WHERE
	Id = @Id
END


GO
/****** Object:  StoredProcedure [dbo].[TestFilms_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TestFilms_Insert]
(
	@filmId int, @NoOfItems int, @testID int, @IsActive bit, @crtBy int, @crtDate datetime, @modby int, @modDate datetime ,@reportID int,
	@labDeptID int
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @filmId = 0 BEGIN SET @filmId = NULL END;
IF @NoOfItems = 0 BEGIN SET @NoOfItems = NULL END;
IF @testID = 0 BEGIN SET @testID = NULL END;
IF @IsActive = 1 BEGIN SET @IsActive = NULL END;
IF @crtBy = 0 BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modby = 0 BEGIN SET @modby = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @reportID = 0 BEGIN SET @reportID = NULL END;
IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END;

END;

INSERT INTO [TestFilms] (
	[filmId], [NoOfItems], [testID], [IsActive], [crtBy], [crtDate], [modby], [modDate] , [labDeptID],[reportID]
) VALUES (
	@filmId, @NoOfItems, @testID, @IsActive, @crtBy, @crtDate, @modby, @modDate ,@labDeptID ,@reportID
)

SET @ReturnValue = (select IDENT_CURRENT('TestFilms'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[TestFilms_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestFilms_Select]
(
	@Id int, @filmId int, @NoOfItems int, @testID int, @IsActive bit, @crtBy int, @crtDate datetime, @modby int, @modDate datetime,
	@reportID int,@labDeptID int , @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [TestFilms];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;


SELECT
	 ISNULL(Tf.[Id], 0) AS [Id]
	,ISNULL(ft.[filmId], 0) AS [filmId]
    ,ISNULL(Ft.[Size], '') AS [FilmSize]
    ,ISNULL(Tf.[NoOfItems], 0) AS [NoOfItems]
	,ISNULL(Tf.[IsActive], 1) AS [IsActive]
	,ISNULL(Tf.[crtBy], 0) AS [crtBy]
	,ISNULL(Tf.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(Tf.[modby], 0) AS [modby]
	,ISNULL(Tf.[modDate], '1/1/1900') AS [modDate],

	--,CONVERT(decimal(7,2),@PageCount) AS [PageCount],

      ISNULL(Lr.[reportID], 0) AS [ReportId],
	  ISNULL(Ld.[labDeptID], 0) AS[DepartId],
	  ISNULL(lt.[testID], 0) AS [testID],
      ISNULL(Lr.[reportName], '') AS [ReportName],
	  ISNULL(lt.[testCode], '') AS [TestCode],
	  ISNULL(lt.[testName], '') AS [Test],
	  ISNULL(ld.[labDeptName], '') AS [DeptName]
from TestFilms Tf
INNER JOIN ReportTests Rt ON rt.testID = Tf.testID
INNER JOIN LabReports Lr ON lr.reportID = Tf.reportID
INNER JOIN LabDepartment Ld ON ld.labDeptID = lr.labDeptID
INNER JOIN LabTests Lt ON lt.testID = rt.testID
left JOIN FilmSize Ft ON Ft.filmId = tf.filmId
	--[TestFilms] AS a
	--left Join 
	--[FilmSize]  As f on f.filmId = a.filmId
	--INNER Join 
	--[LabTests]  As l on l.testID = a.testID
WHERE
	(0 = @Id OR Tf.[Id] LIKE @Id)
	AND (0 = @filmId OR Tf.[filmId] LIKE @filmId)
	AND (0 = @NoOfItems OR Tf.[NoOfItems] LIKE @NoOfItems)
	AND (0 = @testID OR Tf.[testID] LIKE @testID)
	AND (0 = @reportID OR Tf.[reportID] LIKE @reportID)
	AND (0 = @labDeptID OR Tf.[labDeptID] LIKE @labDeptID)
	AND (1 = @IsActive OR Tf.[IsActive] LIKE @IsActive)
	AND (0 = @crtBy OR Tf.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR Tf.[crtDate] LIKE @crtDate)
	AND (0 = @modby OR Tf.[modby] LIKE @modby)
	AND ('1/1/1900' = @modDate OR Tf.[modDate] LIKE @modDate)

ORDER BY
	Tf.[Id]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[TestFilms_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestFilms_Update]
(
	@Id int, @filmId int, @NoOfItems int, @testID int, @IsActive bit, @crtBy int, @crtDate datetime, @modby int, @modDate datetime ,@reportID int, @labDeptID int
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @filmId = 0 BEGIN SET @filmId = NULL END;
IF @NoOfItems = 0 BEGIN SET @NoOfItems = NULL END;
IF @testID = 0 BEGIN SET @testID = NULL END;
IF @IsActive = 1 BEGIN SET @IsActive = NULL END;
IF @crtBy = 0 BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modby = 0 BEGIN SET @modby = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @labDeptID= 0 BEGIN SET @labDeptID = NULL END;
IF @reportID = 0 BEGIN SET @reportID = NULL END;

END;

UPDATE
	[TestFilms]
SET
	[filmId] = @filmId, [NoOfItems] = @NoOfItems, [testID] = @testID, [IsActive] = @IsActive, [crtBy] = @crtBy, [crtDate] = @crtDate, [modby] = @modby, [modDate] = @modDate ,[reportID] = @reportID,[labDeptID] = @labDeptID
WHERE
	[Id] = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[TestPreview_PatientReportbyLabNo]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TestPreview_PatientReportbyLabNo]
(
@labNo varchar(50)
)
AS
	SELECT 
	PR.[reportID],
	rep.[reportName]

	From 
	[PatientReports] AS PR
	INNER JOIN [LabReports] rep ON rep.[reportID] = PR.[reportID]

	Where PR.[labNo] = @labNo

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[TestRateList]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TestRateList]

AS
	SELECT 
	dept.labDeptID
	 ,dept.labDeptName
	,Lr.reportName 
	,Lr.charges
	,Lr.modDate
	From 
	LabReports AS Lr
	INNER JOIN LabDepartment As dept ON dept.labDeptID = Lr.labDeptID
	Where Lr.active IS NULL OR Lr.active = 1
	Order BY dept.labDeptName 

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[TestWiseDetailSummary]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[TestWiseDetailSummary]
	@reportStartDate DateTime, 
 @reportEndDate DateTime,
@userName Varchar(255)
AS
	SELECT 
	PR.[labNo]
	,p.patientName
	--,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd 
	,CASE WHEN discountRate = 50  THEN 'Disc' When discountRate  is null then 'Cash' Else ''  END AS Stat
	,dr.[docName]
	,lr.[reportName] AS reportName
	--,lr.[charges]
	,Pr.[totalAmount] AS [charges]
	,PR.[crtBy]
	,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd
	FROM
	[PatientReports] AS PR
	INNER JOIN [Patients] p ON p.[patientID] = PR.[patientID]
	INNER JOIN [LabReports] lr ON lr.[reportID] = PR.[reportID]
	LEFT OUTER JOIN [Doctors] dr ON dr.[docID] = PR.[docID]

	
	where 
	--PR.[crtBy] = 'Haris'
	('--ALL--' = @userName OR PR.[crtBy] LIKE @userName )
	AND (PR.[discountRate] = '50' Or Pr.[discountRate] is null)
	AND PR.crtDate BETWEEN @reportStartDate AND @reportEndDate

	--Group By PR.labNo,p.patientName,PR.discountRate

RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[TestWiseDetailSummary_Count]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[TestWiseDetailSummary_Count]
(
@reportStartDate DateTime, 
 @reportEndDate DateTime,
@userName varchar(255)
)
AS

	SELECT 
	PR.[labNo]
	,p.patientName
	,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd 
	,CASE WHEN discountRate = 100  THEN 'Free' Else ''  END AS FreeStatus
	,dr.[docName]
	,lr.[reportName]
	,lr.[charges]
	,PR.[crtBy]
	FROM
	[PatientReports] AS PR
	INNER JOIN [Patients] p ON p.[patientID] = PR.[patientID]
	INNER JOIN [LabReports] lr ON lr.[reportID] = PR.[reportID]
	LEFT OUTER JOIN [Doctors] dr ON dr.[docID] = PR.[docID]

	
	where 
	('--All--' = @userName OR PR.[crtBy] LIKE @userName )
	AND (PR.[discountRate] = '100' )
	AND PR.crtDate BETWEEN @reportStartDate AND @reportEndDate

RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[TestWiseShortSummary]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TestWiseShortSummary]
	@reportStartDate DateTime, 
 @reportEndDate DateTime, @categoryID int

AS
	Select
	SUM(data.freeCount) AS totalfreeCount
	,SUM(data.discCount) AS totaldiscCount
	,SUM(data.cashCount) AS totalcashCount
	,data.reportName
	,MAX(data.dtStart) AS dtStart
	,MAX(data.dtEnd)AS dtEnd
	
	FROM
	(
	SELECT

	lr.[reportName]
	,@reportStartDate AS dtStart ,@reportEndDate AS dtEnd 
	
	,CASE WHEN discountRate = 100  THEN COUNT(PR.[patientReportID]) ELSE 0 END AS freeCount
	,CASE WHEN discountRate = 50  THEN COUNT(PR.[patientReportID]) ELSE 0 END AS discCount
	,CASE WHEN PR.discountRate IS NULL  THEN COUNT(PR.[patientReportID]) ELSE 0 END AS cashCount
	
	From
	[PatientReports] AS PR
	INNER JOIN [LabReports] lr ON lr.[reportID] = PR.[reportID]
	
	WHERE 
	(PR.crtDate BETWEEN @reportStartDate AND @reportEndDate)
	AND(lr.TestCategoryID=@categoryID or @categoryID=0)
	Group By pr.[discountRate],lr.[reportName]
	) AS data
	
	Group By data.[reportName]
	ORDER BY reportName
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[UserLog_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserLog_Delete]
	(
		@logID int
	)
AS
BEGIN
DELETE FROM 
	UserLog
WHERE
	logID = @logID
END



GO
/****** Object:  StoredProcedure [dbo].[UserLog_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UserLog_Insert]
		 @logID int, @userID int, @logTime Datetime, @logOut Datetime
AS
BEGIN
	
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @logID= 0 BEGIN SET @logID = NULL END;
IF @userID= '' BEGIN SET @userID = NULL END;
IF @logTime = '1/1/1900' BEGIN SET @logTime = NULL END;
IF @logOut = '1/1/1900' BEGIN SET @logOut= NULL END;

END;

IF @logTime IS NOT NULL BEGIN SET @logTime = GETDATE() END;
IF @logOut IS NOT NULL BEGIN SET @logOut = GETDATE() END;

INSERT INTO [UserLog](
[logID], [userID], [logTime], [logOut]
) Values(
	@LogID, @userID, @logTime, @logOut
)

SET @ReturnValue = (select IDENT_CURRENT('UserLog'))
Return @ReturnValue
END


GO
/****** Object:  StoredProcedure [dbo].[UserLog_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserLog_Select]
		@logID int, @userID int, @logTime Datetime, @logOut Datetime, @pageNumber int, @pageSize int
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [UserLog];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;
SELECT
	ISNULL(u.[logID], 0) AS [logID]
	,ISNULL(u.[userID], '') AS [userID]
	,ISNULL(u.[logTime], '1/1/1900') AS [logTime]
	,ISNULL(u.[logOut], '1/1/1900') AS [logOut]
	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
[UserLog] AS u
WHERE
	(0 = @logID OR u.[logID] LIKE @logID)
	AND ('' = @userID OR u.[userID] LIKE @userID)
	AND ('1/1/1900' = @logTime OR u.[logTime] between  @logTime and GETDATE())
	AND ('1/1/1900' = @logOut OR u.[logOut] between  @logOut and GETDATE())

ORDER BY
	u.[logID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END



GO
/****** Object:  StoredProcedure [dbo].[UserLog_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UserLog_Update]
		@logID int, @userID int, @logTime Datetime, @logOut Datetime
AS

BEGIN
DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @userID= '' BEGIN SET @userID = NULL END;
IF @logTime = '1/1/1900' BEGIN SET @logTime = NULL END;
IF @logOut = '1/1/1900' BEGIN SET @logOut = NULL END;
END;

IF @logOut IS NOT NULL BEGIN SET @logOut = GETDATE() END;

UPDATE 
	[UserLog]
SET
	[userID] = @userID  , [logTime] = @logTime,[logOut]=@logOut 
WHERE
	[logID] = @logID

END


GO
/****** Object:  StoredProcedure [dbo].[UserLog_UserLastRecord]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserLog_UserLastRecord]
(
	@userID int
)
AS
	SELECT 
	MAX(us.[logID])AS logID,
	us.[userID],
	MAX(us.[logTime])AS logTime,
	us.[logOut]

	FROM [UserLog] AS us

	Where us.[userID]=@userID

	GROUP BY us.userID,us.logOut

RETURN 0



GO
/****** Object:  StoredProcedure [dbo].[Users_Delete]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Users_Delete]
(
	@userID int
)
AS
BEGIN
DELETE FROM 
	Users
WHERE
	userID = @userID
END







GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Users_Insert]
(
	@roleID int, @categoryID int,@ShiftID int  ,@labdeptID int, @staffName varchar(50), @userName varchar(50), @password varchar(15), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@isNight bit
)
AS
BEGIN
DECLARE @ReturnValue INT
SET @ReturnValue = 0

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @roleID = 0 BEGIN SET @roleID = NULL END;
IF @labdeptID = 0 BEGIN SET @labdeptID = NULL END;
IF @categoryID =0 BEGIN SET @categoryID = NULL END;
IF @ShiftID =0 BEGIN SET @ShiftID = NULL END;
IF @staffName = '' BEGIN SET @staffName = NULL END;
IF @userName = '' BEGIN SET @userName = NULL END;
IF @password = '' BEGIN SET @password = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @isNight = 0 BEGIN SET @isNight= 0 END;
END;
IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

INSERT INTO [Users] (
	[roleID],[categoryID],[shftId] ,[labdeptID] , [staffName], [userName], [password], [active], [crtBy], [crtDate], [modBy], [modDate],[isNight]
) VALUES (
	@roleID, @categoryID,@ShiftID, @labdeptID , @staffName, @userName, @password, @active, @crtBy, @crtDate, @modBy, @modDate,@isNight
)

SET @ReturnValue = (select IDENT_CURRENT('Users'))
Return @ReturnValue
END
GO
/****** Object:  StoredProcedure [dbo].[Users_Select]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Users_Select] --0,1,0,0,'','','',1,'','1/1/1900' , '' ,'1/1/1900' ,0,1,100
(
	@userID int, @roleID int
	, @categoryID int 
	,@ShiftID int 
	,@labDeptID int, @staffName varchar(50), @userName varchar(50), @password varchar(15), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime,@isNight bit
	, @pageNumber int, @pageSize int
)
AS
BEGIN

DECLARE @PageCount int
SELECT @PageCount = (COUNT(*)) FROM [Users];

IF @pageNumber = 0 OR @pageNumber IS NULL BEGIN SELECT @pageNumber = pageNumber FROM DBConfig END;
IF @pageSize = 0 OR @pageSize IS NULL BEGIN SELECT @pageSize = pageSize FROM DBConfig END;

SELECT
	ISNULL(a.[userID], 0) AS [userID]
	,ISNULL(a.[roleID], 0) AS [roleID]
	,ISNULL(a.[categoryID] , 0) As [categoryID]
	,ISNULL(Cate.[testcategoryName] , '') As [categoryName]
	,ISNULL(a.[shftId] , 0) As [shiftID]
	,ISNULL(Shf.[shifts] , '') As [ShiftName]
	,ISNULL(a.[labDeptID], 0) AS [labDeptID]
	,ISNULL(dept.[labDeptName], 0) AS [labDeptName]
	,ISNULL(a.[staffName], '') AS [staffName]
	,ISNULL(a.[userName], '') AS [userName]
	,ISNULL(a.[password], '') AS [password]
	,ISNULL(a.[active], 1) AS [active]
	,ISNULL(a.[crtBy], '') AS [crtBy]
	,ISNULL(a.[crtDate], '1/1/1900') AS [crtDate]
	,ISNULL(a.[modBy], '') AS [modBy]
	,ISNULL(a.[modDate], '1/1/1900') AS [modDate]
	,ISNULL(a.[isNight], 1) AS [isNight]
	,ISNULL(r.[roleName], '') AS [roleName]
	,CONVERT(decimal(16,2),@PageCount) AS [PageCount]
FROM
	[Users] AS a
	INNER JOIN Roles AS r ON a.roleID = r.roleID
	LEFT OUTER JOIN LabDepartment AS dept ON a.labDeptID = dept.labDeptID
	LEFT OUTER JOIN TestCategory As Cate ON Cate.testcategoryID = a.categoryID
	LEFT OUTER JOIN [Shift] As Shf ON shf.shftId = a.shftId
WHERE
	    (0 = @userID OR a.[userID] LIKE @userID)
	AND (0 = @roleID OR a.[roleID] LIKE @roleID)
	AND (0 = @categoryID OR a.[categoryID] LIKE @categoryID)
	AND (0 = @ShiftID OR a.[shftId] LIKE @ShiftID)
	AND (0 = @labDeptID OR a.[labDeptID] LIKE @labDeptID)
	AND ('' = @staffName OR a.[staffName] LIKE @staffName)
	AND ('' = @userName OR a.[userName] LIKE @userName)
	AND ('' = @password OR a.[password] LIKE @password)
	AND (1 = @active OR a.[active] LIKE @active)
	AND ('' = @crtBy OR a.[crtBy] LIKE @crtBy)
	AND ('1/1/1900' = @crtDate OR a.[crtDate] LIKE @crtDate)
	AND ('' = @modBy OR a.[modBy] LIKE @modBy)
	AND ('1/1/1900' = @modDate OR a.[modDate] LIKE @modDate)
	AND (0 = @isNight OR a.[isNight] LIKE @isNight)

ORDER BY
	a.[userID]
OFFSET @PageSize * (@PageNumber - 1) ROWS
FETCH NEXT @PageSize ROWS ONLY OPTION (RECOMPILE);
END
GO
/****** Object:  StoredProcedure [dbo].[Users_Update]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:			<Author,,Name>
-- Create date: 	<Create Date,,>
-- Description:		<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Users_Update]
(
	@userID int,@categoryID int ,@ShiftID int , @roleID int, @labDeptID int, @staffName varchar(50), @userName varchar(50), @password varchar(15), @active bit, @crtBy varchar(50), @crtDate datetime, @modBy varchar(50), @modDate datetime, @isNight bit
)
AS
BEGIN

DECLARE @allowNull BIT = 0;
SELECT @allowNull = allowNull FROM DBConfig;
IF @allowNull = 1
BEGIN

IF @roleID = 0 BEGIN SET @roleID = NULL END;
IF @categoryID =0 BEGIN SET @categoryID =null END;
IF @ShiftID =0 BEGIN SET @ShiftID =null END;
IF @labDeptID = 0 BEGIN SET @labDeptID = NULL END;
IF @staffName = '' BEGIN SET @staffName = NULL END;
IF @userName = '' BEGIN SET @userName = NULL END;
IF @password = '' BEGIN SET @password = NULL END;
IF @active = 1 BEGIN SET @active = NULL END;
IF @crtBy = '' BEGIN SET @crtBy = NULL END;
IF @crtDate = '1/1/1900' BEGIN SET @crtDate = NULL END;
IF @modBy = '' BEGIN SET @modBy = NULL END;
IF @modDate = '1/1/1900' BEGIN SET @modDate = NULL END;
IF @isNight = 0 BEGIN SET @isNight= 0 END;
END;

IF @crtDate IS NOT NULL BEGIN SET @crtDate = GETDATE() END;
IF @modDate IS NOT NULL BEGIN SET @modDate = GETDATE() END;

UPDATE
	[Users]
SET
	[roleID] = @roleID, [categoryID] = @categoryID ,[shftId] = @ShiftID,[labdeptID] = @labDeptID, [staffName] = @staffName, [userName] = @userName, [password] = @password, [active] = @active, [crtBy] = @crtBy, [crtDate] = @crtDate, [modBy] = @modBy, [modDate] = @modDate, [isNight]=@isNight
WHERE
	[userID] = @userID
END
GO
/****** Object:  StoredProcedure [dbo].[ViewLabTestByReport]    Script Date: 3/15/2018 6:40:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ViewLabTestByReport]
(
	@reportID int
)	
AS
	SELECT 
	ISNULL(a.[reportTestID], 0) AS [reportTestID]
	,ISNULL(a.[reportID], 0) AS [reportID]
	,ISNULL(a.[testID], 0) AS [testID]
	,ISNULL(a.[active], 1) AS [active]
	--,CONVERT(decimal(7,2),@PageCount) AS [PageCount]
	
	,ISNULL(t.testName, '') AS [testName]
	,ISNULL(t.testUnit, '') AS [testUnit]
	,ISNULL(t.normalRange, '') AS [normalRange]
	,ISNULL(t.heading, '') AS [heading]
	From 
	ReportTests AS a
	INNER JOIN LabTests AS t ON t.testID = a.testID
	Where (0 = @reportID OR a.[reportID] LIKE @reportID)
RETURN 0



GO
