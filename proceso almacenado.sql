USE [EkayPRUEBAS]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreA] [varchar](100) NULL,
	[ApellidoA] [varchar](100) NULL,
	[CorreoA] [varchar](50) NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carpeta]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carpeta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[FechaCreacion] [datetime] NULL,
	[EmpresaId] [int] NOT NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Carpeta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Contrasenia] [varchar](50) NULL,
	[PerfilId] [int] NOT NULL,
	[EmpresaId] [int] NOT NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[Contenido] [varchar](300) NULL,
	[RemitenteId] [int] NOT NULL,
	[AutorId] [int] NOT NULL,
	[CarpetaId] [int] NOT NULL,
	[TipoDocId] [int] NOT NULL,
	[FirmanteId] [int] NOT NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[NombreArchivo] [varchar](50) NULL,
	[Extension] [varchar](5) NULL,
	[Tamanio] [float] NULL,
	[Ruta] [text] NULL,
	[RutaBase] [text] NULL,
	[Certificado] [text] NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[NombreRepresentante] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[Correo] [varchar](50) NULL,
	[Telefono] [varchar](10) NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Estatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Firmante]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firmante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreF] [varchar](100) NULL,
	[ApellidoF] [varchar](100) NULL,
	[CorreoF] [varchar](50) NULL,
	[TelefonoF] [varchar](10) NULL,
	[Puesto] [varchar](50) NULL,
	[Organizacion] [varchar](100) NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Firmante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Descripcion] [varchar](200) NULL,
	[DocumentoId] [int] NOT NULL,
	[EstatusId] [int] NOT NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Historial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remitente]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remitente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Correo] [varchar](50) NULL,
	[Telefono] [varchar](10) NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_Remitente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreDoc] [varchar](100) NULL,
	[CreateAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [int] NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autor] ON 

INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1004, N'Debe', N'Funcionar', N'Ahora@aver.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1005, N'Debe', N'Funcionar', N'Ahora@aver.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1006, N'Jesus', N'Mundo', N'Ahora@aver.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1009, N'Debe', N'Funcionar', N'dino@mail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1010, N'Debe', N'Funcionar', N'dino@mail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1011, N'Siempre', N'He ', N'Estado', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1012, N'Siempre', N'He ', N'Estado', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1013, N'Siempre', N'Funcionar', N'Holamundo@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1014, N'Felix', N'Garcia', N'felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1015, N'Felix', N'Garcia', N'felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1016, N'Jesus', N'Dionicio', N'dino@mail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1019, N'Lilia', N'Ruiz', N'lili@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1020, N'Felix', N'Garcia', N'Holamundo@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1021, N'Felix', N'Garcia', N'Holamundo@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1022, N'Hola', N'Mundo', N'dino@mail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1023, N'Lilia', N'Mundo', N'felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1024, N'Lilia', N'Mundo', N'felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1025, N'Felix', N'Dionicio', N'Holamundo@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1026, N'Probino', N'Probante', N'probador@p.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1027, N'Probino', N'Probante', N'probador@p.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1028, N'Probino', N'Probante', N'probador@p.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1031, N'Felix', N'Garcia', N'dino@mail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1036, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1037, N'Felix', N'Villanueva', N'Felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1038, N'Felix', N'Benavi', N'Felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1039, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1040, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1041, N'Felix', N'Villanueva', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1042, N'Felix', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1043, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1044, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2026, N'Fernando', N'Camino', N'rangugamer@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2027, N'Fernando', N'Villanueva', N'Felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2028, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2029, N'Felix', N'Villanueva', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2030, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2031, N'Elías', N'Camino', N'Felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2032, N'Elías', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2033, N'Felix', N'Benavi', N'Eli@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2034, N'Elías', N'Benavi', N'Felix@correo.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[Autor] ([Id], [NombreA], [ApellidoA], [CorreoA], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2035, N'Ramón', N'Hernandez', N'ramon@correo.com', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Autor] OFF
GO
SET IDENTITY_INSERT [dbo].[Carpeta] ON 

INSERT [dbo].[Carpeta] ([Id], [Nombre], [FechaCreacion], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (5, N'De Prueba', CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Carpeta] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuenta] ON 

INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1, N'si@si.com', N'Spartan', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2, NULL, N'simon', 0, 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (3, N'[object HTMLInputElement]', N'funciona', 0, 14, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (4, N'[object HTMLInputElement]', N'asies', 0, 16, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (5, N'[object HTMLInputElement]', N'cero', 0, 19, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (6, N'[object HTMLInputElement]', N'sien', 0, 20, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (7, NULL, N'ggez', 0, 22, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (8, N'null', N'fiez', 0, 24, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (9, N'null', N'pox', 0, 26, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (10, N'[object HTMLInputElement]', N'pls', 0, 28, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (11, NULL, N'koz', 0, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (12, NULL, N'plapla', 0, 32, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (13, N'123456@gmail.com', N'lon', 0, 34, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (14, N'BlueTea@correo.com', N'00Spartan55', 0, 36, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (15, N'Bepensa@correo.com', N'01234', 0, 38, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (16, N'Xiaomi@correo.com', N'01234', 0, 40, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (17, N'Nintendo@correo.com', N'01234', 0, 42, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (18, N'Zoey@correo.com', N'01234', 0, 44, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (19, N'Epson@correo.com', N'01234', 0, 46, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (20, N'Escualos@correo.com', N'01234', 0, 48, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (21, N'Peniche@correo.com', N'01234', 0, 50, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (22, N'Panasonic@correo.com', N'01234', 0, 52, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (23, N'Linke@correo.com', N'01234', 0, 54, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cuenta] ([Id], [Usuario], [Contrasenia], [PerfilId], [EmpresaId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (24, N'Bepensa@correo.com', N'01234', 0, 56, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cuenta] OFF
GO
SET IDENTITY_INSERT [dbo].[Documento] ON 

INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1022, CAST(N'2021-03-05T00:00:00.000' AS DateTime), N'Ninguna', 1022, 1024, 5, 1, 21, NULL, NULL, NULL, NULL, N'Licencias', N'pdf', 0.11, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Licencias Steam.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Licencias Steam.pdfLicencias Steam.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1023, CAST(N'2021-03-05T00:00:00.000' AS DateTime), N'Tiene 10 días hábiles para la firma.', 1023, 1025, 5, 1, 22, NULL, NULL, NULL, NULL, N'Estado Cuenta - Aaron', N'pdf', 0.17, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\EstadoCuenta-3102022081.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\EstadoCuenta-3102022081.pdfEstadoCuenta-3102022081.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1034, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Firmar a la brevedad.', 1034, 1036, 5, 2, 33, NULL, NULL, NULL, NULL, N'Compraventa', N'pdf', 0.07, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Compraventa.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Compraventa.pdfCompraventa.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1035, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Leer con cuidado.', 1035, 1037, 5, 2, 34, NULL, NULL, NULL, NULL, N'Arrendamiento', N'pdf', 0.68, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\calendario de examenes enero-abril 21.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\calendario de examenes enero-abril 21.pdfcalendario de examenes enero-abril 21.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1036, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Firmar en 3 Dias o menos.', 1036, 1038, 5, 2, 35, NULL, NULL, NULL, NULL, N'Cese y Desista', N'pdf', 1.16, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Calendario escolar 20-21-F1.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Calendario escolar 20-21-F1.pdfCalendario escolar 20-21-F1.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1037, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Leer con cuidado.', 1037, 1039, 5, 2, 36, NULL, NULL, NULL, NULL, N'Carta Poder - Juan', N'pdf', 0.56, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\1. Creación de Sitio Web Node JS.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\1. Creación de Sitio Web Node JS.pdf1. Creación de Sitio Web Node JS.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1038, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Ninguna', 1038, 1040, 5, 2, 37, NULL, NULL, NULL, NULL, N'Lineamientos', N'pdf', 1.05, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\ADA 3. Layouts con express js.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\ADA 3. Layouts con express js.pdfADA 3. Layouts con express js.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1039, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Tiene 4 días hábiles para la firma.', 1039, 1041, 5, 2, 38, NULL, NULL, NULL, NULL, N'Compraventa de Inmobiliaria', N'pdf', 1.02, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\ADA 4. Suma con express js.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\ADA 4. Suma con express js.pdfADA 4. Suma con express js.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1040, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Firmar a la brevedad.', 1040, 1042, 5, 2, 39, NULL, NULL, NULL, NULL, N'Carta Poder - Carlos', N'pdf', 0.4, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Manual 1.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Manual 1.pdfManual 1.txt', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\certificado0958.xml')
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1041, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Leer con cuidado.', 1041, 1043, 5, 2, 40, NULL, NULL, NULL, NULL, N'Estado Cuenta - Joel', N'pdf', 3.32, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Manual de NodeJS.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Manual de NodeJS.pdfManual de NodeJS.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (1042, CAST(N'2021-03-08T00:00:00.000' AS DateTime), N'Firmar en 3 Dias o menos.', 1042, 1044, 5, 2, 41, NULL, NULL, NULL, NULL, N'Compraventa inmobiliaria', N'pdf', 0.12, N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdf', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdfCompraventa inmobiliaria.txt', N'C:\Users\dioni\Downloads\Cambios\Ekay API\Ekay\Ekay.Api\Archivos\certificado1005.xml')
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2024, CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Firmar a la brevedad.', 2024, 2026, 5, 2, 1023, NULL, NULL, NULL, NULL, N'base_de_datos_distribuidas (1)', N'pdf', 0.68, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas (1).pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas (1).pdfbase_de_datos_distribuidas (1).txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2025, CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Ninguna', 2025, 2027, 5, 2, 1024, NULL, NULL, NULL, NULL, N'base_de_datos_distribuidas', N'pdf', 0.7, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdfbase_de_datos_distribuidas.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2026, CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Firmar a la brevedad.', 2026, 2028, 5, 2, 1025, NULL, NULL, NULL, NULL, N'base_de_datos_distribuidas (1)', N'pdf', 0.68, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas (1).pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas (1).pdfbase_de_datos_distribuidas (1).txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2027, CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'Firmar en 3 Dias o menos.', 2027, 2029, 5, 3, 1026, NULL, NULL, NULL, NULL, N'base_de_datos_distribuidas', N'pdf', 0.7, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdfbase_de_datos_distribuidas.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2028, CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Firmar en 3 Dias o menos.', 2028, 2030, 5, 2, 1027, NULL, NULL, NULL, NULL, N'Compraventa inmobiliaria', N'pdf', 0.12, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdfCompraventa inmobiliaria.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2029, CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Firmar a la brevedad.', 2029, 2031, 5, 2, 1028, NULL, NULL, NULL, NULL, N'Compraventa', N'pdf', 0.07, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa.pdfCompraventa.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2030, CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Leer con cuidado.', 2030, 2032, 5, 2, 1029, NULL, NULL, NULL, NULL, N'base_de_datos_distribuidas', N'pdf', 0.7, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdfbase_de_datos_distribuidas.txt', NULL)
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2031, CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Firmar en 3 Dias o menos.', 2031, 2033, 5, 2, 1030, NULL, NULL, NULL, NULL, N'base_de_datos_distribuidas', N'pdf', 0.7, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\base_de_datos_distribuidas.pdfbase_de_datos_distribuidas.txt', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\certificado1248.xml')
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2032, CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Firmar en 3 Dias o menos.', 2032, 2034, 5, 2, 1031, NULL, NULL, NULL, NULL, N'Compraventa inmobiliaria', N'pdf', 0.12, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdfCompraventa inmobiliaria.txt', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\certificado0156.xml')
INSERT [dbo].[Documento] ([Id], [FechaCreacion], [Contenido], [RemitenteId], [AutorId], [CarpetaId], [TipoDocId], [FirmanteId], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy], [NombreArchivo], [Extension], [Tamanio], [Ruta], [RutaBase], [Certificado]) VALUES (2033, CAST(N'2021-03-16T00:00:00.000' AS DateTime), N'Firmar a la brevedad.', 2033, 2035, 5, 2, 1032, NULL, NULL, NULL, NULL, N'Compraventa inmobiliaria', N'pdf', 0.12, N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdf', N'C:\Users\dioni\Desktop\Ekay\Ekay\Ekay.Api\Archivos\Compraventa inmobiliaria.pdfCompraventa inmobiliaria.txt', NULL)
SET IDENTITY_INSERT [dbo].[Documento] OFF
GO
SET IDENTITY_INSERT [dbo].[Empresa] ON 

INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1, N'De prueba', N'Yo', N'No se', N'a@a.a', N'99999999', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (5, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.es', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (7, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.es', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (9, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (11, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (12, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (13, N'Pimpon', N'Un Muñeco', N'Por ahi', N'123456@gmail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (14, N'Pimpon', N'Un Muñeco', N'Por ahi', N'123456@gmail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (15, N'BlueTea', N'Un Muñeco', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (16, N'BlueTea', N'Un Muñeco', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (17, N'BlueTea', N'Un Muñeco', N'Por ahi', N'ingridacosta322@gmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (18, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'ingrid@mail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (19, N'BlueTea', N'Un Muñeco', N'Por ahi', N'ingridacosta322@gmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (20, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'ingrid@mail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (21, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (22, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (23, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (24, N'BlueTea', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (25, N'Ingrid', N'Jesus Dionicio', N'Por ahi', N'ingrid@mail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (26, N'Ingrid', N'Jesus Dionicio', N'Por ahi', N'ingrid@mail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (27, N'Ingrid', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (28, N'Ingrid', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (29, N'Carmensita', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (30, N'Carmensita', N'Jesus Dionicio', N'Por ahi', N'dionicio2212@hotmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (31, N'BlueTea', N'Un Muñeco', N'Por ahi', N'dionicio2212@hotmail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (32, N'BlueTea', N'Un Muñeco', N'Por ahi', N'dionicio2212@hotmail.com', N'9992773640', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (33, N'Jesus Andres', N'Un Muñeco', N'Por ahi', N'123456@gmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (34, N'Jesus Andres', N'Un Muñeco', N'Por ahi', N'123456@gmail.com', N'9993616395', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (35, N'BlueTea', N'Jesus Dionicio', N'Agustin Buenavida , C# 65 x 17 y 19', N'BlueTea@correo.com', N'9993657810', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (36, N'BlueTea', N'Jesus Dionicio', N'Agustin Buenavida , C# 65 x 17 y 19', N'BlueTea@correo.com', N'9993657810', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (37, N'Bepensa', N'Carlos Hermenegildo', N'Santa Barbara Av. Motul', N'Bepensa@correo.com', N'9991667780', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (38, N'Bepensa', N'Carlos Hermenegildo', N'Santa Barbara Av. Motul', N'Bepensa@correo.com', N'9991667780', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (39, N'Xiaomi', N'José Pampa', N'Calle 52 y 61, Av. Román', N'Xiaomi@correo.com', N'9994357842', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (40, N'Xiaomi', N'José Pampa', N'Calle 52 y 61, Av. Román', N'Xiaomi@correo.com', N'9994357842', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (41, N'Nintendo', N'Shuntaro Furukawa', N'Col. Roma, calle 31', N'Nintendo@correo.com', N'9991458739', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (42, N'Nintendo', N'Shuntaro Furukawa', N'Col. Roma, calle 31', N'Nintendo@correo.com', N'9991458739', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (43, N'Zoey', N'Zoey Damica', N'San Francisco, calle 31 x 29', N'Zoey@correo.com', N'9995003418', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (44, N'Zoey', N'Zoey Damica', N'San Francisco, calle 31 x 29', N'Zoey@correo.com', N'9995003418', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (45, N'Epson', N'Francisco Camara', N'Plaza Lorem, 233A 16ºD', N'Epson@correo.com', N'9934761085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (46, N'Epson', N'Francisco Camara', N'Plaza Lorem, 233A 16ºD', N'Epson@correo.com', N'9934761085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (47, N'Escualos', N'Regina Camara', N'Rambla Ipsum, 87 4ºB', N'Escualos@correo.com', N'9996300478', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (48, N'Escualos', N'Regina Camara', N'Rambla Ipsum, 87 4ºB', N'Escualos@correo.com', N'9996300478', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (49, N'Peniche Larrea', N'Zayde Martinez', N'Glorieta Sit, 183A 6ºB', N'Peniche@correo.com', N'9994782400', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (50, N'Peniche Larrea', N'Zayde Martinez', N'Glorieta Sit, 183A 6ºB', N'Peniche@correo.com', N'9994782400', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (51, N'Panasonic', N'Lilia Ruiz', N'Fisher Lodge Apt. 083', N'Panasonic@correo.com', N'9996396027', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (52, N'Panasonic', N'Lilia Ruiz', N'Fisher Lodge Apt. 083', N'Panasonic@correo.com', N'9996396027', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (53, N'Linke', N'Filiberto Herrera', N'Henry Inlet Apt. 458', N'Linke@correo.com', N'9998761265', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (54, N'Linke', N'Filiberto Herrera', N'Henry Inlet Apt. 458', N'Linke@correo.com', N'9998761265', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (55, N'Bepensa', N'Carlos Hermenegildo', N'Agustin Buenavida , C# 65 x 17 y 19', N'Bepensa@correo.com', N'9993657810', NULL, NULL, NULL, NULL)
INSERT [dbo].[Empresa] ([Id], [Nombre], [NombreRepresentante], [Direccion], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (56, N'Bepensa', N'Carlos Hermenegildo', N'Agustin Buenavida , C# 65 x 17 y 19', N'Bepensa@correo.com', N'9993657810', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Empresa] OFF
GO
SET IDENTITY_INSERT [dbo].[Firmante] ON 

INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1, N'Jesus', N'Dionoicio', N'a@a.a', N'999999', N'd', N'a', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (3, N'Juanito Pepito', N'Dionicio Ruiz', N'dionicio2212@hotmail.com', N'9993616395', N'Si', N'Tambien', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (4, N'Juanito Pepito', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Si', N'Tambien', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (5, N'Juanito Pepito', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Si', N'Tambien', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (6, N'Juanito Pepito', N'Dionicio Ruiz', N'dionicio2212@hotmail.com', NULL, N'Si', N'Tambien', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (7, N'Trabajo', N'A', N'dionicio2212@hotmail.com', NULL, N'bolas', N'.i.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (8, N'Trabajo', N'A', N'dionicio2212@hotmail.com', NULL, N'bolas', N'.i.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (9, N'Jesus Andres', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9992519486', N'Si', N'Tambien', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (10, N'Jesus Andres', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9992519486', N'Si', N'Tambien', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (11, N'Chuck ', N'Testa', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (12, N'Chuck ', N'Testa', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (13, N'Juanito Pepito', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Si', N'También', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (14, N'José', N'Eduardo', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (15, N'José', N'Eduardo', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (16, N'José', N'Mesiento Solito', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (17, N'José', N'Mesiento Solito', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (18, N'Trabajo', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (19, N'Trabajo', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (20, N'José', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (21, N'José', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (22, N'Jesus Andres', N'Dionicio Ruiz', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (23, N'Jesus Andres', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (24, N'Jesus Andres', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (25, N'Jesus Andres', N'Eltris Tecito', N'dionicio2212@hotmail.com', N'9993616395', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (28, N'Jesus Andres', N'Dionicio Ruiz', N'dionicio2212@hotmail.com', N'9992773640', N'Empleado', N'Blue Tea Inc.', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (33, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (34, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (35, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (36, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (37, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (38, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (39, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (40, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (41, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1023, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1024, N'Jesus', N'Dionicio', N'dionicio2212@hotmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1025, N'Ingrid', N'Acosta', N'ingridacosta322@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1026, N'Jesus', N'Dionicio', N'misterioso2212@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1027, N'Jesus', N'Dionicio', N'misterioso2212@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1028, N'Jesus', N'Dionicio', N'misterioso2212@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1029, N'Jesus', N'Dionicio', N'misterioso2212@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1030, N'Jesus', N'Dionicio', N'misterioso2212@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1031, N'Jesus', N'Dionicio', N'misterioso2212@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firmante] ([Id], [NombreF], [ApellidoF], [CorreoF], [TelefonoF], [Puesto], [Organizacion], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1032, N'Jesus', N'Dionicio', N'misterioso2212@gmail.com', N'9993616395', N'Desarrollador', N'BlueTea', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Firmante] OFF
GO
SET IDENTITY_INSERT [dbo].[Remitente] ON 

INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1004, N'Ingrid', N'Acosta', N'ingridacosta322@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1005, N'Ingrid', N'Acosta', N'ingridacosta322@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1006, N'Jesus Andres', N'Damica', N'123456@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1009, N'Ingrid', N'Dionicio Ruiz', N'ingrid@mail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1010, N'Ingrid', N'Dionicio Ruiz', N'ingrid@mail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1011, N'Solo', N'Jodanse', N'Todos', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1012, N'Solo', N'Jodanse', N'Todos', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1013, N'Ingrid', N'Castrosa', N'123456@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1014, N'Gerardo', N'Villamar', N'GeraVi@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1015, N'Gerardo', N'Villamar', N'GeraVi@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1016, N'Ingrid', N'Acosta', N'ingrid@mail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1017, N'Ingrid ', N'Tzab', N'ingrid@mail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1018, N'Carmensita', N'Damica', N'123456@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1019, N'Carmensita', N'Damica', N'123456@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1020, N'Carmensita', N'Damica', N'ingrid@mail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1021, N'Jesus Andres', N'Dionicio Ruiz', N'123456@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1022, N'Jesus Andres', N'Dionicio Ruiz', N'123456@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1023, N'Zoey Alejandra', N'Acosta', N'correo@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1024, N'Yono', N'Pruebo', N'nada@n.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1025, N'Yono', N'Pruebo', N'nada@n.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1026, N'Yono', N'Pruebo', N'nada@n.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1029, N'Jesus Andres', N'Probadno', N'ingrid@mail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1034, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1035, N'Carlos', N'Pacheco', N'Carlos@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1036, N'Zoey', N'Damica', N'Zoey@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1037, N'Carlos', N'Pacheco', N'Carlos@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1038, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1039, N'Aurelio', N'Pacheco', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1040, N'Aurelio', N'Damica', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1041, N'Aurelio', N'Damica', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1042, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2024, N'Viviana', N'Morales', N'vivi@mail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2025, N'Carlos', N'Pacheco', N'Carlos@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2026, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2027, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2028, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2029, N'Carlos', N'Mex', N'Carlos@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2030, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2031, N'Aurelio', N'Pacheco', N'Carlos@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2032, N'Aurelio', N'Mex', N'Aurelio@correo.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Remitente] ([Id], [Nombre], [Apellido], [Correo], [Telefono], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2033, N'Ingrid', N'Acosta', N'ingridacosta322@gmail.com', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Remitente] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON 

INSERT [dbo].[TipoDocumento] ([Id], [NombreDoc], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (1, N'De prueba', NULL, NULL, NULL, NULL)
INSERT [dbo].[TipoDocumento] ([Id], [NombreDoc], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (2, N'Compraventa', NULL, NULL, NULL, NULL)
INSERT [dbo].[TipoDocumento] ([Id], [NombreDoc], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (3, N'Cese y Desista', NULL, NULL, NULL, NULL)
INSERT [dbo].[TipoDocumento] ([Id], [NombreDoc], [CreateAt], [CreatedBy], [UpdateAt], [UpdateBy]) VALUES (4, N'Carta Poder', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
GO
ALTER TABLE [dbo].[Carpeta]  WITH CHECK ADD  CONSTRAINT [FK_Carpeta_0] FOREIGN KEY([EmpresaId])
REFERENCES [dbo].[Empresa] ([Id])
GO
ALTER TABLE [dbo].[Carpeta] CHECK CONSTRAINT [FK_Carpeta_0]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_0] FOREIGN KEY([EmpresaId])
REFERENCES [dbo].[Empresa] ([Id])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_0]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_0] FOREIGN KEY([RemitenteId])
REFERENCES [dbo].[Remitente] ([Id])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_0]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_1] FOREIGN KEY([AutorId])
REFERENCES [dbo].[Autor] ([Id])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_1]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_2] FOREIGN KEY([TipoDocId])
REFERENCES [dbo].[TipoDocumento] ([Id])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_2]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_3] FOREIGN KEY([FirmanteId])
REFERENCES [dbo].[Firmante] ([Id])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_3]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_4] FOREIGN KEY([CarpetaId])
REFERENCES [dbo].[Carpeta] ([Id])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_4]
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [FK_Historial_0] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([Id])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [FK_Historial_0]
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [FK_Historial_1] FOREIGN KEY([EstatusId])
REFERENCES [dbo].[Estatus] ([Id])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [FK_Historial_1]
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerDocumento]    Script Date: 19/03/2021 02:10:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerDocumento]
(
    @Id int
)
as 
begin 
select Documento.RutaBase, Firmante.NombreF, Firmante.ApellidoF from Firmante inner join Documento on Firmante.Id = Documento.FirmanteId where Documento.Id = @Id
 END
GO
