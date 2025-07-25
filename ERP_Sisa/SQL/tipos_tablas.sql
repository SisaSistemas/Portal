USE [SisaAdmin-Copia]
GO
/****** Object:  UserDefinedTableType [dbo].[Clientes]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[ComentariosProyecto]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[ComentariosProyecto] AS TABLE(
	[IdComentario] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaComentario] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Cotizacion]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[FolioCotizacion]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[FolioCotizacion] AS TABLE(
	[IdFolioCotizacion] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Gastos]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[Habilidades]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[Habilidades] AS TABLE(
	[IdHabilidad] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Habilidad] [varchar](100) NOT NULL,
	[Porcentaje] [decimal](18, 2) NOT NULL,
	[Comentarios] [varchar](max) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ListaPendientes]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[ListaPendientes] AS TABLE(
	[IdListaPendientes] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Pendiente] [varchar](200) NOT NULL,
	[Completado] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaCompletado] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Materiales]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[MatrizMecanico]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[Menu]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[NotaAclaratoria]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[NotaAclaratoria] AS TABLE(
	[IdNotasCotizacion] [uniqueidentifier] NOT NULL,
	[IdCotizacion] [uniqueidentifier] NOT NULL,
	[NotaAclaratoria] [varchar](max) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Permisos]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[Permisos] AS TABLE(
	[IdPermiso] [int] NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[IdMenu] [int] NOT NULL,
	[Visible] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Producto]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[Producto] AS TABLE(
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Precio] [decimal](18, 2) NULL,
	[Eliminado] [bit] NOT NULL,
	[ModificadoEn] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Proveedores]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[Proyectos]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[ProyectoTaskImagen]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[ProyectoTasks]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[ProyectoTasksComentarios]    Script Date: 24/07/2025 02:57:28 a. m. ******/
CREATE TYPE [dbo].[ProyectoTasksComentarios] AS TABLE(
	[IdTaskComentario] [uniqueidentifier] NOT NULL,
	[IdTask] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Usuarios]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[Viaticos]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
/****** Object:  UserDefinedTableType [dbo].[ViaticosDet]    Script Date: 24/07/2025 02:57:28 a. m. ******/
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
