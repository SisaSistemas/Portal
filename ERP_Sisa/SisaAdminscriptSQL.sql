USE [master]
GO
/****** Object:  Database [SisaAdmin-Copia]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE DATABASE [SisaAdmin-Copia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SisaAdmin-Copia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SisaAdmin-Copia.mdf' , SIZE = 6561792KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SisaAdmin-Copia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SisaAdmin-Copia_log.ldf' , SIZE = 24190976KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SisaAdmin-Copia] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SisaAdmin-Copia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SisaAdmin-Copia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET ARITHABORT OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SisaAdmin-Copia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SisaAdmin-Copia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SisaAdmin-Copia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SisaAdmin-Copia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET RECOVERY FULL 
GO
ALTER DATABASE [SisaAdmin-Copia] SET  MULTI_USER 
GO
ALTER DATABASE [SisaAdmin-Copia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SisaAdmin-Copia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SisaAdmin-Copia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SisaAdmin-Copia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SisaAdmin-Copia] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SisaAdmin-Copia', N'ON'
GO
ALTER DATABASE [SisaAdmin-Copia] SET QUERY_STORE = OFF
GO
USE [SisaAdmin-Copia]
GO
/****** Object:  User [Reportes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE USER [Reportes] FOR LOGIN [Reportes] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Reportes]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Reportes]
GO
/****** Object:  UserDefinedTableType [dbo].[Clientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Clientes] AS TABLE(
	[IdCliente] [uniqueidentifier] NOT NULL,
	[RazonSocial] [varchar](250) NOT NULL,
	[Contacto] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Departamento] [varchar](200) NULL,
	[TelefonoEmpresa] [varchar](50) NOT NULL,
	[Celular] [varchar](50) NOT NULL,
	[UsuarioCliente] [varchar](50) NOT NULL,
	[ContrasenaCliente] [varchar](50) NOT NULL,
	[MapaCoordenadas] [varchar](200) NULL,
	[Logotipo] [varchar](max) NULL,
	[Direccion] [varchar](max) NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Activo] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ComentariosProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[ComentariosProyecto] AS TABLE(
	[IdComentario] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaComentario] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Cotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Cotizacion] AS TABLE(
	[IdCotizacion] [uniqueidentifier] NOT NULL,
	[NoCotizacion] [varchar](50) NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](150) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Concepto] [varchar](200) NOT NULL,
	[FechaCotizacion] [varchar](100) NOT NULL,
	[IdUsuarioElaboro] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Estatus] [varchar](20) NOT NULL,
	[NombreArchivoPdf] [varchar](150) NULL,
	[DocumentoPdf] [varchar](max) NULL,
	[NombreArchivoXls] [varchar](150) NULL,
	[DocumentoXls] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[FolioCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[FolioCotizacion] AS TABLE(
	[IdFolioCotizacion] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Gastos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Gastos] AS TABLE(
	[IdGasto] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[NoFactura] [varchar](50) NOT NULL,
	[TipoGasto] [varchar](100) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Importe] [decimal](20, 2) NOT NULL,
	[IVA] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[FechaGasto] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Habilidades]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Habilidades] AS TABLE(
	[IdHabilidad] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Habilidad] [varchar](100) NOT NULL,
	[Porcentaje] [decimal](18, 2) NOT NULL,
	[Comentarios] [varchar](max) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ListaPendientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[ListaPendientes] AS TABLE(
	[IdListaPendientes] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Pendiente] [varchar](200) NOT NULL,
	[Completado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaCompletado] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Materiales]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Materiales] AS TABLE(
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Marca] [varchar](150) NULL,
	[IdUnidadMedida] [uniqueidentifier] NOT NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[MatrizMecanico]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[MatrizMecanico] AS TABLE(
	[IdMaquinado] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[NombreProyecto] [varchar](100) NOT NULL,
	[NoParte] [varchar](100) NOT NULL,
	[FechaOC] [date] NOT NULL,
	[FechaEntrega] [date] NOT NULL,
	[IdDiseno] [uniqueidentifier] NULL,
	[IdMasterCam] [uniqueidentifier] NULL,
	[Estatus] [int] NOT NULL,
	[IdEncargadoProyecto] [uniqueidentifier] NOT NULL,
	[IdDisenador] [uniqueidentifier] NOT NULL,
	[IdQuienHizo] [uniqueidentifier] NOT NULL,
	[Observaciones] [varchar](max) NOT NULL,
	[HorasMaquina] [int] NOT NULL,
	[CantidadPzas] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaTermino] [datetime] NULL,
	[FechaInicio] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Menu]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Menu] AS TABLE(
	[IdMenu] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[Seccion] [varchar](150) NOT NULL,
	[Icono] [varchar](100) NOT NULL,
	[Menu] [varchar](50) NOT NULL,
	[Accion] [varchar](50) NOT NULL,
	[Orden] [int] NULL,
	[Pagina] [varchar](150) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[NotaAclaratoria]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[NotaAclaratoria] AS TABLE(
	[IdNotasCotizacion] [uniqueidentifier] NOT NULL,
	[IdCotizacion] [uniqueidentifier] NOT NULL,
	[NotaAclaratoria] [varchar](max) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Permisos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Permisos] AS TABLE(
	[IdPermiso] [int] NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[IdMenu] [int] NOT NULL,
	[Visible] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Producto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Producto] AS TABLE(
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Precio] [decimal](18, 2) NULL,
	[Eliminado] [bit] NOT NULL,
	[ModificadoEn] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Proveedores]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Proveedores] AS TABLE(
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[Proveedor] [varchar](300) NOT NULL,
	[Contacto] [varchar](150) NOT NULL,
	[Domicilio] [varchar](300) NULL,
	[Coordenadas] [varchar](200) NULL,
	[Email] [varchar](150) NOT NULL,
	[Telefono1] [varchar](50) NULL,
	[Telefono2] [varchar](50) NULL,
	[Giro] [varchar](150) NULL,
	[Comentarios] [varchar](max) NULL,
	[Imagen] [varchar](max) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[Activo] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Proyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Proyectos] AS TABLE(
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[NombreProyecto] [varchar](100) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[IdLider] [uniqueidentifier] NOT NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[Estatus] [varchar](50) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Activo] [int] NOT NULL,
	[UserProject1] [uniqueidentifier] NULL,
	[UserProject2] [uniqueidentifier] NULL,
	[UserProject3] [uniqueidentifier] NULL,
	[UserProject4] [uniqueidentifier] NULL,
	[IdCotizacion] [uniqueidentifier] NULL,
	[CostoCotizacion] [decimal](20, 2) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ProyectoTaskImagen]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[ProyectoTaskImagen] AS TABLE(
	[IdTaskImagen] [uniqueidentifier] NOT NULL,
	[IdTask] [uniqueidentifier] NOT NULL,
	[Imagen] [varchar](max) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FileName] [varchar](max) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[FileContentType] [varchar](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ProyectoTasks]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[ProyectoTasks] AS TABLE(
	[IdTask] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Task] [varchar](150) NOT NULL,
	[IdUsuario] [uniqueidentifier] NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[Estatus] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[Porcentaje] [decimal](18, 2) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ProyectoTasksComentarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[ProyectoTasksComentarios] AS TABLE(
	[IdTaskComentario] [uniqueidentifier] NOT NULL,
	[IdTask] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Usuarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Usuarios] AS TABLE(
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[NombreCompleto] [varchar](100) NOT NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NOT NULL,
	[Permisos] [int] NOT NULL,
	[Puesto] [varchar](100) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Activo] [int] NOT NULL,
	[EsLiderProyecto] [int] NULL,
	[Perfil] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Viaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[Viaticos] AS TABLE(
	[ID] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[CantEntregada] [decimal](18, 2) NOT NULL,
	[CantGastada] [decimal](18, 2) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Estatus] [int] NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaCaptura] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ViaticosDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
CREATE TYPE [dbo].[ViaticosDet] AS TABLE(
	[IdDet] [uniqueidentifier] NOT NULL,
	[IdViaticos] [uniqueidentifier] NOT NULL,
	[FechaViaticos] [date] NOT NULL,
	[Gasolina] [decimal](18, 2) NOT NULL,
	[Desayuno] [decimal](18, 2) NOT NULL,
	[Comida] [decimal](18, 2) NOT NULL,
	[Cena] [decimal](18, 2) NOT NULL,
	[Casetas] [decimal](18, 2) NOT NULL,
	[Hotel] [decimal](18, 2) NOT NULL,
	[Transporte] [decimal](18, 2) NOT NULL,
	[Otros] [decimal](18, 2) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_TotalGastos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <20 Septiembre 2019>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fn_TotalGastos]
(
	@IdProyecto VARCHAR(150) = 'f96fc0fc-5b70-4896-b0d9-cec6b9d97638'
)
RETURNS DECIMAL(20,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
			, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2)

	-- Add the T-SQL statements to compute the return value here
	/* ORDENES DE COMPRA */
		SELECT @totalOC = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY C.Abreviatura--, CONVERT(DATE, B.FechaCreacion)
		) A

		/* ORDENES DE COMPRA PENDIENTES POR RECIBIR */
		SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura
		) A

		/* FACTURAS */
		SELECT @totalFacturas = SUM(Facturas)
		FROM (
			SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas
			WHERE IdProyecto = @IdProyecto And Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
			AND Viaticos = 0
		) A

		--/* MANO DE OBRA */
		SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1

		/* VIATICOS */
		SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
		FROM [SisaAdmin].[dbo].[tblViaticos] A
		INNER JOIN dbo.tblViaticosDet B
		ON B.IdViaticos = A.ID
		WHERE A.IdProyecto = @IdProyecto

		/* CAJA CHICA */
		SELECT @cajaChica = SUM(A.ABono)
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS') And A.IdProyecto = @IdProyecto

		--PRINT(IsNull(@totalOC, 0.00))
		--PRINT(IsNull(@totalFacturas, 0.00))
		--PRINT(IsNull(@viaticos, 0.00))
		--PRINT(IsNull(@cajaChica, 0.00))
		--PRINT(IsNull(@manoObra, 0.00))

		SET @totalGastos = (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))

	-- Return the result of the function
	RETURN @totalGastos

END
GO
/****** Object:  Table [dbo].[DateDimension]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateDimension](
	[DateKey] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Day] [tinyint] NOT NULL,
	[DaySuffix] [char](2) NOT NULL,
	[Weekday] [tinyint] NOT NULL,
	[WeekDayName] [varchar](10) NOT NULL,
	[IsWeekend] [bit] NOT NULL,
	[IsHoliday] [bit] NOT NULL,
	[HolidayText] [varchar](64) SPARSE  NULL,
	[DOWInMonth] [tinyint] NOT NULL,
	[DayOfYear] [smallint] NOT NULL,
	[WeekOfMonth] [tinyint] NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[ISOWeekOfYear] [tinyint] NOT NULL,
	[Month] [tinyint] NOT NULL,
	[MonthName] [varchar](10) NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[QuarterName] [varchar](6) NOT NULL,
	[Year] [int] NOT NULL,
	[MMYYYY] [char](6) NOT NULL,
	[MonthYear] [char](7) NOT NULL,
	[FirstDayOfMonth] [date] NOT NULL,
	[LastDayOfMonth] [date] NOT NULL,
	[FirstDayOfQuarter] [date] NOT NULL,
	[LastDayOfQuarter] [date] NOT NULL,
	[FirstDayOfYear] [date] NOT NULL,
	[LastDayOfYear] [date] NOT NULL,
	[FirstDayOfNextMonth] [date] NOT NULL,
	[FirstDayOfNextYear] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mat]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mat](
	[Codigo] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Unidad] [nvarchar](255) NULL,
	[B] [money] NULL,
	[Categoria] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mat2]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mat2](
	[Codigo] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Unidad] [nvarchar](255) NULL,
	[B] [money] NULL,
	[BUSQUEDA] [nvarchar](255) NULL,
	[Categoria] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mat3]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mat3](
	[UNIDAD] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[PRECIO] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatUrrea]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatUrrea](
	[CÓDIGO O CLAVE] [nvarchar](255) NULL,
	[CANTIDAD SOLICITADA] [float] NULL,
	[CLAVE] [nvarchar](255) NULL,
	[DESCRIPCIÓN] [nvarchar](255) NULL,
	[EST] [nvarchar](255) NULL,
	[PRECIO LISTA] [money] NULL,
	[DESCUENTO ] [float] NULL,
	[P#UNIT] [money] NULL,
	[SUBTOTAL] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Precio] [decimal](18, 2) NULL,
	[Eliminado] [bit] NOT NULL,
	[ModificadoEn] [datetime] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBoletin]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBoletin](
	[idBoletin] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](150) NULL,
	[Fecha] [datetime] NULL,
	[Texto] [varchar](max) NULL,
	[NombreImagen] [varchar](150) NULL,
	[Imagen] [varchar](max) NULL,
	[NombrePDF] [varchar](150) NULL,
	[PDF] [varchar](max) NULL,
 CONSTRAINT [PK_tblBoletin] PRIMARY KEY CLUSTERED 
(
	[idBoletin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChica]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChica](
	[IdCajaChica] [uniqueidentifier] NOT NULL,
	[Responsable] [varchar](150) NOT NULL,
	[Concepto] [varchar](150) NOT NULL,
	[IdProyecto] [varchar](150) NULL,
	[Proyecto] [varchar](150) NOT NULL,
	[Comprobante] [varchar](150) NOT NULL,
	[Cargo] [decimal](18, 2) NOT NULL,
	[Abono] [decimal](18, 2) NOT NULL,
	[Fecha] [date] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Estatus] [int] NULL,
	[Categoria] [varchar](50) NULL,
	[CampoExtra] [varchar](150) NULL,
 CONSTRAINT [PK_tblCajaChica] PRIMARY KEY CLUSTERED 
(
	[IdCajaChica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCalendario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCalendario](
	[IdCalendario] [uniqueidentifier] NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFinal] [datetime] NOT NULL,
	[TodoDia] [bit] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCalendario] PRIMARY KEY CLUSTERED 
(
	[IdCalendario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategoria]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategoria](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Categoria] [varchar](150) NOT NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCategoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClienteContacto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClienteContacto](
	[idContacto] [uniqueidentifier] NOT NULL,
	[idEmpresa] [uniqueidentifier] NOT NULL,
	[NombreContacto] [varchar](150) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Correo] [varchar](50) NOT NULL,
	[TIMESTAMP] [varchar](50) NOT NULL,
	[Estatus] [bit] NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Clave] [varchar](100) NULL,
 CONSTRAINT [PK_tblClienteContacto] PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClientes](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[RazonSocial] [varchar](250) NOT NULL,
	[Contacto] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Departamento] [varchar](200) NULL,
	[TelefonoEmpresa] [varchar](50) NOT NULL,
	[Celular] [varchar](50) NOT NULL,
	[UsuarioCliente] [varchar](50) NOT NULL,
	[ContrasenaCliente] [varchar](50) NOT NULL,
	[MapaCoordenadas] [varchar](200) NULL,
	[Logotipo] [varchar](max) NULL,
	[Direccion] [varchar](max) NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Activo] [int] NOT NULL,
	[idEmpresa] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblClientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComentariosCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComentariosCotizacion](
	[IdComentario] [uniqueidentifier] NOT NULL,
	[IdCotizacion] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaComentario] [datetime] NOT NULL,
 CONSTRAINT [PK_tblComentariosCotizacion] PRIMARY KEY CLUSTERED 
(
	[IdComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComentariosProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComentariosProyecto](
	[IdComentario] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaComentario] [datetime] NOT NULL,
 CONSTRAINT [PK_tblComentariosProyecto] PRIMARY KEY CLUSTERED 
(
	[IdComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblControlFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblControlFacturas](
	[IdControlFacturas] [uniqueidentifier] NOT NULL,
	[FechaFactura] [date] NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[NoFactura] [varchar](100) NOT NULL,
	[OrdenCompra] [varchar](100) NOT NULL,
	[IdProyecto] [varchar](150) NULL,
	[Proyecto] [varchar](150) NOT NULL,
	[Moneda] [varchar](50) NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[Descuento] [decimal](18, 2) NOT NULL,
	[IVA] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Estatus] [int] NOT NULL,
	[FormaPago] [varchar](500) NOT NULL,
	[Viaticos] [int] NULL,
	[NombreArchivo] [varchar](150) NULL,
	[ArchivoFactura] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[FechaAlta] [datetime] NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[Categoria] [varchar](50) NULL,
	[Anticipo] [decimal](18, 2) NULL,
	[NotaCredito] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblControlFacturas] PRIMARY KEY CLUSTERED 
(
	[IdControlFacturas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCotizaciones]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCotizaciones](
	[IdCotizaciones] [uniqueidentifier] NOT NULL,
	[NoCotizaciones] [varchar](50) NOT NULL,
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[idContacto] [uniqueidentifier] NOT NULL,
	[Concepto] [varchar](max) NULL,
	[FechaCotizaciones] [datetime] NOT NULL,
	[TIMESTAMP] [datetime] NOT NULL,
	[Estatus] [int] NOT NULL,
	[NombreArchivoPdf] [varchar](150) NULL,
	[DocumentoPdf] [varchar](max) NULL,
	[NombreArchivoXls] [varchar](150) NULL,
	[DocumentoXls] [varchar](max) NULL,
	[CostoCotizaciones] [decimal](18, 2) NULL,
	[IdUsuarioCancela] [uniqueidentifier] NULL,
	[ComentarioCancela] [varchar](250) NULL,
	[FechaCancela] [datetime] NULL,
	[FechaEnviada] [datetime] NULL,
	[IdUsuarioEnvia] [uniqueidentifier] NULL,
	[IdUsuarioCreo] [uniqueidentifier] NULL,
	[idRequisicion] [uniqueidentifier] NULL,
	[CostoMOCotizado] [float] NULL,
	[CostoMaterialCotizado] [float] NULL,
	[CostoMECotizado] [float] NULL,
 CONSTRAINT [PK_tblCotizaciones] PRIMARY KEY CLUSTERED 
(
	[IdCotizaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCotizacionesDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCotizacionesDet](
	[idCotDetalle] [uniqueidentifier] NOT NULL,
	[idCotizacion] [uniqueidentifier] NULL,
	[TimeStamp] [datetime] NULL,
	[Descripcion] [varchar](max) NULL,
	[Cantidad] [decimal](18, 2) NULL,
	[Precio] [decimal](18, 2) NULL,
	[Importe] [decimal](18, 2) NULL,
	[Unidad] [varchar](50) NULL,
	[idUsuarioAlta] [uniqueidentifier] NULL,
	[Estatus] [int] NULL,
 CONSTRAINT [PK_tblCotizacionesDet] PRIMARY KEY CLUSTERED 
(
	[idCotDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCotizacionNew]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCotizacionNew](
	[IdCotizacion] [uniqueidentifier] NOT NULL,
	[NoCotizacion] [varchar](50) NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](150) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Concepto] [varchar](200) NOT NULL,
	[FechaCotizacion] [varchar](100) NOT NULL,
	[IdUsuarioElaboro] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Estatus] [varchar](20) NOT NULL,
	[NombreArchivoPdf] [varchar](150) NULL,
	[DocumentoPdf] [varchar](max) NULL,
	[NombreArchivoXls] [varchar](150) NULL,
	[DocumentoXls] [varchar](max) NULL,
	[CostoCotizacion] [decimal](18, 2) NULL,
	[IdUsuarioCancela] [uniqueidentifier] NULL,
	[ComentarioCancela] [varchar](250) NULL,
	[FechaCancela] [datetime] NULL,
	[FechaEnviada] [datetime] NULL,
	[IdUsuarioEnvia] [uniqueidentifier] NULL,
	[IdUsuarioCreo] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblCotizacionNew] PRIMARY KEY CLUSTERED 
(
	[IdCotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChat]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChat](
	[IdChat] [int] IDENTITY(1,1) NOT NULL,
	[IdFrom] [varchar](200) NOT NULL,
	[From] [varchar](100) NOT NULL,
	[IdTo] [varchar](200) NOT NULL,
	[To] [varchar](100) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[MessageDate] [datetime] NOT NULL,
	[Leido] [int] NOT NULL,
 CONSTRAINT [PK_tblChat] PRIMARY KEY CLUSTERED 
(
	[IdChat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDatosEmpresa]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDatosEmpresa](
	[IdDatos] [uniqueidentifier] NOT NULL,
	[TipoCambio] [decimal](20, 2) NOT NULL,
	[IvaFrontera] [decimal](20, 2) NOT NULL,
	[IvaInterior] [decimal](20, 2) NOT NULL,
 CONSTRAINT [PK_tblDatosEmpresa] PRIMARY KEY CLUSTERED 
(
	[IdDatos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocDisenosMecanico]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocDisenosMecanico](
	[IdDiseno] [uniqueidentifier] NOT NULL,
	[FileName] [varchar](max) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblDocDisenosMecanico] PRIMARY KEY CLUSTERED 
(
	[IdDiseno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocMasterCamMecanico]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocMasterCamMecanico](
	[IdMasterCam] [uniqueidentifier] NOT NULL,
	[FileName] [varchar](max) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblDocMasterCamMecanico] PRIMARY KEY CLUSTERED 
(
	[IdMasterCam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocProyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocProyectos](
	[IdDocumento] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[FileName] [varchar](150) NOT NULL,
	[File] [varchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblDocProyectos] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEficiencias]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEficiencias](
	[idEficiencia] [int] IDENTITY(1,1) NOT NULL,
	[idProyecto] [uniqueidentifier] NULL,
	[ManoObra] [decimal](18, 2) NULL,
	[Material] [decimal](18, 2) NULL,
	[Equipo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblEficiencias] PRIMARY KEY CLUSTERED 
(
	[idEficiencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpresas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpresas](
	[idEmpresa] [uniqueidentifier] NOT NULL,
	[RazonSocial] [varchar](255) NOT NULL,
	[DireccionFiscal] [varchar](255) NOT NULL,
	[Telefono] [varchar](255) NOT NULL,
	[TIMESTAMP] [datetime] NOT NULL,
	[RFC] [varchar](50) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[CP] [int] NOT NULL,
	[Ciudad] [nvarchar](100) NOT NULL,
	[Estatus] [bit] NULL,
	[idSucursalRegistro] [uniqueidentifier] NULL,
	[Cliente] [varchar](255) NULL,
 CONSTRAINT [PK_tblEmpresas] PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFacturasEmitidas](
	[IdFacturasEmitidas] [uniqueidentifier] NOT NULL,
	[FolioFactura] [varchar](50) NOT NULL,
	[FechaFactura] [datetime] NOT NULL,
	[RfcReceptor] [varchar](100) NOT NULL,
	[NombreReceptor] [varchar](200) NOT NULL,
	[IdProyecto] [varchar](150) NULL,
	[NoCotizacion] [varchar](150) NULL,
	[OrdenCompraRecibida] [varchar](100) NULL,
	[SubTotal] [decimal](20, 2) NOT NULL,
	[Iva] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[Moneda] [varchar](50) NOT NULL,
	[ProgramacionPago] [datetime] NULL,
	[PorPagar] [decimal](20, 2) NULL,
	[FechaPago] [datetime] NULL,
	[Estatus] [int] NOT NULL,
	[TipoCambio] [decimal](20, 6) NULL,
	[IdUsuario] [uniqueidentifier] NULL,
	[FechaAlta] [datetime] NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[Retencion] [decimal](20, 2) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[ArchivoPDF] [varchar](max) NULL,
 CONSTRAINT [PK_tblFacturasEmitidas] PRIMARY KEY CLUSTERED 
(
	[IdFacturasEmitidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFacturasXML]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFacturasXML](
	[IdFacturaXML] [uniqueidentifier] NOT NULL,
	[NombreArchivo] [varchar](150) NOT NULL,
	[Archivo] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblFacturasXML] PRIMARY KEY CLUSTERED 
(
	[IdFacturaXML] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFallas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFallas](
	[IdFalla] [int] IDENTITY(1,1) NOT NULL,
	[VIN] [varchar](50) NOT NULL,
	[Falla] [varchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblFallas] PRIMARY KEY CLUSTERED 
(
	[IdFalla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFolioCotizacion](
	[IdFolioCotizacion] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL,
 CONSTRAINT [PK_tblFolioCotizacion] PRIMARY KEY CLUSTERED 
(
	[IdFolioCotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFolioOrdenCompra](
	[IdFolioOrdenCompra] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NULL,
 CONSTRAINT [PK_tblFolioOrdenCompra] PRIMARY KEY CLUSTERED 
(
	[IdFolioOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioReq]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFolioReq](
	[IdFolioReq] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL,
 CONSTRAINT [PK_tblFolioReq] PRIMARY KEY CLUSTERED 
(
	[IdFolioReq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFolioRFQ](
	[IdFolioRFQ] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL,
 CONSTRAINT [PK_tblFolioRFQ] PRIMARY KEY CLUSTERED 
(
	[IdFolioRFQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGastos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGastos](
	[IdGasto] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[NoFactura] [varchar](50) NOT NULL,
	[TipoGasto] [varchar](100) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Importe] [decimal](20, 2) NOT NULL,
	[IVA] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[FechaGasto] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblGastos] PRIMARY KEY CLUSTERED 
(
	[IdGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGPS]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGPS](
	[IdLocation] [int] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](10) NULL,
	[Latitud] [decimal](20, 4) NOT NULL,
	[Longitud] [decimal](20, 4) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblGPS] PRIMARY KEY CLUSTERED 
(
	[IdLocation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHabilidades]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHabilidades](
	[IdHabilidad] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Habilidad] [varchar](100) NOT NULL,
	[Porcentaje] [decimal](18, 2) NOT NULL,
	[Comentarios] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHorasHombre]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHorasHombre](
	[IdHorasHombre] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Lunes] [int] NOT NULL,
	[Martes] [int] NOT NULL,
	[Miercoles] [int] NOT NULL,
	[Jueves] [int] NOT NULL,
	[Viernes] [int] NOT NULL,
	[Sabado] [int] NOT NULL,
	[Domingo] [int] NOT NULL,
	[Total]  AS (((((([Lunes]+[Martes])+[Miercoles])+[Jueves])+[Viernes])+[Sabado])+[Domingo]),
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NULL,
 CONSTRAINT [PK_tblHorasHombre] PRIMARY KEY CLUSTERED 
(
	[IdHorasHombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInventario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInventario](
	[IdHerramienta] [int] IDENTITY(1,1) NOT NULL,
	[NoCodigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[NoSerie] [varchar](150) NOT NULL,
	[Observaciones] [varchar](200) NOT NULL,
	[Contenedor] [int] NOT NULL,
	[Estatus] [bit] NOT NULL,
	[Entradas] [decimal](18, 2) NOT NULL,
	[Salidas] [decimal](18, 2) NOT NULL,
	[TotalAlmacen] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tblInventario] PRIMARY KEY CLUSTERED 
(
	[IdHerramienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInventarioDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInventarioDet](
	[idHDet] [int] IDENTITY(1,1) NOT NULL,
	[idHerramienta] [int] NULL,
	[Fecha] [datetime] NULL,
	[Entrada] [decimal](18, 2) NULL,
	[Salida] [decimal](18, 2) NULL,
	[idUsuario] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[idHDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInvHerramientas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInvHerramientas](
	[IdHerramienta] [uniqueidentifier] NOT NULL,
	[NoCodigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[NoSerie] [varchar](150) NOT NULL,
	[Observaciones] [varchar](200) NOT NULL,
	[Contenedor] [int] NOT NULL,
	[Estatus] [varchar](50) NOT NULL,
	[Entradas] [decimal](18, 2) NULL,
	[Salidas] [decimal](18, 2) NULL,
	[TotalAlmacen] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblInvHerramientas] PRIMARY KEY CLUSTERED 
(
	[IdHerramienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInvHerramientasDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInvHerramientasDet](
	[IdHerramientaDet] [uniqueidentifier] NOT NULL,
	[IdHerramienta] [uniqueidentifier] NOT NULL,
	[NoCodigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[NoSerie] [varchar](150) NOT NULL,
	[Observaciones] [varchar](200) NOT NULL,
	[Estatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblInvHerramientasDet] PRIMARY KEY CLUSTERED 
(
	[IdHerramientaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLiderProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLiderProyecto](
	[IdLider] [uniqueidentifier] NOT NULL,
	[NombreLider] [varchar](200) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblLiderProyecto] PRIMARY KEY CLUSTERED 
(
	[IdLider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblListaPendientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblListaPendientes](
	[IdListaPendientes] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Pendiente] [varchar](200) NOT NULL,
	[Completado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaCompletado] [datetime] NOT NULL,
 CONSTRAINT [PK_tblListaPendientes] PRIMARY KEY CLUSTERED 
(
	[IdListaPendientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMateriales]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMateriales](
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Buscador] [varchar](150) NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblMateriales] PRIMARY KEY CLUSTERED 
(
	[IdMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMaterialImagen]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMaterialImagen](
	[IdMaterialImagen] [uniqueidentifier] NOT NULL,
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[Imagen] [varchar](max) NOT NULL,
	[FileName] [varchar](max) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[FileContentType] [varchar](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblMaterialImagen] PRIMARY KEY CLUSTERED 
(
	[IdMaterialImagen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMatrizMecanico]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMatrizMecanico](
	[IdMaquinado] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[NombreProyecto] [varchar](100) NOT NULL,
	[NoParte] [varchar](100) NOT NULL,
	[FechaOC] [date] NOT NULL,
	[FechaEntrega] [date] NOT NULL,
	[IdDiseno] [uniqueidentifier] NULL,
	[IdMasterCam] [uniqueidentifier] NULL,
	[Estatus] [int] NOT NULL,
	[IdEncargadoProyecto] [uniqueidentifier] NOT NULL,
	[IdDisenador] [uniqueidentifier] NOT NULL,
	[IdQuienHizo] [uniqueidentifier] NOT NULL,
	[Observaciones] [varchar](max) NOT NULL,
	[HorasMaquina] [int] NOT NULL,
	[CantidadPzas] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaTermino] [datetime] NULL,
	[FechaInicio] [datetime] NULL,
 CONSTRAINT [PK_tblMatrizMecanico] PRIMARY KEY CLUSTERED 
(
	[IdMaquinado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMenu]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMenu](
	[IdMenu] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[Seccion] [varchar](150) NOT NULL,
	[Icono] [varchar](100) NOT NULL,
	[Menu] [varchar](50) NOT NULL,
	[Accion] [varchar](50) NOT NULL,
	[Orden] [int] NULL,
	[Pagina] [varchar](150) NULL,
 CONSTRAINT [PK_tblMenu] PRIMARY KEY CLUSTERED 
(
	[IdMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonedas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonedas](
	[IdMoneda] [uniqueidentifier] NOT NULL,
	[Moneda] [varchar](150) NOT NULL,
	[Abreviatura] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblMonedas] PRIMARY KEY CLUSTERED 
(
	[IdMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNotaAclaratoria]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotaAclaratoria](
	[IdNotasCotizacion] [uniqueidentifier] NOT NULL,
	[IdCotizacion] [uniqueidentifier] NOT NULL,
	[NotaAclaratoria] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblNotaAclaratoria_1] PRIMARY KEY CLUSTERED 
(
	[IdNotasCotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompra](
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[ReferenciaCot] [varchar](200) NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[Iva] [decimal](18, 2) NOT NULL,
	[Total]  AS (([SubTotal]-[Descuento])+[Iva]),
	[Estatus] [int] NOT NULL,
	[Enviada] [int] NOT NULL,
	[EnviarA] [varchar](200) NOT NULL,
	[IdMoneda] [uniqueidentifier] NOT NULL,
	[CondicionPago] [varchar](150) NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioCreacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaCancelacion] [datetime] NULL,
	[IdUsuarioCancelacion] [varchar](150) NULL,
	[MotivoCancelacion] [varchar](200) NULL,
	[Descuento] [decimal](18, 2) NULL,
	[IdUsuarioAprobo] [uniqueidentifier] NULL,
	[TipoOC] [varchar](50) NULL,
	[idSucursal] [uniqueidentifier] NULL,
	[idRequisicion] [uniqueidentifier] NULL,
	[FolioReq] [varchar](50) NULL,
 CONSTRAINT [PK_tblOrdenCompra] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraComentarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompraComentarios](
	[IdComentarioOC] [uniqueidentifier] NOT NULL,
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaComentario] [datetime] NOT NULL,
 CONSTRAINT [PK_tblOrdenCompraComentarios] PRIMARY KEY CLUSTERED 
(
	[IdComentarioOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompraDet](
	[IdOrdenCompraDet] [uniqueidentifier] NOT NULL,
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[Item] [int] NOT NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Comentarios] [varchar](max) NULL,
	[Cantidad] [decimal](18, 2) NOT NULL,
	[Unidad] [varchar](50) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Importe] [decimal](18, 2) NOT NULL,
	[TiempoEntrega] [varchar](150) NULL,
	[CantidadRecibida] [decimal](18, 2) NOT NULL,
	[FechaRecibida] [datetime] NULL,
 CONSTRAINT [PK_tblOrdenCompraDet] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompraDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraInsumos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompraInsumos](
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[ReferenciaCot] [varchar](200) NOT NULL,
	[IdProyecto] [varchar](200) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[Iva] [decimal](18, 2) NOT NULL,
	[Total]  AS (([SubTotal]-[Descuento])+[Iva]),
	[Estatus] [int] NOT NULL,
	[Enviada] [int] NOT NULL,
	[EnviarA] [varchar](200) NOT NULL,
	[IdMoneda] [uniqueidentifier] NOT NULL,
	[CondicionPago] [varchar](150) NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuarioCreacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaCancelacion] [datetime] NULL,
	[IdUsuarioCancelacion] [varchar](150) NULL,
	[MotivoCancelacion] [varchar](200) NULL,
	[Descuento] [decimal](18, 2) NULL,
	[IdUsuarioAprobo] [uniqueidentifier] NULL,
	[idSucursal] [uniqueidentifier] NULL,
	[FolioReq] [varchar](50) NULL,
 CONSTRAINT [PK_tblOrdenCompraInsumos] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraNota]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompraNota](
	[IdOrdenCompraNota] [uniqueidentifier] NOT NULL,
	[IdOdenCompra] [uniqueidentifier] NOT NULL,
	[Item] [int] NOT NULL,
	[NotaAclaratoria] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblOrdenCompraNota] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompraNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenTrabajo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenTrabajo](
	[IdOrdenTrabajo] [uniqueidentifier] NOT NULL,
	[FolioOrden] [varchar](50) NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdUsuarioCoordinador] [uniqueidentifier] NOT NULL,
	[FechaPruebas] [varchar](50) NULL,
	[FechaEntrega] [varchar](50) NULL,
	[FechaAlta] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermisos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPermisos](
	[IdPermiso] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[IdMenu] [int] NOT NULL,
	[Visible] [int] NOT NULL,
 CONSTRAINT [PK_tblPermisos] PRIMARY KEY CLUSTERED 
(
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedores]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProveedores](
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[Proveedor] [varchar](300) NOT NULL,
	[Contacto] [varchar](150) NOT NULL,
	[Domicilio] [varchar](300) NULL,
	[Coordenadas] [varchar](200) NULL,
	[Email] [varchar](150) NOT NULL,
	[Telefono1] [varchar](50) NULL,
	[Telefono2] [varchar](50) NULL,
	[Giro] [varchar](150) NULL,
	[Comentarios] [varchar](max) NULL,
	[Imagen] [varchar](max) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[Activo] [int] NOT NULL,
	[NombreComercial] [varchar](150) NULL,
	[DiasCredito] [int] NULL,
	[idSucursal] [uniqueidentifier] NULL,
	[RFC] [varchar](50) NULL,
 CONSTRAINT [PK_tblProveedores] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedoresContactos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProveedoresContactos](
	[IdProveedorContacto] [uniqueidentifier] NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[NombreContacto] [varchar](150) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Departamento] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tblProveedoresContactos] PRIMARY KEY CLUSTERED 
(
	[IdProveedorContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedorMaterial]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProveedorMaterial](
	[IdProveedorMaterial] [uniqueidentifier] NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[UnidadMedida] [varchar](50) NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Porcentaje] [decimal](18, 2) NULL,
	[IdMoneda] [uniqueidentifier] NOT NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblProveedorMaterial_1] PRIMARY KEY CLUSTERED 
(
	[IdProveedorMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoRequerimiento]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectoRequerimiento](
	[IdRequerimiento] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Requerimiento] [varchar](max) NOT NULL,
	[FechaRequerimiento] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblProyectoRequerimiento] PRIMARY KEY CLUSTERED 
(
	[IdRequerimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectos](
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[FolioProyecto] [varchar](50) NULL,
	[NombreProyecto] [varchar](100) NULL,
	[Descripcion] [varchar](max) NULL,
	[IdLider] [varchar](50) NULL,
	[IdCliente] [varchar](50) NULL,
	[Estatus] [varchar](50) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[FechaAlta] [datetime] NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[Activo] [int] NULL,
	[UserProject1] [varchar](100) NULL,
	[UserProject2] [varchar](100) NULL,
	[UserProject3] [varchar](100) NULL,
	[UserProject4] [varchar](100) NULL,
	[IdCotizacion] [varchar](100) NULL,
	[CostoCotizacion] [decimal](20, 2) NULL,
	[FechaTermino] [datetime] NULL,
	[EstatusDesc] [varchar](100) NULL,
	[NombreOC] [varchar](150) NULL,
	[ArchivoOC] [varchar](max) NULL,
	[NombreCL] [varchar](150) NULL,
	[ArchivoCL] [varchar](max) NULL,
	[NombreFC] [varchar](150) NULL,
	[ArchivoFC] [varchar](max) NULL,
	[CostoMOCotizado] [float] NULL,
	[CostoMaterialCotizado] [float] NULL,
	[CostoMECotizado] [float] NULL,
	[CostoMOProyectado] [float] NULL,
	[CostoMaterialProyectado] [float] NULL,
	[CostoMEProyectado] [float] NULL,
 CONSTRAINT [PK_tblProyectos] PRIMARY KEY CLUSTERED 
(
	[IdProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosBK]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosBK](
	[IdProyecto] [int] IDENTITY(1,1) NOT NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[NombreProyecto] [varchar](100) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[IdLider] [uniqueidentifier] NOT NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[Estatus] [varchar](50) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Activo] [int] NOT NULL,
	[UserProject1] [uniqueidentifier] NULL,
	[UserProject2] [uniqueidentifier] NULL,
	[UserProject3] [uniqueidentifier] NULL,
	[UserProject4] [uniqueidentifier] NULL,
	[IdCotizacion] [uniqueidentifier] NULL,
	[CostoCotizacion] [decimal](20, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosGastos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosGastos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[Folio] [varchar](150) NULL,
	[FechaInicio] [varchar](50) NULL,
	[FechaFin] [varchar](50) NULL,
	[Lider] [varchar](150) NULL,
	[NombreProyecto] [varchar](max) NULL,
	[Estatus] [varchar](50) NULL,
	[CostoCotizacion] [decimal](20, 2) NULL,
	[RazonSocial] [varchar](500) NULL,
	[NombreContacto] [varchar](500) NULL,
	[OC] [varchar](50) NULL,
	[CL] [varchar](50) NULL,
	[Facturado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 2) NULL,
	[Pagado] [decimal](20, 2) NULL,
	[PorcentajePagado] [decimal](20, 2) NULL,
	[Gastos] [decimal](20, 2) NULL,
	[OCNumero] [decimal](20, 2) NULL,
	[OCPend] [decimal](20, 2) NULL,
	[Facturas] [decimal](20, 2) NULL,
	[ManoObra] [decimal](20, 2) NULL,
	[Viaticos] [decimal](20, 2) NULL,
	[CajaChica] [decimal](20, 2) NULL,
 CONSTRAINT [PK_tblProyectosGastos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoTaskImagen]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectoTaskImagen](
	[IdTaskImagen] [uniqueidentifier] NOT NULL,
	[IdTask] [uniqueidentifier] NOT NULL,
	[Imagen] [varchar](max) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[FileName] [varchar](max) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[FileContentType] [varchar](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblProyectoTaskImagen] PRIMARY KEY CLUSTERED 
(
	[IdTaskImagen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoTasks]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectoTasks](
	[IdTask] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Task] [varchar](150) NOT NULL,
	[IdUsuario] [uniqueidentifier] NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[Estatus] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[Porcentaje] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblProyectoTasks] PRIMARY KEY CLUSTERED 
(
	[IdTask] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoTasksBK]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectoTasksBK](
	[IdTask] [int] IDENTITY(1,1) NOT NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Task] [varchar](150) NOT NULL,
	[IdUsuario] [uniqueidentifier] NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[Estatus] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[Porcentaje] [decimal](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoTasksComentarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectoTasksComentarios](
	[IdTaskComentario] [uniqueidentifier] NOT NULL,
	[IdTask] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblProyectoTasksComentarios] PRIMARY KEY CLUSTERED 
(
	[IdTaskComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRecuperaciones]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecuperaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Codigo] [char](10) NOT NULL,
	[Estatus] [bit] NOT NULL,
	[idUsuario] [uniqueidentifier] NOT NULL,
	[Correo] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tblRecuperaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReqDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReqDet](
	[IdReqDet] [uniqueidentifier] NOT NULL,
	[IdReqEnc] [uniqueidentifier] NOT NULL,
	[Item] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Unidad] [varchar](50) NOT NULL,
	[NumeroParte] [varchar](50) NOT NULL,
	[Marca] [varchar](100) NOT NULL,
	[Estatus] [bit] NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_tblReqDet] PRIMARY KEY CLUSTERED 
(
	[IdReqDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReqEnc]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReqEnc](
	[IdReqEnc] [uniqueidentifier] NOT NULL,
	[NoReq] [varchar](50) NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Estatus] [int] NOT NULL,
	[SolicitarCotizacion] [int] NOT NULL,
	[RealizarCompra] [int] NULL,
	[Observaciones] [varchar](max) NOT NULL,
	[Fecha] [varchar](150) NOT NULL,
	[IdUsuarioElaboro] [uniqueidentifier] NOT NULL,
	[FechaElaboracion] [datetime] NOT NULL,
	[IdUsuarioAutorizo] [uniqueidentifier] NULL,
	[FechaAutorizada] [datetime] NULL,
	[IdUsuarioCompra] [uniqueidentifier] NULL,
	[FechaCompra] [datetime] NULL,
 CONSTRAINT [PK_tblReqEnc] PRIMARY KEY CLUSTERED 
(
	[IdReqEnc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRequisicion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRequisicion](
	[IdRequisicion] [uniqueidentifier] NOT NULL,
	[NoRequisicion] [varchar](50) NOT NULL,
	[IdEmpresa] [uniqueidentifier] NOT NULL,
	[idContacto] [uniqueidentifier] NOT NULL,
	[Concepto] [varchar](200) NOT NULL,
	[FechaRequisicion] [datetime] NOT NULL,
	[TIMESTAMP] [datetime] NOT NULL,
	[Estatus] [int] NOT NULL,
	[NombreArchivoPdf] [varchar](150) NULL,
	[DocumentoPdf] [varchar](max) NULL,
	[NombreArchivoXls] [varchar](150) NULL,
	[DocumentoXls] [varchar](max) NULL,
	[CostoRequisicion] [decimal](18, 2) NULL,
	[IdUsuarioCancela] [uniqueidentifier] NULL,
	[ComentarioCancela] [varchar](250) NULL,
	[FechaCancela] [datetime] NULL,
	[FechaEnviada] [datetime] NULL,
	[IdUsuarioEnvia] [uniqueidentifier] NULL,
	[IdUsuarioCreo] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblRequisicion] PRIMARY KEY CLUSTERED 
(
	[IdRequisicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRFQ](
	[IdRfq] [uniqueidentifier] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[Round] [varchar](10) NOT NULL,
	[Fecha] [varchar](150) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
	[FolioRQ] [varchar](100) NOT NULL,
	[IdComprador] [uniqueidentifier] NOT NULL,
	[IdCotizacion] [uniqueidentifier] NULL,
	[ArchivoRFQ] [varchar](max) NULL,
	[Estatus] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificar] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[idVendedor] [uniqueidentifier] NULL,
	[idCoordinador] [uniqueidentifier] NULL,
	[Seguimiento] [varchar](max) NULL,
 CONSTRAINT [PK_tblRFQ] PRIMARY KEY CLUSTERED 
(
	[IdRfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRFQDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRFQDet](
	[IdRFQDet] [uniqueidentifier] NOT NULL,
	[IdRfq] [uniqueidentifier] NOT NULL,
	[Item] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Unidad] [varchar](50) NOT NULL,
	[NumeroParte] [varchar](50) NOT NULL,
	[Marca] [varchar](100) NOT NULL,
	[Estatus] [bit] NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_tblRFQDet] PRIMARY KEY CLUSTERED 
(
	[IdRFQDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRfqSeguimiento]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRfqSeguimiento](
	[IdSeguimiento] [uniqueidentifier] NOT NULL,
	[IdRfqVentas] [uniqueidentifier] NOT NULL,
	[Seguimiento] [varchar](200) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblRfqSeguimiento] PRIMARY KEY CLUSTERED 
(
	[IdSeguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRfqVentas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRfqVentas](
	[IdRfqVentas] [uniqueidentifier] NOT NULL,
	[FolioRfq] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[IdUsuarioVendedor] [uniqueidentifier] NOT NULL,
	[IdUsuarioCoordinador] [uniqueidentifier] NOT NULL,
	[Empresa] [varchar](100) NULL,
	[Contacto] [varchar](100) NULL,
	[FechaRfq] [date] NULL,
	[FechaEntrega] [date] NULL,
	[Enviado] [int] NULL,
	[Estatus] [int] NULL,
	[Seguimiento] [varchar](200) NULL,
	[FechaAlta] [datetime] NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblRfqVentas] PRIMARY KEY CLUSTERED 
(
	[IdRfqVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRolesUsuarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRolesUsuarios](
	[idRol] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[idUsuarios] [uniqueidentifier] NOT NULL,
	[ClienteEmpresa] [bit] NOT NULL,
	[ClienteEmpresaAgregar] [bit] NOT NULL,
	[ClienteEmpresaEditar] [bit] NOT NULL,
	[ClienteEmpresaEliminar] [bit] NOT NULL,
	[ClienteContacto] [bit] NOT NULL,
	[ClienteContactoAgrear] [bit] NOT NULL,
	[ClienteContactoEditar] [bit] NOT NULL,
	[ClienteContactoEliminar] [bit] NOT NULL,
	[RFQ] [bit] NOT NULL,
	[RFQAgregar] [bit] NOT NULL,
	[RFQEditar] [bit] NOT NULL,
	[RFQEliminar] [bit] NOT NULL,
	[Cotizaciones] [bit] NOT NULL,
	[CotizacionesAgregar] [bit] NOT NULL,
	[CotizacionesEditar] [bit] NOT NULL,
	[CotizacionesEliminar] [bit] NOT NULL,
	[Materiales] [bit] NOT NULL,
	[MaterialesAgregar] [bit] NOT NULL,
	[MaterialesEditar] [bit] NOT NULL,
	[MaterialesEliminar] [bit] NOT NULL,
	[Proveedores] [bit] NOT NULL,
	[ProveedoresAgregar] [bit] NOT NULL,
	[ProveedoresEditar] [bit] NOT NULL,
	[ProveedoresEliminar] [bit] NOT NULL,
	[Requisiciones] [bit] NOT NULL,
	[RequisicionesAgregar] [bit] NOT NULL,
	[RequisicionesEditar] [bit] NOT NULL,
	[RequisicionesEliminar] [bit] NOT NULL,
	[OC] [bit] NOT NULL,
	[OCAgregar] [bit] NOT NULL,
	[OCEditar] [bit] NOT NULL,
	[OCEliminar] [bit] NOT NULL,
	[Viaticos] [bit] NOT NULL,
	[ViaticosAgregar] [bit] NOT NULL,
	[ViaticosEditar] [bit] NOT NULL,
	[ViaticosEliminar] [bit] NOT NULL,
	[Proyectos] [bit] NOT NULL,
	[ProyectosEditar] [bit] NOT NULL,
	[ProyectosEliminar] [bit] NOT NULL,
	[ProyectosAgregar] [bit] NOT NULL,
	[CajaChica] [bit] NOT NULL,
	[CajaChicaAgregar] [bit] NOT NULL,
	[CajaChicaEditar] [bit] NOT NULL,
	[CajaChicaEliminar] [bit] NOT NULL,
	[Usuarios] [bit] NOT NULL,
	[UsuariosAgregar] [bit] NOT NULL,
	[UsuariosEditar] [bit] NOT NULL,
	[UsuariosEliminar] [bit] NOT NULL,
	[Sucursales] [bit] NOT NULL,
	[SucursalesAgregar] [bit] NOT NULL,
	[SucursalesEditar] [bit] NOT NULL,
	[SucursalesEliminar] [bit] NOT NULL,
	[ControlFacturas] [bit] NOT NULL,
	[ControlDocumentos] [bit] NOT NULL,
	[Administracion] [bit] NOT NULL,
	[Timming] [bit] NOT NULL,
	[ServiciosCarro] [bit] NOT NULL,
	[Inventario] [bit] NOT NULL,
	[ServiciosComputo] [bit] NOT NULL,
	[FacturasEmitidas] [bit] NULL,
	[Reportes] [bit] NULL,
 CONSTRAINT [PK_tblRolesUsuarios] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServicioComputo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServicioComputo](
	[IdServicioComputo] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Marca] [varchar](100) NOT NULL,
	[Modelo] [varchar](150) NOT NULL,
	[NoSerie] [varchar](150) NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[FechaMantenimiento] [date] NOT NULL,
	[FechaProximoMantenimiento] [date] NOT NULL,
	[Completado] [int] NOT NULL,
 CONSTRAINT [PK_tblServicioComputo] PRIMARY KEY CLUSTERED 
(
	[IdServicioComputo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServiciosComputo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiciosComputo](
	[IdComputo] [uniqueidentifier] NOT NULL,
	[PC] [varchar](100) NOT NULL,
	[Tipo] [varchar](100) NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[Serie] [varchar](100) NULL,
	[FechaProximoMantenimiento] [datetime] NULL,
	[Usuario] [varchar](150) NULL,
 CONSTRAINT [PK_tblServiciosComputo] PRIMARY KEY CLUSTERED 
(
	[IdComputo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolicitudesAprobacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolicitudesAprobacion](
	[idSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioSolicita] [varchar](50) NOT NULL,
	[idUsuarioSolicita] [varchar](50) NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[Estatus] [bit] NOT NULL,
	[CondicionEstatus] [char](10) NOT NULL,
	[Comentarios] [varchar](300) NOT NULL,
	[idDocumento] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](50) NULL,
	[idUsuarioAprobo] [uniqueidentifier] NULL,
	[usuarioAprobo] [varchar](50) NULL,
 CONSTRAINT [PK_tblSolicitudesAprobacion] PRIMARY KEY CLUSTERED 
(
	[idSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubMenu]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubMenu](
	[IdSubMenu] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NOT NULL,
	[SubMenu] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblSubMenu] PRIMARY KEY CLUSTERED 
(
	[IdSubMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSucursales]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSucursales](
	[idSucursa] [uniqueidentifier] NOT NULL,
	[CiudadSucursal] [varchar](50) NOT NULL,
	[DireccionSucursal] [varchar](250) NOT NULL,
	[TelefonoSucursal] [varchar](50) NOT NULL,
	[TIMESTAMP] [datetime] NULL,
	[Estatus] [bit] NULL,
	[Gerente] [varchar](150) NULL,
 CONSTRAINT [PK_tblSucursales] PRIMARY KEY CLUSTERED 
(
	[idSucursa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTeamProject]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeamProject](
	[IdTeamProject] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[EsLider] [int] NOT NULL,
 CONSTRAINT [PK_tblTeamProject] PRIMARY KEY CLUSTERED 
(
	[IdTeamProject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTimmingProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTimmingProyecto](
	[IdTimming] [uniqueidentifier] NOT NULL,
	[NombreProyecto] [varchar](150) NOT NULL,
	[Actividad] [varchar](150) NULL,
	[Tarea] [varchar](150) NULL,
	[FechaInicio] [varchar](50) NULL,
	[FechaFin] [varchar](50) NULL,
	[Persona] [varchar](100) NULL,
	[DiasTrans] [varchar](50) NULL,
	[Avance] [decimal](18, 3) NULL,
	[FechaAlta] [datetime] NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUnidadMedida]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUnidadMedida](
	[IdUnidadMedida] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[DescCorta] [varchar](50) NOT NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblUnidadMedida] PRIMARY KEY CLUSTERED 
(
	[IdUnidadMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuarios](
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[NombreCompleto] [varchar](100) NULL,
	[Usuario] [varchar](100) NULL,
	[Contrasena] [varchar](50) NULL,
	[Foto] [varchar](max) NULL,
	[Permisos] [int] NULL,
	[Puesto] [varchar](100) NULL,
	[Telefono] [varchar](50) NULL,
	[Correo] [varchar](100) NULL,
	[FechaAlta] [datetime] NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[Activo] [int] NULL,
	[EsLiderProyecto] [int] NULL,
	[Perfil] [varchar](max) NULL,
	[SueldoDiario] [decimal](18, 2) NULL,
	[idSucursal] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblUsuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuariosBK]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuariosBK](
	[IdUsuario] [int] NOT NULL,
	[NombreCompleto] [varchar](100) NOT NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Foto] [varchar](max) NOT NULL,
	[Permisos] [int] NOT NULL,
	[Puesto] [varchar](100) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [int] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[Activo] [int] NOT NULL,
	[EsLiderProyecto] [int] NULL,
	[Perfil] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehiculos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVehiculos](
	[IdCarro] [uniqueidentifier] NOT NULL,
	[Vehiculo] [varchar](100) NOT NULL,
	[Anio] [int] NOT NULL,
	[Comentarios] [varchar](max) NOT NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblVehiculos] PRIMARY KEY CLUSTERED 
(
	[IdCarro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehiculoServicio]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVehiculoServicio](
	[IdServicioVehiculo] [uniqueidentifier] NOT NULL,
	[IdCarro] [uniqueidentifier] NOT NULL,
	[KilometrajeActual] [int] NOT NULL,
	[Taller] [varchar](100) NOT NULL,
	[KilometrajeProximo] [int] NOT NULL,
	[FechaServicio] [date] NOT NULL,
	[TipoServicio] [varchar](max) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblVehiculoServicio] PRIMARY KEY CLUSTERED 
(
	[IdServicioVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehiculoServicioItem]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVehiculoServicioItem](
	[IdServicioVehiculoItem] [uniqueidentifier] NOT NULL,
	[IdServicioVehiculo] [uniqueidentifier] NOT NULL,
	[Servicio] [varchar](max) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblVehiculoServicioItem] PRIMARY KEY CLUSTERED 
(
	[IdServicioVehiculoItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblViaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblViaticos](
	[ID] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NULL,
	[CantEntregada] [decimal](18, 2) NOT NULL,
	[CantGastada] [decimal](18, 2) NOT NULL,
	[Diferencia]  AS ([CantEntregada]-[CantGastada]),
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Estatus] [int] NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaCaptura] [datetime] NULL,
 CONSTRAINT [PK_tblViaticos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblViaticosDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblViaticosDet](
	[IdDet] [uniqueidentifier] NOT NULL,
	[IdViaticos] [uniqueidentifier] NOT NULL,
	[FechaViaticos] [date] NOT NULL,
	[Gasolina] [decimal](18, 2) NOT NULL,
	[Desayuno] [decimal](18, 2) NOT NULL,
	[Comida] [decimal](18, 2) NOT NULL,
	[Cena] [decimal](18, 2) NOT NULL,
	[Casetas] [decimal](18, 2) NOT NULL,
	[Hotel] [decimal](18, 2) NOT NULL,
	[Transporte] [decimal](18, 2) NOT NULL,
	[Otros] [decimal](18, 2) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Ticket] [varchar](max) NULL,
	[idProyecto] [uniqueidentifier] NULL,
	[ManoObra] [decimal](18, 2) NULL,
	[Equipo] [decimal](18, 2) NULL,
	[Materiales] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblViaticosDet] PRIMARY KEY CLUSTERED 
(
	[IdDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblViaticosDetImagenes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblViaticosDetImagenes](
	[idTicket] [int] IDENTITY(1,1) NOT NULL,
	[idDet] [uniqueidentifier] NOT NULL,
	[ticket] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblViaticosDetImagenes] PRIMARY KEY CLUSTERED 
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilidad]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilidad](
	[Fecha] [date] NULL,
	[Utilidad] [decimal](20, 2) NULL,
	[idUtilidad] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Utilidad] PRIMARY KEY CLUSTERED 
(
	[idUtilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UtilidadPastel]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UtilidadPastel](
	[Nombre] [varchar](100) NULL,
	[Dato] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 2) NULL,
	[idU] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UtilidadPastel] PRIMARY KEY CLUSTERED 
(
	[idU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_Eliminado]  DEFAULT ((0)) FOR [Eliminado]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_ModificadoEn]  DEFAULT (getdate()) FOR [ModificadoEn]
GO
ALTER TABLE [dbo].[tblCajaChica] ADD  CONSTRAINT [DF_tblCajaChica_IdCajaChica]  DEFAULT (newid()) FOR [IdCajaChica]
GO
ALTER TABLE [dbo].[tblCajaChica] ADD  CONSTRAINT [DF_tblCajaChica_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChica] ADD  CONSTRAINT [DF_tblCajaChica_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCalendario] ADD  CONSTRAINT [DF_tblCalendario_Id]  DEFAULT (newid()) FOR [IdCalendario]
GO
ALTER TABLE [dbo].[tblCategoria] ADD  CONSTRAINT [DF_tblCategoria_Id]  DEFAULT (newid()) FOR [IdCategoria]
GO
ALTER TABLE [dbo].[tblClienteContacto] ADD  CONSTRAINT [DF_tblClienteContacto_idContacto]  DEFAULT (newid()) FOR [idContacto]
GO
ALTER TABLE [dbo].[tblClientes] ADD  CONSTRAINT [DF_tblClientes_Id]  DEFAULT (newid()) FOR [IdCliente]
GO
ALTER TABLE [dbo].[tblComentariosCotizacion] ADD  CONSTRAINT [DF_tblComentariosCotizacion_IdComentario]  DEFAULT (newid()) FOR [IdComentario]
GO
ALTER TABLE [dbo].[tblComentariosProyecto] ADD  CONSTRAINT [DF_tblComentariosProyecto_Id]  DEFAULT (newid()) FOR [IdComentario]
GO
ALTER TABLE [dbo].[tblControlFacturas] ADD  CONSTRAINT [DF_tblControlFacturas_IdControlFacturas]  DEFAULT (newid()) FOR [IdControlFacturas]
GO
ALTER TABLE [dbo].[tblCotizaciones] ADD  CONSTRAINT [DF_tblCotizaciones_Id]  DEFAULT (newid()) FOR [IdCotizaciones]
GO
ALTER TABLE [dbo].[tblCotizacionNew] ADD  CONSTRAINT [DF_tblCotizacionNew_Id]  DEFAULT (newid()) FOR [IdCotizacion]
GO
ALTER TABLE [dbo].[tblDatosEmpresa] ADD  CONSTRAINT [DF_tblDatosEmpresa_Id]  DEFAULT (newid()) FOR [IdDatos]
GO
ALTER TABLE [dbo].[tblDocDisenosMecanico] ADD  CONSTRAINT [DF_tblDocDisenosMecanico_Id]  DEFAULT (newid()) FOR [IdDiseno]
GO
ALTER TABLE [dbo].[tblDocMasterCamMecanico] ADD  CONSTRAINT [DF_tblDocMasterCamMecanico_Id]  DEFAULT (newid()) FOR [IdMasterCam]
GO
ALTER TABLE [dbo].[tblDocProyectos] ADD  CONSTRAINT [DF_tblDocProyectos_Id]  DEFAULT (newid()) FOR [IdDocumento]
GO
ALTER TABLE [dbo].[tblEmpresas] ADD  CONSTRAINT [DF_tblEmpresas_idEmpresa]  DEFAULT (newid()) FOR [idEmpresa]
GO
ALTER TABLE [dbo].[tblFacturasEmitidas] ADD  CONSTRAINT [DF_tblFacturasEmitidas_IdFacturasEmitidas]  DEFAULT (newid()) FOR [IdFacturasEmitidas]
GO
ALTER TABLE [dbo].[tblFacturasEmitidas] ADD  CONSTRAINT [DF_tblFacturasEmitidas_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblFacturasXML] ADD  CONSTRAINT [DF_tblFacturasXML_IdFacturaXML]  DEFAULT (newid()) FOR [IdFacturaXML]
GO
ALTER TABLE [dbo].[tblFolioCotizacion] ADD  CONSTRAINT [DF_tblFolioCotizacion_Id]  DEFAULT (newid()) FOR [IdFolioCotizacion]
GO
ALTER TABLE [dbo].[tblFolioOrdenCompra] ADD  CONSTRAINT [DF_tblFolioOrdenCompra_IdFolioOrdenCompra]  DEFAULT (newid()) FOR [IdFolioOrdenCompra]
GO
ALTER TABLE [dbo].[tblFolioReq] ADD  CONSTRAINT [DF_tblFolioReq_IdFolioReq]  DEFAULT (newid()) FOR [IdFolioReq]
GO
ALTER TABLE [dbo].[tblFolioRFQ] ADD  CONSTRAINT [DF_Table_1_IdFolioCotizacion]  DEFAULT (newid()) FOR [IdFolioRFQ]
GO
ALTER TABLE [dbo].[tblGastos] ADD  CONSTRAINT [DF_tblGastos_ID]  DEFAULT (newid()) FOR [IdGasto]
GO
ALTER TABLE [dbo].[tblGPS] ADD  CONSTRAINT [DF_tblGPS_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[tblHabilidades] ADD  CONSTRAINT [DF_tblHabilidades_ID]  DEFAULT (newid()) FOR [IdHabilidad]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_IdHorasHombre]  DEFAULT (newid()) FOR [IdHorasHombre]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Lunes]  DEFAULT ((0)) FOR [Lunes]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Martes]  DEFAULT ((0)) FOR [Martes]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Miercoles]  DEFAULT ((0)) FOR [Miercoles]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Jueves]  DEFAULT ((0)) FOR [Jueves]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Viernes]  DEFAULT ((0)) FOR [Viernes]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Sabado]  DEFAULT ((0)) FOR [Sabado]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Domingo]  DEFAULT ((0)) FOR [Domingo]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_Activo]  DEFAULT ((0)) FOR [Activo]
GO
ALTER TABLE [dbo].[tblHorasHombre] ADD  CONSTRAINT [DF_tblHorasHombre_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblInvHerramientas] ADD  CONSTRAINT [DF_Table_1_IdHerramientas]  DEFAULT (newid()) FOR [IdHerramienta]
GO
ALTER TABLE [dbo].[tblInvHerramientasDet] ADD  CONSTRAINT [DF_tblInvHerramientasDet_IdHerramientaDet]  DEFAULT (newid()) FOR [IdHerramientaDet]
GO
ALTER TABLE [dbo].[tblLiderProyecto] ADD  CONSTRAINT [DF_tblLiderProyecto_Id]  DEFAULT (newid()) FOR [IdLider]
GO
ALTER TABLE [dbo].[tblListaPendientes] ADD  CONSTRAINT [DF_tblListaPendientes_Id]  DEFAULT (newid()) FOR [IdListaPendientes]
GO
ALTER TABLE [dbo].[tblMateriales] ADD  CONSTRAINT [DF_tblMateriales_Id]  DEFAULT (newid()) FOR [IdMaterial]
GO
ALTER TABLE [dbo].[tblMaterialImagen] ADD  CONSTRAINT [DF_tblMaterialImagen_IdMaterialImagen]  DEFAULT (newid()) FOR [IdMaterialImagen]
GO
ALTER TABLE [dbo].[tblMatrizMecanico] ADD  CONSTRAINT [DF_tblMatrizMecanico_Id]  DEFAULT (newid()) FOR [IdMaquinado]
GO
ALTER TABLE [dbo].[tblMenu] ADD  CONSTRAINT [DF_tblMenu_Identificador]  DEFAULT (newid()) FOR [Identificador]
GO
ALTER TABLE [dbo].[tblMonedas] ADD  CONSTRAINT [DF_tblMonedas_Id]  DEFAULT (newid()) FOR [IdMoneda]
GO
ALTER TABLE [dbo].[tblNotaAclaratoria] ADD  CONSTRAINT [DF_tblNotaAclaratoria_Id]  DEFAULT (newid()) FOR [IdNotasCotizacion]
GO
ALTER TABLE [dbo].[tblOrdenCompra] ADD  CONSTRAINT [DF_tblOrdenCompra_IdOrdenCompra]  DEFAULT (newid()) FOR [IdOrdenCompra]
GO
ALTER TABLE [dbo].[tblOrdenCompra] ADD  CONSTRAINT [DF_tblOrdenCompra_SubTotal]  DEFAULT ((0.00)) FOR [SubTotal]
GO
ALTER TABLE [dbo].[tblOrdenCompra] ADD  CONSTRAINT [DF_tblOrdenCompra_Iva]  DEFAULT ((0.00)) FOR [Iva]
GO
ALTER TABLE [dbo].[tblOrdenCompra] ADD  CONSTRAINT [DF_tblOrdenCompra_Descuento]  DEFAULT ((0.00)) FOR [Descuento]
GO
ALTER TABLE [dbo].[tblOrdenCompraComentarios] ADD  CONSTRAINT [DF_tblOrdenCompraComentarios_IdComentarioOC]  DEFAULT (newid()) FOR [IdComentarioOC]
GO
ALTER TABLE [dbo].[tblOrdenCompraDet] ADD  CONSTRAINT [DF_tblOrdenCompraDet_IdOrdenCompraDet]  DEFAULT (newid()) FOR [IdOrdenCompraDet]
GO
ALTER TABLE [dbo].[tblOrdenCompraInsumos] ADD  CONSTRAINT [DF_tblOrdenCompraInsumos_IdOrdenCompra]  DEFAULT (newid()) FOR [IdOrdenCompra]
GO
ALTER TABLE [dbo].[tblOrdenCompraInsumos] ADD  CONSTRAINT [DF_tblOrdenCompraInsumos_SubTotal]  DEFAULT ((0.00)) FOR [SubTotal]
GO
ALTER TABLE [dbo].[tblOrdenCompraInsumos] ADD  CONSTRAINT [DF_tblOrdenCompraInsumos_Iva]  DEFAULT ((0.00)) FOR [Iva]
GO
ALTER TABLE [dbo].[tblOrdenCompraInsumos] ADD  CONSTRAINT [DF_tblOrdenCompraInsumos_Descuento]  DEFAULT ((0.00)) FOR [Descuento]
GO
ALTER TABLE [dbo].[tblOrdenCompraNota] ADD  CONSTRAINT [DF_tblOrdenCompraNota_IdOrdenCompraNota]  DEFAULT (newid()) FOR [IdOrdenCompraNota]
GO
ALTER TABLE [dbo].[tblOrdenTrabajo] ADD  CONSTRAINT [DF_tblOrdenTrabajo_IdOrdenTrabajo]  DEFAULT (newid()) FOR [IdOrdenTrabajo]
GO
ALTER TABLE [dbo].[tblPermisos] ADD  CONSTRAINT [DF_tblPermisos_Identificador]  DEFAULT (newid()) FOR [Identificador]
GO
ALTER TABLE [dbo].[tblProveedores] ADD  CONSTRAINT [DF_tblProveedores_Id]  DEFAULT (newid()) FOR [IdProveedor]
GO
ALTER TABLE [dbo].[tblProveedores] ADD  CONSTRAINT [DF_tblProveedores_DiasCredito]  DEFAULT ((0)) FOR [DiasCredito]
GO
ALTER TABLE [dbo].[tblProveedoresContactos] ADD  CONSTRAINT [DF_tblProveedoresContactos_IdProveedorContacto]  DEFAULT (newid()) FOR [IdProveedorContacto]
GO
ALTER TABLE [dbo].[tblProveedorMaterial] ADD  CONSTRAINT [DF_tblProveedorMaterial_Id]  DEFAULT (newid()) FOR [IdProveedorMaterial]
GO
ALTER TABLE [dbo].[tblProyectoRequerimiento] ADD  CONSTRAINT [DF_tblProyectoRequerimiento_Id]  DEFAULT (newid()) FOR [IdRequerimiento]
GO
ALTER TABLE [dbo].[tblProyectoTaskImagen] ADD  CONSTRAINT [DF_tblProyectoTaskImagen_Id]  DEFAULT (newid()) FOR [IdTaskImagen]
GO
ALTER TABLE [dbo].[tblProyectoTasks] ADD  CONSTRAINT [DF_tblProyectoTasks_ID]  DEFAULT (newid()) FOR [IdTask]
GO
ALTER TABLE [dbo].[tblProyectoTasksComentarios] ADD  CONSTRAINT [DF_tblProyectoTasksComentarios_Id]  DEFAULT (newid()) FOR [IdTaskComentario]
GO
ALTER TABLE [dbo].[tblReqDet] ADD  CONSTRAINT [DF_tblReqDet_IdReqDet]  DEFAULT (newid()) FOR [IdReqDet]
GO
ALTER TABLE [dbo].[tblReqEnc] ADD  CONSTRAINT [DF_Table_1_IdSolicitudMaterial]  DEFAULT (newid()) FOR [IdReqEnc]
GO
ALTER TABLE [dbo].[tblRequisicion] ADD  CONSTRAINT [DF_tblRequisicion_Id]  DEFAULT (newid()) FOR [IdRequisicion]
GO
ALTER TABLE [dbo].[tblRFQ] ADD  CONSTRAINT [DF_tblRFQ_IdRfq]  DEFAULT (newid()) FOR [IdRfq]
GO
ALTER TABLE [dbo].[tblRFQ] ADD  CONSTRAINT [DF_tblRFQ_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblRFQ] ADD  CONSTRAINT [DF_tblRFQ_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[tblRFQDet] ADD  CONSTRAINT [DF_tblRFQDet_IdRFQDet]  DEFAULT (newid()) FOR [IdRFQDet]
GO
ALTER TABLE [dbo].[tblRfqSeguimiento] ADD  CONSTRAINT [DF_tblRfqSeguimiento_IdSeguimiento]  DEFAULT (newid()) FOR [IdSeguimiento]
GO
ALTER TABLE [dbo].[tblRfqVentas] ADD  CONSTRAINT [DF_tblRfqVentas_IdRfqVentas]  DEFAULT (newid()) FOR [IdRfqVentas]
GO
ALTER TABLE [dbo].[tblRolesUsuarios] ADD  CONSTRAINT [DF_tblRolesUsuarios_idRol]  DEFAULT (newid()) FOR [idRol]
GO
ALTER TABLE [dbo].[tblServicioComputo] ADD  CONSTRAINT [DF_tblServicioComputo_Id]  DEFAULT (newid()) FOR [IdServicioComputo]
GO
ALTER TABLE [dbo].[tblServiciosComputo] ADD  CONSTRAINT [DF_tblServiciosComputo_IdComputo]  DEFAULT (newid()) FOR [IdComputo]
GO
ALTER TABLE [dbo].[tblSucursales] ADD  CONSTRAINT [DF_tblSucursales_idSucursa]  DEFAULT (newid()) FOR [idSucursa]
GO
ALTER TABLE [dbo].[tblTeamProject] ADD  CONSTRAINT [DF_tblTeamProject_Id]  DEFAULT (newid()) FOR [IdTeamProject]
GO
ALTER TABLE [dbo].[tblTimmingProyecto] ADD  CONSTRAINT [DF_tblTimmingProyecto_IdTimming]  DEFAULT (newid()) FOR [IdTimming]
GO
ALTER TABLE [dbo].[tblTimmingProyecto] ADD  CONSTRAINT [DF_tblTimmingProyecto_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblTimmingProyecto] ADD  CONSTRAINT [DF_tblTimmingProyecto_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[tblUnidadMedida] ADD  CONSTRAINT [DF_tblUnidadMedida_Id]  DEFAULT (newid()) FOR [IdUnidadMedida]
GO
ALTER TABLE [dbo].[tblVehiculos] ADD  CONSTRAINT [DF_tblVehiculos_Id]  DEFAULT (newid()) FOR [IdCarro]
GO
ALTER TABLE [dbo].[tblVehiculoServicio] ADD  CONSTRAINT [DF_tblVehiculoServicio_Id]  DEFAULT (newid()) FOR [IdServicioVehiculo]
GO
ALTER TABLE [dbo].[tblVehiculoServicioItem] ADD  CONSTRAINT [DF_tblVehiculoServicioItem_Id]  DEFAULT (newid()) FOR [IdServicioVehiculoItem]
GO
/****** Object:  StoredProcedure [dbo].[CargarEficiencias]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CargarEficiencias]
	-- Add the parameters for the stored procedure here
	@IdProyecto As VARCHAR(150)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT a.ManoObra, a.Material, a.Equipo, (a.ManoObra * 100 / (a.ManoObra + a.Material + a.Equipo)) as  MOPorcentaje,
	(a.Material * 100 / (a.ManoObra + a.Material + a.Equipo)) as MPorcentaje,
	(a.Equipo * 100 / (a.ManoObra + a.Material + a.Equipo)) as EPorcentaje,
	(case 
		when a.Material = 0
			then 0.00 
		when a.Material > 0
			then round((b.CostoMaterialProyectado / a.Material), 2) 
	end)
	as MEficientia
	,
	(case 
		when a.Equipo = 0
			then 0.00 
		when a.Equipo > 0
			then round((b.CostoMEProyectado / a.Equipo), 2)
	end)
	as EEficientia,
	(case 
		when a.ManoObra = 0
			then 0.00 
		when a.ManoObra > 0
			then round((b.CostoMOProyectado / a.ManoObra), 2)
	end)
	as MOEficientia
	from tblEficiencias a
	inner join tblProyectos b on a.idProyecto = b.IdProyecto
	where a.idProyecto = @IdProyecto
END
GO
/****** Object:  StoredProcedure [dbo].[JT_DeleteCajaChica]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <31 de Enero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_DeleteCajaChica]
	@IdCajaChica AS VARCHAR(150)
AS
BEGIN
	
	DELETE tblCajaChica
	WHERE IdCajaChica = @IdCajaChica

	SELECT @IdCajaChica AS IdCajaChica
END
GO
/****** Object:  StoredProcedure [dbo].[JT_InsertUpdateCajaChica]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <31 de Enero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_InsertUpdateCajaChica]
	@IdCajaChica AS VARCHAR(150),
	@Responsable AS VARCHAR(150),
	@Concepto AS VARCHAR(150),
	@IdProyecto AS VARCHAR(150),
	@Comprobante As VARCHAR(150),
	@Cargo AS DECIMAL(18, 2),
	@Abono As DECIMAL(18, 2), 
	@Fecha AS DATE,
	@Estatus AS INT
AS
BEGIN

	DECLARE @Proyecto AS VARCHAR(150)

	IF @IdProyecto Not IN('N/A', 'CONSUMIBLES TALLER', 'UNIFORMES SISA', 'EQUIPO DE SEGURIDAD', 'INVENTARIO', 'PENDIENTE', 'ECONOLINE 2003', 'ECONOLINE 2006', 'FOCUS', 'IKON', 'RANGER', 'REMOLQUE', 'RAM', 'CHEYENNE', 'RAM 700', 'JEEP')
	BEGIN
		SET @Proyecto = (SELECT NombreProyecto FROM tblProyectos WHERE IdProyecto = @IdProyecto)
	END
	ELSE
	BEGIN
		SET @Proyecto = @IdProyecto
	END
	
	IF @IdCajaChica = '0'
	BEGIN
		INSERT INTO [dbo].[tblCajaChica]
			   ([Responsable],[Concepto],[IdProyecto],[Proyecto],[Comprobante],[Cargo],[Abono],[Fecha],[FechaAlta],[Estatus])
		 VALUES
			   (@Responsable,@Concepto,@IdProyecto,@Proyecto,@Comprobante,@Cargo,@Abono,@Fecha,GETDATE(),@Estatus)

		SET @IdCajaChica = @@IDENTITY
	END
	ELSE
	BEGIN
		UPDATE [dbo].[tblCajaChica]
		   SET [Responsable] = @Responsable
			  ,[Concepto] = @Concepto
			  ,[IdProyecto] = @IdProyecto
			  ,[Proyecto] = @Proyecto
			  ,[Comprobante] = @Comprobante
			  ,[Cargo] = @Cargo
			  ,[Abono] = @Abono
			  ,[Fecha] = @Fecha
			  ,[Estatus] = @Estatus
		 WHERE IdCajaChica = @IdCajaChica
	END

	SELECT @IdCajaChica AS IdCajaChica

END
GO
/****** Object:  StoredProcedure [dbo].[JT_InsertUpdateControlFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <28 de Febrero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_InsertUpdateControlFacturas]
	@IdControlFacturas AS VARCHAR(150),
	@FechaFactura AS DATE,
	@IdProveedor AS VARCHAR(150),
	@NoFactura AS VARCHAR(100),
	@OrdenCompra AS VARCHAR(100),
	@IdProyecto AS VARCHAR(150),
	@Moneda AS VARCHAR(50),
	@SubTotal AS DECIMAL(18,2),
	@Descuento AS DECIMAL(18,2),
	@IVA AS DECIMAL(18,2),
	@Total AS DECIMAL(18,2), 
	@Estatus AS INT,
	@FormaPago AS VARCHAR(500),
	@Vaticos AS INT,
	@IdUsuario AS VARCHAR(150),
	@Categoria as varchar(50),
	@Anticipo AS DECIMAL(18,2),
	@NotaCredito AS DECIMAL(18,2),
	@Proyecto as varchar(150),
	@NombreArchivo as varchar(150),
	@ArchivoFactura as varchar(MAX)
AS
BEGIN
	
	
	IF @IdControlFacturas = '0'
	BEGIN
		
		INSERT INTO [dbo].[tblControlFacturas]
			   ([FechaFactura],[IdProveedor],[NoFactura],[OrdenCompra],[IdProyecto],[Proyecto],[Moneda],[SubTotal],[Descuento],[IVA],[Total],[Estatus],[FormaPago],[Viaticos], NombreArchivo, ArchivoFactura,[IdUsuarioAlta],[FechaAlta],[IdUsuarioModificacion],[FechaModificacion], [Categoria], [Anticipo],[NotaCredito])
		 VALUES
			   (@FechaFactura,@IdProveedor,@NoFactura,@OrdenCompra,@IdProyecto,@Proyecto,@Moneda,@SubTotal,@Descuento,@IVA,@Total,@Estatus,@FormaPago,@Vaticos,@NombreArchivo,@ArchivoFactura,@IdUsuario,GETDATE(),@IdUsuario,GETDATE(), @Categoria, @Anticipo, @NotaCredito)

		SET @IdControlFacturas = @@IDENTITY
	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblControlFacturas]
		   SET [FechaFactura] = @FechaFactura
			  ,[IdProveedor] = @IdProveedor
			  ,[NoFactura] = @NoFactura
			  ,[OrdenCompra] = @OrdenCompra
			  ,[IdProyecto] = @IdProyecto
			  ,[Proyecto] = @Proyecto
			  ,[Moneda] = @Moneda
			  ,[SubTotal] = @SubTotal
			  ,[Descuento] = @Descuento
			  ,[IVA] = @IVA
			  ,[Total] = @Total
			  ,[Estatus] = @Estatus
			  ,[FormaPago] = @FormaPago
			  ,[Viaticos] = @Vaticos
			  ,[IdUsuarioModificacion] = @IdUsuario
			  ,[FechaModificacion] = GETDATE()
			  ,[Categoria] = @Categoria
			  ,[Anticipo] = @Anticipo
			  ,[NotaCredito] = @NotaCredito
		 WHERE [IdControlFacturas] = @IdControlFacturas

	END

	SELECT @IdControlFacturas AS IdControlFacturas

END
GO
/****** Object:  StoredProcedure [dbo].[JT_InsertUpdateServicioComputo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_InsertUpdateServicioComputo]
	@IdServicioComputo AS VARCHAR(150),
	@IdUsuario AS VARCHAR(150),
	@Tipo AS Varchar(50),
	@Marca As Varchar(100),
	@Modelo AS Varchar(150),
	@NoSerie As Varchar(150),
	@Comentarios As VARCHAR(MAX),
	@FechaMantenimiento As Date,
	@Completado AS INT
AS
BEGIN
	
	DECLARE @FechaProximoMantenimiento As DATE

	SET @FechaProximoMantenimiento = (SELECT DATEADD(mm, 3, @FechaMantenimiento))

	IF @IdServicioComputo = '0'
	BEGIN

		INSERT INTO [dbo].[tblServicioComputo]
			   ([IdUsuario],[Tipo],[Marca],[Modelo],[NoSerie],[Comentarios],[FechaMantenimiento],[FechaProximoMantenimiento],[Completado])
		 VALUES
			   (@IdUsuario,@Tipo,@Marca,@Modelo,@NoSerie,@Comentarios,@FechaMantenimiento,@FechaProximoMantenimiento,@Completado)

		SET @IdServicioComputo = @@IDENTITY

	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblServicioComputo]
		   SET [IdUsuario] = @IdUsuario
			  ,[Tipo] = @Tipo
			  ,[Marca] = @Marca
			  ,[Modelo] = @Modelo
			  ,[NoSerie] = @NoSerie
			  ,[Comentarios] = @Comentarios
			  ,[FechaMantenimiento] = @FechaMantenimiento
			  ,[FechaProximoMantenimiento] = @FechaProximoMantenimiento
			  ,[Completado] = @Completado
		 WHERE IdServicioComputo = @IdServicioComputo

	END

	SELECT @IdServicioComputo AS IdServicioComputo

END
GO
/****** Object:  StoredProcedure [dbo].[JT_InsertUpdateVehiculos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_InsertUpdateVehiculos]
	@IdCarro AS VARCHAR(150),
	@Vehiculo AS VARCHAR(100),
	@Anio AS INT,
	@Activo As INT,
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	IF @IdCarro = '0'
	BEGIN

		INSERT INTO [dbo].[tblVehiculos]
			   ([Vehiculo],[Anio],[Activo],[FechaAlta],[IdUsuario],[FechaModificacion],[IdUsuarioModificacion])
		 VALUES
			   (@Vehiculo,@Anio,@Activo,GETDATE(),@IdUsuario,GETDATE(),@IdUsuario)

		SET @IdCarro = @@IDENTITY

	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblVehiculos]
		   SET [Vehiculo] = @Vehiculo
			  ,[Anio] = @Anio
			  ,[FechaModificacion] = GETDATE()
			  ,[IdUsuarioModificacion] = @IdUsuario
		 WHERE IdCarro = @IdCarro

	END

	SELECT @IdCarro As IdCarro
END
GO
/****** Object:  StoredProcedure [dbo].[JT_InsertUpdateVehiculoServicio]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_InsertUpdateVehiculoServicio]
	@IdServicioVehiculo As VARCHAR(150),
	@IdCarro As VARCHAR(150),
	@KilometrajeActual AS INT,
	@Taller AS VARCHAR(100),
	@KilometrajeProximo AS INT,
	@FechaServicio AS DATE,
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	IF @IdServicioVehiculo = '0'
	BEGIN

		INSERT INTO [dbo].[tblVehiculoServicio]
			   ([IdCarro],[KilometrajeActual],[Taller],[KilometrajeProximo],[FechaServicio],[IdUsuario],[FechaAlta],[IdUsuarioModificacion],[FechaModificacion])
		 VALUES
			   (@IdCarro,@KilometrajeActual,@Taller,@KilometrajeProximo,@FechaServicio,@IdUsuario,GETDATE(),@IdUsuario,GETDATE())

		SET @IdServicioVehiculo = @@IDENTITY

	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblVehiculoServicio]
		   SET [KilometrajeActual] = @KilometrajeActual
			  ,[Taller] = @Taller
			  ,[KilometrajeProximo] = @KilometrajeProximo
			  ,[FechaServicio] = @FechaServicio
			  ,[IdUsuarioModificacion] = @IdUsuario
			  ,[FechaModificacion] = GETDATE()
		 WHERE IdServicioVehiculo = @IdServicioVehiculo

	END

	SELECT @IdServicioVehiculo AS IdServicioVehiculo

END
GO
/****** Object:  StoredProcedure [dbo].[JT_InsertUpdateVehiculoServicioItem]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_InsertUpdateVehiculoServicioItem]
	@IdServicioVehiculoItem As VARCHAR(150),
	@IdServicioVehiculo As VARCHAR(150),
	@Servicio AS VARCHAR(100),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	IF @IdServicioVehiculoItem = '0'
	BEGIN

		INSERT INTO [dbo].[tblVehiculoServicioItem]
			   ([IdServicioVehiculo],[Servicio],[IdUsuario],[FechaAlta],[IdUsuarioModificacion],[FechaModificacion])
		 VALUES
			   (@IdServicioVehiculo,@Servicio,@IdUsuario,GETDATE(),@IdUsuario,GETDATE())

		SET @IdServicioVehiculoItem = @@IDENTITY

	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblVehiculoServicioItem]
		   SET [Servicio] = @Servicio
			  ,[IdUsuarioModificacion] = @IdUsuario
			  ,[FechaModificacion] = GETDATE()
		 WHERE IdServicioVehiculoItem = @IdServicioVehiculoItem

	END

	SELECT @IdServicioVehiculoItem AS IdServicioVehiculoItem

END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadCajaChica]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <31 de Enero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadCajaChica]
	
AS
BEGIN
	
	SELECT IdCajaChica, Responsable, Concepto, Proyecto, Comprobante, Cargo, Abono
		, IsNull((Select SUM(c.Cargo - c.Abono) FROM tblCajaChica c WHERE c.FechaAlta <= c1.FechaAlta), c1.Cargo) As Saldo, Fecha, Estatus, IdProyecto, Categoria
		,CampoExtra
	FROM tblCajaChica c1
	Order By FechaAlta desc

END

GO
/****** Object:  StoredProcedure [dbo].[JT_LoadControlFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <26 de Febrero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadControlFacturas]
	@Mes AS VARCHAR(6) = '-1',
	@IdProveedor AS VARCHAR(150) = '-1',
	@NoFactura AS VARCHAR(100) = '-1',
	@Proyecto AS VARCHAR(150) = '-1',
	@Moneda AS VARCHAR(50) = '-1',
	@Estatus AS INT = -1
AS
BEGIN
	
	--IF @Mes = '-1' AND @IdProveedor = '-1' AND @NoFactura = '-1' AND @Proyecto = '-1' AND @Moneda = '-1' AND @Estatus = -1
	--BEGIN
		--SELECT A.*, B.Proveedor, '' As IdOrdenCompra
		--FROM tblControlFacturas A
		--INNER JOIN dbo.tblProveedores B
		--ON B.IdProveedor = A.IdProveedor
		--ORDER BY FechaFactura
	--END
	--ELSE
	--BEGIN
		DECLARE @QrySQL AS VARCHAR(MAX)

		SET @QrySQL = 'SELECT [IdControlFacturas],[FechaFactura],A.[IdProveedor],[NoFactura],[OrdenCompra],[Proyecto],[Moneda],[SubTotal]
							,[Descuento],[IVA],[Total],[Estatus],[FormaPago], B.Proveedor, '''' AS IdOrdenCompra, A.IdProyecto, A.Viaticos
					FROM tblControlFacturas A
					INNER JOIN dbo.tblProveedores B
					ON B.IdProveedor = A.IdProveedor
					WHERE ' + CASE WHEN @IdProveedor = '-1' THEN ' A.IdProveedor = A.IdProveedor' ELSE 'A.IdProveedor = ' + CHAR(39) + @IdProveedor + CHAR(39) + '' END + '
					AND ' + CASE WHEN @NoFactura = '-1' THEN ' A.NoFactura = A.NoFactura' ELSE 'A.NoFactura = ' + CHAR(39) + @NoFactura + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Proyecto = '-1' THEN ' A.Proyecto = A.Proyecto' ELSE 'Replace(A.Proyecto, '' '', '''') = ' + CHAR(39) + @Proyecto + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Moneda = '-1' THEN ' A.Moneda = A.Moneda' ELSE 'A.Moneda = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Estatus = -1 THEN ' A.Estatus = A.Estatus' ELSE 'A.Estatus = ' + Convert(NVARCHAR, @Estatus) + '' END + '
					AND ' + CASE WHEN @Mes = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' SUBSTRING(REPLACE(Convert(NVarchar, A.FechaFactura, 103), ''/'',''''), 3, 6) = ' + CHAR(39) + @Mes + CHAR(39) + '' END + '
					ORDER BY FechaFactura'
	
		PRINT(@QrySQL)
		EXEC(@QrySQL)
	--END



END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadFacturasEmitidas]
	@Anio AS VARCHAR(6) = '2020',
	@Cliente AS VARCHAR(150) = '-1',
	@IdProyecto AS VARCHAR(150) = '-1',
	@Moneda AS VARCHAR(50) = '-1',
	@Estatus AS INT = -1
AS
BEGIN
	
	--SELECT * FROM tblFacturasEmitidas

	--SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '') AS NombreProyecto,IsNull(A.[NoCotizacion], '') AS NoCotizacion
	--	,[OrdenCompraRecibida],[SubTotal],[Iva],[Total],[Moneda],IsNull([ProgramacionPago], '') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '') AS FechaPago, A.Estatus
	--	, IsNull(A.IdProyecto, '') As IdProyecto
	--FROM tblFacturasEmitidas A
	--LEFT OUTER JOIN tblProyectos B
	--ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto
	--WHERE  A.NombreReceptor = A.NombreReceptor
	--AND  A.IdProyecto = A.IdProyecto
	--AND  A.Moneda = A.Moneda
	----AND A.Estatus = 0
	--AND  A.FechaFactura = A.FechaFactura
	--ORDER BY FechaFactura

	DECLARE @QrySQL AS VARCHAR(MAX)

	SET @QrySQL = 'SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '''') AS NombreProyecto,IsNull(A.[NoCotizacion], '''') AS NoCotizacion
						,[OrdenCompraRecibida],[SubTotal],[Iva],[Retencion],[Total],[Moneda],IsNull([ProgramacionPago], '''') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '''') AS FechaPago, A.Estatus
						, IsNull(A.IdProyecto, '''') As IdProyecto, Convert(Nvarchar, [ProgramacionPago], 106) AS ProgramacionPago1
						, CASE WHEN A.Estatus = 0 THEN ''PENDIENTE''
							   WHEN A.Estatus = 1 THEN ''PAGADO''
								ELSE ''CANCELADA'' END AS Estatus1, Convert(Nvarchar, [FechaFactura], 106) AS FechaFactura1, Convert(Nvarchar, [FechaPago], 106) AS FechaPago1
				FROM tblFacturasEmitidas A
				LEFT OUTER JOIN tblProyectos B
				ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto
				WHERE ' + CASE WHEN @Cliente = '-1' THEN ' A.NombreReceptor = A.NombreReceptor' ELSE 'A.NombreReceptor = ' + CHAR(39) + @Cliente + CHAR(39) + '' END + '
				AND ' + CASE WHEN @IdProyecto = '-1' THEN ' A.IdProyecto = A.IdProyecto' ELSE 'A.IdProyecto = ' + CHAR(39) + @IdProyecto + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Moneda = '-1' THEN ' A.Moneda = A.Moneda' ELSE 'A.Moneda = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Estatus = -1 THEN ' A.Estatus = A.Estatus' ELSE 'A.Estatus = ' + Convert(NVARCHAR, @Estatus) + '' END + '
				AND ' + CASE WHEN @Anio = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' YEAR(A.FechaFactura) = ' + CHAR(39) + @Anio + CHAR(39) + '' END + '
				ORDER BY FechaFactura Desc'
	
	PRINT(@QrySQL)
	EXEC(@QrySQL)


END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadInvHerramienta]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <22 de Febrero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadInvHerramienta]
	
AS
BEGIN
	
	SELECT *
	FROM tblInvHerramientas

END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadInvHerramientaDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <22 de Febrero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadInvHerramientaDet]
	@IdHerramienta AS VARCHAR(150)
AS
BEGIN
	
	SELECT *
	FROM tblInvHerramientasDet
	WHERE IdHerramienta = @IdHerramienta

END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadMonitorMecanico]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadMonitorMecanico]
	
AS
BEGIN

	SELECT A.IdMaquinado, A.IdProyecto, A.NombreProyecto, A.NoParte, Convert(NVarchar, A.FechaOC) As FechaOC, Convert(NVarchar, A.FechaEntrega) As FechaEntrega
		, ltrim(rtrim(C.NombreCompleto)) As EncargadoProyecto, ltrim(rtrim(D.NombreCompleto)) As Disenador, ltrim(rtrim(E.NombreCompleto)) AS QuienHizo
		, A.HorasMaquina, A.CantidadPzas, A.Estatus 
		, IsNull(F.[FileName], '') As NomArchivoDiseno, IsNull(G.[FileName], '') As NomArchivoMasterCam  
	FROM  dbo.tblMatrizMecanico A
	Inner Join dbo.tblUsuarios C
	On C.IdUsuario = A.IdEncargadoProyecto
	Inner Join dbo.tblUsuarios D
	On D.IdUsuario = A.IdDisenador
	Inner Join dbo.tblUsuarios E
	On E.IdUsuario = A.IdQuienHizo
	Left Outer Join dbo.tblDocDisenosMecanico F
	ON F.IdDiseno = A.IdDiseno
	Left Outer Join dbo.tblDocMasterCamMecanico G
	ON G.IdMasterCam = A.IdMasterCam  
	WHERE  A.NombreProyecto Like '%%'  

END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadServicioComputo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadServicioComputo]
	
AS
BEGIN
	
	SELECT A.IdServicioComputo, A.IdUsuario, A.Tipo, A.Marca, A.Modelo, A.NoSerie, A.Comentarios, A.FechaMantenimiento, A.FechaProximoMantenimiento, A.Completado, B.NombreCompleto
	FROM tblServicioComputo A
	INNER JOIN tblUsuarios B
	ON B.IdUsuario = A.IdUsuario
	ORDER BY FechaMantenimiento Desc

END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadVehiculos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadVehiculos]
	
AS
BEGIN
	
	SELECT *
	FROM tblVehiculos
	Order By Anio Desc
	 
END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadVehiculoServicio]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadVehiculoServicio]
	@IdCarro As VARCHAR(150)
AS
BEGIN
	
	SELECT IdServicioVehiculo, IdCarro, KilometrajeActual, Taller, KilometrajeProximo, Convert(NVarchar, FechaServicio) AS FechaServicio, IdUsuario, FechaAlta, IdUsuarioModificacion, FechaModificacion
	FROM tblVehiculoServicio
	WHERE IdCarro = @IdCarro

END
GO
/****** Object:  StoredProcedure [dbo].[JT_LoadVehiculoServicioItem]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_LoadVehiculoServicioItem]
	@IdServicioVehiculo As VARCHAR(150)
AS
BEGIN
	
	SELECT *
	FROM tblVehiculoServicioItem
	WHERE IdServicioVehiculo = @IdServicioVehiculo

END
GO
/****** Object:  StoredProcedure [dbo].[JT_UpdateFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[JT_UpdateFacturasEmitidas]
	@IdFacturasEmitidas As VARCHAR(150),
	@IdProyecto AS VARCHAR(150),
	@NoCotizacion AS VARCHAR(150),
	@OrdenCompraRecibida AS VARCHAR(100),
	@ProgramacionPago AS DATE,
	@PorPagar AS DECIMAL(20, 2),
	@FechaPago AS DATE,
	@Estatus As INT
AS
BEGIN
	

	UPDATE [dbo].[tblFacturasEmitidas]
	   SET [IdProyecto] = @IdProyecto
		  ,[NoCotizacion] = @NoCotizacion
		  ,[OrdenCompraRecibida] = @OrdenCompraRecibida
		  ,[ProgramacionPago] = @ProgramacionPago
		  ,[PorPagar] = @PorPagar
		  ,[FechaPago] = @FechaPago
		  ,[Estatus] = @Estatus
	 WHERE [IdFacturasEmitidas] = @IdFacturasEmitidas


	 SELECT @IdFacturasEmitidas AS IdFacturasEmitidas
END
GO
/****** Object:  StoredProcedure [dbo].[MezclaProductos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MezclaProductos]
	(@Productos AS dbo.Producto READONLY)
AS
BEGIN
   MERGE Productos as target
   USING @Productos AS source
   ON( target.ID = source.ID )
   WHEN MATCHED THEN
	UPDATE SET
		target.Nombre = source.Nombre,
		target.Precio = source.Precio,
		target.Eliminado = source.Eliminado,
		target.ModificadoEn = source.ModificadoEn
   WHEN NOT MATCHED THEN
	INSERT  (ID, Nombre, Precio, Eliminado, ModificadoEn )
	VALUES  ( source.ID, source.Nombre, source.Precio,
			  source.Eliminado, source.ModificadoEn );

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizaCantidadEntregadaOC]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <15 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ActualizaCantidadEntregadaOC]
	@IdOrdenCompra As VARCHAR(150) = 'aa62c0b3-93a9-4b38-9538-707dee44d324',
	@Item AS INT = 1,
	@CantidadRecibida AS DECIMAL(18, 2) = 1.00
AS
BEGIN
	

	UPDATE tblOrdenCompraDet 
	SET CantidadRecibida = @CantidadRecibida + CantidadRecibida, FechaRecibida = GETDATE()
	WHERE IdOrdenCompra = @IdOrdenCompra And Item = @Item

	IF (SELECT COUNT(*) FROM tblOrdenCompraDet WHERE IdOrdenCompra = @IdOrdenCompra And CantidadRecibida != Cantidad) = 0
	BEGIN
		UPDATE tblOrdenCompra
		SET Estatus = 1
		WHERE IdOrdenCompra = @IdOrdenCompra

		UPDATE [dbo].[tblOrdenCompraInsumos]
		SET Estatus = 1
		WHERE IdOrdenCompra = @IdOrdenCompra
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizaDatosInfoCenter]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <27 de Junio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ActualizaDatosInfoCenter]
	@NombreRobot AS VARCHAR(150),
	@TrabajoElectrico AS DECIMAL(19, 2),
	@TrabajoMecanico AS DECIMAL(19, 2)
AS
BEGIN
	
	DECLARE @IdEstacion AS INT, @IdEstacionRobot AS INT

	SELECT @IdEstacion = IdEstacion, @IdEstacionRobot = IdEstacionRobots 
	FROM InfoCenter.dbo.tblEstacionRobot
	WHERE NombreRobot = @NombreRobot

	UPDATE InfoCenter..tblEstacionRobotDetalle
	SET Porcentaje = @TrabajoElectrico
	WHERE IdEstacionRobots = @IdEstacionRobot AND Trabajo = 'Electrico'

	UPDATE InfoCenter..tblEstacionRobotDetalle
	SET Porcentaje = @TrabajoMecanico
	WHERE IdEstacionRobots = @IdEstacionRobot AND Trabajo = 'Mecanico'

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizaDatosInfoCenterValiant]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Junio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ActualizaDatosInfoCenterValiant]
	@IdEstacion AS INT,
	@Electrico AS DECIMAL(19, 2),
	@Mecanico AS DECIMAL(19, 2),
	@Comentarios AS VARCHAR(MAX)
AS
BEGIN
	
	UPDATE InfoCenter..tblEstacionesValiant
	SET Electrico = @Electrico, Mecanico = @Mecanico, Comentarios = @Comentarios
	WHERE IdEstacionValiant = @IdEstacion

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizaSueldoUsuario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ActualizaSueldoUsuario]
	@IdUsuario As VARCHAR(150),
	@Sueldo AS DECIMAL(18, 2),
	@IdUsuarioModifico AS VARCHAR(150)
AS
BEGIN
	
	UPDATE tblUsuarios
	SET SueldoDiario = @Sueldo, IdUsuarioModificacion = @IdUsuarioModifico, FechaModificacion = GETDATE()
	WHERE IdUsuario = @IdUsuario

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Administracion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================

-- Create date: <21 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Administracion]
	
AS
BEGIN
	
	--SELECT ROW_NUMBER() OVER(Order by A.FechaAlta DESC) As ID, A.FolioProyecto, NombreProyecto, UPPER(IsNull(C.Contacto, 'N/A')) As ContactoCliente, UPPER(IsNull(C.RazonSocial, 'N/A')) As Cliente, UPPER(B.NombreCompleto) AS LiderProyecto, Convert(NVarchar, FechaInicio, 106) As FechaInicio
	--		, Convert(NVarchar, FechaFin, 106) As FechaFin, IsNull(NombreOC, '') AS OC, ArchivoOC, IsNull(NombreCL, '') AS CL, ArchivoCL, IsNull(NombreFC, '') AS FC, ArchivoFC, A.IdProyecto As IdProyecto, A.Estatus
	--		, IsNull(D.Total, 0) As Facturado, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 100 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion) * 100) END) AS Porcentaje, IsNull(D.Estatus, 0) AS EstatusFactura
	--		/*, CASE WHEN A.FechaTermino Is Null THEN CASE WHEN DATEDIFF(day, FechaInicio, GETDATE()) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, GETDATE()) END ELSE CASE WHEN DATEDIFF(day, FechaInicio, FechaTermino) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, FechaTermino) END END As Dias, */
	--FROM tblProyectos A
	--Inner Join dbo.tblUsuarios B
	--ON B.IdUsuario = A.IdLider
	--Left Outer Join dbo.tblClientes C
	--On C.IdCliente = A.IdCliente
	--Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total, Estatus FROM dbo.tblFacturasEmitidas Group By IdProyecto, Estatus) D
	--ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	--WHERE A.Activo = 1
	--ORDER BY A.Estatus, A.FechaAlta Desc

	SELECT ROW_NUMBER() OVER(Order by A.FechaAlta DESC) As ID, A.FolioProyecto, NombreProyecto, C.NombreContacto As ContactoCliente, F.Cliente As Cliente, UPPER(B.NombreCompleto) AS LiderProyecto, FechaInicio
			, FechaFin, IsNull(NombreOC, '') AS OC, IsNull(NombreCL, '') AS CL, IsNull(NombreFC, '') AS FC, A.IdProyecto As IdProyecto, A.Estatus
			, IsNull(D.Total, 0) As Facturado
			, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 100 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion) * 100) END) AS Porcentaje
			, IsNull(E.Total, 0) As Pagado
			, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(E.Total, 0)) = 0 THEN 100 ELSE ((IsNull(E.Total, 0) / A.CostoCotizacion) * 100) END) AS PorcentajePagado
			, ISNULL(A.EstatusDesc, 'PENDIENTE') AS EstatusDesc, B.IdUsuario, A.IdUsuarioAlta
			--, IsNull(D.Estatus, 0) AS EstatusFactura
			/*, CASE WHEN A.FechaTermino Is Null THEN CASE WHEN DATEDIFF(day, FechaInicio, GETDATE()) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, GETDATE()) END ELSE CASE WHEN DATEDIFF(day, FechaInicio, FechaTermino) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, FechaTermino) END END As Dias, */
			,A.CostoMaterialProyectado, A.CostoMOProyectado, A.CostoMEProyectado, A.FechaAlta
	FROM tblProyectos A
	Inner Join dbo.tblUsuarios B
	ON B.IdUsuario = A.IdLider
	Left Outer Join dbo.tblClienteContacto C
	On C.idContacto = A.IdCliente
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas Where Estatus !=2 Group By IdProyecto) D
	ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) E
	ON E.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	left outer join dbo.tblEmpresas F 
	ON c.idEmpresa = F.idEmpresa
	WHERE A.Activo = 1 
	ORDER BY A.Estatus, A.FechaAlta Desc

END
GO
/****** Object:  StoredProcedure [dbo].[sp_BDExcelRober]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <20 de Septiembre 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_BDExcelRober]
	
AS
BEGIN
	
	CREATE TABLE #Proyectos (
		IdProyecto uniqueidentifier,
		Gastos DECIMAL(20, 2)
	)

	DECLARE @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
			, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2), @IdProyecto AS VARCHAR(150)


	DECLARE vendor_cursor CURSOR FOR   
	SELECT IdProyecto
	FROM dbo.tblProyectos A
	INNER JOIN dbo.tblUsuarios B
	On B.IdUsuario = A.IdLider
	INNER JOIN dbo.tblClienteContacto C
	ON C.idContacto = A.IdCliente
	--WHERE Activo = 1 And Estatus != 2

	OPEN vendor_cursor  

	FETCH NEXT FROM vendor_cursor   
	INTO @IdProyecto

	WHILE @@FETCH_STATUS = 0  
	BEGIN  

		SET @totalOC = 0
		SET @totalOCPend = 0
		SET @totalFacturas = 0
		SET @manoObra = 0
		SET @viaticos = 0
		SET @cajaChica = 0

		/* ORDENES DE COMPRA */
		SELECT @totalOC = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY C.Abreviatura--, CONVERT(DATE, B.FechaCreacion)
		) A

		/* ORDENES DE COMPRA PENDIENTES POR RECIBIR */
		SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura
		) A

		/* FACTURAS */
		SELECT @totalFacturas = SUM(Facturas)
		FROM (
			SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas
			WHERE IdProyecto = @IdProyecto And Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
			AND Viaticos = 0
		) A

		--/* MANO DE OBRA */
		SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1

		/* VIATICOS */
		SELECT @viaticos = SUM(TOTAL)
		FROM (
			SELECT 'Viaticos' As Nombre, CASE WHEN A.CantGastada = 0 THEN A.CantEntregada ELSE A.CantGastada END AS TOTAL
				--, IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) AS Total
				--, ((IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
			FROM [SisaAdmin].[dbo].[tblViaticos] A
			--INNER JOIN dbo.tblViaticosDet B
			--ON B.IdViaticos = A.ID
			WHERE A.IdProyecto = @IdProyecto
		) A
		GROUP BY Nombre
		--SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
		--FROM [SisaAdmin].[dbo].[tblViaticos] A
		--INNER JOIN dbo.tblViaticosDet B
		--ON B.IdViaticos = A.ID
		--WHERE A.IdProyecto = @IdProyecto

		/* CAJA CHICA */
		SELECT @cajaChica = SUM(A.ABono)
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS','ORDEN DE COMPRA') And A.IdProyecto = @IdProyecto

		--PRINT(IsNull(@totalOC, 0.00))
		--PRINT(IsNull(@totalFacturas, 0.00))
		--PRINT(IsNull(@viaticos, 0.00))
		--PRINT(IsNull(@cajaChica, 0.00))
		--PRINT(IsNull(@manoObra, 0.00))

		SET @totalGastos = (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))
	
		--SET @cont = @cont + 1

		INSERT #Proyectos
		SELECT @IdProyecto, @totalGastos

     
		FETCH NEXT FROM vendor_cursor   
		INTO @IdProyecto
	END   
	CLOSE vendor_cursor;  
	DEALLOCATE vendor_cursor; 


	--Select A.FechaAlta AS FechaCreacion, ISNULL(FolioProyecto, '') AS Folio, FechaInicio, FechaFin, B.NombreCompleto AS Lider, A.NombreProyecto
	--	, CASE WHEN A.Activo = 0 THEN 'CANCELADO' ELSE CASE WHEN A.FechaTermino Is NULL THEN 'EN PROCESO' ELSE 'FINALIZADO' END END AS [Estatus]
	--	, A.CostoCotizacion, C.RazonSocial, C.Contacto, CASE WHEN A.NombreOC != '' THEN 'SI' ELSE 'NO' END AS OC
	--	, CASE WHEN A.NombreCL != '' THEN 'SI' ELSE 'NO' END AS CL
	--	, IsNull(D.Total, 0) As Facturado
	--	, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 1 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion)) END) AS Porcentaje
	--	, IsNull(E.Total, 0) As Pagado
	--	, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(E.Total, 0)) = 0 THEN 1 ELSE ((IsNull(E.Total, 0) / A.CostoCotizacion)) END) AS PorcentajePagado
	--	, F.Gastos
	--From tblProyectos A
	--INNER JOIN dbo.tblUsuarios B
	--On B.IdUsuario = A.IdLider
	--INNER JOIN dbo.tblClientes C
	--ON C.IdCliente = A.IdCliente
	--Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus != 2 Group By IdProyecto) D
	--ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	--Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) E
	--ON E.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	--INNER JOIN #Proyectos F
	--ON F.IdProyecto = A.IdProyecto

	Select A.FechaAlta AS FechaCreacion, ISNULL(FolioProyecto, '') AS Folio, FechaInicio, FechaFin, B.NombreCompleto AS Lider, A.NombreProyecto
		--, CASE WHEN A.Activo = 0 THEN 'CANCELADO' ELSE CASE WHEN A.FechaTermino Is NULL THEN 'EN PROCESO' ELSE 'FINALIZADO' END END AS [Estatus]
		, ISNULL(A.EstatusDesc, 'PENDIENTE') AS [Estatus]
		, A.CostoCotizacion, em.RazonSocial, C.NombreContacto, CASE WHEN A.NombreOC != '' THEN 'SI' ELSE 'NO' END AS OC
		, CASE WHEN A.NombreCL != '' THEN 'SI' ELSE 'NO' END AS CL
		, IsNull(D.Total, 0) As Facturado
		, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 1 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion)) END) AS Porcentaje
		, IsNull(E.Total, 0) As Pagado
		, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(E.Total, 0)) = 0 THEN 1 ELSE ((IsNull(E.Total, 0) / A.CostoCotizacion)) END) AS PorcentajePagado
		, F.Gastos, IsNULL(COMPRAS.OC, 0) AS OC, ISNULL(COMPRASPEND.OCPEND, 0) AS OCPEND, ISNULL(FACTURAS.Facturas, 0) AS Facturas
		, ISNULL(MANOOBRA.MANOOBRA, 0) AS MANOOBRA, ISNULL(VIATICOS.VIATICOS, 0) AS VIATICOS, ISNULL(CAJACHICA.CAJACHICA, 0) AS CAJACHICA
	From tblProyectos A
	INNER JOIN dbo.tblUsuarios B
	On B.IdUsuario = A.IdLider
	INNER JOIN dbo.tblClienteContacto C	
	ON C.idContacto = A.IdCliente
	INNER JOIN dbo.tblEmpresas em
	on C.idEmpresa = em.idEmpresa
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus != 2 Group By IdProyecto) D
	ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) E
	ON E.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	INNER JOIN #Proyectos F
	ON F.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(OC) AS OC
		FROM (
			SELECT B.IdProyecto, CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY C.Abreviatura, B.IdProyecto
		) A
		GROUP BY IdProyecto
	) COMPRAS
	ON COMPRAS.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(OC) AS OCPEND
		FROM (
			SELECT B.IdProyecto, CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura, B.IdProyecto
		) A
		GROUP BY IdProyecto
	) COMPRASPEND
	ON COMPRASPEND.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(Facturas) AS Facturas
		FROM (
			SELECT IdProyecto, CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas A
			WHERE Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE CONVERT(VARCHAR(150), IdProyecto) = A.IdProyecto)
			AND Viaticos = 0
		) A
		GROUP BY IdProyecto
	) FACTURAS
	ON FACTURAS.IdProyecto = CONVERT(VARCHAR(150), A.IdProyecto)
	LEFT OUTER JOIN (
		SELECT A.IdProyecto, Sum(((B.SueldoDiario / 8) * A.Total)) AS MANOOBRA
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE A.Activo = 1
		GROUP BY A.IdProyecto
	) MANOOBRA
	ON MANOOBRA.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(TOTAL) AS VIATICOS
		FROM (
			SELECT IdProyecto, CASE WHEN CantGastada = 0 THEN CantEntregada ELSE CantGastada END AS TOTAL
			FROM [SisaAdmin].[dbo].[tblViaticos]
		) A
		GROUP BY IdProyecto
	) VIATICOS
	ON VIATICOS.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(A.ABono) AS CAJACHICA
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS')
		GROUP BY IdProyecto
	) CAJACHICA
	ON CAJACHICA.IdProyecto = CONVERT(VARCHAR(150), A.IdProyecto)

	
	DROP TABLE #Proyectos
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_BuscarFacturasEmitidas]
	@Anio AS VARCHAR(6) = '2020',
	@Cliente AS VARCHAR(150) = '-1',
	@IdProyecto AS VARCHAR(150) = '-1',
	@Moneda AS VARCHAR(50) = '-1',
	@Estatus AS INT = -1
AS
BEGIN
	
	--SELECT * FROM tblFacturasEmitidas

	--SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '') AS NombreProyecto,IsNull(A.[NoCotizacion], '') AS NoCotizacion
	--	,[OrdenCompraRecibida],[SubTotal],[Iva],[Total],[Moneda],IsNull([ProgramacionPago], '') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '') AS FechaPago, A.Estatus
	--	, IsNull(A.IdProyecto, '') As IdProyecto
	--FROM tblFacturasEmitidas A
	--LEFT OUTER JOIN tblProyectos B
	--ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto
	--WHERE  A.NombreReceptor = A.NombreReceptor
	--AND  A.IdProyecto = A.IdProyecto
	--AND  A.Moneda = A.Moneda
	----AND A.Estatus = 0
	--AND  A.FechaFactura = A.FechaFactura
	--ORDER BY FechaFactura
	
	DECLARE @QrySQL AS VARCHAR(MAX)

	SET @QrySQL = 'SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '''') AS NombreProyecto,IsNull(A.[NoCotizacion], '''') AS NoCotizacion
						,[OrdenCompraRecibida],[SubTotal],[Iva],[Retencion],[Total],[Moneda],IsNull([ProgramacionPago], '''') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '''') AS FechaPago, A.Estatus
						, IsNull(A.IdProyecto, '''') As IdProyecto, Convert(Nvarchar, [ProgramacionPago], 106) AS ProgramacionPago1
						, CASE WHEN A.Estatus = 0 THEN ''PENDIENTE''
							   WHEN A.Estatus = 1 THEN ''PAGADO''
								ELSE ''CANCELADA'' END AS Estatus1, Convert(Nvarchar, [FechaFactura], 106) AS FechaFactura1, Convert(Nvarchar, [FechaPago], 106) AS FechaPago1
				FROM tblFacturasEmitidas A
				LEFT OUTER JOIN tblProyectos B
				ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto
				WHERE ' + CASE WHEN @Cliente = '-1' THEN ' A.NombreReceptor = A.NombreReceptor' ELSE 'A.NombreReceptor = ' + CHAR(39) + @Cliente + CHAR(39) + '' END + '
				AND ' + CASE WHEN @IdProyecto = '-1' THEN ' A.IdProyecto = A.IdProyecto' ELSE 'A.IdProyecto = ' + CHAR(39) + @IdProyecto + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Moneda = '-1' THEN ' A.Moneda = A.Moneda' ELSE 'A.Moneda = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Estatus = -1 THEN ' A.Estatus = A.Estatus' ELSE 'A.Estatus = ' + Convert(NVARCHAR, @Estatus) + '' END + '
				AND ' + CASE WHEN @Anio = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' YEAR(A.FechaFactura) = ' + CHAR(39) + @Anio + CHAR(39) + '' END + '
				ORDER BY FechaFactura Desc'
	
	EXEC(@QrySQL)


END
GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarFacturasEmitidas_2]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_BuscarFacturasEmitidas_2]
	@Anio AS VARCHAR(6) = '2020',
	@Cliente AS VARCHAR(150) = '-1',
	@IdProyecto AS VARCHAR(150) = '-1',
	@Moneda AS VARCHAR(50) = '-1',
	@Estatus AS VARCHAR(50) = '-1'
AS
BEGIN
	
	--SELECT * FROM tblFacturasEmitidas

	--SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '') AS NombreProyecto,IsNull(A.[NoCotizacion], '') AS NoCotizacion
	--	,[OrdenCompraRecibida],[SubTotal],[Iva],[Total],[Moneda],IsNull([ProgramacionPago], '') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '') AS FechaPago, A.Estatus
	--	, IsNull(A.IdProyecto, '') As IdProyecto
	--FROM tblFacturasEmitidas A
	--LEFT OUTER JOIN tblProyectos B
	--ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto
	--WHERE  A.NombreReceptor = A.NombreReceptor
	--AND  A.IdProyecto = A.IdProyecto
	--AND  A.Moneda = A.Moneda
	----AND A.Estatus = 0
	--AND  A.FechaFactura = A.FechaFactura
	--ORDER BY FechaFactura
	
	DECLARE @QrySQL AS VARCHAR(MAX)

	SET @QrySQL = 'SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '''') AS NombreProyecto,IsNull(A.[NoCotizacion], '''') AS NoCotizacion
						,[OrdenCompraRecibida],[SubTotal],[Iva],[Retencion],[Total],[Moneda],IsNull([ProgramacionPago], '''') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '''') AS FechaPago, A.Estatus
						, IsNull(A.IdProyecto, '''') As IdProyecto, Convert(Nvarchar, [ProgramacionPago], 106) AS ProgramacionPago1
						, CASE WHEN A.Estatus = 0 THEN ''PENDIENTE''
							   WHEN A.Estatus = 1 THEN ''PAGADO''
								ELSE ''CANCELADA'' END AS Estatus1, Convert(Nvarchar, [FechaFactura], 106) AS FechaFactura1, Convert(Nvarchar, [FechaPago], 106) AS FechaPago1
				FROM tblFacturasEmitidas A
				LEFT OUTER JOIN tblProyectos B
				ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto
				WHERE ' + CASE WHEN @Cliente = '-1' THEN ' A.NombreReceptor = A.NombreReceptor' ELSE 'A.NombreReceptor = ' + CHAR(39) + @Cliente + CHAR(39) + '' END + '
				AND ' + CASE WHEN @IdProyecto = '-1' THEN ' A.IdProyecto = A.IdProyecto' ELSE 'A.IdProyecto = ' + CHAR(39) + @IdProyecto + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Moneda = '-1' THEN ' A.Moneda = A.Moneda' ELSE 'A.Moneda = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Estatus = '-1' THEN ' A.Estatus = A.Estatus' ELSE 'A.Estatus = ' + @Estatus + '' END + '
				AND ' + CASE WHEN @Anio = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' YEAR(A.FechaFactura) = ' + CHAR(39) + @Anio + CHAR(39) + '' END + '
				ORDER BY FechaFactura Desc'
	
	EXEC(@QrySQL)


END
GO
/****** Object:  StoredProcedure [dbo].[sp_CambiaEstatusMaquinado]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CambiaEstatusMaquinado]
	@IdMaquinado AS VARCHAR(150),
	@Estatus AS INT
AS
BEGIN
	
	IF @Estatus = 1
	BEGIN
		UPDATE [dbo].[tblMatrizMecanico]
		   SET [Estatus] = @Estatus
			  ,[FechaInicio] = GETDATE()
		 WHERE IdMaquinado = @IdMaquinado
	END

	IF @Estatus = 2
	BEGIN
		UPDATE [dbo].[tblMatrizMecanico]
		   SET [Estatus] = @Estatus
			  ,[FechaTermino] = GETDATE()
		 WHERE IdMaquinado = @IdMaquinado
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CambiaEstatusTask]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CambiaEstatusTask]
	@IdTask AS VARCHAR(150),
	@Estatus AS INT,
	@Opcion AS INT
AS
BEGIN
	
	IF @Opcion = 2
	BEGIN
		IF @Estatus = 100
		BEGIN
			UPDATE dbo.tblProyectoTasks
			SET Estatus = 2, Porcentaje = 100
			WHERE IdTask = @IdTask
		END
		ELSE
		BEGIN
			UPDATE dbo.tblProyectoTasks
			SET Porcentaje = @Estatus
			WHERE IdTask = @IdTask
		END
		
	END
	
	IF @Opcion = 1
	BEGIN
		UPDATE dbo.tblProyectoTasks
		SET Estatus = @Estatus, Porcentaje = 0
		WHERE IdTask = @IdTask
	END
	
	IF @Opcion = 3
	BEGIN
		UPDATE dbo.tblProyectoTasks
		SET Estatus = @Estatus
		WHERE IdTask = @IdTask
	END

	

END

GO
/****** Object:  StoredProcedure [dbo].[sp_CambiarEstatusProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CambiarEstatusProyecto]
	@IdProyecto AS VARCHAR(150),
	@IdUsuario As VARCHAR(150),
	@Estatus As VARCHAR(15)
AS
BEGIN

	DECLARE @intEstatus AS INT
	DECLARE @strEstatus AS VARCHAR(15)
	
	SET @intEstatus = 0
	SET @strEstatus = ''

	IF (@Estatus = 'por_iniciar')
	BEGIN
		SET @intEstatus = 1
		SET @strEstatus = 'POR INICIAR'
	END

	IF (@Estatus = 'en_proceso')
	BEGIN
		SET @intEstatus = 2
		SET @strEstatus = 'EN PROCESO'
	END
	
	UPDATE dbo.tblProyectos
	SET IdUsuarioModificacion = @IdUsuario, FechaModificacion = GETDATE(), Estatus = @intEstatus, EstatusDesc = @strEstatus
	WHERE IdProyecto = @IdProyecto

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelaCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <10 de Marzo del 2017> 
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CancelaCotizacion]
	@IdCotizacion As VARCHAR(150),
	@IdUsuario AS VARCHAR(150),
	@Comentario AS VARCHAR(MAX)
AS
BEGIN
	
	UPDATE tblCotizacionNew
	SET Estatus = 'CANCELADA', IdUsuarioCancela = @IdUsuario, ComentarioCancela = @Comentario, FechaCancela = GETDATE()
	WHERE IdCotizacion = @IdCotizacion

END

GO
/****** Object:  StoredProcedure [dbo].[sp_CancelaOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Septiembre del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CancelaOrdenCompra]
	@IdOrdenCompra AS VARCHAR(150),
	@Motivo As VARCHAR(200),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	UPDATE [dbo].[tblOrdenCompra]
	   SET [Estatus] = 2
		  ,[FechaCancelacion] = GETDATE()
		  ,[IdUsuarioCancelacion] = @IdUsuario
		  ,[MotivoCancelacion] = @Motivo
	 WHERE IdOrdenCompra = @IdOrdenCompra


	UPDATE [dbo].[tblOrdenCompraInsumos]
		SET [Estatus] = 2
		   ,[FechaCancelacion] = GETDATE()
		   ,[IdUsuarioCancelacion] = @IdUsuario
		   ,[MotivoCancelacion] = @Motivo
	WHERE IdOrdenCompra = @IdOrdenCompra


	INSERT INTO [dbo].[tblOrdenCompraComentarios]
           ([IdOrdenCompra],[Comentario],[IdUsuario],[FechaComentario])
     VALUES
           (@IdOrdenCompra,@Motivo,@IdUsuario,GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargaCombos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargaCombos]
	@Opcion AS INT
AS
BEGIN
	IF @Opcion = 1
	BEGIN
		Select IdUsuario as Id, NombreCompleto as Nombre
		From tblUsuarios
		Where Activo = 1
		Order By NombreCompleto
	END

	IF @Opcion = 2
	BEGIN
		SELECT IdCliente as Id, Contacto AS Nombre
		FROM tblClientes
		WHERE Activo = 1
		ORder By Contacto
	END

	IF @Opcion = 3
	BEGIN
		Select IdUsuario as Id, NombreCompleto AS Nombre
		From tblUsuarios
		Where Activo = 1
		Order By NombreCompleto
	END

	IF @Opcion = 4
	BEGIN
		SELECT IdCategoria as Id, Categoria AS Nombre
		FROM tblCategoria
		WHERE Activo = 1
		ORder By Categoria
	END

	IF @Opcion = 5
	BEGIN
		SELECT IdUnidadMedida as Id, Descripcion AS Nombre
		FROM tblUnidadMedida
		WHERE Activo = 1
	END

	IF @Opcion = 6
	BEGIN
		SELECT IdMaterial AS Id, Descripcion AS Nombre
		FROM tblMateriales
		WHERE Activo = 1
	END

	IF @Opcion = 7
	BEGIN
		SELECT IdMoneda as Id, Moneda as Nombre
		FROM tblMonedas

	END

	IF @Opcion = 8
	BEGIN
		SELECT IdProyecto as Id, (FolioProyecto + '-' + NombreProyecto) as Nombre
		FROM tblProyectos
		WHERE Activo = 1

		UNION ALL

		SELECT newid() AS Id, '-- VISITAS --' As Nombre

		ORDER BY IdProyecto
	END

	IF @Opcion = 9
	BEGIN
		SELECT IdProveedor as Id, Proveedor as Nombre
		FROM tblProveedores
		WHERE Activo = 1
		ORDER BY Proveedor
	END

	IF @Opcion = 10
	BEGIN
		SELECT IdProyecto as Id, (FolioProyecto + '-' + NombreProyecto) as Nombre 
		FROM tblProyectos
		WHERE Activo = 1
		ORDER BY NombreProyecto
	END

	IF @Opcion = 11
	BEGIN
		SELECT IdUsuario as Id, NombreCompleto as Nombre
		FROM dbo.tblUsuarios
		WHERE Activo = 1 
		And IdUsuario IN('CB42E6B9-D27D-467F-B1F9-8FD5BEC07598'
						,'F6B05324-BB1A-4D95-9CAA-942D1EA07FBD'
						,'8FAC4696-6E1F-4125-BC41-42389B0633D3'
						,'9ACA5529-3587-4DC4-AA92-A6D50234740E'
						,'431CBC7E-1208-4150-B759-878E07978A7C'
						,'51999E3F-A18F-4556-8299-D879CDF88F9A'
						,'05609500-0586-4D3D-A931-D1EB63EC9E55'
						,'98B91267-1CB6-4C9B-9F37-713E95B1CED0'
						,'392F6964-A915-4FA9-B822-2291E7251F02')
		Order By NombreCompleto
	END

	IF @Opcion = 12
	BEGIN

		SELECT DISTINCT '' as Id, [Year] as Nombre
		FROM [SisaAdmin].[dbo].[DateDimension]
		WHERE [Year] <= YEAR(GETDATE())
		ORder By 1

	END

	IF @Opcion = 13
	BEGIN
		SELECT DISTINCT '' as Id,  NombreReceptor as Nombre
		FROM dbo.tblFacturasEmitidas
		ORDER BY 1
	END

	IF @Opcion = 14
	BEGIN
		SELECT IdUsuario as Id, NombreCompleto as Nombre
		FROM dbo.tblUsuarios
		WHERE IdUsuario IN('B9FADF83-9ACD-4F5C-B231-75EA75066E92','E58C4CE2-9A88-4814-B530-B866D9C25849','15DFF984-223B-4B00-BA26-FE809065E689')
		ORDER BY NombreCompleto
	END

	IF @Opcion = 15
	BEGIN
		SELECT IdUsuario as Id, NombreCompleto as Nombre
		FROM dbo.tblUsuarios
		WHERE IdUsuario IN('05609500-0586-4D3D-A931-D1EB63EC9E55','51999E3F-A18F-4556-8299-D879CDF88F9A','F491E533-B114-42C2-B4E2-317DBB824B9D','98B91267-1CB6-4C9B-9F37-713E95B1CED0','7A631419-378D-46AD-9251-2185F6A073F4','431CBC7E-1208-4150-B759-878E07978A7C','EEF3D228-9D1C-4B55-ACC9-D024592F8E10','27359E51-E1F4-4662-B906-EC79BE544294','22F334E7-4B51-47DE-ACB4-DE6988EF4DE5','92E0320D-926A-4689-BF27-25903DF880ED')
		ORDER BY NombreCompleto
	END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_CargaCombosFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargaCombosFacturasEmitidas]
	@Opcion AS INT
AS
BEGIN
	
	IF @Opcion = 7
	BEGIN
		SELECT Abreviatura as Id, Moneda as Nombre
		FROM tblMonedas

	END

	

	IF @Opcion = 10
	BEGIN
		SELECT Convert(varchar(200),IdProyecto) as Id, NombreProyecto as Nombre
		FROM tblProyectos
		WHERE Activo = 1
		ORDER BY NombreProyecto
	END

	select * from tblFacturasEmitidas

	IF @Opcion = 12
	BEGIN

		SELECT DISTINCT Convert(varchar(200),[Year]) as Id, Convert(varchar(200),[Year]) as Nombre
		FROM [SisaAdmin].[dbo].[DateDimension]
		WHERE [Year] <= YEAR(GETDATE())
		

	END

	IF @Opcion = 13
	BEGIN
		SELECT DISTINCT NombreReceptor as Id,  NombreReceptor as Nombre
		FROM dbo.tblFacturasEmitidas
		
	END

	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_CargaComentariosOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <21 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargaComentariosOrdenCompra]
	@IdOrdenCompra AS VARCHAR(150) = 'ECA5971B-6E9E-4E1E-81BB-CDC709436D2A'
AS
BEGIN
	
	SELECT IdOrdenCompra, B.NombreCompleto, A.Comentario
		, RIGHT('00' + CONVERT(NVARCHAR, DAY(A.FechaComentario)), 2) As Dia, Substring(DateName(Month, A.FechaComentario), 1, 3) AS Mes, ROW_NUMBER() OVER(ORDER BY IdOrdenCompra) As ID
		, Convert(NVarchar, A.FechaComentario) AS Fecha
	FROM tblOrdenCompraComentarios A
	INNER JOIN tblUsuarios B
	ON B.IdUsuario = A.IdUsuario
	WHERE A.IdOrdenCompra = @IdOrdenCompra
	Order By A.FechaComentario Desc

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargaPerfilUsuario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <21 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargaPerfilUsuario]
	@IdUsuario AS VARCHAR(150),
	@Opcion AS INT
AS
BEGIN
	
	IF @Opcion = 1
	BEGIN
		SELECT A.IdProyecto, B.NombreCompleto, A.Comentario, B.Foto
			, RIGHT('00' + CONVERT(NVARCHAR, DAY(A.FechaComentario)), 2) As Dia, Substring(DateName(Month, A.FechaComentario), 1, 3) AS Mes
			, C.NombreProyecto
		FROM tblComentariosProyecto A
		INNER JOIN tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		INNER JOIN tblProyectos C
		ON C.IdProyecto = A.IdProyecto
		WHERE A.IdUsuario = @IdUsuario
		Order By A.IdComentario Desc
	END

	IF @Opcion = 2
	BEGIN
		SELECT ROW_NUMBER() OVER(ORDER BY IdProyecto) AS ROW, NombreProyecto, Descripcion, FechaInicio, B.RazonSocial
		FROM tblProyectos A
		INNER JOIN tblClientes B
		ON B.IdCliente = A.IdCliente
		WHERE (IdLider = @IdUsuario OR UserProject1 = @IdUsuario OR UserProject2 = @IdUsuario OR UserProject3 = @IdUsuario OR UserProject4 = @IdUsuario)
		And A.Activo = 1
	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_CargarArchivosFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarArchivosFacturas]
	@IdControlFacturas AS VARCHAR(150)
AS
BEGIN
	
	SELECT NombreArchivo, ArchivoFactura
	FROM dbo.tblControlFacturas
	WHERE IdControlFacturas = @IdControlFacturas

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarCombosControlFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <01 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarCombosControlFacturas]
	@Opcion AS INT = 4
AS
BEGIN
	
	IF @Opcion = 1
	BEGIN
		SELECT Distinct MMYYYY AS MES, FirstDayOfMonth
		FROM DateDimension
		WHERE FirstDayOfMonth <= GETDATE()
		ORDER BY FirstDayOfMonth DESC
	END

	IF @Opcion = 2
	BEGIN
		Select Distinct A.IdProveedor, B.Proveedor
		From dbo.tblControlFacturas A
		Inner Join dbo.tblProveedores B
		ON B.IdProveedor = A.IdProveedor
		Order By B.Proveedor
	END

	IF @Opcion = 3
	BEGIN
		SELECT DISTINCT NoFactura
		FROM dbo.tblControlFacturas
		ORDER BY NoFactura
	END

	IF @Opcion = 4
	BEGIN
		SELECT DISTINCT Replace(Proyecto, ' ', '') AS IdProyecto, Proyecto
		FROM dbo.tblControlFacturas
		ORDER BY Proyecto
	END

	IF @Opcion = 5
	BEGIN
		SELECT DISTINCT Moneda
		FROM dbo.tblControlFacturas
		ORDER BY Moneda
	END	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarCombosFacturasRecibidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <01 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarCombosFacturasRecibidas]
	@Opcion AS INT = 4
AS
BEGIN
	
	IF @Opcion = 1
	BEGIN
		SELECT Distinct MMYYYY AS a , Convert(varchar(200),FirstDayOfMonth) as b
		FROM DateDimension
		WHERE FirstDayOfMonth <= GETDATE()
		ORDER BY a,b DESC
	END

	IF @Opcion = 2
	BEGIN
		Select Distinct Convert(varchar(200),A.IdProveedor) as a, B.Proveedor as b
		From dbo.tblControlFacturas A
		Inner Join dbo.tblProveedores B
		ON B.IdProveedor = A.IdProveedor
		Order By B.Proveedor
	END

	IF @Opcion = 3
	BEGIN
		SELECT DISTINCT NoFactura as a, '' as b
		FROM dbo.tblControlFacturas
		ORDER BY NoFactura
	END

	IF @Opcion = 4
	BEGIN
		SELECT DISTINCT Replace(Proyecto, ' ', '') AS a, Proyecto as b
		FROM dbo.tblControlFacturas
		ORDER BY Proyecto
	END

	IF @Opcion = 5
	BEGIN
		SELECT DISTINCT Moneda as a, '' as b
		FROM dbo.tblControlFacturas
		ORDER BY Moneda
	END	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarComentariosCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <30 de Abril del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarComentariosCotizacion]
	@IdCotizacion As VARCHAR(150)
AS
BEGIN
	
	SELECT ROW_NUMBER() OVER(ORDER BY FechaComentario DESC) AS ID, IdCotizacion, B.NombreCompleto, A.Comentario, Convert(NVarchar, A.FechaComentario) AS Fecha
	FROM tblComentariosCotizacion A
	INNER JOIN dbo.tblUsuarios B
	ON B.IdUsuario = A.IdUsuario
	WHERE IdCotizacion = @IdCotizacion

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarCotizaciones]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarCotizaciones]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select  c.IdCotizaciones , c.FechaCotizaciones, c.NoCotizaciones, cc.NombreContacto, ce.Cliente as RazonSocial, c.Concepto
,(select NombreCompleto from tblUsuarios where IdUsuario = c.IdUsuarioCreo) as HechaPor
,(select NombreCompleto from tblUsuarios where IdUsuario = c.IdUsuarioEnvia) as EnviadaPor
, c.Estatus, c.CostoCotizaciones, c.NombreArchivoPdf, cc.Correo
,(select Folio from tblRFQ where IdRfq = c.idRequisicion) as RFQ, c.IdUsuarioCreo, c.IdUsuarioEnvia
from tblCotizaciones c
inner join tblClienteContacto cc on c.idContacto = cc.idContacto
inner join tblEmpresas ce on cc.idEmpresa = ce.idEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarCotizacionesReporte]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarCotizacionesReporte]
	-- Add the parameters for the stored procedure here
	@Id as varchar(150) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	Select  c.IdCotizaciones , c.FechaCotizaciones, c.NoCotizaciones, c.Concepto, c.NoCotizaciones, ce.Ciudad
	, c.CostoCotizaciones, cc.Correo, (select NombreCompleto from tblUsuarios where IdUsuario = c.IdUsuarioCreo) as Creo
	, cc.NombreContacto, ce.RazonSocial, ce.DireccionFiscal
	from tblCotizaciones c
	inner join tblClienteContacto cc on c.idContacto = cc.idContacto
	inner join tblEmpresas ce on cc.idEmpresa = ce.idEmpresa
	where c.IdCotizaciones = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarCotizacionesReporteDetalles]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarCotizacionesReporteDetalles]
	-- Add the parameters for the stored procedure here
	@Id as varchar(150) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	Select  ROW_NUMBER() OVER (ORDER BY Descripcion DESC) AS Item,c.Descripcion, c.Cantidad, c.Precio, c.Importe, c.Unidad
	from tblCotizacionesDet c
	where c.idCotizacion = @Id and c.Estatus = 1
END
select * from tblCotizacionesDet
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarCotizacionesReporteNotasAclaratorias]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarCotizacionesReporteNotasAclaratorias]
	-- Add the parameters for the stored procedure here
	@Id as varchar(150) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	Select  ROW_NUMBER() OVER (ORDER BY NotaAclaratoria DESC) AS Item,c.NotaAclaratoria
	from tblNotaAclaratoria c
	where c.idCotizacion = @Id 
END
--select * from tblNotaAclaratoria
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarDetalleGrafica]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <07 de Julio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarDetalleGrafica]
	@Punto As VARCHAR(150) = 'Mat Con OC Pend',
	@IdProyecto AS VARCHAR(150) = '485fdbf7-77cc-4c67-81b0-f983fdd571b9'
AS
BEGIN
	
	IF @Punto = 'Viaticos'
	BEGIN
		SELECT Convert(Nvarchar, B.FechaViaticos, 105) AS FechaViaticos, B.Gasolina, B.Desayuno, B.Comida, B.Cena, B.Casetas, B.Hotel, B.Transporte, B.Otros, B.Descripcion
		,'' as FechaFactura, '' as NoFactura, '' as NombreComercial, '' as OrdenCompra, Convert(decimal, '0.00') as SubTotal, Convert(decimal, '0.00') as Iva,
		Convert(decimal, '0.00') as Total,
		'' as FechaGasto, '' as Responsable, '' as Concepto, '' as Comprobante, 
		'' as Folio, '' as ReferenciaCot, '' as Fecha,
		'' as IdHorasHombre, '' as IdProyecto, '' as IdUsuario, '' as FolioProyecto, '' as NombreProyecto, '' as NombreCompleto
		FROM [SisaAdmin].[dbo].[tblViaticos] A
		INNER JOIN dbo.tblViaticosDet B
		ON B.IdViaticos = A.ID
		WHERE A.IdProyecto = @IdProyecto
	END

	IF @Punto = 'Fac Sin OC'
	BEGIN
		SELECT Convert(Nvarchar, FechaFactura, 105) As FechaFactura, NoFactura, B.NombreComercial, OrdenCompra, CASE WHEN Moneda = 'MXN' THEN SubTotal ELSE SubTotal * 20.5 END AS SubTotal
			, CASE WHEN Moneda = 'MXN' THEN IVA ELSE IVA * 20.5 END AS Iva, CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Total
			, '' as FechaViaticos,Convert(decimal, '0.00') as Gasolina, Convert(decimal, '0.00') as Desayuno, Convert(decimal, '0.00') as Comida, Convert(decimal, '0.00') as Cena, Convert(decimal, '0.00') as Casetas, Convert(decimal, '0.00') as Hotel, Convert(decimal, '0.00') as Transporte, Convert(decimal, '0.00') as Otros, '' as Descripcion
		
		,'' as FechaGasto, '' as Responsable, '' as Concepto, '' as Comprobante, 
		'' as Folio, '' as ReferenciaCot, '' as Fecha,
		'' as IdHorasHombre, '' as IdProyecto, '' as IdUsuario, '' as FolioProyecto, '' as NombreProyecto, '' as NombreCompleto
		
		
		FROM dbo.tblControlFacturas A
		Inner Join dbo.tblProveedores B
		On B.IdProveedor = A.IdProveedor
		WHERE IdProyecto = @IdProyecto And A.Estatus != 2
		AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto) And Viaticos = 0
	END

	IF @Punto = 'Caja Chica'
	BEGIN
		SELECT Convert(Nvarchar, Fecha, 105) AS FechaGasto, Responsable, Concepto, Comprobante, Abono As Total
		, '' as FechaViaticos,Convert(decimal, '0.00') as Gasolina, Convert(decimal, '0.00') as Desayuno, Convert(decimal, '0.00') as Comida, Convert(decimal, '0.00') as Cena, Convert(decimal, '0.00') as Casetas, Convert(decimal, '0.00') as Hotel, Convert(decimal, '0.00') as Transporte, Convert(decimal, '0.00') as Otros, '' as Descripcion
		
		,'' as FechaFactura, '' as NoFactura, '' as NombreComercial, '' as OrdenCompra, Convert(decimal, '0.00') as SubTotal, Convert(decimal, '0.00') as Iva,
		
	
		'' as Folio, '' as ReferenciaCot, '' as Fecha,
		'' as IdHorasHombre, '' as IdProyecto, '' as IdUsuario, '' as FolioProyecto, '' as NombreProyecto, '' as NombreCompleto
		FROM tblCajaChica
		WHERE IdProyecto = @IdProyecto
		AND Comprobante NOT IN('FACTURA','VIATICOS')
	END

	IF @Punto = 'Mat Con OC'
	BEGIN
		--SELECT Folio, ReferenciaCot, C.NombreComercial, CASE WHEN B.Abreviatura = 'MXN' THEN SubTotal ELSE SubTotal * 20.5 END AS SubTotal
		--	, CASE WHEN B.Abreviatura = 'MXN' THEN Iva ELSE Iva * 20.5 END AS Iva, CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS Total, Convert(NVarchar, CONVERT(DATE, FechaCreacion), 105) AS Fecha
		--FROM tblOrdenCompra A
		--INNER JOIN dbo.tblMonedas B
		--ON B.IdMoneda = A.IdMoneda
		--INNER JOIN dbo.tblProveedores C
		--ON C.IdProveedor = A.IdProveedor
		--WHERE IdProyecto = @IdProyecto

		SELECT Folio, ReferenciaCot, D.NombreComercial, CASE WHEN C.Abreviatura = 'MXN' THEN SUM(CantidadRecibida * Precio) ELSE SUM(CantidadRecibida * Precio) * 20.5 END AS SubTotal
			, CASE WHEN C.Abreviatura = 'MXN' THEN Convert(Decimal(20,3), SUM(CantidadRecibida * Precio) * 0.16) ELSE CONVERT(Decimal(20,3), ((SUM(CantidadRecibida * Precio) * 20.5) * 0.16)) END AS Iva
			, CASE WHEN C.Abreviatura = 'MXN' THEN Convert(Decimal(20,3), SUM(CantidadRecibida * Precio) * 1.16) ELSE CONVERT(Decimal(20,3), ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16)) END AS Total
			, Convert(NVarchar, CONVERT(DATE, FechaCreacion), 105) AS Fecha
			, '' as FechaViaticos,Convert(decimal, '0.00') as Gasolina, Convert(decimal, '0.00') as Desayuno, Convert(decimal, '0.00') as Comida, Convert(decimal, '0.00') as Cena, Convert(decimal, '0.00') as Casetas, Convert(decimal, '0.00') as Hotel, Convert(decimal, '0.00') as Transporte, Convert(decimal, '0.00') as Otros, '' as Descripcion
			, '' as FechaFactura, '' as NoFactura, '' as OrdenCompra,
		'' as FechaGasto, '' as Responsable, '' as Concepto, '' as Comprobante, 
		'' as Folio, '' as ReferenciaCot, 
		'' as IdHorasHombre, '' as IdProyecto, '' as IdUsuario, '' as FolioProyecto, '' as NombreProyecto, '' as NombreCompleto
			FROM tblOrdenCompra A
		INNER JOIN dbo.tblOrdenCompraDet B
		ON B.IdOrdenCompra = A.IdOrdenCompra
		INNER JOIN dbo.tblMonedas C
		ON C.IdMoneda = A.IdMoneda
		INNER JOIN dbo.tblProveedores D
		ON D.IdProveedor = A.IdProveedor
		WHERE IdProyecto = @IdProyecto
		Group By A.Folio, A.ReferenciaCot, D.NombreComercial, C.Abreviatura, A.FechaCreacion
		Order By A.FechaCreacion
	END

	IF @Punto = 'Mano de Obra'
	BEGIN
		SELECT A.IdHorasHombre, A.IdProyecto, A.IdUsuario
			, Sum(A.Lunes) AS Lunes, Sum(A.Martes) AS Martes, Sum(A.Miercoles) AS Miercoles, Sum(A.Jueves) AS Jueves, Sum(A.Viernes) AS Viernes, Sum(A.Sabado) AS Sabado, Sum(A.Domingo) AS Domingo, Sum(A.Total) AS Total
			, B.FolioProyecto, B.NombreProyecto, B.Descripcion, C.NombreCompleto
			, '' as FechaViaticos,Convert(decimal, '0.00') as Gasolina, Convert(decimal, '0.00') as Desayuno, Convert(decimal, '0.00') as Comida, Convert(decimal, '0.00') as Cena, Convert(decimal, '0.00') as Casetas, Convert(decimal, '0.00') as Hotel, Convert(decimal, '0.00') as Transporte, Convert(decimal, '0.00') as Otros, '' as Descripcion
		,'' as FechaFactura, '' as NoFactura, '' as NombreComercial, '' as OrdenCompra, Convert(decimal, '0.00') as SubTotal, Convert(decimal, '0.00') as Iva,
		
		'' as FechaGasto, '' as Responsable, '' as Concepto, '' as Comprobante, 
		'' as Folio, '' as ReferenciaCot, '' as Fecha
		
		
		FROM tblHorasHombre A
		INNER JOIN dbo.tblProyectos B
		ON B.IdProyecto = A.IdProyecto
		INNER JOIN dbo.tblUsuarios C
		ON C.IdUsuario = A.IdUsuario
		WHERE A.Activo = 1 And A.IdProyecto = @IdProyecto
		Group By A.IdHorasHombre, A.IdProyecto, A.IdUsuario, B.FolioProyecto, B.NombreProyecto, B.Descripcion, C.NombreCompleto
	END

	IF @Punto = 'Mat Con OC Pend'
	BEGIN
		SELECT Folio, ReferenciaCot, D.NombreComercial, CASE WHEN C.Abreviatura = 'MXN' THEN SUM(Cantidad * Precio) ELSE SUM(Cantidad * Precio) * 20.5 END AS SubTotal
			, CASE WHEN C.Abreviatura = 'MXN' THEN Convert(Decimal(20,3), SUM(Cantidad * Precio) * 0.16) ELSE CONVERT(Decimal(20,3), ((SUM(Cantidad * Precio) * 20.5) * 0.16)) END AS Iva
			, CASE WHEN C.Abreviatura = 'MXN' THEN Convert(Decimal(20,3), SUM(Cantidad * Precio) * 1.16) ELSE CONVERT(Decimal(20,3), ((SUM(Cantidad * Precio) * 20.5) * 1.16)) END AS Total
			, Convert(NVarchar, CONVERT(DATE, FechaCreacion), 105) AS Fecha
			, '' as FechaViaticos,Convert(decimal, '0.00') as Gasolina, Convert(decimal, '0.00') as Desayuno, Convert(decimal, '0.00') as Comida, Convert(decimal, '0.00') as Cena, Convert(decimal, '0.00') as Casetas, Convert(decimal, '0.00') as Hotel, Convert(decimal, '0.00') as Transporte, Convert(decimal, '0.00') as Otros, '' as Descripcion
		,'' as FechaFactura, '' as NoFactura, '' as OrdenCompra, 
		'' as FechaGasto, '' as Responsable, '' as Concepto, '' as Comprobante, 
		
		'' as IdHorasHombre, '' as IdProyecto, '' as IdUsuario, '' as FolioProyecto, '' as NombreProyecto, '' as NombreCompleto
		
		FROM tblOrdenCompra A
		INNER JOIN dbo.tblOrdenCompraDet B
		ON B.IdOrdenCompra = A.IdOrdenCompra And B.CantidadRecibida = 0
		INNER JOIN dbo.tblMonedas C
		ON C.IdMoneda = A.IdMoneda
		INNER JOIN dbo.tblProveedores D
		ON D.IdProveedor = A.IdProveedor
		WHERE IdProyecto = @IdProyecto And A.Estatus != 2
		Group By A.Folio, A.ReferenciaCot, D.NombreComercial, C.Abreviatura, A.FechaCreacion
		Order By A.FechaCreacion
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarDetalleGraficaCajaChica]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarDetalleGraficaCajaChica]
	-- Add the parameters for the stored procedure here
	@Punto As VARCHAR(150) = 'Caja Chica',
	@IdProyecto AS VARCHAR(150) = '485fdbf7-77cc-4c67-81b0-f983fdd571b9'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
			, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2)

		SELECT @cajaChica = SUM(A.ABono)
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS','ORDEN DE COMPRA') And A.IdProyecto =@IdProyecto


		SET @totalGastos = (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))

		Select A.IdProyecto, NombreProyecto, B.NombreCompleto, E.RazonSocial, A.Descripcion
			, DATEDIFF(day, FechaInicio, FechaFin) As Dia, Sum(IsNull(A.CostoCotizacion, 0)) AS Total, @totalGastos AS Gastos, C.NombreContacto, A.FolioProyecto As Folio
			, (Convert(Nvarchar, A.FechaInicio) + ' Al ' + Convert(Nvarchar, A.FechaFin)) AS Fecha, @totalOCPend AS GastosPend, '' as Comentario, '' as Foto
			, D.Fecha as FechaGastos, d.Responsable, D.Concepto,d.Comprobante
		From tblProyectos A
		Inner Join tblUsuarios B
		On B.IdUsuario = A.IdLider
		Inner Join tblClienteContacto C
		On C.idContacto = A.IdCliente
		Inner join tblEmpresas E
		ON c.idEmpresa = E.idEmpresa
		inner join tblCajaChica D 
		on Convert(varchar(150),A.IdProyecto) = D.IdProyecto
		Where A.IdProyecto = @IdProyecto 
		AND D.Comprobante NOT IN('FACTURA','VIATICOS','ORDEN DE COMPRA')
		Group By A.IdProyecto, NombreProyecto, B.NombreCompleto, E.RazonSocial, A.Descripcion, FechaInicio, FechaFin, C.NombreContacto, A.FolioProyecto, A.FechaInicio, A.FechaFin, D.Fecha, d.Responsable, D.Concepto,d.Comprobante



END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarDetalleGraficaMO]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarDetalleGraficaMO]
	-- Add the parameters for the stored procedure here
	@Punto As VARCHAR(150) = 'Mat Con OC Pend',
	@IdProyecto AS VARCHAR(150) = '485fdbf7-77cc-4c67-81b0-f983fdd571b9'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT A.IdHorasHombre, A.IdProyecto, A.IdUsuario
			, Sum(A.Lunes) AS Lunes, Sum(A.Martes) AS Martes, Sum(A.Miercoles) AS Miercoles, Sum(A.Jueves) AS Jueves, Sum(A.Viernes) AS Viernes, Sum(A.Sabado) AS Sabado, Sum(A.Domingo) AS Domingo, Sum(A.Total) AS Total
			, B.FolioProyecto, B.NombreProyecto, B.Descripcion, C.NombreCompleto			
		   ,((c.SueldoDiario/8)*A.Total) as TotalDinero
		
		
		
		FROM tblHorasHombre A
		INNER JOIN dbo.tblProyectos B
		ON B.IdProyecto = A.IdProyecto
		INNER JOIN dbo.tblUsuarios C
		ON C.IdUsuario = A.IdUsuario
		WHERE A.Activo = 1 And A.IdProyecto = @IdProyecto
		Group By A.IdHorasHombre, A.IdProyecto, A.IdUsuario, B.FolioProyecto, B.NombreProyecto, B.Descripcion, C.NombreCompleto, c.SueldoDiario, A.Total
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarDetalleGraficaViaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarDetalleGraficaViaticos]
	-- Add the parameters for the stored procedure here
	@Punto As VARCHAR(150) = 'Mat Con OC Pend',
	@IdProyecto AS VARCHAR(150) = '485fdbf7-77cc-4c67-81b0-f983fdd571b9'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT Convert(Nvarchar, B.FechaViaticos, 105) AS FechaViaticos, B.Gasolina, B.Desayuno, B.Comida, B.Cena, B.Casetas, B.Hotel, B.Transporte, B.Otros, B.Descripcion
		,B.ManoObra,B.Equipo, b.Materiales
		FROM [tblViaticos] A
		INNER JOIN dbo.tblViaticosDet B
		ON B.IdViaticos = A.ID
		WHERE A.IdProyecto =  @IdProyecto
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarDetalleProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Febrero 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarDetalleProyecto]
	@IdProyecto VARCHAR(150) = '9cc94d8a-d072-48c4-b7c1-32b2d7c6c84f',
	@Opcion INT = 1
AS
BEGIN
	
	DECLARE @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
			, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2)

	IF @Opcion = 1
	BEGIN

		


		/* ORDENES DE COMPRA */
		SELECT @totalOC = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida > 0
			GROUP BY C.Abreviatura--, CONVERT(DATE, B.FechaCreacion)
		) A

		/* ORDENES DE COMPRA PENDIENTES POR RECIBIR */
		SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura
		) A

		/* FACTURAS */
		SELECT @totalFacturas = SUM(Facturas)
		FROM (
			SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas
			WHERE IdProyecto = @IdProyecto And Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
			AND Viaticos = 0
		) A

		--/* MANO DE OBRA */
		SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1

		/* VIATICOS */
		SELECT @viaticos = SUM(TOTAL)
		FROM (
			SELECT 'Viaticos' As Nombre, CASE WHEN A.CantGastada = 0 THEN A.CantEntregada ELSE A.CantGastada END AS TOTAL
				--, IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) AS Total
				--, ((IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
			FROM [SisaAdmin].[dbo].[tblViaticos] A
			--INNER JOIN dbo.tblViaticosDet B
			--ON B.IdViaticos = A.ID
			WHERE A.IdProyecto = @IdProyecto
		) A
		GROUP BY Nombre
		--SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
		--FROM [SisaAdmin].[dbo].[tblViaticos] A
		--INNER JOIN dbo.tblViaticosDet B
		--ON B.IdViaticos = A.ID
		--WHERE A.IdProyecto = @IdProyecto

		/* CAJA CHICA */
		SELECT @cajaChica = SUM(A.ABono)
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS','ORDEN DE COMPRA') And A.IdProyecto = @IdProyecto

		--PRINT(IsNull(@totalOC, 0.00))
		--PRINT(IsNull(@totalFacturas, 0.00))
		--PRINT(IsNull(@viaticos, 0.00))
		--PRINT(IsNull(@cajaChica, 0.00))
		--PRINT(IsNull(@manoObra, 0.00))

		SET @totalGastos = (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))

		Select A.IdProyecto, NombreProyecto, B.NombreCompleto, E.RazonSocial, A.Descripcion
			, DATEDIFF(day, FechaInicio, FechaFin) As Dia, Sum(IsNull(A.CostoCotizacion, 0)) AS Total, @totalGastos AS Gastos, C.NombreContacto, A.FolioProyecto As Folio
			, (Convert(Nvarchar, A.FechaInicio) + ' Al ' + Convert(Nvarchar, A.FechaFin)) AS Fecha, @totalOCPend AS GastosPend, '' as Comentario, '' as Foto
		From tblProyectos A
		Inner Join tblUsuarios B
		On B.IdUsuario = A.IdLider
		Inner Join tblClienteContacto C
		On C.idContacto = A.IdCliente
		Inner join tblEmpresas E
		ON c.idEmpresa = E.idEmpresa
		Where A.IdProyecto = @IdProyecto
		Group By A.IdProyecto, NombreProyecto, B.NombreCompleto, E.RazonSocial, A.Descripcion, FechaInicio, FechaFin, C.NombreContacto, A.FolioProyecto, A.FechaInicio, A.FechaFin

	END

	IF @Opcion = 2
	BEGIN
		SELECT *, ROW_NUMBER() OVER(ORDER BY FechaComentario DESC) As ID
		FROM (
			SELECT IdProyecto, '' as NombreProyecto, B.NombreCompleto, B.Foto, A.Comentario
				,Convert(int, RIGHT('00' + CONVERT(NVARCHAR, DAY(A.FechaComentario)), 2)) As Dia, Substring(DateName(Month, A.FechaComentario), 1, 3) AS Mes
				--, ROW_NUMBER() OVER(ORDER BY IdProyecto) As ID
				, Convert(NVarchar, A.FechaComentario) AS Fecha, 'Proyecto' AS Origen, A.FechaComentario,'' as RazonSocial, '' as Descripcion
				,'' as NombreContacto, '' as Folio, Convert(decimal, '0.00') as Total,Convert(decimal, '0.00')  as Gastos,Convert(decimal, '0.00')  as GastosPend
			FROM tblComentariosProyecto A
			INNER JOIN tblUsuarios B
			ON B.IdUsuario = A.IdUsuario
			WHERE A.IdProyecto = @IdProyecto --And A.IdComentario Not IN('B3D6CBA0-8C5F-4F58-8AD6-8D0AE168DC79')
			--Order By Convert(NVarchar, A.FechaComentario) Desc

			UNION ALL

			SELECT IdOrdenCompra as IdProyecto,'' as NombreProyecto, B.NombreCompleto, B.Foto, A.Comentario
				, Convert(int,RIGHT('00' + CONVERT(NVARCHAR, DAY(A.FechaComentario)), 2)) As Dia, Substring(DateName(Month, A.FechaComentario), 1, 3) AS Mes
				--, ROW_NUMBER() OVER(ORDER BY IdOrdenCompra) As ID
				, Convert(NVarchar, A.FechaComentario) AS Fecha, 'OC' AS Origen, A.FechaComentario, '' as RazonSocial, '' as Descripcion
				,'' as NombreContacto, '' as Folio, Convert(decimal, '0.00')  as Total,Convert(decimal, '0.00')  as Gastos,Convert(decimal, '0.00')  as GastosPend
			FROM tblOrdenCompraComentarios A
			INNER JOIN tblUsuarios B
			ON B.IdUsuario = A.IdUsuario
			WHERE A.IdOrdenCompra IN (SELECT IdOrdenCompra FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
		) A
		--Order By Convert(NVarchar, Fecha) Desc
	END

	IF @Opcion = 3
	BEGIN
		
		/* ORDENES DE COMPRA */
		SELECT @totalOC = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY C.Abreviatura--, CONVERT(DATE, B.FechaCreacion)
		) A

		/* ORDENES DE COMPRA PENDIENTES POR RECIBIR */
		SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura
		) A

		/* FACTURAS */
		SELECT @totalFacturas = SUM(Facturas)
		FROM (
			SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas
			WHERE IdProyecto = @IdProyecto And Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
			AND Viaticos = 0
		) A

		--/* MANO DE OBRA */
		SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1

		/* VIATICOS */
		SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
		FROM [SisaAdmin].[dbo].[tblViaticos] A
		INNER JOIN dbo.tblViaticosDet B
		ON B.IdViaticos = A.ID
		WHERE A.IdProyecto = @IdProyecto

		/* CAJA CHICA */
		SELECT @cajaChica = SUM(A.ABono)
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS') And A.IdProyecto = @IdProyecto

		--PRINT(IsNull(@totalOC, 0.00))
		--PRINT(IsNull(@totalFacturas, 0.00))
		--PRINT(IsNull(@viaticos, 0.00))
		--PRINT(IsNull(@cajaChica, 0.00))
		--PRINT(IsNull(@manoObra, 0.00))

		SET @totalGastos = (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))
		
		SELECT @totalGastos
	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_CargarFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Agosto del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarFacturas]
	@Mes AS VARCHAR(6) = '-1',
	@IdProveedor AS VARCHAR(150) = '-1',
	@NoFactura AS VARCHAR(100) = '-1',
	@Proyecto AS VARCHAR(150) = '-1',
	@Moneda AS VARCHAR(50) = '-1',
	@Estatus AS INT = -1
AS
BEGIN
	
	--SELECT [IdControlFacturas],Convert(NVarchar, [FechaFactura], 111) AS [FechaFactura],A.[IdProveedor],[NoFactura],[OrdenCompra],[Proyecto],[Moneda],[SubTotal]
	--		,[Descuento],[IVA],[Total],[Estatus],[FormaPago], B.Proveedor, '' AS IdOrdenCompra, A.IdProyecto, A.Viaticos, Convert(NVarchar, DATEADD(day,DiasCredito,FechaFactura), 111) AS FechaPago, DiasCredito
	--FROM tblControlFacturas A
	--INNER JOIN dbo.tblProveedores B
	--ON B.IdProveedor = A.IdProveedor

	DECLARE @QrySQL AS VARCHAR(MAX)

	SET @QrySQL = 'SELECT [IdControlFacturas],Convert(NVarchar, [FechaFactura], 111) AS [FechaFactura],A.[IdProveedor],[NoFactura],[OrdenCompra],[Proyecto],[Moneda],[SubTotal]
						,[Descuento],[IVA],[Total],[Estatus],[FormaPago], B.Proveedor, '''' AS IdOrdenCompra, A.IdProyecto, A.Viaticos, Convert(NVarchar, DATEADD(day,DiasCredito,FechaFactura), 111) AS FechaPago, A.NombreArchivo
					,A.Categoria, A.Anticipo, A.NotaCredito, (A.Total - (A.Anticipo+A.NotaCredito)) as APagar
				FROM tblControlFacturas A
				INNER JOIN dbo.tblProveedores B
				ON B.IdProveedor = A.IdProveedor
				WHERE ' + CASE WHEN @IdProveedor = '-1' THEN ' A.IdProveedor = A.IdProveedor' ELSE 'A.IdProveedor = ' + CHAR(39) + @IdProveedor + CHAR(39) + '' END + '
				AND ' + CASE WHEN @NoFactura = '-1' THEN ' A.NoFactura = A.NoFactura' ELSE 'A.NoFactura = ' + CHAR(39) + @NoFactura + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Proyecto = '-1' THEN ' A.Proyecto = A.Proyecto' ELSE 'Replace(A.Proyecto, '' '', '''') = ' + CHAR(39) + @Proyecto + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Moneda = '-1' THEN ' A.Moneda = A.Moneda' ELSE 'A.Moneda = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
				AND ' + CASE WHEN @Estatus = -1 THEN ' A.Estatus = A.Estatus' ELSE 'A.Estatus = ' + Convert(NVARCHAR, @Estatus) + '' END + '
				AND ' + CASE WHEN @Mes = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' SUBSTRING(REPLACE(Convert(NVarchar, A.FechaFactura, 103), ''/'',''''), 3, 6) = ' + CHAR(39) + @Mes + CHAR(39) + '' END + '
				ORDER BY FechaFactura'
	
	PRINT(@QrySQL)
	EXEC(@QrySQL)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarFacturasEmitidas]
	@id AS VARCHAR(6) = '-1'
AS
BEGIN
	

	DECLARE @QrySQL AS VARCHAR(MAX)
	if(@id = '-1')
	BEGIN
	SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '') AS NombreProyecto,IsNull(A.[NoCotizacion], '') AS NoCotizacion
						,[OrdenCompraRecibida],[SubTotal],[Iva],[Retencion],[Total],[Moneda],IsNull([ProgramacionPago], '') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '') AS FechaPago, A.Estatus
						, IsNull(A.IdProyecto, '') As IdProyecto, Convert(Nvarchar, [ProgramacionPago], 106) AS ProgramacionPago1
						, CASE WHEN A.Estatus = 0 THEN 'PENDIENTE'
							   WHEN A.Estatus = 1 THEN 'PAGADO'
								ELSE 'CANCELADA' END AS Estatus1, Convert(Nvarchar, [FechaFactura], 106) AS FechaFactura1, Convert(Nvarchar, [FechaPago], 106) AS FechaPago1
				,A.NombreArchivo, A.ArchivoPDF
				FROM tblFacturasEmitidas A
				LEFT OUTER JOIN tblProyectos B
				ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto				
				ORDER BY FechaFactura Desc
	END
	ELSE
	BEGIN
	SELECT [IdFacturasEmitidas],[FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],IsNull(B.[NombreProyecto], '') AS NombreProyecto,IsNull(A.[NoCotizacion], '') AS NoCotizacion
						,[OrdenCompraRecibida],[SubTotal],[Iva],[Retencion],[Total],[Moneda],IsNull([ProgramacionPago], '') AS ProgramacionPago,[PorPagar],IsNull([FechaPago], '') AS FechaPago, A.Estatus
						, IsNull(A.IdProyecto, '') As IdProyecto, Convert(Nvarchar, [ProgramacionPago], 106) AS ProgramacionPago1
						, CASE WHEN A.Estatus = 0 THEN 'PENDIENTE'
							   WHEN A.Estatus = 1 THEN 'PAGADO'
								ELSE 'CANCELADA' END AS Estatus1, Convert(Nvarchar, [FechaFactura], 106) AS FechaFactura1, Convert(Nvarchar, [FechaPago], 106) AS FechaPago1
				,A.NombreArchivo, A.ArchivoPDF
				FROM tblFacturasEmitidas A
				LEFT OUTER JOIN tblProyectos B
				ON Convert(Varchar(150), B.IdProyecto) = A.IdProyecto
				WHERE Convert(Varchar(150), IdFacturasEmitidas) =   @id  
				ORDER BY FechaFactura Desc
	END
	


END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarFacturasRecibidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Agosto del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarFacturasRecibidas]
	@id AS VARCHAR(6) = '-1'
AS
BEGIN
	
	--SELECT [IdControlFacturas],Convert(NVarchar, [FechaFactura], 111) AS [FechaFactura],A.[IdProveedor],[NoFactura],[OrdenCompra],[Proyecto],[Moneda],[SubTotal]
	--		,[Descuento],[IVA],[Total],[Estatus],[FormaPago], B.Proveedor, '' AS IdOrdenCompra, A.IdProyecto, A.Viaticos, Convert(NVarchar, DATEADD(day,DiasCredito,FechaFactura), 111) AS FechaPago, DiasCredito
	--FROM tblControlFacturas A
	--INNER JOIN dbo.tblProveedores B
	--ON B.IdProveedor = A.IdProveedor

	DECLARE @QrySQL AS VARCHAR(MAX)
	if(@id = '-1')
	BEGIN
	SELECT [IdControlFacturas],Convert(NVarchar, [FechaFactura], 111) AS [FechaFactura],A.[IdProveedor],[NoFactura],[OrdenCompra],[Proyecto],[Moneda],[SubTotal]
						,[Descuento],[IVA],[Total],[Estatus],[FormaPago], B.Proveedor, '''' AS IdOrdenCompra, A.IdProyecto, A.Viaticos, Convert(NVarchar, DATEADD(day,DiasCredito,FechaFactura), 111) AS FechaPago, A.NombreArchivo
				,A.Categoria, A.Anticipo, A.NotaCredito, (A.Total - (A.Anticipo+A.NotaCredito)) as APagar, 
				isnull((select EstatusDesc from tblProyectos where Convert(varchar(150),IdProyecto) = A.IdProyecto),'') as EstatusProyecto
				FROM tblControlFacturas A
				INNER JOIN dbo.tblProveedores B
				ON B.IdProveedor = A.IdProveedor				
				ORDER BY A.FechaAlta
	END
	ELSE
	BEGIN
	SELECT [IdControlFacturas],Convert(NVarchar, [FechaFactura], 111) AS [FechaFactura],A.[IdProveedor],[NoFactura],[OrdenCompra],[Proyecto],[Moneda],[SubTotal]
						,[Descuento],[IVA],[Total],[Estatus],[FormaPago], B.Proveedor, '''' AS IdOrdenCompra, A.IdProyecto, A.Viaticos, Convert(NVarchar, DATEADD(day,DiasCredito,FechaFactura), 111) AS FechaPago, A.NombreArchivo
				,A.Categoria, A.Anticipo, A.NotaCredito, (A.Total - (A.Anticipo+A.NotaCredito)) as APagar
				FROM tblControlFacturas A
				INNER JOIN dbo.tblProveedores B
				ON B.IdProveedor = A.IdProveedor	
				WHERE idControlFacturas =  @id 
				ORDER BY FechaFactura
	END
	
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarMaterialesProveedor]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarMaterialesProveedor]
	@IdProveedor AS VARCHAR(150) = '3e5693af-cb17-40e8-9af0-89dfc033c3c0'
AS
BEGIN
	
	SELECT B.IdMaterial, B.Codigo, B.Codigo + ' - ' + B.Descripcion AS Descripcion, A.UnidadMedida, A.Precio, B.Descripcion As [Desc]
	FROM tblProveedorMaterial A
	INNER JOIN dbo.tblMateriales B
	ON B.IdMaterial = A.IdMaterial
	WHERE IdProveedor = @IdProveedor
	ORDER BY 6

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarOrdenCompraProveedor]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarOrdenCompraProveedor]
	@IdProveedor AS VARCHAR(150) = 'd7f85d9f-084a-45c6-ab7e-84f4a6428f5f'
AS
BEGIN
	

	SELECT ROW_NUMBER() OVER(ORDER BY FOLIO) AS ID, Folio
	INTO ##OrdenesCompra
	FROM (
		SELECT Folio
		FROM tblOrdenCompra
		WHERE IdProveedor = @IdProveedor

		UNION ALL 

		SELECT Folio
		FROM tblOrdenCompraInsumos
		WHERE IdProveedor = @IdProveedor
	) A

	SELECT Folio
	FROM ##OrdenesCompra

	UNION ALL

	SELECT 'N/A' AS Folio

	UNION ALL

	SELECT 'PENDIENTE' AS Folio

	DROP TABLE ##OrdenesCompra
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarProveedores]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <28 de Febrero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarProveedores]
	
AS
BEGIN
	
	SELECT IdProveedor, Proveedor
	FROM tblProveedores
	WHERE Activo = 1
	ORDER BY Proveedor

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarProyecciones]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarProyecciones]
	-- Add the parameters for the stored procedure here
	@id as varchar(150) = 'f486eb9f-7a18-4bc6-af4b-d45be41e108b' 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select a.CostoMaterialCotizado,a.CostoMOCotizado, a.CostoMECotizado,
	a.CostoMaterialProyectado, a.CostoMEProyectado, a.CostoMOProyectado
	,c.ManoObra, c.Equipo, c.Material
	from tblProyectos a 
	inner join tblCotizaciones b on a.IdCotizacion = b.IdCotizaciones
	inner join tblEficiencias c on a.IdProyecto = c.idProyecto
	where a.IdProyecto = @id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarProyectosCajaChica]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Julio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarProyectosCajaChica]

AS
BEGIN

	SELECT *
	FROM (
		SELECT ROW_NUMBER() OVER(Order by A.NombreProyecto) As ID, A.FolioProyecto, NombreProyecto, Convert(Nvarchar(150), IdProyecto) As IdProyecto
		FROM tblProyectos A
		Inner Join dbo.tblUsuarios B
		ON B.IdUsuario = A.IdLider
		WHERE A.Activo = 1

		UNION ALL

		SELECT -1 AS ID, '' AS FolioProyecto, 'N/A' AS NombreProyecto, 'N/A' As IdProyecto

		UNION ALL

		SELECT -2 AS ID, '' AS FolioProyecto, 'CONSUMIBLES TALLER' AS NombreProyecto, 'CONSUMIBLES TALLER' As IdProyecto

		UNION ALL

		SELECT -3 AS ID, '' AS FolioProyecto, 'UNIFORMES SISA' AS NombreProyecto, 'UNIFORMES SISA' As IdProyecto

		UNION ALL

		SELECT -4 AS ID, '' AS FolioProyecto, 'EQUIPO DE SEGURIDAD' AS NombreProyecto, 'EQUIPO DE SEGURIDAD' As IdProyecto

		UNION ALL

		SELECT -5 AS ID, '' AS FolioProyecto, 'PENDIENTE' AS NombreProyecto, 'PENDIENTE' As IdProyecto

		UNION ALL

		SELECT -6 AS ID, '' AS FolioProyecto, 'ECONOLINE 2003' AS NombreProyecto, 'ECONOLINE 2003' As IdProyecto

		UNION ALL

		SELECT -7 AS ID, '' AS FolioProyecto, 'ECONOLINE 2006' AS NombreProyecto, 'ECONOLINE 2006' As IdProyecto

		UNION ALL

		SELECT -8 AS ID, '' AS FolioProyecto, 'FOCUS' AS NombreProyecto, 'FOCUS' As IdProyecto

		UNION ALL

		SELECT -9 AS ID, '' AS FolioProyecto, 'IKON' AS NombreProyecto, 'IKON' As IdProyecto

		UNION ALL

		SELECT -10 AS ID, '' AS FolioProyecto, 'RANGER' AS NombreProyecto, 'RANGER' As IdProyecto

		UNION ALL

		SELECT -11 AS ID, '' AS FolioProyecto, 'REMOLQUE' AS NombreProyecto, 'REMOLQUE' As IdProyecto

		UNION ALL

		SELECT -12 AS ID, '' AS FolioProyecto, 'RAM' AS NombreProyecto, 'RAM' As IdProyecto

		UNION ALL

		SELECT -13 AS ID, '' AS FolioProyecto, 'CHEYENNE' AS NombreProyecto, 'CHEYENNE' As IdProyecto

		UNION ALL

		SELECT -14 AS ID, '' AS FolioProyecto, 'RAM 700' AS NombreProyecto, 'RAM 700' As IdProyecto

		UNION ALL

		SELECT -15 AS ID, '' AS FolioProyecto, 'JEEP' AS NombreProyecto, 'JEEP' As IdProyecto

		UNION ALL

		SELECT -16 AS ID, '' AS FolioProyecto, 'INVENTARIO' AS NombreProyecto, 'INVENTARIO' As IdProyecto

		UNION ALL

		SELECT -17 AS ID, '' AS FolioProyecto, 'GASOLINA' AS NombreProyecto, 'GASOLINA' As IdProyecto

		UNION ALL

		SELECT -18 AS ID, '' AS FolioProyecto, 'FRONTIER' AS NombreProyecto, 'FRONTIER' As IdProyecto

		UNION ALL

		SELECT -19 AS ID, '' AS FolioProyecto, 'SWIFT' AS NombreProyecto, 'SWIFT' As IdProyecto
	) A
	ORDER BY ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarProyectosFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Julio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarProyectosFacturas]
	@IdOrdenCompra As VARCHAR(150) = 'N/A'
AS
BEGIN
	
	DECLARE @IdProyecto AS VARCHAR(150)

	IF @IdOrdenCompra = 'N/A' OR @IdOrdenCompra = 'PENDIENTE'
	BEGIN
		SET @IdProyecto = ''
	END
	ELSE
	BEGIN
		SET @IdProyecto = (SELECT IdProyecto FROM tblOrdenCompra WHERE Folio = @IdOrdenCompra)
	END

	IF @IdOrdenCompra = 'N/A' OR @IdOrdenCompra = 'PENDIENTE'
	BEGIN
		SELECT *
		FROM (
			SELECT ROW_NUMBER() OVER(Order by A.NombreProyecto) As ID, A.FolioProyecto, NombreProyecto, Convert(Nvarchar(150), IdProyecto) As IdProyecto
			FROM tblProyectos A
			Inner Join dbo.tblUsuarios B
			ON B.IdUsuario = A.IdLider
			WHERE A.Activo = 1

			UNION ALL

			SELECT -1 AS ID, '' AS FolioProyecto, 'N/A' AS NombreProyecto, 'N/A' As IdProyecto

			UNION ALL

			SELECT -2 AS ID, '' AS FolioProyecto, 'CONSUMIBLES TALLER' AS NombreProyecto, 'CONSUMIBLES TALLER' As IdProyecto

			UNION ALL

			SELECT -3 AS ID, '' AS FolioProyecto, 'UNIFORMES SISA' AS NombreProyecto, 'UNIFORMES SISA' As IdProyecto

			UNION ALL

			SELECT -4 AS ID, '' AS FolioProyecto, 'EQUIPO DE SEGURIDAD' AS NombreProyecto, 'EQUIPO DE SEGURIDAD' As IdProyecto

			UNION ALL

			SELECT -5 AS ID, '' AS FolioProyecto, 'PENDIENTE' AS NombreProyecto, 'PENDIENTE' As IdProyecto

			UNION ALL

			SELECT -6 AS ID, '' AS FolioProyecto, 'ECONOLINE 2003' AS NombreProyecto, 'ECONOLINE 2003' As IdProyecto

			UNION ALL

			SELECT -7 AS ID, '' AS FolioProyecto, 'ECONOLINE 2006' AS NombreProyecto, 'ECONOLINE 2006' As IdProyecto

			UNION ALL

			SELECT -8 AS ID, '' AS FolioProyecto, 'FOCUS' AS NombreProyecto, 'FOCUS' As IdProyecto

			UNION ALL

			SELECT -9 AS ID, '' AS FolioProyecto, 'IKON' AS NombreProyecto, 'IKON' As IdProyecto

			UNION ALL

			SELECT -10 AS ID, '' AS FolioProyecto, 'RANGER' AS NombreProyecto, 'RANGER' As IdProyecto

			UNION ALL

			SELECT -11 AS ID, '' AS FolioProyecto, 'REMOLQUE' AS NombreProyecto, 'REMOLQUE' As IdProyecto

			UNION ALL

			SELECT -12 AS ID, '' AS FolioProyecto, 'RAM' AS NombreProyecto, 'RAM' As IdProyecto

			UNION ALL

			SELECT -13 AS ID, '' AS FolioProyecto, 'CHEYENNE' AS NombreProyecto, 'CHEYENNE' As IdProyecto

			UNION ALL

			SELECT -14 AS ID, '' AS FolioProyecto, 'RAM 700' AS NombreProyecto, 'RAM 700' As IdProyecto

			UNION ALL

			SELECT -15 AS ID, '' AS FolioProyecto, 'JEEP' AS NombreProyecto, 'JEEP' As IdProyecto

			UNION ALL

			SELECT -16 AS ID, '' AS FolioProyecto, 'INVENTARIO' AS NombreProyecto, 'INVENTARIO' As IdProyecto

			UNION ALL

			SELECT -17 AS ID, '' AS FolioProyecto, 'GASOLINA' AS NombreProyecto, 'GASOLINA' As IdProyecto

			UNION ALL

			SELECT -18 AS ID, '' AS FolioProyecto, 'FRONTIER' AS NombreProyecto, 'FRONTIER' As IdProyecto

			UNION ALL

			SELECT -19 AS ID, '' AS FolioProyecto, 'SWIFT' AS NombreProyecto, 'SWIFT' As IdProyecto

			UNION ALL

			SELECT -20 AS ID, '' AS FolioProyecto, 'SPARK' AS NombreProyecto, 'SPARK' As IdProyecto

			UNION ALL

			SELECT -21 AS ID, '' AS FolioProyecto, 'F150' AS NombreProyecto, 'F150' As IdProyecto

			UNION ALL

			SELECT -22 AS ID, '' AS FolioProyecto, 'BRONCO' AS NombreProyecto, 'BRONCO' As IdProyecto

			UNION ALL

			SELECT -23 AS ID, '' AS FolioProyecto, 'GASTOS ADMINISTRATIVOS' AS NombreProyecto, 'GASTOS ADMINISTRATIVOS' As IdProyecto
		) A
		ORDER BY ID
	END
	ELSE
	BEGIN

		SELECT *
		FROM (
			SELECT ROW_NUMBER() OVER(Order by A.NombreProyecto) As ID, A.FolioProyecto, NombreProyecto, Convert(Nvarchar(150), IdProyecto) As IdProyecto
			FROM tblProyectos A
			Inner Join dbo.tblUsuarios B
			ON B.IdUsuario = A.IdLider
			WHERE A.Activo = 1 And Convert(VARCHAR(150), IdProyecto) = @IdProyecto

			UNION ALL

			SELECT -1 AS ID, '' AS FolioProyecto, 'N/A' AS NombreProyecto, 'N/A' As IdProyecto

			UNION ALL

			SELECT -2 AS ID, '' AS FolioProyecto, 'CONSUMIBLES TALLER' AS NombreProyecto, 'CONSUMIBLES TALLER' As IdProyecto

			UNION ALL

			SELECT -3 AS ID, '' AS FolioProyecto, 'UNIFORMES SISA' AS NombreProyecto, 'UNIFORMES SISA' As IdProyecto

			UNION ALL

			SELECT -4 AS ID, '' AS FolioProyecto, 'EQUIPO DE SEGURIDAD' AS NombreProyecto, 'EQUIPO DE SEGURIDAD' As IdProyecto

			UNION ALL

			SELECT -5 AS ID, '' AS FolioProyecto, 'PENDIENTE' AS NombreProyecto, 'PENDIENTE' As IdProyecto

			UNION ALL

			SELECT -6 AS ID, '' AS FolioProyecto, 'ECONOLINE 2003' AS NombreProyecto, 'ECONOLINE 2003' As IdProyecto

			UNION ALL

			SELECT -7 AS ID, '' AS FolioProyecto, 'ECONOLINE 2006' AS NombreProyecto, 'ECONOLINE 2006' As IdProyecto

			UNION ALL

			SELECT -8 AS ID, '' AS FolioProyecto, 'FOCUS' AS NombreProyecto, 'FOCUS' As IdProyecto

			UNION ALL

			SELECT -9 AS ID, '' AS FolioProyecto, 'IKON' AS NombreProyecto, 'IKON' As IdProyecto

			UNION ALL

			SELECT -10 AS ID, '' AS FolioProyecto, 'RANGER' AS NombreProyecto, 'RANGER' As IdProyecto

			UNION ALL

			SELECT -11 AS ID, '' AS FolioProyecto, 'REMOLQUE' AS NombreProyecto, 'REMOLQUE' As IdProyecto

			UNION ALL

			SELECT -12 AS ID, '' AS FolioProyecto, 'RAM' AS NombreProyecto, 'RAM' As IdProyecto

			UNION ALL

			SELECT -13 AS ID, '' AS FolioProyecto, 'CHEYENNE' AS NombreProyecto, 'CHEYENNE' As IdProyecto

			UNION ALL

			SELECT -14 AS ID, '' AS FolioProyecto, 'RAM 700' AS NombreProyecto, 'RAM 700' As IdProyecto

			UNION ALL

			SELECT -15 AS ID, '' AS FolioProyecto, 'JEEP' AS NombreProyecto, 'JEEP' As IdProyecto

			UNION ALL

			SELECT -16 AS ID, '' AS FolioProyecto, 'INVENTARIO' AS NombreProyecto, 'INVENTARIO' As IdProyecto

			UNION ALL

			SELECT -17 AS ID, '' AS FolioProyecto, 'GASOLINA' AS NombreProyecto, 'GASOLINA' As IdProyecto

			UNION ALL

			SELECT -18 AS ID, '' AS FolioProyecto, 'FRONTIER' AS NombreProyecto, 'FRONTIER' As IdProyecto

			UNION ALL

			SELECT -19 AS ID, '' AS FolioProyecto, 'SWIFT' AS NombreProyecto, 'SWIFT' As IdProyecto
		) A
		ORDER BY ID
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarProyectosMonitorMecanico]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarProyectosMonitorMecanico]
	
AS
BEGIN
	
	SELECT IdProyecto, NombreProyecto, Descripcion, B.RazonSocial, B.Contacto, A.Estatus
	FROM [SisaAdmin].[dbo].[tblProyectos] A
	INNER JOIN dbo.tblClientes B
	ON B.IdCliente = A.IdCliente
	WHERE A.Activo = 1

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarTotalSinOrden]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <21 de Junio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarTotalSinOrden]
	@Opcion AS INT = 1
AS
BEGIN
	
	SELECT SUM(Total) AS Total, SUM(TotalFacturado) AS TotalFacturado, SUM(TotalSinFactura) AS TotalSinFactura
	FROM (
		SELECT Sum(CostoCotizacion) AS Total, 0 AS TotalFacturado, 0 As TotalSinFactura
		FROM dbo.tblProyectos
		WHERE Activo = 1 And IsNull(NombreOC, '') = ''	

		UNION ALL

		SELECT 0 AS Total, SUM(C.Total) - SUM(D.Total) AS TotalFacturado, Sum(CostoCotizacion) - SUM(C.Total) As TotalSinFactura
		FROM dbo.tblProyectos A
		INNER JOIN dbo.tblClienteContacto B
		ON B.idContacto = A.IdCliente
		LEFT OUTER JOIN (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus != 2 Group By IdProyecto) C
		ON C.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
		Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) D
		ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
		WHERE A.NombreOC != ''

		--UNION ALL

		--SELECT 0 AS Total, SUM(TOTAL) AS TotalSinFactura
		--FROM (
		--	Select SUM(A.CostoCotizacion) AS Total
		--	From dbo.tblProyectos A
		--	Left Outer Join (Select IdProyecto From dbo.tblFacturasEmitidas Group By IdProyecto) B
		--	On Convert(NVarchar(150), B.IdProyecto) = Convert(NVarchar(150), A.IdProyecto)
		--	Where A.Activo = 1 And B.IdProyecto Is Null

		--	UNION ALL

		--	Select SUM(A.CostoCotizacion) AS Total
		--	From dbo.tblProyectos A
		--	Inner Join (Select IdProyecto From dbo.tblFacturasEmitidas WHERE Estatus = 0 Group By IdProyecto) B
		--	On Convert(NVarchar(150), B.IdProyecto) = Convert(NVarchar(150), A.IdProyecto)
		--	Where A.Activo = 1 
		--) A
	) A

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarUsuarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarUsuarios]
	
AS
BEGIN
	Select IdUsuario, NombreCompleto
	From tblUsuarios
	Where Activo = 1
	Order By NombreCompleto
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargarViaticosEnc]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <15 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargarViaticosEnc]
	@IdViaticos As varchar(150) = 'd4021dd2-f21f-4388-bf16-8a5c4f996e08'
AS
BEGIN
	
	SELECT A.*, B.NombreProyecto
	FROM dbo.tblViaticos A
	LEFT OUTER JOIN dbo.tblProyectos B
	ON B.IdProyecto = A.IdProyecto
	WHERE ID = @IdViaticos

END
GO
/****** Object:  StoredProcedure [dbo].[sp_CargaUsuariosProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Marzo 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_CargaUsuariosProyecto]
	@IdProyecto As VARCHAR(150)
AS
BEGIN

	SELECT @IdProyecto As IdProyecto, IdUsuario, NombreCompleto
	FROM tblUsuarios
	WHERE Activo = 1

	--SELECT A.IdProyecto, B.IdUsuario, B.NombreCompleto
	--FROM tblProyectos A
	--Inner Join tblUsuarios B
	--On B.IdUsuario = A.IdLider
	--Where IdProyecto = @IdProyecto

	--UNION ALL

	--SELECT A.IdProyecto, B.IdUsuario, B.NombreCompleto
	--FROM tblProyectos A
	--Inner Join tblUsuarios B
	--On B.IdUsuario = A.UserProject1
	--Where IdProyecto = @IdProyecto

	--UNION ALL

	--SELECT A.IdProyecto, B.IdUsuario, B.NombreCompleto
	--FROM tblProyectos A
	--Inner Join tblUsuarios B
	--On B.IdUsuario = A.UserProject2
	--Where IdProyecto = @IdProyecto

	--UNION ALL

	--SELECT A.IdProyecto, B.IdUsuario, B.NombreCompleto
	--FROM tblProyectos A
	--Inner Join tblUsuarios B
	--On B.IdUsuario = A.UserProject3
	--Where IdProyecto = @IdProyecto

	--UNION ALL

	--SELECT A.IdProyecto, B.IdUsuario, B.NombreCompleto
	--FROM tblProyectos A
	--Inner Join tblUsuarios B
	--On B.IdUsuario = A.UserProject4
	--Where IdProyecto = @IdProyecto

END

GO
/****** Object:  StoredProcedure [dbo].[sp_ChatMessageInsert]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ChatMessageInsert]
	@IdFrom As Varchar(200),
	@From AS Varchar(100),
	@IdTo As Varchar(200),
	@To AS Varchar(100),
	@Message AS VARCHAR(MAX)
AS
BEGIN

	INSERT INTO [dbo].[tblChat]
           ([IdFrom],[From],[IdTo],[To],[Message],[MessageDate],[Leido])
     VALUES
           (@IdFrom,@From,@IdTo,@To,@Message,GETDATE(),0)


END

GO
/****** Object:  StoredProcedure [dbo].[sp_DatosClientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Febrero>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DatosClientes]
	@IdCliente VARCHAR(150)
AS
BEGIN
	
	SELECT IdCliente, RazonSocial, TelefonoEmpresa, Contacto, Celular, Email, Direccion
	FROM tblClientes
	WHERE IdCliente = @IdCliente

END

GO
/****** Object:  StoredProcedure [dbo].[sp_DesactivaCliente]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DesactivaCliente]
	@IdCliente As VARCHAR(150),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	UPDATE tblClientes
	SET Activo = 0, IdUsuarioModificacion = @IdUsuario, FechaModificacion = GETDATE()
	WHERE IdCliente = @IdCliente

END


GO
/****** Object:  StoredProcedure [dbo].[sp_DesactivaMaterial]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <16 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DesactivaMaterial]
	@IdMaterial As VARCHAR(150),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	UPDATE tblMateriales
	SET Activo = 0, IdUsuarioModifica = @IdUsuario, FechaModificacion = GETDATE()
	WHERE IdMaterial = @IdMaterial

END


GO
/****** Object:  StoredProcedure [dbo].[sp_DesactivaProveedor]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <15 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DesactivaProveedor]
	@IdProveedor As VARCHAR(150),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	UPDATE tblProveedores
	SET Activo = 0, IdUsuarioModifica = @IdUsuario, FechaModificacion = GETDATE()
	WHERE IdProveedor = @IdProveedor

END

GO
/****** Object:  StoredProcedure [dbo].[sp_DesactivaProveedorMaterial]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <17 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DesactivaProveedorMaterial]
	@IdProveedorMaterial AS VARCHAR(150),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	UPDATE tblProveedorMaterial
	SET Activo = 0, FechaModificacion = GETDATE(), IdUsuarioModificacion = @IdUsuario
	WHERE IdProveedorMaterial = @IdProveedorMaterial

END

GO
/****** Object:  StoredProcedure [dbo].[sp_DesactivaProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DesactivaProyecto]
	@IdProyecto As VARCHAR(150),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	Update tblProyectos
	SET Activo = 0, IdUsuarioModificacion = @IdUsuario, FechaModificacion = GETDATE()
	WHERE IdProyecto = @IdProyecto

END
GO
/****** Object:  StoredProcedure [dbo].[sp_DesactivaUsuario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_DesactivaUsuario]
	@IdUsuario As VARCHAR(150),
	@IdUsuarioQuien AS VARCHAR(150)
AS
BEGIN
	
	UPDATE tblUsuarios
	SET Activo = 0, IdUsuarioModificacion = @IdUsuarioQuien, FechaModificacion = GETDATE()
	WHERE IdUsuario = @IdUsuario

END
GO
/****** Object:  StoredProcedure [dbo].[sp_EnviaCorreo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <10 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_EnviaCorreo]
	@IdCotizacion As VARCHAR(150),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	UPDATE tblCotizacionNew
	SET Estatus = 'ENVIADA', IdUsuarioEnvia = @IdUsuario, FechaEnviada = GETDATE()
	WHERE IdCotizacion = @IdCotizacion

END

GO
/****** Object:  StoredProcedure [dbo].[sp_GeneraReporteOCInfo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GeneraReporteOCInfo]
	@IdOrdenCompra AS VARCHAR(150) = '716a7604-cb65-440f-bdcc-954ab57c525a'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select idSucursa, DireccionSucursal, u.Telefono, u.NombreCompleto, s.CiudadSucursal, u.Correo from tblOrdenCompra oc 
	inner join tblSucursales s on oc.idSucursal = s.idSucursa
	inner join tblUsuarios u on oc.IdUsuario = u.IdUsuario
	where oc.IdOrdenCompra = IdOrdenCompra
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GeneraReporteOrdenCompraDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GeneraReporteOrdenCompraDet]
	@IdOrdenCompra AS VARCHAR(150)
AS
BEGIN
	
	SELECT *
	FROM tblOrdenCompraDet
	Where IdOrdenCompra = @IdOrdenCompra

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GeneraReporteOrdenCompraEnc]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GeneraReporteOrdenCompraEnc]
	@IdOrdenCompra AS VARCHAR(150) = '716a7604-cb65-440f-bdcc-954ab57c525a'
AS
BEGIN
	
	SELECT A.IdOrdenCompra, A.Folio, B.Proveedor, B.NombreComercial, A.ReferenciaCot, C.FolioProyecto AS NombreProyecto, D.NombreCompleto As PedidoPor
		, A.SubTotal, A.Iva, A.Total, A.Enviada, A.Estatus, A.FechaModificacion, UPPER(E.NombreCompleto) As UsuarioModifico, F.Moneda, B.Email
		, B.Contacto, B.Domicilio, B.Telefono1, A.CondicionPago, A.Descuento, UPPER(G.NombreCompleto) As UsuarioAprobo
	FROM tblOrdenCompra A
	Inner Join dbo.tblProveedores B
	On B.IdProveedor = A.IdProveedor
	Inner Join dbo.tblProyectos C
	On C.IdProyecto = A.IdProyecto
	Inner Join dbo.tblUsuarios D
	On D.IdUsuario = A.IdUsuario
	Inner Join dbo.tblUsuarios E
	On E.IdUsuario = A.IdUsuarioCreacion
	Inner Join dbo.tblMonedas F
	On F.IdMoneda = A.IdMoneda
	Inner Join dbo.tblUsuarios G
	On G.IdUsuario = A.IdUsuarioAprobo
	WHERE A.IdOrdenCompra = @IdOrdenCompra

	UNION ALL

	SELECT A.IdOrdenCompra, A.Folio, B.Proveedor, B.NombreComercial, A.ReferenciaCot, UPPER(A.IdProyecto) AS NombreProyecto, D.NombreCompleto As PedidoPor
		, A.SubTotal, A.Iva, A.Total, A.Enviada, A.Estatus, A.FechaModificacion, UPPER(E.NombreCompleto) As UsuarioModifico, F.Moneda, B.Email
		, B.Contacto, B.Domicilio, B.Telefono1, A.CondicionPago, A.Descuento, UPPER(G.NombreCompleto) As UsuarioAprobo
	FROM tblOrdenCompraInsumos A
	Inner Join dbo.tblProveedores B
	On B.IdProveedor = A.IdProveedor
	Inner Join dbo.tblUsuarios D
	On D.IdUsuario = A.IdUsuario
	Inner Join dbo.tblUsuarios E
	On E.IdUsuario = A.IdUsuarioCreacion
	Inner Join dbo.tblMonedas F
	On F.IdMoneda = A.IdMoneda
	Inner Join dbo.tblUsuarios G
	On G.IdUsuario = A.IdUsuarioAprobo
	WHERE A.IdOrdenCompra = @IdOrdenCompra

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GeneraReporteRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GeneraReporteRFQ]
	@IdRfq AS VARCHAR(150)
AS
BEGIN
	
	SELECT *
	FROM tblRFQ r
	inner join tblClienteContacto c on r.IdCliente = c.idContacto
	inner join tblEmpresas e on c.idEmpresa = e.idEmpresa
	inner join tblUsuarios u on r.IdUsuarioAlta = u.IdUsuario
	Where IdRfq = @IdRfq
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GeneraReporteRFQDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GeneraReporteRFQDet]
	@IdRfq AS VARCHAR(150)
AS
BEGIN
	
	SELECT *
	FROM tblRFQDet 
	Where IdRfq = @IdRfq
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GeneraReporteValiant]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Junio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GeneraReporteValiant]
	@IdEstacion AS INT = 1
AS
BEGIN
	
	SELECT IdEstacionValiant, NombreEstacion, (Electrico / 100) AS Electrico, (Mecanico / 100) As Mecanico, Comentarios, ImagenReport1, ImagenReport2, ImagenReport3, ImagenReport4, ImagenReport5, ImagenReport6
	, ImagenReport7, ImagenReport8, ImagenReport9, ImagenReport10, ImagenReport11, ImagenReport12, ImagenReport13, ImagenReport14, ImagenReport15
	FROM InfoCenter..tblEstacionesValiant 
	WHERE IdEstacionValiant = @IdEstacion

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GeneraReporteValiantImagen]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <30 de Junio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GeneraReporteValiantImagen]
	@IdEstacion AS INT
AS
BEGIN
	
	IF @IdEstacion = 1
	BEGIN

		SELECT *
		FROM InfoCenter..tblValiantImagenFender
		
	END

	--SELECT IdEstacionValiantImg, NombreArchivo, Extension, FileSize, Imagen, ImagenReport--, REPLACE(REPLACE(Imagen, 'data:image/jpeg;base64,', ''), 'data:image/png;base64,', '') AS Imagen
	--FROM InfoCenter..tblEstacionesValiantImagenes
	--WHERE IdEstacionValiant = @IdEstacion

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPermisos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetPermisos]
	@IdUsuario As VARCHAR(150) = 'F78542FB-849F-4FB3-A6F4-228C46C42F0A',
	@Option AS INT = 2
AS
BEGIN
	
	IF @Option = 1
	BEGIN
		SELECT B.*, A.Visible 
		FROM tblPermisos A
		INNER JOIN tblMenu B
		ON B.IdMenu = A.IdMenu
		WHERE A.IdUsuario = @IdUsuario
	END

	IF @Option = 2
	BEGIN
		SELECT B.Seccion, Icono, Menu, Orden, Pagina
		FROM tblPermisos A
		INNER JOIN tblMenu B
		ON B.IdMenu = A.IdMenu AND B.Accion = '' And B.Icono != ''
		WHERE A.Visible = 1 AND A.IdUsuario = @IdUsuario
		Order By B.Orden
	END
	

END

GO
/****** Object:  StoredProcedure [dbo].[sp_GraficaPastelDetalle]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GraficaPastelDetalle]
	@IdProyecto AS VARCHAR(150) = 'd6e9c4d1-8738-45c6-a619-d8495ba66e4f',
	@Nombre AS VARCHAR(100) = 'TotalGastos',
	@Gastado AS DECIMAL(20,2) = 203795.21
AS
BEGIN
	
	IF @Nombre = 'TotalGastos'
	BEGIN
		
		--DECLARE @costoCotizacion AS DECIMAL(20,2)

		--SELECT @costoCotizacion = CostoCotizacion
		--FROM dbo.tblProyectos
		--WHERE IdProyecto = @IdProyecto

		SELECT 'Mat Con OC' AS Nombre, IsNull(SUM(IsNull(OC, 0.00)), 0.00) AS Total, ((IsNull(SUM(IsNull(OC, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto
			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY C.Abreviatura, CONVERT(DATE, B.FechaCreacion)
		) A

		UNION ALL

		SELECT 'Mat Con OC Pend' AS Nombre, IsNull(SUM(IsNull(OC, 0.00)), 0.00) AS TotalPend, ((IsNull(SUM(IsNull(OC, 0.00)), 0.00) / @Gastado) * 100) AS PorcentajePend
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto
			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura, CONVERT(DATE, B.FechaCreacion)
		) A
		
		UNION ALL

		SELECT 'Fac Sin OC' As Nombre, IsNull(SUM(IsNull(Facturas, 0.00)), 0.00) AS Total, ((IsNull(SUM(IsNull(Facturas, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
		FROM (
			SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas
			WHERE IdProyecto = @IdProyecto
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
			AND Viaticos = 0 And Estatus != 2
		) A 

		UNION ALL

		--SELECT 'Imprevistos' As Nombre, IsNull(Sum(IsNull(Total, 0.00)), 0.00)  AS Total, ((IsNull(Sum(IsNull(Total, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
		--FROM tblGastos
		--WHERE IdProyecto = @IdProyecto

		SELECT 'Caja Chica' As Nombre, IsNull(Sum(IsNull(Abono, 0.00)), 0.00)  AS Total, ((IsNull(Sum(IsNull(Abono, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
		FROM tblCajaChica
		WHERE IdProyecto = @IdProyecto
		AND Comprobante NOT IN('FACTURA','VIATICOS')

		UNION ALL

		SELECT 'Viaticos' As Nombre, IsNull(SUM(TOTAL), 0) AS Total, ((IsNull(SUM(TOTAL), 0) / @Gastado) * 100) AS Porcentaje
		FROM (
			select  
			SUM(Gasolina + Desayuno + Comida + Cena+Casetas+Hotel+Transporte+Otros+ManoObra+Equipo+Materiales) AS TOTAL
			
			from tblViaticosDet a
			inner join tblViaticos b on b.ID = a.IdViaticos
			where a.IdProyecto = @IdProyecto
		) A
		--SELECT 'Viaticos' As Nombre
		--	, IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) AS Total
		--	, ((IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
		--FROM [SisaAdmin].[dbo].[tblViaticos] A
		--INNER JOIN dbo.tblViaticosDet B
		--ON B.IdViaticos = A.ID
		--WHERE A.IdProyecto = @IdProyecto

		UNION ALL

		SELECT 'Mano de Obra' AS Nombre , IsNull(Sum(((B.SueldoDiario / 8) * A.Total)), 0.00) AS Total, IsNull(((Sum(((B.SueldoDiario / 8) * A.Total)) / @Gastado) * 100), 0.00) AS Porcentaje
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1

	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GraficaPastelUtilidad]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GraficaPastelUtilidad]
	@IdProyecto AS VARCHAR(150) = '6b865999-4805-473d-b9b0-69f64bfdb214'
AS
BEGIN
	
	DELETE FROM UtilidadPastel

	DECLARE @costoCotizacion decimal(20,2), @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
		, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2)

	--SET @IdProyecto = '23720c4c-546d-4e90-a8c4-d8bdbb9c2486'

	/* COSTO COTIZACION */
	SELECT @costoCotizacion = CostoCotizacion
	FROM dbo.tblProyectos
	WHERE IdProyecto = @IdProyecto


	/* ORDENES DE COMPRA */
	SELECT @totalOC = SUM(OC)
	FROM (
		--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
		--FROM tblOrdenCompra A
		--INNER JOIN dbo.tblMonedas B
		--ON B.IdMoneda = A.IdMoneda
		--WHERE IdProyecto = @IdProyecto

		SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
		FROM tblOrdenCompraDet A
		INNER JOIN dbo.tblOrdenCompra B
		ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
		INNER JOIN dbo.tblMonedas C
		ON C.IdMoneda = B.IdMoneda
		WHERE A.CantidadRecibida > 0
		GROUP BY C.Abreviatura, CONVERT(DATE, B.FechaCreacion)

		--SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
		--FROM tblOrdenCompraDet A
		--INNER JOIN dbo.tblOrdenCompra B
		--ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
		--INNER JOIN dbo.tblMonedas C
		--ON C.IdMoneda = B.IdMoneda
		--GROUP BY C.Abreviatura, CONVERT(DATE, B.FechaCreacion)
	) A

	SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura
		) A

	/* FACTURAS */
	SELECT @totalFacturas = SUM(Facturas)
	FROM (
		SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
		FROM dbo.tblControlFacturas
		WHERE IdProyecto = @IdProyecto And Estatus != 2
		AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
		And Viaticos = 0
	) A

	--/* MANO DE OBRA */
	SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
	FROM tblHorasHombre A
	INNER JOIN dbo.tblUsuarios B
	ON B.IdUsuario = A.IdUsuario
	WHERE IdProyecto = @IdProyecto And A.Activo = 1

	/* VIATICOS */
	SELECT @viaticos = SUM(TOTAL)
	FROM (
		SELECT 'Viaticos' As Nombre, CASE WHEN A.CantGastada = 0 THEN A.CantEntregada ELSE A.CantGastada END AS TOTAL
			--, IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) AS Total
			--, ((IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
		FROM [SisaAdmin].[dbo].[tblViaticos] A
		--INNER JOIN dbo.tblViaticosDet B
		--ON B.IdViaticos = A.ID
		WHERE A.IdProyecto = @IdProyecto
	) A
	GROUP BY Nombre
	--SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
	--FROM [SisaAdmin].[dbo].[tblViaticos] A
	--INNER JOIN dbo.tblViaticosDet B
	--ON B.IdViaticos = A.ID
	--WHERE A.IdProyecto = @IdProyecto

	/* CAJA CHICA */
	SELECT @cajaChica = SUM(A.ABono)
	FROM dbo.tblCajaChica A
	WHERE Comprobante NOT IN('FACTURA','VIATICOS','ORDEN DE COMPRA') And A.IdProyecto = @IdProyecto

	PRINT(IsNull(@totalOC, 0.00))
	--PRINT(IsNull(@totalFacturas, 0.00))
	--PRINT(IsNull(@viaticos, 0.00))
	--PRINT(IsNull(@cajaChica, 0.00))
	--PRINT(IsNull(@manoObra, 0.00))

	SET @totalGastos =  (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))

	--SELECT @costoCotizacion, @totalGastos, (@costoCotizacion - @totalGastos)

	--SELECT @totalGastos

	INSERT UtilidadPastel
	SELECT 'TotalGastos', @totalGastos, ((@totalGastos / @costoCotizacion) * 100)

	INSERT UtilidadPastel
	SELECT 'Utilidad', (@costoCotizacion - @totalGastos), (((@costoCotizacion - @totalGastos) / @costoCotizacion) * 100)

	SELECT * FROM UtilidadPastel

	--DROP TABLE UtilidadPastel

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GraficaTasks]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <26 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GraficaTasks]
	@IdProyecto As VARCHAR(150) = '23720c4c-546d-4e90-a8c4-d8bdbb9c2486'
AS
BEGIN
	
	SELECT B.NombreCompleto, Count(*) AS Tasks--ROW_NUMBER() OVER(ORDER BY IdTask) AS ID, Task, Convert(NVarchar, FechaInicio, 103) As FechaInicio, B.NombreCompleto
	FROM dbo.tblProyectoTasks A
	Inner Join dbo.tblUsuarios B
	On B.IdUsuario = A.IdUsuario
	WHERE A.IdProyecto = @IdProyecto
	AND A.Estatus < 6
	Group By B.NombreCompleto

END

GO
/****** Object:  StoredProcedure [dbo].[sp_GraficaTasksDetalle]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GraficaTasksDetalle]
	@IdProyecto AS VARCHAR(150),
	@Nombre AS VARCHAR(100) = 'Luis Carlos Galvez Garcia'
AS
BEGIN
	
	SELECT 'Pendientes' AS Task, Count(*) AS Cont
	FROM dbo.tblProyectoTasks A
	Inner Join dbo.tblUsuarios B
	On B.IdUsuario = A.IdUsuario And B.NombreCompleto = @Nombre
	WHERE A.IdProyecto = @IdProyecto And Estatus = 0
	Group By B.NombreCompleto

	UNION ALL

	SELECT 'En Proceso', Count(*) AS Cont
	FROM dbo.tblProyectoTasks A
	Inner Join dbo.tblUsuarios B
	On B.IdUsuario = A.IdUsuario And B.NombreCompleto = @Nombre
	WHERE A.IdProyecto = @IdProyecto And Estatus = 1
	Group By B.NombreCompleto

	UNION ALL

	SELECT 'Finalizado', Count(*) AS Cont
	FROM dbo.tblProyectoTasks A
	Inner Join dbo.tblUsuarios B
	On B.IdUsuario = A.IdUsuario And B.NombreCompleto = @Nombre
	WHERE A.IdProyecto = @IdProyecto And Estatus = 2
	Group By B.NombreCompleto

	UNION ALL

	SELECT 'Cancelado', Count(*) AS Cont
	FROM dbo.tblProyectoTasks A
	Inner Join dbo.tblUsuarios B
	On B.IdUsuario = A.IdUsuario And B.NombreCompleto = @Nombre
	WHERE A.IdProyecto = @IdProyecto And Estatus = 3
	Group By B.NombreCompleto

END

GO
/****** Object:  StoredProcedure [dbo].[sp_GraficaUtilidad]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GraficaUtilidad]
	@IdProyecto AS VARCHAR(150) = '8cff0bac-a517-44fa-ad65-5f66d4a7f664'
AS
BEGIN
	
	DELETE FROM Utilidad

DECLARE @fecha date, @totalFacturas decimal(20,2), @cont AS INT,
    @costoCotizacion decimal(20,2), @totalOC AS decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
	, @utilidad decimal(20,2), @totalGastado AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2);

SET @cont = 0
SET @totalGastado = 0

DECLARE vendor_cursor CURSOR FOR   
SELECT [Date] AS Fecha
FROM DateDimension
WHERE [Date] BETWEEN (SELECT FechaInicio FROM dbo.tblProyectos WHERE IdProyecto = @IdProyecto) AND (SELECT FechaFin FROM dbo.tblProyectos WHERE IdProyecto = @IdProyecto)
AND [Date] <= Convert(DATE, GETDATE())
ORDER BY [Date]

OPEN vendor_cursor  

FETCH NEXT FROM vendor_cursor   
INTO @fecha

WHILE @@FETCH_STATUS = 0  
BEGIN  

	/* ORDENES DE COMPRA */
	SELECT @totalOC = SUM(OC)
	FROM (
		--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
		--FROM tblOrdenCompra A
		--INNER JOIN dbo.tblMonedas B
		--ON B.IdMoneda = A.IdMoneda
		--WHERE IdProyecto = @IdProyecto AND CONVERT(DATE, A.FechaCreacion) = @fecha

		SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
		FROM tblOrdenCompraDet A
		INNER JOIN dbo.tblOrdenCompra B
		ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto AND  CONVERT(DATE, B.FechaCreacion) = @fecha
		INNER JOIN dbo.tblMonedas C
		ON C.IdMoneda = B.IdMoneda
		GROUP BY C.Abreviatura--, CONVERT(DATE, B.FechaCreacion)
	) A

	/* FACTURAS */
	SELECT @totalFacturas = SUM(Facturas)
	FROM (
		SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
		FROM dbo.tblControlFacturas
		WHERE Proyecto = (SELECT NombreProyecto FROM tblProyectos WHERE IdProyecto = @IdProyecto) AND FechaFactura = @fecha
		AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto) And Estatus != 2
	) A

	--/* MANO DE OBRA */
	SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
	FROM tblHorasHombre A
	INNER JOIN dbo.tblUsuarios B
	ON B.IdUsuario = A.IdUsuario
	WHERE IdProyecto = @IdProyecto And A.Activo = 1

	/* CAJA CHICA */
	SELECT @cajaChica = SUM(A.ABono)
	FROM dbo.tblCajaChica A
	WHERE Comprobante NOT IN('FACTURA','VIATICOS') And A.IdProyecto = @IdProyecto

	/* VIATICOS */
	SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
	FROM [SisaAdmin].[dbo].[tblViaticos] A
	INNER JOIN dbo.tblViaticosDet B
	ON B.IdViaticos = A.ID
	WHERE A.IdProyecto = @IdProyecto AND B.FechaViaticos = @fecha

	--IF @cont = 0
	--BEGIN
	--	/* COSTO COTIZACION */
	--	SELECT @costoCotizacion = CostoCotizacion
	--	FROM dbo.tblProyectos
	--	WHERE IdProyecto = @IdProyecto

	--	SET @utilidad = (@costoCotizacion - IsNull(@totalFacturas, 0.00))
	--END
	
	--SET @utilidad = (@utilidad - (IsNull(@totalFacturas, 0.00) + IsNull(@totalOC, 0.00) + IsNull(@gastos, 0.00) + IsNull(@viaticos, 0.00)))

	SET @totalGastado = IsNull(@totalGastado, 0.00) + (IsNull(@totalFacturas, 0.00) + IsNull(@totalOC, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@manoObra, 0.00))
	
	SET @cont = @cont + 1

	INSERT Utilidad
	SELECT @fecha, @totalGastado
	--SELECT @fecha AS FECHA, IsNull(@costoCotizacion, 0.00) AS CostoCotizacion, IsNull(@totalFacturas, 0.00) AS TotalFacturas, IsNull(@totalOC, 0.00) As TotalOC
	--	, IsNull(@gastos, 0.00) AS Gastos, IsNull(@viaticos, 0.00) AS Viaticos, @utilidad
     
    FETCH NEXT FROM vendor_cursor   
    INTO @fecha
END   
CLOSE vendor_cursor;  
DEALLOCATE vendor_cursor; 


SELECT Convert(NVarchar, Fecha) As Fecha, Utilidad FROM Utilidad



END
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarFacturaEmitida]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <12 de Mayo del 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GuardarFacturaEmitida]
	@IdFacturasEmitidas AS VARCHAR(150),
	@IdProyecto AS VARCHAR(150),
	@NoCotizacion AS VARCHAR(150),
	@NoOrdenCompra AS VARCHAR(100),
	@ProgramacionPago AS VARCHAR(20),
	@PorPagar AS DECIMAL(20, 2),
	@FechaPago AS VARCHAR(20),
	@Estatus AS INT,
	@IdUsuario AS VARCHAR(150)
AS
BEGIN

	DECLARE @ProgPago AS DATETIME, @FechPago AS DATETIME
	
	IF @ProgramacionPago = ''
	BEGIN
		SET @ProgPago = NULL
	END
	ELSE
	BEGIN
		SET @ProgPago = (SELECT CONVERT(DATETIME, REPLACE(@ProgramacionPago, '.', '')))
	END

	IF @FechaPago = ''
	BEGIN
		SET @FechPago = NULL
	END
	ELSE
	BEGIN
		SET @FechPago = (SELECT CONVERT(DATETIME, REPLACE(@FechaPago, '.', '')))
	END

	UPDATE [dbo].[tblFacturasEmitidas]
	   SET [IdProyecto] = @IdProyecto
		  ,[NoCotizacion] = @NoCotizacion
		  ,[OrdenCompraRecibida] = @NoOrdenCompra
		  ,[ProgramacionPago] = @ProgPago
		  ,[PorPagar] = @PorPagar
		  ,[FechaPago] = @FechPago
		  ,[Estatus] = @Estatus
		  ,[IdUsuarioModificacion] = @IdUsuario
		  ,[FechaModificacion] = GETDATE()
	 WHERE [IdFacturasEmitidas] = @IdFacturasEmitidas

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertaComentarioCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <30 de Abril 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertaComentarioCotizacion]
	@IdCotizacion VARCHAR(150),
	@Comentario VARCHAR(MAX),
	@IdUsuario VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblComentariosCotizacion]
           ([IdCotizacion],[Comentario],[IdUsuario],[FechaComentario])
     VALUES
           (@IdCotizacion,@Comentario,@IdUsuario,GETDATE())

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertaComentarioProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Febrero 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertaComentarioProyecto]
	@IdProyecto VARCHAR(150),
	@Comentario VARCHAR(MAX),
	@IdUsuario VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblComentariosProyecto]
           ([IdProyecto],[Comentario],[IdUsuario],[FechaComentario])
     VALUES
           (@IdProyecto,@Comentario,@IdUsuario,GETDATE())

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertaComentariosOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <21 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertaComentariosOrdenCompra]
	@IdOrdenCompra AS VARCHAR(150),
	@Comentario AS VARCHAR(MAX),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblOrdenCompraComentarios]
           ([IdOrdenCompra],[Comentario],[IdUsuario],[FechaComentario])
     VALUES
           (@IdOrdenCompra,@Comentario,@IdUsuario,GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertaFallaReconocimientoVoz]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <24 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertaFallaReconocimientoVoz]
	@Vin VARCHAR(50),
	@Falla VARCHAR(50)
AS
BEGIN
	
	INSERT INTO [dbo].[tblFallas]
           ([VIN],[Falla],[Fecha])
     VALUES
           (@Vin,@Falla,GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertaImagenesInfoCenter]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <30 de Junio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertaImagenesInfoCenter]
	@IdEstacion AS INT,
	@ImagenReporte AS Image
AS
BEGIN

	IF (SELECT ImagenReport1 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport1 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport2 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport2 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport3 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport3 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport4 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport4 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport5 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport5 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport6 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport6 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport7 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport7 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport8 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport8 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport9 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport9 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport10 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport10 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport11 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport11 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport12 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport12 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport13 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport13 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE IF (SELECT ImagenReport14 FROM InfoCenter..tblEstacionesValiant WHERE IdEstacionValiant = @IdEstacion) Is NULL
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport14 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	ELSE
	BEGIN
		UPDATE InfoCenter..tblEstacionesValiant
		SET ImagenReport15 = @ImagenReporte
		WHERE IdEstacionValiant = @IdEstacion
	END
	



END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertaNotaAclaratoria]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertaNotaAclaratoria]
	@IdCotizacion VARCHAR(150),
	@NotaAclaratoria VARCHAR(MAX)
AS
BEGIN
	

	INSERT INTO [dbo].[tblNotaAclaratoria]
           ([IdCotizacion],[NotaAclaratoria])
     VALUES
           (@IdCotizacion,@NotaAclaratoria)

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertaProveedorContacto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Mayo del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertaProveedorContacto]
	@IdProveedor AS VARCHAR(150),
	@NombreContacto AS VARCHAR(150),
	@Telefono AS VARCHAR(50),
	@Email AS VARCHAR(150),
	@Departamento AS VARCHAR(150)
AS
BEGIN
	

	INSERT INTO [dbo].[tblProveedoresContactos]
           ([IdProveedor],[NombreContacto],[Telefono],[Email],[Departamento])
     VALUES
           (@IdProveedor,@NombreContacto,@Telefono,@Email,@Departamento)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertArchivoDiseno]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertArchivoDiseno]
	@FileName VARCHAR(MAX),
	@FileExtension VARCHAR(10),
	@FileSize VARCHAR(150)
AS
BEGIN
	

	INSERT INTO [dbo].[tblDocDisenosMecanico]
           ([FileName],[FileExtension],[FileSize],[Fecha])
     VALUES
           (@FileName,@FileExtension,@FileSize,GETDATE())

	SELECT @@IDENTITY As IdDiseno



END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertArchivoMasterCam]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertArchivoMasterCam]
	@FileName VARCHAR(MAX),
	@FileExtension VARCHAR(10),
	@FileSize VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblDocMasterCamMecanico]
           ([FileName],[FileExtension],[FileSize],[Fecha])
     VALUES
           (@FileName,@FileExtension,@FileSize,GETDATE())

	SELECT @@IDENTITY As IdMasterCam
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertCotizacion]
	@IdCliente AS VARCHAR(150),
	@Empresa AS VARCHAR(50),
	@Direccion As VARCHAR(150),
	@Ciudad As VARCHAR(50),
	@Concepto AS VARCHAR(200),
	@CostoCotizacion As DECIMAL(20, 2),
	@CreoCotizacion As VARCHAR(150) = '',
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	DECLARE @FechaCotizacion As VARCHAR(100), @NoCotizacion AS VARCHAR(50)

	SET Language 'Spanish'

	SET @FechaCotizacion = (Select Right('00' + Convert(NVarchar, DateName(day,GETDATE())), 2) + ' de ' + DateName(month,GETDATE()) + ' ' + DateName(YEAR,GETDATE()))

	set language 'us_english'

	EXEC sp_ObtieneFolioCotizacion @Folio = @NoCotizacion OUTPUT

	INSERT INTO [dbo].[tblCotizacionNew]
           ([NoCotizacion],[IdCliente],[Empresa],[Direccion],[Ciudad],[Concepto],[FechaCotizacion],[IdUsuarioElaboro],[FechaAlta],[Estatus],[CostoCotizacion],[IdUsuarioCreo])
     VALUES
           (@NoCotizacion,@IdCliente,@Empresa,@Direccion,@Ciudad,@Concepto,@FechaCotizacion,@IdUsuario,GETDATE(),'CREADA',@CostoCotizacion,@CreoCotizacion)


	SELECT Top 1 IdCotizacion From tblCotizacionNew Order By FechaAlta Desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertDeleteDocumentosProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertDeleteDocumentosProyecto]
	@IdDocumento VARCHAR(150) = '',
	@IdProyecto VARCHAR(150) = 'c745677b-b57f-41f3-b6ac-cb03b5d06384',
	@FileName VARCHAR(150) = '',
	@File VARCHAR(MAX) = '',
	@Opcion INT = 3
AS
BEGIN
	
	IF @Opcion = 1
	BEGIN

	INSERT INTO [dbo].[tblDocProyectos]
           ([IdProyecto],[FileName],[File],[Fecha])
     VALUES
           (@IdProyecto,@FileName,@File,GETDATE())
	END

	IF @Opcion = 2
	BEGIN
		DELETE dbo.tblDocProyectos
		WHERE IdProyecto = @IdProyecto And IdDocumento = @IdDocumento
	END

	IF @Opcion = 3
	BEGIN

		SELECT IdDocumento, [FileName] As NombreArchivo, [File] As Archivo, Replace(Substring([File], 0, CHARINDEX(';', [File])), 'data:', '') AS Tipo, Fecha
		FROM tblDocProyectos
		WHERE IdProyecto = @IdProyecto
		--ORDER BY Fecha
		UNION ALL

		SELECT IdTaskImagen AS IdDocumento, [FileName] As NombreArchivo, [Imagen] AS Archivo, Replace(Substring([Imagen], 0, CHARINDEX(';', [Imagen])), 'data:', '') AS Tipo, A.Fecha
		FROM tblProyectoTaskImagen A
		INNER JOIN tblProyectoTasks B
		ON B.IdTask = A.IdTask AND B.IdProyecto = @IdProyecto

		ORDER BY Fecha

	END

	IF @Opcion = 4
	BEGIN
		SELECT [File] As Archivo, Replace(Substring([File], 0, CHARINDEX(';', [File])), 'data:', '') AS Tipo
		FROM tblDocProyectos
		WHERE IdProyecto = @IdProyecto And [FileName] = @FileName
		ORDER BY Fecha
	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertFacturasEmitidas]
	@FolioFactura AS VARCHAR(50),
	@FechaFactura As DATETIME,
	@RfcReceptor As VARCHAR(100),
	@NombreReceptor As VARCHAR(200),
	@SubTotal AS DECIMAL(20, 2),
	@Iva AS DECIMAL(20, 2),
	@Retencion AS DECIMAL(20,2) = 0,
	@Total AS DECIMAL(20, 2),
	@Moneda As VARCHAR(50),
	@TipoCambio AS DECIMAL(20,6) = 1,
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblFacturasEmitidas]
           ([FolioFactura],[FechaFactura],[RfcReceptor],[NombreReceptor],[IdProyecto],[NoCotizacion],[OrdenCompraRecibida],[SubTotal],[Iva],[Total],[Moneda],[PorPagar],[ProgramacionPago],[FechaPago],[TipoCambio],[IdUsuario],[FechaAlta],[Retencion])
     VALUES
           (@FolioFactura,@FechaFactura,@RfcReceptor,@NombreReceptor,'','','',@SubTotal,@Iva,@Total,@Moneda,@Total,null,null,@TipoCambio,@IdUsuario,GETDATE(),@Retencion)


END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFacturaXML]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertFacturaXML]
	@NombreArchivo AS VARCHAR(150),
	@Archivo AS VARCHAR(MAX)
AS
BEGIN
	
	INSERT INTO [dbo].[tblFacturasXML]
           ([NombreArchivo],[Archivo])
     VALUES
           (@NombreArchivo,@Archivo)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertGasto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertGasto]
	@IdProyecto AS VARCHAR(150),
	@NoFactura AS VARCHAR(50),
	@TipoGasto AS VARCHAR(100),
	@Descripcion AS VARCHAR(MAX),
	@Importe As Decimal(20,2),
	@Iva AS DECIMAL(20,2),
	@Total AS DECIMAL(20,2),
	@Fecha AS DATETIME,
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblGastos]
           ([IdProyecto],[NoFactura],[TipoGasto],[Descripcion],[Importe],[IVA],[Total],[FechaGasto],[IdUsuario],[FechaAlta])
     VALUES
           (@IdProyecto,@NoFactura,@TipoGasto,@Descripcion,@Importe,@Iva,@Total,@Fecha,@IdUsuario,GETDATE())


END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertLocalizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <23 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertLocalizacion]
	@ID VARCHAR(10),
	@Latitud DECIMAL(20, 4),
	@Longitud DECIMAL(20, 4)
AS
BEGIN
	
	DECLARE @intExiste AS INT

	SET @intExiste = (SELECT COUNT(*) FROM tblGPS WHERE ltrim(rtrim(ID)) = ltrim(rtrim(@ID)))

	IF @intExiste = 0
	BEGIN
		INSERT INTO [dbo].[tblGPS]
			   ([ID],[Latitud],[Longitud],[Fecha])
		 VALUES
			   (@ID,@Latitud,@Longitud,GETDATE())
	END
	ELSE
	BEGIN
		UPDATE dbo.tblGPS
		SET Latitud = @Latitud, Longitud = @Longitud, Fecha = GETDATE()
		WHERE ltrim(Rtrim(ID)) = ltrim(rtrim(@ID))
	END
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMaterialImagen]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <04 de Junio del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertMaterialImagen]
	@IdMaterial AS VARCHAR(150),
	@Imagen AS VARCHAR(MAX),
	@FileName AS VARCHAR(MAX),
	@FileExtension AS VARCHAR(10),
	@FileSize AS VARCHAR(150),
	@FileContentType As VARCHAR(100),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblMaterialImagen]
           ([IdMaterial],[Imagen],[FileName],[FileExtension],[FileSize],[FileContentType],[Fecha],[IdUsuario])
     VALUES
           (@IdMaterial,@Imagen,@FileName,@FileExtension,@FileSize,@FileContentType,GETDATE(),@IdUsuario)

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertOrdenCompra]
	@Folio AS VARCHAR(50) = '',
	@IdProveedor AS VARCHAR(150) = 'd7f85d9f-084a-45c6-ab7e-84f4a6428f5f',
	@ReferenciaCot AS VARCHAR(200) = 'CS95470',
	@IdProyecto AS VARCHAR(150) = '487a8f84-efd4-4e2a-beee-34e9ef5430a7',
	@IdUsuario AS VARCHAR(150) = 'f78542fb-849f-4fb3-a6f4-228c46c42f0a',
	@SubTotal AS DECIMAL(18,2) = 31422.98,
	@Iva AS DECIMAL(18,2) = 5027.68,
	@Estatus As INT = 0,
	@IdMoneda AS VARCHAR(150) = '9f77f47a-3b1e-4531-99bc-4e2cb1fff9b2',
	@CondicionPago As VARCHAR(150) = 'CRÉDITO 30 DÍAS.',
	@Comentarios AS VARCHAR(MAX) = '',
	@IdUsuarioModifica AS VARCHAR(150) = 'f78542fb-849f-4fb3-a6f4-228c46c42f0a',
	@Descuento As DECIMAL(18,2) = 0.00,
	@IdUsuarioAprobo AS VARCHAR(150) = 'f6b05324-bb1a-4d95-9caa-942d1ea07fbd',
	@TipoOC AS VARCHAR(50) = '',
	@Sucursal AS VARCHAR(50) = 'E9D0B53B-D8B7-493A-B26D-FAF66D906157',
	@Requisicion AS VARCHAR(50) = 'REQ'
AS
BEGIN
	
	DECLARE @NoOrdenCompra AS VARCHAR(50), @IdOrdenCompra AS VARCHAR(150)

	IF @Folio = ''
	BEGIN
		EXEC sp_ObtieneFolioOrdenCompra @FolioOC = @NoOrdenCompra OUTPUT

		SET @IdOrdenCompra = NEWID()
		
		IF (@IdProyecto != 'AC7E508E-6E89-4778-A9B5-0343FEF9201D' and @IdProyecto != '9D2FE3B0-5E86-4FF2-B300-144B1C94F1FA' AND @IdProyecto != '14AFC99E-E0A1-487A-9AA4-0C6C3EB32B77' AND @IdProyecto != '8E94B853-6E03-4726-B60F-415B5F7294D6')
		BEGIN
			--PRINT('NO')
			INSERT INTO [dbo].[tblOrdenCompra]
				   ([IdOrdenCompra],[Folio],[IdProveedor],[ReferenciaCot],[IdProyecto],[IdUsuario],[SubTotal],[Iva],[Estatus],[Enviada],[EnviarA],[IdMoneda],[CondicionPago],[Comentarios],[FechaCreacion]
				   ,[IdUsuarioCreacion],[FechaModificacion],[IdUsuarioModificacion],[Descuento],[IdUsuarioAprobo],[TipoOC], [idSucursal], FolioReq)
			 VALUES
				   (@IdOrdenCompra,@NoOrdenCompra,@IdProveedor,@ReferenciaCot,@IdProyecto,@IdUsuario,@SubTotal,@Iva,@Estatus,0,'',@IdMoneda,@CondicionPago,@Comentarios,GETDATE()
				   ,@IdUsuarioModifica,GETDATE(),@IdUsuarioModifica,@Descuento,@IdUsuarioAprobo,@TipoOC,@Sucursal, @Requisicion)
		END
		ELSE
		BEGIN
			--PRINT('SI')
			INSERT INTO [dbo].[tblOrdenCompraInsumos]
				   ([IdOrdenCompra],[Folio],[IdProveedor],[ReferenciaCot],[IdProyecto],[IdUsuario],[SubTotal],[Iva],[Estatus],[Enviada],[EnviarA],[IdMoneda],[CondicionPago],[Comentarios],[FechaCreacion]
				   ,[IdUsuarioCreacion],[FechaModificacion],[IdUsuarioModificacion],[Descuento],[IdUsuarioAprobo], [idSucursal], FolioReq)
			 VALUES
				   (@IdOrdenCompra,@NoOrdenCompra,@IdProveedor,@ReferenciaCot,@IdProyecto,@IdUsuario,@SubTotal,@Iva,@Estatus,0,'',@IdMoneda,@CondicionPago,@Comentarios,GETDATE()
				   ,@IdUsuarioModifica,GETDATE(),@IdUsuarioModifica,@Descuento,@IdUsuarioAprobo, @Sucursal,@Requisicion)
		END

	END
	ELSE
	BEGIN
		IF (@IdProyecto != 'AC7E508E-6E89-4778-A9B5-0343FEF9201D' and @IdProyecto != '9D2FE3B0-5E86-4FF2-B300-144B1C94F1FA' AND @IdProyecto != '14AFC99E-E0A1-487A-9AA4-0C6C3EB32B77' AND @IdProyecto != '8E94B853-6E03-4726-B60F-415B5F7294D6')
		BEGIN
			UPDATE [dbo].[tblOrdenCompra]
			   SET [IdProveedor] = @IdProveedor
				  ,[ReferenciaCot] = @ReferenciaCot
				  ,[IdProyecto] = @IdProyecto
				  ,[IdUsuario] = @IdUsuario
				  ,[SubTotal] = @SubTotal
				  ,[Iva] = @Iva
				  ,[IdMoneda] = @IdMoneda
				  ,[CondicionPago] = @CondicionPago
				  ,[Comentarios] = @Comentarios
				  ,[FechaModificacion] = GETDATE()
				  ,[IdUsuarioModificacion] = @IdUsuarioModifica
				  ,[Descuento] = @Descuento
				  ,[IdUsuarioAprobo] = @IdUsuarioAprobo
				  ,[TipoOC] = @TipoOC
			 WHERE Folio = @Folio

			 --SET @IdOrdenCompra = (SELECT IdOrdenCompra FROM tblOrdenCompra WHERE Folio = @Folio)
		 
			 SELECT @IdOrdenCompra = IdOrdenCompra, @NoOrdenCompra = Folio
			 FROM tblOrdenCompra
			 WHERE Folio = @Folio
		 END
		 ELSE
		 BEGIN
			UPDATE [dbo].[tblOrdenCompraInsumos]
			   SET [IdProveedor] = @IdProveedor
				  ,[ReferenciaCot] = @ReferenciaCot
				  ,[IdProyecto] = @IdProyecto
				  ,[IdUsuario] = @IdUsuario
				  ,[SubTotal] = @SubTotal
				  ,[Iva] = @Iva
				  ,[IdMoneda] = @IdMoneda
				  ,[CondicionPago] = @CondicionPago
				  ,[Comentarios] = @Comentarios
				  ,[FechaModificacion] = GETDATE()
				  ,[IdUsuarioModificacion] = @IdUsuarioModifica
				  ,[Descuento] = @Descuento
				  ,[IdUsuarioAprobo] = @IdUsuarioAprobo
			 WHERE Folio = @Folio
		 
			 SELECT @IdOrdenCompra = IdOrdenCompra, @NoOrdenCompra = Folio
			 FROM tblOrdenCompraInsumos
			 WHERE Folio = @Folio
		 END
	END

	SELECT @IdOrdenCompra As IdOrdenCompra, @NoOrdenCompra AS NoOrdenCompra
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrdenCompraDetalle]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertOrdenCompraDetalle]
	@IdOrdenCompra AS VARCHAR(150),
	@Item As INT,
	@Codigo AS VARCHAR(100),
	@Descripcion AS VARCHAR(250),
	@Comentarios AS VARCHAR(MAX),
	@Cantidad AS DECIMAL(18,2),
	@Unidad As VARCHAR(50),
	@Precio AS DECIMAL(18,2),
	@Importe AS DECIMAL(18,2),
	@TiempoEntrega AS VARCHAR(150),
	@CantidadRecibida AS DECIMAL(18,2),
	@Opcion AS INT
AS
BEGIN

	IF @Opcion = 0
	BEGIN
		DELETE tblOrdenCompraDet WHERE IdOrdenCompra = @IdOrdenCompra
	END


	INSERT INTO [dbo].[tblOrdenCompraDet]
			   ([IdOrdenCompra],[Item],[Codigo],[Descripcion],[Comentarios],[Cantidad],[Unidad],[Precio],[Importe],[TiempoEntrega],[CantidadRecibida])
		 VALUES
			   (@IdOrdenCompra,@Item,@Codigo,@Descripcion,@Comentarios,@Cantidad,@Unidad,@Precio,@Importe,@TiempoEntrega,@CantidadRecibida)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrdenTrabajo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <15 de Mayo>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertOrdenTrabajo]
	@IdProyecto AS VARCHAR(150),
	@FechaPruebas AS VARCHAR(50),
	@FechaEntrega AS VARCHAR(50),
	@IdUsuarioCoordinador AS VARCHAR(150)
AS
BEGIN
	

	DECLARE @FolioOrden AS VARCHAR(50), @intConsecutivo AS INT

	SET @intConsecutivo = (SELECT COUNT(*) + 1 FROM dbo.tblOrdenTrabajo WHERE IdProyecto = 'a541fa0d-9a14-4f2c-bdae-9012f639870f')

	SET @FolioOrden = (SELECT FolioProyecto + '/OT-' + RIGHT('00' + Convert(NVARCHAR, @intConsecutivo), 2) FROM dbo.tblProyectos WHERE IdProyecto = 'a541fa0d-9a14-4f2c-bdae-9012f639870f')

	--SELECT @FolioOrden

	INSERT INTO [dbo].[tblOrdenTrabajo]
           ([FolioOrden],[IdProyecto],[IdUsuarioCoordinador],[FechaPruebas],[FechaEntrega],[FechaAlta])
     VALUES
           (@FolioOrden,@IdProyecto,@IdUsuarioCoordinador,@FechaPruebas,@FechaEntrega,GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProveedorMaterialPrecio]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <17 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertProveedorMaterialPrecio]
	@IdProveedor AS VARCHAR(150),
	@IdMaterial AS VARCHAR(150),
	@UnidadMedida As VARCHAR(50),
	@Precio AS Decimal(18,2),
	@IdMoneda As VARCHAR(150),
	@IdProveedorMaterial AS VARCHAR(150),
	@IdUsuario As VARCHAR(150)
AS
BEGIN

	IF @IdProveedorMaterial = '0'
	BEGIN

		INSERT INTO [dbo].[tblProveedorMaterial]
			   ([IdProveedor],[IdMaterial],[UnidadMedida],[Precio],[Porcentaje],[IdMoneda],[Activo],[FechaAlta],[IdUsuarioAlta],[FechaModificacion],[IdUsuarioModificacion])
		 VALUES
			   (@IdProveedor,@IdMaterial,@UnidadMedida,@Precio,0,@IdMoneda,1,GETDATE(),@IdUsuario,GETDATE(),@IdUsuario)
	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblProveedorMaterial]
		   SET [IdProveedor] = @IdProveedor
			  ,[UnidadMedida] = @UnidadMedida
			  ,[Precio] = @Precio
			  ,[IdMoneda] = @IdMoneda
			  ,[FechaModificacion] = GETDATE()
			  ,[IdUsuarioModificacion] = @IdUsuario
		 WHERE IdProveedorMaterial = @IdProveedorMaterial

	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProyectoRequerimiento]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertProyectoRequerimiento]
	@IdProyecto AS VARCHAR(150),
	@Requerimiento AS VARCHAR(MAX),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	

	INSERT INTO [dbo].[tblProyectoRequerimiento]
           ([IdProyecto],[Requerimiento],[FechaRequerimiento],[IdUsuario])
     VALUES
           (@IdProyecto,@Requerimiento,GETDATE(),@IdUsuario)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProyectoTask]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Marzo 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertProyectoTask]
	@IdProyecto AS VARCHAR(150),
	@Task As Varchar(150),
	@IdUsuario AS VARCHAR(150),
	@FechaInicio AS Date,
	@FechaFin As Date,
	@Comentarios AS Varchar(MAX),
	@IdUsuarioAlta AS VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblProyectoTasks]
           ([IdProyecto],[Task],[IdUsuario],[FechaInicio],[FechaFin],[Comentarios],[Estatus],[IdUsuarioAlta],[FechaAlta],[Porcentaje])
     VALUES
           (@IdProyecto,@Task,@IdUsuario,@FechaInicio,@FechaFin,@Comentarios,0,@IdUsuarioAlta,GETDATE(),0.00)


	DECLARE @IdTask AS VARCHAR(150)

	SET @IdTask = (SELECT TOP 1 IdTask FROM tblProyectoTasks ORDER BY FechaAlta DESC)

	IF @Comentarios != ''
	BEGIN
		EXEC sp_InsertTaskComentarios @IdTask, @IdUsuarioAlta, @Comentarios
	END

	UPDATE tblProyectos
	SET FechaInicio = (SELECT MIN(FechaInicio) FROM tblProyectoTasks WHERE IdProyecto = @IdProyecto), FechaFin = (SELECT MAX(FechaFin) FROM tblProyectoTasks WHERE IdProyecto = @IdProyecto)
	Where IdProyecto = @IdProyecto

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertReqDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Enero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertReqDet]
	@IdReqEnc AS VARCHAR(150),
	@Item AS INT,
	@Descripcion AS VARCHAR(100),
	@Cantidad AS INT,
	@Unidad AS VARCHAR(50),
	@NumParte As VARCHAR(50),
	@Marca As VARCHAR(100)
AS
BEGIN

	INSERT INTO [dbo].[tblReqDet]
           ([IdReqEnc],[Item],[Descripcion],[Cantidad],[Unidad],[NumeroParte],[Marca])
     VALUES
           (@IdReqEnc,@Item,@Descripcion,@Cantidad,@Unidad,@NumParte,@Marca)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertReqEnc]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Enero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertReqEnc]
	@IdProyecto As VARCHAR(150) = '6dfc857d-dfe1-4550-99bd-4f925bc33350',
	@Estatus AS INT = 1,
	@SolicitarCotizacion AS INT = 1,
	@Observaciones AS VARCHAR(MAX) = 'afsafafaf',
	@IdUsuarioElaboro AS VARCHAR(150) = 'f78542fb-849f-4fb3-a6f4-228c46c42f0a'
AS
BEGIN
	
	DECLARE @NoReq As VARCHAR(50), @FechaReq As VARCHAR(100)

	SET Language 'Spanish'

	SET @FechaReq = (Select Right('00' + Convert(NVarchar, DateName(day,GETDATE())), 2) + ' de ' + DateName(month,GETDATE()) + ' ' + DateName(YEAR,GETDATE()))

	set language 'us_english'

	EXEC sp_ObtieneFolioReq @Folio = @NoReq OUTPUT

	INSERT INTO [dbo].[tblReqEnc]
           ([NoReq],[IdProyecto],[Estatus],[SolicitarCotizacion],[Observaciones],[Fecha],[IdUsuarioElaboro],[FechaElaboracion])
     VALUES
           (@NoReq,@IdProyecto,@Estatus,@SolicitarCotizacion,@Observaciones,@FechaReq,@IdUsuarioElaboro,GETDATE())

	SELECT Top 1 IdReqEnc From tblReqEnc Order By FechaElaboracion Desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <19 de Febrero>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertRFQ]
	@IdRfq AS VARCHAR(150) = '0',
	@Folio AS VARCHAR(50) = 'B24800887',
	@Round AS VARCHAR(10) = '000',
	@Fecha AS DATETIME = '20200206',
	@FechaVencimiento AS DATETIME = '20200214',
	@IdCliente AS VARCHAR(150) = '00d2e3d3-36c9-4a3d-ab60-572eda78bdef',
	@FolioRQ AS VARCHAR(100) = 'RQ20033R01',
	@IdComprador AS VARCHAR(150) = '00d2e3d3-36c9-4a3d-ab60-572eda78bdef',
	@Estatus AS INT = 0,
	@IdUsuario AS VARCHAR(150) = 'f78542fb-849f-4fb3-a6f4-228c46c42f0a'
AS
BEGIN
	
	DECLARE @_Fecha As VARCHAR(100), @_FechaVencimiento AS VARCHAR(100)

	SET Language 'Spanish'

	SET @_Fecha = (Select Right('00' + Convert(NVarchar, DateName(day,@Fecha)), 2) + ' de ' + DateName(month,@Fecha) + ' ' + DateName(YEAR,@Fecha))

	SET @_FechaVencimiento = (Select Right('00' + Convert(NVarchar, DateName(day,@FechaVencimiento)), 2) + ' de ' + DateName(month,@FechaVencimiento) + ' ' + DateName(YEAR,@FechaVencimiento))

	set language 'us_english'

	IF @IdRfq = '0'
	BEGIN

		INSERT INTO [dbo].[tblRFQ]
			   ([Folio],[Round],[Fecha],[FechaVencimiento],[IdCliente],[FolioRQ],[IdComprador],[Estatus],[IdUsuarioAlta],[FechaAlta],[IdUsuarioModificar],[FechaModificacion])
		 VALUES
			   (@Folio,@Round,@_Fecha,@_FechaVencimiento,@IdCliente,@FolioRQ,@IdComprador,@Estatus,@IdUsuario,GETDATE(),@IdUsuario,GETDATE())
	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblRFQ]
		   SET [Folio] = @Folio
			  ,[Round] = @Round
			  ,[Fecha] = @_Fecha
			  ,[FechaVencimiento] = @_FechaVencimiento
			  ,[IdCliente] = @IdCliente
			  ,[FolioRQ] = @FolioRQ
			  ,[IdComprador] = @IdComprador
			  ,[Estatus] = @Estatus
			  ,[IdUsuarioModificar] = @IdUsuario
			  ,[FechaModificacion] = GETDATE()
		 WHERE IdRfq = @IdRfq
	END


END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSeguimientoRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 Noviembre 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertSeguimientoRFQ]
	@IdRfq AS VARCHAR(150),
	@Seguimiento AS VARCHAR(200),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	

	INSERT INTO [dbo].[tblRfqSeguimiento]
           ([IdRfqVentas],[Seguimiento],[FechaAlta],[IdUsuario])
     VALUES
           (@IdRfq,@Seguimiento,GETDATE(),@IdUsuario)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertTaskComentarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertTaskComentarios]
	@IdTask As VARCHAR(150),
	@IdUsuario As VARCHAR(150),
	@Comentario AS VARCHAR(MAX)
AS
BEGIN
	
	INSERT INTO [dbo].[tblProyectoTasksComentarios]
           ([IdTask],[IdUsuario],[Comentario],[Fecha])
     VALUES
           (@IdTask,@IdUsuario,@Comentario,GETDATE())

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertTaskImagen]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertTaskImagen]
	@IdTask AS VARCHAR(150),
	@Imagen AS VARCHAR(MAX),
	@Descripcion AS VARCHAR(100),
	@FileName AS VARCHAR(MAX),
	@FileExtension AS VARCHAR(10),
	@FileSize AS VARCHAR(150),
	@FileContentType As VARCHAR(100),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblProyectoTaskImagen]
           ([IdTask],[Imagen],[Descripcion],[FileName],[FileExtension],[FileSize],[FileContentType],[Fecha],[IdUsuario])
     VALUES
           (@IdTask,@Imagen,@Descripcion,@FileName,@FileExtension,@FileSize,@FileContentType,GETDATE(),@IdUsuario)

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertTimmingsExcel]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <28 de Julio del 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertTimmingsExcel]
	@NombreProyecto AS VARCHAR(150),
	@Actividad AS VARCHAR(200),
	@Tarea AS VARCHAR(200),
	@FechaIni AS VARCHAR(50),
	@FechaFin AS VARCHAR(50),
	@Asignado AS VARCHAR(100),
	@DiasTrans AS VARCHAR(50),
	@Avance AS VARCHAR(20),
	@Fila AS INT
AS
BEGIN

	DECLARE @avanceDecimal AS DECIMAL(20,3)

	IF @Fila = 8
	BEGIN
		DELETE tblTimmingProyecto WHERE NombreProyecto = @NombreProyecto
	END

	IF @Avance != 'N/A'
	BEGIN
		
		SET @avanceDecimal = CONVERT(DECIMAL(20,3), @Avance)

		INSERT INTO [dbo].[tblTimmingProyecto]
			([NombreProyecto],[Actividad],[Tarea],[FechaInicio],[FechaFin],[Persona],[DiasTrans],[Avance],[FechaAlta]) 
		Values 
			(@NombreProyecto,@Actividad,@Tarea,@FechaIni,@FechaFin,@Asignado,@DiasTrans,@avanceDecimal,GETDATE())

	END

	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateClientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Enero del 2017>
-- Description:	<Inserta o Actualiza los Clientes>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateClientes]
	@IdCliente AS VARCHAR(150),
	@RazonSocial As Varchar(250),
	@Contacto As Varchar(100),
	@Email AS Varchar(100),
	@Departamento AS Varchar(100),
	@TelefonoEmpresa AS Varchar(50),
	@Celular AS Varchar(50), 
	@UsuarioCliente AS Varchar(50),
	@ContrasenaCliente As Varchar(50),
	@MapaCoordenadas As Varchar(200),
	@Logotipo As Varchar(MAX),
	@Direccion AS Varchar(MAX),
	@IdUsuario As VARCHAR(150),
	@Activo As INT
AS
BEGIN
	
	IF @IdCliente = '0'
	BEGIN
		INSERT INTO SisaAdmin..tblClientes
			   (RazonSocial, Contacto, Email, Departamento, TelefonoEmpresa, Celular, UsuarioCliente, ContrasenaCliente, MapaCoordenadas, Logotipo, Direccion, IdUsuarioAlta, FechaAlta, IdUsuarioModificacion, FechaModificacion, Activo)
		VALUES (@RazonSocial, @Contacto, @Email, @Departamento, @TelefonoEmpresa, @Celular, @UsuarioCliente, @ContrasenaCliente, @MapaCoordenadas, @Logotipo, @Direccion, @IdUsuario, GETDATE(), @IdUsuario, GETDATE(), @Activo)
	END
	ELSE
	BEGIN
		UPDATE SisaAdmin..tblClientes
		SET RazonSocial = @RazonSocial, Contacto = @Contacto, Email = @Email, Departamento = @Departamento, TelefonoEmpresa = @TelefonoEmpresa, Celular = @Celular
			, UsuarioCliente = @UsuarioCliente, ContrasenaCliente = @ContrasenaCliente, MapaCoordenadas = @MapaCoordenadas
			, Logotipo = @Logotipo, Direccion = @Direccion, IdUsuarioModificacion = @IdUsuario, FechaModificacion = GETDATE(), Activo = @Activo
		WHERE IdCliente = @IdCliente
	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateEventoCalendario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateEventoCalendario]
	@IdCalendario AS VARCHAR(150),
	@Titulo AS VARCHAR(100),
	@Descripcion AS VARCHAR(MAX),
	@FechaInicio AS DATETIME,
	@FechaFinal AS DATETIME,
	@TodoDia AS BIT,
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	IF @IdCalendario = '0'
	BEGIN

		INSERT INTO [dbo].[tblCalendario]
			   ([Titulo],[Descripcion],[FechaInicio],[FechaFinal],[TodoDia],[IdUsuario],[FechaAlta],[FechaModificacion])
		 VALUES
			   (@Titulo,@Descripcion,@FechaInicio,@FechaFinal,@TodoDia,@IdUsuario,GETDATE(),GETDATE())

	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblCalendario]
		SET [Titulo] = @Titulo
			,[Descripcion] = @Descripcion
			,[FechaInicio] = @FechaInicio
			,[FechaFinal] = @FechaFinal
			,[TodoDia] = @TodoDia
			,[FechaModificacion] = GETDATE()
		WHERE IdCalendario = @IdCalendario

	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateHabilidad]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez >
-- Create date: <30 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateHabilidad]
	@IdHabilidad AS VARCHAR(150),
	@IdUsuario AS VARCHAR(150),
	@Habilidad AS VARCHAR(100),
	@Porcentaje AS DECIMAL(18,2),
	@Comentarios As VARCHAR(MAX)
AS
BEGIN
	
	IF @IdHabilidad = 0
	BEGIN

		INSERT INTO [dbo].[tblHabilidades]
			   ([IdUsuario],[Habilidad],[Porcentaje],[Comentarios])
		 VALUES
			   (@IdUsuario,@Habilidad,@Porcentaje,@Comentarios)

	END
	ELSE
	BEGIN
		UPDATE dbo.tblHabilidades
		SET Porcentaje = @Porcentaje, Comentarios = @Comentarios
		WHERE IdUsuario = @IdUsuario And IdHabilidad = @IdHabilidad
	END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateHorasHombre]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <30 de Julio del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateHorasHombre]
	@IdProyecto AS VARCHAR(150),
	@IdHorasHombre AS VARCHAR(150),
	@IdUsuario AS VARCHAR(150),
	@Lunes AS INT,
	@Martes AS INT,
	@Miercoles AS INT,
	@Jueves AS INT,
	@Viernes AS INT,
	@Sabado AS INT,
	@Domingo AS INT,
	@Activo AS INT
AS
BEGIN
	
	IF @IdHorasHombre = '0'
	BEGIN
		INSERT INTO [dbo].[tblHorasHombre]
			([IdUsuario],[Lunes],[Martes],[Miercoles],[Jueves],[Viernes],[Sabado],[Domingo],[Activo])
		VALUES
			(@IdUsuario,@Lunes,@Martes,@Miercoles,@Jueves,@Viernes,@Sabado,@Domingo,@Activo)
	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblHorasHombre]
		   SET [Lunes] = @Lunes
			  ,[Martes] = @Martes
			  ,[Miercoles] = @Miercoles
			  ,[Jueves] = @Jueves
			  ,[Viernes] = @Viernes
			  ,[Sabado] = @Sabado
			  ,[Domingo] = @Domingo
			  ,[Activo] = @Activo
		 WHERE [IdHorasHombre] = @IdHorasHombre AND [IdProyecto] = @IdProyecto

	END



END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateListaPendientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateListaPendientes]
	@IdListaPendientes AS VARCHAR(150),
	@IdUsuario As VARCHAR(150),
	@Pendiente As VARCHAR(200),
	@Completado As INT
AS
BEGIN
	
	IF @IdListaPendientes = '0'
	BEGIN
		INSERT INTO [dbo].[tblListaPendientes]
			   ([IdUsuario],[Pendiente],[Completado],[FechaAlta],[FechaCompletado])
		 VALUES
			   (@IdUsuario,@Pendiente,@Completado,GETDATE(),GETDATE())
	END
	ELSE
	BEGIN
		UPDATE dbo.tblListaPendientes
		SET Completado = @Completado, FechaCompletado = GETDATE()
		WHERE IdListaPendientes = @IdListaPendientes
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateMaquinado]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateMaquinado]
	@IdMaquina As VARCHAR(150),
	@IdProyecto AS VARCHAR(150),
	@NombreProyecto AS VARCHAR(100),
	@NoParte AS VARCHAR(100),
	@FechaOC AS DATE,
	@FechaEntrega As DATE,
	@IdDiseno As VARCHAR(150),
	@IdMasterCam AS VARCHAR(150),
	@Estatus AS INT,
	@IdEncargadoProyecto AS VARCHAR(150),
	@IdDisenador As VARCHAR(150),
	@IdQuienHizo AS VARCHAR(150),
	@Observaciones AS VARCHAR(MAX),
	@HorasMaquina AS INT,
	@CantidadPzas AS INT
AS
BEGIN
	
	IF @IdMaquina = '0'
	BEGIN
		INSERT INTO [dbo].[tblMatrizMecanico]
			   ([IdProyecto],[NombreProyecto],[NoParte],[FechaOC],[FechaEntrega],[Estatus],[IdEncargadoProyecto]
			   ,[IdDisenador],[IdQuienHizo],[Observaciones],[HorasMaquina],[CantidadPzas],[FechaAlta])
		 VALUES
			   (@IdProyecto,@NombreProyecto,@NoParte,@FechaOC,@FechaEntrega,@Estatus,@IdEncargadoProyecto
			   ,@IdDisenador,@IdQuienHizo,@Observaciones,@HorasMaquina,@CantidadPzas,GETDATE())
	END
	


END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateMateriales]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <16 de Febrero del 2016>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateMateriales]
	@IdMaterial AS VARCHAR(150),
	@Codigo AS VARCHAR(50),
	@Descripcion AS VARCHAR(200),
	@IdCategoria AS VARCHAR(150),
	@Buscador As VARCHAR(150),
	@Activo AS INT,
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	
	IF @IdMaterial = '0'
	BEGIN
		
		SET @IdMaterial = NEWID()

		INSERT INTO [dbo].[tblMateriales]
			   ([IdMaterial],[Codigo],[Descripcion],[IdCategoria],[Buscador],[Activo],[FechaAlta],[IdUsuarioAlta],[FechaModificacion],[IdUsuarioModifica])
		 VALUES
			   (@IdMaterial,@Codigo,@Descripcion,@IdCategoria,@Buscador,@Activo,GETDATE(), @IdUsuario,GETDATE(),@IdUsuario)

	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblMateriales]
		   SET [Codigo] = @Codigo
			  ,[Descripcion] = @Descripcion
			  ,[IdCategoria] = @IdCategoria
			  ,[Buscador] = @Buscador
			  ,[Activo] = @Activo
			  ,[FechaModificacion] = GETDATE()
			  ,[IdUsuarioModifica] = @IdUsuario
		 WHERE IdMaterial = @IdMaterial

	END

	SELECT @IdMaterial AS IdMaterial
END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdatePermisos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdatePermisos]
	@IdUsuario As VARCHAR(150),
	@IdMenu AS INT,
	@Visible AS INT
AS
BEGIN
	
	DECLARE @intExiste AS INT

	SET @intExiste = (SELECT Count(*) From tblPermisos WHERE IdMenu = @IdMenu And IdUsuario = @IdUsuario)

	IF @intExiste = 0
	BEGIN
		INSERT INTO [dbo].[tblPermisos]
			   ([IdUsuario],[IdMenu],[Visible])
		 VALUES
			   (@IdUsuario,@IdMenu,@Visible)
	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblPermisos]
		   SET [Visible] = @Visible
		 WHERE IdMenu = @IdMenu And IdUsuario = @IdUsuario

	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateProveedores]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Febrero del 2017>
-- Description:	<Inserta o Actualiza los Proveedores>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateProveedores]
	@IdProveedor AS VARCHAR(150),
	@Proveedor As Varchar(300),
	@TelefonoEmpresa AS Varchar(50),
	@Giro AS Varchar(150),
	@NombreComercial AS Varchar(150),
	@Comentarios As Varchar(MAX),
	@Logotipo As Varchar(MAX),
	@IdUsuario As VARCHAR(150),
	@Activo As INT
AS
BEGIN
	
	IF @IdProveedor = '0'
	BEGIN

		SET @IdProveedor = NEWID()

		INSERT INTO [dbo].[tblProveedores]
			   ([IdProveedor],[Proveedor],[Contacto],[Domicilio],[Coordenadas],[Email],[Telefono1],[Telefono2],[Giro],[Comentarios],[Imagen],[FechaAlta],[IdUsuarioAlta],[FechaModificacion],[IdUsuarioModifica],[Activo],[NombreComercial])
		 VALUES
			   (@IdProveedor,@Proveedor,'','','','',@TelefonoEmpresa,'',@Giro,@Comentarios,@Logotipo,GETDATE(),@IdUsuario,GETDATE(),@IdUsuario,@Activo,@NombreComercial)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[tblProveedores]
		   SET [Proveedor] = @Proveedor,[Telefono1] = @TelefonoEmpresa,[Giro] = @Giro,[Comentarios] = @Comentarios,[Imagen] = @Logotipo,[FechaModificacion] = GETDATE()
			  ,[IdUsuarioModifica] = @IdUsuario,[Activo] = @Activo,[NombreComercial] = @NombreComercial
		 WHERE IdProveedor = @IdProveedor

	END

	SELECT @IdProveedor As IdProveedor

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateProyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Febrero 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateProyectos]
	@IdProyecto VARCHAR(150) = '0',
	@NombreProyecto VARCHAR(100) = 'CPU 20 Perfilometro',
	@Descripcion VARCHAR(MAX) = 'Instalacion de sistema de medicion para soldadura laser en techos de unidades',
	@IdLider VARCHAR(150) = '7',
	@IdCliente VARCHAR(150) = '4',
	@Estatus INT = 0,
	@FechaInicio DATE = '2017-05-19',
	@FechaFin DATE = '2017-06-24',
	@IdUsuario VARCHAR(150) = '2',
	@IdCotizacion VARCHAR(150) = newid,
	@CostoCotizacion AS DECIMAL(18, 2)
AS
BEGIN
	
	IF @IdProyecto = '0'
	BEGIN
		DECLARE @FolioProyecto AS VARCHAR(50)

		SET @FolioProyecto = (SELECT REPLACE(NoCotizacion, 'COT', 'SIS') FROM tblCotizacionNew WHERE IdCotizacion = @IdCotizacion)

		INSERT INTO [dbo].[tblProyectos]
				   ([FolioProyecto],[NombreProyecto],[Descripcion],[IdLider],[IdCliente],[Estatus],[FechaInicio],[FechaFin],[IdUsuarioAlta],[FechaAlta],[IdUsuarioModificacion],[FechaModificacion],[Activo],[IdCotizacion],[CostoCotizacion])
			 VALUES
				   (@FolioProyecto,@NombreProyecto,@Descripcion,@IdLider,@IdCliente,@Estatus,@FechaInicio,@FechaFin,@IdUsuario,GETDATE(),@IdUsuario, GETDATE(),1, @IdCotizacion,(@CostoCotizacion * 1.16))
		
		UPDATE tblCotizacionNew
		SET Estatus = 'GANADO'
		WHERe IdCotizacion = @IdCotizacion

	END
	ELSE
	BEGIN

		UPDATE [dbo].[tblProyectos]
		   SET [NombreProyecto] = @NombreProyecto,[Descripcion] = @Descripcion,[IdLider] = @IdLider,[IdCliente] = @IdCliente
			  ,[Estatus] = @Estatus,[FechaInicio] = @FechaInicio,[FechaFin] = @FechaFin,[IdUsuarioModificacion] = @IdUsuario
			  ,[FechaModificacion] = GETDATE(),[Activo] = 1
		 WHERE IdProyecto = @IdProyecto

	END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateRFQVentas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 11 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateRFQVentas]
	@IdRFQ AS VARCHAR(150),
	@FolioRfq AS VARCHAR(50),
	@Descripcion AS VARCHAR(200),
	@IdUsuarioVendedor AS VARCHAR(150),
	@IdUsuarioCoordinador As VARCHAR(150),
	@Empresa AS VARCHAR(100),
	@Contacto AS VARCHAR(100),
	@FechaRFQ AS DATE,
	@FechaEntrega AS DATE,
	@Enviado As INT,
	@Estatus AS INT,
	@Seguimiento AS VARCHAR(200),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	IF @IdRFQ = '0'
	BEGIN
		DECLARE @NoRFQ AS VARCHAR(50)

		EXEC sp_ObtieneFolioRFQ @Folio = @NoRFQ OUTPUT

		INSERT INTO [dbo].[tblRfqVentas]
			   ([FolioRfq],[Descripcion],[IdUsuarioVendedor],[IdUsuarioCoordinador],[Empresa],[Contacto],[FechaRfq],[FechaEntrega],[Enviado],[Estatus],[Seguimiento],[FechaAlta],[IdUsuarioAlta])
		VALUES
			   (@NoRFQ,@Descripcion,@IdUsuarioVendedor,@IdUsuarioCoordinador,@Empresa,@Contacto,@FechaRFQ,@FechaEntrega,@Enviado,@Estatus,@Seguimiento,GETDATE(),@IdUsuario)
	END
	ELSE
	BEGIN
		
		UPDATE [dbo].[tblRfqVentas]
		   SET [Descripcion] = @Descripcion
			  ,[IdUsuarioVendedor] = @IdUsuarioVendedor
			  ,[IdUsuarioCoordinador] = @IdUsuarioCoordinador
			  ,[Empresa] = @Empresa
			  ,[Contacto] = @Contacto
			  ,[FechaRfq] = @FechaRFQ
			  ,[FechaEntrega] = @FechaEntrega
			  ,[Seguimiento] = @Seguimiento
		 WHERE [IdRfqVentas] = @IdRFQ

	END

	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateUsuarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <20 de Enero del 2017>
-- Description:	<Inserta o Actualiza los usuarios>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUpdateUsuarios]
	@IdUsuario AS varchar(150),
	@NombreCompleto As Varchar(100),
	@Usuario As Varchar(100),
	@Contrasena AS Varchar(50),
	@Foto AS Varchar(MAX),
	@Permisos AS INT, 
	@Puesto AS Varchar(100),
	@Telefono As Varchar(50),
	@Correo As Varchar(100),
	@IdUsuarioActualiza As varchar(150),
	@Activo AS INT,
	@EsLider AS INT
AS
BEGIN
	
	IF @IdUsuario = '0'
	BEGIN
		INSERT INTO SisaAdmin..tblUsuarios
			   (NombreCompleto, Usuario, Contrasena, Foto, Permisos, Puesto, Telefono, Correo, FechaAlta, IdUsuarioModificacion, FechaModificacion, Activo, EsLiderProyecto)
		VALUES (@NombreCompleto, @Usuario, @Contrasena, @Foto, @Permisos, @Puesto, @Telefono, @Correo, GETDATE(), @IdUsuarioActualiza, GETDATE(), @Activo, @EsLider)
	END
	ELSE
	BEGIN
		UPDATE SisaAdmin..tblUsuarios
		SET NombreCompleto = @NombreCompleto, Usuario = @Usuario, Contrasena = @Contrasena, @Foto = @Foto, Permisos = @Permisos, Puesto = @Puesto
			, Telefono = @Telefono, Correo = @Correo, IdUsuarioModificacion = @IdUsuarioActualiza, FechaModificacion = GETDATE(), Activo = @Activo
			, EsLiderProyecto = @EsLider
		WHERE IdUsuario = @IdUsuario
	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUsuarioHorasHombre]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <01 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertUsuarioHorasHombre]
	@IdProyecto AS VARCHAR(150),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	INSERT INTO [dbo].[tblHorasHombre]
			([IdProyecto],[IdUsuario],[Lunes],[Martes],[Miercoles],[Jueves],[Viernes],[Sabado],[Domingo],[Activo])
		VALUES
			(@IdProyecto,@IdUsuario,0,0,0,0,0,0,0,0)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertViaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertViaticos]
	@IdProyecto As VARCHAR(150),
	@CantEntregada As DECIMAL(18,2),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	DECLARE @existe As INT

	SET @existe = (SELECT COUNT(*) FROM tblProyectos WHERE IdProyecto = @IdProyecto)

	IF @existe = 0
	BEGIN
		SET @IdProyecto = NULL
	END

	INSERT INTO [dbo].[tblViaticos]
           ([IdProyecto],[CantEntregada],[CantGastada],[IdUsuario],[Estatus],[FechaAlta])
     VALUES
           (@IdProyecto,@CantEntregada,0,@IdUsuario,0,GETDATE())

	SELECT @@IDENTITY As IdViaticos

END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertViaticosDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertViaticosDet]
	@IdViaticos AS VARCHAR(150),
	@FechaViaticos AS DATE,
	@Gasolina As DECIMAL(18,2),
	@Desayuno As DECIMAL(18,2),
	@Comida As DECIMAL(18,2),
	@Cena As DECIMAL(18,2),
	@Casetas As DECIMAL(18,2),
	@Hotel As DECIMAL(18,2),
	@Transporte As DECIMAL(18,2),
	@Otros As DECIMAL(18,2),
	@Descripcion AS VARCHAR(250),
	@TotalGastado AS DECIMAL(18,2)
AS
BEGIN
	
	DECLARE @IdViaticosDet AS INT

	INSERT INTO [dbo].[tblViaticosDet]
           ([IdViaticos],[FechaViaticos],[Gasolina],[Desayuno],[Comida],[Cena],[Casetas],[Hotel],[Transporte],[Otros],[Descripcion])
     VALUES
           (@IdViaticos,@FechaViaticos,@Gasolina,@Desayuno,@Comida,@Cena,@Casetas,@Hotel,@Transporte,@Otros,@Descripcion)

	SET @IdViaticosDet = (SELECT @@IDENTITY)


	IF (SELECT CantGastada FROM tblViaticos WHERE ID = @IdViaticos) = 0.00
	BEGIN
		UPDATE tblViaticos
		SET CantGastada = @TotalGastado, FechaCaptura = GETDATE(), Estatus = 1
		WHERE ID = @IdViaticos
	END
	

	SELECT @IdViaticosDet AS IdViaticosDet

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadCitasPendientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <05 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadCitasPendientes]
	@IdUsuario AS VARCHAR(150),
	@Opcion AS INT = 0
AS
BEGIN
	
	IF @Opcion = 0
	BEGIN
		SELECT *, DateName(month, FechaInicio) AS Mes, Right('00' + Convert(NVarchar, DAY(FechaInicio)), 2) AS Dia
			, Substring(Convert(Nvarchar, FechaInicio, 8), 1, 5) + ' - ' + Substring(Convert(Nvarchar, FechaFinal, 8), 1, 5) As Hora
		FROM tblCalendario
		WHERe IdUsuario = @IdUsuario AND Convert(NVarchar, GETDATE(), 112) Between Convert(NVarchar, FechaInicio, 112) AND Convert(Nvarchar, FechaFinal, 112)
	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadHabilidadesUsuario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <01 de Abril del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadHabilidadesUsuario]
	@IdUsuario AS VARCHAR(150) = 'F78542FB-849F-4FB3-A6F4-228C46C42F0A'
AS
BEGIN
	
	SELECT *, Convert(INT, Porcentaje) As Porciento
	FROM tblHabilidades
	WHERE IdUsuario = @IdUsuario

END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadHorasHombre]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <01 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadHorasHombre]
	@IdProyecto AS VARCHAR(150),
	@Current AS INT
AS
BEGIN
	
	IF @Current = 0
	BEGIN

		SELECT A.*, B.FolioProyecto, B.NombreProyecto, B.Descripcion, C.NombreCompleto
		FROM tblHorasHombre A
		INNER JOIN dbo.tblProyectos B
		ON B.IdProyecto = A.IdProyecto
		INNER JOIN dbo.tblUsuarios C
		ON C.IdUsuario = A.IdUsuario
		WHERE A.Activo = 0 And A.IdProyecto = @IdProyecto

	END
	ELSE
	BEGIN

		SELECT A.IdHorasHombre, A.IdProyecto, A.IdUsuario
			, Sum(A.Lunes) AS Lunes, Sum(A.Martes) AS Martes, Sum(A.Miercoles) AS Miercoles, Sum(A.Jueves) AS Jueves, Sum(A.Viernes) AS Viernes, Sum(A.Sabado) AS Sabado, Sum(A.Domingo) AS Domingo, Sum(A.Total) AS Total
			, B.FolioProyecto, B.NombreProyecto, B.Descripcion, C.NombreCompleto
		FROM tblHorasHombre A
		INNER JOIN dbo.tblProyectos B
		ON B.IdProyecto = A.IdProyecto
		INNER JOIN dbo.tblUsuarios C
		ON C.IdUsuario = A.IdUsuario
		WHERE A.Activo = 1 And A.IdProyecto = @IdProyecto
		Group By A.IdHorasHombre, A.IdProyecto, A.IdUsuario, B.FolioProyecto, B.NombreProyecto, B.Descripcion, C.NombreCompleto

	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadListaPendientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadListaPendientes]
	@IdUsuario As VARCHAR(150) = 'F78542FB-849F-4FB3-A6F4-228C46C42F0A'
AS
BEGIN
	
	DECLARE @Administrador As INT

	IF @IdUsuario = ''
	BEGIN
		SELECT A.*, B.NombreCompleto
		FROM tblListaPendientes A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE Completado = 0
		ORDER By A.IdUsuario, A.IdListaPendientes
	END
	ELSE
	BEGIN
		SET @Administrador = (Select Permisos From tblUsuarios Where IdUsuario = @IdUsuario)

		IF @Administrador = 1
		BEGIN
			SELECT A.*, B.NombreCompleto
			FROM tblListaPendientes A
			INNER JOIN dbo.tblUsuarios B
			ON B.IdUsuario = A.IdUsuario
			ORDER By A.IdUsuario, A.IdListaPendientes
		END
		ELSE
		BEGIN
			SELECT *
			FROM tblListaPendientes
			WHERE IdUsuario = @IdUsuario
		END
	END

	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadMateriales]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadMateriales]
	
AS
BEGIN
	
	SELECT IdMaterial, Codigo, Descripcion, A.Buscador, B.Usuario, A.Activo, A.FechaAlta, A.FechaModificacion, C.Categoria
	FROM tblMateriales A
	INNER JOIN dbo.tblUsuarios B
	ON B.IdUsuario = A.IdUsuarioModifica
	INNER JOIN dbo.tblCategoria C
	ON C.IdCategoria = A.IdCategoria
	WHERE A.Activo = 1

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadMaterialImagenes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <05 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadMaterialImagenes]
	@IdMaterial AS VARCHAR(150)
AS
BEGIN

	SELECT [FileName], [FileExtension], [FileSize], [FileContentType], Imagen
	FROM tblMaterialImagen
	WHERE IdMaterial = @IdMaterial
	
	--SELECT IdTaskImagen, IdTask, cast('' as xml).value(
 --       'xs:base64Binary(sql:column("Imagen"))', 'varchar(max)'
 --   ) As Imagen, Descripcion, [FileName], FileExtension, FileSize, FileContentType, Fecha, IdUsuario
	--FROM tblProyectoTaskImagen
	--WHERE IdTask = @IdTask

END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <05 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadOrdenCompra]
	
AS
BEGIN
	
	SELECT *
	FROM (
		SELECT A.IdOrdenCompra, A.Folio, B.Proveedor, B.NombreComercial, A.ReferenciaCot, C.FolioProyecto + ' - ' + C.NombreProyecto AS NombreProyecto, D.NombreCompleto As PedidoPor
			, A.SubTotal, A.Iva, A.Total, A.Enviada, A.Estatus, A.FechaModificacion, E.NombreCompleto As UsuarioModifico, F.Moneda, B.Email, A.FechaCreacion, G.NoFactura, G.Estatus As EstatusFactura, a.idSucursal, 
			(select CiudadSucursal from tblSucursales where idSucursa  = a.idSucursal) as CiudadSucursal
		FROM tblOrdenCompra A
		Inner Join dbo.tblProveedores B
		On B.IdProveedor = A.IdProveedor
		Inner Join dbo.tblProyectos C
		On C.IdProyecto = A.IdProyecto
		Inner Join dbo.tblUsuarios D
		On D.IdUsuario = A.IdUsuario
		Inner Join dbo.tblUsuarios E
		On E.IdUsuario = A.IdUsuarioModificacion
		Inner Join dbo.tblMonedas F
		On F.IdMoneda = A.IdMoneda
		Left Outer Join dbo.tblControlFacturas G
		ON G.OrdenCompra = A.Folio And G.Estatus != 2
		

		UNION ALL

		SELECT A.IdOrdenCompra, A.Folio, B.Proveedor, B.NombreComercial, A.ReferenciaCot, UPPER(A.IdProyecto) AS NombreProyecto, D.NombreCompleto As PedidoPor
			, A.SubTotal, A.Iva, A.Total, A.Enviada, A.Estatus, A.FechaModificacion, E.NombreCompleto As UsuarioModifico, F.Moneda, B.Email, A.FechaCreacion, G.NoFactura, G.Estatus As EstatusFactura, a.idSucursal, 
			(select CiudadSucursal from tblSucursales where idSucursa  = a.idSucursal) as CiudadSucursal
		FROM tblOrdenCompraInsumos A
		Inner Join dbo.tblProveedores B
		On B.IdProveedor = A.IdProveedor
		Inner Join dbo.tblUsuarios D
		On D.IdUsuario = A.IdUsuario
		Inner Join dbo.tblUsuarios E
		On E.IdUsuario = A.IdUsuarioModificacion
		Inner Join dbo.tblMonedas F
		On F.IdMoneda = A.IdMoneda
		Left Outer Join dbo.tblControlFacturas G
		ON G.OrdenCompra = A.Folio And G.Estatus != 2
		
	) A
	ORDER BY FechaCreacion DESC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadOrdenCompraDetalle]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <07 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadOrdenCompraDetalle]
	@IdOrdenCompra As VARCHAR(150) = '9f33cccc-66fe-4dc6-a032-ff857135607d',
	@Opcion AS INT = 1
AS
BEGIN
	
	IF @Opcion = 1
	BEGIN

		SELECT [IdOrdenCompra],[Folio],[IdProveedor],[ReferenciaCot],Convert(NVarchar(150), Lower([IdProyecto])) AS IdProyecto,[IdUsuario],[SubTotal],[Iva],[Total],[Estatus],[Enviada],[EnviarA],[IdMoneda],[CondicionPago]
			,[Comentarios],[FechaCreacion],[IdUsuarioCreacion],[FechaModificacion],[IdUsuarioModificacion],[IdUsuarioAprobo],[Descuento],[TipoOC]
		FROM dbo.tblOrdenCompra 
		WHERE IdOrdenCompra = @IdOrdenCompra

		UNION ALL

		SELECT [IdOrdenCompra],[Folio],[IdProveedor],[ReferenciaCot],UPPER([IdProyecto]) AS IdProyecto,[IdUsuario],[SubTotal],[Iva],[Total],[Estatus],[Enviada],[EnviarA],[IdMoneda],[CondicionPago]
			,[Comentarios],[FechaCreacion],[IdUsuarioCreacion],[FechaModificacion],[IdUsuarioModificacion],[IdUsuarioAprobo],[Descuento],'' AS TipoOC
		FROM dbo.tblOrdenCompraInsumos
		WHERE IdOrdenCompra = @IdOrdenCompra
	END

	IF @Opcion = 2
	BEGIN
		SELECT *
		FROM dbo.tblOrdenCompraDet
		WHERE IdOrdenCompra = @IdOrdenCompra
		ORDER BY Item
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadOrdenTrabajo]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <12 de Mayo 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadOrdenTrabajo]
	
AS
BEGIN
	
	SELECT IdOrdenTrabajo, FolioOrden, A.IdProyecto, B.NombreProyecto, C.NombreCompleto, A.FechaPruebas, A.FechaEntrega, A.FechaAlta
	FROM dbo.tblOrdenTrabajo A
	INNER JOIN dbo.tblProyectos B
	ON B.IdProyecto = A.IdProyecto
	INNER JOIN dbo.tblUsuarios C
	ON C.IdUsuario = A.IdUsuarioCoordinador

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadProveedorMaterial]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <17 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadProveedorMaterial]
	@IdMaterial AS VARCHAR(150)
AS
BEGIN
	
	SELECT A.IdProveedorMaterial, A.IdProveedor, B.Proveedor, B.Contacto, B.Email, B.Telefono1, A.UnidadMedida, A.Precio, C.Abreviatura, A.IdMoneda, D.Codigo
		, D.Descripcion, A.FechaModificacion, E.Usuario, B.NombreComercial
	FROM tblProveedorMaterial A
	INNER JOIN tblProveedores B
	ON B.IdProveedor = A.IdProveedor
	Inner Join tblMonedas C
	On C.IdMoneda = A.IdMoneda
	Inner Join tblMateriales D
	On D.IdMaterial = A.IdMaterial
	Inner Join dbo.tblUsuarios E
	ON E.IdUsuario = A.IdUsuarioModificacion
	WHERE A.IdMaterial = @IdMaterial And A.Activo = 1

END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadProyectoGastos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadProyectoGastos]
	@IdProyecto AS VARCHAR(150)
AS
BEGIN
	
	SELECT ROW_NUMBER() OVER(Order By IdGasto) As ID, NoFactura, TipoGasto, Descripcion, Importe, IVA, Total, Convert(NVarchar, Convert(Date, FechaGasto)) AS FechaGasto
	FROM [SisaAdmin].[dbo].[tblGastos]
	WHERE IdProyecto = @IdProyecto

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadProyectoRequerimiento]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadProyectoRequerimiento]
	@IdProyecto AS VARCHAR(150)
AS
BEGIN
	
	SELECT ROW_NUMBER() OVER(ORDER BY IdRequerimiento) As ID, Requerimiento
	FROM tblProyectoRequerimiento
	WHERE IdProyecto = @IdProyecto

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadProyectosAdmin]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <21 de Junio del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadProyectosAdmin]
	
AS
BEGIN
	
	--SELECT ROW_NUMBER() OVER(Order by A.FechaAlta DESC) As ID, A.FolioProyecto, NombreProyecto, UPPER(IsNull(C.Contacto, 'N/A')) As ContactoCliente, UPPER(IsNull(C.RazonSocial, 'N/A')) As Cliente, UPPER(B.NombreCompleto) AS LiderProyecto, Convert(NVarchar, FechaInicio, 106) As FechaInicio
	--		, Convert(NVarchar, FechaFin, 106) As FechaFin, IsNull(NombreOC, '') AS OC, ArchivoOC, IsNull(NombreCL, '') AS CL, ArchivoCL, IsNull(NombreFC, '') AS FC, ArchivoFC, A.IdProyecto As IdProyecto, A.Estatus
	--		, IsNull(D.Total, 0) As Facturado, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 100 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion) * 100) END) AS Porcentaje, IsNull(D.Estatus, 0) AS EstatusFactura
	--		/*, CASE WHEN A.FechaTermino Is Null THEN CASE WHEN DATEDIFF(day, FechaInicio, GETDATE()) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, GETDATE()) END ELSE CASE WHEN DATEDIFF(day, FechaInicio, FechaTermino) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, FechaTermino) END END As Dias, */
	--FROM tblProyectos A
	--Inner Join dbo.tblUsuarios B
	--ON B.IdUsuario = A.IdLider
	--Left Outer Join dbo.tblClientes C
	--On C.IdCliente = A.IdCliente
	--Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total, Estatus FROM dbo.tblFacturasEmitidas Group By IdProyecto, Estatus) D
	--ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	--WHERE A.Activo = 1 
	--ORDER BY A.Estatus, A.FechaAlta Desc

	SELECT ROW_NUMBER() OVER(Order by A.FechaAlta DESC) As ID, A.FolioProyecto, NombreProyecto, C.NombreContacto As ContactoCliente, F.RazonSocial As Cliente, UPPER(B.NombreCompleto) AS LiderProyecto, FechaInicio
			, FechaFin, IsNull(NombreOC, '') AS OC, ISnull(ArchivoOC,'') AS ArchivoOC, IsNull(NombreCL, '') AS CL, Isnull(ArchivoCL, '') As ArchivoCL, IsNull(NombreFC, '') AS FC, '' As ArchivoFC, A.IdProyecto As IdProyecto, A.Estatus
			, IsNull(D.Total, 0) As Facturado
			, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 100 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion) * 100) END) AS Porcentaje
			, IsNull(E.Total, 0) As Pagado
			, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(E.Total, 0)) = 0 THEN 100 ELSE ((IsNull(E.Total, 0) / A.CostoCotizacion) * 100) END) AS PorcentajePagado
			, ISNULL(A.EstatusDesc, 'PENDIENTE') AS EstatusDesc, B.IdUsuario, A.IdUsuarioAlta
			--, IsNull(D.Estatus, 0) AS EstatusFactura
			/*, CASE WHEN A.FechaTermino Is Null THEN CASE WHEN DATEDIFF(day, FechaInicio, GETDATE()) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, GETDATE()) END ELSE CASE WHEN DATEDIFF(day, FechaInicio, FechaTermino) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, FechaTermino) END END As Dias, */
			,A.CostoMaterialProyectado, A.CostoMOProyectado, A.CostoMEProyectado, A.FechaAlta
	FROM tblProyectos A
	Inner Join dbo.tblUsuarios B
	ON B.IdUsuario = A.IdLider
	Left Outer Join dbo.tblClienteContacto C
	On C.idContacto = A.IdCliente
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas Where Estatus !=2 Group By IdProyecto) D
	ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) E
	ON E.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	left outer join dbo.tblEmpresas F 
	ON c.idEmpresa = F.idEmpresa
	WHERE A.Activo = 1 
	ORDER BY A.Estatus, A.FechaAlta Desc

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadProyectoTasks]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Marzo 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadProyectoTasks]
	@IdProyecto AS VARCHAR(150) = '2d1ec4c6-c13e-49e3-b291-726d4ee8d343'
AS
BEGIN
	
	Select A.IdProyecto, A.NombreProyecto, IsNull(B.TotalTask, 0) As TotalTask, IsNull(C.FinalizadosTask, 0) As FinalizadosTask
		, Case When IsNull(B.TotalTask, 0) = 0 THEN 0.00 ELSE Convert(Decimal(20,2), ((Convert(Decimal(20,2), IsNull(C.FinalizadosTask, 0)) / Convert(Decimal(20,2), B.TotalTask)) * 100)) END As Porcentaje
	From tblProyectos A
	Left Outer Join (Select IdProyecto, Count(*) AS TotalTask
				From tblProyectoTasks
				WHERE IdProyecto = @IdProyecto And Estatus != 3
				Group By IdProyecto) B
	ON B.IdProyecto = A.IdProyecto
	Left Outer Join (Select IdProyecto, Count(*) AS FinalizadosTask
				From tblProyectoTasks
				WHERE IdProyecto = @IdProyecto And Estatus = 2
				Group By IdProyecto) C
	ON C.IdProyecto = A.IdProyecto 
	Where A.IdProyecto = @IdProyecto

END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Febrero 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadRFQ]
	
AS
BEGIN
	
	SELECT IdRfq, Folio AS RFQ, FolioRQ AS RQ, FechaVencimiento, C.Contacto AS Comprador, B.Contacto AS Requisitor, B.RazonSocial AS Empresa, '' AS FolioCotizacion
	FROM dbo.tblRFQ A
	INNER JOIN dbo.tblClientes B
	ON B.IdCliente = A.IdCliente
	INNER JOIN dbo.tblClientes C
	ON C.IdCliente = A.IdCliente

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadSumaColumnasViaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadSumaColumnasViaticos]
	@IdViaticos AS VARCHAR(150)
AS
BEGIN
	
	SELECT Sum(Gasolina) AS Gasolina, Sum(Desayuno) AS Desayuno, Sum(Comida) AS Comida, Sum(Cena) AS Cena, Sum(Casetas) AS Casetas, Sum(Hotel) AS Hotel, Sum(Transporte) AS Transporte, Sum(Otros) AS Otros
	FROM tblViaticosDet
	WHERE IdViaticos = @IdViaticos

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTaskComentarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadTaskComentarios]
	@IdTask AS VARCHAR(150)
AS
BEGIN
	
	SELECT ROW_NUMBER() Over(Order By IdTaskComentario) As ID, Comentario, B.NombreCompleto, Convert(NVarchar, A.Fecha) AS Fecha
	FROM tblProyectoTasksComentarios A
	Inner Join tblUsuarios B
	On B.IdUsuario = A.IdUsuario
	Where IdTask = @IdTask

END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTaskImagenes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadTaskImagenes]
	@IdTask AS VARCHAR(150)
AS
BEGIN

	SELECT *
	FROM tblProyectoTaskImagen
	WHERE IdTask = @IdTask
	
	--SELECT IdTaskImagen, IdTask, cast('' as xml).value(
 --       'xs:base64Binary(sql:column("Imagen"))', 'varchar(max)'
 --   ) As Imagen, Descripcion, [FileName], FileExtension, FileSize, FileContentType, Fecha, IdUsuario
	--FROM tblProyectoTaskImagen
	--WHERE IdTask = @IdTask

END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTimming]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Julio 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadTimming]
	
AS
BEGIN

	SELECT CONVERT(NVARCHAR, ROW_NUMBER() OVER(ORDER BY Convert(DATETIME, FechaAlta) )) AS id, parent, [name], Convert(NVARCHAR, actualStart) AS actualStart
		, Convert(NVARCHAR, actualEnd) AS actualEnd, progressValue
	INTO ##PROYECTOS
	FROM (
		SELECT '0' AS parent, NombreProyecto AS [name], MIN(CONVERT(DATE, FechaInicio)) AS actualStart
			, MAX(CONVERT(DATE, FechaFin)) AS actualEnd, AVG(Avance) AS progressValue, CONVERT(DATE, FechaAlta) AS FechaAlta
		FROM dbo.tblTimmingProyecto
		GROUP BY NombreProyecto, CONVERT(DATE, FechaAlta)
	) A
	
	SELECT (SELECT id FROM ##PROYECTOS WHERE [name] = NombreProyecto) + '_' + CONVERT(NVARCHAR, ROW_NUMBER() OVER(PARTITION BY NombreProyecto ORDER BY Convert(DATETIME, FechaInicio) )) AS id
		, (SELECT id FROM ##PROYECTOS WHERE [name] = NombreProyecto) AS parent, Actividad AS [name]
		, CONVERT(NVARCHAR, CONVERT(DATE, FechaInicio)) AS actualStart, CONVERT(NVARCHAR, CONVERT(DATE, FechaFin)) AS actualEnd, Avance AS progressValue, NombreProyecto
	INTO ##ENCABEZADOS
	FROM dbo.tblTimmingProyecto
	WHERE Tarea = ''
	Order By 2


	CREATE TABLE ##TAREAS(
		id varchar(100),
		parent varchar(10),
		[name] VARCHAR(100),
		actualStart VARCHAR(50),
		actualEnd VARCHAR(50),
		progressValue DECIMAL(18, 3)
	)

	DECLARE @id varchar(50), @name varchar(100), @NombreProyecto AS varchar(100)

	DECLARE cursor_product CURSOR FOR
	SELECT id, [name], NombreProyecto FROM ##ENCABEZADOS

	OPEN cursor_product

	FETCH NEXT FROM cursor_product 
	INTO @id, @name, @NombreProyecto

	WHILE @@FETCH_STATUS = 0
	BEGIN
			
		INSERT INTO ##TAREAS
		SELECT @id + '_' + CONVERT(NVARCHAR, ROW_NUMBER() OVER(ORDER BY CONVERT(Date, FechaInicio))) As id, @id AS parent
			, Tarea AS [name], CONVERT(NVARCHAR, CONVERT(Date, FechaInicio)) AS actualStart
			, CONVERT(NVARCHAR, CONVERT(Date, FechaFin)) AS actualEnd, Avance AS progressValue
		FROM dbo.tblTimmingProyecto
		WHERE Tarea != '' AND Actividad = @name AND NombreProyecto = @NombreProyecto
			
		FETCH NEXT FROM cursor_product 
		INTO @id, @name, @NombreProyecto
	END

	CLOSE cursor_product
	DEALLOCATE cursor_product


	SELECT *
	FROM ##PROYECTOS

	UNION ALL

	SELECT id, parent, [name], actualStart, actualEnd, progressValue
	FROM ##ENCABEZADOS 

	UNION ALL

	SELECT *--id, [name], actualStart, actualEnd, progressValue
	FROM ##TAREAS


	DROP TABLE ##PROYECTOS
	DROP TABLE ##ENCABEZADOS
	DROP TABLE ##TAREAS

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadUsuarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <20 de Enero del 2017>
-- Description:	<Obtiene todos los usuarios dados de alta en el sistema>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadUsuarios]
	
AS
BEGIN
	Select *
	From SisaAdmin..tblUsuarios
	Where Activo = 1
	Order By NombreCompleto
END

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadViaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadViaticos]
	@IdViaticos AS VARCHAR(150) = '8c371e0e-8659-4f29-b8f0-7e2160213528'
AS
BEGIN
	
	SELECT ROW_NUMBER() OVER(ORDER BY B.IdDet) AS ID, B.IdDet, B.IdViaticos, B.FechaViaticos, B.Gasolina, B.Desayuno,
	B.Comida, B.Cena, B.Casetas, B.Hotel, B.Transporte, B.Otros, B.Descripcion, B.Ticket, B.ManoObra, B.Equipo, B.Materiales,
	A.CantEntregada, A.CantGastada, A.Diferencia, C.NombreProyecto, A.IdProyecto, D.NombreCompleto
	FROM tblViaticos A
	INNER JOIN tblViaticosDet B
	ON B.IdViaticos = A.ID
	LEFT OUTER JOIN dbo.tblProyectos C
	ON C.IdProyecto = B.idProyecto
	left outer join dbo.tblUsuarios D
	ON A.IdUsuario = D.IdUsuario
	WHERE A.ID = @IdViaticos
	ORDER By FechaViaticos
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Login]
	@Usuario AS VARCHAR(100) = '',
	@Pass AS VARCHAR(50) = ''
AS
BEGIN
	
	DECLARE @intExiste AS INT
	DECLARE @intExisteCliente as int

	IF @Usuario != ''
	BEGIN

		SET @intExiste = (SELECT Count(*) FROM tblUsuarios WHERE Usuario = @Usuario)

		IF @intExiste > 0
		BEGIN
			SELECT IdUsuario, NombreCompleto, Usuario, Contrasena, Foto, Permisos, Puesto, Correo
			FROM tblUsuarios
			WHERE Usuario = @Usuario AND Contrasena = @Pass And Activo = 1
		END
		ELSE
		BEGIN

			SET @intExisteCliente = (SELECT COUNT(*) FROM tblClientes where UsuarioCliente = @Usuario)
			if @intExisteCliente > 0
			BEGIN
				SELECT IdCliente As IdUsuario, RazonSocial As NombreCompleto, UsuarioCliente As Usuario
				, ContrasenaCliente As Contrasena, Logotipo As Foto, 100 As Permisos, Contacto As Puesto, Email As Correo
				FROM tblClientes
				WHERE UsuarioCliente = @Usuario And ContrasenaCliente = @Pass And Activo = 1
			END
			ELSE
			BEGIN
				SELECT '-1' AS IdUsuario, '' AS NombreCompleto, '' AS Usuario, '' AS Contrasena, '' AS Foto, 0 AS Permisos, '' AS Puesto, '' AS Correo
				
			END
			
		END
	END
	ELSE
	BEGIN
		SELECT '-1' AS IdUsuario, '' AS NombreCompleto, '' AS Usuario, '' AS Contrasena, '' AS Foto, 0 AS Permisos, '' AS Puesto, '' AS Correo
	END

END

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerArchivosProyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtenerArchivosProyectos]
	@IdProyecto AS VARCHAR(150),
	@Opcion AS VARCHAR(5)
AS
BEGIN
	

	IF @Opcion = 'OC'
	BEGIN
		SELECT ltrim(rtrim(ArchivoOC)) AS Archivo
		FROM tblProyectos
		WHERE IdProyecto = @IdProyecto
	END

	IF @Opcion = 'CL'
	BEGIN
		SELECT ltrim(rtrim(ArchivoCL)) AS Archivo
		FROM tblProyectos
		WHERE IdProyecto = @IdProyecto
	END

	IF @Opcion = 'FC'
	BEGIN
		SELECT ltrim(rtrim(ArchivoFC)) AS Archivo
		FROM tblProyectos
		WHERE IdProyecto = @IdProyecto
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerDatosControlFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Agosto 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtenerDatosControlFacturas]
	@IdControlFacturas AS VARCHAR(150)
AS
BEGIN
	
	SELECT IdControlFacturas, Convert(NVarchar, FechaFactura, 105) AS FechaFactura, IdProveedor, NoFactura, OrdenCompra, IdProyecto, Proyecto, Moneda, SubTotal, Descuento
		, IVA, Total, Estatus, FormaPago, Viaticos
	FROM dbo.tblControlFacturas
	WHERE IdControlFacturas = @IdControlFacturas

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerDatosFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Abril 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtenerDatosFacturasEmitidas]
	@IdFacturasEmitidas AS VARCHAR(150) = '7127F5B1-65CF-49B7-88EB-C9FBAA7F346D'
AS
BEGIN
	
	SELECT [IdFacturasEmitidas],[FolioFactura],CONVERT(NVARCHAR, [FechaFactura], 106) AS FechaFactura,[RfcReceptor],[NombreReceptor],[IdProyecto],[NoCotizacion],[OrdenCompraRecibida]
		  ,[SubTotal],[Iva],[Total]
		  ,CASE WHEN [Moneda] = 'MXN' THEN 0 ELSE 1 END AS Moneda,[ProgramacionPago],[PorPagar],[FechaPago],[Estatus],[TipoCambio]
	FROM [SisaAdmin].[dbo].[tblFacturasEmitidas]
	Where [IdFacturasEmitidas] = @IdFacturasEmitidas

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerDatosTarea]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Septiembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtenerDatosTarea]
	@IdTask AS VARCHAR(150)
AS
BEGIN
	
	SELECT *, Replace(Convert(NVarchar, FechaInicio, 111), '/', '-') As FechaI, Replace(Convert(NVarchar, FechaFin, 111), '/', '-') As FechaF
	FROM tblProyectoTasks
	WHERE Idtask = @IdTask

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerInfoCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtenerInfoCotizacion]
	@IdCotizacion AS VARCHAR(150)
AS
BEGIN
	
	SELECT A.*, B.Contacto, C.NombreCompleto
	From tblCotizacionNew A
	Inner Join dbo.tblClientes B
	On B.IdCliente = A.IdCliente
	Inner Join dbo.tblUsuarios C
	On C.IdUsuario = A.IdUsuarioElaboro
	Where A.IdCotizacion = @IdCotizacion
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerNotasAclaratorias]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtenerNotasAclaratorias]
	@IdCotizacion As VARCHAR(150)
AS
BEGIN
	
	SELECT *
	FROM tblNotaAclaratoria
	Where IdCotizacion = @IdCotizacion
	Order By IdNotasCotizacion

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerSeguimientoRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 Noviembre 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtenerSeguimientoRFQ]
	@IdRfq AS VARCHAR(150)
AS
BEGIN
	
	SELECT *
	FROM dbo.tblRfqSeguimiento
	WHERE IdRfqVentas = @IdRfq

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtieneFolioCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtieneFolioCotizacion]
	@Folio AS VARCHAR(50) OUTPUT
AS
BEGIN

	DECLARE @FolioINT AS VARCHAR(50)
	
	IF ((Select Count(*) From tblFolioCotizacion Where Dia = Convert(Date, GETDATE())) >= 1)
	BEGIN
		SET @FolioINT = ( SELECT MAX(IsNull(Consecutivo, 0)) + 1 FROM tblFolioCotizacion WHERE Dia = Convert(Date, GETDATE()) )

		UPDATE tblFolioCotizacion SET Consecutivo = @FolioINT WHERE Dia = Convert(Date, GETDATE())
	END
	ELSE
	BEGIN

		INSERT INTO [dbo].[tblFolioCotizacion]
			   ([Dia],[Consecutivo])
		 VALUES
			   (Convert(Date, GETDATE()),1)

		SET @FolioINT = ( SELECT MAX(IsNull(Consecutivo, 0)) FROM tblFolioCotizacion WHERE Dia = Convert(Date, GETDATE()) )

	END

	SELECT @Folio = 'COT' + Right('00' + Convert(NVarchar, DateName(day,GETDATE())), 2) + Right('00' + Convert(NVarchar, month(GETDATE())), 2) + Right(Cast(Year( Getdate()) As Char(4)),2) + '-' + Right('000' + @FolioINT, 3)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtieneFolioOrdenCompra]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Junio del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtieneFolioOrdenCompra]
	@FolioOC AS VARCHAR(50) OUTPUT
AS
BEGIN

	DECLARE @FolioINT AS VARCHAR(50)
	
	IF ((Select Count(*) From tblFolioOrdenCompra Where Dia = Convert(Date, GETDATE())) >= 1)
	BEGIN
		SET @FolioINT = ( SELECT MAX(IsNull(Consecutivo, 0)) + 1 FROM tblFolioOrdenCompra WHERE Dia = Convert(Date, GETDATE()) )

		UPDATE tblFolioOrdenCompra SET Consecutivo = @FolioINT WHERE Dia = Convert(Date, GETDATE())
	END
	ELSE
	BEGIN

		INSERT INTO [dbo].[tblFolioOrdenCompra]
			   ([Dia],[Consecutivo])
		 VALUES
			   (Convert(Date, GETDATE()),1)

		SET @FolioINT = ( SELECT MAX(IsNull(Consecutivo, 0)) FROM tblFolioOrdenCompra WHERE Dia = Convert(Date, GETDATE()) )

	END

	SELECT @FolioOC = 'OC' + Right('00' + Convert(NVarchar, DateName(day,GETDATE())), 2) + Right('00' + Convert(NVarchar, month(GETDATE())), 2) + Right(Cast(Year( Getdate()) As Char(4)),2) + '-' + Right('000' + @FolioINT, 3)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtieneFolioReq]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Enero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtieneFolioReq]
	@Folio AS VARCHAR(50) OUTPUT
AS
BEGIN

	DECLARE @FolioINT AS VARCHAR(50)
	
	IF ((Select Count(*) From tblFolioReq Where Dia = Convert(Date, GETDATE())) >= 1)
	BEGIN
		SET @FolioINT = ( SELECT IsNull(MAX(Consecutivo), 0) + 1 FROM tblFolioReq WHERE Dia = Convert(Date, GETDATE()) )

		UPDATE tblFolioReq SET Consecutivo = @FolioINT WHERE Dia = Convert(Date, GETDATE())
	END
	ELSE
	BEGIN

		INSERT INTO [dbo].[tblFolioReq]
			   ([Dia],[Consecutivo])
		 VALUES
			   (Convert(Date, GETDATE()),1)

		SET @FolioINT = ( SELECT IsNull(MAX(Consecutivo), 0) FROM tblFolioReq WHERE Dia = Convert(Date, GETDATE()) )

	END

	SELECT @Folio = 'REQ' + Right('00' + Convert(NVarchar, DateName(day,GETDATE())), 2) + Right('00' + Convert(NVarchar, month(GETDATE())), 2) + Right(Cast(Year( Getdate()) As Char(4)),2) + '-' + Right('000' + @FolioINT, 3)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtieneFolioRFQ]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 de Noviembre del 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtieneFolioRFQ]
	@Folio AS VARCHAR(50) OUTPUT
AS
BEGIN

	DECLARE @FolioINT AS VARCHAR(50)
	
	IF ((Select Count(*) From tblFolioRFQ Where Dia = Convert(Date, GETDATE())) >= 1)
	BEGIN
		SET @FolioINT = ( SELECT MAX(IsNull(Consecutivo, 0)) + 1 FROM tblFolioRFQ WHERE Dia = Convert(Date, GETDATE()) )

		UPDATE tblFolioRFQ SET Consecutivo = @FolioINT WHERE Dia = Convert(Date, GETDATE())
	END
	ELSE
	BEGIN

		INSERT INTO [dbo].tblFolioRFQ
			   ([Dia],[Consecutivo])
		 VALUES
			   (Convert(Date, GETDATE()),1)

		SET @FolioINT = ( SELECT MAX(IsNull(Consecutivo, 0)) FROM tblFolioRFQ WHERE Dia = Convert(Date, GETDATE()) )

	END

	SELECT @Folio = 'RFQ' + Right('00' + Convert(NVarchar, DateName(day,GETDATE())), 2) + Right('00' + Convert(NVarchar, month(GETDATE())), 2) + Right(Cast(Year( Getdate()) As Char(4)),2) + '-' + Right('000' + @FolioINT, 3)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtieneRFQVentas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 NOV 2020>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ObtieneRFQVentas]
	
AS
BEGIN
	
	SELECT A.*, Ven.NombreCompleto AS Vendedor, Coor.NombreCompleto AS Coordinador
	FROM dbo.tblRfqVentas A
	INNER JOIN dbo.tblUsuarios Ven
	ON Ven.IdUsuario = A.IdUsuarioVendedor
	INNER JOIN dbo.tblUsuarios Coor
	ON Coor.IdUsuario = A.IdUsuarioCoordinador

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteProyectosGastos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	 
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReporteProyectosGastos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   CREATE TABLE #Proyectos (
		IdProyecto uniqueidentifier,
		Gastos DECIMAL(20, 2)
	)
	delete from tblProyectosGastos
	DECLARE @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
			, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2), @IdProyecto AS VARCHAR(150)


	DECLARE vendor_cursor CURSOR FOR   
	SELECT IdProyecto
	FROM dbo.tblProyectos A
	INNER JOIN dbo.tblUsuarios B
	On B.IdUsuario = A.IdLider
	INNER JOIN dbo.tblClienteContacto C
	ON C.idContacto = A.IdCliente
	--WHERE Activo = 1 And Estatus != 2

	OPEN vendor_cursor  

	FETCH NEXT FROM vendor_cursor   
	INTO @IdProyecto

	WHILE @@FETCH_STATUS = 0  
	BEGIN  

		SET @totalOC = 0
		SET @totalOCPend = 0
		SET @totalFacturas = 0
		SET @manoObra = 0
		SET @viaticos = 0
		SET @cajaChica = 0

		/* ORDENES DE COMPRA */
		SELECT @totalOC = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida > 0
			GROUP BY C.Abreviatura--, CONVERT(DATE, B.FechaCreacion)
		) A

		/* ORDENES DE COMPRA PENDIENTES POR RECIBIR */
		SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura
		) A

		/* FACTURAS */
		SELECT @totalFacturas = SUM(Facturas)
		FROM (
			SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas
			WHERE IdProyecto = @IdProyecto And Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
			AND Viaticos = 0
		) A

		--/* MANO DE OBRA */
		SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1

		/* VIATICOS */
		SELECT @viaticos = SUM(TOTAL)
		FROM (
			SELECT 'Viaticos' As Nombre, CASE WHEN A.CantGastada = 0 THEN A.CantEntregada ELSE A.CantGastada END AS TOTAL
				--, IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) AS Total
				--, ((IsNull(SUM(IsNull(Gasolina, 0.00) + IsNull(Desayuno, 0.00) + IsNull(Comida, 0.00) + IsNull(Cena, 0.00) + IsNull(Casetas, 0.00) + IsNull(Hotel, 0.00) + IsNull(Transporte, 0.00) + IsNull(Otros, 0.00)), 0.00) / @Gastado) * 100) AS Porcentaje
			FROM [SisaAdmin].[dbo].[tblViaticos] A
			--INNER JOIN dbo.tblViaticosDet B
			--ON B.IdViaticos = A.ID
			WHERE A.IdProyecto = @IdProyecto
		) A
		GROUP BY Nombre
		--SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
		--FROM [SisaAdmin].[dbo].[tblViaticos] A
		--INNER JOIN dbo.tblViaticosDet B
		--ON B.IdViaticos = A.ID
		--WHERE A.IdProyecto = @IdProyecto

		/* CAJA CHICA */
		SELECT @cajaChica = SUM(A.ABono)
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS','ORDEN DE COMPRA') And A.IdProyecto = @IdProyecto

		--PRINT(IsNull(@totalOC, 0.00))
		--PRINT(IsNull(@totalFacturas, 0.00))
		--PRINT(IsNull(@viaticos, 0.00))
		--PRINT(IsNull(@cajaChica, 0.00))
		--PRINT(IsNull(@manoObra, 0.00))

		SET @totalGastos = (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))
	
		--SET @cont = @cont + 1

		INSERT #Proyectos
		SELECT @IdProyecto, @totalGastos

     
		FETCH NEXT FROM vendor_cursor   
		INTO @IdProyecto
	END   
	CLOSE vendor_cursor;  
	DEALLOCATE vendor_cursor; 


	--Select A.FechaAlta AS FechaCreacion, ISNULL(FolioProyecto, '') AS Folio, FechaInicio, FechaFin, B.NombreCompleto AS Lider, A.NombreProyecto
	--	, CASE WHEN A.Activo = 0 THEN 'CANCELADO' ELSE CASE WHEN A.FechaTermino Is NULL THEN 'EN PROCESO' ELSE 'FINALIZADO' END END AS [Estatus]
	--	, A.CostoCotizacion, C.RazonSocial, C.Contacto, CASE WHEN A.NombreOC != '' THEN 'SI' ELSE 'NO' END AS OC
	--	, CASE WHEN A.NombreCL != '' THEN 'SI' ELSE 'NO' END AS CL
	--	, IsNull(D.Total, 0) As Facturado
	--	, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 1 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion)) END) AS Porcentaje
	--	, IsNull(E.Total, 0) As Pagado
	--	, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(E.Total, 0)) = 0 THEN 1 ELSE ((IsNull(E.Total, 0) / A.CostoCotizacion)) END) AS PorcentajePagado
	--	, F.Gastos
	--From tblProyectos A
	--INNER JOIN dbo.tblUsuarios B
	--On B.IdUsuario = A.IdLider
	--INNER JOIN dbo.tblClientes C
	--ON C.IdCliente = A.IdCliente
	--Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus != 2 Group By IdProyecto) D
	--ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	--Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) E
	--ON E.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	--INNER JOIN #Proyectos F
	--ON F.IdProyecto = A.IdProyecto
	insert into tblProyectosGastos
	Select A.FechaAlta AS FechaCreacion, ISNULL(FolioProyecto, '') AS Folio, FechaInicio, FechaFin, B.NombreCompleto AS Lider, A.NombreProyecto
		--, CASE WHEN A.Activo = 0 THEN 'CANCELADO' ELSE CASE WHEN A.FechaTermino Is NULL THEN 'EN PROCESO' ELSE 'FINALIZADO' END END AS [Estatus]
		, ISNULL(A.EstatusDesc, 'PENDIENTE') AS [Estatus]
		, A.CostoCotizacion, em.RazonSocial, C.NombreContacto, CASE WHEN A.NombreOC != '' THEN 'SI' ELSE 'NO' END AS OC
		, CASE WHEN A.NombreCL != '' THEN 'SI' ELSE 'NO' END AS CL
		, IsNull(D.Total, 0) As Facturado
		, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(D.Total, 0)) = 0 THEN 1 ELSE ((IsNull(D.Total, 0) / A.CostoCotizacion)) END) AS Porcentaje
		, IsNull(E.Total, 0) As Pagado
		, Convert(DECIMAL(20,2), CASE WHEN (A.CostoCotizacion - IsNull(E.Total, 0)) = 0 THEN 1 ELSE ((IsNull(E.Total, 0) / A.CostoCotizacion)) END) AS PorcentajePagado
		, F.Gastos, IsNULL(COMPRAS.OC, 0) AS OC, ISNULL(COMPRASPEND.OCPEND, 0) AS OCPEND, ISNULL(FACTURAS.Facturas, 0) AS Facturas
		, ISNULL(MANOOBRA.MANOOBRA, 0) AS MANOOBRA, ISNULL(VIATICOS.VIATICOS, 0) AS VIATICOS, ISNULL(CAJACHICA.CAJACHICA, 0) AS CAJACHICA
	From tblProyectos A
	INNER JOIN dbo.tblUsuarios B
	On B.IdUsuario = A.IdLider
	INNER JOIN dbo.tblClienteContacto C	
	ON C.idContacto = A.IdCliente
	INNER JOIN dbo.tblEmpresas em
	on C.idEmpresa = em.idEmpresa
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus != 2 Group By IdProyecto) D
	ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) E
	ON E.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
	INNER JOIN #Proyectos F
	ON F.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(OC) AS OC
		FROM (
			SELECT B.IdProyecto, CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY C.Abreviatura, B.IdProyecto
		) A
		GROUP BY IdProyecto
	) COMPRAS
	ON COMPRAS.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(OC) AS OCPEND
		FROM (
			SELECT B.IdProyecto, CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura, B.IdProyecto
		) A
		GROUP BY IdProyecto
	) COMPRASPEND
	ON COMPRASPEND.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(Facturas) AS Facturas
		FROM (
			SELECT IdProyecto, CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas A
			WHERE Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE CONVERT(VARCHAR(150), IdProyecto) = A.IdProyecto)
			AND Viaticos = 0
		) A
		GROUP BY IdProyecto
	) FACTURAS
	ON FACTURAS.IdProyecto = CONVERT(VARCHAR(150), A.IdProyecto)
	LEFT OUTER JOIN (
		SELECT A.IdProyecto, Sum(((B.SueldoDiario / 8) * A.Total)) AS MANOOBRA
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE A.Activo = 1
		GROUP BY A.IdProyecto
	) MANOOBRA
	ON MANOOBRA.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(TOTAL) AS VIATICOS
		FROM (
			SELECT IdProyecto, CASE WHEN CantGastada = 0 THEN CantEntregada ELSE CantGastada END AS TOTAL
			FROM [SisaAdmin].[dbo].[tblViaticos]
		) A
		GROUP BY IdProyecto
	) VIATICOS
	ON VIATICOS.IdProyecto = A.IdProyecto
	LEFT OUTER JOIN (
		SELECT IdProyecto, SUM(A.ABono) AS CAJACHICA
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS')
		GROUP BY IdProyecto
	) CAJACHICA
	ON CAJACHICA.IdProyecto = CONVERT(VARCHAR(150), A.IdProyecto)

	
	DROP TABLE #Proyectos
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteProyectosGastosVistas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReporteProyectosGastosVistas]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select * from tblProyectosGastos
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ResumenClientesProyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <17 de Julio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ResumenClientesProyectos]
	
AS
BEGIN
	
	SELECT * 
	FROM (
		SELECT RazonSocial, COUNT(*) AS Proyectos, SUM(CostoCotizacion) AS TotalCotizado
			, SUM(IsNull(C.OC, 0) + IsNull(D.Facturas, 0) + IsNull(E.ManoObra, 0) + IsNull(F.Viaticos, 0) + IsNull(G.CajaChica, 0)) AS Gastado
			, (SUM(CostoCotizacion) - SUM(IsNull(C.OC, 0) + IsNull(D.Facturas, 0) + IsNull(E.ManoObra, 0) + IsNull(F.Viaticos, 0) + IsNull(G.CajaChica, 0))) AS Utilidad
			, (((SUM(CostoCotizacion) - SUM(IsNull(C.OC, 0) + IsNull(D.Facturas, 0) + IsNull(E.ManoObra, 0) + IsNull(F.Viaticos, 0) + IsNull(G.CajaChica, 0))) / SUM(CostoCotizacion)) * 100) AS PorcentajeUtilidad
			, SUM(IsNull(H.Total, 0)) AS Facturado, SUM(IsNull(I.Total, 0)) AS Pagado
		FROM dbo.tblProyectos A
		INNER JOIN dbo.tblClientes B
		ON B.IdCliente = A.IdCliente
		LEFT OUTER JOIN (
			SELECT B.IdProyecto, CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 19.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY B.IdProyecto, C.Abreviatura
			) C
		ON C.IdProyecto = A.IdProyecto
		LEFT OUTER JOIN (
			SELECT IdProyecto, SUM(CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 19.5 END) AS Facturas
			FROM dbo.tblControlFacturas
			WHERE Estatus != 2 AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra)
			And Viaticos = 0 AND IdProyecto NOT IN('N/A', 'JEEP', 'CHEYENNE', 'INVENTARIO', 'CONSUMIBLES TALLER', 'ECONOLINE 2003', 'IKON', 'FOCUS', 'GASOLINA', 'UNIFORMES SISA', 'EQUIPO DE SEGURIDAD', 'PENDIENTE', 'RANGER', 'ECONOLINE 2006', 'RAM 700', 'RAM', '')
			GROUP BY IdProyecto
			) D
		ON D.IdProyecto = A.IdProyecto
		LEFT OUTER JOIN (
			SELECT IdProyecto, Sum(((B.SueldoDiario / 8) * A.Total)) AS ManoObra
			FROM tblHorasHombre A
			INNER JOIN dbo.tblUsuarios B
			ON B.IdUsuario = A.IdUsuario
			WHERE A.Activo = 1
			GROUP BY IdProyecto
			) E
		ON E.IdProyecto = A.IdProyecto
		LEFT OUTER JOIN (
			SELECT IdProyecto, SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros) AS Viaticos
			FROM [SisaAdmin].[dbo].[tblViaticos] A
			INNER JOIN dbo.tblViaticosDet B
			ON B.IdViaticos = A.ID
			WHERE IdProyecto IS Not Null
			GROUP BY IdProyecto
			) F
		ON F.IdProyecto = A.IdProyecto
		LEFT OUTER JOIN (
			SELECT IdProyecto, SUM(A.ABono) AS CajaChica
			FROM dbo.tblCajaChica A
			WHERE Comprobante NOT IN('FACTURA','VIATICOS') AND IdProyecto Not In('', 'CONSUMIBLES TALLER', 'CHEYENNE', 'ECONOLINE 2006', 'FOCUS', 'INVENTARIO', 'JEEP', 'N/A', 'PENDIENTE', 'RAM', 'RAM 700', 'RANGER', 'REMOLQUE')
			GROUP BY IdProyecto
			) G
		ON G.IdProyecto = A.IdProyecto
		LEFT OUTER JOIN (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas Group By IdProyecto) H
		ON H.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
		LEFT OUTER JOIN (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) I
		ON I.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
		WHERE A.Activo = 1 And A.IdCliente != '8CAD74AE-78C5-4E9C-BD99-40C32D2AEE81'
		GROUP BY RazonSocial
	) A
	ORder By RazonSocial


END
GO
/****** Object:  StoredProcedure [dbo].[sp_ResumenTotales]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ResumenTotales]
	@Mes AS VARCHAR(6) = '-1',
	@IdProveedor AS VARCHAR(150) = '-1',
	@NoFactura AS VARCHAR(100) = '-1',
	@Proyecto AS VARCHAR(150) = '-1',
	@Moneda AS VARCHAR(50) = '-1',
	@Estatus AS INT = -1
AS
BEGIN
--8A51FE8C-D6C1-4C73-B10D-E4C0B80BBFE8
	DECLARE @QrySQL AS VARCHAR(MAX)
	
	SET @QrySQL = 'SELECT ltrim(rtrim(Moneda)) AS Moneda, SUM(SubTotal) AS SubTotal, SUM(IVA) AS IVA, (SUM(Total) - (SUM(Anticipo)+SUM(NotaCredito))) As Total, SUM(Anticipo) as ANTICIPO, SUM(NotaCredito) as NotaCredito, SUM(Total) as Total1
					FROM tblControlFacturas A
					WHERE ' + CASE WHEN @IdProveedor = '-1' THEN ' A.IdProveedor = A.IdProveedor' ELSE 'A.IdProveedor = ' + CHAR(39) + @IdProveedor + CHAR(39) + '' END + '
					AND ' + CASE WHEN @NoFactura = '-1' THEN ' A.NoFactura = A.NoFactura' ELSE 'A.NoFactura = ' + CHAR(39) + @NoFactura + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Proyecto = '-1' THEN ' A.Proyecto = A.Proyecto' ELSE 'Replace(A.Proyecto, '' '', '''') = ' + CHAR(39) + @Proyecto + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Moneda = '-1' THEN ' ltrim(Rtrim(A.Moneda)) = ltrim(rtrim(A.Moneda))' ELSE 'ltrim(rtrim(A.Moneda)) = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Estatus = -1 THEN ' A.Estatus IN(0,1)' ELSE 'A.Estatus = ' + Convert(NVARCHAR, @Estatus) + '' END + '
					AND ' + CASE WHEN @Mes = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' SUBSTRING(REPLACE(Convert(NVarchar, A.FechaFactura, 103), ''/'',''''), 3, 6) = ' + CHAR(39) + @Mes + CHAR(39) + '' END + '
					GROUP BY ltrim(rtrim(Moneda))'
	

	EXEC(@QrySQL)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ResumenTotalesFacturasEmitidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ResumenTotalesFacturasEmitidas]
	@Anio AS VARCHAR(6) = '-1',
	@Cliente AS VARCHAR(150) = '-1',
	@IdProyecto AS VARCHAR(150) = '-1',
	@Moneda AS VARCHAR(50) = '-1',
	@Estatus AS INT = -1
AS
BEGIN

	DECLARE @QrySQL AS VARCHAR(MAX), @QrySQL1 AS VARCHAR(MAX), @QrySQL2 AS VARCHAR(MAX)
	
	SET @QrySQL1 = 'SELECT ''TOTALES'' AS Moneda, SUM(A.SubTotal * A.TipoCambio) AS SubTotal, SUM(A.IVA * A.TipoCambio) AS IVA, SUM(A.Total * A.TipoCambio) As Total
						, SUM(A.PorPagar * A.TipoCambio) AS PorPagar, SUM(B.PorPagar * B.TipoCambio) AS TotalSinProgPago, SUM(C.PorPagar * C.TipoCambio) AS TotalConProgPago
					FROM dbo.tblFacturasEmitidas A
					LEFT OUTER JOIN dbo.tblFacturasEmitidas B
					ON B.IdFacturasEmitidas = A.IdFacturasEmitidas AND (B.ProgramacionPago Is Null OR B.ProgramacionPago = '''')
					LEFT OUTER JOIN dbo.tblFacturasEmitidas C
					ON C.IdFacturasEmitidas = A.IdFacturasEmitidas AND (C.ProgramacionPago Is NOT Null OR C.ProgramacionPago != '''')
					WHERE ' + CASE WHEN @Cliente = '-1' THEN ' A.NombreReceptor = A.NombreReceptor' ELSE 'A.NombreReceptor = ' + CHAR(39) + @Cliente + CHAR(39) + '' END + '
					AND ' + CASE WHEN @IdProyecto = '-1' THEN ' A.IdProyecto = A.IdProyecto' ELSE 'A.IdProyecto = ' + CHAR(39) + @IdProyecto + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Moneda = '-1' THEN ' A.Moneda = A.Moneda' ELSE 'A.Moneda = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Estatus = -1 THEN ' A.Estatus IN(0,1)' ELSE 'A.Estatus = ' + Convert(NVARCHAR, @Estatus) + '' END + '
					AND ' + CASE WHEN @Anio = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' YEAR(A.FechaFactura) = ' + CHAR(39) + @Anio + CHAR(39) + '' END + ' '
	
	SET @QrySQL2 = ' UNION ALL '

	SET @QrySQL = ' SELECT A.Moneda, SUM(A.SubTotal) AS SubTotal, SUM(A.IVA) AS IVA, SUM(A.Total) As Total, SUM(A.PorPagar) AS PorPagar, SUM(B.PorPagar) AS TotalSinProgPago, SUM(C.PorPagar) AS TotalConProgPago
					FROM tblFacturasEmitidas A
					LEFT OUTER JOIN dbo.tblFacturasEmitidas B
					ON B.IdFacturasEmitidas = A.IdFacturasEmitidas AND (B.ProgramacionPago Is Null OR B.ProgramacionPago = '''')
					LEFT OUTER JOIN dbo.tblFacturasEmitidas C
					ON C.IdFacturasEmitidas = A.IdFacturasEmitidas AND (C.ProgramacionPago Is NOT Null OR C.ProgramacionPago != '''')
					WHERE ' + CASE WHEN @Cliente = '-1' THEN ' A.NombreReceptor = A.NombreReceptor' ELSE 'A.NombreReceptor = ' + CHAR(39) + @Cliente + CHAR(39) + '' END + '
					AND ' + CASE WHEN @IdProyecto = '-1' THEN ' A.IdProyecto = A.IdProyecto' ELSE 'A.IdProyecto = ' + CHAR(39) + @IdProyecto + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Moneda = '-1' THEN ' A.Moneda = A.Moneda' ELSE 'A.Moneda = ' + CHAR(39) + @Moneda + CHAR(39) + '' END + '
					AND ' + CASE WHEN @Estatus = -1 THEN ' A.Estatus IN(0,1)' ELSE 'A.Estatus = ' + Convert(NVARCHAR, @Estatus) + '' END + '
					AND ' + CASE WHEN @Anio = '-1' THEN ' A.FechaFactura = A.FechaFactura' ELSE ' YEAR(A.FechaFactura) = ' + CHAR(39) + @Anio + CHAR(39) + '' END + '
					GROUP BY A.Moneda'
	
	PRINT(@QrySQL1 + @QrySQL2 + @QrySQL)
	EXEC(@QrySQL1 + @QrySQL2 + @QrySQL)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ResumenTotalesOC]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ResumenTotalesOC]
	@Valor As VARCHAR(150) 
AS
BEGIN


	DECLARE @QrySQL AS VARCHAR(MAX)

	SET @QrySQL = 'SELECT B.Abreviatura As Moneda, SUM(A.SubTotal) AS SubTotal, SUM(A.IVA) AS IVA, SUM(A.Total) As Total
					FROM tblOrdenCompra A
					INNER JOIN dbo.tblMonedas B
					ON B.IdMoneda = A.IdMoneda
					INNER JOIN dbo.tblProyectos C
					ON C.IdProyecto = A.IdProyecto
					INNER JOIN dbo.tblProveedores D
					ON D.IdProveedor = A.IdProveedor
					INNER JOIN dbo.tblUsuarios E
					ON E.IdUsuario = A.IdUsuario
					Left Outer Join dbo.tblControlFacturas F
					ON F.OrdenCompra = A.Folio
					WHERE A.Estatus != 2 AND (' + CASE WHEN @Valor = '' THEN ' A.Folio = A.Folio' ELSE 'A.Folio Like ' + CHAR(39) + '%' + @Valor + '%' + CHAR(39) + '' END + '
					OR ' + CASE WHEN @Valor = '' THEN ' C.NombreProyecto = C.NombreProyecto' ELSE 'C.NombreProyecto Like ' + CHAR(39) + '%' + @Valor + '%' + CHAR(39) + '' END + '
					OR ' + CASE WHEN @Valor = '' THEN ' D.Proveedor = D.Proveedor' ELSE 'D.Proveedor Like ' + CHAR(39) + '%' + @Valor + '%' + CHAR(39) + '' END + '
					OR ' + CASE WHEN @Valor = '' THEN ' B.Moneda = B.Moneda' ELSE 'B.Moneda Like ' + CHAR(39) + '%' + @Valor + '%' + CHAR(39) + '' END + '
					OR ' + CASE WHEN @Valor = '' THEN ' F.NoFactura = F.NoFactura' ELSE 'F.NoFactura Like ' + CHAR(39) + '%' + @Valor + '%' + CHAR(39) + '' END + '
					OR ' + CASE WHEN @Valor = '' THEN ' F.Estatus = F.Estatus' ELSE CASE WHEN @Valor = 'PENDIENTE' THEN 'F.Estatus = 0' ELSE CASE WHEN @Valor = 'PAGADO' THEN 'F.Estatus = 1' ELSE 'F.Estatus Like ' + CHAR(39) + '%' + @Valor + '%' + CHAR(39) + '' END END END + '
					OR ' + CASE WHEN @Valor = '' THEN ' E.NombreCompleto = E.NombreCompleto' ELSE 'E.NombreCompleto Like ' + CHAR(39) + '%' + @Valor + '%' + CHAR(39) + '' END + ')
					GROUP BY Abreviatura'
	
	PRINT(@QrySQL)
	EXEC(@QrySQL)

	/*

	OR A.Estatus = ' + Convert(NVARCHAR, @Valor) + ')
	*/
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ResumenTotalesRecibidas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ResumenTotalesRecibidas]
	@a AS VARCHAR(6) = '-1'
	
AS
BEGIN

	SELECT ltrim(rtrim(Moneda)) AS Moneda, SUM(SubTotal) AS SubTotal, SUM(IVA) AS IVA, SUM(Total) As Total
					FROM tblControlFacturas A
					GROUP BY ltrim(rtrim(Moneda))
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectEventosCalendario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SelectEventosCalendario]
	@IdUsuario AS VARCHAR(150) = 'f78542fb-849f-4fb3-a6f4-228c46c42f0a'
AS
BEGIN
	
	
	SELECT *
		, YEAR(FechaInicio) AS AnioInicio, MONTH(FechaInicio)-1 AS MesInicio, DAY(FechaInicio) AS DiaInicio, DATEPART(HOUR, FechaInicio) As HoraInicio, Right('00' + Convert(NVarchar, DATEPART(MINUTE, FechaInicio)), 2) As MinutosInicio
		, YEAR(FechaFinal) AS AnioFin, MONTH(FechaFinal)-1 AS MesFin, DAY(FechaFinal) AS DiaFin, DATEPART(HOUR, FechaFinal) As HoraFin, Right('00' + Convert(NVarchar, DATEPART(MINUTE, FechaFinal)), 2) As MinutosFin
	FROM tblCalendario
	WHERE IdUsuario = @IdUsuario
	

END

GO
/****** Object:  StoredProcedure [dbo].[sp_SelectLocalizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <23 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SelectLocalizacion]
	@ID As VARCHAR(10)
AS
BEGIN
	
	
	SELECT *
	FROM tblGPS
	WHERE ltrim(rtrim(ID)) = ltrim(rtrim(@ID))
	ORDER By IdLocation
	

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectVinReconocimientoVoz]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <24 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SelectVinReconocimientoVoz]
	@Vin AS VARCHAR(50)
AS
BEGIN
	
	SELECT TOP 1 Falla
	FROM dbo.tblFallas
	WHERE ltrim(Rtrim(VIN)) = ltrim(rtrim(@Vin))
	ORDER By Fecha DESC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Clientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Clientes]
	(@Clientes AS dbo.Clientes READONLY)
AS
BEGIN
	MERGE tblClientes as target
   USING @Clientes AS source
   ON( target.IdCliente = source.IdCliente )
   WHEN NOT MATCHED THEN
	INSERT  (IdCliente, RazonSocial, Contacto, Email, Departamento, TelefonoEmpresa, Celular, UsuarioCliente, ContrasenaCliente, MapaCoordenadas, Logotipo, Direccion, IdUsuarioAlta, FechaAlta, IdUsuarioModificacion, FechaModificacion, Activo)
	VALUES  ( source.IdCliente, source.RazonSocial, source.Contacto, source.Email, source.Departamento, source.TelefonoEmpresa, source.Celular, source.UsuarioCliente, source.ContrasenaCliente, source.MapaCoordenadas, source.Logotipo, source.Direccion, source.IdUsuarioAlta, source.FechaAlta, source.IdUsuarioModificacion, source.FechaModificacion, source.Activo);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_ComentariosProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_ComentariosProyecto]
	(@ComentariosProyecto AS dbo.ComentariosProyecto READONLY)
AS
BEGIN
	MERGE tblComentariosProyecto as target
   USING @ComentariosProyecto AS source
   ON( target.IdComentario = source.IdComentario )
   WHEN NOT MATCHED THEN
	INSERT  (IdComentario, IdProyecto, Comentario, IdUsuario, FechaComentario)
	VALUES  ( source.IdComentario, source.IdProyecto, source.Comentario, source.IdUsuario, source.FechaComentario);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Cotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Cotizacion]
	(@Cotizacion AS dbo.Cotizacion READONLY)
AS
BEGIN
	MERGE tblCotizacionNew as target
   USING @Cotizacion AS source
   ON( target.IdCotizacion = source.IdCotizacion )
   WHEN NOT MATCHED THEN
	INSERT  (IdCotizacion, NoCotizacion, IdCliente, Empresa, Direccion, Ciudad, Concepto, FechaCotizacion, IdUsuarioElaboro, FechaAlta, Estatus, NombreArchivoPdf, DocumentoPdf, NombreArchivoXls, DocumentoXls)
	VALUES  ( source.IdCotizacion, source.NoCotizacion, source.IdCliente, source.Empresa, source.Direccion, source.Ciudad, source.Concepto, source.FechaCotizacion, source.IdUsuarioElaboro, source.FechaAlta, source.Estatus, source.NombreArchivoPdf, source.DocumentoPdf, source.NombreArchivoXls, source.DocumentoXls);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_FolioCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_FolioCotizacion]
	(@FolioCotizacion AS dbo.FolioCotizacion READONLY)
AS
BEGIN
	MERGE tblFolioCotizacion as target
   USING @FolioCotizacion AS source
   ON( target.IdFolioCotizacion = source.IdFolioCotizacion )
   WHEN NOT MATCHED THEN
	INSERT  (IdFolioCotizacion, Dia, Consecutivo)
	VALUES  ( source.IdFolioCotizacion, source.Dia, source.Consecutivo);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Gastos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <11 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Gastos]
	(@Gastos AS dbo.Gastos READONLY)
AS
BEGIN
	MERGE tblGastos as target
   USING @Gastos AS source
   ON( target.IdGasto = source.IdGasto )
   WHEN NOT MATCHED THEN
	INSERT  (IdGasto, IdProyecto, NoFactura, TipoGasto, Descripcion, Importe, IVA, Total, FechaGasto, IdUsuario, FechaAlta)
	VALUES  (source.IdGasto, source.IdProyecto, source.NoFactura, source.TipoGasto, source.Descripcion, source.Importe, source.IVA, source.Total, source.FechaGasto, source.IdUsuario, source.FechaAlta);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Habilidades]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Habilidades]
	(@Habilidades AS dbo.Habilidades READONLY)
AS
BEGIN
	MERGE tblHabilidades as target
   USING @Habilidades AS source
   ON( target.IdHabilidad = source.IdHabilidad )
   WHEN NOT MATCHED THEN
	INSERT  (IdHabilidad, IdUsuario, Habilidad, Porcentaje, Comentarios)
	VALUES  ( source.IdHabilidad, source.IdUsuario, source.Habilidad, source.Porcentaje, source.Comentarios);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_ListaPendientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_ListaPendientes]
	(@ListaPendientes AS dbo.ListaPendientes READONLY)
AS
BEGIN
	MERGE tblListaPendientes as target
   USING @ListaPendientes AS source
   ON( target.IdListaPendientes = source.IdListaPendientes )
   WHEN NOT MATCHED THEN
	INSERT  (IdListaPendientes, IdUsuario, Pendiente, Completado, FechaAlta, FechaCompletado)
	VALUES  ( source.IdListaPendientes, source.IdUsuario, source.Pendiente, source.Completado, source.FechaAlta, source.FechaCompletado);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_MatrizMecanico]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_MatrizMecanico]
	(@Parametro AS dbo.MatrizMecanico READONLY)
AS
BEGIN
	MERGE tblMatrizMecanico as target
   USING @Parametro AS source
   ON( target.IdMaquinado = source.IdMaquinado )
   WHEN NOT MATCHED THEN
	INSERT  (IdMaquinado, IdProyecto, NombreProyecto, NoParte, FechaOC, FechaEntrega, IdDiseno, IdMasterCam, Estatus, IdEncargadoProyecto, IdDisenador, IdQuienHizo, Observaciones, HorasMaquina, CantidadPzas, FechaAlta, FechaTermino, FechaInicio)
	VALUES  ( source.IdMaquinado, source.IdProyecto, source.NombreProyecto, source.NoParte, source.FechaOC, source.FechaEntrega, source.IdDiseno, source.IdMasterCam, source.Estatus, source.IdEncargadoProyecto, source.IdDisenador, source.IdQuienHizo, source.Observaciones, source.HorasMaquina, source.CantidadPzas, source.FechaAlta, source.FechaTermino, source.FechaInicio);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Menu]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <22 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Menu]
	(@Menus AS dbo.Menu READONLY)
AS
BEGIN
	MERGE tblMenu as target
   USING @Menus AS source
   ON( target.Identificador = source.Identificador )
 --  WHEN MATCHED THEN
	--UPDATE SET
	--	target.NombreCompleto = source.NombreCompleto,
	--	target.Usuario = source.Usuario,
	--	target.Contrasena = source.Contrasena,
	--	target.Foto = source.Foto,
	--	target.Permisos = source.Permisos,
	--	target.Puesto = source.Puesto,
	--	target.Telefono = source.Telefono,
	--	target.Correo = source.Correo,
	--	target.FechaAlta = source.FechaAlta,
	--	target.IdUsuarioModificacion = source.IdUsuarioModificacion,
	--	target.FechaModificacion = source.FechaModificacion,
	--	target.Activo = source.Activo,
	--	target.EsLiderProyecto = source.EsLiderProyecto,
	--	target.Perfil = source.Perfil
   WHEN NOT MATCHED THEN
	INSERT  (IdMenu, Identificador, Seccion, Icono, Menu, Accion, Orden, Pagina)
	VALUES  ( source.IdMenu, source.Identificador, source.Seccion, source.Icono, source.Menu, source.Accion, source.Orden, source.Pagina);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_NotaAclaratoria]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_NotaAclaratoria]
	(@Parametro AS dbo.NotaAclaratoria READONLY)
AS
BEGIN
	MERGE tblNotaAclaratoria as target
   USING @Parametro AS source
   ON( target.IdNotasCotizacion = source.IdNotasCotizacion )
   WHEN NOT MATCHED THEN
	INSERT  (IdNotasCotizacion, IdCotizacion, NotaAclaratoria)
	VALUES  ( source.IdNotasCotizacion, source.IdCotizacion, source.NotaAclaratoria);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Permisos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Permisos]
	(@Permisos AS dbo.Permisos READONLY)
AS
BEGIN
	MERGE tblPermisos as target
   USING @Permisos AS source
   ON( target.Identificador = source.Identificador )
 --  WHEN MATCHED THEN
	--UPDATE SET
	--	target.IdPermiso = source.IdPermiso,
	--	target.Identificador = source.Identificador,
	--	target.IdUsuario = source.IdUsuario,
	--	target.IdMenu = source.IdMenu,
	--	target.Visible = source.Visible
   WHEN NOT MATCHED THEN
	INSERT  (IdPermiso, Identificador, IdUsuario, IdMenu, Visible)
	VALUES  ( source.IdPermiso, source.Identificador, source.IdUsuario, source.IdMenu, source.Visible);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Proveedores]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Proveedores]
	(@Parametro AS dbo.Proveedores READONLY)
AS
BEGIN
	MERGE tblProveedores as target
   USING @Parametro AS source
   ON( target.IdProveedor = source.IdProveedor )
   WHEN NOT MATCHED THEN
	INSERT  (IdProveedor, Proveedor, Contacto, Domicilio, Coordenadas, Email, Telefono1, Telefono2, Giro, Comentarios, Imagen, FechaAlta, IdUsuarioAlta, FechaModificacion, IdUsuarioModifica, Activo)
	VALUES  ( source.IdProveedor, source.Proveedor, source.Contacto, source.Domicilio, source.Coordenadas, source.Email, source.Telefono1, source.Telefono2, source.Giro, source.Comentarios, source.Imagen, source.FechaAlta, source.IdUsuarioAlta, source.FechaModificacion, source.IdUsuarioModifica, source.Activo);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Proyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Proyectos]
	(@Parametro AS dbo.Proyectos READONLY)
AS
BEGIN
	MERGE tblProyectos as target
   USING @Parametro AS source
   ON( target.IdProyecto = source.IdProyecto )
   WHEN NOT MATCHED THEN
	INSERT  (IdProyecto, NombreProyecto, Descripcion, IdLider, IdCliente, Estatus, FechaInicio, FechaFin, IdUsuarioAlta, FechaAlta, IdUsuarioModificacion, FechaModificacion, Activo, UserProject1, UserProject2, UserProject3, UserProject4, IdCotizacion, CostoCotizacion)
	VALUES  ( source.IdProyecto, source.NombreProyecto, source.Descripcion, source.IdLider, source.IdCliente, source.Estatus, source.FechaInicio, source.FechaFin, source.IdUsuarioAlta, source.FechaAlta, source.IdUsuarioModificacion, source.FechaModificacion, source.Activo, source.UserProject1, source.UserProject2, source.UserProject3, source.UserProject4, source.IdCotizacion, source.CostoCotizacion);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_ProyectosTaskImagen]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_ProyectosTaskImagen]
	(@Parametro AS dbo.ProyectoTaskImagen READONLY)
AS
BEGIN
	MERGE tblProyectoTaskImagen as target
   USING @Parametro AS source
   ON( target.IdTaskImagen = source.IdTaskImagen )
   WHEN NOT MATCHED THEN
	INSERT  (IdTaskImagen, IdTask, Imagen, Descripcion, [FileName], FileExtension, FileSize, FileContentType, Fecha, IdUsuario)
	VALUES  ( source.IdTaskImagen, source.IdTask, source.Imagen, source.Descripcion, source.[FileName], source.FileExtension, source.FileSize, source.FileContentType, source.Fecha, source.IdUsuario);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_ProyectoTasks]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_ProyectoTasks]
	(@Parametro AS dbo.ProyectoTasks READONLY)
AS
BEGIN
	MERGE tblProyectoTasks as target
   USING @Parametro AS source
   ON( target.IdTask = source.IdTask )
   WHEN NOT MATCHED THEN
	INSERT  (IdTask, IdProyecto, Task, IdUsuario, FechaInicio, FechaFin, Comentarios, Estatus, IdUsuarioAlta, FechaAlta, IdUsuarioModificacion, FechaModificacion, Porcentaje)
	VALUES  ( source.IdTask, source.IdProyecto, source.Task, source.IdUsuario, source.FechaInicio, source.FechaFin, source.Comentarios, source.Estatus, source.IdUsuarioAlta, source.FechaAlta, source.IdUsuarioModificacion, source.FechaModificacion, source.Porcentaje);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_ProyectoTasksComentarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Diciembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_ProyectoTasksComentarios]
	(@Parametro AS dbo.ProyectoTasksComentarios READONLY)
AS
BEGIN
	MERGE tblProyectoTasksComentarios as target
   USING @Parametro AS source
   ON( target.IdTaskComentario = source.IdTaskComentario )
   WHEN NOT MATCHED THEN
	INSERT  (IdTaskComentario, IdTask, IdUsuario, Comentario, Fecha)
	VALUES  ( source.IdTaskComentario, source.IdTask, source.IdUsuario, source.Comentario, source.Fecha);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Usuarios]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <22 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Usuarios]
	(@Usuarios AS dbo.Usuarios READONLY)
AS
BEGIN
	MERGE tblUsuarios as target
   USING @Usuarios AS source
   ON( target.IdUsuario = source.IdUsuario )
 --  WHEN MATCHED THEN
	--UPDATE SET
	--	target.NombreCompleto = source.NombreCompleto,
	--	target.Usuario = source.Usuario,
	--	target.Contrasena = source.Contrasena,
	--	target.Foto = source.Foto,
	--	target.Permisos = source.Permisos,
	--	target.Puesto = source.Puesto,
	--	target.Telefono = source.Telefono,
	--	target.Correo = source.Correo,
	--	target.FechaAlta = source.FechaAlta,
	--	target.IdUsuarioModificacion = source.IdUsuarioModificacion,
	--	target.FechaModificacion = source.FechaModificacion,
	--	target.Activo = source.Activo,
	--	target.EsLiderProyecto = source.EsLiderProyecto,
	--	target.Perfil = source.Perfil
   WHEN NOT MATCHED THEN
	INSERT  (IdUsuario, NombreCompleto, Usuario, Contrasena, Foto, Permisos, Puesto, Telefono, Correo, FechaAlta, IdUsuarioModificacion, FechaModificacion, Activo, EsLiderProyecto, Perfil)
	VALUES  ( source.IdUsuario, source.NombreCompleto, source.Usuario, source.Contrasena, source.Foto, source.Permisos, source.Puesto, source.Telefono, source.Correo, source.FechaAlta, source.IdUsuarioModificacion, source.FechaModificacion, source.Activo, source.EsLiderProyecto, source.Perfil);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_Viaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <17 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_Viaticos]
	(@Viatico AS dbo.Viaticos READONLY)
AS
BEGIN
	MERGE tblViaticos as target
   USING @Viatico AS source
   ON( target.ID = source.ID )
   WHEN MATCHED THEN
	UPDATE SET
		target.IdProyecto = source.IdProyecto,
		target.CantEntregada = source.CantEntregada,
		target.CantGastada = source.CantGastada,
		target.IdUsuario = source.IdUsuario,
		target.Estatus = source.Estatus,
		target.FechaAlta = source.FechaAlta,
		target.FechaCaptura = source.FechaCaptura
   WHEN NOT MATCHED THEN
	INSERT  (ID, IdProyecto, CantEntregada, CantGastada, IdUsuario, Estatus, FechaAlta)
	VALUES  ( source.ID, source.IdProyecto, source.CantEntregada, source.CantGastada, source.IdUsuario, source.Estatus, source.FechaAlta);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Sincronizacion_ViaticosDet]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <21 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Sincronizacion_ViaticosDet]
	(@ViaticoDet AS dbo.ViaticosDet READONLY)
AS
BEGIN
	MERGE tblViaticosDet as target
   USING @ViaticoDet AS source
   ON( target.IdDet = source.IdDet )
   WHEN MATCHED THEN
	UPDATE SET
		target.IdViaticos = source.IdViaticos,
		target.FechaViaticos = source.FechaViaticos,
		target.Gasolina = source.Gasolina,
		target.Desayuno = source.Desayuno,
		target.Comida = source.Comida,
		target.Cena = source.Cena,
		target.Casetas = source.Casetas,
		target.Hotel = source.Hotel,
		target.Transporte = source.Transporte,
		target.Otros = source.Otros,
		target.Descripcion = source.Descripcion
   WHEN NOT MATCHED THEN
	INSERT  (IdDet, IdViaticos, FechaViaticos, Gasolina, Desayuno, Comida, Cena, Casetas, Hotel, Transporte, Otros, Descripcion)
	VALUES  ( source.IdDet, source.IdViaticos, source.FechaViaticos, source.Gasolina, source.Desayuno, source.Comida, source.Cena, source.Casetas, source.Hotel, source.Transporte, source.Otros, source.Descripcion);
END

GO
/****** Object:  StoredProcedure [dbo].[sp_SubeArchivoCotizacion]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <09 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SubeArchivoCotizacion]
	@IdCotizacion AS VARCHAR(150),
	@NombreArchivo As VARCHAR(150),
	@Documento AS VARCHAR(MAX)
AS
BEGIN
	
	IF ((Substring(@NombreArchivo, CharIndex('.', @NombreArchivo), Len(@NombreArchivo))) = '.pdf')
	BEGIN
		UPDATE tblCotizacionNew
		SET NombreArchivoPdf = @NombreArchivo, DocumentoPdf = @Documento
		WHERE IdCotizacion = @IdCotizacion
	END
	
	IF ((Substring(@NombreArchivo, CharIndex('.', @NombreArchivo), Len(@NombreArchivo))) = '.xlsx')
	BEGIN
		UPDATE tblCotizacionNew
		SET NombreArchivoXls = @NombreArchivo, DocumentoXls = @Documento
		WHERE IdCotizacion = @IdCotizacion
	END

	IF ((Substring(@NombreArchivo, CharIndex('.', @NombreArchivo), Len(@NombreArchivo))) = '.xls')
	BEGIN
		UPDATE tblCotizacionNew
		SET NombreArchivoXls = @NombreArchivo, DocumentoXls = @Documento
		WHERE IdCotizacion = @IdCotizacion
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SubeArchivosFacturas]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <09 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SubeArchivosFacturas]
	@IdControlFacturas AS VARCHAR(150),
	@NombreArchivo As VARCHAR(150),
	@Documento AS VARCHAR(MAX)
AS
BEGIN


	IF ((Substring(@NombreArchivo, CharIndex('.', @NombreArchivo), Len(@NombreArchivo))) = '.pdf')
	BEGIN
		UPDATE tblControlFacturas
		SET NombreArchivo = @NombreArchivo, ArchivoFactura = @Documento
		WHERE IdControlFacturas = @IdControlFacturas
	END

	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SubeArchivosProyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <09 de Noviembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_SubeArchivosProyectos]
	@IdProyecto AS VARCHAR(150),
	@NombreArchivo As VARCHAR(150),
	@Documento AS VARCHAR(MAX),
	@Opcion As VARCHAR(5)
AS
BEGIN

	IF @Opcion = 'OC'
	BEGIN
		IF ((Substring(@NombreArchivo, CharIndex('.', @NombreArchivo), Len(@NombreArchivo))) = '.pdf')
		BEGIN
			UPDATE tblProyectos
			SET NombreOC = @NombreArchivo, ArchivoOC = @Documento
			WHERE IdProyecto = @IdProyecto
		END
	END

	IF @Opcion = 'CL'
	BEGIN
		IF ((Substring(@NombreArchivo, CharIndex('.', @NombreArchivo), Len(@NombreArchivo))) = '.pdf')
		BEGIN
			UPDATE tblProyectos
			SET NombreCL = @NombreArchivo, ArchivoCL = @Documento
			WHERE IdProyecto = @IdProyecto
		END
	END

	IF @Opcion = 'FC'
	BEGIN
		IF ((Substring(@NombreArchivo, CharIndex('.', @NombreArchivo), Len(@NombreArchivo))) = '.pdf')
		BEGIN
			UPDATE tblProyectos
			SET NombreFC = @NombreArchivo, ArchivoFC = @Documento
			WHERE IdProyecto = @IdProyecto
		END
	END
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TerminarCapturaHorasHombre]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TerminarCapturaHorasHombre]
	@IdProyecto As VARCHAR(150),
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	
	UPDATE dbo.tblHorasHombre
	SET Activo = 1
	WHERE IdProyecto = @IdProyecto And Activo = 0

END
GO
/****** Object:  StoredProcedure [dbo].[sp_TerminarProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <08 de Agosto del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TerminarProyecto]
	@IdProyecto AS VARCHAR(150),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	UPDATE dbo.tblProyectos
	SET IdUsuarioModificacion = @IdUsuario, FechaModificacion = GETDATE(), FechaTermino = GETDATE(), Estatus = 3, EstatusDesc = 'TERMINADO'
	WHERE IdProyecto = @IdProyecto

END
GO
/****** Object:  StoredProcedure [dbo].[sp_TotalesOC]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Marzo del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TotalesOC]
	@Valor As VARCHAR(150) 
AS
BEGIN
 
	SELECT B.Abreviatura As Moneda, SUM(A.SubTotal) AS SubTotal, SUM(A.IVA) AS IVA, SUM(A.Total) As Total
					FROM tblOrdenCompra A
					INNER JOIN dbo.tblMonedas B
					ON B.IdMoneda = A.IdMoneda
					INNER JOIN dbo.tblProyectos C
					ON C.IdProyecto = A.IdProyecto
					INNER JOIN dbo.tblProveedores D
					ON D.IdProveedor = A.IdProveedor
					INNER JOIN dbo.tblUsuarios E
					ON E.IdUsuario = A.IdUsuario
					Left Outer Join dbo.tblControlFacturas F
					ON F.OrdenCompra = A.Folio
					WHERE A.Estatus != 2 
					GROUP BY Abreviatura

	/*

	OR A.Estatus = ' + Convert(NVARCHAR, @Valor) + ')
	*/
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TotalSinOrden]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <21 de Junio del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TotalSinOrden]
	@Opcion AS INT = 1
AS
BEGIN
	
	SELECT SUM(Total) AS Total, SUM(TotalFacturado) AS TotalFacturado, SUM(TotalSinFactura) AS TotalSinFactura
	FROM (
		SELECT Sum(CostoCotizacion) AS Total, 0 AS TotalFacturado, 0 As TotalSinFactura
		FROM dbo.tblProyectos
		WHERE Activo = 1 And IsNull(NombreOC, '') = ''	

		UNION ALL

		SELECT 0 AS Total, SUM(C.Total) - SUM(D.Total) AS TotalFacturado, Sum(CostoCotizacion) - SUM(C.Total) As TotalSinFactura
		FROM dbo.tblProyectos A
		INNER JOIN dbo.tblClienteContacto B
		ON B.idContacto = A.IdCliente
		LEFT OUTER JOIN (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus != 2 Group By IdProyecto) C
		ON C.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
		Left Outer Join (SELECT IdProyecto, SUM(Total * TipoCambio) AS Total FROM dbo.tblFacturasEmitidas WHERE Estatus = 1 Group By IdProyecto) D
		ON D.IdProyecto = Convert(Nvarchar(150), A.IdProyecto)
		WHERE A.NombreOC != ''

		
	) A

END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCostoProyecto]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateCostoProyecto]
	@IdProyecto AS VARCHAR(150),
	@Costo As DECIMAL(20,2),
	@IdUsuario As VARCHAR(150)
AS
BEGIN
	
	UPDATE dbo.tblProyectos
	SET CostoCotizacion = @Costo, IdUsuarioModificacion = @IdUsuario, FechaModificacion = GETDATE()
	WHERE IdProyecto = @IdProyecto

END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateImagenUsuario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Agosto del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateImagenUsuario]
	@IdUsuario As VARCHAR(150),
	@Imagen AS VARCHAR(MAX)
AS
BEGIN
	
	UPDATE tblUsuarios
	SET Foto = @Imagen
	WHERE IdUsuario = @IdUsuario

END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdatePerfilUsuario]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <26 de Mayo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdatePerfilUsuario]
	@IdUsuario AS VARCHAR(150),
	@Perfil As VARCHAR(MAX)
AS
BEGIN
	
	UPDATE tblUsuarios
	SET Perfil = @Perfil
	WHERE IdUsuario = @IdUsuario

END

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateTask]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <18 de Septiembre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateTask]
	@IdTask AS VARCHAR(150),
	@Task As Varchar(150),
	@IdUsuario AS VARCHAR(150),
	@FechaInicio AS Date,
	@FechaFin As Date,
	@Comentarios AS Varchar(MAX),
	@IdUsuarioAlta AS VARCHAR(150)
AS
BEGIN

	DECLARE @IdProyecto AS VARCHAR(150)

	SET @IdProyecto = (SELECT IdProyecto FROM tblProyectoTasks WHERE IdTask = @IdTask)

	UPDATE [dbo].[tblProyectoTasks]
	SET [Task] = @Task
		,[IdUsuario] = @IdUsuario
		,[FechaInicio] = @FechaInicio
		,[FechaFin] = @FechaFin
		,[Comentarios] = @Comentarios
		,[IdUsuarioModificacion] = @IdUsuarioAlta
		,[FechaModificacion] = GETDATE()
	WHERE IdTask = @IdTask


	DECLARE @IdTaskComentario As VARCHAR(150)

	SET @IdTaskComentario = (SELECT TOP 1 IdTaskComentario FROM tblProyectoTasksComentarios WHERE IdTask = @IdTask ORDER BY IdTask)

	UPDATE tblProyectoTasksComentarios
	SET Comentario = @Comentarios
	WHERE IdTask = @IdTask AND IdTaskComentario = @IdTaskComentario


	UPDATE tblProyectos
	SET FechaInicio = (SELECT MIN(FechaInicio) FROM tblProyectoTasks WHERE IdProyecto = @IdProyecto), FechaFin = (SELECT MAX(FechaFin) FROM tblProyectoTasks WHERE IdProyecto = @IdProyecto)
	Where IdProyecto = @IdProyecto

END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarClienteXId]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Febrero del 2017>
-- Description:	<Obtener los datos del proveedor>
-- =============================================
CREATE PROCEDURE [dbo].[spBuscarClienteXId]
	@IdCliente AS VARCHAR(150)
AS
BEGIN
	

	SELECT RazonSocial, Contacto, Email, Departamento, UsuarioCliente, ContrasenaCliente, TelefonoEmpresa, Celular, Logotipo, Direccion, MapaCoordenadas
	FROM dbo.tblClientes
	WHERE IdCliente = @IdCliente And Activo = 1

END


GO
/****** Object:  StoredProcedure [dbo].[spBuscarContactosXIdProveedor]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <07 de Mayo del 2019>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spBuscarContactosXIdProveedor]
	@IdProveedor AS VARCHAR(150)
AS
BEGIN
	
	SELECT ROW_NUMBER() OVER(Order By NombreContacto) AS ID, NombreContacto, Telefono, Email, Departamento
	FROM dbo.tblProveedoresContactos
	WHERE IdProveedor = @IdProveedor

END
GO
/****** Object:  StoredProcedure [dbo].[spBuscarMaterialXId]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <16 de Febrero del 2017>
-- Description:	<Obtener los datos del proveedor>
-- =============================================
CREATE PROCEDURE [dbo].[spBuscarMaterialXId]
	@IdMaterial AS VARCHAR(150)
AS
BEGIN
	
	SELECT IdMaterial, Codigo, Descripcion, IdCategoria, Buscador, Activo
	FROM tblMateriales
	WHERE IdMaterial = @IdMaterial

END


GO
/****** Object:  StoredProcedure [dbo].[spBuscarProveedorXId]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Febrero del 2017>
-- Description:	<Obtener los datos del proveedor>
-- =============================================
CREATE PROCEDURE [dbo].[spBuscarProveedorXId]
	@IdProveedor AS VARCHAR(150) = '0893ef36-a8a3-42c2-a302-56e97e127c3a'
AS
BEGIN
	
	SELECT A.IdProveedor, Proveedor, Contacto, Domicilio, Coordenadas, Email, Telefono1, Telefono2, Giro, Comentarios, Imagen, NombreComercial, B.Contactos
	FROM dbo.tblProveedores A
	LEFT OUTER JOIN (SELECT IdProveedor, Count(*) AS Contactos FROM dbo.tblProveedoresContactos Group By IdProveedor) B
	ON B.IdProveedor = A.IdProveedor
	WHERE A.IdProveedor = @IdProveedor

END

GO
/****** Object:  StoredProcedure [dbo].[spBuscarUsuarioXId]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <14 de Febrero del 2017>
-- Description:	<Obtener los datos del proveedor>
-- =============================================
CREATE PROCEDURE [dbo].[spBuscarUsuarioXId]
	@IdUsuario AS VARCHAR(150)
AS
BEGIN
	

	SELECT IdUsuario, NombreCompleto, Foto, Puesto, Telefono, Correo, Usuario, Permisos, Perfil, SueldoDiario
	FROM dbo.tblUsuarios
	WHERE IdUsuario = @IdUsuario And Activo = 1

END



GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_CapturaViaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_CapturaViaticos]
	@iDisplayStart int = 1,
	@iDisplayLength int = 10,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@IdUsuario As VARCHAR(150) = '15DFF984-223B-4B00-BA26-FE809065E689'
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = 'ROW_NUMBER() OVER(Order by A.FechaAlta) As ID, IsNull(B.NombreProyecto, ''Otro'') As NombreProyecto, C.NombreCompleto, A.CantEntregada, A.CantGastada, A.Diferencia, A.Estatus, ID As Accion ';

	SET @tablas = ' tblViaticos A
					LEFT OUTER Join dbo.tblProyectos B
					On B.IdProyecto = A.IdProyecto
					Inner Join dbo.tblUsuarios C
					On C.IdUsuario = A.IdUsuario ';

	SET @filtrosPermanentes = ' A.IdUsuario = ' + CHAR(39) + @IdUsuario + CHAR(39) + ' AND IsNull(B.NombreProyecto, ''Otro'') Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) ;

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END



GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Clientes]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <29 de Enero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Clientes]
	@iDisplayStart int = 1,
	@iDisplayLength int = 10,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As int = 1
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = 'ROW_NUMBER() OVER(Order by FechaAlta) As ID, RazonSocial, Contacto, Email, TelefonoEmpresa, Celular, IdCliente As Accion ';

	SET @tablas = ' tblClientes ';

	SET @filtrosPermanentes = ' Activo = 1 AND Contacto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or RazonSocial Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or Email Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or TelefonoEmpresa Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or Celular Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39);

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	--Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END

GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Cotizaciones]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Cotizaciones]
	@iDisplayStart int = 1,
	@iDisplayLength int = 11,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As int = 1
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = ' ROW_NUMBER() OVER(Order by A.FechaAlta DESC) As ID, A.FechaCotizacion, A.NoCotizacion, B.Contacto As Atencion, B.RazonSocial As Empresa, A.Concepto, D.Usuario AS HechaPor, C.Usuario AS EnviadaPor, A.Estatus, A.IdCotizacion, A.NombreArchivoPdf, A.NombreArchivoXls, B.Email, A.CostoCotizacion ';

	SET @tablas = ' tblCotizacionNew A
					Inner Join dbo.tblClientes B
					On B.IdCliente = A.IdCliente
					Inner Join dbo.tblUsuarios C
					On C.IdUsuario = A.IdUsuarioElaboro 
					Inner Join dbo.tblUsuarios D
					On D.IdUsuario = A.IdUsuarioCreo ';

	SET @filtrosPermanentes = ' Concepto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or B.Contacto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or B.RazonSocial Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or C.Usuario Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or A.NoCotizacion Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' Or A.Estatus Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39);

	SET @agregacion = '  ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END


GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Maquinados]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <06 de Octubre del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Maquinados]
	@iDisplayStart int = 1,
	@iDisplayLength int = 10,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As int = 0
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = ' ROW_NUMBER() OVER(Order by A.FechaAlta) As ID, A.IdProyecto, A.NombreProyecto, A.NoParte, Convert(NVarchar, A.FechaOC) As FechaOC, Convert(NVarchar, A.FechaEntrega) As FechaEntrega
						, ltrim(rtrim(C.NombreCompleto)) As EncargadoProyecto, ltrim(rtrim(D.NombreCompleto)) As Disenador, ltrim(rtrim(E.NombreCompleto)) AS QuienHizo, A.HorasMaquina, A.CantidadPzas, A.Estatus, IdMaquinado
						, IsNull(F.[FileName], '''') As NomArchivoDiseno, IsNull(G.[FileName], '''') As NomArchivoMasterCam ';

	SET @tablas = ' dbo.tblMatrizMecanico A
					Inner Join dbo.tblUsuarios C
					On C.IdUsuario = A.IdEncargadoProyecto
					Inner Join dbo.tblUsuarios D
					On D.IdUsuario = A.IdDisenador
					Inner Join dbo.tblUsuarios E
					On E.IdUsuario = A.IdQuienHizo
					Left Outer Join dbo.tblDocDisenosMecanico F
					ON F.IdDiseno = A.IdDiseno
					Left Outer Join dbo.tblDocMasterCamMecanico G
					ON G.IdMasterCam = A.IdMasterCam ';

	SET @filtrosPermanentes = ' A.NombreProyecto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + '';

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END


GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Materiales]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <16 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Materiales]
	@iDisplayStart int = 1,
	@iDisplayLength int = 10,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As int = 1
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = 'ROW_NUMBER() OVER(Order by A.FechaAlta) As ID, Codigo, A.Descripcion, B.Categoria, Marca, C.Descripcion As UnidadMedida, IdMaterial As Accion ';

	SET @tablas = ' tblMateriales A
					Inner Join tblCategoria B
					On B.IdCategoria = A.IdCategoria
					Inner Join tblUnidadMedida C
					On C.IdUnidadMedida = A.IdUnidadMedida ';

	SET @filtrosPermanentes = ' A.Activo = 1 ';

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	--Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END


GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Proveedores]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <13 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Proveedores]
	@iDisplayStart int = 1,
	@iDisplayLength int = 10,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As int = 1
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = 'ROW_NUMBER() OVER(Order by FechaAlta) As ID, NombreComercial, Proveedor, Contacto, Email, Telefono1, Telefono2, IdProveedor As Accion ';

	SET @tablas = ' tblProveedores ';

	SET @filtrosPermanentes = ' Activo = 1 AND (Proveedor Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR NombreComercial Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ')'

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	--Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END

GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Proyectos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Proyectos]
	@iDisplayStart int = 1,
	@iDisplayLength int = 100,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As VARCHAR(150) = '0'
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = 'ROW_NUMBER() OVER(Order by Estatus, A.FechaAlta DESC) As ID,  A.FolioProyecto, NombreProyecto, UPPER(IsNull(C.Contacto, ''N/A'')) As ContactoCliente, UPPER(IsNull(C.RazonSocial, ''N/A'')) As Cliente, UPPER(B.NombreCompleto) AS TeamMembers, Convert(NVarchar, FechaInicio, 106) As FechaInicio
						, Convert(NVarchar, FechaFin, 106) As FechaFin, IdProyecto As Accion, A.Estatus, A.FechaAlta
						/*, CASE WHEN A.FechaTermino Is Null THEN CASE WHEN DATEDIFF(day, FechaInicio, GETDATE()) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, GETDATE()) END ELSE CASE WHEN DATEDIFF(day, FechaInicio, FechaTermino) < 0 THEN 0 ELSE DATEDIFF(day, FechaInicio, FechaTermino) END END As Dias,*/  ';

	SET @tablas = ' tblProyectos A
					Inner Join dbo.tblUsuarios B
					ON B.IdUsuario = A.IdLider 
					Left Outer Join dbo.tblClientes C
					On C.IdCliente = A.IdCliente ';

	SET @filtrosPermanentes = ' A.Activo = 1 AND (A.FolioProyecto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR NombreProyecto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR B.NombreCompleto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR EstatusDesc Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR C.Contacto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR C.RazonSocial Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ')' + CASE WHEN @Opcion = '0' THEN '' ELSE ' AND C.IdCliente = ' + CHAR(39) + @Opcion + CHAR(39) + '' END;

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	ORDER BY Estatus, FechaAlta Desc
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END


GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_ProyectoTasks]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <25 de Marzo del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_ProyectoTasks]
	@iDisplayStart int = 1,
	@iDisplayLength int = 20,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@IdProyecto As VARCHAR(150) = '2d1ec4c6-c13e-49e3-b291-726d4ee8d343'
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = 'ROW_NUMBER() OVER(Order by A.FechaInicio, A.Task) As ID, Task, B.NombreCompleto
				, Convert(NVarchar, FechaInicio) As FechaInicio, Convert(NVarchar, FechaFin) As FechaFin
				, DATEDIFF(dd, FechaInicio, FechaFin) As Dias, CASE WHEN A.Estatus != 2 THEN DATEDIFF(dd, FechaFin, GETDATE()) ELSE DATEDIFF(dd, FechaInicio, FechaFin) END AS DiasTranscurridos, Estatus, Comentarios, IdTask, Porcentaje ';

	SET @tablas = ' tblProyectoTasks A
					Inner Join tblUsuarios B
					On B.IdUsuario = A.IdUsuario ';

	SET @filtrosPermanentes = ' IdProyecto = ' + CHAR(39) + @IdProyecto + CHAR(39) + ' And Task Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) ;

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END


GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Requisiciones]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <02 de Enero del 2018>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Requisiciones]
	@iDisplayStart int = 1,
	@iDisplayLength int = 10,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As int = 0
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = ' ROW_NUMBER() OVER(Order by A.FechaElaboracion) As ID, A.Fecha, A.NoReq, B.NombreProyecto, A.Estatus, A.SolicitarCotizacion, A.RealizarCompra, C.NombreCompleto As Elaboro, IdReqEnc ';

	SET @tablas = ' dbo.tblReqEnc A
					INNER JOIN dbo.tblProyectos B
					ON B.IdProyecto = A.IdProyecto
					INNER JOIN dbo.tblUsuarios C
					ON C.IdUsuario = A.IdUsuarioElaboro ';

	SET @filtrosPermanentes = ' B.NombreProyecto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + '';

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END



GO
/****** Object:  StoredProcedure [dbo].[W_Sp_Pag_Viaticos]    Script Date: 15/07/2021 04:41:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <03 de Febrero del 2017>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[W_Sp_Pag_Viaticos]
	@iDisplayStart int = 1,
	@iDisplayLength int = 10,
	@sSortingCol_delim varchar(max) = ' ',
	@sSortingDir_delim varchar(max) = ' ',
	@iSortingCols int = 1,
	@sSearch varchar(max) = '',
	@sSearchableCol_delim varchar(max)= '',
	@iSearchableCols int = 1,
	@iTotalRecords int OUTPUT,
	@iTotalDisplayRecords int OUTPUT,
	@Opcion As VARCHAR(150) = '0'
AS
BEGIN
	declare @columnas varchar(max);
	declare @tablas varchar(max);
	declare @filtrosPermanentes varchar(max);
	declare @agregacion varchar(max);
	declare @aliasColumnas varchar(max);
	declare @filtrosAdicionales varchar(max);
	declare @indiceSearchableCol varchar(max);
	declare @valInteger varchar(max);
	declare @sSearchableCol varchar(max);
	declare @orden varchar(max);
	declare @SortingCol varchar(max);
	declare @SortingDir varchar(max);
	declare @valASCorDESC varchar(max);
	declare @limite varchar(max);
	declare @countRec varchar(max);
	declare @countTotal NVARCHAR(max);
	declare @consulta varchar(max);
	declare @TotalRecords int;
	DECLARE @ParmDefinition NVARCHAR(500);
	declare @Relacion as varchar(max) ;
	set @Relacion = 'EncVivienda';

	DECLARE @i INT;

	set @i = 0;

	set @iDisplayStart = @iDisplayStart + 1;
	set @iDisplayStart = (@iDisplayStart/@iDisplayLength)+1;

	SET @columnas = 'ROW_NUMBER() OVER(Order by A.FechaAlta) As ID, IsNull(B.NombreProyecto, ''Visitas / Otro'') AS NombreProyecto, C.NombreCompleto, A.CantEntregada, A.CantGastada, A.Diferencia, A.Estatus, ID As Accion ';

	SET @tablas = ' tblViaticos A
					LEFT OUTER Join dbo.tblProyectos B
					On B.IdProyecto = A.IdProyecto
					Inner Join dbo.tblUsuarios C
					On C.IdUsuario = A.IdUsuario ';
	
	IF @sSearch = 'PENDIENTE'
	BEGIN
		SET @filtrosPermanentes = ' (C.NombreCompleto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR IsNull(B.NombreProyecto, ''Otro'') Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ') AND A.Estatus = 0' ;
	END
	ELSE IF @sSearch = 'CAPTURADO'
	BEGIN
		SET @filtrosPermanentes = ' (C.NombreCompleto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR IsNull(B.NombreProyecto, ''Otro'') Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ') AND A.Estatus = 1' ;
	END
	ELSE
	BEGIN
		SET @filtrosPermanentes = ' (C.NombreCompleto Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ' OR IsNull(B.NombreProyecto, ''Otro'') Like ' + CHAR(39) + '%' + @sSearch + '%' + CHAR(39) + ')' ;
	END

	SET @agregacion = ' ';

	SET @aliasColumnas = ' ';

	SET @columnas = 'SELECT ' + @columnas;

	SET @tablas = ' FROM ' + @tablas;

	if @filtrosPermanentes != ''
	begin
		set @filtrosPermanentes = ' WHERE ' + @filtrosPermanentes;
	end

	set @filtrosAdicionales = '';
	
	IF @filtrosPermanentes = '' AND @filtrosAdicionales != '' 
	begin
		SET @filtrosAdicionales = ' WHERE' + @filtrosAdicionales;
	end

	SET @orden = ' ';

	-- IF @iSortingCols > 0 begin
	-- SET @i = 1;
	-- WHILE @i <= @iSortingCols begin
	-- IF @i > 1 begin
	-- SET @orden = @orden + ',';
	-- END
	-- --SET @SortingCol = (select dato from gral_f_split(@sSortingCol_delim,'-') where id = @i);
	-- --SET @SortingDir = (select dato from gral_f_split(@sSortingDir_delim,'-') where id = @i);
	-- SET @valInteger = @SortingCol;
	-- IF lower(@SortingDir) = 'asc' OR lower(@SortingDir) = 'desc' begin
	-- SET @valASCorDESC = 'true';
	--end
	-- else begin
	-- set @valASCorDESC = 'false';
	-- end
	-- if @valInteger > 0 AND @valASCorDESC = 'true' begin
	-- SET @orden = @orden + @SortingCol + ' ' + @SortingDir + ' ';
	-- end
	-- set @i = @i + 1;
	-- END
	-- IF @orden != '' begin
	-- SET @orden = ' ORDER BY ' + @orden;
	-- END
	-- END
	IF @filtrosPermanentes = '' 
	begin
		SET @filtrosPermanentes = ' ';
	END

	IF @filtrosAdicionales = '' 
	begin
		SET @filtrosAdicionales = ' ';
	END

	IF @orden = '' 
	begin
		SET @orden = ' ';
	END

	SET @countRec = N'SELECT @TotalRecords = COUNT(*) OVER () ';
	SET @countTotal = @countRec + @tablas + @filtrosPermanentes;

	DECLARE @InicioPaginacion AS VARCHAR(100) = 'WITH T AS (',
	@FinalPaginacion AS VARCHAR(300) = '
	)
	SELECT *,
	(SELECT COUNT(*) FROM T) AS Registros
	FROM
	T
	WHERE
	ID BETWEEN ('+CAST(@iDisplayStart AS VARCHAR)+'-1)*'+CAST(@iDisplayLength AS VARCHAR)+'+1 AND '+CAST(@iDisplayStart AS VARCHAR)+'*'+CAST(@iDisplayLength AS VARCHAR)+'
	'
	SET @consulta = @InicioPaginacion + @columnas + @tablas + @filtrosPermanentes + @filtrosAdicionales + @agregacion + @FinalPaginacion + @orden;
	
	EXEC(@consulta);
	Print (@consulta);
	SET @ParmDefinition = N'@TotalRecords int OUTPUT';
	
	EXEC sp_executesql @countTotal, @ParmDefinition, @TotalRecords = @TotalRecords OUTPUT;

	-- exec(@countTotal);

	SET @iTotalDisplayRecords = @TotalRecords;

	SET @iTotalRecords = @TotalRecords;
END



GO
USE [master]
GO
ALTER DATABASE [SisaAdmin-Copia] SET  READ_WRITE 
GO
