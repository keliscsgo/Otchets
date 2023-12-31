USE [master]
GO
/****** Object:  Database [olimp]    Script Date: 27.06.2023 11:18:09 ******/
CREATE DATABASE [olimp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'olimp', FILENAME = N'D:\Емельянов приложение+БД\бд\olimp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'olimp_log', FILENAME = N'D:\Емельянов приложение+БД\бд\olimp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [olimp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [olimp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [olimp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [olimp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [olimp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [olimp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [olimp] SET ARITHABORT OFF 
GO
ALTER DATABASE [olimp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [olimp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [olimp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [olimp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [olimp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [olimp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [olimp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [olimp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [olimp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [olimp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [olimp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [olimp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [olimp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [olimp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [olimp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [olimp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [olimp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [olimp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [olimp] SET  MULTI_USER 
GO
ALTER DATABASE [olimp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [olimp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [olimp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [olimp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [olimp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [olimp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [olimp] SET QUERY_STORE = OFF
GO
USE [olimp]
GO
/****** Object:  Table [dbo].[svyaz]    Script Date: 27.06.2023 11:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[svyaz](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](300) NULL,
	[datazapisi] [date] NULL,
	[pol] [nvarchar](7) NULL,
	[messagetrevogi] [nvarchar](500) NULL,
	[telephone] [nvarchar](50) NULL,
 CONSTRAINT [PK_svyaz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [olimp] SET  READ_WRITE 
GO
