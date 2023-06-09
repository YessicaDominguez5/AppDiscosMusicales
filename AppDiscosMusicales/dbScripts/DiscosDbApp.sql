USE [master]
GO
/****** Object:  Database [DISCOS_DB]    Script Date: 19/3/2023 23:36:56 ******/
CREATE DATABASE [DISCOS_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DISCOS_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DISCOS_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DISCOS_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DISCOS_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DISCOS_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DISCOS_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DISCOS_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DISCOS_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DISCOS_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DISCOS_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DISCOS_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DISCOS_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DISCOS_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DISCOS_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DISCOS_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DISCOS_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DISCOS_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DISCOS_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DISCOS_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DISCOS_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DISCOS_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DISCOS_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DISCOS_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DISCOS_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DISCOS_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DISCOS_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DISCOS_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DISCOS_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DISCOS_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DISCOS_DB] SET  MULTI_USER 
GO
ALTER DATABASE [DISCOS_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DISCOS_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DISCOS_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DISCOS_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DISCOS_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DISCOS_DB] SET QUERY_STORE = OFF
GO
USE [DISCOS_DB]
GO
/****** Object:  Table [dbo].[DISCOS]    Script Date: 19/3/2023 23:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISCOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](100) NULL,
	[FechaLanzamiento] [smalldatetime] NULL,
	[CantidadCanciones] [int] NULL,
	[UrlImagenTapa] [varchar](200) NULL,
	[IdEstilo] [int] NULL,
	[IdTipoEdicion] [int] NULL,
 CONSTRAINT [PK_DISCOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTILOS]    Script Date: 19/3/2023 23:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTILOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_ESTILOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOSEDICION]    Script Date: 19/3/2023 23:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOSEDICION](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TIPOSEDICION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DISCOS] ON 

INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (1, N'Pablo Honey', CAST(N'1992-01-01T00:00:00' AS SmallDateTime), 12, N'https://cdns-images.dzcdn.net/images/cover/f08424290260e58c6d76275253b316fd/264x264.jpg', 2, 1)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (2, N'Siempre es hoy', CAST(N'2002-01-01T00:00:00' AS SmallDateTime), 17, N'https://www.cmtv.com.ar/tapas-cd/ceratisiempre.jpg', 3, 3)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (3, N'Three Cheers for Sweet Revenge', CAST(N'2004-06-08T00:00:00' AS SmallDateTime), 14, N'https://upload.wikimedia.org/wikipedia/en/5/54/Three_Cheers_for_Sweet_Revenge.png', 1, 2)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (4, N'When the sun goes down', CAST(N'2011-06-28T00:00:00' AS SmallDateTime), 12, N'https://http2.mlstatic.com/D_NQ_NP_906139-MLA26132471453_102017-O.jpg', 2, 2)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (5, N'¿Dónde están los ladrones?', CAST(N'1998-09-29T00:00:00' AS SmallDateTime), 11, N'https://i.scdn.co/image/ab67616d0000b273bfcff1dd252b22bba16a2a5d', 2, 3)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (6, N'A Night at the Opera', CAST(N'1975-11-21T00:00:00' AS SmallDateTime), 12, N'https://m.media-amazon.com/images/I/71nxRqKGA8L._SL1400_.jpg', 3, 3)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (7, N'Incesticide', CAST(N'1992-12-14T00:00:00' AS SmallDateTime), 15, N'https://i.pinimg.com/originals/41/13/64/411364de163ff184e7d1e40abeaca504.jpg', 4, 2)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (8, N'Moanin', CAST(N'1959-01-20T00:00:00' AS SmallDateTime), 8, N'https://www.jazzmessengers.com/47538/monain.jpg', 5, 1)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (9, N'Fearless', CAST(N'2008-11-11T00:00:00' AS SmallDateTime), 13, N'https://upload.wikimedia.org/wikipedia/en/8/86/Taylor_Swift_-_Fearless.png', 6, 2)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (10, N'La negra tiene tumbao', CAST(N'2001-10-02T00:00:00' AS SmallDateTime), 10, N'https://upload.wikimedia.org/wikipedia/en/4/46/Celia_Cruz_-_La_Negra_Tiene_Tumbao.jpg', 7, 2)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (11, N'Yo! Bum Rush The Show', CAST(N'1987-01-26T00:00:00' AS SmallDateTime), 12, N'https://http2.mlstatic.com/D_NQ_NP_804450-MLA49833314684_052022-O.jpg', 8, 1)
INSERT [dbo].[DISCOS] ([Id], [Titulo], [FechaLanzamiento], [CantidadCanciones], [UrlImagenTapa], [IdEstilo], [IdTipoEdicion]) VALUES (12, N'Corazón Valiente', CAST(N'1995-05-10T00:00:00' AS SmallDateTime), 12, N'https://i.discogs.com/O2VqFrgcp4tbDQOYi0ktdUinVzKramn761__PAgP9_4/rs:fit/g:sm/q:90/h:596/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0MjAz/MTYyLTE2MTEzNjQ1/NTAtNDM2Ni5qcGVn.jpeg', 9, 2)
SET IDENTITY_INSERT [dbo].[DISCOS] OFF
SET IDENTITY_INSERT [dbo].[ESTILOS] ON 

INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (1, N'Pop Punk')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (2, N'Pop')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (3, N'Rock')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (4, N'Grunge')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (5, N'Jazz')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (6, N'Country')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (7, N'Salsa')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (8, N'Hip hop')
INSERT [dbo].[ESTILOS] ([Id], [Descripcion]) VALUES (9, N'Cumbia')
SET IDENTITY_INSERT [dbo].[ESTILOS] OFF
SET IDENTITY_INSERT [dbo].[TIPOSEDICION] ON 

INSERT [dbo].[TIPOSEDICION] ([Id], [Descripcion]) VALUES (1, N'Vinilo')
INSERT [dbo].[TIPOSEDICION] ([Id], [Descripcion]) VALUES (2, N'CD')
INSERT [dbo].[TIPOSEDICION] ([Id], [Descripcion]) VALUES (3, N'Tape')
SET IDENTITY_INSERT [dbo].[TIPOSEDICION] OFF
USE [master]
GO
ALTER DATABASE [DISCOS_DB] SET  READ_WRITE 
GO
