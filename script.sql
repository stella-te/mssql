USE [master]
GO
/****** Object:  Database [testdb]    Script Date: 08/02/2023 14.53.51 ******/
CREATE DATABASE [testdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\testdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\testdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [testdb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [testdb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [testdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [testdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testdb] SET  MULTI_USER 
GO
ALTER DATABASE [testdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testdb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [testdb] SET QUERY_STORE = OFF
GO
USE [testdb]
GO
/****** Object:  Table [dbo].[test]    Script Date: 08/02/2023 14.53.52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[commodity] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[price] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Gasoline', N'XB1:COM', CAST(2.46 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Crude Oil', N'CL1:COM', CAST(77.81 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Gold', N'XAUUSD:CUR', CAST(1881.04 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Silver', N'XAGUSD:CUR', CAST(22.44 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Wind Energy Index', N'GWETR:IND', CAST(310.67 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Copper', N'HG1:COM', CAST(4.11 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Platinum', N'XPTUSD:CUR', CAST(984.57 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Palladium', N'XPDUSD:CUR', CAST(1653.65 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Brent', N'CO1:COM', CAST(84.11 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Crude Oil', N'CL1:COM', CAST(77.82 AS Decimal(18, 2)))
INSERT [dbo].[test] ([commodity], [name], [price]) VALUES (N'Natural gas', N'NG1:COM', CAST(2.58 AS Decimal(18, 2)))
GO
USE [master]
GO
ALTER DATABASE [testdb] SET  READ_WRITE 
GO
