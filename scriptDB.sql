USE [master]
GO
/****** Object:  Database [SuperBibliaDB]    Script Date: 09.03.2023 10:36:53 ******/
CREATE DATABASE [SuperBibliaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SuperBibliaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2021\MSSQL\DATA\SuperBibliaDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SuperBibliaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2021\MSSQL\DATA\SuperBibliaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SuperBibliaDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuperBibliaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuperBibliaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SuperBibliaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SuperBibliaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SuperBibliaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SuperBibliaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SuperBibliaDB] SET  MULTI_USER 
GO
ALTER DATABASE [SuperBibliaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SuperBibliaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SuperBibliaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SuperBibliaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SuperBibliaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SuperBibliaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SuperBibliaDB] SET QUERY_STORE = OFF
GO
USE [SuperBibliaDB]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthorBook]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorBook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBook] [int] NOT NULL,
	[idAuthor] [int] NOT NULL,
 CONSTRAINT [PK_AuthorBook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](50) NOT NULL,
	[idPublisher] [int] NOT NULL,
	[NumberOfCopies] [int] NOT NULL,
	[YearPublication] [int] NOT NULL,
	[idGenre] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookStatus]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BookStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colleague]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colleague](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[SeriaPass] [int] NOT NULL,
	[NumberPass] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[idPost] [int] NOT NULL,
 CONSTRAINT [PK_Colleague] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NameGenre] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssuanceBook]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuanceBook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DateIssuance] [date] NOT NULL,
	[DaterReturn] [date] NOT NULL,
	[idUser] [int] NOT NULL,
	[idBook] [int] NOT NULL,
	[idColleague] [int] NULL,
	[idStatus] [int] NULL,
 CONSTRAINT [PK_IssuanceBook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NamePost] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NamePublisher] [nvarchar](50) NOT NULL,
	[DopInformation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09.03.2023 10:36:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([id], [FIO]) VALUES (1, N'Файзрахманов Тимур Ильнурович')
INSERT [dbo].[Author] ([id], [FIO]) VALUES (2, N'Мареев Евгений Николаевич')
INSERT [dbo].[Author] ([id], [FIO]) VALUES (3, N'Арцишевский Андрей Игоревич')
INSERT [dbo].[Author] ([id], [FIO]) VALUES (4, N'Ништяк Егор Алексеевич')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[AuthorBook] ON 

INSERT [dbo].[AuthorBook] ([id], [idBook], [idAuthor]) VALUES (2, 1, 1)
INSERT [dbo].[AuthorBook] ([id], [idBook], [idAuthor]) VALUES (3, 2, 2)
INSERT [dbo].[AuthorBook] ([id], [idBook], [idAuthor]) VALUES (4, 3, 3)
INSERT [dbo].[AuthorBook] ([id], [idBook], [idAuthor]) VALUES (5, 4, 4)
SET IDENTITY_INSERT [dbo].[AuthorBook] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([id], [BookName], [idPublisher], [NumberOfCopies], [YearPublication], [idGenre]) VALUES (1, N'Рушка', 1, 5, 2009, 2)
INSERT [dbo].[Book] ([id], [BookName], [idPublisher], [NumberOfCopies], [YearPublication], [idGenre]) VALUES (2, N'Пончик', 2, 5, 2023, 3)
INSERT [dbo].[Book] ([id], [BookName], [idPublisher], [NumberOfCopies], [YearPublication], [idGenre]) VALUES (3, N'Копия', 1, 4, 2020, 1)
INSERT [dbo].[Book] ([id], [BookName], [idPublisher], [NumberOfCopies], [YearPublication], [idGenre]) VALUES (4, N'Мадриданусик', 2, 4, 2019, 2)
INSERT [dbo].[Book] ([id], [BookName], [idPublisher], [NumberOfCopies], [YearPublication], [idGenre]) VALUES (6, N'Жопные войны', 1, 555, 1111, 1)
INSERT [dbo].[Book] ([id], [BookName], [idPublisher], [NumberOfCopies], [YearPublication], [idGenre]) VALUES (7, N'Наташкино счастье', 2, 3, 2023, 2)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[BookStatus] ON 

INSERT [dbo].[BookStatus] ([id], [StatusName]) VALUES (1, N'Не сдал')
INSERT [dbo].[BookStatus] ([id], [StatusName]) VALUES (2, N'Сдал')
INSERT [dbo].[BookStatus] ([id], [StatusName]) VALUES (3, N'В аренде')
SET IDENTITY_INSERT [dbo].[BookStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Colleague] ON 

INSERT [dbo].[Colleague] ([id], [FIO], [DateOfBirth], [SeriaPass], [NumberPass], [Phone], [idPost]) VALUES (1, N'Ништяк Егор Алексеевич', CAST(N'1002-08-22' AS Date), 1234, 1234124, N'1', 1)
INSERT [dbo].[Colleague] ([id], [FIO], [DateOfBirth], [SeriaPass], [NumberPass], [Phone], [idPost]) VALUES (2, N'Заебись Даниил Владисалович', CAST(N'2002-12-03' AS Date), 4563, 2525245, N'5473246364', 1)
INSERT [dbo].[Colleague] ([id], [FIO], [DateOfBirth], [SeriaPass], [NumberPass], [Phone], [idPost]) VALUES (3, N'Пиздато Евгений Николаевич', CAST(N'3521-12-04' AS Date), 2351, 5234145, N'65252355325', 1)
INSERT [dbo].[Colleague] ([id], [FIO], [DateOfBirth], [SeriaPass], [NumberPass], [Phone], [idPost]) VALUES (7, N'Пиздец Тимур Ильнурович', CAST(N'2023-03-03' AS Date), 4141, 545454545, N'3', 3)
INSERT [dbo].[Colleague] ([id], [FIO], [DateOfBirth], [SeriaPass], [NumberPass], [Phone], [idPost]) VALUES (8, N'zxc Андрей Игоревич', CAST(N'2022-06-21' AS Date), 123121, 12361212, N'4', 3)
SET IDENTITY_INSERT [dbo].[Colleague] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([id], [NameGenre], [Description]) VALUES (1, N'Фантастика', N'Вау')
INSERT [dbo].[Genre] ([id], [NameGenre], [Description]) VALUES (2, N'Ужасы', N'Ой')
INSERT [dbo].[Genre] ([id], [NameGenre], [Description]) VALUES (3, N'Комедия', N'Хаха')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[IssuanceBook] ON 

INSERT [dbo].[IssuanceBook] ([id], [DateIssuance], [DaterReturn], [idUser], [idBook], [idColleague], [idStatus]) VALUES (2, CAST(N'2023-03-06' AS Date), CAST(N'2023-03-09' AS Date), 1, 6, 7, 1)
INSERT [dbo].[IssuanceBook] ([id], [DateIssuance], [DaterReturn], [idUser], [idBook], [idColleague], [idStatus]) VALUES (3, CAST(N'2023-03-09' AS Date), CAST(N'2023-03-30' AS Date), 1, 7, 7, 2)
SET IDENTITY_INSERT [dbo].[IssuanceBook] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([id], [NamePost]) VALUES (1, N'Администратор')
INSERT [dbo].[Post] ([id], [NamePost]) VALUES (2, N'Сотрудник')
INSERT [dbo].[Post] ([id], [NamePost]) VALUES (3, N'Библиотекарь')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([id], [NamePublisher], [DopInformation]) VALUES (1, N'Белый свет', N'1')
INSERT [dbo].[Publisher] ([id], [NamePublisher], [DopInformation]) VALUES (2, N'Черный свет', N'1')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [FIO], [DateOfBirth], [Adress], [Phone]) VALUES (1, N'Зубенко Михаил Петрович', CAST(N'1235-03-22' AS Date), N'Писькотрясово', N'2')
INSERT [dbo].[User] ([id], [FIO], [DateOfBirth], [Adress], [Phone]) VALUES (2, N'Заебись Даниил Владиславович', CAST(N'5323-12-02' AS Date), N'Улица Пушника дом Колотушкина', N'12341241')
INSERT [dbo].[User] ([id], [FIO], [DateOfBirth], [Adress], [Phone]) VALUES (3, N'Умопобрачительный Евгений Николаевич', CAST(N'2008-08-08' AS Date), N'Жопошниково', N'1231212')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[AuthorBook]  WITH CHECK ADD  CONSTRAINT [FK_AuthorBook_Author] FOREIGN KEY([idAuthor])
REFERENCES [dbo].[Author] ([id])
GO
ALTER TABLE [dbo].[AuthorBook] CHECK CONSTRAINT [FK_AuthorBook_Author]
GO
ALTER TABLE [dbo].[AuthorBook]  WITH CHECK ADD  CONSTRAINT [FK_AuthorBook_Book] FOREIGN KEY([idBook])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[AuthorBook] CHECK CONSTRAINT [FK_AuthorBook_Book]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Genre] FOREIGN KEY([idGenre])
REFERENCES [dbo].[Genre] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Genre]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([idPublisher])
REFERENCES [dbo].[Publisher] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Colleague]  WITH CHECK ADD  CONSTRAINT [FK_Colleague_Post] FOREIGN KEY([idPost])
REFERENCES [dbo].[Post] ([id])
GO
ALTER TABLE [dbo].[Colleague] CHECK CONSTRAINT [FK_Colleague_Post]
GO
ALTER TABLE [dbo].[IssuanceBook]  WITH CHECK ADD  CONSTRAINT [FK_IssuanceBook_Book] FOREIGN KEY([idBook])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[IssuanceBook] CHECK CONSTRAINT [FK_IssuanceBook_Book]
GO
ALTER TABLE [dbo].[IssuanceBook]  WITH CHECK ADD  CONSTRAINT [FK_IssuanceBook_BookStatus] FOREIGN KEY([idStatus])
REFERENCES [dbo].[BookStatus] ([id])
GO
ALTER TABLE [dbo].[IssuanceBook] CHECK CONSTRAINT [FK_IssuanceBook_BookStatus]
GO
ALTER TABLE [dbo].[IssuanceBook]  WITH CHECK ADD  CONSTRAINT [FK_IssuanceBook_Colleague] FOREIGN KEY([idColleague])
REFERENCES [dbo].[Colleague] ([id])
GO
ALTER TABLE [dbo].[IssuanceBook] CHECK CONSTRAINT [FK_IssuanceBook_Colleague]
GO
ALTER TABLE [dbo].[IssuanceBook]  WITH CHECK ADD  CONSTRAINT [FK_IssuanceBook_User] FOREIGN KEY([idUser])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[IssuanceBook] CHECK CONSTRAINT [FK_IssuanceBook_User]
GO
USE [master]
GO
ALTER DATABASE [SuperBibliaDB] SET  READ_WRITE 
GO
