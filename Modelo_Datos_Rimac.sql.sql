USE [CPSR]
GO
/****** Object:  Table [dbo].[CanalAtencion]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanalAtencion](
	[CodigoCanalAtencion] [char](2) NOT NULL,
	[DescripcionCanalAtencion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoCanalAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[CodigoCargo] [char](3) NOT NULL,
	[NombreCargo] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistritosLima]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistritosLima](
	[DistritoID] [int] IDENTITY(1,1) NOT NULL,
	[NombreDistrito] [varchar](100) NULL,
	[Zona] [varchar](50) NULL,
	[Ubigeo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistritoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPoliza]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPoliza](
	[CodigoEstadoPoliza] [char](1) NOT NULL,
	[DescripcionEstadoPoliza] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoEstadoPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoSolicitud]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoSolicitud](
	[CodigoEstadoSolicitud] [char](1) NOT NULL,
	[DescripcionEstadoSolicitud] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoEstadoSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechasPago]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechasPago](
	[Id] [int] NOT NULL,
	[FechaSolicitud] [datetime] NULL,
	[FechaEmision] [datetime] NULL,
	[FechaPago] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineaNegocio]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineaNegocio](
	[CodigoLineaNegocio] [char](2) NOT NULL,
	[DescripcionLineaNegocio] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoLineaNegocio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[CodigoPersona] [char](7) NOT NULL,
	[NombresPersona] [varchar](60) NULL,
	[ApellidoPaterno] [varchar](30) NULL,
	[ApellidoMaterno] [varchar](30) NULL,
	[CodigoTipoDocumento] [char](1) NULL,
	[NumeroDocumento] [varchar](20) NULL,
	[CodigoTipoPersona] [char](2) NULL,
	[CodigoCargo] [char](3) NULL,
	[Procesado] [bit] NULL,
	[Distrito] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poliza]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poliza](
	[NumeroPoliza] [char](20) NOT NULL,
	[FechaEmision] [datetime] NULL,
	[CodigoPersona] [char](7) NULL,
	[FechaPago] [datetime] NULL,
	[TotalPrima] [decimal](10, 2) NULL,
	[CodigoEstadoPoliza] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PolizaProducto]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolizaProducto](
	[NumeroPoliza] [char](20) NOT NULL,
	[CodigoProducto] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroPoliza] ASC,
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[CodigoProducto] [char](5) NOT NULL,
	[DescripcionProducto] [varchar](120) NULL,
	[CodigoTipoProducto] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoPago]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoPago](
	[Id] [int] NOT NULL,
	[CodigoProducto] [varchar](10) NULL,
	[DescripcionProducto] [varchar](100) NULL,
	[CodigoTipoProducto] [varchar](10) NULL,
	[DescripcionTipoProducto] [varchar](100) NULL,
	[CodigoLineaNegocio] [varchar](10) NULL,
	[DescripcionLineaNegocio] [varchar](100) NULL,
	[PagoMensual] [decimal](10, 2) NULL,
	[PagoTrimestral] [decimal](10, 2) NULL,
	[PagoSemestral] [decimal](10, 2) NULL,
	[PagoAnual] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProyeccionMeta]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProyeccionMeta](
	[IdProyeccionMeta] [int] IDENTITY(1,1) NOT NULL,
	[Periodo] [char](4) NULL,
	[Mensual] [char](2) NULL,
	[CodigoTipoMeta] [char](3) NULL,
	[DescripcionIndicador] [varchar](120) NULL,
	[ValorProyectado] [decimal](10, 2) NULL,
	[Mes] [varchar](15) NULL,
	[Trimestre] [varchar](10) NULL,
	[TipoPeriodo] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProyeccionMeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitud]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud](
	[CodigoSolicitud] [char](9) NOT NULL,
	[FechaSolicitud] [datetime] NULL,
	[CodigoPersona] [char](7) NULL,
	[CodigoEstadoSolicitud] [char](1) NULL,
	[CodigoCanalAtencion] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudPoliza]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudPoliza](
	[CodigoSolicitud] [char](9) NOT NULL,
	[NumeroPoliza] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoSolicitud] ASC,
	[NumeroPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProducto]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProducto](
	[CodigoSolicitud] [char](9) NOT NULL,
	[CodigoProducto] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoSolicitud] ASC,
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[CodigoTipoDocumento] [char](1) NOT NULL,
	[DescripcionTipoDocumento] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMeta]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMeta](
	[CodigoTipoMeta] [char](3) NOT NULL,
	[DescripcionTipoMeta] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoTipoMeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPersona]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPersona](
	[CodigoTipoPersona] [char](2) NOT NULL,
	[NombreTipoPersona] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[CodigoTipoProducto] [char](4) NOT NULL,
	[DescripcionTipoProducto] [varchar](40) NULL,
	[CodigoLineaNegocio] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoTipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([CodigoCargo])
REFERENCES [dbo].[Cargo] ([CodigoCargo])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([CodigoTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([CodigoTipoDocumento])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([CodigoTipoPersona])
REFERENCES [dbo].[TipoPersona] ([CodigoTipoPersona])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_DistritosLima] FOREIGN KEY([Distrito])
REFERENCES [dbo].[DistritosLima] ([DistritoID])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_DistritosLima]
GO
ALTER TABLE [dbo].[Poliza]  WITH CHECK ADD FOREIGN KEY([CodigoEstadoPoliza])
REFERENCES [dbo].[EstadoPoliza] ([CodigoEstadoPoliza])
GO
ALTER TABLE [dbo].[Poliza]  WITH CHECK ADD FOREIGN KEY([CodigoPersona])
REFERENCES [dbo].[Persona] ([CodigoPersona])
GO
ALTER TABLE [dbo].[PolizaProducto]  WITH CHECK ADD FOREIGN KEY([CodigoProducto])
REFERENCES [dbo].[Producto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[PolizaProducto]  WITH CHECK ADD FOREIGN KEY([NumeroPoliza])
REFERENCES [dbo].[Poliza] ([NumeroPoliza])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([CodigoTipoProducto])
REFERENCES [dbo].[TipoProducto] ([CodigoTipoProducto])
GO
ALTER TABLE [dbo].[ProyeccionMeta]  WITH CHECK ADD FOREIGN KEY([CodigoTipoMeta])
REFERENCES [dbo].[TipoMeta] ([CodigoTipoMeta])
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD FOREIGN KEY([CodigoPersona])
REFERENCES [dbo].[Persona] ([CodigoPersona])
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD FOREIGN KEY([CodigoEstadoSolicitud])
REFERENCES [dbo].[EstadoSolicitud] ([CodigoEstadoSolicitud])
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD FOREIGN KEY([CodigoCanalAtencion])
REFERENCES [dbo].[CanalAtencion] ([CodigoCanalAtencion])
GO
ALTER TABLE [dbo].[SolicitudPoliza]  WITH CHECK ADD FOREIGN KEY([CodigoSolicitud])
REFERENCES [dbo].[Solicitud] ([CodigoSolicitud])
GO
ALTER TABLE [dbo].[SolicitudPoliza]  WITH CHECK ADD FOREIGN KEY([NumeroPoliza])
REFERENCES [dbo].[Poliza] ([NumeroPoliza])
GO
ALTER TABLE [dbo].[SolicitudProducto]  WITH CHECK ADD FOREIGN KEY([CodigoSolicitud])
REFERENCES [dbo].[Solicitud] ([CodigoSolicitud])
GO
ALTER TABLE [dbo].[SolicitudProducto]  WITH CHECK ADD FOREIGN KEY([CodigoProducto])
REFERENCES [dbo].[Producto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[TipoProducto]  WITH CHECK ADD FOREIGN KEY([CodigoLineaNegocio])
REFERENCES [dbo].[LineaNegocio] ([CodigoLineaNegocio])
GO
/****** Object:  StoredProcedure [dbo].[sp_asesor_listar]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_asesor_listar]
AS
BEGIN
	SELECT 
		CodigoPersona AS CodigoAsesor
		,CONCAT(LTRIM(RTRIM(a.NombresPersona)),', ',LTRIM(RTRIM(a.ApellidoPaterno)), ' ', LTRIM(RTRIM(a.ApellidoMaterno))) AS NombresApellidos
		,b.DescripcionTipoDocumento AS TipoDocumento
		,a.NumeroDocumento
	FROM Persona a
	INNER JOIN TipoDocumento b
		ON a.CodigoTipoDocumento = b.CodigoTipoDocumento
	WHERE
		a.CodigoTipoPersona = 'EP'
		AND a.CodigoCargo = '001';
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_contratante_listar]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_contratante_listar]
AS
BEGIN
	SELECT 
		CodigoPersona AS CodigoContratante
		,CONCAT(a.NombresPersona,', ',a.ApellidoPaterno, ' ', a.ApellidoMaterno) AS NombresApellidos
		,b.DescripcionTipoDocumento AS TipoDocumento
		,a.NumeroDocumento
	FROM Persona a
	INNER JOIN TipoDocumento b
		ON a.CodigoTipoDocumento = b.CodigoTipoDocumento
	WHERE
		a.CodigoTipoPersona = 'CP';
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_polizas_listar]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_polizas_listar]
AS
BEGIN
SELECT
	a.NumeroPoliza
	,b.FechaSolicitud
	,c.FechaPago
	,c.FechaEmision
	,c.TotalPrima
	,d.CodigoProducto
	,c.CodigoPersona AS CodigoContratante
	,b.CodigoPersona AS CodigoAsesor
	,DATEDIFF(MINUTE, b.FechaSolicitud, c.FechaEmision) AS MinutosAtencion
	,CAST(CONVERT(VARCHAR(8), b.FechaSolicitud, 112) AS INT) AS CodigoTiempo
FROM SolicitudPoliza a, Solicitud b, Poliza c, PolizaProducto d
WHERE
	a.CodigoSolicitud = b.CodigoSolicitud 
	AND a.NumeroPoliza = c.NumeroPoliza
	AND d.NumeroPoliza = c.NumeroPoliza
	AND c.CodigoEstadoPoliza = 'E';
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_producto_listar]    Script Date: 10/08/2026 16:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_producto_listar]
AS
BEGIN
	SELECT 
		a.CodigoProducto
		,a.DescripcionProducto
		,c.DescripcionLineaNegocio AS LineaNegocio
		,b.DescripcionTipoProducto AS TipoProducto
	FROM Producto a
	INNER JOIN TipoProducto b
		ON a.CodigoTipoProducto = b.CodigoTipoProducto
	INNER JOIN LineaNegocio c
		ON c.CodigoLineaNegocio = b.CodigoLineaNegocio;
END;
GO
