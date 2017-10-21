Create DATABASE [Northwind] 
USE [Northwind]
GO
/****** Object:  Database [baselmao]    Script Date: 02/09/2017 11:28:55 a.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'baselmao')
BEGIN
CREATE DATABASE [baselmao]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'baselmao', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\baselmao.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'baselmao_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\baselmao_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [baselmao] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [baselmao].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [baselmao] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [baselmao] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [baselmao] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [baselmao] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [baselmao] SET ARITHABORT OFF 
GO
ALTER DATABASE [baselmao] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [baselmao] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [baselmao] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [baselmao] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [baselmao] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [baselmao] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [baselmao] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [baselmao] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [baselmao] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [baselmao] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [baselmao] SET  ENABLE_BROKER 
GO
ALTER DATABASE [baselmao] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [baselmao] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [baselmao] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [baselmao] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [baselmao] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [baselmao] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [baselmao] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [baselmao] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [baselmao] SET  MULTI_USER 
GO
ALTER DATABASE [baselmao] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [baselmao] SET DB_CHAINING OFF 
GO
ALTER DATABASE [baselmao] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [baselmao] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [baselmao] SET  READ_WRITE 
GO