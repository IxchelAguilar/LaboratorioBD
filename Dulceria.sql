USE [master]
GO

/****** Object:  Database [Dulceria]    Script Date: 21/10/2017 11:48:43 a.m. ******/
CREATE DATABASE [Dulceria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dulceria', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Dulceria.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dulceria_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Dulceria_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Dulceria] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dulceria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Dulceria] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Dulceria] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Dulceria] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Dulceria] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Dulceria] SET ARITHABORT OFF 
GO

ALTER DATABASE [Dulceria] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Dulceria] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Dulceria] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Dulceria] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Dulceria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Dulceria] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Dulceria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Dulceria] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Dulceria] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Dulceria] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Dulceria] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Dulceria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Dulceria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Dulceria] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Dulceria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Dulceria] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Dulceria] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Dulceria] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Dulceria] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Dulceria] SET  MULTI_USER 
GO

ALTER DATABASE [Dulceria] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Dulceria] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Dulceria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Dulceria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Dulceria] SET  READ_WRITE 
GO

