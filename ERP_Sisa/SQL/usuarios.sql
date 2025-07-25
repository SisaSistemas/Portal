USE [SisaAdmin-Copia]
GO
/****** Object:  User [germanUTH]    Script Date: 24/07/2025 02:56:30 a. m. ******/
CREATE USER [germanUTH] FOR LOGIN [germanUTH] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Reportes]    Script Date: 24/07/2025 02:56:30 a. m. ******/
CREATE USER [Reportes] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sotoUTH]    Script Date: 24/07/2025 02:56:30 a. m. ******/
CREATE USER [sotoUTH] FOR LOGIN [sotoUTH] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [germanUTH]
GO
ALTER ROLE [db_owner] ADD MEMBER [Reportes]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Reportes]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [sotoUTH]
GO
