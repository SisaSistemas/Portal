USE [SisaAdmin-Copia]
GO
/****** Object:  Table [dbo].[DateDimension]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[TipoCambio] [decimal](20, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LISTADO ENCUESTAS 2024]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LISTADO ENCUESTAS 2024](
	[Item] [smallint] NULL,
	[Fecha] [date] NULL,
	[Folio] [nvarchar](50) NULL,
	[Nombre_del_Proyecto] [nvarchar](100) NULL,
	[Emp] [nvarchar](50) NULL,
	[Lider_de_Proyecto] [nvarchar](50) NULL,
	[Requisitor] [nvarchar](50) NULL,
	[Departamento] [nvarchar](50) NULL,
	[Doc] [tinyint] NULL,
	[Plan] [tinyint] NULL,
	[Cal] [tinyint] NULL,
	[Seg] [tinyint] NULL,
	[Cost] [tinyint] NULL,
	[Puntuación] [tinyint] NULL,
	[Valor] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mat]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
/****** Object:  Table [dbo].[Mat2]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
/****** Object:  Table [dbo].[Mat3]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
/****** Object:  Table [dbo].[MatUrrea]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
/****** Object:  Table [dbo].[ordencompradet_19092024]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordencompradet_19092024](
	[Folio] [nvarchar](50) NULL,
	[Item] [nvarchar](50) NULL,
	[Codigo] [nvarchar](50) NULL,
	[Descripcion] [varchar](max) NULL,
	[Comentarios] [varchar](max) NULL,
	[Cantidad] [varchar](max) NULL,
	[Unidad] [nvarchar](50) NULL,
	[Precio] [varchar](max) NULL,
	[Importe_sin_iva] [varchar](max) NULL,
	[TiempoEntrega] [nvarchar](50) NULL,
	[CantidadRecibida] [varchar](max) NULL,
	[FechaRecibida] [nvarchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordencompradet_backup]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordencompradet_backup](
	[Folio] [nvarchar](50) NOT NULL,
	[Item] [tinyint] NOT NULL,
	[Codigo] [nvarchar](50) NULL,
	[Descripcion] [varchar](max) NULL,
	[Comentarios] [varchar](max) NULL,
	[Cantidad] [decimal](18, 2) NOT NULL,
	[Unidad] [nvarchar](50) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[Importe_sin_iva] [decimal](18, 2) NOT NULL,
	[TiempoEntrega] [nvarchar](50) NULL,
	[CantidadRecibida] [decimal](18, 2) NOT NULL,
	[FechaRecibida] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos CHEP]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos CHEP](
	[Estatus_Operativo] [float] NOT NULL,
	[Estatus_Financiero] [time](7) NOT NULL,
	[FolioProyecto] [nvarchar](50) NOT NULL,
	[NombreProyecto] [nvarchar](100) NOT NULL,
	[Avance] [float] NOT NULL,
	[Sucursal] [nvarchar](50) NOT NULL,
	[Facturado] [nvarchar](50) NOT NULL,
	[COMENTARIOS] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos_Avances_Excel]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos_Avances_Excel](
	[Folio] [nvarchar](255) NULL,
	[Avance] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_JsonValuesOrdenCompraDet]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_JsonValuesOrdenCompraDet](
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[jsonValue] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblArchivosIngenieria_CCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblArchivosIngenieria_CCM](
	[idArchivosIngenieria_CCM] [uniqueidentifier] NOT NULL,
	[idSolicitudCotizacion] [uniqueidentifier] NOT NULL,
	[File] [varchar](max) NOT NULL,
	[FileName] [varchar](max) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[FileContentType] [varchar](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblArchivosIngenieria_CCM] PRIMARY KEY CLUSTERED 
(
	[idArchivosIngenieria_CCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblArea]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblArea](
	[idArea] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_tblArea] PRIMARY KEY CLUSTERED 
(
	[idArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBancos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBancos](
	[IdBanco] [uniqueidentifier] NOT NULL,
	[Banco] [varchar](100) NOT NULL,
	[Activo] [int] NOT NULL,
 CONSTRAINT [PK_tblBancos] PRIMARY KEY CLUSTERED 
(
	[IdBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBiddingComentario]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBiddingComentario](
	[IdBiddingComentario] [uniqueidentifier] NOT NULL,
	[IdBidding] [uniqueidentifier] NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaComentario] [datetime] NOT NULL,
 CONSTRAINT [PK_tblBiddingComentario] PRIMARY KEY CLUSTERED 
(
	[IdBiddingComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBiddingsArchivos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBiddingsArchivos](
	[IdArchivoBiddings] [uniqueidentifier] NOT NULL,
	[IdBiddingsDet] [uniqueidentifier] NOT NULL,
	[File] [varchar](max) NOT NULL,
	[FileName] [varchar](max) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[FileContentType] [varchar](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblBiddingsArchivos] PRIMARY KEY CLUSTERED 
(
	[IdArchivoBiddings] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBiddingsDet]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBiddingsDet](
	[IdBiddingsDet] [uniqueidentifier] NOT NULL,
	[IdBiddingsEnc] [uniqueidentifier] NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[FolioCotizacionProveedor] [varchar](50) NOT NULL,
	[Concepto] [varchar](500) NOT NULL,
	[CostoCotizacion] [decimal](20, 2) NOT NULL,
	[FechaEntrega] [datetime] NOT NULL,
	[Estatus] [int] NOT NULL,
 CONSTRAINT [PK_tblBiddingsDet] PRIMARY KEY CLUSTERED 
(
	[IdBiddingsDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBiddingsEnc]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBiddingsEnc](
	[IdBiddings] [uniqueidentifier] NOT NULL,
	[FolioBiddings] [varchar](50) NOT NULL,
	[Concepto] [varchar](500) NOT NULL,
	[Planta] [varchar](50) NOT NULL,
	[IdArea] [uniqueidentifier] NOT NULL,
	[FechaLimite] [datetime] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[Estatus] [int] NOT NULL,
	[IdSolicitudCotizacion] [uniqueidentifier] NULL,
	[FolioCotizacion] [varchar](50) NULL,
	[Comentarios] [varchar](max) NULL,
 CONSTRAINT [PK_tblBiddingsEnc] PRIMARY KEY CLUSTERED 
(
	[IdBiddings] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBiddingsFolio]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBiddingsFolio](
	[IdFolioBiddings] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL,
 CONSTRAINT [PK_tblBiddingsFolio] PRIMARY KEY CLUSTERED 
(
	[IdFolioBiddings] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBoletin]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChica]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[FolioOrdenCompra] [varchar](50) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[Archivo] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_tblCajaChica] PRIMARY KEY CLUSTERED 
(
	[IdCajaChica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaCuautitlan]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaCuautitlan](
	[IdCajaChicaCuautitlan] [uniqueidentifier] NOT NULL,
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
	[FolioOrdenCompra] [varchar](50) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[Archivo] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_tblCajaChicaCuautitlan] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaCuautitlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaChihuahua]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaChihuahua](
	[IdCajaChicaChihuahua] [uniqueidentifier] NOT NULL,
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
	[FolioOrdenCompra] [varchar](50) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[Archivo] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_tblCajaChicaChihuahua] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaChihuahua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaDocumentos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaDocumentos](
	[IdDocumentoCC] [uniqueidentifier] NOT NULL,
	[IdCajaChica] [uniqueidentifier] NOT NULL,
	[FileName] [varchar](150) NOT NULL,
	[File] [varchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCajaChicaDocumentos] PRIMARY KEY CLUSTERED 
(
	[IdDocumentoCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaIrapuato]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaIrapuato](
	[IdCajaChicaIrapuato] [uniqueidentifier] NOT NULL,
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
	[FolioOrdenCompra] [varchar](50) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[Archivo] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_tblCajaChicaIrapuato] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaIrapuato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaQueretaro]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaQueretaro](
	[IdCajaChicaQueretaro] [uniqueidentifier] NOT NULL,
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
	[FolioOrdenCompra] [varchar](50) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[Archivo] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_tblCajaChicaQueretaro] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaQueretaro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaSucursal]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaSucursal](
	[IdCajaChicaSucursal] [uniqueidentifier] NOT NULL,
	[IdCajaChica] [uniqueidentifier] NOT NULL,
	[IdSucursal] [uniqueidentifier] NOT NULL,
	[Sucursal] [varchar](150) NOT NULL,
	[Concepto] [varchar](150) NOT NULL,
	[Cargo] [decimal](18, 2) NOT NULL,
	[Abono] [decimal](18, 2) NOT NULL,
	[Fecha] [date] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Estatus] [int] NOT NULL,
	[NombreArchivo] [varchar](150) NOT NULL,
	[Archivo] [varchar](max) NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCajaChicaSucursal] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaSucursalDetalle]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaSucursalDetalle](
	[IdCajaChicaSucursalDetalle] [uniqueidentifier] NOT NULL,
	[IdCajaChicaSucursal] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Concepto] [varchar](150) NOT NULL,
	[CantidadGastada] [decimal](20, 2) NOT NULL,
	[TipoGasto] [varchar](100) NOT NULL,
	[FechaGasto] [date] NOT NULL,
	[Ticket] [varchar](max) NULL,
	[Estatus] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[FechaModifica] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCajaChicaSucursalDetalle] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaSucursalDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaTecate]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaTecate](
	[IdCajaChicaTecate] [uniqueidentifier] NOT NULL,
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
	[FolioOrdenCompra] [varchar](50) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[Archivo] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_tblCajaChicaTecate] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaTecate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCajaChicaUSA]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCajaChicaUSA](
	[IdCajaChicaUsa] [uniqueidentifier] NOT NULL,
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
	[FolioOrdenCompra] [varchar](50) NULL,
	[NombreArchivo] [varchar](150) NULL,
	[Archivo] [varchar](max) NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_tblCajaChicaUSA] PRIMARY KEY CLUSTERED 
(
	[IdCajaChicaUsa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCalendario]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCalProveedor]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCalProveedor](
	[IdCalProveedor] [uniqueidentifier] NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[Calidad] [decimal](18, 2) NOT NULL,
	[Seguridad] [decimal](18, 2) NOT NULL,
	[TiempoEntrega] [decimal](18, 2) NOT NULL,
	[Costos] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tblCalProveedor] PRIMARY KEY CLUSTERED 
(
	[IdCalProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCalRequisitor]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCalRequisitor](
	[IdCalRequisitor] [uniqueidentifier] NOT NULL,
	[IdContacto] [uniqueidentifier] NOT NULL,
	[Planta] [varchar](50) NOT NULL,
	[SolicitudServicios] [int] NOT NULL,
	[ElaboraSOW] [int] NOT NULL,
	[Recorridos] [int] NOT NULL,
	[RevisionesPropuestas] [int] NOT NULL,
	[Layouts] [int] NOT NULL,
	[AlcanceAriba] [int] NOT NULL,
	[EnNombreDe] [int] NOT NULL,
	[CompromisosEmergencia] [int] NOT NULL,
	[IncluirAprobador] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[FechaModifica] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCalRequisitor] PRIMARY KEY CLUSTERED 
(
	[IdCalRequisitor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategoria]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClienteContacto]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[Imagen] [varchar](max) NULL,
	[NombreImagen] [varchar](max) NULL,
	[IdArea] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblClienteContacto] PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClientes]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComentariosCotizacion]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComentariosProyecto]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblControlFacturas]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoCargado]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoCargado](
	[IdCostoIndirecto] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdSucursal] [uniqueidentifier] NOT NULL,
	[EsCCM] [int] NOT NULL,
	[FechaIni] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[CostoCargado] [decimal](20, 2) NOT NULL,
	[Porcentaje] [decimal](20, 2) NOT NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoCargado] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoCuautitlan]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoCuautitlan](
	[IdCostoIndirectoCuautitlan] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoCuautitlan] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoCuautitlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoCuautitlanCCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoCuautitlanCCM](
	[IdCostoIndirectoCuautitlanCCM] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoCuautitlanCCM] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoCuautitlanCCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoChihuahua]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoChihuahua](
	[IdCostoIndirectoChihuahua] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoChihuahua] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoChihuahua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoChihuahuaCCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoChihuahuaCCM](
	[IdCostoIndirectoChihuahuaCCM] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoChihuahuaCCM] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoChihuahuaCCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoGlobal]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoGlobal](
	[IdCostoIndirectoGlobal] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[NominaGlobal] [decimal](20, 2) NOT NULL,
	[ImssGlobal] [decimal](20, 2) NOT NULL,
	[TotalGlobal] [decimal](20, 2) NOT NULL,
	[TotalEmpleadosGlobal] [decimal](20, 2) NOT NULL,
	[InteresGlobal] [decimal](20, 2) NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblCostoIndirectoGlobal] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoGlobal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoGlobalCargado]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoGlobalCargado](
	[IdCostoIndirectoGlobal] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdSucursal] [uniqueidentifier] NOT NULL,
	[EsCCM] [int] NOT NULL,
	[FechaIni] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[CostoCargado] [decimal](20, 2) NOT NULL,
	[Porcentaje] [decimal](20, 2) NOT NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoGlobalCargado] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoGlobal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoHermosillo]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoHermosillo](
	[IdCostoIndirectoHermosillo] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoHermosillo] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoHermosillo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoHermosilloCCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoHermosilloCCM](
	[IdCostoIndirectoHermosilloCCM] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoHermosilloCCM] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoHermosilloCCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoIrapuato]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoIrapuato](
	[IdCostoIndirectoIrapuato] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoIrapuato] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoIrapuato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoIrapuatoCCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoIrapuatoCCM](
	[IdCostoIndirectoIrapuatoCCM] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoIrapuatoCCM] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoIrapuatoCCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoQueretaro]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoQueretaro](
	[IdCostoIndirectoQueretaro] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoQueretaro] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoQueretaro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoQueretaroCCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoQueretaroCCM](
	[IdCostoIndirectoQueretaroCCM] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoQueretaroCCM] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoQueretaroCCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoTecate]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoTecate](
	[IdCostoIndirectoTecate] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoTecate] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoTecate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCostoIndirectoUSA]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCostoIndirectoUSA](
	[IdCostoIndirectoUSA] [uniqueidentifier] NOT NULL,
	[Semana] [int] NOT NULL,
	[FechaIni] [date] NULL,
	[FechaFin] [date] NULL,
	[Nomina] [decimal](20, 2) NOT NULL,
	[Imss] [decimal](20, 2) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[TotalEmpleados] [decimal](20, 2) NOT NULL,
	[GastosAdministrativos] [decimal](20, 2) NOT NULL,
	[ConsumiblesTaller] [decimal](20, 2) NOT NULL,
	[Gasolina] [decimal](20, 2) NOT NULL,
	[EquipoSeguridad] [decimal](20, 2) NOT NULL,
	[InventarioSisa] [decimal](20, 2) NOT NULL,
	[Viaticos] [decimal](20, 2) NOT NULL,
	[Carros] [decimal](20, 2) NOT NULL,
	[Uniformes] [decimal](20, 2) NOT NULL,
	[PerdidaCambiaria] [decimal](20, 2) NOT NULL,
	[UtilidadCambiaria] [decimal](20, 2) NOT NULL,
	[Intereses] [decimal](20, 2) NOT NULL,
	[ComisionesBancarias] [decimal](20, 2) NOT NULL,
	[TotalProyectos] [decimal](20, 2) NULL,
	[TotalCotizado] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 4) NULL,
	[Vacaciones] [decimal](20, 2) NULL,
	[Aguinaldo] [decimal](20, 4) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblCostoIndirectoUSA] PRIMARY KEY CLUSTERED 
(
	[IdCostoIndirectoUSA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCotizaciones]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCotizaciones](
	[IdCotizaciones] [uniqueidentifier] NOT NULL,
	[NoCotizaciones] [varchar](50) NOT NULL,
	[FolioModificacion] [varchar](50) NULL,
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
	[IvaPorcentaje] [decimal](18, 2) NULL,
	[SavingPorcentaje] [decimal](18, 2) NULL,
	[LinkSharepoint] [varchar](max) NULL,
	[VendidoPor] [uniqueidentifier] NULL,
	[Sucursal] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblCotizaciones] PRIMARY KEY CLUSTERED 
(
	[IdCotizaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCotizacionesDet]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCotizacionNew]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCriteriosOC]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCriteriosOC](
	[IdCriterio] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [int] NULL,
	[FechaAlta] [datetime] NULL,
	[IdUsuarioAlta] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblCriteriosOC] PRIMARY KEY CLUSTERED 
(
	[IdCriterio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChat]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChecadas]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChecadas](
	[Id] [uniqueidentifier] NOT NULL,
	[Usuario] [varchar](100) NULL,
	[NombreCompleto] [varchar](100) NULL,
	[FotoEntrada] [varchar](max) NULL,
	[LatitudEntrada] [varchar](100) NULL,
	[AltitudEntrada] [varchar](100) NULL,
	[LongitudEntrada] [varchar](100) NULL,
	[FotoSalida] [varchar](max) NULL,
	[LatitudSalida] [varchar](100) NULL,
	[AltitudSalida] [varchar](100) NULL,
	[LongitudSalida] [varchar](100) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[FechaInsercion] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDatosEmpresa]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocDisenosMecanico]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocMasterCamMecanico]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocProyectos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[IdTask] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblDocProyectos] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEficiencias]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEficienciasDesglose]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEficienciasDesglose](
	[idEficiencia] [int] IDENTITY(1,1) NOT NULL,
	[idProyecto] [varchar](150) NULL,
	[idDocumento] [varchar](150) NULL,
	[Categoria] [varchar](50) NULL,
	[TipoDoc] [varchar](50) NULL,
	[Total] [decimal](20, 2) NULL,
	[Folio] [varchar](50) NULL,
	[FechaDoc] [datetime] NULL,
	[idUsuarioUltimo] [varchar](150) NULL,
 CONSTRAINT [PK_tblEficienciasDesglose] PRIMARY KEY CLUSTERED 
(
	[idEficiencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpresas]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEvaluacionDet]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEvaluacionDet](
	[IdEvaluacionDet] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
	[TipoPregunta] [varchar](100) NOT NULL,
	[IdEvaluacionEnc] [int] NOT NULL,
 CONSTRAINT [PK_tblEvaluacionDet] PRIMARY KEY CLUSTERED 
(
	[IdEvaluacionDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEvaluacionEnc]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEvaluacionEnc](
	[IdEvaluacionEnc] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](250) NOT NULL,
	[Descripcion] [varchar](5000) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_tblEvaluacionEnc] PRIMARY KEY CLUSTERED 
(
	[IdEvaluacionEnc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFacturaEmitidaPagoMultiple]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFacturaEmitidaPagoMultiple](
	[IdFacturaPagoMultiple] [uniqueidentifier] NOT NULL,
	[IdFacturaEmitida] [uniqueidentifier] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[NombreProyecto] [varchar](1000) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblFacturaEmitidaPagoMultiple] PRIMARY KEY CLUSTERED 
(
	[IdFacturaPagoMultiple] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFacturasEmitidas]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[Enviada] [int] NULL,
	[CorreoEnviado] [varchar](200) NULL,
	[FechaPA] [datetime] NULL,
 CONSTRAINT [PK_tblFacturasEmitidas] PRIMARY KEY CLUSTERED 
(
	[IdFacturasEmitidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFacturasModiGlobal]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFacturasModiGlobal](
	[IdGlobal] [uniqueidentifier] NOT NULL,
	[IdFactura] [uniqueidentifier] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblFacturasModiGlobal] PRIMARY KEY CLUSTERED 
(
	[IdGlobal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFacturasXML]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFallas]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioCotizacion]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioOrdenCompra]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioPaquete_CCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFolioPaquete_CCM](
	[IdFolioPaquete] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL,
 CONSTRAINT [PK_tblFolioPaquete_CCM] PRIMARY KEY CLUSTERED 
(
	[IdFolioPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioReq]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioRFQ]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFolioSolicitudCotizacion_CCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFolioSolicitudCotizacion_CCM](
	[IdFolioSolicitudCotizacion] [uniqueidentifier] NOT NULL,
	[Dia] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL,
 CONSTRAINT [PK_tblFolioSolicitudCotizacion_CCM] PRIMARY KEY CLUSTERED 
(
	[IdFolioSolicitudCotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGastos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGPS]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHabilidades]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
/****** Object:  Table [dbo].[tblHorasHombre]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHorasHombre](
	[IdHorasHombre] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Lunes] [decimal](18, 2) NOT NULL,
	[Martes] [decimal](18, 2) NOT NULL,
	[Miercoles] [decimal](18, 2) NOT NULL,
	[Jueves] [decimal](18, 2) NOT NULL,
	[Viernes] [decimal](18, 2) NOT NULL,
	[Sabado] [decimal](18, 2) NOT NULL,
	[Domingo] [decimal](18, 2) NOT NULL,
	[Total]  AS (((((([Lunes]+[Martes])+[Miercoles])+[Jueves])+[Viernes])+[Sabado])+[Domingo]),
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NULL,
 CONSTRAINT [PK_tblHorasHombre] PRIMARY KEY CLUSTERED 
(
	[IdHorasHombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInventario]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInventarioDet]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInvHerramientas]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInvHerramientasDet]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLiderProyecto]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblListaPendientes]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMateriales]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMateriales](
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[NoMaterial] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMaterialesBAK]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMaterialesBAK](
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[NoMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Buscador] [varchar](150) NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMaterialImagen]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMateriasBak]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMateriasBak](
	[IdMaterial] [uniqueidentifier] NOT NULL,
	[NoMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Buscador] [varchar](150) NULL,
	[Activo] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMatrizMecanico]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMenu]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModuloPO]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModuloPO](
	[IdModuloPO] [uniqueidentifier] NOT NULL,
	[Fecha] [date] NOT NULL,
	[FolioPO] [varchar](50) NOT NULL,
	[MarkUP] [int] NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Contacto] [varchar](200) NOT NULL,
	[Comprador] [varchar](200) NOT NULL,
	[NoCotizacion] [varchar](250) NULL,
	[Monto] [decimal](20, 2) NOT NULL,
	[IdMoneda] [uniqueidentifier] NOT NULL,
	[Estatus] [varchar](150) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[Activo] [bit] NULL,
	[FechaEliminado] [datetime] NULL,
	[IdUsuarioEliminado] [uniqueidentifier] NULL,
	[IdSucursal] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblModuloPO] PRIMARY KEY CLUSTERED 
(
	[IdModuloPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModuloPOArchivos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModuloPOArchivos](
	[IdArchivoPO] [uniqueidentifier] NOT NULL,
	[IdModuloPO] [uniqueidentifier] NOT NULL,
	[NombreArchivo] [varchar](200) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[FileContentType] [varchar](100) NOT NULL,
	[Archivo] [varchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblModuloPOArchivos] PRIMARY KEY CLUSTERED 
(
	[IdArchivoPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonedas]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNotaAclaratoria]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompra]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[FolioReq] [varchar](max) NULL,
	[NombreCotProv1] [varchar](150) NULL,
	[ArchivoCotProv1] [varchar](max) NULL,
	[IdProveedorCot1] [varchar](150) NULL,
	[MontoCotProv1] [decimal](18, 2) NULL,
	[UsuarioCotProv1] [varchar](150) NULL,
	[FechaCotProv1] [datetime] NULL,
	[NombreCotProv2] [varchar](150) NULL,
	[ArchivoCotProv2] [varchar](max) NULL,
	[IdProveedorCot2] [varchar](150) NULL,
	[MontoCotProv2] [decimal](18, 2) NULL,
	[UsuarioCotProv2] [varchar](150) NULL,
	[FechaCotProv2] [datetime] NULL,
	[NombreCotProv3] [varchar](150) NULL,
	[ArchivoCotProv3] [varchar](max) NULL,
	[IdProveedorCot3] [varchar](150) NULL,
	[MontoCotProv3] [decimal](18, 2) NULL,
	[UsuarioCotProv3] [varchar](150) NULL,
	[FechaCotProv3] [datetime] NULL,
	[IdCriterio] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblOrdenCompra] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraArchivos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompraArchivos](
	[IdArchivoCotOC] [uniqueidentifier] NOT NULL,
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[NombreArchivo] [varchar](200) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileSize] [varchar](150) NOT NULL,
	[FileContentType] [varchar](100) NOT NULL,
	[Archivo] [varchar](max) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblOrdenCompraArchivos] PRIMARY KEY CLUSTERED 
(
	[IdArchivoCotOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraCambios]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompraCambios](
	[IdOrdenCompraModificada] [uniqueidentifier] NOT NULL,
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[Modificacion] [varchar](500) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_tblOrdenCompraCambios] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompraModificada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraComentarios]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraDet]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraDet_Test]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdenCompraDet_Test](
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
 CONSTRAINT [PK_tblOrdenCompraDet_Test] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompraDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraInsumos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[FolioReq] [varchar](max) NULL,
	[NombreCotProv1] [varchar](150) NULL,
	[ArchivoCotProv1] [varchar](max) NULL,
	[IdProveedorCot1] [varchar](150) NULL,
	[MontoCotProv1] [decimal](18, 2) NULL,
	[UsuarioCotProv1] [varchar](150) NULL,
	[FechaCotProv1] [datetime] NULL,
	[NombreCotProv2] [varchar](150) NULL,
	[ArchivoCotProv2] [varchar](max) NULL,
	[IdProveedorCot2] [varchar](150) NULL,
	[MontoCotProv2] [decimal](18, 2) NULL,
	[UsuarioCotProv2] [varchar](150) NULL,
	[FechaCotProv2] [datetime] NULL,
	[NombreCotProv3] [varchar](150) NULL,
	[ArchivoCotProv3] [varchar](max) NULL,
	[IdProveedorCot3] [varchar](150) NULL,
	[MontoCotProv3] [decimal](18, 2) NULL,
	[UsuarioCotProv3] [varchar](150) NULL,
	[FechaCotProv3] [datetime] NULL,
	[IdCriterio] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblOrdenCompraInsumos] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenCompraNota]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdenTrabajo]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
/****** Object:  Table [dbo].[tblPagosFacturasOrdenes]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPagosFacturasOrdenes](
	[IdPago] [uniqueidentifier] NOT NULL,
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[FechaPago] [date] NOT NULL,
	[Pago] [decimal](20, 2) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[IdBanco] [uniqueidentifier] NULL,
	[FolioFactura] [varchar](100) NULL,
 CONSTRAINT [PK_tblPagosFacturasOrdenes] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPagosMultiples]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPagosMultiples](
	[IdOrdenCompra] [uniqueidentifier] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[NombreProyecto] [varchar](1000) NOT NULL,
	[Total] [decimal](20, 2) NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblPagosMultiples] PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaqueteDet_CCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaqueteDet_CCM](
	[IdPaqueteDet] [uniqueidentifier] NOT NULL,
	[IdCotizaciones] [uniqueidentifier] NOT NULL,
	[IdPaqueteEnc] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblPaqueteDet_CCM] PRIMARY KEY CLUSTERED 
(
	[IdPaqueteDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaqueteEnc_CCM]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaqueteEnc_CCM](
	[IdPaqueteEnc] [uniqueidentifier] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
	[FechaCreado] [datetime] NOT NULL,
	[Descuento] [decimal](18, 0) NULL,
	[IdUsuarioDescuento] [uniqueidentifier] NULL,
	[FechaDescuento] [datetime] NULL,
	[IdClienteModifica] [uniqueidentifier] NULL,
	[FechaModifica] [datetime] NULL,
 CONSTRAINT [PK_tblPaqueteEnc_CCM] PRIMARY KEY CLUSTERED 
(
	[IdPaqueteEnc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPermisos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedores]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[Usuario] [varchar](50) NULL,
	[Contrasena] [varchar](50) NULL,
	[CapFinanciera] [decimal](18, 2) NULL,
	[PerfilEmpresa] [varchar](150) NULL,
 CONSTRAINT [PK_tblProveedores] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedoresContactos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedorMaterial]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedorMaterialBAK]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProveedorMaterialBAK](
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
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoRequerimiento]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[LinkSharepoint] [varchar](max) NULL,
	[IdSucursal] [uniqueidentifier] NULL,
	[FolioPO] [varchar](50) NULL,
	[Avance] [int] NULL,
	[IdUsuarioFinaliza] [uniqueidentifier] NULL,
	[IdUsuarioAvance] [uniqueidentifier] NULL,
	[EsCCM] [int] NULL,
	[IdModuloPO] [uniqueidentifier] NULL,
	[IdUsuarioEstatus] [uniqueidentifier] NULL,
	[FechaEstatus] [datetime] NULL,
 CONSTRAINT [PK_tblProyectos] PRIMARY KEY CLUSTERED 
(
	[IdProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosBK]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
/****** Object:  Table [dbo].[tblProyectosGastos]    Script Date: 24/07/2025 02:53:32 a. m. ******/
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
	[FolioPO] [varchar](150) NULL,
	[Sucursal] [varchar](100) NULL,
	[Pagos] [decimal](20, 2) NULL,
	[Avance] [int] NULL,
	[CostoCargado] [decimal](20, 2) NULL,
 CONSTRAINT [PK_tblProyectosGastos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosGastosEficiencias]    Script Date: 24/07/2025 02:53:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosGastosEficiencias](
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[NombreProyecto] [varchar](100) NULL,
	[Gastos] [decimal](20, 2) NULL,
	[Proyeccion] [decimal](20, 2) NULL,
	[Sucursal] [varchar](100) NULL,
	[FolioProyecto] [varchar](100) NULL,
	[Estatus] [varchar](50) NULL,
	[Resultado] [decimal](20, 2) NULL,
	[Cotizaco] [decimal](20, 2) NULL,
	[ProyectadoMO] [decimal](20, 2) NULL,
	[GastosMO] [decimal](20, 2) NULL,
	[ProyectadoE] [decimal](20, 2) NULL,
	[GastadoE] [decimal](20, 2) NULL,
	[ProyectadoM] [decimal](20, 2) NULL,
	[GastosM] [decimal](20, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosGastosReporte]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosGastosReporte](
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[Gastos] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosInsumos]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosInsumos](
	[IdProyectoInsumos] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Activo] [int] NOT NULL,
	[IdSucursal] [uniqueidentifier] NULL,
	[EsCCM] [int] NULL,
	[EsCarro] [int] NULL,
 CONSTRAINT [PK_tblProyectosInsumos] PRIMARY KEY CLUSTERED 
(
	[IdProyectoInsumos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosLuisCarlos]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosLuisCarlos](
	[IdProyecto] [varchar](150) NOT NULL,
	[FolioProyecto] [varchar](50) NULL,
	[NombreProyecto] [varchar](100) NULL,
	[CostoCotizacion] [decimal](20, 2) NULL,
	[TotalGastos] [decimal](20, 2) NULL,
	[Utilidad] [decimal](20, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosProyeccionFinancieraReporte]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosProyeccionFinancieraReporte](
	[Estatus_Operativo] [decimal](32, 6) NULL,
	[Estatus_Financiero] [decimal](38, 18) NULL,
	[FechaCreacion] [datetime] NULL,
	[FolioProyecto] [varchar](50) NULL,
	[NombreProyecto] [varchar](100) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[Duracion] [int] NULL,
	[CostoCotizacion] [decimal](20, 2) NULL,
	[Monto_Proyectado] [float] NULL,
	[Utilidad_Proyectada] [float] NULL,
	[Porcentaje_Utilidad_Proyectada] [float] NULL,
	[Gasto_Real] [decimal](20, 2) NULL,
	[Utilidad_Real] [decimal](25, 2) NULL,
	[Porcentaje_Utilidad_Real] [decimal](38, 13) NULL,
	[Eficiencia] [float] NULL,
	[Pagado] [decimal](20, 2) NULL,
	[Avance] [int] NOT NULL,
	[str10] [decimal](20, 2) NOT NULL,
	[str20] [decimal](20, 2) NOT NULL,
	[str30] [decimal](20, 2) NOT NULL,
	[str40] [decimal](20, 2) NOT NULL,
	[str50] [decimal](20, 2) NOT NULL,
	[str60] [decimal](20, 2) NOT NULL,
	[str70] [decimal](20, 2) NOT NULL,
	[str80] [decimal](20, 2) NOT NULL,
	[str90] [decimal](20, 2) NOT NULL,
	[str100] [decimal](20, 2) NOT NULL,
	[Semana1] [decimal](20, 2) NOT NULL,
	[Semana2] [decimal](20, 2) NOT NULL,
	[Semana3] [decimal](20, 2) NOT NULL,
	[Semana4] [decimal](20, 2) NOT NULL,
	[Semana5] [decimal](20, 2) NOT NULL,
	[Semana6] [decimal](20, 2) NOT NULL,
	[Semana7] [decimal](20, 2) NOT NULL,
	[Semana8] [decimal](20, 2) NOT NULL,
	[Semana9] [decimal](20, 2) NOT NULL,
	[Semana10] [decimal](20, 2) NOT NULL,
	[Semana11] [decimal](20, 2) NOT NULL,
	[Semana12] [decimal](20, 2) NOT NULL,
	[Semana13] [decimal](20, 2) NOT NULL,
	[Semana14] [decimal](20, 2) NOT NULL,
	[Semana15] [decimal](20, 2) NOT NULL,
	[Semana16] [decimal](20, 2) NOT NULL,
	[Semana17] [decimal](20, 2) NOT NULL,
	[Semana18] [decimal](20, 2) NOT NULL,
	[Semana19] [decimal](20, 2) NOT NULL,
	[Semana20] [decimal](20, 2) NOT NULL,
	[Semana21] [decimal](20, 2) NOT NULL,
	[Semana22] [decimal](20, 2) NOT NULL,
	[Semana23] [decimal](20, 2) NOT NULL,
	[Semana24] [decimal](20, 2) NOT NULL,
	[Semana25] [decimal](20, 2) NOT NULL,
	[Semana26] [decimal](20, 2) NOT NULL,
	[Semana27] [decimal](20, 2) NOT NULL,
	[Semana28] [decimal](20, 2) NOT NULL,
	[Semana29] [decimal](20, 2) NOT NULL,
	[Semana30] [decimal](20, 2) NOT NULL,
	[Semana31] [decimal](20, 2) NOT NULL,
	[Semana32] [decimal](20, 2) NOT NULL,
	[Semana33] [decimal](20, 2) NOT NULL,
	[Semana34] [decimal](20, 2) NOT NULL,
	[Semana35] [decimal](20, 2) NOT NULL,
	[Semana36] [decimal](20, 2) NOT NULL,
	[Semana37] [decimal](20, 2) NOT NULL,
	[Semana38] [decimal](20, 2) NOT NULL,
	[Semana39] [decimal](20, 2) NOT NULL,
	[Semana40] [decimal](20, 2) NOT NULL,
	[Semana41] [decimal](20, 2) NOT NULL,
	[Semana42] [decimal](20, 2) NOT NULL,
	[Semana43] [decimal](20, 2) NOT NULL,
	[Semana44] [decimal](20, 2) NOT NULL,
	[Semana45] [decimal](20, 2) NOT NULL,
	[Semana46] [decimal](20, 2) NOT NULL,
	[Semana47] [decimal](20, 2) NOT NULL,
	[Semana48] [decimal](20, 2) NOT NULL,
	[Semana49] [decimal](20, 2) NOT NULL,
	[Semana50] [decimal](20, 2) NOT NULL,
	[Semana51] [decimal](20, 2) NOT NULL,
	[Semana52] [decimal](20, 2) NOT NULL,
	[Semana53] [decimal](20, 2) NOT NULL,
	[Semana54] [decimal](20, 2) NOT NULL,
	[Sucursal] [varchar](100) NULL,
	[Facturado] [decimal](20, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectosProyFinanciera]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProyectosProyFinanciera](
	[IdProyeccionFinanciera] [uniqueidentifier] NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[str10] [decimal](20, 2) NOT NULL,
	[str20] [decimal](20, 2) NOT NULL,
	[str30] [decimal](20, 2) NOT NULL,
	[str40] [decimal](20, 2) NOT NULL,
	[str50] [decimal](20, 2) NOT NULL,
	[str60] [decimal](20, 2) NOT NULL,
	[str70] [decimal](20, 2) NOT NULL,
	[str80] [decimal](20, 2) NOT NULL,
	[str90] [decimal](20, 2) NOT NULL,
	[str100] [decimal](20, 2) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[strFecha10] [date] NULL,
	[strFecha20] [date] NULL,
	[strFecha30] [date] NULL,
	[strFecha40] [date] NULL,
	[strFecha50] [date] NULL,
	[strFecha60] [date] NULL,
	[strFecha70] [date] NULL,
	[strFecha80] [date] NULL,
	[strFecha90] [date] NULL,
	[strFecha100] [date] NULL,
 CONSTRAINT [PK_tblProyectosProyFinanciera] PRIMARY KEY CLUSTERED 
(
	[IdProyeccionFinanciera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoTaskImagen]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoTasks]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProyectoTasksBK]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
/****** Object:  Table [dbo].[tblProyectoTasksComentarios]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPruebas]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPruebas](
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[FolioProyecto] [varchar](50) NULL,
	[NombreProyecto] [varchar](100) NULL,
	[CostoCotizacion] [decimal](20, 2) NULL,
	[Estatus] [varchar](10) NULL,
	[Gastos] [decimal](20, 2) NOT NULL,
	[Utilidad] [decimal](20, 2) NOT NULL,
	[FechaAlta] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRecuperaciones]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReqDet]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReqEnc]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRequisicion]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRespuestaEval]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRespuestaEval](
	[IdRespuestaEval] [int] IDENTITY(1,1) NOT NULL,
	[IdProyecto] [uniqueidentifier] NOT NULL,
	[IdEvaluacionDet] [int] NOT NULL,
	[OpcionRespuesta] [varchar](50) NULL,
	[Observaciones] [varchar](max) NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_tblRespuestaEval] PRIMARY KEY CLUSTERED 
(
	[IdRespuestaEval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRFQ]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRFQDet]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRfqSeguimiento]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRfqVentas]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRolesContactos]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRolesContactos](
	[IdRolContacto] [uniqueidentifier] NOT NULL,
	[IdContacto] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Cotizaciones] [int] NOT NULL,
	[CotizacionesAgregar] [int] NOT NULL,
	[CotizacionesEditar] [int] NOT NULL,
	[CotizacionesEliminar] [int] NOT NULL,
	[Proyectos] [int] NOT NULL,
	[Paquetes] [int] NOT NULL,
	[PaquetesAgregar] [int] NOT NULL,
	[PaquetesEditar] [int] NOT NULL,
	[PaquetesEliminar] [int] NOT NULL,
	[Biddings] [int] NOT NULL,
	[BiddingsAgregar] [int] NOT NULL,
	[BiddingsEditar] [int] NOT NULL,
	[BiddingsEliminar] [int] NOT NULL,
	[ActivaSitio] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[FechaModifica] [datetime] NOT NULL,
 CONSTRAINT [PK_tblRolesContactos] PRIMARY KEY CLUSTERED 
(
	[IdRolContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRolesProveedores]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRolesProveedores](
	[IdRolProveedor] [uniqueidentifier] NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[Biddings] [bit] NOT NULL,
	[BiddingsAgregar] [bit] NOT NULL,
	[BiddingsEditar] [bit] NOT NULL,
	[BiddingsEliminar] [bit] NOT NULL,
	[ActivaSitio] [bit] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModifica] [uniqueidentifier] NOT NULL,
	[FechaModifica] [datetime] NOT NULL,
 CONSTRAINT [PK_tblRolesProveedores] PRIMARY KEY CLUSTERED 
(
	[IdRolProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRolesUsuarios]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
	[Boletines] [bit] NULL,
	[ServiciosCarro] [bit] NOT NULL,
	[Inventario] [bit] NOT NULL,
	[ServiciosComputo] [bit] NOT NULL,
	[FacturasEmitidas] [bit] NULL,
	[Reportes] [bit] NULL,
	[rptOrdenCompra] [bit] NULL,
	[rptFacturasRecibidas] [bit] NULL,
	[rptFacturasEmitidas] [bit] NULL,
	[rptProyectos] [bit] NULL,
	[rptCotizaciones] [bit] NULL,
	[rptProyectosGastos] [bit] NULL,
	[rptProveedoresPagar] [bit] NULL,
	[FacRecibidas] [bit] NOT NULL,
	[FacRecibidasAgregar] [bit] NULL,
	[FacRecibidasEditar] [bit] NULL,
	[FacRecibidasEliminar] [bit] NULL,
	[FacEmitidas] [bit] NOT NULL,
	[FacEmitidasAgregar] [bit] NULL,
	[FacEmitidasEditar] [bit] NULL,
	[FacEmitidasEliminar] [bit] NULL,
	[rptEficiencias] [bit] NULL,
	[Savings] [bit] NOT NULL,
	[ModuloPO] [bit] NULL,
	[CostoIndirecto] [bit] NULL,
	[CajaChicaSucursal] [bit] NULL,
	[CajaChicaSucursalAgregar] [bit] NULL,
	[CajaChicaSucursalEditar] [bit] NULL,
	[CajaChicaSucursalEliminar] [bit] NULL,
	[rptMonitor] [bit] NULL,
	[CajaChicaCuautitlan] [bit] NULL,
	[CajaChicaChihuahua] [bit] NULL,
	[CajaChicaUSA] [bit] NULL,
	[CajaChicaIrapuato] [bit] NULL,
	[CajaChicaQueretaro] [bit] NULL,
	[CajaChicaTecate] [bit] NULL,
 CONSTRAINT [PK_tblRolesUsuarios] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSavings]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSavings](
	[IdSavings] [uniqueidentifier] NOT NULL,
	[FolioSavings] [varchar](50) NULL,
	[IdProyecto] [uniqueidentifier] NULL,
	[FolioProyecto] [varchar](50) NULL,
	[NombreProyecto] [varchar](150) NULL,
	[IdCotizaciones] [uniqueidentifier] NULL,
	[NoCotizaciones] [varchar](150) NULL,
	[NombreOC] [varchar](150) NULL,
	[TipoAhorro] [varchar](150) NULL,
	[Monto] [decimal](18, 2) NULL,
	[Mes] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[IdEmpresa] [uniqueidentifier] NULL,
 CONSTRAINT [PK_tblSavings] PRIMARY KEY CLUSTERED 
(
	[IdSavings] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServicioComputo]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServiciosComputo]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolicitudCotizacion_CCM]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSolicitudCotizacion_CCM](
	[idSolicitudCotizacion] [uniqueidentifier] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Requisitor] [uniqueidentifier] NOT NULL,
	[NombreRequisitor] [varchar](200) NOT NULL,
	[CDSID] [varchar](200) NULL,
	[Telefono] [varchar](100) NULL,
	[idArea] [uniqueidentifier] NOT NULL,
	[Objetivo] [varchar](200) NOT NULL,
	[Resumen] [varchar](2000) NULL,
	[FechaVisita] [date] NOT NULL,
	[HoraVisita] [time](7) NOT NULL,
	[FechaEntrega] [datetime] NULL,
	[UbicacionTrabajo] [varchar](300) NOT NULL,
	[Estatus] [int] NULL,
	[FechaActualizaEntrega] [datetime] NULL,
	[IdUsuarioPM] [uniqueidentifier] NULL,
	[PlantaCCM] [varchar](50) NULL,
	[Tipo] [varchar](200) NULL,
	[TipoCotizacion] [varchar](50) NULL,
	[FolioTipo] [varchar](50) NULL,
 CONSTRAINT [PK_tblSolicitudCotizacion_CCM] PRIMARY KEY CLUSTERED 
(
	[idSolicitudCotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSolicitudesAprobacion]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubMenu]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSucursales]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSucursales](
	[idSucursa] [uniqueidentifier] NOT NULL,
	[CiudadSucursal] [varchar](50) NOT NULL,
	[DireccionSucursal] [varchar](250) NOT NULL,
	[ColoniaSucursal] [varchar](100) NULL,
	[CPSucursal] [varchar](50) NULL,
	[TelefonoSucursal] [varchar](50) NOT NULL,
	[TIMESTAMP] [datetime] NULL,
	[Estatus] [bit] NULL,
	[Gerente] [varchar](150) NULL,
 CONSTRAINT [PK_tblSucursales] PRIMARY KEY CLUSTERED 
(
	[idSucursa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTeamProject]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTimmingProyecto]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
/****** Object:  Table [dbo].[tblUnidadMedida]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuarios]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
	[EsCCM] [int] NULL,
	[PuestoCCM] [varchar](50) NULL,
	[AreaCCM] [varchar](50) NULL,
	[PlantaCCM] [varchar](50) NULL,
 CONSTRAINT [PK_tblUsuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuariosBK]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
/****** Object:  Table [dbo].[tblUsuariosCCM]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuariosCCM](
	[IdUserCCM] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[Area] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblUsuariosCCM] PRIMARY KEY CLUSTERED 
(
	[IdUserCCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuarioSucursal]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuarioSucursal](
	[IdUsuarioSucursal] [uniqueidentifier] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[IdSucursal] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_tblUsuarioSucursal] PRIMARY KEY CLUSTERED 
(
	[IdUsuarioSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehiculos]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehiculoServicio]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehiculoServicioItem]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblViaticos]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
	[Concepto] [varchar](max) NULL,
	[Comentarios] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblViaticos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblViaticosDet]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblViaticosDetCantEntregada]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblViaticosDetCantEntregada](
	[IdViaticosDetCantEntregada] [uniqueidentifier] NOT NULL,
	[IdViaticos] [uniqueidentifier] NOT NULL,
	[Cantidad] [decimal](18, 2) NOT NULL,
	[Activo] [int] NOT NULL,
	[IdUsuarioAlta] [uniqueidentifier] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[IdUsuarioModificacion] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[IdUsuarioElimina] [uniqueidentifier] NOT NULL,
	[FechaElimina] [datetime] NOT NULL,
 CONSTRAINT [PK_tblViaticosDetCantEntregada] PRIMARY KEY CLUSTERED 
(
	[IdViaticosDetCantEntregada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblViaticosDetImagenes]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilidad]    Script Date: 24/07/2025 02:53:33 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UtilidadPastel]    Script Date: 24/07/2025 02:53:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UtilidadPastel](
	[Nombre] [varchar](100) NULL,
	[Dato] [decimal](20, 2) NULL,
	[Porcentaje] [decimal](20, 2) NULL,
	[idU] [int] IDENTITY(1,1) NOT NULL,
	[DatoSinIva] [decimal](20, 2) NULL,
	[PorcentajeSinIva] [decimal](20, 2) NULL,
 CONSTRAINT [PK_UtilidadPastel] PRIMARY KEY CLUSTERED 
(
	[idU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_Eliminado]  DEFAULT ((0)) FOR [Eliminado]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_ModificadoEn]  DEFAULT (getdate()) FOR [ModificadoEn]
GO
ALTER TABLE [dbo].[tblArchivosIngenieria_CCM] ADD  CONSTRAINT [DF_tblArchivosIngenieria_CCM_idArchivosIngenieria_CCM]  DEFAULT (newid()) FOR [idArchivosIngenieria_CCM]
GO
ALTER TABLE [dbo].[tblArea] ADD  CONSTRAINT [DF_tblArea_idArea]  DEFAULT (newid()) FOR [idArea]
GO
ALTER TABLE [dbo].[tblArea] ADD  CONSTRAINT [DF_tblArea_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[tblBancos] ADD  CONSTRAINT [DF_tblBancos_IdBanco]  DEFAULT (newid()) FOR [IdBanco]
GO
ALTER TABLE [dbo].[tblBancos] ADD  CONSTRAINT [DF_tblBancos_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[tblBiddingComentario] ADD  CONSTRAINT [DF_tblBiddingComentario_IdBiddingComentario]  DEFAULT (newid()) FOR [IdBiddingComentario]
GO
ALTER TABLE [dbo].[tblBiddingsArchivos] ADD  CONSTRAINT [DF_tblBiddingsArchivos_IdArchivoBiddings]  DEFAULT (newid()) FOR [IdArchivoBiddings]
GO
ALTER TABLE [dbo].[tblBiddingsDet] ADD  CONSTRAINT [DF_tblBiddingsDet_IdBiddingsDet]  DEFAULT (newid()) FOR [IdBiddingsDet]
GO
ALTER TABLE [dbo].[tblBiddingsEnc] ADD  CONSTRAINT [DF_tblBiddingsEnc_IdBiddings]  DEFAULT (newid()) FOR [IdBiddings]
GO
ALTER TABLE [dbo].[tblBiddingsFolio] ADD  CONSTRAINT [DF_tblBiddingsFolio_IdFolioBiddings]  DEFAULT (newid()) FOR [IdFolioBiddings]
GO
ALTER TABLE [dbo].[tblCajaChica] ADD  CONSTRAINT [DF_tblCajaChica_IdCajaChica]  DEFAULT (newid()) FOR [IdCajaChica]
GO
ALTER TABLE [dbo].[tblCajaChica] ADD  CONSTRAINT [DF_tblCajaChica_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChica] ADD  CONSTRAINT [DF_tblCajaChica_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCajaChicaCuautitlan] ADD  CONSTRAINT [DF_Table_1_IdCajaChica_1]  DEFAULT (newid()) FOR [IdCajaChicaCuautitlan]
GO
ALTER TABLE [dbo].[tblCajaChicaCuautitlan] ADD  CONSTRAINT [DF_tblCajaChicaCuautitlan_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChicaCuautitlan] ADD  CONSTRAINT [DF_tblCajaChicaCuautitlan_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCajaChicaChihuahua] ADD  CONSTRAINT [DF_Table_1_IdCajaChica_3]  DEFAULT (newid()) FOR [IdCajaChicaChihuahua]
GO
ALTER TABLE [dbo].[tblCajaChicaChihuahua] ADD  CONSTRAINT [DF_tblCajaChicaChihuahua_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChicaChihuahua] ADD  CONSTRAINT [DF_tblCajaChicaChihuahua_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCajaChicaDocumentos] ADD  CONSTRAINT [DF_tblCajaChicaDocumentos_IdDocumentoCC]  DEFAULT (newid()) FOR [IdDocumentoCC]
GO
ALTER TABLE [dbo].[tblCajaChicaDocumentos] ADD  CONSTRAINT [DF_tblCajaChicaDocumentos_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[tblCajaChicaIrapuato] ADD  CONSTRAINT [DF_Table_1_IdCajaChica_2]  DEFAULT (newid()) FOR [IdCajaChicaIrapuato]
GO
ALTER TABLE [dbo].[tblCajaChicaIrapuato] ADD  CONSTRAINT [DF_tblCajaChicaIrapuato_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChicaIrapuato] ADD  CONSTRAINT [DF_tblCajaChicaIrapuato_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCajaChicaQueretaro] ADD  CONSTRAINT [DF_Table_1_IdCajaChica]  DEFAULT (newid()) FOR [IdCajaChicaQueretaro]
GO
ALTER TABLE [dbo].[tblCajaChicaQueretaro] ADD  CONSTRAINT [DF_tblCajaChicaQueretaro_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChicaQueretaro] ADD  CONSTRAINT [DF_tblCajaChicaQueretaro_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCajaChicaSucursal] ADD  CONSTRAINT [DF_tblCajaChicaSucursal_IdCajaChicaSucursal]  DEFAULT (newid()) FOR [IdCajaChicaSucursal]
GO
ALTER TABLE [dbo].[tblCajaChicaSucursal] ADD  CONSTRAINT [DF_tblCajaChicaSucursal_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChicaSucursal] ADD  CONSTRAINT [DF_tblCajaChicaSucursal_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCajaChicaSucursalDetalle] ADD  CONSTRAINT [DF_tblCajaChicaSucursalDetalle_IdCajaChicaSucursalDetalle]  DEFAULT (newid()) FOR [IdCajaChicaSucursalDetalle]
GO
ALTER TABLE [dbo].[tblCajaChicaTecate] ADD  CONSTRAINT [DF_Table_1_IdCajaChica_4]  DEFAULT (newid()) FOR [IdCajaChicaTecate]
GO
ALTER TABLE [dbo].[tblCajaChicaTecate] ADD  CONSTRAINT [DF_tblCajaChicaTecate_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChicaTecate] ADD  CONSTRAINT [DF_tblCajaChicaTecate_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCajaChicaUSA] ADD  CONSTRAINT [DF_Table_1_IdCajaChica_5]  DEFAULT (newid()) FOR [IdCajaChicaUsa]
GO
ALTER TABLE [dbo].[tblCajaChicaUSA] ADD  CONSTRAINT [DF_tblCajaChicaUSA_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblCajaChicaUSA] ADD  CONSTRAINT [DF_tblCajaChicaUSA_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblCalendario] ADD  CONSTRAINT [DF_tblCalendario_Id]  DEFAULT (newid()) FOR [IdCalendario]
GO
ALTER TABLE [dbo].[tblCalProveedor] ADD  CONSTRAINT [DF_tblCalProveedor_IdCalProveedor]  DEFAULT (newid()) FOR [IdCalProveedor]
GO
ALTER TABLE [dbo].[tblCalRequisitor] ADD  CONSTRAINT [DF_tblCalRequisitor_IdCalRequisitor]  DEFAULT (newid()) FOR [IdCalRequisitor]
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
ALTER TABLE [dbo].[tblCostoIndirectoCargado] ADD  CONSTRAINT [DF_tblCostoIndirectoCargado_IdCostoIndirecto]  DEFAULT (newid()) FOR [IdCostoIndirecto]
GO
ALTER TABLE [dbo].[tblCostoIndirectoCuautitlan] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoIrapuato_1]  DEFAULT (newid()) FOR [IdCostoIndirectoCuautitlan]
GO
ALTER TABLE [dbo].[tblCostoIndirectoCuautitlanCCM] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoCuautitlan]  DEFAULT (newid()) FOR [IdCostoIndirectoCuautitlanCCM]
GO
ALTER TABLE [dbo].[tblCostoIndirectoChihuahua] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoHermosillo_1]  DEFAULT (newid()) FOR [IdCostoIndirectoChihuahua]
GO
ALTER TABLE [dbo].[tblCostoIndirectoChihuahuaCCM] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoChihuahua]  DEFAULT (newid()) FOR [IdCostoIndirectoChihuahuaCCM]
GO
ALTER TABLE [dbo].[tblCostoIndirectoGlobal] ADD  CONSTRAINT [DF_tblCostoIndirectoGlobal_IdCostoIndirectoGlobal]  DEFAULT (newid()) FOR [IdCostoIndirectoGlobal]
GO
ALTER TABLE [dbo].[tblCostoIndirectoGlobalCargado] ADD  CONSTRAINT [DF_tblCostoIndirectoGlobalCargado_IdCostoIndirectoGlobal]  DEFAULT (newid()) FOR [IdCostoIndirectoGlobal]
GO
ALTER TABLE [dbo].[tblCostoIndirectoHermosillo] ADD  CONSTRAINT [DF_tblCostoIndirectoHermosillo_IdCostoIndirectoHermosillo]  DEFAULT (newid()) FOR [IdCostoIndirectoHermosillo]
GO
ALTER TABLE [dbo].[tblCostoIndirectoHermosilloCCM] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoHermosillo]  DEFAULT (newid()) FOR [IdCostoIndirectoHermosilloCCM]
GO
ALTER TABLE [dbo].[tblCostoIndirectoIrapuato] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoQueretaro_1]  DEFAULT (newid()) FOR [IdCostoIndirectoIrapuato]
GO
ALTER TABLE [dbo].[tblCostoIndirectoIrapuatoCCM] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoIrapuato]  DEFAULT (newid()) FOR [IdCostoIndirectoIrapuatoCCM]
GO
ALTER TABLE [dbo].[tblCostoIndirectoQueretaro] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoChihuahua_1]  DEFAULT (newid()) FOR [IdCostoIndirectoQueretaro]
GO
ALTER TABLE [dbo].[tblCostoIndirectoQueretaroCCM] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoQueretaro]  DEFAULT (newid()) FOR [IdCostoIndirectoQueretaroCCM]
GO
ALTER TABLE [dbo].[tblCostoIndirectoTecate] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoCuautitlan_1]  DEFAULT (newid()) FOR [IdCostoIndirectoTecate]
GO
ALTER TABLE [dbo].[tblCostoIndirectoUSA] ADD  CONSTRAINT [DF_Table_2_IdCostoIndirectoTecate]  DEFAULT (newid()) FOR [IdCostoIndirectoUSA]
GO
ALTER TABLE [dbo].[tblCotizaciones] ADD  CONSTRAINT [DF_tblCotizaciones_Id]  DEFAULT (newid()) FOR [IdCotizaciones]
GO
ALTER TABLE [dbo].[tblCotizaciones] ADD  CONSTRAINT [DF_tblCotizaciones_FolioModificacion]  DEFAULT ((0)) FOR [FolioModificacion]
GO
ALTER TABLE [dbo].[tblCotizacionNew] ADD  CONSTRAINT [DF_tblCotizacionNew_Id]  DEFAULT (newid()) FOR [IdCotizacion]
GO
ALTER TABLE [dbo].[tblCriteriosOC] ADD  CONSTRAINT [DEFAULT_tblCriteriosOC_IdCriterio]  DEFAULT (newid()) FOR [IdCriterio]
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
ALTER TABLE [dbo].[tblEvaluacionEnc] ADD  CONSTRAINT [DF_tblEvaluacionEnc_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[tblFacturasEmitidas] ADD  CONSTRAINT [DF_tblFacturasEmitidas_IdFacturasEmitidas]  DEFAULT (newid()) FOR [IdFacturasEmitidas]
GO
ALTER TABLE [dbo].[tblFacturasEmitidas] ADD  CONSTRAINT [DF_tblFacturasEmitidas_Estatus]  DEFAULT ((0)) FOR [Estatus]
GO
ALTER TABLE [dbo].[tblFacturasModiGlobal] ADD  CONSTRAINT [DF_tblFacturasModiGlobal_IdGlobal]  DEFAULT (newid()) FOR [IdGlobal]
GO
ALTER TABLE [dbo].[tblFacturasXML] ADD  CONSTRAINT [DF_tblFacturasXML_IdFacturaXML]  DEFAULT (newid()) FOR [IdFacturaXML]
GO
ALTER TABLE [dbo].[tblFolioCotizacion] ADD  CONSTRAINT [DF_tblFolioCotizacion_Id]  DEFAULT (newid()) FOR [IdFolioCotizacion]
GO
ALTER TABLE [dbo].[tblFolioOrdenCompra] ADD  CONSTRAINT [DF_tblFolioOrdenCompra_IdFolioOrdenCompra]  DEFAULT (newid()) FOR [IdFolioOrdenCompra]
GO
ALTER TABLE [dbo].[tblFolioPaquete_CCM] ADD  CONSTRAINT [DF_tblFolioPaquete_CCM_IdFolioPaquete]  DEFAULT (newid()) FOR [IdFolioPaquete]
GO
ALTER TABLE [dbo].[tblFolioReq] ADD  CONSTRAINT [DF_tblFolioReq_IdFolioReq]  DEFAULT (newid()) FOR [IdFolioReq]
GO
ALTER TABLE [dbo].[tblFolioRFQ] ADD  CONSTRAINT [DF_Table_1_IdFolioCotizacion]  DEFAULT (newid()) FOR [IdFolioRFQ]
GO
ALTER TABLE [dbo].[tblFolioSolicitudCotizacion_CCM] ADD  CONSTRAINT [DF_tblFolioSolicitudCotizacion_CCM_IdFolioSolicitudCotizacion]  DEFAULT (newid()) FOR [IdFolioSolicitudCotizacion]
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
ALTER TABLE [dbo].[tblModuloPO] ADD  CONSTRAINT [DF_tblModuloPO_IdModuloPO]  DEFAULT (newid()) FOR [IdModuloPO]
GO
ALTER TABLE [dbo].[tblModuloPOArchivos] ADD  CONSTRAINT [DF_tblModuloPOArchivos_Fecha]  DEFAULT (getdate()) FOR [Fecha]
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
ALTER TABLE [dbo].[tblOrdenCompraArchivos] ADD  CONSTRAINT [DF_tblOrdenCompraArchivos_IdArchivoCotOC]  DEFAULT (newid()) FOR [IdArchivoCotOC]
GO
ALTER TABLE [dbo].[tblOrdenCompraArchivos] ADD  CONSTRAINT [DF_tblOrdenCompraArchivos_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[tblOrdenCompraCambios] ADD  CONSTRAINT [DF_tblOrdenCompraCambios_IdOrdenCompraModificada]  DEFAULT (newid()) FOR [IdOrdenCompraModificada]
GO
ALTER TABLE [dbo].[tblOrdenCompraComentarios] ADD  CONSTRAINT [DF_tblOrdenCompraComentarios_IdComentarioOC]  DEFAULT (newid()) FOR [IdComentarioOC]
GO
ALTER TABLE [dbo].[tblOrdenCompraDet] ADD  CONSTRAINT [DF_tblOrdenCompraDet_IdOrdenCompraDet]  DEFAULT (newid()) FOR [IdOrdenCompraDet]
GO
ALTER TABLE [dbo].[tblOrdenCompraDet_Test] ADD  CONSTRAINT [DF_tblOrdenCompraDet_IdOrdenCompraDet_Test]  DEFAULT (newid()) FOR [IdOrdenCompraDet]
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
ALTER TABLE [dbo].[tblPagosFacturasOrdenes] ADD  CONSTRAINT [DF_tblPagosFacturasOrdenes_IdPago]  DEFAULT (newid()) FOR [IdPago]
GO
ALTER TABLE [dbo].[tblPagosFacturasOrdenes] ADD  CONSTRAINT [DF_tblPagosFacturasOrdenes_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblPaqueteDet_CCM] ADD  CONSTRAINT [DF_tblPaqueteDet_CCM_IdPaqueteDet]  DEFAULT (newid()) FOR [IdPaqueteDet]
GO
ALTER TABLE [dbo].[tblPaqueteEnc_CCM] ADD  CONSTRAINT [DF_tblPaqueteEnc_CCM_IdPaquete]  DEFAULT (newid()) FOR [IdPaqueteEnc]
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
ALTER TABLE [dbo].[tblProyectos] ADD  CONSTRAINT [DF_tblProyectos_EsCCM]  DEFAULT ((0)) FOR [EsCCM]
GO
ALTER TABLE [dbo].[tblProyectosInsumos] ADD  CONSTRAINT [DF_tblProyectosInsumos_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[tblProyectosInsumos] ADD  CONSTRAINT [DF_tblProyectosInsumos_EsCCM]  DEFAULT ((0)) FOR [EsCCM]
GO
ALTER TABLE [dbo].[tblProyectosProyFinanciera] ADD  CONSTRAINT [DF_tblProyectosProyFinanciera_IdProyeccionFinanciera]  DEFAULT (newid()) FOR [IdProyeccionFinanciera]
GO
ALTER TABLE [dbo].[tblProyectosProyFinanciera] ADD  CONSTRAINT [DF_Table_1_Fecha]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblProyectosProyFinanciera] ADD  CONSTRAINT [DF_tblProyectosProyFinanciera_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
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
ALTER TABLE [dbo].[tblRespuestaEval] ADD  CONSTRAINT [DF_tblRespuestaEval_Fecha]  DEFAULT (getdate()) FOR [Fecha]
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
ALTER TABLE [dbo].[tblRolesContactos] ADD  CONSTRAINT [DF_tblRolesContactos_IdRolContacto]  DEFAULT (newid()) FOR [IdRolContacto]
GO
ALTER TABLE [dbo].[tblRolesProveedores] ADD  CONSTRAINT [DF_tblRolesProveedores_IdRolProveedor]  DEFAULT (newid()) FOR [IdRolProveedor]
GO
ALTER TABLE [dbo].[tblRolesUsuarios] ADD  CONSTRAINT [DF_tblRolesUsuarios_idRol]  DEFAULT (newid()) FOR [idRol]
GO
ALTER TABLE [dbo].[tblSavings] ADD  CONSTRAINT [DF_tblSavings_IdSavings]  DEFAULT (newid()) FOR [IdSavings]
GO
ALTER TABLE [dbo].[tblServicioComputo] ADD  CONSTRAINT [DF_tblServicioComputo_Id]  DEFAULT (newid()) FOR [IdServicioComputo]
GO
ALTER TABLE [dbo].[tblServiciosComputo] ADD  CONSTRAINT [DF_tblServiciosComputo_IdComputo]  DEFAULT (newid()) FOR [IdComputo]
GO
ALTER TABLE [dbo].[tblSolicitudCotizacion_CCM] ADD  CONSTRAINT [DF_tblSolicitudCotizacion_CCM_idSolicitudCotizacion]  DEFAULT (newid()) FOR [idSolicitudCotizacion]
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
ALTER TABLE [dbo].[tblUsuariosCCM] ADD  CONSTRAINT [DF_tblUsuariosCCM_IdUserCCM]  DEFAULT (newid()) FOR [IdUserCCM]
GO
ALTER TABLE [dbo].[tblUsuarioSucursal] ADD  CONSTRAINT [DF_tblUsuarioSucursal_IdUsuarioSucursal]  DEFAULT (newid()) FOR [IdUsuarioSucursal]
GO
ALTER TABLE [dbo].[tblUsuarioSucursal] ADD  CONSTRAINT [DF_tblUsuarioSucursal_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblVehiculos] ADD  CONSTRAINT [DF_tblVehiculos_Id]  DEFAULT (newid()) FOR [IdCarro]
GO
ALTER TABLE [dbo].[tblVehiculoServicio] ADD  CONSTRAINT [DF_tblVehiculoServicio_Id]  DEFAULT (newid()) FOR [IdServicioVehiculo]
GO
ALTER TABLE [dbo].[tblVehiculoServicioItem] ADD  CONSTRAINT [DF_tblVehiculoServicioItem_Id]  DEFAULT (newid()) FOR [IdServicioVehiculoItem]
GO
ALTER TABLE [dbo].[tblViaticosDetCantEntregada] ADD  CONSTRAINT [DF_tblViaticosDetCantEntregada_IdViaticosDetCantEntregada]  DEFAULT (newid()) FOR [IdViaticosDetCantEntregada]
GO
ALTER TABLE [dbo].[tblViaticosDetCantEntregada] ADD  CONSTRAINT [DF_tblViaticosDetCantEntregada_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[tblViaticosDetCantEntregada] ADD  CONSTRAINT [DF_tblViaticosDetCantEntregada_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[tblViaticosDetCantEntregada] ADD  CONSTRAINT [DF_tblViaticosDetCantEntregada_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[tblViaticosDetCantEntregada] ADD  CONSTRAINT [DF_tblViaticosDetCantEntregada_FechaElimina]  DEFAULT (getdate()) FOR [FechaElimina]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblCostoIndirectoGlobal', @level2type=N'COLUMN',@level2name=N'IdUsuarioAlta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblCostoIndirectoGlobal', @level2type=N'COLUMN',@level2name=N'IdUsuarioModifica'
GO
