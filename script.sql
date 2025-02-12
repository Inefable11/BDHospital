USE [SIGH]
GO
/****** Object:  User [usr_datawh]    Script Date: 04/01/2024 05:43:25 p. m. ******/
CREATE USER [usr_datawh] FOR LOGIN [usr_datawh] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [usr_datawh]
GO
/****** Object:  Schema [Establecimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
CREATE SCHEMA [Establecimientos]
GO
/****** Object:  Table [dbo].[_verificaWeb]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_verificaWeb](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[idusuario] [int] NULL,
	[opcion] [int] NULL,
	[fecha] [date] NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aa](
	[CODIGO] [varchar](7) NOT NULL,
	[DESCRIPCION] [varchar](300) NOT NULL,
	[UNID.  DE CONSUMO] [varchar](10) NULL,
	[PRECIO OPE] [money] NULL,
	[SALDO DEL MES ANTERIOR] [int] NOT NULL,
	[INGRESO] [int] NULL,
	[VENTAS] [int] NULL,
	[SIS] [int] NULL,
	[INTERV_SANIT] [int] NULL,
	[FACTOR PERD] [int] NOT NULL,
	[DEFENSA NACIONAL] [int] NULL,
	[EXONER] [int] NULL,
	[SOAT] [int] NULL,
	[OTROS  CONVEN] [int] NULL,
	[DEVOL] [int] NULL,
	[VENC] [int] NULL,
	[MERMA] [int] NOT NULL,
	[OTRAS SALIDAS] [int] NULL,
	[TOTAL SALIDAS] [decimal](11, 0) NULL,
	[SALDO  FINAL DISPONIBLE] [int] NULL,
	[FECHA DE EXP MAS PROXIMA] [datetime] NULL,
	[DevolSis] [int] NULL,
	[DevolPart] [int] NULL,
	[DevolsOAT] [int] NULL,
	[DevolcONV] [int] NULL,
	[DevolEstr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aaa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aaa](
	[DNI] [float] NULL,
	[A] [nvarchar](255) NULL,
	[b] [float] NULL,
	[c] [float] NULL,
	[d] [float] NULL,
	[apaterno] [nvarchar](255) NULL,
	[amaterno] [nvarchar](255) NULL,
	[nombre] [nvarchar](255) NULL,
	[doc] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Acreditacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acreditacion](
	[idAcreditacion] [int] IDENTITY(1,1) NOT NULL,
	[idTriajeEmergencia] [int] NULL,
 CONSTRAINT [PK_Acreditacion] PRIMARY KEY CLUSTERED 
(
	[idAcreditacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcreditacionMotivoSolicitud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcreditacionMotivoSolicitud](
	[idMotivo] [int] NOT NULL,
	[descripcion] [varchar](500) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_AcreditacionMotivoSolicitud] PRIMARY KEY CLUSTERED 
(
	[idMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcreditacionRespuesta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcreditacionRespuesta](
	[idAcreditacion] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NOT NULL,
	[idProductoPlan] [int] NOT NULL,
	[idAseguradora] [int] NOT NULL,
	[Observaciones] [varchar](5000) NULL,
	[idEmpleado_creacion] [int] NULL,
	[fechaHora_creacion] [datetime] NULL,
	[idempleado_edicion] [int] NULL,
	[fechaHora_edicion] [int] NULL,
	[nombreEstacion] [varchar](50) NULL,
 CONSTRAINT [PK_AcreditacionRespuesta] PRIMARY KEY CLUSTERED 
(
	[idAcreditacion] ASC,
	[idFuenteFinanciamiento] ASC,
	[idProductoPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcreditacionSolicitud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcreditacionSolicitud](
	[idAcreditacion] [int] NULL,
	[idMotivo] [int] NULL,
	[estado] [int] NULL,
	[idEmpleado_creacion] [int] NULL,
	[fechaHora_creacion] [datetime] NULL,
	[idempleado_edicion] [int] NULL,
	[fechaHora_edicion] [int] NULL,
	[nombreEstacion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividad](
	[idactividad] [int] NULL,
	[descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[actualizarCPT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actualizarCPT](
	[Idproducto] [int] NULL,
	[PrecioUnitario] [money] NULL,
	[codigoSIS] [varchar](20) NULL,
	[NOCUBRESIS] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[actualizarlaboratorio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actualizarlaboratorio](
	[cpt] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[actualizarLiquidacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actualizarLiquidacion](
	[idcuentaatencion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[actualizarnroreferencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actualizarnroreferencia](
	[Idatencion] [int] NULL,
	[idpaciente] [int] NULL,
	[nrodocumento] [varchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[actualizarpacientes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actualizarpacientes](
	[nrodocumento] [varchar](12) NULL,
	[apellidoMaterno] [varchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcuerdoConfidencialidad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcuerdoConfidencialidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AcuerdoConfidencialidad] [varchar](max) NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdministracioinEmplClaves]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministracioinEmplClaves](
	[idClave] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NULL,
	[usuario] [varchar](40) NULL,
	[claveAnterior] [varchar](200) NULL,
	[claveActual] [varchar](200) NULL,
	[fechaRegistro] [datetime] NULL,
	[Secuencia] [int] NULL,
	[estado] [int] NULL,
	[cpermitidos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idClave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AltaEfectiva]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AltaEfectiva](
	[icama] [int] NULL,
	[fechaAltaEfectiva] [datetime] NULL,
	[HoraAltaEfectiva] [char](5) NULL,
	[idusuario] [int] NULL,
	[observacion] [varchar](500) NULL,
	[IdcuentaAtencion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntecedentesPatologicos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntecedentesPatologicos](
	[IdAntecedentePatologico] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [int] NULL,
 CONSTRAINT [PK_AntecedentesPatologicos] PRIMARY KEY CLUSTERED 
(
	[IdAntecedentePatologico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntecedentesTratamientoBaciloscopia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntecedentesTratamientoBaciloscopia](
	[IdAntecedentesTratamiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Antimicrobianos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Antimicrobianos](
	[IdAntimicrobianos] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[IdEstado] [int] NULL,
	[DiasAprobado] [int] NULL,
	[Restringido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAntimicrobianos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AperturaCocheParo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AperturaCocheParo](
	[IdAperturaCocheParo] [int] IDENTITY(1,1) NOT NULL,
	[IdPiso] [int] NULL,
	[IdServicio] [int] NULL,
	[IdEmpleadoLicenciado] [int] NULL,
	[NroAnexo] [varchar](20) NULL,
	[NroPrecintoApertura] [varchar](20) NULL,
	[IdReceta] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[NroPrecintoCierre] [varchar](20) NULL,
	[Observaciones] [varchar](100) NULL,
	[IdEmpleadoRegApertura] [int] NULL,
	[IdEstado] [int] NULL,
	[FechaApertura] [datetime] NULL,
	[FechaCierre] [datetime] NULL,
	[IdEmpleadoRegCierre] [int] NULL,
	[IdEmpleadoAnula] [int] NULL,
	[FechaAnula] [datetime] NULL,
	[IdMotivoApertura] [int] NULL,
	[MotivoApertura] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aplicativo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aplicativo](
	[id_aplicativo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[codigo_app] [varchar](6) NULL,
 CONSTRAINT [aplicativo_PK] PRIMARY KEY CLUSTERED 
(
	[id_aplicativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArbovirosisAntecedentes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArbovirosisAntecedentes](
	[IdArbovirosis] [int] NULL,
	[IdDistrito] [int] NULL,
	[Direccion] [varchar](1000) NULL,
	[Desde] [date] NULL,
	[Hasta] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArbovirosisCabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArbovirosisCabecera](
	[IdArbovirosis] [int] IDENTITY(1,1) NOT NULL,
	[FechaNotificacion] [date] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[Ocupacion] [varchar](200) NULL,
	[IdDistrito] [int] NULL,
	[Direccion] [varchar](1000) NULL,
	[Gestante] [int] NULL,
	[EdadGestacional] [int] NULL,
	[CasoAutoctono] [int] NULL,
	[CasoImportado] [int] NULL,
	[TuvoDengue] [int] NULL,
	[TuvoDengueAnio] [int] NULL,
	[RecibioVacuna] [int] NULL,
	[RecibioVacunaAnio] [int] NULL,
	[TieneComorbilidad] [int] NULL,
	[Comorbilidad] [varchar](500) NULL,
	[FechaInicioSintomas] [date] NULL,
	[FechaPrimeraMuestra] [date] NULL,
	[FechaSegundaMuestra] [date] NULL,
	[Fiebre] [decimal](18, 1) NULL,
	[CompromisoGraveOrganosDes] [varchar](200) NULL,
	[SangradoGraveDes] [varchar](200) NULL,
	[EGAperturaOcular] [int] NULL,
	[EGRespuestaMotora] [int] NULL,
	[EGRespuestaVerbal] [int] NULL,
	[DengueSinSignosAlarma] [int] NULL,
	[DengueConSignosAlarma] [int] NULL,
	[DengueGrave] [int] NULL,
	[Chikungunya] [int] NULL,
	[ChikungunyaGrave] [int] NULL,
	[Zika] [int] NULL,
	[FiebreAmarilla] [int] NULL,
	[Observaciones] [varchar](5000) NULL,
	[IdEstado] [int] NULL,
	[IdUsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioModifica] [int] NULL,
	[FechaModifica] [datetime] NULL,
	[IdUsuarioElimina] [int] NULL,
	[FechaElimina] [datetime] NULL,
	[IdUsuarioClasificacion] [int] NULL,
	[FechaClasificacion] [datetime] NULL,
	[IdUsuarioEvolucion] [int] NULL,
	[FechaEvolucion] [datetime] NULL,
	[EvoHospitalizado] [int] NULL,
	[EvoFechaHospitalizado] [date] NULL,
	[EvoFallecido] [int] NULL,
	[EvoFechaFallecido] [date] NULL,
	[EvoReferido] [int] NULL,
	[EvoFechaReferido] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArbovirosis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArbovirosisExamenes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArbovirosisExamenes](
	[IdExamen] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArbovirosisGrupo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArbovirosisGrupo](
	[IdGrupo] [int] NULL,
	[Descripcion] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArbovirosisItem]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArbovirosisItem](
	[IdItem] [int] NULL,
	[IdGrupo] [int] NULL,
	[Descripcion] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArbovirosisResultados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArbovirosisResultados](
	[IdResultado] [int] IDENTITY(1,1) NOT NULL,
	[IdArbovirosis] [int] NULL,
	[IdExamen] [int] NULL,
	[Resultado] [int] NULL,
	[FechaResultado] [date] NULL,
	[IdUsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioModifica] [int] NULL,
	[FechaModifica] [datetime] NULL,
	[SolicitaMedico] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdResultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArbovirosisSintomas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArbovirosisSintomas](
	[IdArbovirosis] [int] NULL,
	[IdItem] [int] NULL,
	[IdGrupo] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchiveroServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveroServicio](
	[IdArchivero] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdEmpleado] [int] NULL,
	[IdServicio] [int] NULL,
 CONSTRAINT [ResponsableHistoriaServicio_PK] PRIMARY KEY CLUSTERED 
(
	[IdArchivero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[IdArea] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [Area_PK] PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaServicio](
	[IdAreaServicio] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdServicio] [int] NULL,
	[IdArea] [int] NULL,
 CONSTRAINT [AreaServicio_PK] PRIMARY KEY CLUSTERED 
(
	[IdAreaServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaTramitaSeguros]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaTramitaSeguros](
	[idAreaTramitaSeguros] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AreaTramitaSeguros] PRIMARY KEY CLUSTERED 
(
	[idAreaTramitaSeguros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aResultados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aResultados](
	[FECHA] [datetime] NULL,
	[APELLIDOS] [nvarchar](255) NULL,
	[DNI] [nvarchar](255) NULL,
	[RESULTADO] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[articulacionesCabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulacionesCabecera](
	[idArticulacion] [int] IDENTITY(1,1) NOT NULL,
	[nroADolorosas] [int] NOT NULL,
	[nroATumefactas] [int] NOT NULL,
	[vsg] [int] NOT NULL,
	[gh] [int] NOT NULL,
	[resultado] [decimal](18, 2) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idMedicoRegistra] [int] NOT NULL,
	[idMedicoModifica] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaModifica] [datetime] NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[articulacionesDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulacionesDetalle](
	[idCoordenada] [int] IDENTITY(1,1) NOT NULL,
	[cx] [int] NOT NULL,
	[cy] [int] NOT NULL,
	[TipoArticulacion] [int] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idMedicoRegistra] [int] NOT NULL,
	[idMedicoModifica] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaModifica] [datetime] NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aseguradoras]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aseguradoras](
	[idAseguradora] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdFuenteFinanciamiento] [int] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_Aseguradoras] PRIMARY KEY CLUSTERED 
(
	[idAseguradora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AseguradorasxAtencion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AseguradorasxAtencion](
	[idAseguradora] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[idAseguradora_bkp] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtecnionesCitaControl]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtecnionesCitaControl](
	[IdcuentaAtencion] [int] NOT NULL,
	[Dias] [int] NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[TieneCita] [bit] NULL,
	[idCuentaAtencionCitado] [int] NULL,
	[IdModalidadAsistencia] [int] NULL,
	[Observaciones] [varchar](5000) NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdTipoProximaCita] [int] NULL,
	[ObservacionTipo] [varchar](50) NULL,
	[IdEstadoVincula] [int] NULL,
 CONSTRAINT [PK_AtecnionesCitaControl] PRIMARY KEY CLUSTERED 
(
	[IdcuentaAtencion] ASC,
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atenciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atenciones](
	[IdAtencion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[HoraIngreso] [char](5) NOT NULL,
	[IdDestinoAtencion] [int] NULL,
	[IdTipoCondicionAlServicio] [int] NULL,
	[IdTipoCondicionALEstab] [int] NULL,
	[IdServicioIngreso] [int] NOT NULL,
	[IdMedicoIngreso] [int] NOT NULL,
	[IdEspecialidadMedico] [int] NULL,
	[IdMedicoEgreso] [int] NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [char](5) NULL,
	[IdOrigenAtencion] [int] NULL,
	[FechaEgresoAdministrativo] [datetime] NULL,
	[HoraEgresoAdministrativo] [char](5) NULL,
	[IdCondicionAlta] [int] NULL,
	[IdTipoAlta] [int] NULL,
	[IdServicioEgreso] [int] NULL,
	[IdCamaIngreso] [int] NULL,
	[IdCamaEgreso] [int] NULL,
	[IdTipoGravedad] [int] NULL,
	[IdTipoEdad] [int] NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[IdTipoServicio] [int] NULL,
	[IdFormaPago] [int] NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idEstadoAtencion] [int] NULL,
	[EsPacienteExterno] [bit] NULL,
	[idSunasaPacienteHistorico] [int] NULL,
	[FyHInicioI] [datetime] NULL,
	[FyHFinal] [datetime] NULL,
	[idCondicionMaterna] [int] NULL,
	[EsCuentaUnica] [int] NULL,
	[idTipoCondicionEspecialidad] [int] NULL,
	[FechaFinDeAtencion] [datetime] NULL,
	[FechaFallecimiento] [varchar](10) NULL,
	[HoraFallecimiento] [varchar](5) NULL,
	[idTipoCondicionEess] [int] NULL,
	[FechaFallecimiento3] [date] NULL,
	[HoraInicializaAte] [varchar](5) NULL,
	[HoraFinalizaAte] [varchar](5) NULL,
	[IdUsuarioInicializaAte] [int] NULL,
	[IdUsuarioFinalizaAte] [int] NULL,
	[FechaInicializaAte] [date] NULL,
	[FechaFinalizaAte] [date] NULL,
	[MotivoAnula] [varchar](500) NULL,
	[IdTeleinterconsulta] [int] NULL,
	[PacienteReferidoTele] [varchar](1) NULL,
	[AceptaRefTele] [varchar](1) NULL,
	[IdUbicacionTic] [int] NULL,
	[IdPlanSalud] [int] NULL,
	[IdAccidente] [int] NULL,
	[idPlanRimac] [int] NULL,
 CONSTRAINT [PK_Atenciones] PRIMARY KEY CLUSTERED 
(
	[IdAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[atenciones_borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atenciones_borrados](
	[IdAtencion] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[HoraIngreso] [char](5) NOT NULL,
	[IdDestinoAtencion] [int] NULL,
	[IdTipoCondicionAlServicio] [int] NULL,
	[IdTipoCondicionALEstab] [int] NULL,
	[IdServicioIngreso] [int] NOT NULL,
	[IdMedicoIngreso] [int] NOT NULL,
	[IdEspecialidadMedico] [int] NULL,
	[IdMedicoEgreso] [int] NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [char](5) NULL,
	[IdOrigenAtencion] [int] NULL,
	[FechaEgresoAdministrativo] [datetime] NULL,
	[HoraEgresoAdministrativo] [char](5) NULL,
	[IdCondicionAlta] [int] NULL,
	[IdTipoAlta] [int] NULL,
	[IdServicioEgreso] [int] NULL,
	[IdCamaIngreso] [int] NULL,
	[IdCamaEgreso] [int] NULL,
	[IdTipoGravedad] [int] NULL,
	[IdTipoEdad] [int] NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[IdTipoServicio] [int] NULL,
	[IdFormaPago] [int] NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idEstadoAtencion] [int] NULL,
	[EsPacienteExterno] [bit] NULL,
	[idSunasaPacienteHistorico] [int] NULL,
	[FyHInicioI] [datetime] NULL,
	[FyHFinal] [datetime] NULL,
	[idCondicionMaterna] [int] NULL,
	[EsCuentaUnica] [int] NULL,
	[idTipoCondicionEspecialidad] [int] NULL,
	[FechaFinDeAtencion] [datetime] NULL,
	[FechaFallecimiento] [varchar](10) NULL,
	[HoraFallecimiento] [varchar](5) NULL,
	[idTipoCondicionEess] [int] NULL,
	[FechaFallecimiento3] [date] NULL,
	[HoraInicializaAte] [varchar](5) NULL,
	[HoraFinalizaAte] [varchar](5) NULL,
	[IdUsuarioInicializaAte] [int] NULL,
	[IdUsuarioFinalizaAte] [int] NULL,
	[FechaInicializaAte] [date] NULL,
	[FechaFinalizaAte] [date] NULL,
	[MotivoAnula] [varchar](500) NULL,
	[IdTeleinterconsulta] [int] NULL,
	[PacienteReferidoTele] [varchar](1) NULL,
	[AceptaRefTele] [varchar](1) NULL,
	[IdUbicacionTic] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesConvenio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesConvenio](
	[idAtencionesConvenio] [int] IDENTITY(1,1) NOT NULL,
	[idPaciente] [int] NOT NULL,
	[nroOficio] [varchar](20) NOT NULL,
	[FechaSesion] [datetime] NOT NULL,
	[ImporteSesion] [money] NULL,
	[idUsuario] [int] NOT NULL,
	[idProducto] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDatosAdicionales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDatosAdicionales](
	[idAtencion] [int] NOT NULL,
	[DireccionDomicilio] [varchar](100) NULL,
	[NombreAcompaniante] [varchar](100) NULL,
	[Observacion] [varchar](200) NULL,
	[MotivoProximaCita] [varchar](200) NULL,
	[ProximaCita] [datetime] NULL,
	[NumeroDeHijos] [int] NULL,
	[IdSiaSis] [int] NULL,
	[FuaCodigoPrestacion] [varchar](3) NULL,
	[SisCodigo] [varchar](2) NULL,
	[IdTipoReferenciaOrigen] [int] NULL,
	[IdTipoReferenciaDestino] [int] NULL,
	[IdEstablecimientoOrigen] [int] NULL,
	[IdEstablecimientoDestino] [int] NULL,
	[IdEstablecimientoNoMinsaOrigen] [int] NULL,
	[IdEstablecimientoNoMinsaDestino] [int] NULL,
	[HuboInfeccionIntraHospitalaria] [int] NULL,
	[TieneNecropsia] [bit] NULL,
	[IdMedicoRespNacimiento] [int] NULL,
	[RecienNacido] [bit] NULL,
	[NroReferenciaOrigen] [varchar](20) NULL,
	[NroReferenciaDestino] [varchar](20) NULL,
	[SeImprimioFicha] [bit] NULL,
	[NroExpediente] [varchar](50) NULL,
	[IdServicioDestino] [int] NULL,
	[NroDocumentoAcompañante] [varchar](12) NULL,
	[DomicilioAcompañante] [varchar](1500) NULL,
	[IdParentesco] [int] NULL,
	[AltaDefinitiva] [char](1) NULL,
	[IdTipoOrigen] [int] NULL,
	[IdEstablecimientoPE] [int] NULL,
	[IdModalidadAsistencia] [int] NULL,
	[IdTipoProximaCita] [int] NULL,
	[ObservacionTipo] [varchar](50) NULL,
	[TieneCita2] [bit] NULL,
	[idCuentaAtencionCitado2] [int] NULL,
	[Observaciones] [varchar](5000) NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdEstadoVincula] [int] NULL,
	[IdServDestinoOrdenHosp] [int] NULL,
	[MotivoOrdenHosp] [varchar](200) NULL,
	[IdReferenciaContraRef] [varchar](20) NULL,
	[RequiereHosp] [int] NULL,
	[ComentarioReqHosp] [varchar](500) NULL,
	[FechaRegRHosp] [datetime] NULL,
	[IdUsuarioRegRHosp] [int] NULL,
	[IdTipoCaso] [int] NULL,
	[IdIndicadorCaso] [int] NULL,
 CONSTRAINT [PK_AtencionesDatosAdicionales] PRIMARY KEY CLUSTERED 
(
	[idAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDatosAdicionalesAlta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDatosAdicionalesAlta](
	[IdAtencion] [int] NOT NULL,
	[Pronostico] [varchar](1000) NULL,
	[RecomendacionesyTratamiento] [varchar](5000) NULL,
	[EnfermedadActual] [varchar](3000) NULL,
	[Recomendaciones] [varchar](5000) NULL,
	[Complicaciones] [varchar](5000) NULL,
	[NroActaDef] [varchar](15) NULL,
 CONSTRAINT [PK_AtencionesDatosAdicionalesAlta] PRIMARY KEY CLUSTERED 
(
	[IdAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDatosAdicionalesR]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDatosAdicionalesR](
	[idAtencion] [int] NOT NULL,
	[DireccionDomicilio] [varchar](100) NULL,
	[NombreAcompaniante] [varchar](100) NULL,
	[Observacion] [varchar](200) NULL,
	[MotivoProximaCita] [varchar](200) NULL,
	[ProximaCita] [datetime] NULL,
	[NumeroDeHijos] [int] NULL,
	[IdSiaSis] [int] NULL,
	[FuaCodigoPrestacion] [varchar](3) NULL,
	[SisCodigo] [varchar](2) NULL,
	[IdTipoReferenciaOrigen] [int] NULL,
	[IdTipoReferenciaDestino] [int] NULL,
	[IdEstablecimientoOrigen] [int] NULL,
	[IdEstablecimientoDestino] [int] NULL,
	[IdEstablecimientoNoMinsaOrigen] [int] NULL,
	[IdEstablecimientoNoMinsaDestino] [int] NULL,
	[HuboInfeccionIntraHospitalaria] [int] NULL,
	[TieneNecropsia] [bit] NULL,
	[IdMedicoRespNacimiento] [int] NULL,
	[RecienNacido] [bit] NULL,
	[NroReferenciaOrigen] [varchar](20) NULL,
	[NroReferenciaDestino] [varchar](20) NULL,
	[SeImprimioFicha] [bit] NULL,
	[NroExpediente] [varchar](50) NULL,
	[IdServicioDestino] [int] NULL,
	[NroDocumentoAcompañante] [varchar](12) NULL,
	[DomicilioAcompañante] [varchar](1500) NULL,
	[IdParentesco] [int] NULL,
	[AltaDefinitiva] [char](1) NULL,
	[IdTipoOrigen] [int] NULL,
	[IdEstablecimientoPE] [int] NULL,
	[IdModalidadAsistencia] [int] NULL,
	[IdTipoProximaCita] [int] NULL,
	[ObservacionTipo] [varchar](50) NULL,
	[TieneCita2] [bit] NULL,
	[idCuentaAtencionCitado2] [int] NULL,
	[Observaciones] [varchar](5000) NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdEstadoVincula] [int] NULL,
	[IdServDestinoOrdenHosp] [int] NULL,
	[MotivoOrdenHosp] [varchar](200) NULL,
	[IdReferenciaContraRef] [varchar](20) NULL,
	[RequiereHosp] [int] NULL,
	[ComentarioReqHosp] [varchar](500) NULL,
	[FechaRegRHosp] [datetime] NULL,
	[IdUsuarioRegRHosp] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDescansoMedico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDescansoMedico](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdcuentaAtencion] [int] NULL,
	[IdUsuario] [int] NULL,
	[DiasDescanso] [int] NULL,
	[FechaInicio] [varchar](10) NULL,
	[FechaFin] [varchar](10) NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticoProcedimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticoProcedimiento](
	[idProcedimientoDiagnostico] [int] IDENTITY(1,1) NOT NULL,
	[idCuenta] [int] NULL,
	[idAtencionDiagnostico2] [int] NULL,
	[ideOrden] [int] NULL,
	[ideProducto] [int] NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticos](
	[IdAtencionDiagnostico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdClasificacionDx] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idordenDx] [int] NULL,
	[estado] [int] NULL,
	[FECHA] [date] NULL,
	[iddiagnosticom] [int] NULL,
	[iDuSUARIO] [int] NULL,
	[IdListaEspera] [int] NULL,
 CONSTRAINT [AtencionesDiagnosticos_PK] PRIMARY KEY CLUSTERED 
(
	[IdAtencionDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticos_borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticos_borrados](
	[IdAtencionDiagnostico] [int] NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdClasificacionDx] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idordenDx] [int] NULL,
	[estado] [int] NULL,
	[FECHA] [date] NULL,
	[iddiagnosticom] [int] NULL,
	[iDuSUARIO] [int] NULL,
	[IdListaEspera] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticos2]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticos2](
	[IdAtencionDiagnostico2] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdClasificacionDx] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[IdUsuario] [int] NULL,
	[Estado] [bit] NULL,
	[idorden] [int] NULL,
	[idproducto] [int] NULL,
	[idPaciente] [int] NULL,
	[IdMFMonitoreoCab] [int] NULL,
 CONSTRAINT [AtencionesDiagnosticos2_PK] PRIMARY KEY CLUSTERED 
(
	[IdAtencionDiagnostico2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticosEliminados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticosEliminados](
	[Usuario] [nvarchar](60) NOT NULL,
	[FechaEliminacion] [datetime] NULL,
	[idAtencionDiagnostico] [int] NULL,
	[idDiagostico] [int] NULL,
	[idClasificacionDx] [int] NULL,
	[idSubclasificacionDx] [int] NULL,
	[idAtencion] [int] NULL,
	[Motivo] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticosEvolucion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticosEvolucion](
	[IdAtencionDiagnostico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdClasificacionDx] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[IdOrdenDx] [int] NULL,
	[IdUsuario] [int] NULL,
	[Fecha] [datetime] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [AtencionesDiagnosticosEvolucion_PK] PRIMARY KEY CLUSTERED 
(
	[IdAtencionDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticosMorbilidad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticosMorbilidad](
	[IdAtencionDiagnostico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdClasificacionDx] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[IdDiagnosticoM] [int] NULL,
	[IdOrdenDx] [int] NULL,
	[IdUsuario] [int] NULL,
	[Fecha] [datetime] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [AtencionesDiagnosticosMorbilidad_PK] PRIMARY KEY CLUSTERED 
(
	[IdAtencionDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticosR]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticosR](
	[IdAtencion] [int] NOT NULL,
	[IdClasificacionDx] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idordenDx] [int] NULL,
	[estado] [int] NULL,
	[FECHA] [date] NULL,
	[iddiagnosticom] [int] NULL,
	[iDuSUARIO] [int] NULL,
	[IdListaEspera] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesDiagnosticosReferencias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesDiagnosticosReferencias](
	[IdAtencion] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[IdsubClasificacion] [int] NULL,
	[IdUsuario] [int] NULL,
	[IdEstado] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Justifica] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesEmergencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesEmergencia](
	[IdAtencionEmergencia] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtencion] [int] NULL,
	[IdCausaExternaMorbilidad] [int] NULL,
	[IdLugarEvento] [int] NULL,
	[IdTipoEvento] [int] NULL,
	[IdSeguridad] [int] NULL,
	[IdRelacionAgresorVictima] [int] NULL,
	[IdClaseAccidente] [int] NULL,
	[IdTipoVehiculo] [int] NULL,
	[IdTipoTransporte] [int] NULL,
	[IdUbicacionLesionado] [int] NULL,
	[IdPosicionLesionadoALAB] [int] NULL,
	[IdGrupoOcupacionalALAB] [int] NULL,
	[IdTipoAgenteAGAN] [int] NULL,
	[Motivo] [varchar](1000) NULL,
	[TE] [varchar](1000) NULL,
	[Relato] [varchar](1000) NULL,
	[Antecedentes] [varchar](1000) NULL,
	[EFGeneral] [varchar](1000) NULL,
	[EFRespiratorio] [varchar](1000) NULL,
	[EFCardiovascular] [varchar](1000) NULL,
	[EFAbdomen] [varchar](1000) NULL,
	[EFNeurologico] [varchar](1000) NULL,
	[EFGentouriano] [varchar](1000) NULL,
	[EFLocomotor] [varchar](1000) NULL,
	[Otros] [varchar](1000) NULL,
	[Evolucion] [varchar](2000) NULL,
	[Tratamiento] [varchar](2000) NULL,
	[Observaciones] [varchar](2000) NULL,
	[criterioobs] [int] NULL,
	[Oxigenoterapia] [char](1) NULL,
	[OxigenoterapiaValor] [int] NULL,
	[idTipoVentilacionMecanica] [int] NULL,
	[Rango] [varchar](50) NULL,
	[Piel] [varchar](2000) NULL,
	[TCSC] [varchar](2000) NULL,
	[HoraAccidente] [varchar](5) NULL,
	[IdDepartamento] [int] NULL,
	[IdProvincia] [int] NULL,
	[IdDistrito] [int] NULL,
	[IdTipoAccidente] [int] NULL,
	[IdTraslado] [int] NULL,
	[IdUsuarioAnamnesis] [int] NULL,
 CONSTRAINT [AtencionesEmergencia_PK] PRIMARY KEY CLUSTERED 
(
	[IdAtencionEmergencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesEmergenciaEliminados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesEmergenciaEliminados](
	[Usuario] [nvarchar](60) NOT NULL,
	[FechaEliminacion] [datetime] NULL,
	[idAtencionEmergencia] [int] NULL,
	[idAtencion] [int] NULL,
	[Motivo] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesEmerHosp]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesEmerHosp](
	[IdcuentaatencionE] [int] NULL,
	[IdcuentaatencionH] [int] NULL,
 CONSTRAINT [IX_AtencionesEmerHosp] UNIQUE NONCLUSTERED 
(
	[IdcuentaatencionE] ASC,
	[IdcuentaatencionH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesEpisodiosCabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesEpisodiosCabecera](
	[idPaciente] [int] NOT NULL,
	[idEpisodio] [int] NOT NULL,
	[FechaApertura] [datetime] NOT NULL,
	[FechaCierre] [datetime] NULL,
 CONSTRAINT [PK_AtencionesEpisodiosCabecera] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC,
	[idEpisodio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesEpisodiosDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesEpisodiosDetalle](
	[idPaciente] [int] NOT NULL,
	[idEpisodio] [int] NOT NULL,
	[idAtencion] [int] NOT NULL,
 CONSTRAINT [PK_AtencionesEpisodiosDetalle] PRIMARY KEY CLUSTERED 
(
	[idEpisodio] ASC,
	[idPaciente] ASC,
	[idAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesEstanciaHospitalaria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesEstanciaHospitalaria](
	[IdEstanciaHospitalaria] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Secuencia] [int] NOT NULL,
	[FechaOcupacion] [datetime] NOT NULL,
	[HoraOcupacion] [char](5) NOT NULL,
	[FechaDesocupacion] [datetime] NULL,
	[HoraDesocupacion] [char](5) NULL,
	[IdServicio] [int] NOT NULL,
	[IdCama] [int] NULL,
	[DiasEstancia] [decimal](8, 2) NULL,
	[IdMedicoOrdena] [int] NULL,
	[IdFacturacionServicio] [int] NULL,
	[IdAtencion] [int] NULL,
	[LlegoAlServicio] [int] NULL,
	[idProducto] [int] NULL,
	[IdMedicoOrdenaOrigen] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[IdUsuarioAuditoria] [int] NULL,
	[IdTipoServicio] [int] NULL,
	[IdPrioridad] [int] NULL,
	[IdEscalaSOFA] [int] NULL,
	[IdArea] [int] NULL,
 CONSTRAINT [OcupacionCamas_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstanciaHospitalaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesEstanciaHospitalariaEliminados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesEstanciaHospitalariaEliminados](
	[Usuario] [nvarchar](60) NULL,
	[FechaEliminacion] [datetime] NULL,
	[IdEstanciaHospitalaria] [int] NOT NULL,
	[Secuencia] [int] NOT NULL,
	[FechaOcupacion] [datetime] NOT NULL,
	[HoraOcupacion] [char](5) NOT NULL,
	[FechaDesocupacion] [datetime] NULL,
	[HoraDesocupacion] [char](5) NULL,
	[IdServicio] [int] NOT NULL,
	[IdCama] [int] NULL,
	[DiasEstancia] [decimal](8, 2) NULL,
	[IdMedicoOrdena] [int] NULL,
	[IdFacturacionServicio] [int] NULL,
	[IdAtencion] [int] NULL,
	[LlegoAlServicio] [int] NULL,
	[idProducto] [int] NULL,
	[IdMedicoOrdenaOrigen] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[IdUsuarioAuditoria] [int] NULL,
	[IdTipoServicio] [int] NULL,
	[Motivo] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesHijoMadre]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesHijoMadre](
	[idAtencion] [int] NOT NULL,
	[idAtencionMadre] [int] NULL,
 CONSTRAINT [PK_AtencionesMadreHijo] PRIMARY KEY CLUSTERED 
(
	[idAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesHIS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesHIS](
	[idAtencionesHIS] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[estado] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[idcita] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesIndicacionesMedicas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesIndicacionesMedicas](
	[IdIndicaciones] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[DescripcionTerapeutica] [varchar](5000) NULL,
	[OtrasIndicaciones] [varchar](5000) NULL,
	[IdServicioActual] [int] NULL,
	[FechaReg] [datetime] NULL,
	[IdEmpleadoReg] [int] NULL,
	[FechaMod] [datetime] NULL,
	[IdEmpleadoMod] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[atencionesLucio20220909]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atencionesLucio20220909](
	[idcuentaatencion] [int] NOT NULL,
	[idestadoatencion] [int] NULL,
	[idestado] [int] NULL,
	[FechaEgresoAdministrativo] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesMotivoEliminarAlta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesMotivoEliminarAlta](
	[IdAtencion] [int] NOT NULL,
	[motivo] [varchar](1000) NULL,
	[idusuario] [int] NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_AtencionesEliminaAlta] PRIMARY KEY CLUSTERED 
(
	[IdAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesMovimientoCamasTopico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesMovimientoCamasTopico](
	[idMovimiento] [int] IDENTITY(1,1) NOT NULL,
	[Secuencia] [int] NOT NULL,
	[idAtencion] [int] NOT NULL,
	[idCama] [int] NOT NULL,
	[idServicio] [int] NULL,
	[FechaOcupacion] [datetime] NULL,
	[FechaDesocupacion] [datetime] NULL,
	[idEstado] [int] NULL,
	[idEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesNacimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesNacimientos](
	[IdNacimiento] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[EdadSemanas] [int] NOT NULL,
	[Talla] [float] NOT NULL,
	[Peso] [float] NOT NULL,
	[IdTipoSexo] [int] NOT NULL,
	[IdCondicionRN] [int] NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdPacienteNacido] [int] NULL,
	[apgar_1] [int] NULL,
	[apgar_5] [int] NULL,
	[Clamplaje] [int] NULL,
	[ClamplajeFecha] [datetime] NULL,
	[NroOrdenHijoEnParto] [int] NULL,
	[NroOrdenHijo] [int] NULL,
	[docIdentidad] [varchar](20) NULL,
	[IdDocIdentidad] [int] NULL,
	[ReanimacionNeonatal] [int] NULL,
	[ContactoPrecoz] [int] NULL,
	[PC] [varchar](50) NULL,
	[PT] [varchar](50) NULL,
	[ComplicacionRN] [int] NULL,
 CONSTRAINT [Nacimientos_PK] PRIMARY KEY CLUSTERED 
(
	[IdNacimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesNotas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesNotas](
	[IdNota] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[Descripcion] [varchar](5000) NULL,
	[IdServicioActual] [int] NULL,
	[FechaReg] [datetime] NULL,
	[IdEmpleadoReg] [int] NULL,
	[FechaMod] [datetime] NULL,
	[IdEmpleadoMod] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesPrueba]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesPrueba](
	[idCuentaAtencion] [int] NULL,
	[idServicioEgreso] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[idTipoServicio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesR]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesR](
	[IdAtencion] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[HoraIngreso] [char](5) NOT NULL,
	[IdDestinoAtencion] [int] NULL,
	[IdTipoCondicionAlServicio] [int] NULL,
	[IdTipoCondicionALEstab] [int] NULL,
	[IdServicioIngreso] [int] NOT NULL,
	[IdMedicoIngreso] [int] NOT NULL,
	[IdEspecialidadMedico] [int] NULL,
	[IdMedicoEgreso] [int] NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [char](5) NULL,
	[IdOrigenAtencion] [int] NULL,
	[FechaEgresoAdministrativo] [datetime] NULL,
	[HoraEgresoAdministrativo] [char](5) NULL,
	[IdCondicionAlta] [int] NULL,
	[IdTipoAlta] [int] NULL,
	[IdServicioEgreso] [int] NULL,
	[IdCamaIngreso] [int] NULL,
	[IdCamaEgreso] [int] NULL,
	[IdTipoGravedad] [int] NULL,
	[IdTipoEdad] [int] NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[IdTipoServicio] [int] NULL,
	[IdFormaPago] [int] NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idEstadoAtencion] [int] NULL,
	[EsPacienteExterno] [bit] NULL,
	[idSunasaPacienteHistorico] [int] NULL,
	[FyHInicioI] [datetime] NULL,
	[FyHFinal] [datetime] NULL,
	[idCondicionMaterna] [int] NULL,
	[EsCuentaUnica] [int] NULL,
	[idTipoCondicionEspecialidad] [int] NULL,
	[FechaFinDeAtencion] [datetime] NULL,
	[FechaFallecimiento] [varchar](10) NULL,
	[HoraFallecimiento] [varchar](5) NULL,
	[idTipoCondicionEess] [int] NULL,
	[FechaFallecimiento3] [date] NULL,
	[HoraInicializaAte] [varchar](5) NULL,
	[HoraFinalizaAte] [varchar](5) NULL,
	[IdUsuarioInicializaAte] [int] NULL,
	[IdUsuarioFinalizaAte] [int] NULL,
	[FechaInicializaAte] [date] NULL,
	[FechaFinalizaAte] [date] NULL,
	[MotivoAnula] [varchar](500) NULL,
	[IdTeleinterconsulta] [int] NULL,
	[PacienteReferidoTele] [varchar](1) NULL,
	[AceptaRefTele] [varchar](1) NULL,
	[IdUbicacionTic] [int] NULL,
	[IdPlanSalud] [int] NULL,
	[IdAccidente] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesReferenciaCorrelativo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesReferenciaCorrelativo](
	[IdCuentaATencion] [int] NULL,
	[Correlativo] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesRegistroTiempos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesRegistroTiempos](
	[IdCuentaAtencion] [int] NULL,
	[IdUsuario] [int] NULL,
	[Pc] [varchar](30) NULL,
	[Fecha] [datetime] NULL,
	[Observacion] [varchar](200) NULL,
	[IdEstado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesSolicitudEspecialidades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesSolicitudEspecialidades](
	[IdSolicitudEspecialidad] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[IdEstado] [bit] NULL,
	[motivo] [varchar](500) NULL,
	[IdDiagnostico] [int] NULL,
	[FechaSolicitud] [date] NULL,
	[canal] [varchar](10) NULL,
	[TieneCita] [bit] NULL,
	[EstadoProcede] [int] NULL,
	[Comentario] [varchar](1000) NULL,
	[idUsuarioAuditoria] [int] NULL,
	[fecha] [datetime] NULL,
	[idCuentaAtencionCitado] [int] NULL,
	[IdModalidadAsistencia] [int] NULL,
	[idtipoproximacita] [int] NULL,
	[ObservacionTipo] [varchar](50) NULL,
	[Observaciones] [varchar](5000) NULL,
	[IdEstadoVincula] [int] NULL,
 CONSTRAINT [IdASolicitudEspecialidades_PK] PRIMARY KEY CLUSTERED 
(
	[IdSolicitudEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesTabla]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesTabla](
	[Cuenta] [float] NULL,
	[TipoAtencion] [nvarchar](255) NULL,
	[Mes_Atencion] [nvarchar](255) NULL,
	[PeriodAtencion] [float] NULL,
	[Historia] [nvarchar](255) NULL,
	[DNI] [nvarchar](255) NULL,
	[Paciente] [nvarchar](255) NULL,
	[Fch_ing] [nvarchar](255) NULL,
	[Fch_egr] [nvarchar](255) NULL,
	[Servicio Ingreso] [nvarchar](255) NULL,
	[Servicio Egreso] [nvarchar](255) NULL,
	[CodPrest] [nvarchar](255) NULL,
	[TotalAsegurado] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesTemporalCE]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesTemporalCE](
	[idCuentaAtencion] [int] NULL,
	[CitaObservaciones] [varchar](5000) NULL,
	[CitaMotivo] [varchar](5000) NULL,
	[CitaExamenClinico] [varchar](5000) NULL,
	[CitaMotivoExtension] [varchar](1000) NULL,
	[RecomendacionesTrat] [varchar](2000) NULL,
	[TratamientoRealizado] [varchar](2000) NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
	[Apetito] [varchar](1000) NULL,
	[Deposiciones] [varchar](100) NULL,
	[Sed] [varchar](100) NULL,
	[Orina] [varchar](100) NULL,
	[Suenio] [varchar](100) NULL,
	[TiempoEnfermedad] [varchar](5000) NULL,
	[RelatoCronologico] [varchar](5000) NULL,
	[SignosSintomas] [varchar](5000) NULL,
	[AspectoGeneral] [varchar](5000) NULL,
	[PielyMucosa] [varchar](5000) NULL,
	[Torax] [varchar](1000) NULL,
	[CardioVascular] [varchar](1000) NULL,
	[Abdomen] [varchar](1000) NULL,
	[Neurologico] [varchar](1000) NULL,
	[MuscEsqueletico] [varchar](1000) NULL,
	[Genitourinario] [varchar](1000) NULL,
	[OtrosExRegional] [varchar](5000) NULL,
	[InfProcDescripcion] [varchar](5000) NULL,
	[InfProcResultados] [varchar](5000) NULL,
	[InfProcComplicaciones] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesTransferencias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesTransferencias](
	[IdTransferencia] [int] IDENTITY(1,1) NOT NULL,
	[IdAtencion] [int] NULL,
	[IdOrigenAtencion] [int] NULL,
	[IdServicioIngreso] [int] NULL,
	[IdMedicoIngreso] [int] NULL,
	[IdServicioEgreso] [int] NULL,
	[IdMedicoEgreso] [int] NULL,
	[FechaIngreso] [datetime] NULL,
	[HoraIngreso] [varchar](5) NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [varchar](5) NULL,
	[IdCondicionAlta] [int] NULL,
	[IdTipoAlta] [int] NULL,
	[IdTipoServicio] [int] NULL,
	[IdEstadoEpisodio] [int] NULL,
	[IdusuarioAgrega] [int] NULL,
	[FechaAgrega] [datetime] NULL,
	[PasoAHospitalizacion] [int] NULL,
	[ObsTransferencia] [varchar](5000) NULL,
 CONSTRAINT [PK_AtencionesTransferencias_1] PRIMARY KEY CLUSTERED 
(
	[IdTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesTraza]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesTraza](
	[FechaRegistro] [datetime] NULL,
	[SP] [varchar](100) NULL,
	[idCuentaAtencion] [int] NULL,
	[idServicioEgreso] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesTrazaIAFA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesTrazaIAFA](
	[IdIAFA] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[IdFuenteFinanciamiento] [int] NULL,
	[IdTipoFinanciamiento] [int] NULL,
	[IdFuenteFinanciamientoOrig] [int] NULL,
	[IdTipoFinanciamientoOrig] [int] NULL,
	[idUsuario] [int] NULL,
	[FechaHora] [datetime] NULL,
	[Observaciones] [varchar](100) NULL,
	[Idpaciente] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionesTriajeExonerado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionesTriajeExonerado](
	[idExonerado] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[Observacion] [varchar](2000) NULL,
	[idEmpleado] [int] NOT NULL,
	[nombrePC] [varchar](30) NULL,
	[fecha] [datetime] NULL,
	[idEstado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idExonerado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[atencionesWRExtamuro]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atencionesWRExtamuro](
	[IdCuentaAtencion] [int] NOT NULL,
	[idEstadoAtencion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionTopicoAmbulatorio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionTopicoAmbulatorio](
	[id] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdCuentaAtencionNuevo] [int] NULL,
	[Descripcion] [text] NULL,
	[idEmpleado] [int] NULL,
	[fechaIngreso] [datetime] NULL,
	[fechaEgreso] [datetime] NULL,
	[Estado] [int] NULL,
	[canal] [int] NULL,
	[idreceta] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionTopicoAmbulatorioIntervalos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionTopicoAmbulatorioIntervalos](
	[id] [int] NOT NULL,
	[NroIntervalos] [int] NULL,
	[IdProducto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtencionTopicoAmbulatorioTMPo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtencionTopicoAmbulatorioTMPo](
	[id] [varchar](50) NULL,
	[Nro] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenHospCenso]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenHospCenso](
	[IdRangoCensoHosp] [int] NOT NULL,
	[RangoInicial] [money] NOT NULL,
	[RangoFinal] [money] NOT NULL,
	[RGBRojo] [int] NULL,
	[RGBVerde] [int] NULL,
	[RGBAzul] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteGrupo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteGrupo](
	[IdAtenInteGrupo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[AtencionIntegralGrupo] [varchar](50) NOT NULL,
	[DesdeAnio] [int] NOT NULL,
	[DesdeMes] [int] NOT NULL,
	[DesdeDia] [int] NOT NULL,
	[HastaAnio] [int] NOT NULL,
	[HastaMes] [int] NOT NULL,
	[HastaDia] [int] NOT NULL,
 CONSTRAINT [PK_AtencionIntegralGrupos] PRIMARY KEY CLUSTERED 
(
	[IdAtenInteGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteGrupoHCPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteGrupoHCPaciente](
	[IdPaciente] [int] NOT NULL,
	[IdGrupoHCPaciente] [int] NOT NULL,
	[IdAtenInteGrupo] [int] NOT NULL,
	[IdPregunta] [int] NOT NULL,
 CONSTRAINT [PK_AtenInteGrupoHCPaciente] PRIMARY KEY CLUSTERED 
(
	[IdGrupoHCPaciente] ASC,
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteGrupoHCRespuestaPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteGrupoHCRespuestaPaciente](
	[IdGrupoHCPaciente] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[ItemRespuesta] [int] NOT NULL,
	[ValorTexto] [varchar](255) NULL,
	[ValorNumero] [money] NULL,
	[ValorFecha] [datetime] NULL,
	[ValorNumeroFin] [money] NULL,
	[ValorFechaFin] [datetime] NULL,
	[ValorEspecificacion] [varchar](1500) NULL,
	[EsActivo] [bit] NOT NULL,
 CONSTRAINT [PK_AtenInteGrupoHCRespuestaPaciente] PRIMARY KEY CLUSTERED 
(
	[IdGrupoHCPaciente] ASC,
	[IdPaciente] ASC,
	[ItemRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteItemDesarrollo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteItemDesarrollo](
	[IdItemDesarrollo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ItemDesarrollo] [varchar](200) NOT NULL,
 CONSTRAINT [PK_PerinatalItemDesarrollo] PRIMARY KEY CLUSTERED 
(
	[IdItemDesarrollo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteItemPlan]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteItemPlan](
	[IdAtenInteItemPlan] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ItemPlan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AtenInteItemPlan] PRIMARY KEY CLUSTERED 
(
	[IdAtenInteItemPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteItemPlanCrecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteItemPlanCrecimiento](
	[IdItemPlanCrecimiento] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPlanAtencion] [int] NOT NULL,
	[NumeroSesion] [int] NOT NULL,
 CONSTRAINT [PK_AtenInteItemPlanCrecimiento] PRIMARY KEY CLUSTERED 
(
	[IdItemPlanCrecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteItemPlanDesarrollo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteItemPlanDesarrollo](
	[IdItemPlanDesarrollo] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPlanAtencion] [int] NOT NULL,
	[NumeroSesion] [int] NOT NULL,
 CONSTRAINT [PK_AtenItemPlanDesarrollo] PRIMARY KEY CLUSTERED 
(
	[IdItemPlanDesarrollo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteItemPlanProcedimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteItemPlanProcedimiento](
	[IdItemPlanProcedimiento] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPlanAtencion] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[NumeroDosis] [tinyint] NOT NULL,
	[IdAtenInteItemPlan] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
 CONSTRAINT [PK_AtenInteItemPlanInmunizacion] PRIMARY KEY CLUSTERED 
(
	[IdItemPlanProcedimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteItemPlanSuplemento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteItemPlanSuplemento](
	[ItemPlanSuplemento] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPlanAtencion] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[NumeroDosis] [int] NULL,
	[IdDiagnostico] [int] NULL,
 CONSTRAINT [PK_AtenInteItemPlanSuplemento] PRIMARY KEY CLUSTERED 
(
	[ItemPlanSuplemento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanAtencion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanAtencion](
	[IdPlanAtencion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtenInteGrupo] [int] NOT NULL,
	[IdPeriodoTiempo] [int] NOT NULL,
	[EdadAnio] [int] NOT NULL,
	[EdadMes] [int] NOT NULL,
	[EdadDia] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_AtenIntePlanAtencion] PRIMARY KEY CLUSTERED 
(
	[IdPlanAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanCrecDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanCrecDetalle](
	[IdItemPlanCrecimiento] [bigint] NOT NULL,
	[IdTriajeVariable] [int] NOT NULL,
	[OrdenItem] [int] NOT NULL,
 CONSTRAINT [PK_AtenIntePlanCrecDetalle] PRIMARY KEY CLUSTERED 
(
	[IdItemPlanCrecimiento] ASC,
	[IdTriajeVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanCrecimientoPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanCrecimientoPaciente](
	[IdPlanCrecimientoPaciente] [int] NOT NULL,
	[IdPlanIntegralPaciente] [bigint] NOT NULL,
	[IdPlanAtencion] [int] NOT NULL,
	[IdAtenInteItemPlan] [int] NOT NULL,
	[FechaProgramada] [datetime] NOT NULL,
	[FechaEjecucion] [datetime] NULL,
	[NumeroSesion] [int] NOT NULL,
	[IdAtencion] [int] NULL,
	[IdEstablecimiento] [int] NULL,
 CONSTRAINT [PK_AtenIntePlanCrecimientoPaciente] PRIMARY KEY CLUSTERED 
(
	[IdPlanCrecimientoPaciente] ASC,
	[IdPlanIntegralPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanCrecPacienteDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanCrecPacienteDet](
	[IdPlanCrecimientoPaciente] [int] NOT NULL,
	[IdPlanIntegralPaciente] [bigint] NOT NULL,
	[IdTriajeVariable] [int] NOT NULL,
	[VariableValor] [money] NOT NULL,
	[OrdenItem] [int] NOT NULL,
 CONSTRAINT [PK_AtenIntePlanCrecPacienteDet] PRIMARY KEY CLUSTERED 
(
	[IdPlanCrecimientoPaciente] ASC,
	[IdPlanIntegralPaciente] ASC,
	[IdTriajeVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanDesarrolloPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanDesarrolloPaciente](
	[IdPlanDesarrolloPaciente] [int] NOT NULL,
	[IdPlanIntegralPaciente] [bigint] NOT NULL,
	[Evaluacion] [int] NULL,
	[IdPlanAtencion] [int] NOT NULL,
	[IdAtenInteItemPlan] [int] NOT NULL,
	[FechaProgramada] [datetime] NOT NULL,
	[FechaEjecucion] [datetime] NULL,
	[NumeroSesion] [int] NOT NULL,
	[IdAtencion] [int] NULL,
	[IdEstablecimiento] [int] NULL,
 CONSTRAINT [PK_AtenIntePlanDesarrolloPaciente] PRIMARY KEY CLUSTERED 
(
	[IdPlanDesarrolloPaciente] ASC,
	[IdPlanIntegralPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanDesDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanDesDetalle](
	[IdItemPlanDesarrollo] [bigint] NOT NULL,
	[IdItemDesarrollo] [int] NOT NULL,
	[OrdenItem] [int] NOT NULL,
 CONSTRAINT [PK_AtenIntePlanDesDetalle] PRIMARY KEY CLUSTERED 
(
	[IdItemPlanDesarrollo] ASC,
	[IdItemDesarrollo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanDesPacienteDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanDesPacienteDet](
	[IdPlanDesarrolloPaciente] [int] NOT NULL,
	[IdPlanIntegralPaciente] [bigint] NOT NULL,
	[IdItemDesarrollo] [int] NOT NULL,
	[OrdenItem] [int] NOT NULL,
	[EjecutaAccion] [bit] NULL,
 CONSTRAINT [PK_AtenIntePlanDesPacienteDet] PRIMARY KEY CLUSTERED 
(
	[IdPlanDesarrolloPaciente] ASC,
	[IdPlanIntegralPaciente] ASC,
	[IdItemDesarrollo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanIntegralPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanIntegralPaciente](
	[IdPlanIntegralPaciente] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtenInteGrupo] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[FechaElaboracion] [datetime] NOT NULL,
 CONSTRAINT [PK_AtenIntePlanIntegralPaciente] PRIMARY KEY CLUSTERED 
(
	[IdPlanIntegralPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanItemElaborado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanItemElaborado](
	[IdAtenInteItemPlan] [int] NOT NULL,
	[IdPlanIntegralPaciente] [bigint] NOT NULL,
	[EsElaborado] [bit] NOT NULL,
 CONSTRAINT [PK_AtenIntePlanItemElaborado] PRIMARY KEY CLUSTERED 
(
	[IdAtenInteItemPlan] ASC,
	[IdPlanIntegralPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanProcedimientoPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanProcedimientoPaciente](
	[IdPlanProcedimientoPaciente] [int] NOT NULL,
	[IdPlanIntegralPaciente] [bigint] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdPlanAtencion] [int] NULL,
	[IdAtenInteItemPlan] [int] NOT NULL,
	[FechaProgramada] [datetime] NOT NULL,
	[FechaEjecucion] [datetime] NULL,
	[NumeroDosis] [tinyint] NOT NULL,
	[CodigoHIS] [varchar](7) NULL,
	[IdAtencion] [int] NULL,
	[IdEstablecimiento] [int] NULL,
	[IdDiagnostico] [int] NULL,
 CONSTRAINT [PK_AtenIntePlanInmunizacionPaciente] PRIMARY KEY CLUSTERED 
(
	[IdPlanProcedimientoPaciente] ASC,
	[IdPlanIntegralPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlanSuplementoPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlanSuplementoPaciente](
	[IdPlanSuplementoPaciente] [int] NOT NULL,
	[IdPlanIntegralPaciente] [bigint] NOT NULL,
	[IdPlanAtencion] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdAtenInteItemPlan] [int] NOT NULL,
	[FechaProgramada] [datetime] NOT NULL,
	[FechaEjecucion] [datetime] NULL,
	[NumeroDosis] [int] NOT NULL,
	[IdAtencion] [int] NULL,
	[IdEstablecimiento] [int] NULL,
	[IdDiagnostico] [int] NULL,
 CONSTRAINT [PK_AtenIntePlanSuplementoPaciente] PRIMARY KEY CLUSTERED 
(
	[IdPlanSuplementoPaciente] ASC,
	[IdPlanIntegralPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePlantillaItemPlan]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePlantillaItemPlan](
	[IdPlantillaItemPlan] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtenInteGrupo] [int] NOT NULL,
	[IdAtenInteItemPlan] [int] NOT NULL,
 CONSTRAINT [PK_AtenIntePlantillaItemPlan] PRIMARY KEY CLUSTERED 
(
	[IdPlantillaItemPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenIntePregunta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenIntePregunta](
	[IdPregunta] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Pregunta] [varchar](70) NOT NULL,
	[TipoRespuesta] [int] NOT NULL,
	[TipoValorRespuesta] [int] NOT NULL,
 CONSTRAINT [PK_AtenIntePregunta] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteValorPeso]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteValorPeso](
	[IdValorPeso] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTipoSexo] [int] NOT NULL,
	[EdadMeses] [int] NOT NULL,
	[NroDesviacion] [int] NOT NULL,
	[ValorPeso] [money] NOT NULL,
 CONSTRAINT [PK_AtenInteValorPeso] PRIMARY KEY CLUSTERED 
(
	[IdValorPeso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtenInteValorTalla]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtenInteValorTalla](
	[IdValorTalla] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTipoSexo] [int] NOT NULL,
	[EdadMeses] [int] NOT NULL,
	[NroDesviacion] [int] NOT NULL,
	[ValorTalla] [money] NOT NULL,
 CONSTRAINT [PK_AtenInteValorTalla] PRIMARY KEY CLUSTERED 
(
	[IdValorTalla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audit_Atenciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_Atenciones](
	[IdAtencion] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[HoraIngreso] [char](5) NOT NULL,
	[IdDestinoAtencion] [int] NULL,
	[IdTipoCondicionAlServicio] [int] NULL,
	[IdTipoCondicionALEstab] [int] NULL,
	[IdServicioIngreso] [int] NOT NULL,
	[IdMedicoIngreso] [int] NOT NULL,
	[IdEspecialidadMedico] [int] NULL,
	[IdMedicoEgreso] [int] NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [char](5) NULL,
	[IdOrigenAtencion] [int] NULL,
	[FechaEgresoAdministrativo] [datetime] NULL,
	[HoraEgresoAdministrativo] [char](5) NULL,
	[IdCondicionAlta] [int] NULL,
	[IdTipoAlta] [int] NULL,
	[IdServicioEgreso] [int] NULL,
	[IdCamaIngreso] [int] NULL,
	[IdCamaEgreso] [int] NULL,
	[IdTipoGravedad] [int] NULL,
	[IdTipoEdad] [int] NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[IdTipoServicio] [int] NULL,
	[IdFormaPago] [int] NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idEstadoAtencion] [int] NULL,
	[EsPacienteExterno] [bit] NULL,
	[idSunasaPacienteHistorico] [int] NULL,
	[FyHInicioI] [datetime] NULL,
	[FyHFinal] [datetime] NULL,
	[idCondicionMaterna] [int] NULL,
	[EsCuentaUnica] [int] NULL,
	[idTipoCondicionEspecialidad] [int] NULL,
	[FechaFinDeAtencion] [datetime] NULL,
	[FechaFallecimiento] [varchar](10) NULL,
	[HoraFallecimiento] [varchar](5) NULL,
	[idTipoCondicionEess] [int] NULL,
	[FechaFallecimiento3] [date] NULL,
	[HoraInicializaAte] [varchar](5) NULL,
	[HoraFinalizaAte] [varchar](5) NULL,
	[IdUsuarioInicializaAte] [int] NULL,
	[IdUsuarioFinalizaAte] [int] NULL,
	[FechaInicializaAte] [date] NULL,
	[FechaFinalizaAte] [date] NULL,
	[MotivoAnula] [varchar](500) NULL,
	[IdTeleinterconsulta] [int] NULL,
	[PacienteReferidoTele] [varchar](1) NULL,
	[AceptaRefTele] [varchar](1) NULL,
	[IdUbicacionTic] [int] NULL,
	[IdPlanSalud] [int] NULL,
	[IdAccidente] [int] NULL,
	[UsuarioAudit] [varchar](200) NULL,
	[FechaAudit] [datetime] NULL,
	[Actividad] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audit_LabResultadoPorItems]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_LabResultadoPorItems](
	[idOrden] [int] NOT NULL,
	[idProductoCpt] [int] NOT NULL,
	[ordenXresultado] [int] NOT NULL,
	[ValorNumero] [money] NULL,
	[ValorResultado] [varchar](100) NULL,
	[ValorTexto] [varchar](2000) NULL,
	[ValorCombo] [varchar](100) NULL,
	[ValorCheck] [varchar](1) NULL,
	[realizaAnalisis] [int] NULL,
	[idUsuario] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Canal] [varchar](15) NULL,
	[ValorReferencialLab] [varchar](500) NULL,
	[Comentario] [varchar](max) NULL,
	[Metodo] [varchar](200) NULL,
	[EstadoRango] [int] NULL,
	[IdUsuarioValidaPrueba] [int] NULL,
	[UsuarioAudit] [varchar](200) NULL,
	[FechaAudit] [datetime] NULL,
	[Actividad] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audit_Pacientes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_Pacientes](
	[IdPaciente] [int] NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[ApellidoMaterno] [varchar](40) NULL,
	[PrimerNombre] [varchar](40) NULL,
	[SegundoNombre] [varchar](40) NULL,
	[TercerNombre] [varchar](40) NULL,
	[FechaNacimiento] [datetime] NULL,
	[NroDocumento] [varchar](12) NULL,
	[Telefono] [varchar](10) NULL,
	[DireccionDomicilio] [varchar](100) NULL,
	[Autogenerado] [varchar](30) NULL,
	[IdTipoSexo] [int] NULL,
	[IdProcedencia] [int] NULL,
	[IdGradoInstruccion] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[IdDocIdentidad] [int] NULL,
	[IdTipoOcupacion] [int] NULL,
	[IdCentroPobladoNacimiento] [int] NULL,
	[IdCentroPobladoDomicilio] [int] NULL,
	[NombrePadre] [varchar](20) NULL,
	[NombreMadre] [varchar](20) NULL,
	[NroHistoriaClinica] [varchar](50) NULL,
	[IdTipoNumeracion] [int] NULL,
	[IdCentroPobladoProcedencia] [int] NULL,
	[Observacion] [varchar](150) NULL,
	[IdPaisDomicilio] [int] NULL,
	[IdPaisProcedencia] [int] NULL,
	[IdPaisNacimiento] [int] NULL,
	[IdDistritoProcedencia] [int] NULL,
	[IdDistritoDomicilio] [int] NULL,
	[IdDistritoNacimiento] [int] NULL,
	[FichaFamiliar] [varchar](20) NULL,
	[IdEtnia] [varchar](2) NULL,
	[GrupoSanguineo] [varchar](10) NULL,
	[FactorRh] [varchar](10) NULL,
	[UsoWebReniec] [bit] NULL,
	[IdIdioma] [int] NULL,
	[Email] [varchar](50) NULL,
	[madreDocumento] [varchar](12) NULL,
	[madreApellidoPaterno] [varchar](20) NULL,
	[madreApellidoMaterno] [varchar](20) NULL,
	[madrePrimerNombre] [varchar](20) NULL,
	[madreSegundoNombre] [varchar](20) NULL,
	[NroOrdenHijo] [int] NULL,
	[madreTipoDocumento] [int] NULL,
	[Sector] [varchar](2) NULL,
	[Sectorista] [int] NULL,
	[Telefono2] [varchar](20) NULL,
	[Telefono3] [varchar](20) NULL,
	[Telefono4] [varchar](20) NULL,
	[Religion] [varchar](50) NULL,
	[IdPaisDomicilioTutor] [int] NULL,
	[IdCentroPobladoDomicilioTutor] [int] NULL,
	[IdDistritoDomicilioTutor] [int] NULL,
	[DireccionDomicilioTutor] [varchar](500) NULL,
	[tieneHCDigital] [char](2) NULL,
	[InfTipoDocumento] [int] NULL,
	[InfNroDocumento] [varchar](50) NULL,
	[InfApePaterno] [varchar](50) NULL,
	[InfApeMaterno] [varchar](50) NULL,
	[InfPNombre] [varchar](50) NULL,
	[InfSNombre] [varchar](50) NULL,
	[InfTelefono] [varchar](20) NULL,
	[InfIdParentesco] [int] NULL,
	[InfDistrito] [int] NULL,
	[InfPoblado] [int] NULL,
	[InfPais] [int] NULL,
	[InfDireccion] [varchar](200) NULL,
	[UsuarioAudit] [varchar](200) NULL,
	[FechaAudit] [datetime] NULL,
	[Actividad] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoria](
	[IdAuditoria] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Tabla] [varchar](50) NOT NULL,
	[IdRegistro] [int] NOT NULL,
	[Accion] [char](1) NOT NULL,
	[IdEmpleado] [int] NULL,
	[idListItem] [int] NULL,
	[nombrePc] [varchar](30) NULL,
	[observaciones] [varchar](500) NULL,
 CONSTRAINT [SeguridadAuditoria_PK] PRIMARY KEY CLUSTERED 
(
	[IdAuditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditoriaWeb]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditoriaWeb](
	[idAuditoria] [int] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime] NULL,
	[idUsuario] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[Accion] [char](2) NULL,
	[tabla] [varchar](60) NULL,
	[id] [int] NULL,
	[datos] [varchar](3000) NULL,
	[nombrePc] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAuditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAAFDiagnosticoInforme]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAAFDiagnosticoInforme](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[idInforme] [int] NULL,
	[IdClasificacionDx] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[vacio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAAFDiagnosticoSolicitud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAAFDiagnosticoSolicitud](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[idSolicitud] [int] NULL,
	[IdClasificacionDx] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[vacio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAAFInforme]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAAFInforme](
	[Id_Informe] [int] NULL,
	[id_Solicitud] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Inf_Hallazgos] [text] NULL,
	[inf_Fecha] [datetime] NULL,
	[inf_FReg] [datetime] NULL,
	[inf_Estado] [int] NULL,
	[idEmpleado] [int] NULL,
	[idOrden] [int] NULL,
	[idProductoSig] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAAFSolicitud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAAFSolicitud](
	[id_Solicitud] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Sol_BrevHistoria] [text] NULL,
	[IdProducto] [int] NULL,
	[Sol_FechaToma] [datetime] NULL,
	[Sol_FReg] [datetime] NULL,
	[Sol_Estado] [int] NULL,
	[idEmpleado] [int] NULL,
	[idOrden] [int] NULL,
	[idProductoSig] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Basiloscopia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basiloscopia](
	[idBaciloscopia] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[idServicio] [int] NULL,
	[tipo_muestra] [varchar](150) NULL,
	[antecedente_tratamiento] [varchar](150) NULL,
	[diagnostico] [varchar](150) NULL,
	[control_tratamieto] [varchar](150) NULL,
	[examen_solicitado] [varchar](20) NULL,
	[cultivo] [varchar](50) NULL,
	[cultivo_detalle] [varchar](150) NULL,
	[otro_examen] [varchar](205) NULL,
	[factores_riesgo] [varchar](150) NULL,
	[idEmpleadoRegistraExamen] [int] NULL,
	[fechaRegistroExamen] [datetime] NULL,
	[fecha_toma_muestra] [date] NULL,
	[calidad_muestra] [varchar](100) NULL,
	[observacion_muestra] [varchar](250) NULL,
	[idEmpleadoRegistraResultado] [int] NULL,
	[fechaRegistroResultado] [datetime] NULL,
	[estado] [int] NULL,
	[fecha_resultado] [date] NULL,
	[observacion_resultado] [varchar](350) NULL,
	[movimiento] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idBaciloscopia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BienesInsumosDistribucion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BienesInsumosDistribucion](
	[IdProducto] [int] NULL,
	[Presentacion] [varchar](50) NULL,
	[uMedidaPres] [varchar](20) NULL,
	[Consumo] [varchar](50) NULL,
	[uMedidaCons] [varchar](20) NULL,
	[Equivalencia] [numeric](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrar]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrar](
	[idpaciente] [int] NULL,
	[Telefono] [varchar](10) NULL,
	[Telefono2] [varchar](20) NULL,
	[Telefono3] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrar3]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrar3](
	[idMovimiento] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CA5RGA 2]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CA5RGA 2](
	[N°] [nvarchar](255) NULL,
	[CodigoInterfaz] [nvarchar](255) NULL,
	[IdlTem] [nvarchar](255) NULL,
	[idProductoCpt] [nvarchar](255) NULL,
	[Código HEVES] [nvarchar](255) NULL,
	[Descripción ] [nvarchar](255) NULL,
	[Lo realiza Auna (SI/NO)] [nvarchar](255) NULL,
	[Cargar a Sistema] [nvarchar](255) NULL,
	[Código Infinity AUNA] [nvarchar](255) NULL,
	[Código Mic] [nvarchar](255) NULL,
	[LabGeneral
Microbiología] [nvarchar](255) NULL,
	[OrdenXresultado] [nvarchar](255) NULL,
	[Descripción Infiniry AUNA] [nvarchar](255) NULL,
	[idGrupo] [nvarchar](255) NULL,
	[TipoFila] [nvarchar](255) NULL,
	[Caracteres] [nvarchar](255) NULL,
	[idtemGrupo] [nvarchar](255) NULL,
	[SoloTexto] [nvarchar](255) NULL,
	[S] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaCaja]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaCaja](
	[IdCaja] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[loginPC] [varchar](50) NULL,
	[ImpresoraDefault] [varchar](50) NULL,
	[Impresora2] [varchar](50) NULL,
	[idTipoComprobante] [int] NULL,
	[SerieImpresoraDefault] [varchar](20) NULL,
	[SerieImpresora2] [varchar](20) NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [CajaCaja_PK] PRIMARY KEY CLUSTERED 
(
	[IdCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaCajeroSupervisor]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaCajeroSupervisor](
	[IdCajeroSupervisor] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTurno] [int] NOT NULL,
 CONSTRAINT [PK_CajaCajeroSupervisor] PRIMARY KEY CLUSTERED 
(
	[IdCajeroSupervisor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaComprobantesPago]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaComprobantesPago](
	[IdComprobantePago] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NroSerie] [varchar](4) NULL,
	[NroDocumento] [char](7) NULL,
	[RazonSocial] [varchar](50) NULL,
	[RUC] [char](11) NULL,
	[SubTotal] [money] NULL,
	[IGV] [money] NULL,
	[Total] [money] NOT NULL,
	[FechaCobranza] [datetime] NULL,
	[TipoCambio] [money] NULL,
	[Observaciones] [varchar](100) NULL,
	[IdTipoComprobante] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEstadoComprobante] [int] NULL,
	[IdGestionCaja] [int] NULL,
	[IdTipoPago] [int] NULL,
	[IdTipoOrden] [int] NULL,
	[Dctos] [money] NULL,
	[IdPaciente] [int] NULL,
	[IdCajero] [int] NULL,
	[idTurno] [int] NULL,
	[idCaja] [int] NULL,
	[idFormaPago] [int] NULL,
	[idFarmacia] [int] NULL,
	[Exoneraciones] [money] NULL,
	[Adelantos] [money] NULL,
	[idTipoFinanciamiento] [int] NULL,
	[estadofacturador] [int] NULL,
	[fechaEnvioSunat] [datetime] NULL,
	[sunatCodigo] [varchar](10) NULL,
	[sunatRespuesta] [varchar](200) NULL,
	[sunatCpe] [varchar](100) NULL,
	[sunatCdr] [varchar](100) NULL,
	[IdTipoFormaPago] [int] NULL,
	[NReferencia] [varchar](50) NULL,
 CONSTRAINT [CajaDocumento_PK] PRIMARY KEY CLUSTERED 
(
	[IdComprobantePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cajaComprobantesPago004_584]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajaComprobantesPago004_584](
	[IdComprobantePago] [int] IDENTITY(1,1) NOT NULL,
	[NroSerie] [varchar](4) NULL,
	[NroDocumento] [char](7) NULL,
	[RazonSocial] [varchar](50) NULL,
	[RUC] [char](11) NULL,
	[SubTotal] [money] NULL,
	[IGV] [money] NULL,
	[Total] [money] NOT NULL,
	[FechaCobranza] [datetime] NULL,
	[TipoCambio] [money] NULL,
	[Observaciones] [varchar](100) NULL,
	[IdTipoComprobante] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEstadoComprobante] [int] NULL,
	[IdGestionCaja] [int] NULL,
	[IdTipoPago] [int] NULL,
	[IdTipoOrden] [int] NULL,
	[Dctos] [money] NULL,
	[IdPaciente] [int] NULL,
	[IdCajero] [int] NULL,
	[idTurno] [int] NULL,
	[idCaja] [int] NULL,
	[idFormaPago] [int] NULL,
	[idFarmacia] [int] NULL,
	[Exoneraciones] [money] NULL,
	[Adelantos] [money] NULL,
	[idTipoFinanciamiento] [int] NULL,
	[estadofacturador] [int] NULL,
	[fechaEnvioSunat] [datetime] NULL,
	[sunatCodigo] [varchar](10) NULL,
	[sunatRespuesta] [varchar](200) NULL,
	[sunatCpe] [varchar](100) NULL,
	[sunatCdr] [varchar](100) NULL,
	[IdTipoFormaPago] [int] NULL,
	[NReferencia] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaComprobantesPago18092018]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaComprobantesPago18092018](
	[IdComprobantePago] [int] IDENTITY(1,1) NOT NULL,
	[NroSerie] [char](3) NULL,
	[NroDocumento] [char](7) NULL,
	[RazonSocial] [varchar](50) NULL,
	[RUC] [char](11) NULL,
	[SubTotal] [money] NULL,
	[IGV] [money] NULL,
	[Total] [money] NOT NULL,
	[FechaCobranza] [datetime] NULL,
	[TipoCambio] [money] NULL,
	[Observaciones] [varchar](100) NULL,
	[IdTipoComprobante] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEstadoComprobante] [int] NULL,
	[IdGestionCaja] [int] NULL,
	[IdTipoPago] [int] NULL,
	[IdTipoOrden] [int] NULL,
	[Dctos] [money] NULL,
	[IdPaciente] [int] NULL,
	[IdCajero] [int] NULL,
	[idTurno] [int] NULL,
	[idCaja] [int] NULL,
	[idFormaPago] [int] NULL,
	[idFarmacia] [int] NULL,
	[Exoneraciones] [money] NULL,
	[Adelantos] [money] NULL,
	[idTipoFinanciamiento] [int] NULL,
	[estadofacturador] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaComprobantesPagoWARS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaComprobantesPagoWARS](
	[IdComprobantePago] [int] IDENTITY(1,1) NOT NULL,
	[NroSerie] [varchar](4) NULL,
	[NroDocumento] [char](7) NULL,
	[RazonSocial] [varchar](50) NULL,
	[RUC] [char](11) NULL,
	[SubTotal] [money] NULL,
	[IGV] [money] NULL,
	[Total] [money] NOT NULL,
	[FechaCobranza] [datetime] NULL,
	[TipoCambio] [money] NULL,
	[Observaciones] [varchar](100) NULL,
	[IdTipoComprobante] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEstadoComprobante] [int] NULL,
	[IdGestionCaja] [int] NULL,
	[IdTipoPago] [int] NULL,
	[IdTipoOrden] [int] NULL,
	[Dctos] [money] NULL,
	[IdPaciente] [int] NULL,
	[IdCajero] [int] NULL,
	[idTurno] [int] NULL,
	[idCaja] [int] NULL,
	[idFormaPago] [int] NULL,
	[idFarmacia] [int] NULL,
	[Exoneraciones] [money] NULL,
	[Adelantos] [money] NULL,
	[idTipoFinanciamiento] [int] NULL,
	[estadofacturador] [int] NULL,
	[fechaEnvioSunat] [datetime] NULL,
	[sunatCodigo] [varchar](10) NULL,
	[sunatRespuesta] [varchar](200) NULL,
	[sunatCpe] [varchar](100) NULL,
	[sunatCdr] [varchar](100) NULL,
	[IdTipoFormaPago] [int] NULL,
	[NReferencia] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaDevoluciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaDevoluciones](
	[idDevolucion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idComprobantePago] [int] NOT NULL,
	[montoDevuelto] [money] NOT NULL,
	[montoTotal] [money] NOT NULL,
	[fechaDevolucion] [datetime] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[motivo] [varchar](2000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDevolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaEstadosComprobante]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaEstadosComprobante](
	[IdEstadoComprobante] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [CajaEstadosComprobante_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaGestion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaGestion](
	[IdGestionCaja] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FechaApertura] [datetime] NULL,
	[EstadoLote] [char](1) NULL,
	[IdCaja] [int] NULL,
	[IdTurno] [int] NULL,
	[FechaCierre] [datetime] NULL,
	[TotalCobrado] [char](10) NULL,
	[IdCajero] [int] NULL,
 CONSTRAINT [CajaLote_PK] PRIMARY KEY CLUSTERED 
(
	[IdGestionCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaNroDocumento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaNroDocumento](
	[IdCaja] [int] NOT NULL,
	[IdTipoComprobante] [int] NOT NULL,
	[NroSerie] [varchar](3) NULL,
	[NroDocumento] [char](12) NOT NULL,
	[NroDocumentoInicial] [char](12) NULL,
	[NroDocumentoFinal] [char](12) NULL,
	[SeImprime] [bit] NULL,
	[observacion] [varchar](150) NULL,
 CONSTRAINT [CajaNroDocumento_PK] PRIMARY KEY CLUSTERED 
(
	[IdCaja] ASC,
	[IdTipoComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajasTiposOrden]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajasTiposOrden](
	[IdTipoOrden] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [CajasTiposOrden_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaTiposComprobante]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaTiposComprobante](
	[IdTipoComprobante] [int] NOT NULL,
	[Descripcion] [char](20) NULL,
	[Estado] [char](1) NULL,
	[observacion] [varchar](50) NULL,
 CONSTRAINT [CajaTiposDocumento_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaTiposMoneda]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaTiposMoneda](
	[IdTipoMoneda] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [CajaTiposMoneda_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaTurno]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaTurno](
	[IdTurno] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [CajaTurno_PK] PRIMARY KEY CLUSTERED 
(
	[IdTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calendario]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calendario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalificacionSOFA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalificacionSOFA](
	[IdCalificacionSOFA] [int] IDENTITY(1,1) NOT NULL,
	[IdEscalaSOFA] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[Calificacion] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camas](
	[IdCama] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [char](5) NOT NULL,
	[IdServicioPropietario] [int] NULL,
	[IdServicioUbicacionActual] [int] NULL,
	[IdTiposCama] [int] NULL,
	[IdCondicionOcupacion] [int] NULL,
	[IdEstadoCama] [int] NULL,
	[IdPaciente] [int] NULL,
	[X] [int] NULL,
	[Y] [int] NULL,
	[Lado] [varchar](1) NULL,
	[FechaReserva] [datetime] NULL,
	[FechaCreacion] [datetime] NULL,
	[Usuario] [varchar](50) NULL,
	[IdTipoDocReserva] [int] NULL,
	[NroDocReserva] [varchar](12) NULL,
	[HistoriaClinicaReserva] [varchar](50) NULL,
	[IdMotivoReserva] [varchar](1) NULL,
 CONSTRAINT [Camas_PK] PRIMARY KEY CLUSTERED 
(
	[IdCama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[camasMovimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[camasMovimientos](
	[idMovimiento] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idCama] [int] NULL,
	[idServicio] [int] NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
 CONSTRAINT [PK_camasMovimientos] PRIMARY KEY CLUSTERED 
(
	[idMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carga]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carga](
	[N°] [nvarchar](255) NULL,
	[CodigoInterfaz] [nvarchar](255) NULL,
	[IdlTem] [nvarchar](255) NULL,
	[idProductoCpt] [nvarchar](255) NULL,
	[Código HEVES] [nvarchar](255) NULL,
	[Descripción ] [nvarchar](255) NULL,
	[Lo realiza Auna (SI/NO)] [nvarchar](255) NULL,
	[Cargar a Sistema] [nvarchar](255) NULL,
	[Código Infinity AUNA] [nvarchar](255) NULL,
	[Código Mic] [nvarchar](255) NULL,
	[LabGeneral
Microbiología] [nvarchar](255) NULL,
	[OrdenXresultado] [nvarchar](255) NULL,
	[Descripción Infiniry AUNA] [nvarchar](255) NULL,
	[idGrupo] [nvarchar](255) NULL,
	[TipoFila] [nvarchar](255) NULL,
	[Caracteres] [nvarchar](255) NULL,
	[idtemGrupo] [nvarchar](255) NULL,
	[SoloTexto] [nvarchar](255) NULL,
	[S] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARGA3]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGA3](
	[N°] [nvarchar](255) NULL,
	[CodigoInterfaz] [nvarchar](255) NULL,
	[IdlTem] [nvarchar](255) NULL,
	[idProductoCpt] [nvarchar](255) NULL,
	[Código HEVES] [nvarchar](255) NULL,
	[Descripción ] [nvarchar](255) NULL,
	[Lo realiza Auna (SI/NO)] [nvarchar](255) NULL,
	[Cargar a Sistema] [nvarchar](255) NULL,
	[Código Infinity AUNA] [nvarchar](255) NULL,
	[Código Mic] [nvarchar](255) NULL,
	[LabGeneral
Microbiología] [nvarchar](255) NULL,
	[OrdenXresultado] [nvarchar](255) NULL,
	[Descripción Infiniry AUNA] [nvarchar](255) NULL,
	[idGrupo] [nvarchar](255) NULL,
	[TipoFila] [nvarchar](255) NULL,
	[Caracteres] [nvarchar](255) NULL,
	[idtemGrupo] [nvarchar](255) NULL,
	[SoloTexto] [nvarchar](255) NULL,
	[S] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CARGA4]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGA4](
	[N°] [nvarchar](255) NULL,
	[CodigoInterfaz] [nvarchar](255) NULL,
	[IdlTem] [nvarchar](255) NULL,
	[idProductoCpt] [nvarchar](255) NULL,
	[Código HEVES] [nvarchar](255) NULL,
	[Descripción ] [nvarchar](255) NULL,
	[Lo realiza Auna (SI/NO)] [nvarchar](255) NULL,
	[Cargar a Sistema] [nvarchar](255) NULL,
	[Código Infinity AUNA] [nvarchar](255) NULL,
	[Código Mic] [nvarchar](255) NULL,
	[LabGeneral
Microbiología] [nvarchar](255) NULL,
	[OrdenXresultado] [nvarchar](255) NULL,
	[Descripción Infiniry AUNA] [nvarchar](255) NULL,
	[idGrupo] [nvarchar](255) NULL,
	[TipoFila] [nvarchar](255) NULL,
	[Caracteres] [nvarchar](255) NULL,
	[idtemGrupo] [nvarchar](255) NULL,
	[SoloTexto] [nvarchar](255) NULL,
	[S] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carteraServicios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carteraServicios](
	[UPS] [varchar](50) NULL,
	[TIPO] [varchar](50) NULL,
	[PRESTACION] [varchar](500) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAS](
	[DNI] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogoMedicamentosInsumosExcel]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogoMedicamentosInsumosExcel](
	[Codigo] [varchar](20) NOT NULL,
	[Nombre] [varchar](250) NULL,
	[Presentacion] [varchar](100) NULL,
	[Concentracion] [varchar](150) NULL,
	[TipoProducto] [varchar](5) NULL,
	[Petitorio] [varchar](5) NULL,
	[FormaFarmaceutica] [varchar](20) NULL,
	[CodigoSIGA] [varchar](20) NULL,
	[FechaReg] [datetime] NULL,
	[Estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogoMinsa2017]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogoMinsa2017](
	[id] [float] NULL,
	[idGrupo] [float] NULL,
	[Grupo] [nvarchar](255) NULL,
	[idSeccion] [float] NULL,
	[Seccion] [nvarchar](255) NULL,
	[idSubseccion] [nvarchar](255) NULL,
	[Subseccion] [nvarchar](255) NULL,
	[CPT] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogoMinsa2017b]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogoMinsa2017b](
	[id] [float] NULL,
	[idGrupo] [float] NULL,
	[Grupo] [nvarchar](255) NULL,
	[idSeccion] [float] NULL,
	[Seccion] [nvarchar](255) NULL,
	[idSubseccion] [nvarchar](255) NULL,
	[Subseccion] [nvarchar](255) NULL,
	[CPT] [nvarchar](255) NULL,
	[NombreMinsa] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catalogoProductosFarmaceuticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catalogoProductosFarmaceuticos](
	[COD_SISMED] [nvarchar](255) NULL,
	[CODIGO_SIGA] [nvarchar](255) NULL,
	[CODIGO_ATC] [nvarchar](255) NULL,
	[COD_UNSPSC] [nvarchar](255) NULL,
	[DESCRIPCION SISMED] [nvarchar](255) NULL,
	[CONCENTRACION] [nvarchar](255) NULL,
	[FORMA_FARMACEUTICA] [nvarchar](255) NULL,
	[PRESENTACION] [nvarchar](255) NULL,
	[TIPO] [nvarchar](255) NULL,
	[PETI2015] [nvarchar](255) NULL,
	[PETI2012] [nvarchar](255) NULL,
	[PETI2010] [nvarchar](255) NULL,
	[VENTA] [nvarchar](255) NULL,
	[ESTADO] [nvarchar](255) NULL,
	[registro_sanitario] [nvarchar](255) NULL,
	[DESCRIPCION_SIGA] [nvarchar](255) NULL,
	[UNIDAD_MEDIDA_SIGA] [nvarchar](255) NULL,
	[grupo] [nvarchar](255) NULL,
	[programas] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogoServiciosHomologados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogoServiciosHomologados](
	[IdProducto] [int] NULL,
	[CodigoAnterior] [varchar](20) NULL,
	[Nombre] [varchar](255) NULL,
	[CodigoActual] [varchar](20) NULL,
	[IdEstado] [int] NULL,
	[IdTipoFinanciamiento] [int] NULL,
	[IdFuenteFinanciamiento] [int] NULL,
	[IdProductoHomologado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaEstablecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaEstablecimiento](
	[Idcategoria] [int] NULL,
	[Codigo] [int] NULL,
	[Nombre] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentrosCosto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentrosCosto](
	[IdCentroCosto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[sec_ejec] [int] NULL,
	[abreviado_depend] [varchar](255) NULL,
	[sede] [int] NULL,
	[pliego] [varchar](5) NULL,
	[tipo_depend] [int] NULL,
	[estado] [varchar](1) NULL,
	[nro_personal] [varchar](11) NULL,
	[centro_padre] [varchar](20) NULL,
	[fecha_flag] [datetime] NULL,
	[flag_gf] [varchar](10) NULL,
	[fecha_alta] [datetime] NULL,
 CONSTRAINT [CentrosCosto_PK] PRIMARY KEY CLUSTERED 
(
	[IdCentroCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentrosPoblados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentrosPoblados](
	[IdCentroPoblado] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdDistrito] [int] NOT NULL,
 CONSTRAINT [CentrosPoblados_PK] PRIMARY KEY CLUSTERED 
(
	[IdCentroPoblado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentrosSubCosto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentrosSubCosto](
	[IdCentrosubCosto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[CodigoCentroCosto] [varchar](20) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
 CONSTRAINT [CentrosSubCosto_PK] PRIMARY KEY CLUSTERED 
(
	[IdCentrosubCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentrosSubtrasCosto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentrosSubtrasCosto](
	[IdCentrosSubtrasCosto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[IdCentrosubCosto] [varchar](20) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
 CONSTRAINT [CentrosSubtrasCosto_PK] PRIMARY KEY CLUSTERED 
(
	[IdCentrosSubtrasCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CERTIFICADODescansoMedico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CERTIFICADODescansoMedico](
	[id] [int] NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[DesFechaInicial] [varchar](50) NULL,
	[DesFechaFinal] [varchar](50) NULL,
	[CantidadDias] [varchar](50) NULL,
	[fecha] [datetime] NULL,
	[idEmpleado] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[IdCita] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[HoraInicio] [char](5) NOT NULL,
	[HoraFin] [char](5) NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[IdEstadoCita] [int] NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[IdProgramacion] [int] NOT NULL,
	[IdProducto] [int] NULL,
	[FechaSolicitud] [datetime] NOT NULL,
	[HoraSolicitud] [char](5) NOT NULL,
	[EsCitaAdicional] [bit] NULL,
	[FechaReferencia] [varchar](12) NULL,
	[SMS] [int] NULL,
	[IdEmpleado] [int] NULL,
	[FechaExtensionReferencia] [date] NULL,
	[estadoimpresionreferencia] [char](5) NULL,
	[Diasextension] [int] NULL,
	[esCitaRefcon] [bit] NULL,
	[idReferencia] [int] NULL,
 CONSTRAINT [Citas_PK] PRIMARY KEY CLUSTERED 
(
	[IdCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitasBloqueadas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitasBloqueadas](
	[IdCitaBloqueada] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdUsuario] [int] NULL,
	[Fecha] [datetime] NULL,
	[HoraInicio] [char](5) NULL,
	[HoraFin] [char](5) NULL,
	[FechaBloqueo] [datetime] NULL,
	[HoraBloqueo] [char](5) NULL,
	[IdMedico] [int] NULL,
	[IdProgramacion] [int] NULL,
	[Estado] [char](1) NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdUsuarioVinculaTIC] [int] NULL,
	[FechaVinculaTIC] [datetime] NULL,
	[IdEstadoVinculaTIC] [int] NULL,
	[IdEstadoProcHosp] [int] NULL,
	[IndProcRealizado] [varchar](1) NULL,
 CONSTRAINT [CitasBloqueadas_PK] PRIMARY KEY CLUSTERED 
(
	[IdCitaBloqueada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitasSMS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitasSMS](
	[idSMS] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClasificacionComplejidadCirugia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClasificacionComplejidadCirugia](
	[IdComplejidadCirugia] [int] IDENTITY(1,1) NOT NULL,
	[Grado] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_ClasificacionComplejidadCirugia] PRIMARY KEY CLUSTERED 
(
	[IdComplejidadCirugia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClasificacionDiagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClasificacionDiagnosticos](
	[IdClasificacionDx] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [ClasificacionDiagnosticos_PK] PRIMARY KEY CLUSTERED 
(
	[IdClasificacionDx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClasificacionEstablecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClasificacionEstablecimiento](
	[Idclasificacion] [int] NULL,
	[Codigo] [int] NULL,
	[Nombre] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClasificacionEventos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClasificacionEventos](
	[IdClasificacionE] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoberturaPorFuenteFinanciamiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoberturaPorFuenteFinanciamiento](
	[IdFuenteFinanciamiento] [int] NOT NULL,
	[Cobertura] [money] NULL,
	[Unidad] [varchar](3) NULL,
 CONSTRAINT [PK_CoberturaPorFuenteFinanciamiento] PRIMARY KEY CLUSTERED 
(
	[IdFuenteFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comisarias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comisarias](
	[IdComisaria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](5000) NULL,
	[IdDepartamento] [int] NULL,
	[Departamento] [varchar](500) NULL,
	[IdProvincia] [int] NULL,
	[Provincia] [varchar](500) NULL,
	[IdDistrito] [int] NULL,
	[Distrito] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentesRecPostAnestesica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentesRecPostAnestesica](
	[IdComponentesRecPostAnestesica] [int] NOT NULL,
	[Descripcion] [nchar](100) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_ComponentesRecPostAnestesica] PRIMARY KEY CLUSTERED 
(
	[IdComponentesRecPostAnestesica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentesTestAldrette]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentesTestAldrette](
	[IdComponentesTestAldrette] [int] NOT NULL,
	[Descripcion] [nchar](50) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_ComponentesTestAldrette] PRIMARY KEY CLUSTERED 
(
	[IdComponentesTestAldrette] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentesVentilacionMecanica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentesVentilacionMecanica](
	[IdComponentesVentilacionMecanica] [int] NOT NULL,
	[Descripcion] [nchar](200) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_ComponentesVentilacionMecanica] PRIMARY KEY CLUSTERED 
(
	[IdComponentesVentilacionMecanica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComprobantesPagoSeguros]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprobantesPagoSeguros](
	[idRegistro] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idAseguradora] [int] NOT NULL,
	[NroSerie] [varchar](4) NULL,
	[NroDocumento] [varchar](8) NULL,
	[TipoComprobante] [int] NULL,
	[Monto] [numeric](12, 4) NULL,
	[idConcepto] [int] NULL,
	[Observacion] [varchar](200) NULL,
	[FechaPago] [date] NULL,
	[idEstado] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK__Comproba__62FC8F583162F29F] PRIMARY KEY CLUSTERED 
(
	[idRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompromisoConfidencialidad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompromisoConfidencialidad](
	[IdCompromiso] [int] NOT NULL,
	[Condicion] [varchar](350) NULL,
	[Oficina] [varchar](350) NULL,
	[DNI] [int] NULL,
	[Fechayhora] [datetime] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConcentracionHemoglobinaAnemia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConcentracionHemoglobinaAnemia](
	[IdRegistroConcHemoglobina] [int] IDENTITY(1,1) NOT NULL,
	[tipoEdad] [int] NULL,
	[EdadMinima] [int] NULL,
	[EdadMaxima] [int] NULL,
	[TipoSexo] [int] NULL,
	[SaludMaterna] [char](1) NULL,
	[HemogMinimo] [float] NULL,
	[HemogMaximo] [float] NULL,
	[tAnemia] [varchar](2) NULL,
	[DAnemia] [varchar](50) NULL,
	[DX] [varchar](6) NULL,
	[fechaRegistro] [datetime] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK__Concentr__62FC8F5851E40573] PRIMARY KEY CLUSTERED 
(
	[IdRegistroConcHemoglobina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionMaterna]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionMaterna](
	[IdCondicionMaterna] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[condicionServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[condicionServicio](
	[idCondicionServicio] [int] NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsentimientosDiagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsentimientosDiagnosticos](
	[IdConsentimientoDiagnostico] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[IdConsentimiento] [int] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdClasificacionDx] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[IdUsuario] [int] NULL,
	[Fecha] [datetime] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsentimientosInformados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsentimientosInformados](
	[IdConsentimiento] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoConsentimiento] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdUsuarioRegistra] [int] NULL,
	[FechaResgistro] [datetime] NULL,
	[Estado] [int] NULL,
	[Observacion] [varchar](500) NULL,
	[IdClausula] [int] NULL,
	[IdPersonaAutoriza] [int] NULL,
	[IdTipodoc] [int] NULL,
	[Nrodocumento] [varchar](15) NULL,
	[NombresAutoriza] [varchar](100) NULL,
	[EdadAutoriza] [int] NULL,
	[idGrabado] [int] NULL,
	[FechaRevocatoria] [datetime] NULL,
	[IdUsuarioModifica] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[constancias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[constancias](
	[idConstancia] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idAtencion] [int] NOT NULL,
	[idPaciente] [int] NOT NULL,
	[idResponsable] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[idMedico] [int] NOT NULL,
	[idTipoConstancia] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[pc] [varchar](32) NOT NULL,
	[recibo] [varchar](20) NOT NULL,
	[observaciones] [text] NULL,
	[estadoConstancia] [varchar](1) NOT NULL,
 CONSTRAINT [PK_constancias] PRIMARY KEY CLUSTERED 
(
	[idConstancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConstanciasEstado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstanciasEstado](
	[idConstanciaEstado] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Estado] [char](20) NULL,
 CONSTRAINT [PK_ConstanciasEstado] PRIMARY KEY CLUSTERED 
(
	[idConstanciaEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConstanciasTipo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstanciasTipo](
	[idTipoConstancia] [int] NOT NULL,
	[NombreConstancia] [char](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consultareniec]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultareniec](
	[Apellidopaterno] [varchar](100) NULL,
	[ApellidoMaterno] [varchar](100) NULL,
	[PrimerNombre] [varchar](100) NULL,
	[SegundoNombre] [varchar](100) NULL,
	[Tercernombre] [varchar](100) NULL,
	[DNI] [varchar](100) NULL,
	[TipoSexo] [varchar](100) NULL,
	[FecNac] [varchar](100) NULL,
	[dia] [varchar](10) NULL,
	[mes] [varchar](10) NULL,
	[año] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSUMOAlimentoFua]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSUMOAlimentoFua](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[FuaNumero] [varchar](50) NULL,
	[idGastos] [int] NULL,
	[Alim_DatosCompleto] [varchar](500) NULL,
	[Alim_Dni] [varchar](50) NULL,
	[Alim_Domicilio] [varchar](500) NULL,
	[Alim_MontoXComida] [varchar](500) NULL,
	[Alim_Fecha] [varchar](50) NULL,
	[Alim_MontoTotal] [varchar](500) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSUMOGastosFua]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSUMOGastosFua](
	[id] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[FuaNumero] [varchar](50) NULL,
	[Cons_Transporte] [varchar](50) NULL,
	[Cons_ImporTrans] [money] NULL,
	[Cons_TuuaTrans] [money] NULL,
	[Cons_Total_Trans] [money] NULL,
	[Cons_Combustible] [money] NULL,
	[Cons_TipoCombustible] [varchar](500) NULL,
	[Cons_Viaticos] [money] NULL,
	[Cons_NroPersonas] [varchar](500) NOT NULL,
	[Cons_TotalConbustible] [money] NULL,
	[Cons_OtrosGastos] [varchar](500) NULL,
	[Cons_TotalGastos] [money] NULL,
	[Cons_Total] [money] NULL,
	[cons_Fecha] [date] NULL,
	[Estado] [int] NULL,
	[ProvedorRUC] [varchar](50) NULL,
	[provedorPrecio] [varchar](50) NULL,
	[TotalPrecio] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSUMONroFormato]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSUMONroFormato](
	[id] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[NroFormato] [varchar](50) NULL,
	[fecha] [datetime] NULL,
	[Estado] [int] NULL,
	[ProvedorRUC] [varchar](50) NULL,
	[provedorPrecio] [varchar](50) NULL,
	[TotalPrecio] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSUMORecorrido]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSUMORecorrido](
	[Codigo] [varchar](10) NULL,
	[Nombre] [varchar](500) NULL,
	[Recorrido] [varchar](500) NULL,
	[Km] [varchar](500) NULL,
	[CantGalon] [varchar](500) NULL,
	[Importe] [money] NULL,
	[ProvedorRUC] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONSUMORecorridoProvedor]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSUMORecorridoProvedor](
	[id] [int] NULL,
	[RUC] [varchar](50) NULL,
	[Nombre] [varchar](500) NULL,
	[CostoXGalon] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsumoxProducto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsumoxProducto](
	[IdProducto] [int] NULL,
	[MovNumero] [varchar](9) NULL,
	[IdAlmacen] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[CantConsumo] [float] NULL,
	[CantSobrante] [float] NULL,
	[CantSalida] [float] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContraReferecniaTratamiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContraReferecniaTratamiento](
	[IdcuentaAtencion] [int] NULL,
	[IddEstino] [int] NULL,
	[Tratamiento] [varchar](5000) NULL,
	[Recomendaciones] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControlTratamientoBaciloscopia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControlTratamientoBaciloscopia](
	[IdControlTratamiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorrelativoAtencionesReferencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorrelativoAtencionesReferencia](
	[Correlativo] [varchar](20) NULL,
	[Anio] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COVIDListaRegistro]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COVIDListaRegistro](
	[idCodivLista] [int] IDENTITY(1,1) NOT NULL,
	[idPaciente] [int] NULL,
	[edad] [int] NULL,
	[idTipoEdad] [int] NULL,
	[telefono] [varchar](100) NULL,
	[distrito] [varchar](100) NULL,
	[direccion] [varchar](150) NULL,
	[estadoIncial] [int] NULL,
	[relacion] [int] NULL,
	[relacionContacto] [varchar](1000) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdita] [int] NULL,
	[fechaEdita] [datetime] NULL,
	[tipoSeguro] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCodivLista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPT](
	[codigoCPT] [varchar](20) NULL,
	[PrecioUnitario] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTCodigo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTCodigo](
	[Codigo] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CptExcepcionesRecetasHIS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CptExcepcionesRecetasHIS](
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_CptExcepcionesRecetasHIS] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTNoTarifados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTNoTarifados](
	[IdProducto] [int] NOT NULL,
	[codigo] [varchar](10) NULL,
	[nombre] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTQX]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTQX](
	[codigo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTResultados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTResultados](
	[IdCPTdResultado] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdOrden] [int] NULL,
	[IdProducto] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Resultados] [varchar](1000) NULL,
	[Observaciones] [varchar](1000) NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[RealizaProcedimiento] [varchar](100) NULL,
 CONSTRAINT [PK_IdCPTdResultado] PRIMARY KEY CLUSTERED 
(
	[IdCPTdResultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTSis]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTSis](
	[codigo] [varchar](20) NULL,
	[nombre] [varchar](255) NULL,
	[PrecioUnitario] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTSis2017]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTSis2017](
	[codigo] [varchar](20) NULL,
	[PrecioUnitario] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTSOAT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTSOAT](
	[codigo] [varchar](20) NULL,
	[PrecioUnitario] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPTSOP]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPTSOP](
	[codigo] [varchar](20) NULL,
	[servicio] [varchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAccionesEnfermeriaURPADet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAccionesEnfermeriaURPADet](
	[IdAccionesEnfermeriaURPADet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAccionesEnfermeria] [int] NOT NULL,
	[IdRegistroEnfermeriaURPACab] [int] NOT NULL,
	[Valor] [bit] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdAccionesEnfermeriaURPADet] PRIMARY KEY CLUSTERED 
(
	[IdAccionesEnfermeriaURPADet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAnestesiaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAnestesiaDet](
	[IdAnestesiaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRegistroAnestesiologiaCab] [int] NOT NULL,
	[IdAnestesia] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdAnestesiaDet] PRIMARY KEY CLUSTERED 
(
	[IdAnestesiaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAnestesiaGeneralDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAnestesiaGeneralDet](
	[IdAnestesiaGeneralDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRegistroAnestesiologiaCab] [int] NOT NULL,
	[IdAnestesiaGeneral] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdAnestesiaGeneralDet] PRIMARY KEY CLUSTERED 
(
	[IdAnestesiaGeneralDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAnestesiaRegionalDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAnestesiaRegionalDet](
	[IdAnestesiaRegionalDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRegistroAnestesiologiaCab] [int] NOT NULL,
	[IdTecnicaAnestesiaRegional] [int] NOT NULL,
	[Valor] [varchar](200) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdAnestesiaRegionalDet] PRIMARY KEY CLUSTERED 
(
	[IdAnestesiaRegionalDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAntecedenteEnfermedades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAntecedenteEnfermedades](
	[IdAntecedenteEnfermedades] [int] NOT NULL,
	[Descripcion] [nchar](60) NULL,
	[Abreviatura] [nchar](40) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxAntecedenteEnfermedades] PRIMARY KEY CLUSTERED 
(
	[IdAntecedenteEnfermedades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAntecedenteEnfermedadesDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAntecedenteEnfermedadesDet](
	[IdAntecedenteEnfermedadDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAntecedenteEnfermedades] [int] NULL,
	[IdPaciente] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdAntecedenteEnfermedadDet] PRIMARY KEY CLUSTERED 
(
	[IdAntecedenteEnfermedadDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAntecedenteHabitos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAntecedenteHabitos](
	[IdAntecedenteHabitos] [int] NOT NULL,
	[Descripcion] [nchar](50) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxAntecedenteHabitos] PRIMARY KEY CLUSTERED 
(
	[IdAntecedenteHabitos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAntecedenteHabitosDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAntecedenteHabitosDet](
	[IdAntecedenteHabitosDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAntecedenteHabitos] [int] NULL,
	[IdPaciente] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdAntecedenteHabitosDet] PRIMARY KEY CLUSTERED 
(
	[IdAntecedenteHabitosDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxAntecedentesDatosAdicionales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxAntecedentesDatosAdicionales](
	[IdPaciente] [int] NOT NULL,
	[Alergias] [varchar](1000) NULL,
	[ENFERMEDADACTUAL] [varchar](100) NULL,
	[AntecedenteFamiliares] [varchar](1000) NULL,
	[Otros] [varchar](1000) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxAntecedentesDatosAdicionales] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxChequeoCirujanoCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxChequeoCirujanoCab](
	[IdChequeoCirujanoCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[Edad] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdDiagnostico] [int] NULL,
	[NroChequeoCirujano] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdChequeoCirujanoCab] PRIMARY KEY CLUSTERED 
(
	[IdChequeoCirujanoCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxChequeoCirujanoDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxChequeoCirujanoDet](
	[IdChequeoCirujanoDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdChequeoCirujano] [int] NOT NULL,
	[IdChequeoCirujanoCab] [int] NOT NULL,
	[SI] [bit] NULL,
	[NO] [bit] NULL,
	[No_Aplica] [bit] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdChequeoCirujanoDet] PRIMARY KEY CLUSTERED 
(
	[IdChequeoCirujanoDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxChequeoEnfermeriaPreOperatoriaCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxChequeoEnfermeriaPreOperatoriaCab](
	[IdChequeoEnfermeriaPreOperatoriaCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [nchar](5) NULL,
	[Peso] [float] NULL,
	[Talla] [float] NULL,
	[ICM] [float] NULL,
	[Glucosa] [nchar](15) NULL,
	[NroChequeoEnfermeriaPreOperatoria] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdChequeoEnfermeriaPreOperatoriaCab] PRIMARY KEY CLUSTERED 
(
	[IdChequeoEnfermeriaPreOperatoriaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxChequeoEnfermeriaPreOperatoriaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxChequeoEnfermeriaPreOperatoriaDet](
	[IdChequeoEnfermeriaPreOperatoriaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdChequeoEnfermeriaPreOperatoria] [int] NOT NULL,
	[IdChequeoEnfermeriaPreOperatoriaCab] [int] NOT NULL,
	[SI] [bit] NULL,
	[NO] [bit] NULL,
	[NO_APLICA] [bit] NULL,
	[Observacion] [varchar](1000) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdChequeoEnfermeriaPreOperatoriaDet] PRIMARY KEY CLUSTERED 
(
	[IdChequeoEnfermeriaPreOperatoriaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxComponentesRecPostAnestesicaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxComponentesRecPostAnestesicaDet](
	[IdRecPostAnestesicaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdComponentesRecPostAnestesica] [int] NOT NULL,
	[IdRecuperacionPostAnestesicaCab] [int] NOT NULL,
	[ValorIngreso] [char](5) NULL,
	[ValorEgreso] [char](5) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdRecPostAnestesicaDet] PRIMARY KEY CLUSTERED 
(
	[IdRecPostAnestesicaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxCondicionIngresoURPADet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxCondicionIngresoURPADet](
	[IdCondicionIngresoURPADet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdCondicionIngresoURPA] [int] NOT NULL,
	[IdRegistroEnfermeriaURPACab] [int] NOT NULL,
	[Valor] [nchar](10) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdCondicionIngresoURPADet] PRIMARY KEY CLUSTERED 
(
	[IdCondicionIngresoURPADet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxConsentimientoInformadoCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxConsentimientoInformadoCab](
	[IdConsentimientoInformadoCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NULL,
	[Fecha] [datetime] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdConsentimientoInformadoCab] PRIMARY KEY CLUSTERED 
(
	[IdConsentimientoInformadoCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxConsentimientoInformadoDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxConsentimientoInformadoDet](
	[IdConsentimientoInformadoDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdConsentimientoInformadoCab] [int] NOT NULL,
	[IdTiposConsentimientoInformado] [int] NOT NULL,
	[Observacion] [varchar](1000) NULL,
	[IdOrdenOperatoria] [int] NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [char](5) NULL,
	[NroConsentimientoInformadoDet] [nchar](15) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdConsentimientoInformadoDet] PRIMARY KEY CLUSTERED 
(
	[IdConsentimientoInformadoDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxCorrelativo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxCorrelativo](
	[IdCorrelativo] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Id] [int] NULL,
	[Ids] [int] NULL,
	[Valor] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxCorrelativo] PRIMARY KEY CLUSTERED 
(
	[IdCorrelativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxDiagnosticoMedico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxDiagnosticoMedico](
	[IdDiagnosticoMedico] [int] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxDiagnosticoMedico] PRIMARY KEY CLUSTERED 
(
	[IdDiagnosticoMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxDiagnosticoServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxDiagnosticoServicio](
	[IdDiagnosticoServicio] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxDiagnosticoServicio] PRIMARY KEY CLUSTERED 
(
	[IdDiagnosticoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxEpicrisis]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxEpicrisis](
	[IdEpicrisis] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[Observaciones] [varchar](2000) NULL,
	[Fecha] [datetime] NULL,
	[NroEpicrisis] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdEpicrisis] PRIMARY KEY CLUSTERED 
(
	[IdEpicrisis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxEtapas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxEtapas](
	[IdCQxEtapas] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CQxEtapas] PRIMARY KEY CLUSTERED 
(
	[IdCQxEtapas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxEvaluacionPreAnestesicaCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxEvaluacionPreAnestesicaCab](
	[IdEvaluacionPreAnestesicaCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[IdAnestesiologo] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [char](5) NULL,
	[Efectiva] [bit] NULL,
	[Emergencia] [bit] NULL,
	[IdServicio] [int] NULL,
	[UltimaIngestaAlimientos] [datetime] NULL,
	[IdCama] [int] NULL,
	[Indicaciones] [varchar](1000) NULL,
	[PlanAnestesico] [varchar](1000) NULL,
	[NroEvaluacionPreAnestesica] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[HoraIngreso] [varchar](10) NULL,
 CONSTRAINT [PK_IdEvaluacionPreAnestesicaCab] PRIMARY KEY CLUSTERED 
(
	[IdEvaluacionPreAnestesicaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxExamenFisicoDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxExamenFisicoDet](
	[IdExamenFisicoDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdEvaluacionPreAnestesicaCab] [int] NOT NULL,
	[IdExamenFisico] [int] NOT NULL,
	[Valor] [varchar](1000) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdExamenFisicoDet] PRIMARY KEY CLUSTERED 
(
	[IdExamenFisicoDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxIndicacionAltaCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxIndicacionAltaCab](
	[IdIndicacionAltaCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [char](5) NULL,
	[NroIndicacionAlta] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxIndicacionAltaCab] PRIMARY KEY CLUSTERED 
(
	[IdIndicacionAltaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxIndicacionAltaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxIndicacionAltaDet](
	[IdndicacionAltaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdIndicacionAlta] [int] NOT NULL,
	[IdIndicacionAltaCab] [int] NOT NULL,
	[Descripcion] [varchar](2000) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdndicacionAltaDet] PRIMARY KEY CLUSTERED 
(
	[IdndicacionAltaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxInduccionAnestesiaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxInduccionAnestesiaDet](
	[IdInduccionAnestesiaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRegistroAnestesiologiaCab] [int] NOT NULL,
	[IdInduccionAnestesia] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdInduccionAnestesiaDet] PRIMARY KEY CLUSTERED 
(
	[IdInduccionAnestesiaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxMantenimientoAnestesia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxMantenimientoAnestesia](
	[IdMantenimientoAnestesia] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRegistroAnestesiologiaCab] [int] NOT NULL,
	[Satisfactorio] [bit] NULL,
	[No_Satisfactorio] [bit] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxMantenimientoAnestesia] PRIMARY KEY CLUSTERED 
(
	[IdMantenimientoAnestesia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxMonitoreoInvasivoDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxMonitoreoInvasivoDet](
	[IdMonitoreoInvasivoDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdMonitoreoInvasivo] [int] NOT NULL,
	[IdRecuperacionPostAnestesicaCab] [int] NOT NULL,
	[Valor] [varchar](500) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdMonitoreoInvasivoDet] PRIMARY KEY CLUSTERED 
(
	[IdMonitoreoInvasivoDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOperacionSuspendidasCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOperacionSuspendidasCab](
	[IdSuspensionOperacionCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[IdAnestesiologo] [int] NULL,
	[IdEnfermera] [int] NULL,
	[IdServicio] [int] NULL,
	[HoraProg] [char](5) NULL,
	[HoraSusp] [char](5) NULL,
	[NroOperacionSuspendida] [nchar](20) NULL,
	[EstadoReg] [int] NULL,
	[FechaReg] [datetime] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
 CONSTRAINT [PK_IdSuspensionOperacionCab] PRIMARY KEY CLUSTERED 
(
	[IdSuspensionOperacionCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOperacionSuspendidasDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOperacionSuspendidasDet](
	[IdCausaSuspensionOperacionDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdCausaSuspensionOperacion] [int] NOT NULL,
	[IdSuspensionOperacionCab] [int] NOT NULL,
	[Valor] [bit] NULL,
	[Observacion] [varchar](1000) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdCausaSuspensionOperacionDet] PRIMARY KEY CLUSTERED 
(
	[IdCausaSuspensionOperacionDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOrdenOperatoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOrdenOperatoria](
	[IdOrdenOperatoria] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[IdMedico] [int] NULL,
	[IdGravedad] [int] NULL,
	[IdServicio] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [char](5) NULL,
	[Admitido] [bit] NULL,
	[FechaEstimadaQx] [datetime] NULL,
	[Observacion] [varchar](500) NULL,
	[NroOrdenOperatoria] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxOrdenIntervencion] PRIMARY KEY CLUSTERED 
(
	[IdOrdenOperatoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOrdenOperatoriaCIE]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOrdenOperatoriaCIE](
	[IdOrdenOperatoriaCIE] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdOrdenOperatoria] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdOrdenOperatoriaCIE] PRIMARY KEY CLUSTERED 
(
	[IdOrdenOperatoriaCIE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOrdenOperatoriaCIEMQ]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOrdenOperatoriaCIEMQ](
	[IdOrdenOperatoriaCIEMQ] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxOrdenOperatoriaCIEMQ] PRIMARY KEY CLUSTERED 
(
	[IdOrdenOperatoriaCIEMQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOrdenOperatoriaCPT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOrdenOperatoriaCPT](
	[IdOrdenOperatoriaCPT] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdOrdenOperatoria] [int] NOT NULL,
	[IdProducto] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdOrdenOperatoriaCPT] PRIMARY KEY CLUSTERED 
(
	[IdOrdenOperatoriaCPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOrdenOperatoriaCPTMQ]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOrdenOperatoriaCPTMQ](
	[IdOrdenOperatoriaCPTMQ] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdProducto] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdOrdenOperatoriaCPTMQ] PRIMARY KEY CLUSTERED 
(
	[IdOrdenOperatoriaCPTMQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOrdenOperatoriaCPTMQPO]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOrdenOperatoriaCPTMQPO](
	[IdOrdenOperatoriaCPTMQ] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NOT NULL,
	[IdProducto] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxOrdenOperatoriaCPTMQPO] PRIMARY KEY CLUSTERED 
(
	[IdOrdenOperatoriaCPTMQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxOrdenOperatoriaMQ]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxOrdenOperatoriaMQ](
	[IdOrdenOperatoriaMQ] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdOrdenOperatoria] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[IdMedico] [int] NULL,
	[IdGravedad] [int] NULL,
	[IdServicio] [int] NULL,
	[IdCama] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [char](5) NULL,
	[Programado] [bit] NULL,
	[FechaEstimadaQx] [datetime] NULL,
	[Observacion] [varchar](500) NULL,
	[NroOrdenOperatoriaMQ] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdOrdenOperatoriaMQ] PRIMARY KEY CLUSTERED 
(
	[IdOrdenOperatoriaMQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxPosicionAnestesiaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxPosicionAnestesiaDet](
	[IdPosicionAnestesiaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRegistroAnestesiologiaCab] [int] NOT NULL,
	[IdPosicionAnestesia] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdPosicionAnestesiaDet] PRIMARY KEY CLUSTERED 
(
	[IdPosicionAnestesiaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxProductoMedico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxProductoMedico](
	[IdProductoMedico] [int] NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxProductoMedico] PRIMARY KEY CLUSTERED 
(
	[IdProductoMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxProductoServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxProductoServicio](
	[IdProductoServicio] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxProductoServicio] PRIMARY KEY CLUSTERED 
(
	[IdProductoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxProgramacionFormatos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxProgramacionFormatos](
	[IdProgramacionFormatos] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdFormatosCQx] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdProgramacionFormatos] PRIMARY KEY CLUSTERED 
(
	[IdProgramacionFormatos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxProgramacionRoles]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxProgramacionRoles](
	[IdProgramacionRoles] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdMedico] [int] NULL,
	[IdRolesCQx] [int] NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxProgramacionRoles] PRIMARY KEY CLUSTERED 
(
	[IdProgramacionRoles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxProgramacionSala]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxProgramacionSala](
	[IdProgramacionSala] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[HoraIngreso] [char](5) NOT NULL,
	[HoraSalida] [char](5) NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdPaciente] [int] NULL,
	[IdEstadoSalaOperacion] [int] NULL,
	[IdServicio] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[Aprobado] [bit] NULL,
 CONSTRAINT [PK_IdProgramacionSala] PRIMARY KEY CLUSTERED 
(
	[IdProgramacionSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxProgramacionSalaOp]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxProgramacionSalaOp](
	[IdProgramacionSala] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdtipoServicio] [int] NULL,
	[idespecialidad] [int] NULL,
	[idsala] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[HoraIngreso] [varchar](50) NOT NULL,
	[HoraFin] [varchar](50) NOT NULL,
	[idturnoCqx] [int] NULL,
	[observacion] [varchar](3000) NULL,
	[estado] [int] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxRecuperacionPostAnestesicaCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxRecuperacionPostAnestesicaCab](
	[IdRecuperacionPostAnestesicaCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdAnestesiologo] [int] NULL,
	[IdAnestesiologiaURPA] [int] NULL,
	[IdServicioIngreso] [int] NULL,
	[FechaIngreso] [datetime] NULL,
	[HoraIngreso] [nchar](5) NULL,
	[IdServicioEgreso] [int] NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [nchar](5) NULL,
	[IdCama] [int] NULL,
	[ObservacionIndicacionMedica] [varchar](3000) NULL,
	[Pendientes] [varchar](3000) NULL,
	[NroRecuperacionPostAnestesica] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdRecuperacionPostAnestesicaCab] PRIMARY KEY CLUSTERED 
(
	[IdRecuperacionPostAnestesicaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxRegistroAnestesiologiaCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxRegistroAnestesiologiaCab](
	[IdRegistroAnestesiologiaCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[IdTiposDestinoOperacion] [int] NULL,
	[IdDiagnosticoPostOperatorio] [int] NULL,
	[Fecha] [datetime] NULL,
	[Hora] [char](5) NULL,
	[Observaciones] [varchar](2000) NULL,
	[NroRegistroAnestesiologia] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdRegistroAnestesiologiaCab] PRIMARY KEY CLUSTERED 
(
	[IdRegistroAnestesiologiaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxRegistroEnfermeriaURPACab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxRegistroEnfermeriaURPACab](
	[IdRegistroEnfermeriaURPACab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdMedico] [int] NULL,
	[IdEnfermera] [int] NULL,
	[IdAnestesiologiaSOP] [int] NULL,
	[IdAnestesiologiaURPA] [int] NULL,
	[Fecha] [datetime] NULL,
	[HoraEntrada] [nchar](5) NULL,
	[HoraSalida] [nchar](5) NULL,
	[IdServicio] [int] NULL,
	[IdCama] [int] NULL,
	[Glucosa] [nchar](15) NULL,
	[NroRegistroEnfermeriaURPA] [nchar](20) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[HoraCoordinacion] [nchar](5) NULL,
 CONSTRAINT [PK_IdRegistroEnfermeriaURPACab] PRIMARY KEY CLUSTERED 
(
	[IdRegistroEnfermeriaURPACab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxRuta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxRuta](
	[IdRuta] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxRuta] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxRutaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxRutaDet](
	[IdRutaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRuta] [int] NOT NULL,
	[IdOrdenOperatoria] [int] NOT NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Hora] [char](5) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdRutaDet] PRIMARY KEY CLUSTERED 
(
	[IdRutaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxSignosVitalesAltaRecuperacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxSignosVitalesAltaRecuperacion](
	[IdSignosVitalesAltaRecuperacion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdSignosVitales] [int] NOT NULL,
	[IdRecuperacionPostAnestesicaCab] [int] NOT NULL,
	[VariableDato] [varchar](50) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdSignosVitalesAltaRecuperacion] PRIMARY KEY CLUSTERED 
(
	[IdSignosVitalesAltaRecuperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxSignosVitalesRecuperacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxSignosVitalesRecuperacion](
	[IdSignosVitalesRecuperacion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdSignosVitales] [int] NOT NULL,
	[IdRecuperacionPostAnestesicaCab] [int] NOT NULL,
	[VariableDato] [varchar](50) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdSignosVitalesRecuperacion] PRIMARY KEY CLUSTERED 
(
	[IdSignosVitalesRecuperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxTestAldretteRecuperacionDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxTestAldretteRecuperacionDet](
	[IdTestAldretteRecuperacionDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdComponentesTestAldrette] [int] NOT NULL,
	[IdRegistroEnfermeriaURPACab] [int] NOT NULL,
	[ValorIngreso] [int] NULL,
	[ValorEgreso] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdTestAldretteRecuperacionDet] PRIMARY KEY CLUSTERED 
(
	[IdTestAldretteRecuperacionDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxTestAldretteRecuperacionPostAnestesicaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxTestAldretteRecuperacionPostAnestesicaDet](
	[IdTestAldretteRecuperacionPostAnestesicaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdComponentesTestAldrette] [int] NOT NULL,
	[IdRecuperacionPostAnestesicaCab] [int] NOT NULL,
	[ValorIngreso] [int] NULL,
	[ValorEgreso] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdTestAldretteRecuperacionPostAnestesicaDet] PRIMARY KEY CLUSTERED 
(
	[IdTestAldretteRecuperacionPostAnestesicaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxTipoAnestesiaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxTipoAnestesiaDet](
	[IdTipoAnestesiaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTiposAnestesia] [int] NOT NULL,
	[IdRegistroEnfermeriaURPACab] [int] NOT NULL,
	[Valor] [bit] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdTipoAnestesiaDet] PRIMARY KEY CLUSTERED 
(
	[IdTipoAnestesiaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxTipoPrioridad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxTipoPrioridad](
	[IdTipoPrioridad] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxTipoPrioridad] PRIMARY KEY CLUSTERED 
(
	[IdTipoPrioridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxVentilacionMecanicaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxVentilacionMecanicaDet](
	[IdVentilacionMecanicaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdComponentesVentilacionMecanica] [int] NOT NULL,
	[IdRecuperacionPostAnestesicaCab] [int] NOT NULL,
	[ValorIngreso] [nchar](30) NULL,
	[ValorAlta] [nchar](30) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdVentilacionMecanicaDet] PRIMARY KEY CLUSTERED 
(
	[IdVentilacionMecanicaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxVerificacionCirugiaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxVerificacionCirugiaDet](
	[IdVerificacionCirugiaDet] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPreguntasVerificacionCirugiaCQx] [int] NOT NULL,
	[IdVerificacionCirugiaCab] [int] NOT NULL,
	[SI] [int] NULL,
	[NO] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdVerificacionCirugiaDet] PRIMARY KEY CLUSTERED 
(
	[IdVerificacionCirugiaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxVisitaEnfermera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxVisitaEnfermera](
	[IdVisitaEnfermera] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdProgramacionSala] [int] NOT NULL,
	[IdOrdenOperatoriaMQ] [int] NULL,
	[IdVisita] [int] NOT NULL,
	[IdMedico] [int] NULL,
	[IdCQxEtapas] [int] NOT NULL,
	[FechaHoraVisita] [datetime] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxVisitaEnfermera] PRIMARY KEY CLUSTERED 
(
	[IdVisitaEnfermera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CQxVisitaEnfermeraVariable]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CQxVisitaEnfermeraVariable](
	[IdVisitaEnfermeraVariable] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdVisitaEnfermera] [int] NOT NULL,
	[IdSignosVitales] [int] NOT NULL,
	[VariableDato] [varchar](50) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_CQxVisitaEnfermeraVariable] PRIMARY KEY CLUSTERED 
(
	[IdVisitaEnfermeraVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CruceFUAS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CruceFUAS](
	[idcuentacierre] [float] NULL,
	[fuacierre] [nvarchar](255) NULL,
	[fuagalen] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUENTA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUENTA](
	[PATERNO] [varchar](50) NULL,
	[MATERNO] [varchar](50) NULL,
	[NOMBRES] [varchar](50) NULL,
	[FechaNacimiento] [date] NULL,
	[Edad] [int] NULL,
	[DireccionDomicilio] [varchar](50) NULL,
	[DISTRITO] [varchar](50) NULL,
	[PROVINCIA] [varchar](50) NULL,
	[DEPARTAMENTO] [varchar](50) NULL,
	[DNI] [varchar](50) NULL,
	[NroHistoriaClinica] [varchar](50) NULL,
	[Fur] [varchar](50) NULL,
	[Fechaexpulsion] [date] NULL,
	[NACIO?] [varchar](50) NULL,
	[MOMENTO] [varchar](50) NULL,
	[CUENTAS_MADRE] [varchar](50) NULL,
	[FECIN] [date] NULL,
	[SERVIN] [varchar](50) NULL,
	[FECEG] [date] NULL,
	[SEREGR] [varchar](50) NULL,
	[CIE10] [varchar](50) NULL,
	[DX_SIFILIS] [varchar](50) NULL,
	[Examen_NO_trepo] [varchar](150) NULL,
	[Item] [varchar](50) NULL,
	[VRESUL_NOTREPO] [varchar](50) NULL,
	[VREFE_NOTREPO] [varchar](50) NULL,
	[Examen_trepo] [varchar](150) NULL,
	[VRESUL_TREPO] [varchar](50) NULL,
	[VREFE_TREPO] [varchar](50) NULL,
	[MEDICAMEN] [varchar](50) NULL,
	[FechaReceta] [varchar](50) NULL,
	[EdadSemanas] [varchar](50) NULL,
	[Peso] [varchar](50) NULL,
	[Talla] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuentas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentas](
	[idcuentaatencion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuentasEssalud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentasEssalud](
	[idCuentaAtencion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[idCurso] [int] IDENTITY(1,1) NOT NULL,
	[nombreCurso] [varchar](600) NULL,
	[idEmpleado] [int] NULL,
	[fechaRegistra] [datetime] NULL,
	[estado] [int] NULL,
	[firmantes] [varchar](600) NULL,
	[nombreArchivo] [varchar](100) NULL,
	[folio] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[cantidadArchivos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoFirmador]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoFirmador](
	[idFirmador] [int] IDENTITY(1,1) NOT NULL,
	[idCurso] [int] NULL,
	[idEmpleadoFirmador] [int] NULL,
	[posi] [int] NULL,
	[firmado] [int] NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFirmador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[IdDepartamento] [int] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[idReniec] [int] NULL,
	[Ceste] [varchar](20) NULL,
	[Cnorte] [varchar](20) NULL,
 CONSTRAINT [Departamentos_PK] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartamentosHospital]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartamentosHospital](
	[IdDepartamento] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [DepartamentosHospital_PK] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeportistasPanamericanos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeportistasPanamericanos](
	[RegNumber] [float] NULL,
	[NumDocumento] [nvarchar](255) NULL,
	[Doc] [nvarchar](255) NULL,
	[IdtipoDoc] [int] NULL,
	[LasName] [nvarchar](255) NULL,
	[ApellidoPaterno] [nvarchar](255) NULL,
	[ApellidoMaterno] [nvarchar](255) NULL,
	[Nombres] [nvarchar](255) NULL,
	[PrimerNombre] [nvarchar](255) NULL,
	[SegundoNombre] [nvarchar](255) NULL,
	[TercerNombre] [nvarchar](255) NULL,
	[FechaNac] [nvarchar](255) NULL,
	[Nacionalidad] [nvarchar](255) NULL,
	[IdTipoSexo] [int] NULL,
	[Sexo] [nvarchar](255) NULL,
	[IdPais] [int] NULL,
	[OrganizadorResponsable] [nvarchar](255) NULL,
	[Colectivo] [nvarchar](255) NULL,
	[Categoria] [nvarchar](255) NULL,
	[Deporte] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[IdTipoPersonaJP] [int] NULL,
	[Observaciones] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeportistasPanamericanos2]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeportistasPanamericanos2](
	[RegNumber] [float] NULL,
	[NumDocumento] [nvarchar](255) NULL,
	[Doc] [nvarchar](255) NULL,
	[IdtipoDoc] [int] NULL,
	[LasName] [nvarchar](255) NULL,
	[ApellidoPaterno] [nvarchar](255) NULL,
	[ApellidoMaterno] [nvarchar](255) NULL,
	[Nombres] [nvarchar](255) NULL,
	[PrimerNombre] [nvarchar](255) NULL,
	[SegundoNombre] [nvarchar](255) NULL,
	[TercerNombre] [nvarchar](255) NULL,
	[FechaNac] [nvarchar](255) NULL,
	[Nacionalidad] [nvarchar](255) NULL,
	[IdTipoSexo] [int] NULL,
	[Sexo] [nvarchar](255) NULL,
	[IdPais] [int] NULL,
	[OrganizadorResponsable] [nvarchar](255) NULL,
	[Colectivo] [nvarchar](255) NULL,
	[Categoria] [nvarchar](255) NULL,
	[Deporte] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[IdTipoPersonaJP] [int] NULL,
	[Observaciones] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesarrolloVisitaMedicoReceta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesarrolloVisitaMedicoReceta](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[IdVisitaMedico] [int] NULL,
	[idReceta] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[IdPuntoCarga] [int] NULL,
	[estado] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleContrareFerencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleContrareFerencia](
	[IdcuentaAtencion] [int] NULL,
	[IddEstino] [int] NULL,
	[Tratamiento] [varchar](5000) NULL,
	[Recomendaciones] [varchar](5000) NULL,
	[IdTipoTransporte] [int] NULL,
	[IdEspecialidadDestino] [int] NULL,
	[FechaReg] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalleCursos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleCursos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[participante] [varchar](200) NULL,
	[nombreDoc] [varchar](200) NULL,
	[idCurso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleDiagnosticoCQ]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleDiagnosticoCQ](
	[IdCuentaAtencion] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[Clasificacion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleExamenesAuxiliares]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleExamenesAuxiliares](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReferencia] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Tipo] [varchar](5000) NULL,
	[CPT] [varchar](5000) NULL,
	[Activar] [int] NULL,
 CONSTRAINT [PK_DetalleExamenesAuxiliares] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleLlegoMuestra]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleLlegoMuestra](
	[IdMuestra] [int] IDENTITY(1,1) NOT NULL,
	[Correlativo] [int] NULL,
	[IdMovimiento] [int] NULL,
	[IdOrden] [int] NULL,
	[Codigo] [varchar](20) NULL,
	[LlegoMuestra] [bit] NULL,
	[Observacionllego] [varchar](200) NULL,
	[IdUsuario] [int] NULL,
	[FechaReg] [datetime] NULL,
	[IdProducto] [int] NULL,
	[FechaLLegoMuestra] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePacienteReferido]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePacienteReferido](
	[IdReferencia] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[Anamnesis] [varchar](5000) NULL,
	[ExamenFisico] [varchar](5000) NULL,
	[Tratamiento] [varchar](5000) NULL,
	[IdMotivoReferencia] [int] NULL,
	[DetalleMotivo] [varchar](5000) NULL,
	[NotaObservaciones] [varchar](5000) NULL,
	[CoordinacionReferencia] [varchar](5000) NULL,
	[IdReferenciaCondicion] [int] NULL,
	[IdServicioDestino] [varchar](10) NULL,
	[nroReferencia] [varchar](20) NULL,
	[IdTipoReferencia] [int] NULL,
	[IdEstablecimientoReferencia] [int] NULL,
	[IdServicioOrigen] [int] NULL,
	[Temp] [varchar](20) NULL,
	[PA] [varchar](20) NULL,
	[FC] [varchar](20) NULL,
	[FR] [varchar](20) NULL,
	[IdUsuario] [int] NULL,
	[IdMedico] [int] NULL,
	[FechaREgistro] [datetime] NULL,
	[Id_Solicitud] [int] NULL,
	[IdEstado] [int] NULL,
	[IdEspecialidadDestino] [int] NULL,
	[codUps] [varchar](6) NULL,
	[IdTipoTransporte] [int] NULL,
	[IdReferenciaRefcon] [int] NULL,
 CONSTRAINT [PK__DetalleP__D6CD6A7D41C3779A] PRIMARY KEY CLUSTERED 
(
	[IdReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePacienteReferido_1386958]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePacienteReferido_1386958](
	[IdReferencia] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[Anamnesis] [varchar](5000) NULL,
	[ExamenFisico] [varchar](5000) NULL,
	[Tratamiento] [varchar](5000) NULL,
	[IdMotivoReferencia] [int] NULL,
	[DetalleMotivo] [varchar](5000) NULL,
	[NotaObservaciones] [varchar](5000) NULL,
	[CoordinacionReferencia] [varchar](5000) NULL,
	[IdReferenciaCondicion] [int] NULL,
	[IdServicioDestino] [varchar](10) NULL,
	[nroReferencia] [varchar](20) NULL,
	[IdTipoReferencia] [int] NULL,
	[IdEstablecimientoReferencia] [int] NULL,
	[IdServicioOrigen] [int] NULL,
	[Temp] [varchar](20) NULL,
	[PA] [varchar](20) NULL,
	[FC] [varchar](20) NULL,
	[FR] [varchar](20) NULL,
	[IdUsuario] [int] NULL,
	[IdMedico] [int] NULL,
	[FechaREgistro] [datetime] NULL,
	[Id_Solicitud] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrenatal]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrenatal](
	[IdPrenatal] [int] IDENTITY(1,1) NOT NULL,
	[IdAtencion] [int] NULL,
	[G] [int] NULL,
	[P] [int] NULL,
	[IdTipoParto] [int] NULL,
	[IdEstablecimientoOrigen] [int] NULL,
	[NumConsultasPrenatales] [int] NULL,
	[RRExtraccionManual] [int] NULL,
	[RRLegradoPuerperal] [int] NULL,
	[RPExtraccionManual] [int] NULL,
	[AtoniaUterina] [int] NULL,
	[ClaveObstetrica] [int] NULL,
	[IdCesaria] [int] NULL,
	[IdEmpleado] [int] NULL,
	[IdMedicoParto] [int] NULL,
	[PartoInstitucional] [int] NULL,
	[Observacion] [varchar](500) NULL,
	[induccion] [int] NULL,
	[hgPreParto] [decimal](18, 2) NULL,
	[hgPostParto] [decimal](18, 2) NULL,
 CONSTRAINT [PK_DetallePrenatal] PRIMARY KEY CLUSTERED 
(
	[IdPrenatal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrioridadAudCambPrioridad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrioridadAudCambPrioridad](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[idlistaespera] [int] NULL,
	[idcuenta] [int] NULL,
	[prioridadAntes] [int] NULL,
	[prioridaCambio] [int] NULL,
	[idempleado] [int] NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrioridadEstado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrioridadEstado](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[ideListaEspera] [int] NOT NULL,
	[idEstado] [int] NULL,
	[observacion] [varchar](200) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrioridadListaEstado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrioridadListaEstado](
	[idListaEstado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](80) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrioridadMateriales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrioridadMateriales](
	[idMateriales] [int] IDENTITY(1,1) NOT NULL,
	[ideListaEspera] [int] NULL,
	[nroExpediente] [varchar](50) NULL,
	[tipoEstado] [int] NULL,
	[nombreEquipo] [varchar](1000) NULL,
	[estado] [int] NULL,
	[idempleado] [int] NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrioridadSubirArchivo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrioridadSubirArchivo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idlistaEspera] [int] NULL,
	[idcuenta] [int] NULL,
	[tipo] [varchar](50) NULL,
	[ruta] [varchar](100) NULL,
	[ruta2] [varchar](100) NULL,
	[estado] [int] NULL,
	[idempleado] [int] NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrioridadTipoCirugia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrioridadTipoCirugia](
	[idListaEspera] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdPrioridad] [int] NULL,
	[IdTiposCirugias] [int] NULL,
	[idComplejidadCirugia] [int] NULL,
	[idEstado] [int] NULL,
	[fechaRegistro] [datetime] NULL,
	[idUsuario] [int] NULL,
	[labProgramados] [int] NULL,
	[labPendientes] [int] NULL,
	[Observacion] [varchar](2000) NULL,
	[FechaProgramada] [datetime] NULL,
	[fechaModifica] [datetime] NULL,
	[estadoProgramacion] [int] NULL,
	[indicadorPrg] [int] NULL,
 CONSTRAINT [PK_DetallePrioridadTipoCirugia] PRIMARY KEY CLUSTERED 
(
	[idListaEspera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePrioridadTipoEstado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePrioridadTipoEstado](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleProcedimientoCQ]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleProcedimientoCQ](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdProducto] [int] NULL,
	[idcomplejidadcirugia] [int] NULL,
	[IdListaEspera] [int] NULL,
	[estado] [int] NULL,
	[canal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleReciboingresoCaja]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleReciboingresoCaja](
	[idDetalleReciboingreso] [int] IDENTITY(1,1) NOT NULL,
	[idReciboIngreso] [int] NULL,
	[FechaCobro] [date] NULL,
	[IdPartidaPresupuestal] [int] NULL,
	[Monto] [decimal](18, 2) NULL,
 CONSTRAINT [PK_DetalleReciboingreso] PRIMARY KEY CLUSTERED 
(
	[idDetalleReciboingreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleReferencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleReferencia](
	[IdAtencion] [int] NULL,
	[Secuencia] [int] NULL,
	[NroReferencia] [varchar](50) NULL,
	[FechaSolicitud] [date] NULL,
	[Horasolicitud] [char](5) NULL,
	[FechaReferencia] [date] NULL,
	[DiasExtension] [int] NULL,
	[FechaVigencia] [date] NULL,
	[MotivoReferencia] [varchar](500) NULL,
	[Estado] [int] NULL,
	[FechaSolicitudExtension] [date] NULL,
	[HoraSolicitudExtension] [char](5) NULL,
	[EstadoSolicitud] [int] NULL,
	[idespecialidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diag]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diag](
	[F1] [float] NULL,
	[F2] [float] NULL,
	[F3] [float] NULL,
	[F4] [float] NULL,
	[F5] [float] NULL,
	[F6] [float] NULL,
	[F7] [float] NULL,
	[F8] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiagnosticoAlertasEpidemiologicas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagnosticoAlertasEpidemiologicas](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[Iddiagnostico] [int] NULL,
	[Tiponotificacion] [int] NULL,
	[Tipoperiocidad] [nchar](10) NULL,
	[nota] [varchar](15) NULL,
	[estado] [int] NULL,
	[idTipoAlerta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosticos](
	[IdDiagnostico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CodigoCIE2004] [char](7) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[IdCapitulo] [int] NULL,
	[IdGrupo] [int] NULL,
	[IdCategoria] [int] NULL,
	[CodigoExportacion] [char](5) NULL,
	[CodigoCIE9] [char](5) NULL,
	[CodigoCIE10] [char](7) NULL,
	[Gestacion] [bit] NULL,
	[Morbilidad] [bit] NULL,
	[Intrahospitalario] [bit] NULL,
	[Restriccion] [bit] NULL,
	[EdadMaxDias] [int] NULL,
	[EdadMinDias] [int] NULL,
	[IdTipoSexo] [int] NULL,
	[ClaseDxHIS] [varchar](1) NULL,
	[DescripcionMINSA] [varchar](250) NULL,
	[codigoCIEsinPto] [varchar](7) NULL,
	[FechaInicioVigencia] [datetime] NULL,
	[EsActivo] [bit] NOT NULL,
	[IdCondicionMaterna] [int] NULL,
 CONSTRAINT [Diagnosticos_PK] PRIMARY KEY CLUSTERED 
(
	[IdDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiagnosticosCapitulos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagnosticosCapitulos](
	[IdCapitulo] [int] NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
 CONSTRAINT [DiagnosticosCapitulos_PK] PRIMARY KEY CLUSTERED 
(
	[IdCapitulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiagnosticosCategorias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagnosticosCategorias](
	[IdCategoria] [int] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdGrupo] [int] NULL,
 CONSTRAINT [DiagnosticosCategorias_PK] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diagnosticosCEX]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diagnosticosCEX](
	[IdDiagnostico] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCIE2004] [char](7) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[IdCapitulo] [int] NULL,
	[IdGrupo] [int] NULL,
	[IdCategoria] [int] NULL,
	[CodigoExportacion] [char](5) NULL,
	[CodigoCIE9] [char](5) NULL,
	[CodigoCIE10] [char](7) NULL,
	[Gestacion] [bit] NULL,
	[Morbilidad] [bit] NULL,
	[Intrahospitalario] [bit] NULL,
	[Restriccion] [bit] NULL,
	[EdadMaxDias] [int] NULL,
	[EdadMinDias] [int] NULL,
	[IdTipoSexo] [int] NULL,
	[ClaseDxHIS] [varchar](1) NULL,
	[DescripcionMINSA] [varchar](250) NULL,
	[codigoCIEsinPto] [varchar](7) NULL,
	[FechaInicioVigencia] [datetime] NULL,
	[EsActivo] [bit] NOT NULL,
	[IdCondicionMaterna] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiagnosticosGrupos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagnosticosGrupos](
	[IdGrupo] [int] NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdCapitulo] [int] NULL,
 CONSTRAINT [DiagnosticosGrupos_PK] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiagnosticosSoloPartos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiagnosticosSoloPartos](
	[codigoCie10] [varchar](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diferimientoCE]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diferimientoCE](
	[idespecialidad] [int] NULL,
	[medicoNoMedico] [varchar](20) NULL,
	[especialidad] [varchar](70) NULL,
	[idservicio] [int] NULL,
	[diferimiento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DisaEstablecimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisaEstablecimientos](
	[IdDisa] [int] IDENTITY(1,1) NOT NULL,
	[Codgio] [int] NULL,
	[Nombre] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscapacidadDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscapacidadDetalle](
	[IdTipoDiscapacidad] [int] IDENTITY(1,1) NOT NULL,
	[IdDiscapacidad] [int] NULL,
	[FechaReg] [datetime] NULL,
	[IdUsuario] [int] NULL,
	[IdEstado] [int] NULL,
	[IdPaciente] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distritos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distritos](
	[IdDistrito] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[IdReniec] [int] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [Distritos_PK] PRIMARY KEY CLUSTERED 
(
	[IdDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DNI]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DNI](
	[uno] [nvarchar](255) NULL,
	[DNI] [varchar](50) NULL,
	[cambio] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentos_firmados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentos_firmados](
	[idDocumento] [int] IDENTITY(1,1) NOT NULL,
	[idRecetaOrden] [varchar](20) NULL,
	[idcuentaAtencion] [int] NULL,
	[tipoDocumento] [varchar](100) NULL,
	[idEmpleado] [int] NULL,
	[fechaFirma] [datetime] NULL,
	[rutafirmado] [varchar](150) NULL,
	[IdMovimiento] [varchar](20) NULL,
	[idOrden] [varchar](20) NULL,
	[IdProducto] [varchar](20) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK__document__572A36FC72127491] PRIMARY KEY CLUSTERED 
(
	[idDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentos_firmadosFinal]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentos_firmadosFinal](
	[idDocumento] [int] IDENTITY(1,1) NOT NULL,
	[idRecetaOrden] [varchar](20) NULL,
	[idcuentaAtencion] [int] NULL,
	[tipoDocumento] [varchar](100) NULL,
	[idEmpleado] [int] NULL,
	[fechaFirma] [datetime] NULL,
	[rutafirmado] [varchar](150) NULL,
	[IdMovimiento] [varchar](20) NULL,
	[idOrden] [varchar](20) NULL,
	[IdProducto] [varchar](20) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK__document__572A36FC72127492] PRIMARY KEY CLUSTERED 
(
	[idDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentosListaFirmar]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentosListaFirmar](
	[idDocumentosLista] [int] IDENTITY(1,1) NOT NULL,
	[tipoDocumento] [varchar](45) NULL,
	[orden] [int] NULL,
	[nombreDoc] [varchar](60) NULL,
	[abreviatura] [varchar](15) NULL,
	[estado] [int] NULL,
	[idTipoEmpleado] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDocumentosLista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONARBancoSangre]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONARBancoSangre](
	[IdDonarSangre] [int] NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdServicio] [int] NULL,
	[cantidad] [int] NULL,
	[fecha] [date] NULL,
	[hora] [time](7) NULL,
	[idEmpleado] [int] NULL,
	[estado] [int] NULL,
	[tipo] [int] NULL,
	[IdTipoComponente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDonarSangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONARBancoSangreEntregados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONARBancoSangreEntregados](
	[IdDonarleSangreEntregado] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NULL,
	[fecha] [datetime] NULL,
	[IdEmpleado] [int] NULL,
	[IdDonarSangre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDonarleSangreEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONARBancoSangreTipoComponente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONARBancoSangreTipoComponente](
	[IdTipoComponente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoComponente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONARDetalleDiagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONARDetalleDiagnostico](
	[IdDetalleDiagnostico] [int] NOT NULL,
	[IdDonarSangre] [int] NULL,
	[IdDiagnostico] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dxHombres]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dxHombres](
	[CIE10] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[MIN] [float] NULL,
	[MAX] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dxMujeres]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dxMujeres](
	[CIE10] [nvarchar](255) NULL,
	[Diagnostico] [nvarchar](255) NULL,
	[MIN] [float] NULL,
	[MAX] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DxObstetricoDetallePrenatal]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DxObstetricoDetallePrenatal](
	[IdAtencion] [int] NULL,
	[IdSubDxIngreso] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DxObstetricoEgre]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DxObstetricoEgre](
	[IdDxObstetricoEgre] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DxObstetricoIng]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DxObstetricoIng](
	[IdDxObstetricoing] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dxTodos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dxTodos](
	[CIE10] [nvarchar](255) NULL,
	[DE_DETALLE_CIE] [nvarchar](255) NULL,
	[FLAG] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmedClave]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmedClave](
	[idEmedClave] [int] IDENTITY(1,1) NOT NULL,
	[fechaClave] [date] NULL,
	[idResponsable] [int] NULL,
	[idTurno] [int] NULL,
	[idTipoClave] [int] NULL,
	[llamadaPerifoneo] [int] NULL,
	[horaLlamada] [varchar](5) NULL,
	[idServicioUbicacion] [int] NULL,
	[observacionServicio] [varchar](50) NULL,
	[perifoneo] [int] NULL,
	[horaPerifoneo] [varchar](5) NULL,
	[idPiso] [int] NULL,
	[personalReporto] [varchar](80) NULL,
	[idCuentaAtencion] [int] NULL,
	[contestoGIN] [int] NULL,
	[idMedicoGIN] [int] NULL,
	[observacionOcurrenciaGIN] [varchar](50) NULL,
	[horaOcurrenciaGIN] [varchar](5) NULL,
	[contestoEME] [int] NULL,
	[idMedicoEME] [int] NULL,
	[observacionOcurrenciaEME] [varchar](50) NULL,
	[horaOcurrenciaEME] [varchar](5) NULL,
	[contestoLab] [int] NULL,
	[idMedicoLab] [int] NULL,
	[observacionOcurrenciaLab] [varchar](50) NULL,
	[horaOcurrenciaLab] [varchar](5) NULL,
	[contestoSOP] [int] NULL,
	[idMedicoSOP] [int] NULL,
	[observacionOcurrenciaSOP] [varchar](50) NULL,
	[horaOcurrenciaSOP] [varchar](5) NULL,
	[contestoUCI] [int] NULL,
	[idMedicoUCI] [int] NULL,
	[observacionOcurrenciaUCI] [varchar](50) NULL,
	[horaOcurrenciaUCI] [varchar](5) NULL,
	[contestoEnf] [int] NULL,
	[idMedicoEnf] [int] NULL,
	[observacionOcurrenciaEnf] [varchar](50) NULL,
	[horaOcurrenciaEnf] [varchar](5) NULL,
	[observaciones] [varchar](300) NULL,
	[seguimiento] [varchar](300) NULL,
	[idMedicoCierre] [int] NULL,
	[DNICierre] [varchar](10) NULL,
	[FechaCierre] [date] NULL,
	[horaCierre] [varchar](50) NULL,
	[idestado] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[idUsuarioRegistro] [int] NULL,
	[FechaModifica] [datetime] NULL,
	[idUsuarioModifica] [int] NULL,
 CONSTRAINT [PK_EmedClave] PRIMARY KEY CLUSTERED 
(
	[idEmedClave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmedPisoPorServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmedPisoPorServicio](
	[idServicio] [int] NOT NULL,
	[idPiso] [int] NULL,
 CONSTRAINT [PK_EmedPisoPorServicio] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmedTipoClave]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmedTipoClave](
	[idTipoClave] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_EmedTipoClave] PRIMARY KEY CLUSTERED 
(
	[idTipoClave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmedTurno]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmedTurno](
	[idEmedTurno] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_EmedTurno] PRIMARY KEY CLUSTERED 
(
	[idEmedTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaCausaExternaMorbilidad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaCausaExternaMorbilidad](
	[IdCausaExternaMorbilidad] [int] NOT NULL,
	[Codigo] [varchar](4) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[MotivoSEM] [varchar](2) NULL,
 CONSTRAINT [EmergenciaCausaExternaMorbilidad_PK] PRIMARY KEY CLUSTERED 
(
	[IdCausaExternaMorbilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaClaseAccidente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaClaseAccidente](
	[IdClaseAccidente] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [EmergenciaClaseAccidente_PK] PRIMARY KEY CLUSTERED 
(
	[IdClaseAccidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaGrupoOcupacionalALAB]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaGrupoOcupacionalALAB](
	[IdGrupoOcupacionalALAB] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [EmergenciaGrupoOcupacionalALAB_PK] PRIMARY KEY CLUSTERED 
(
	[IdGrupoOcupacionalALAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaLugarEvento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaLugarEvento](
	[IdLugarEvento] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [EmergenciaLugarEvento_PK] PRIMARY KEY CLUSTERED 
(
	[IdLugarEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaPosicionLesionadoALAB]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaPosicionLesionadoALAB](
	[IdPosicionLesionadoALAB] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [EmergenciaPosicionLesionadoALAB_PK] PRIMARY KEY CLUSTERED 
(
	[IdPosicionLesionadoALAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaRelacionAgresorVictima]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaRelacionAgresorVictima](
	[IdRelacionAgresorVictima] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [EmergenciaRelacionAgresorVictima_PK] PRIMARY KEY CLUSTERED 
(
	[IdRelacionAgresorVictima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaSeguridad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaSeguridad](
	[IdSeguridad] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [EmergenciaSeguridad_PK] PRIMARY KEY CLUSTERED 
(
	[IdSeguridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaTipoAgenteAGAN]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaTipoAgenteAGAN](
	[IdTipoAgenteAGAN] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [EmergenciaTipoAgenteAGAN_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoAgenteAGAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaTipoEvento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaTipoEvento](
	[IdTipoEvento] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [EmergenciaTipoEvento_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaTipoTransporte]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaTipoTransporte](
	[IdTipoTransporte] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [EmergenciaTipoTransporte_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaTipoVehiculo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaTipoVehiculo](
	[IdTipoVehiculo] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [EmergenciaTipoVehiculo_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaUbicacionLesionado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaUbicacionLesionado](
	[IdUbicacionLesionado] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [EmergenciaUbicacionLesionado_PK] PRIMARY KEY CLUSTERED 
(
	[IdUbicacionLesionado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[IdCondicionTrabajo] [int] NOT NULL,
	[IdTipoEmpleado] [int] NOT NULL,
	[DNI] [char](20) NOT NULL,
	[CodigoPlanilla] [varchar](8) NOT NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
	[Usuario] [varchar](20) NULL,
	[Clave] [varchar](200) NULL,
	[loginEstado] [int] NULL,
	[loginPC] [varchar](50) NULL,
	[FechaNacimiento] [datetime] NULL,
	[idTipoDestacado] [int] NULL,
	[IdEstablecimientoExterno] [int] NULL,
	[HisCodigoDigitador] [varchar](20) NULL,
	[ReniecAutorizado] [bit] NULL,
	[idTipoDocumento] [int] NULL,
	[idSupervisor] [int] NULL,
	[esActivo] [bit] NULL,
	[AccedeVWeb] [bit] NULL,
	[ClaveVWeb] [varchar](150) NULL,
	[Ris_estado] [nchar](10) NULL,
	[telefono] [varchar](15) NULL,
	[correo] [varchar](100) NULL,
	[Interconsultas] [int] NULL,
	[esAuditor] [int] NULL,
	[sexo] [int] NULL,
	[pais] [int] NULL,
	[AccesoCE] [int] NULL,
	[idArea] [int] NULL,
	[laboraCQx] [int] NULL,
	[InterconsultaCE] [int] NULL,
	[EsAdmisionista] [int] NULL,
	[Direccion] [nvarchar](250) NULL,
	[IdPrimerIngreso] [int] NULL,
	[LaboraReferencia] [int] NULL,
 CONSTRAINT [Empleados_PK] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadosAccesos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadosAccesos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idempleado] [int] NULL,
	[LoginPC] [varchar](50) NULL,
	[loginEstado] [int] NULL,
	[Fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadosCargos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadosCargos](
	[idEmpleado] [int] NULL,
	[idCargo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadosLugarDeTrabajo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadosLugarDeTrabajo](
	[idEmpleado] [int] NOT NULL,
	[idLaboraArea] [int] NOT NULL,
	[idLaboraSubArea] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadosPermisosSOAT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadosPermisosSOAT](
	[idempleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeria_CatalogoDominios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeria_CatalogoDominios](
	[IdDominio] [int] NOT NULL,
	[CodDominio] [varchar](50) NULL,
	[DominioTexto] [varchar](200) NULL,
 CONSTRAINT [PK_Enfermeria_CatalogoDominios] PRIMARY KEY CLUSTERED 
(
	[IdDominio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeria_CatalogoValoresCombo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeria_CatalogoValoresCombo](
	[IdVariable] [int] NOT NULL,
	[IdValorCombo] [int] NOT NULL,
	[ComboTexto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Enfermeria_VariablesValoresCombo] PRIMARY KEY CLUSTERED 
(
	[IdVariable] ASC,
	[IdValorCombo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeria_CatalogoVariables]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeria_CatalogoVariables](
	[IdVariable] [int] NOT NULL,
	[IdDominio] [int] NOT NULL,
	[OrdernDominio] [int] NOT NULL,
	[Texto] [varchar](200) NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
	[Ancho] [int] NOT NULL,
	[EsDatoObligatorio] [bit] NOT NULL,
	[TextoTooltip] [varchar](200) NULL,
	[EsDatoGrafico] [bit] NOT NULL,
	[TieneFormatoMask] [bit] NOT NULL,
	[FormatoMask] [varchar](50) NULL,
	[TieneRango] [bit] NOT NULL,
	[RangoInicial] [int] NULL,
	[RangoFinal] [int] NULL,
	[PosicionFila] [int] NULL,
	[PosicionColumna] [int] NULL,
 CONSTRAINT [PK_Enfermeria_CatalogoVariables] PRIMARY KEY CLUSTERED 
(
	[IdVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeria_TratamientoDosis]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeria_TratamientoDosis](
	[IdCuentaAtencion] [int] NOT NULL,
	[IdVisita] [int] NOT NULL,
	[IdDiaVisita] [int] NOT NULL,
	[IdReceta] [int] NOT NULL,
	[IdItem] [int] NOT NULL,
	[Dosis] [int] NULL,
	[DatoProrenata] [int] NULL,
 CONSTRAINT [PK_Enfermeria_TratamientoDosis] PRIMARY KEY CLUSTERED 
(
	[IdCuentaAtencion] ASC,
	[IdVisita] ASC,
	[IdDiaVisita] ASC,
	[IdReceta] ASC,
	[IdItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeria_ValoresCombo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeria_ValoresCombo](
	[IdCuentaAtencion] [int] NOT NULL,
	[IdVisita] [int] NOT NULL,
	[IdVariable] [int] NOT NULL,
	[IdValorCombo] [int] NOT NULL,
 CONSTRAINT [PK_Enfermeria_ValoresCombo] PRIMARY KEY CLUSTERED 
(
	[IdCuentaAtencion] ASC,
	[IdVisita] ASC,
	[IdVariable] ASC,
	[IdValorCombo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeria_Variables]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeria_Variables](
	[IdCuentaAtencion] [int] NOT NULL,
	[IdVisita] [int] NOT NULL,
	[IdVariable] [int] NOT NULL,
	[VariableDato] [varchar](200) NULL,
 CONSTRAINT [PK_Enfermeria_Variables] PRIMARY KEY CLUSTERED 
(
	[IdCuentaAtencion] ASC,
	[IdVisita] ASC,
	[IdVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeria_Visitas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeria_Visitas](
	[IdCuentaAtencion] [int] NOT NULL,
	[IdVisita] [int] NOT NULL,
	[FechaHoraVisita] [datetime] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[Observaciones] [varchar](1000) NULL,
	[IdCama] [int] NOT NULL,
	[IdEmpleadoEnfermera] [int] NOT NULL,
	[IngresoValorizacion] [bit] NULL,
 CONSTRAINT [PK_Enfermeria_Visitas] PRIMARY KEY CLUSTERED 
(
	[IdCuentaAtencion] ASC,
	[IdVisita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiAntibioticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiAntibioticos](
	[IdAntibiotico] [int] NOT NULL,
	[IdEstado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiDispositivos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiDispositivos](
	[IdDispositivo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
	[Invasivo] [int] NULL,
	[Invasivo2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDispositivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiEvolucion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiEvolucion](
	[IdEvolucion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEvolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiTipoVigilancia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiTipoVigilancia](
	[IdTipoVigilancia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoVigilancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVeaEnfermedades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVeaEnfermedades](
	[IdVeaEnfermedad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdTipoEnfermedad] [int] NOT NULL,
	[Url] [varchar](1000) NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVeaEnfermedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVigilancia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVigilancia](
	[IdVigilancia] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[Origen] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [int] NULL,
	[IdEstado] [int] NOT NULL,
	[ColonizadoInfectado] [int] NULL,
	[Iaas1Dispositivo] [int] NULL,
	[Iaas1Fecha] [date] NULL,
	[Iaas2Dispositivo] [int] NULL,
	[Iaas2Fecha] [date] NULL,
	[Iaas3Dispositivo] [int] NULL,
	[Iaas3Fecha] [date] NULL,
	[Observaciones] [varchar](5000) NULL,
	[Iaas1Servicio] [int] NULL,
	[Iaas2Servicio] [int] NULL,
	[Iaas3Servicio] [int] NULL,
	[Mes] [int] NULL,
	[Anio] [int] NULL,
	[IdTipoVigilancia] [int] NULL,
	[DispositivoNoConsiderado] [int] NULL,
	[MotivoSeguimiento] [varchar](5000) NULL,
	[OpcionSeguimiento] [varchar](500) NULL,
	[IdServicioActual] [int] NULL,
	[IdCamaActual] [int] NULL,
	[IdTransferido] [int] NULL,
	[Peso] [int] NULL,
	[CriterioDefinicion1] [int] NULL,
	[ItsSecundario1] [int] NULL,
	[CriterioDefinicion2] [int] NULL,
	[ItsSecundario2] [int] NULL,
	[CriterioDefinicion3] [int] NULL,
	[ItsSecundario3] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVigilancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVigilanciaDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVigilanciaDetalle](
	[IdVigilancia] [int] NOT NULL,
	[IdDispositivo] [int] NULL,
	[EstadoDispositivo] [int] NULL,
	[FechaSeguimiento] [date] NOT NULL,
	[FechaCambio] [date] NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [int] NULL,
	[IdEstado] [int] NOT NULL,
	[IdServicio] [int] NULL,
	[IdCama] [int] NULL,
	[Evolucion] [int] NULL,
	[Observaciones] [varchar](5000) NULL,
	[AislamientoIndividual] [int] NULL,
	[IdentificacionVisual] [int] NULL,
	[DisponibilidadInsumos] [int] NULL,
	[DisponibilidadEpp] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVigilanciaDetalleDispositivos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVigilanciaDetalleDispositivos](
	[IdVigilancia] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[UsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVigilanciaDetalleEnfermedades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVigilanciaDetalleEnfermedades](
	[IdVigilancia] [int] NULL,
	[IdEnfermedad] [int] NULL,
	[UsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVigilanciaDetalleMotivos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVigilanciaDetalleMotivos](
	[IdVigilancia] [int] NULL,
	[IdMotivo] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[UsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVigilanciaGrupos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVigilanciaGrupos](
	[IdVigilanciaGrupo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVigilanciaGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpiVigilanciaGruposServicios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpiVigilanciaGruposServicios](
	[IdVigilanciaGruposServicios] [int] IDENTITY(1,1) NOT NULL,
	[IdVigilanciaGrupo] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVigilanciaGruposServicios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoImpresora]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoImpresora](
	[codEquipo] [varchar](20) NULL,
	[NomImpresora] [varchar](60) NULL,
	[NomEquipo] [varchar](60) NULL,
	[idEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquivalenciaCPT_SMI]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquivalenciaCPT_SMI](
	[codigoCPT] [varchar](20) NOT NULL,
	[codigoSMI] [varchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadCE]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadCE](
	[IdEspecialidadCE] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[TiempoPromedioAtencion] [int] NULL,
	[IdProductoConsulta] [int] NULL,
	[IdProductoInterconsulta] [int] NULL,
 CONSTRAINT [EspecialidadCE_PK] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidadCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[IdEspecialidad] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[TiempoPromedioAtencion] [int] NULL,
	[MedicoNoMedico] [int] NULL,
	[servicio] [int] NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [Especialidades_PK] PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades2501]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades2501](
	[IdEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[TiempoPromedioAtencion] [int] NULL,
	[MedicoNoMedico] [int] NULL,
	[servicio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadesRefcon]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadesRefcon](
	[IdEspecialidadRef] [int] NULL,
	[CodigoRef] [varchar](6) NULL,
	[EspDescripcion] [varchar](60) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadesRefcon_UPS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadesRefcon_UPS](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[Especialidad] [varchar](50) NOT NULL,
	[codUPSSusalud] [varchar](50) NOT NULL,
	[estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadTipoEmpleado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadTipoEmpleado](
	[idespecialidad] [int] NULL,
	[idTipoEmpleado] [int] NULL,
	[idCargoRRHH] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Establecimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establecimientos](
	[IdEstablecimiento] [int] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[RUC] [varchar](11) NULL,
	[IdDistrito] [int] NULL,
	[IdTipoSubsector] [int] NULL,
	[IdTipo] [int] NULL,
	[CodigoInstitucion] [varchar](50) NULL,
	[CodigoClasificación] [varchar](50) NULL,
	[codigoTipo] [int] NULL,
	[CódigoDISA] [int] NULL,
	[Dirección] [varchar](800) NULL,
	[Cnorte] [varchar](150) NULL,
	[Ceste] [varchar](150) NULL,
	[Cota] [numeric](18, 0) NULL,
	[CodigoTipoCat] [int] NULL,
	[Estado] [int] NULL,
	[CodigoRed] [int] NULL,
	[CodigoMicrorred] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[Horario] [varchar](150) NULL,
	[Red] [varchar](150) NULL,
 CONSTRAINT [Establecimientos_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstablecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstablecimientosNoMinsa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstablecimientosNoMinsa](
	[IdEstablecimientoNoMinsa] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Nombre] [varchar](250) NULL,
	[IdTipoSubsector] [int] NULL,
	[IdDistrito] [varchar](50) NULL,
	[codigo] [varchar](10) NULL,
	[CodigoInstitucion] [varchar](50) NULL,
	[CodigoClasificación] [varchar](50) NULL,
	[codigoTipo] [int] NULL,
	[CódigoDISA] [int] NULL,
	[Dirección] [varchar](500) NULL,
	[Cnorte] [varchar](50) NULL,
	[Ceste] [varchar](50) NULL,
	[Cota] [numeric](18, 0) NULL,
	[CodigoTipoCat] [int] NULL,
	[Estado] [int] NULL,
	[CodigoRed] [int] NULL,
	[CodigoMicrorred] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[Horario] [varchar](150) NULL,
 CONSTRAINT [EstablecimientosNoMinsa_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstablecimientoNoMinsa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoDisponibilidadBienes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoDisponibilidadBienes](
	[idEstadoDisponibilidad] [int] NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosAtencion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosAtencion](
	[IdEstadoAtencion] [int] NOT NULL,
	[Descripcion] [varchar](40) NULL,
 CONSTRAINT [EstadoAtencion_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosCama]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosCama](
	[IdEstadoCama] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [EstadosCama_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosCuenta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosCuenta](
	[IdEstado] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Estado] [varchar](1) NULL,
 CONSTRAINT [EstadosCuenta_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosDevoluciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosDevoluciones](
	[idEstadoDevolucion] [int] NOT NULL,
	[Estado] [varchar](30) NULL,
 CONSTRAINT [PK_EstadoDevoluciones] PRIMARY KEY CLUSTERED 
(
	[idEstadoDevolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosFacturacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosFacturacion](
	[IdEstadoFacturacion] [int] NOT NULL,
	[Descripcion] [varchar](20) NULL,
 CONSTRAINT [EstadoProducto_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoFacturacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosHistoriaClinica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosHistoriaClinica](
	[IdEstadoHistoria] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [EstadosHistoriaClinica_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoHistoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosMovimientoHistoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosMovimientoHistoria](
	[IdEstadoMovimiento] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [EstadosPrestamoHistoria_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoSolicitudReferencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoSolicitudReferencia](
	[IdEstadoSolicitud] [int] NOT NULL,
	[Descripcion] [nchar](20) NOT NULL,
 CONSTRAINT [PK_EstadoSolicitudReferencia] PRIMARY KEY CLUSTERED 
(
	[IdEstadoSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosOrden]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosOrden](
	[IdEstadoOrden] [int] NOT NULL,
	[descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [EstadosOrden_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosProa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosProa](
	[IdEstadoProa] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[ColorTexto] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
	[Color] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstadoProa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosProaHistorico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosProaHistorico](
	[IdReceta] [int] NOT NULL,
	[IdEstadoProa] [int] NULL,
	[IdEmpleado] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosReembolso]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosReembolso](
	[idEstadoReembolso] [int] NOT NULL,
	[Estado] [varchar](10) NOT NULL,
 CONSTRAINT [PK_EstadosReembolso] PRIMARY KEY CLUSTERED 
(
	[idEstadoReembolso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosResultados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosResultados](
	[idEstadoResultado] [int] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
 CONSTRAINT [PK__EstadosR__8F2959233B6B7FC6] PRIMARY KEY CLUSTERED 
(
	[idEstadoResultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EtapasCirugiaCQx]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EtapasCirugiaCQx](
	[IdEtapasCirugiaCQx] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](40) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_EtapasCirugiaCQx] PRIMARY KEY CLUSTERED 
(
	[IdEtapasCirugiaCQx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventosSaludOcupacional]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventosSaludOcupacional](
	[IdSalud] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuarioReg] [int] NULL,
	[IdcuentaAtencion] [int] NULL,
	[IdClasificacionEventos] [int] NULL,
	[IdTipoAccidenteEventos] [int] NULL,
	[LugarAccidenteEventos] [varchar](100) NULL,
	[DescripccionEventos] [varchar](200) NULL,
	[FechaReg] [datetime] NULL,
	[IdUsuarioMod] [int] NULL,
	[FechaMod] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolucion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evolucion](
	[IdEvolucion] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleado] [int] NULL,
	[IdServicio] [int] NULL,
	[IdCama] [int] NULL,
	[Fecha] [datetime] NULL,
	[Subjetivo] [varchar](8000) NULL,
	[Objetivo] [varchar](8000) NULL,
	[Apreciacion] [varchar](8000) NULL,
	[PlanEvo] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEvolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamenSolicitadoBaciloscopia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamenSolicitadoBaciloscopia](
	[IdExSolicitado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exoneracion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exoneracion](
	[idExoneracion] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[Documento] [varchar](100) NULL,
	[Correlativo] [varchar](50) NULL,
	[estado] [int] NULL,
	[idEmpleado_creacion] [int] NULL,
	[fechaHora_creacion] [datetime] NULL,
	[idempleado_edicion] [int] NULL,
	[fechaHora_edicion] [int] NULL,
	[nombreEstacion] [varchar](50) NULL,
 CONSTRAINT [PK_Exoneracion] PRIMARY KEY CLUSTERED 
(
	[idExoneracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExoneracionBienes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExoneracionBienes](
	[idExoneracion] [int] IDENTITY(1,1) NOT NULL,
	[MovNumero] [varchar](9) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[PrecioTotal] [money] NULL,
	[PrecioExonerado] [money] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_ExoneracionBienes] PRIMARY KEY CLUSTERED 
(
	[idExoneracion] ASC,
	[MovNumero] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExoneracionServicios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExoneracionServicios](
	[idExoneracion] [int] NOT NULL,
	[idOrden] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[PrecioTotal] [money] NULL,
	[PrecioExonerado] [money] NULL,
	[estado] [nchar](10) NULL,
 CONSTRAINT [PK_ExoneracionServicios] PRIMARY KEY CLUSTERED 
(
	[idExoneracion] ASC,
	[idOrden] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoBienesInsumos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoBienesInsumos](
	[IdProducto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [varchar](7) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
	[NombreComercial] [varchar](100) NULL,
	[IdGrupoFarmacologico] [int] NULL,
	[IdSubGrupoFarmacologico] [int] NULL,
	[IdPartida] [int] NULL,
	[IdCentroCosto] [int] NULL,
	[PrecioCompra] [money] NULL,
	[PrecioDistribucion] [money] NULL,
	[PrecioDonacion] [money] NULL,
	[PrecioUltCompra] [money] NULL,
	[idTipoSalidaBienInsumo] [int] NOT NULL,
	[StockMinimo] [int] NULL,
	[TipoProducto] [int] NULL,
	[Denominacion] [varchar](100) NULL,
	[Concentracion] [varchar](100) NULL,
	[Presentacion] [varchar](100) NULL,
	[FormaFarmaceutica] [varchar](10) NULL,
	[MaterialEnvase] [varchar](100) NULL,
	[PresentacionEnvase] [varchar](100) NULL,
	[Fabricante] [varchar](100) NULL,
	[IdPaisOrigen] [int] NULL,
	[Petitorio] [bit] NULL,
	[TipoProductoSismed] [varchar](1) NULL,
	[CodigoSiga] [varchar](20) NULL,
	[idGrupo] [int] NULL,
	[idClase] [int] NULL,
	[idFamilia] [int] NULL,
	[idEstadoDisponibilidad] [int] NULL,
	[FormaManual] [varchar](10) NULL,
	[PresentacionManual] [int] NULL,
	[EstadoManual] [int] NULL,
	[CalculoObligatorio] [int] NULL,
	[codigoHISMINSA] [varchar](8) NULL,
 CONSTRAINT [CatalogoBienesInsumos_PK] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoBienesInsumosClase]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoBienesInsumosClase](
	[idClase] [int] NOT NULL,
	[Nombre] [varchar](120) NULL,
	[idGrupo] [nchar](10) NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_FactCatalogoBienesInsumosClase] PRIMARY KEY CLUSTERED 
(
	[idClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoBienesInsumosFamilia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoBienesInsumosFamilia](
	[idFamilia] [int] NOT NULL,
	[Nombre] [varchar](120) NULL,
	[idGrupo] [int] NULL,
	[idClase] [int] NOT NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_FactCatalogoBienesInsumosFamilia] PRIMARY KEY CLUSTERED 
(
	[idFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoBienesInsumosGrupo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoBienesInsumosGrupo](
	[idGrupo] [int] NOT NULL,
	[Nombre] [varchar](120) NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_FactCatalogoBienesInsumosGrupo] PRIMARY KEY CLUSTERED 
(
	[idGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoBienesInsumosHosp]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoBienesInsumosHosp](
	[IdPlanCatalogo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[PrecioUnitario_bkp] [money] NULL,
 CONSTRAINT [PlanesCatalogoBienesInsumos_PK] PRIMARY KEY CLUSTERED 
(
	[IdPlanCatalogo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoBienesInsumosNoCobSOAT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoBienesInsumosNoCobSOAT](
	[Codigo] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoBienesInsumosSIGA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoBienesInsumosSIGA](
	[CodigoSiga] [varchar](20) NULL,
	[nombreGrupo] [varchar](120) NULL,
	[nombreClase] [varchar](120) NULL,
	[nombreFamilia] [varchar](120) NULL,
	[idGrupo] [int] NULL,
	[idClase] [int] NULL,
	[idFamilia] [int] NULL,
	[nombreProducto] [varchar](150) NULL,
	[idProducto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoPaquete]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoPaquete](
	[idFactPaquete] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [nvarchar](10) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[FechaCreacion] [smalldatetime] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[TipoPaquete] [int] NULL,
	[IdPuntoCarga] [int] NULL,
	[Sexo] [char](2) NULL,
 CONSTRAINT [PK_FactCatalogoPaquete] PRIMARY KEY CLUSTERED 
(
	[idFactPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServicios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServicios](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[IdServicioGrupo] [int] NULL,
	[IdServicioSubGrupo] [int] NULL,
	[IdServicioSeccion] [int] NULL,
	[IdServicioSubSeccion] [int] NULL,
	[IdPartida] [int] NULL,
	[IdCentroCosto] [int] NULL,
	[CodMINSA] [varchar](20) NULL,
	[CodMINSAnoActualiza] [bit] NULL,
	[EsCPT] [int] NULL,
	[idOpcs] [int] NULL,
	[NombreMINSA] [varchar](255) NULL,
	[idEstado] [int] NULL,
	[codigoSIS] [varchar](20) NULL,
	[NoCubreSIS] [bit] NULL,
	[esReactivo] [int] NULL,
	[idGradoComplejidadOperacion] [int] NULL,
	[NombreSIS] [varchar](2000) NULL,
	[EstadoManual] [int] NULL,
	[CalculoObligatorio] [int] NULL,
 CONSTRAINT [Productos_PK] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServicios_B0905]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServicios_B0905](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[IdServicioGrupo] [int] NULL,
	[IdServicioSubGrupo] [int] NULL,
	[IdServicioSeccion] [int] NULL,
	[IdServicioSubSeccion] [int] NULL,
	[IdPartida] [int] NULL,
	[IdCentroCosto] [int] NULL,
	[CodMINSA] [varchar](20) NULL,
	[CodMINSAnoActualiza] [bit] NULL,
	[EsCPT] [int] NULL,
	[idOpcs] [int] NULL,
	[NombreMINSA] [varchar](255) NULL,
	[idEstado] [int] NULL,
	[codigoSIS] [varchar](20) NULL,
	[NoCubreSIS] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoSErviciosDescripcion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoSErviciosDescripcion](
	[IdFactCatalogoSErviciosDescripcion] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[COdCPT] [varchar](10) NULL,
	[Descripcion] [varchar](500) NULL,
	[Idfuentefinanciamiento] [int] NULL,
	[IdServicio] [int] NULL,
	[IdProductoSOAT] [int] NULL,
 CONSTRAINT [PK__FactCata__CCB4299A78BDDB72] PRIMARY KEY CLUSTERED 
(
	[IdFactCatalogoSErviciosDescripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosGrupo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosGrupo](
	[IdServicioGrupo] [int] NOT NULL,
	[Codigo] [char](10) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
 CONSTRAINT [CatalogoServiciosGrupo_PK] PRIMARY KEY CLUSTERED 
(
	[IdServicioGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosHosp]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosHosp](
	[IdFinanciamientoCatalogo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[SeUsaSinPrecio] [bit] NULL,
 CONSTRAINT [PlanesProductos_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdFinanciamientoCatalogo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosHosp_Hist1401]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosHosp_Hist1401](
	[IdFinanciamientoCatalogo] [int] IDENTITY(1,1) NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[SeUsaSinPrecio] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosPtos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosPtos](
	[idPuntoCarga] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[EsPreVenta] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosPtosBorraEmergencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosPtosBorraEmergencia](
	[idPuntoCarga] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[EsPreVenta] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosSeccion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosSeccion](
	[IdServicioSeccion] [int] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdServicioSubGrupo] [int] NULL,
 CONSTRAINT [CatalogoServiciosSeccion_PK] PRIMARY KEY CLUSTERED 
(
	[IdServicioSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosSubGrupo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosSubGrupo](
	[IdServicioSubGrupo] [int] NOT NULL,
	[Descripcion] [varchar](255) NULL,
	[IdServicioGrupo] [int] NULL,
	[Codigo] [char](10) NULL,
 CONSTRAINT [FactCatalogoServiciosSubGrupo_PK] PRIMARY KEY CLUSTERED 
(
	[IdServicioSubGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCatalogoServiciosSubSeccion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCatalogoServiciosSubSeccion](
	[IdServicioSubSeccion] [int] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdServicioSeccion] [int] NOT NULL,
 CONSTRAINT [CatalogoServiciosSubSeccion_PK] PRIMARY KEY CLUSTERED 
(
	[IdServicioSubSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factho111]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factho111](
	[IdFinanciamientoCatalogo] [int] IDENTITY(1,1) NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[SeUsaSinPrecio] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactInsumosGrupoFarmacologico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactInsumosGrupoFarmacologico](
	[IdGrupoFarmacologico] [int] NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
 CONSTRAINT [InsumosGrupoFarmacologico_PK] PRIMARY KEY CLUSTERED 
(
	[IdGrupoFarmacologico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactInsumosSubGrupoFarmacologico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactInsumosSubGrupoFarmacologico](
	[IdSubGrupoFarmacologico] [int] NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdGrupoFarmacologico] [int] NULL,
 CONSTRAINT [InsumosSubGrupoFarmacologico_PK] PRIMARY KEY CLUSTERED 
(
	[IdSubGrupoFarmacologico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOrdenesBienes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOrdenesBienes](
	[idOrden] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idPuntoCarga] [int] NOT NULL,
	[IdPaciente] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[idComprobantePago] [int] NULL,
	[MovNumero] [varchar](9) NULL,
	[MovTipo] [varchar](1) NULL,
	[idPreventa] [int] NULL,
	[ImporteExonerado] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEstadoFacturacion] [int] NOT NULL,
	[idUsuarioExonera] [int] NULL,
	[Descripcion] [varchar](200) NULL,
	[Paquete] [varchar](100) NULL,
	[DNI] [varchar](12) NULL,
	[esFraccionado] [char](1) NULL,
	[Nombres] [varchar](200) NULL,
 CONSTRAINT [PK_FactOrdenesBienes] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOrdenesBienes_borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOrdenesBienes_borrados](
	[idOrden] [int] IDENTITY(1,1) NOT NULL,
	[idPuntoCarga] [int] NOT NULL,
	[IdPaciente] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[idComprobantePago] [int] NULL,
	[MovNumero] [varchar](9) NULL,
	[MovTipo] [varchar](1) NULL,
	[idPreventa] [int] NULL,
	[ImporteExonerado] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEstadoFacturacion] [int] NOT NULL,
	[idUsuarioExonera] [int] NULL,
	[Descripcion] [varchar](200) NULL,
	[Paquete] [varchar](100) NULL,
	[DNI] [varchar](12) NULL,
	[esFraccionado] [char](1) NULL,
	[Nombres] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOrdenServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOrdenServicio](
	[IdOrden] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[IdPaciente] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdServicioPaciente] [int] NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[FechaDespacho] [datetime] NULL,
	[IdUsuarioDespacho] [int] NULL,
	[IdEstadoFacturacion] [int] NOT NULL,
	[FechaHoraRealizaCpt] [datetime] NULL,
 CONSTRAINT [PK_FactOrdenServicio] PRIMARY KEY CLUSTERED 
(
	[IdOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOrdenServicio_1353208]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOrdenServicio_1353208](
	[IdOrden] [int] IDENTITY(1,1) NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[IdPaciente] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdServicioPaciente] [int] NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[FechaDespacho] [datetime] NULL,
	[IdUsuarioDespacho] [int] NULL,
	[IdEstadoFacturacion] [int] NOT NULL,
	[FechaHoraRealizaCpt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOrdenServicio_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOrdenServicio_1587150](
	[IdOrden] [int] IDENTITY(1,1) NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[IdPaciente] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdServicioPaciente] [int] NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[FechaDespacho] [datetime] NULL,
	[IdUsuarioDespacho] [int] NULL,
	[IdEstadoFacturacion] [int] NOT NULL,
	[FechaHoraRealizaCpt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOrdenServicioPagos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOrdenServicioPagos](
	[idOrdenPago] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idComprobantePago] [int] NULL,
	[idOrden] [int] NOT NULL,
	[ImporteExonerado] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstadoFacturacion] [int] NOT NULL,
	[idUsuarioExonera] [int] NULL,
	[esFraccionado] [char](1) NULL,
 CONSTRAINT [PK_FactOrdenServicioPagos] PRIMARY KEY CLUSTERED 
(
	[idOrdenPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factordenserviciopagos_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factordenserviciopagos_1587150](
	[idOrdenPago] [int] IDENTITY(1,1) NOT NULL,
	[idComprobantePago] [int] NULL,
	[idOrden] [int] NOT NULL,
	[ImporteExonerado] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstadoFacturacion] [int] NOT NULL,
	[idUsuarioExonera] [int] NULL,
	[esFraccionado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factordenserviciopagos_borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factordenserviciopagos_borrados](
	[idOrdenPago] [int] IDENTITY(1,1) NOT NULL,
	[idComprobantePago] [int] NULL,
	[idOrden] [int] NOT NULL,
	[ImporteExonerado] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstadoFacturacion] [int] NOT NULL,
	[idUsuarioExonera] [int] NULL,
	[esFraccionado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factorh]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factorh](
	[IdFactorRh] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFactorRh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPartidasPresupuestales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPartidasPresupuestales](
	[IdPartidaPresupuestal] [int] NOT NULL,
	[Codigo] [varchar](20) NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdPartidaSeccion] [int] NULL,
 CONSTRAINT [PartidasPresupuestales_PK] PRIMARY KEY CLUSTERED 
(
	[IdPartidaPresupuestal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPartidasPresupuestalesXMes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPartidasPresupuestalesXMes](
	[Fecha] [datetime] NOT NULL,
	[idPartida] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[ImpAnulado] [money] NOT NULL,
	[impExonerado] [money] NOT NULL,
	[ImpNormal] [money] NOT NULL,
	[ImpCancelado] [money] NOT NULL,
 CONSTRAINT [PK_FactPartidasPresupuestalesXMes] PRIMARY KEY CLUSTERED 
(
	[Fecha] ASC,
	[idPartida] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPartidasSeccion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPartidasSeccion](
	[IdPartidaSeccion] [int] NOT NULL,
	[Codigo] [char](5) NOT NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [FactPartidasSeccion_PK] PRIMARY KEY CLUSTERED 
(
	[IdPartidaSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPreventa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPreventa](
	[idFactPreventa] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idServicio] [int] NOT NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[Total] [money] NOT NULL,
	[fechaCreacion] [smalldatetime] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEstadoPreventa] [int] NOT NULL,
	[idAtencion] [int] NULL,
	[idOrden] [int] NULL,
 CONSTRAINT [PK_FactPreventa] PRIMARY KEY CLUSTERED 
(
	[idFactPreventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPuntosCarga]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPuntosCarga](
	[IdPuntoCarga] [int] NOT NULL,
	[Descripcion] [char](50) NULL,
	[TipoPunto] [char](1) NULL,
	[IdUPS] [int] NULL,
	[idServicio] [int] NULL,
 CONSTRAINT [FactPuntosCarga_PK] PRIMARY KEY CLUSTERED 
(
	[IdPuntoCarga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPuntosCargaBienesInsumos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPuntosCargaBienesInsumos](
	[IdPuntoCargaBienInsumo] [int] NOT NULL,
	[IdPuntoCarga] [int] NULL,
	[IdSubGrupoFarmacologico] [int] NULL,
 CONSTRAINT [TiposDeBienesEInsumos_PK] PRIMARY KEY CLUSTERED 
(
	[IdPuntoCargaBienInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPuntosCargaServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPuntosCargaServicio](
	[IdPuntoCargaServicio] [int] NOT NULL,
	[IdPuntoCarga] [int] NULL,
	[IdServicioSubGrupo] [int] NULL,
 CONSTRAINT [FactPuntosCargaServicio_PK] PRIMARY KEY CLUSTERED 
(
	[IdPuntoCargaServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactReembolsos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactReembolsos](
	[idFactReembolso] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Anio] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[idAreaTramitaSeguro] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[SaldoInicial] [money] NOT NULL,
	[ConsumoPorReembolsar] [money] NOT NULL,
	[ReembolsoPagado] [money] NULL,
	[ReembolsoPorPagar] [money] NOT NULL,
	[SaldoFinal] [money] NOT NULL,
	[Documentos] [varchar](100) NULL,
	[idEstadoReembolso] [int] NOT NULL,
	[idTipoConsumo] [int] NOT NULL,
	[idTipoComprobante] [int] NULL,
	[idComprobantePago] [int] NULL,
	[GrabaDefinitivamente] [bit] NULL,
 CONSTRAINT [PK_FactReembolsos] PRIMARY KEY CLUSTERED 
(
	[idFactReembolso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactReembolsosDocumentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactReembolsosDocumentos](
	[idFactReembolso] [int] NOT NULL,
	[idComprobantePago] [int] NULL,
	[NroSerie] [varchar](3) NULL,
	[NroDocumento] [varchar](7) NULL,
	[MotivoAnulacion] [varchar](150) NULL,
 CONSTRAINT [PK_FactReembolsosDocumentos] PRIMARY KEY CLUSTERED 
(
	[idFactReembolso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactTrasladoReferidos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactTrasladoReferidos](
	[idFactTrasladoReferidos] [int] NOT NULL,
	[Fecha] [char](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesDevoluciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesDevoluciones](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[MovNumeroE] [varchar](9) NOT NULL,
	[CantidadAdevolver] [float] NOT NULL,
	[IdComprobantePago] [int] NULL,
	[IdEstadoDevolucion] [int] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
	[MovTipoE] [varchar](1) NULL,
 CONSTRAINT [PK_FacturacionBienesDevoluciones] PRIMARY KEY CLUSTERED 
(
	[MovNumero] ASC,
	[MovTipo] ASC,
	[idProducto] ASC,
	[MovNumeroE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesFinanciamientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesFinanciamientos](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[CantidadFinanciada] [float] NOT NULL,
	[PrecioFinanciado] [money] NOT NULL,
	[TotalFinanciado] [money] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
	[idEstadoFacturacion] [int] NULL,
 CONSTRAINT [PK_FacturacionBienesFinanciamientos] PRIMARY KEY CLUSTERED 
(
	[MovNumero] ASC,
	[MovTipo] ASC,
	[IdProducto] ASC,
	[IdTipoFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesFinanciamientos_bak]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesFinanciamientos_bak](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[CantidadFinanciada] [float] NOT NULL,
	[PrecioFinanciado] [money] NOT NULL,
	[TotalFinanciado] [money] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
	[idEstadoFacturacion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesPagos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesPagos](
	[IdOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CantidadPagar] [float] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[TotalPagar] [money] NOT NULL,
	[idComprobantePago] [int] NULL,
 CONSTRAINT [PK_FacturacionBienesPagos] PRIMARY KEY CLUSTERED 
(
	[IdOrden] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesPagos_1313612]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesPagos_1313612](
	[IdOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CantidadPagar] [float] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[TotalPagar] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesPagos_1353208]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesPagos_1353208](
	[IdOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CantidadPagar] [float] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[TotalPagar] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesPagos_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesPagos_1587150](
	[IdOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CantidadPagar] [float] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[TotalPagar] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesPagos_borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesPagos_borrados](
	[IdOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CantidadPagar] [float] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[TotalPagar] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesPagos_RIMAC]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesPagos_RIMAC](
	[IdOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CantidadPagar] [float] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[TotalPagar] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionBienesPagos_WR]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionBienesPagos_WR](
	[idOrden] [int] NULL,
	[idProducto] [int] NOT NULL,
	[cant] [float] NULL,
	[precio] [money] NOT NULL,
	[Total] [float] NULL,
	[idcomprobante] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionCatalogoPaquetes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionCatalogoPaquetes](
	[idFactPaquete] [int] NOT NULL,
	[idPuntoCarga] [int] NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Importe] [money] NOT NULL,
	[idEspecialidadServicio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionCuentasAtencion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionCuentasAtencion](
	[IdCuentaAtencion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[FechaApertura] [datetime] NOT NULL,
	[HoraApertura] [char](5) NOT NULL,
	[FechaCierre] [datetime] NULL,
	[HoraCierre] [char](5) NULL,
	[TotalExonerado] [money] NULL,
	[TotalAsegurado] [money] NULL,
	[TotalPagado] [money] NULL,
	[IdEstado] [int] NULL,
	[TotalPorPagar] [money] NULL,
	[IdUsuarioCrea] [int] NULL,
	[IdUsuarioModifica] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [CuentasAtencion_PK] PRIMARY KEY CLUSTERED 
(
	[IdCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionCuentasAtencion_20210923]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionCuentasAtencion_20210923](
	[IdCuentaAtencion] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[FechaApertura] [datetime] NOT NULL,
	[HoraApertura] [char](5) NOT NULL,
	[FechaCierre] [datetime] NULL,
	[HoraCierre] [char](5) NULL,
	[TotalExonerado] [money] NULL,
	[TotalAsegurado] [money] NULL,
	[TotalPagado] [money] NULL,
	[IdEstado] [int] NULL,
	[TotalPorPagar] [money] NULL,
	[IdUsuarioCrea] [int] NULL,
	[IdUsuarioModifica] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionCuentasAtencionExon]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionCuentasAtencionExon](
	[idCuentaAtencion] [int] NOT NULL,
	[NumeroExoneracion] [int] NOT NULL,
	[IdusuarioExonera] [int] NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_FacturacionCuentasAtencionExon] PRIMARY KEY CLUSTERED 
(
	[idCuentaAtencion] ASC,
	[NumeroExoneracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionCuentasAtencionPtos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionCuentasAtencionPtos](
	[idCuentaAtencion] [int] NOT NULL,
	[idPuntoCarga] [int] NOT NULL,
	[TotalConsumos] [money] NOT NULL,
	[TotalPagos] [money] NOT NULL,
	[TotalPagosReembolso] [money] NOT NULL,
 CONSTRAINT [PK_AtencionesFacturacionResumen] PRIMARY KEY CLUSTERED 
(
	[idCuentaAtencion] ASC,
	[idPuntoCarga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionPaquetes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionPaquetes](
	[idComprobantePago] [int] NOT NULL,
	[idOrdenPago] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idFactPaquete] [int] NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[idEspecialidadServicio] [int] NOT NULL,
	[AtencionId] [int] NULL,
 CONSTRAINT [PK_FacturacionPaquetes] PRIMARY KEY CLUSTERED 
(
	[idComprobantePago] ASC,
	[idOrdenPago] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionPreventa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionPreventa](
	[idFactPreventa] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Importe] [money] NOT NULL,
 CONSTRAINT [PK_FacturacionPreventa] PRIMARY KEY CLUSTERED 
(
	[idFactPreventa] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionReembolsos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionReembolsos](
	[idFactReembolso] [int] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[ConsumoPorReembolsar] [money] NOT NULL,
	[ReembolsoPagado] [money] NULL,
	[ReembolsoPorPagar] [money] NOT NULL,
	[ReembolsoPagadoFarmacia] [money] NULL,
	[ReembolsoPagadoServicio] [money] NULL,
	[IdReembolsosAnteriores] [varchar](100) NULL,
	[idDiagnostico] [int] NULL,
	[NroReferenciaDestino] [varchar](20) NULL,
 CONSTRAINT [PK_FacturacionReembolsos] PRIMARY KEY CLUSTERED 
(
	[idFactReembolso] ASC,
	[idCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioDespacho]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioDespacho](
	[idOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idReceta] [int] NULL,
	[idDiagnostico] [int] NULL,
	[UsuarioRealizaPrueba] [int] NULL,
	[FechaResultado] [datetime] NULL,
	[Dosis] [int] NULL,
	[nro] [int] NULL,
	[IndMuestraLlego] [bit] NULL,
	[ObsLlego] [varchar](200) NULL,
	[FechaLLegoMuestra] [datetime] NULL,
	[IdusuarioLlegoMuestra] [int] NULL,
	[IdProductoHomologado] [int] NULL,
 CONSTRAINT [PK_FacturacionServicioDespacho] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioDespacho_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioDespacho_1587150](
	[idOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idReceta] [int] NULL,
	[idDiagnostico] [int] NULL,
	[UsuarioRealizaPrueba] [int] NULL,
	[FechaResultado] [datetime] NULL,
	[Dosis] [int] NULL,
	[nro] [int] NULL,
	[IndMuestraLlego] [bit] NULL,
	[ObsLlego] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioDespacho_bak]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioDespacho_bak](
	[idOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idReceta] [int] NULL,
	[idDiagnostico] [int] NULL,
	[UsuarioRealizaPrueba] [int] NULL,
	[FechaResultado] [datetime] NULL,
	[Dosis] [int] NULL,
	[nro] [int] NULL,
	[idMigracion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioDespacho_borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioDespacho_borrados](
	[idOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idReceta] [int] NULL,
	[idDiagnostico] [int] NULL,
	[UsuarioRealizaPrueba] [int] NULL,
	[FechaResultado] [datetime] NULL,
	[Dosis] [int] NULL,
	[nro] [int] NULL,
	[IndMuestraLlego] [bit] NULL,
	[ObsLlego] [varchar](200) NULL,
	[FechaLLegoMuestra] [datetime] NULL,
	[idUsuarioLlegoMuestra] [int] NULL,
	[IdProductoHomologado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioDespacho_RIMAC]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioDespacho_RIMAC](
	[idOrden] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[labConfHIS] [varchar](3) NULL,
	[GrupoHIS] [int] NULL,
	[SubGrupoHIS] [int] NULL,
	[idReceta] [int] NULL,
	[idDiagnostico] [int] NULL,
	[UsuarioRealizaPrueba] [int] NULL,
	[FechaResultado] [datetime] NULL,
	[Dosis] [int] NULL,
	[nro] [int] NULL,
	[IndMuestraLlego] [bit] NULL,
	[ObsLlego] [varchar](200) NULL,
	[FechaLLegoMuestra] [datetime] NULL,
	[IdusuarioLlegoMuestra] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioDevoluciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioDevoluciones](
	[idOrden] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[CantidadAdevolver] [int] NOT NULL,
	[IdComprobantePago] [int] NOT NULL,
	[idEstadoDevolucion] [int] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
 CONSTRAINT [PK_FacturacionServicioDevoluciones] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioFinanciamiento_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioFinanciamiento_1587150](
	[idOrden] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[CantidadFinanciada] [int] NOT NULL,
	[PrecioFinanciado] [money] NOT NULL,
	[TotalFinanciado] [money] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
	[idEstadoFacturacion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioFinanciamientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioFinanciamientos](
	[idOrden] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[CantidadFinanciada] [int] NOT NULL,
	[PrecioFinanciado] [money] NOT NULL,
	[TotalFinanciado] [money] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
	[idEstadoFacturacion] [int] NULL,
	[IdProductoHomologado] [int] NULL,
 CONSTRAINT [PK_FacturacionServicioFinanciamientos] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC,
	[idProducto] ASC,
	[IdTipoFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioFinanciamientos_bak]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioFinanciamientos_bak](
	[idOrden] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[CantidadFinanciada] [int] NOT NULL,
	[PrecioFinanciado] [money] NOT NULL,
	[TotalFinanciado] [money] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
	[idEstadoFacturacion] [int] NULL,
	[idMigracion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioFinanciamientos_Borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioFinanciamientos_Borrados](
	[idOrden] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[IdTipoFinanciamiento] [int] NOT NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[CantidadFinanciada] [int] NOT NULL,
	[PrecioFinanciado] [money] NOT NULL,
	[TotalFinanciado] [money] NOT NULL,
	[FechaAutoriza] [datetime] NOT NULL,
	[IdUsuarioAutoriza] [int] NOT NULL,
	[idEstadoFacturacion] [int] NULL,
	[idProductoHomologado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioFinanciamientos2]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioFinanciamientos2](
	[idOrden] [varchar](50) NULL,
	[idProducto] [varchar](50) NULL,
	[IdTipoFinanciamiento] [varchar](50) NULL,
	[idFuenteFinanciamiento] [varchar](50) NULL,
	[CantidadFinanciada] [varchar](50) NULL,
	[PrecioFinanciado] [varchar](50) NULL,
	[TotalFinanciado] [varchar](50) NULL,
	[FechaAutoriza] [varchar](50) NULL,
	[IdUsuarioAutoriza] [varchar](50) NULL,
	[idEstadoFacturacion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionServicioPagos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionServicioPagos](
	[idOrdenPago] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[idComprobantePago] [int] NULL,
 CONSTRAINT [PK_FacturacionPagos] PRIMARY KEY CLUSTERED 
(
	[idOrdenPago] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturacionServicioPagos_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturacionServicioPagos_1587150](
	[idOrdenPago] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturacionServicioPagos_Borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturacionServicioPagos_Borrados](
	[idOrdenPago] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturacionServicioPagos_RIMAC]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturacionServicioPagos_RIMAC](
	[idOrdenPago] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[idComprobantePago] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionTrasladoReferidos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionTrasladoReferidos](
	[idFactTrasladoReferidos] [int] NOT NULL,
	[idCuenta] [int] NOT NULL,
	[codigoSeguro] [varchar](20) NULL,
	[Beneficio] [varchar](1) NULL,
	[idTipoTransporte] [int] NULL,
	[idTipoViaje] [int] NULL,
	[FechaSalida] [datetime] NULL,
	[NroFamiliarAcompania] [int] NULL,
	[NroPersonalAcompania] [int] NULL,
	[KmDistancia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturacionTrasladoReferidosServicios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturacionTrasladoReferidosServicios](
	[idFactTrasladoReferidos] [int] NOT NULL,
	[idCuenta] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NULL,
	[precio] [money] NULL,
	[Total] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAR]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAR](
	[ANHO] [int] NOT NULL,
	[MES] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaA](
	[idFichaA] [int] IDENTITY(1,1) NOT NULL,
	[idCuenta] [int] NULL,
	[idVisita] [int] NULL,
	[motivo_apertura] [varchar](1500) NULL,
	[alergias] [int] NULL,
	[alergias_espe] [varchar](200) NULL,
	[ram] [int] NULL,
	[ram_espe] [varchar](200) NULL,
	[relato_cronologico] [varchar](1500) NULL,
	[antecedentes] [varchar](1000) NULL,
	[idUsuarioregistro] [int] NULL,
	[fecharegistro] [datetime] NULL,
	[idUsuarioedit] [int] NULL,
	[fechaedit] [datetime] NULL,
	[fecha_inicio] [varchar](15) NULL,
	[fechaServicio] [varchar](20) NULL,
	[antePatologicos] [varchar](2000) NULL,
	[exaFisico] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaAEstiloVida]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaAEstiloVida](
	[idEstiloVida] [int] IDENTITY(1,1) NOT NULL,
	[idFichaA] [int] NULL,
	[dieta] [int] NULL,
	[dieta_espe] [varchar](200) NULL,
	[dieta_frecu] [varchar](200) NULL,
	[acti_fisica] [int] NULL,
	[acti_fisica_espe] [varchar](200) NULL,
	[acti_fisica_frecu] [varchar](200) NULL,
	[fecha_registro] [date] NULL,
	[usuario_registro] [int] NULL,
	[fecha_actualiza] [date] NULL,
	[usuario_actualiza] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstiloVida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaAHabitos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaAHabitos](
	[idHabitos] [int] IDENTITY(1,1) NOT NULL,
	[idFichaA] [int] NULL,
	[tabaco] [int] NULL,
	[tabaco_espe] [varchar](200) NULL,
	[tabaco_frecu] [varchar](200) NULL,
	[alchool] [int] NULL,
	[alchool_espe] [varchar](200) NULL,
	[alchool_frecu] [varchar](200) NULL,
	[cafe] [int] NULL,
	[cafe_espe] [varchar](200) NULL,
	[cafe_frecu] [varchar](200) NULL,
	[otros] [varchar](200) NULL,
	[fecha_registro] [date] NULL,
	[usuario_registro] [int] NULL,
	[fecha_actualiza] [date] NULL,
	[usuario_actualiza] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHabitos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaAMedicamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaAMedicamentos](
	[idMedicamentoFichaA] [int] IDENTITY(1,1) NOT NULL,
	[idFichaA] [int] NULL,
	[idMedicamento] [int] NULL,
	[dosis] [varchar](25) NULL,
	[frecuencia] [varchar](45) NULL,
	[presentacion] [varchar](45) NULL,
	[motivo] [varchar](250) NULL,
	[fechaInicio] [varchar](18) NULL,
	[fechaSuspencion] [varchar](18) NULL,
	[fechaReinicio] [varchar](18) NULL,
	[fecha_registro] [date] NULL,
	[usuario_registro] [int] NULL,
	[fecha_actualiza] [date] NULL,
	[usuario_actualiza] [int] NULL,
	[nomreMedicamento] [varchar](200) NULL,
	[tipo] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedicamentoFichaA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaB]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaB](
	[idFichaB] [int] IDENTITY(1,1) NOT NULL,
	[idCuenta] [int] NULL,
	[idVisita] [int] NULL,
	[idMedicamento] [int] NULL,
	[dosis] [varchar](35) NULL,
	[frecuencia] [varchar](35) NULL,
	[via] [varchar](35) NULL,
	[fecha_inicio] [varchar](15) NULL,
	[problemas_Salud] [varchar](350) NULL,
	[estado] [varchar](25) NULL,
	[ps] [varchar](15) NULL,
	[rpm] [varchar](35) NULL,
	[pr] [varchar](35) NULL,
	[idUsuarioregistro] [int] NULL,
	[fecharegistro] [datetime] NULL,
	[idUsuarioedit] [int] NULL,
	[fechaedit] [datetime] NULL,
	[nombreMedicamento] [varchar](250) NULL,
	[tipo] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaC]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaC](
	[idFichaC] [int] IDENTITY(1,1) NOT NULL,
	[idCuenta] [int] NULL,
	[idVisita] [int] NULL,
	[idExamen] [int] NULL,
	[fecha] [varchar](15) NULL,
	[resultado] [varchar](350) NULL,
	[idUsuarioregistro] [int] NULL,
	[fecharegistro] [datetime] NULL,
	[idUsuarioedit] [int] NULL,
	[fechaedit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaD]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaD](
	[idFichaD] [int] IDENTITY(1,1) NOT NULL,
	[idCuenta] [int] NULL,
	[idVisita] [int] NULL,
	[pro_dereiva] [varchar](350) NULL,
	[pro_dereiva_especifique] [varchar](350) NULL,
	[cardio] [varchar](350) NULL,
	[digestivo] [varchar](350) NULL,
	[locomotor] [varchar](350) NULL,
	[metabolico] [varchar](350) NULL,
	[nervioso] [varchar](350) NULL,
	[ocular] [varchar](350) NULL,
	[tegumentario] [varchar](350) NULL,
	[frecuentes] [varchar](350) NULL,
	[otros] [varchar](350) NULL,
	[error_preescripcion] [varchar](350) NULL,
	[error_transcriocion] [varchar](350) NULL,
	[error_dispensacion] [varchar](350) NULL,
	[error_administracion] [varchar](350) NULL,
	[erro_uso] [varchar](350) NULL,
	[error_otroas_causas] [varchar](350) NULL,
	[clasificacion_prm] [varchar](350) NULL,
	[situacion_problema] [varchar](350) NULL,
	[intervension_dirigido] [varchar](350) NULL,
	[intervension_dirigido_especificar] [varchar](350) NULL,
	[intervension_cantidad] [varchar](350) NULL,
	[intervension_estrategia] [varchar](350) NULL,
	[intervension_educar] [varchar](350) NULL,
	[intervension_otros] [varchar](350) NULL,
	[intervension] [varchar](450) NULL,
	[bibliografico] [varchar](450) NULL,
	[intervension_estado] [varchar](350) NULL,
	[idUsuarioregistro] [int] NULL,
	[fecharegistro] [datetime] NULL,
	[idUsuarioedit] [int] NULL,
	[fechaedit] [datetime] NULL,
	[idAceptarIntervension] [int] NULL,
	[fechaIntervension] [varchar](20) NULL,
	[IntervensionResultado] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaDMedicamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaDMedicamentos](
	[idMedicamentoFichaD] [int] IDENTITY(1,1) NOT NULL,
	[idFichaD] [int] NULL,
	[tipo] [varchar](25) NULL,
	[idMedicamento] [int] NULL,
	[dosis] [varchar](25) NULL,
	[ff] [varchar](45) NULL,
	[via] [varchar](45) NULL,
	[motivo] [varchar](250) NULL,
	[fechaInicio] [varchar](18) NULL,
	[fechaSuspencion] [varchar](18) NULL,
	[fechaReinicio] [varchar](18) NULL,
	[fecha_registro] [date] NULL,
	[usuario_registro] [int] NULL,
	[fecha_actualiza] [date] NULL,
	[usuario_actualiza] [int] NULL,
	[nombreMedicamento] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedicamentoFichaD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaSOAP]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaSOAP](
	[idFichaSoap] [int] IDENTITY(1,1) NOT NULL,
	[idCuenta] [int] NULL,
	[idVisita] [int] NULL,
	[subjetivosoap] [varchar](2000) NULL,
	[ojetivosoap] [varchar](2000) NULL,
	[analisissoap] [varchar](2000) NULL,
	[plansoap] [varchar](2000) NULL,
	[objetivo_terapeutica] [varchar](2000) NULL,
	[resultado] [varchar](2000) NULL,
	[acciones] [varchar](2000) NULL,
	[revisionplan] [varchar](2000) NULL,
	[idUsuarioregistro] [int] NULL,
	[fecharegistro] [datetime] NULL,
	[idUsuarioedit] [int] NULL,
	[fechaedit] [datetime] NULL,
	[prmsoap] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaSoap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaceuticaFichaSOAPMedicamento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaceuticaFichaSOAPMedicamento](
	[idFichaMedicamento] [int] IDENTITY(1,1) NOT NULL,
	[idFicha] [int] NULL,
	[idMedicamento] [int] NULL,
	[indicacion] [varchar](350) NULL,
	[dosis] [varchar](350) NULL,
	[prm] [varchar](15) NULL,
	[pr] [varchar](5) NULL,
	[idUsuarioregistro] [int] NULL,
	[fecharegistro] [datetime] NULL,
	[idUsuarioedit] [int] NULL,
	[fechaedit] [datetime] NULL,
	[tipo] [varchar](20) NULL,
	[nombreMedicamento] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaMedicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaciaSaldo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaciaSaldo](
	[Id_historico] [int] NULL,
	[IdAlmacen] [int] NULL,
	[IdProducto] [int] NULL,
	[Precio] [money] NULL,
	[Codigo] [varchar](7) NULL,
	[Nombre] [varchar](300) NULL,
	[Cantidad] [money] NULL,
	[StockMinimo] [int] NULL,
	[Fecha] [date] NULL,
	[Lote] [varchar](50) NULL,
	[Fvenc] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmaciaSaldoXFarmacia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmaciaSaldoXFarmacia](
	[id_historico] [varchar](50) NOT NULL,
	[idAlmacen] [varchar](50) NOT NULL,
	[idProducto] [varchar](50) NOT NULL,
	[Precio] [varchar](50) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Nombre] [varchar](255) NULL,
	[Cantidad] [varchar](50) NULL,
	[stockMinimo] [varchar](50) NULL,
	[fecha] [date] NULL,
	[Lote] [varchar](50) NULL,
	[Fvenc] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmaciaServicio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmaciaServicio](
	[IdServicio] [int] NOT NULL,
	[idalmacen] [int] NOT NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_farmaciaServicio] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC,
	[idalmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmAlmacen]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmAlmacen](
	[idAlmacen] [int] NOT NULL,
	[descripcion] [varchar](80) NOT NULL,
	[idTipoLocales] [varchar](1) NOT NULL,
	[idTipoSuministro] [varchar](2) NULL,
	[idEstado] [int] NOT NULL,
	[codigoSISMED] [varchar](11) NULL,
	[regenerarDias] [varchar](7) NULL,
	[regenerarHora] [varchar](5) NULL,
	[regenerarEstado] [varchar](7) NULL,
 CONSTRAINT [PK_farmMalmacen] PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmAlmacenWS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmAlmacenWS](
	[idCorrelativo] [int] NOT NULL,
	[idAlmacen] [int] NOT NULL,
 CONSTRAINT [PK_farmAlmacenWS] PRIMARY KEY CLUSTERED 
(
	[idCorrelativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmComponente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmComponente](
	[idComponente] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Componente] [varchar](2) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
 CONSTRAINT [PK_farmComponente] PRIMARY KEY CLUSTERED 
(
	[idComponente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmComponentesEspecialidades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmComponentesEspecialidades](
	[idFarmComponente] [int] IDENTITY(1,1) NOT NULL,
	[idEspecialidad] [int] NOT NULL,
	[idComponente] [int] NOT NULL,
	[idSubComponente] [int] NOT NULL,
	[idEstado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFarmComponente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmComponenteSub]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmComponenteSub](
	[idSubComponente] [int] NOT NULL,
	[idComponente] [int] NOT NULL,
	[componente] [varchar](2) NULL,
	[subComponente] [varchar](2) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Diagnostico] [varchar](20) NULL,
	[TipoProductoSismed] [varchar](1) NULL,
 CONSTRAINT [PK_farmComponenteSub] PRIMARY KEY CLUSTERED 
(
	[idSubComponente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmCorrelativoActaRecepcion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmCorrelativoActaRecepcion](
	[Correlativo] [varchar](100) NULL,
	[anio] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmDiagnosticoXProducto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmDiagnosticoXProducto](
	[MovNumero] [varchar](9) NOT NULL,
	[idProducto] [int] NOT NULL,
	[idDiagnostico] [int] NOT NULL,
	[Estado] [char](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmDocumentacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmDocumentacion](
	[IdFarmDocumentacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[Tipo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFarmDocumentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmEstadosInventario]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmEstadosInventario](
	[idEstadoInventario] [int] NOT NULL,
	[Estado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_farmEstadosInventario] PRIMARY KEY CLUSTERED 
(
	[idEstadoInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmEstadosMovimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmEstadosMovimientos](
	[idEstadoMovimiento] [int] NOT NULL,
	[Estado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_farmEstadosMovimientos] PRIMARY KEY CLUSTERED 
(
	[idEstadoMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmEstadosPreventa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmEstadosPreventa](
	[idEstadoPreventa] [int] NOT NULL,
	[Estado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_farmEstadosPreventa] PRIMARY KEY CLUSTERED 
(
	[idEstadoPreventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmHistPrecio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmHistPrecio](
	[idHistPrecio] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idProducto] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[PrecioCompra] [money] NOT NULL,
	[PrecioDistribucion] [money] NOT NULL,
	[PrecioVenta] [money] NOT NULL,
	[PrecioDonacion] [money] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_farmHistPrecio] PRIMARY KEY CLUSTERED 
(
	[idHistPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmInventario]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmInventario](
	[idInventario] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[numeroInventario] [varchar](4) NULL,
	[FechaCierre] [datetime] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[idEstadoInventario] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idTipoInventario] [int] NULL,
 CONSTRAINT [PK_farmInventario] PRIMARY KEY CLUSTERED 
(
	[idInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmInventarioCabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmInventarioCabecera](
	[idInventario] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[CantidadSaldo] [int] NULL,
	[CantidadFaltante] [int] NULL,
	[CantidadSobrante] [int] NULL,
 CONSTRAINT [PK_farmInventarioCabecera] PRIMARY KEY CLUSTERED 
(
	[idInventario] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmInventarioDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmInventarioDetalle](
	[idInventario] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Lote] [varchar](15) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[RegistroSanitario] [varchar](50) NULL,
	[CantidadSaldo] [int] NULL,
	[CantidadFaltante] [int] NULL,
	[CantidadSobrante] [int] NULL,
	[EsHistoricoSaldo] [int] NULL,
 CONSTRAINT [PK_farmInventarioDetalle] PRIMARY KEY CLUSTERED 
(
	[idInventario] ASC,
	[idProducto] ASC,
	[Lote] ASC,
	[FechaVencimiento] ASC,
	[IdTipoSalidaBienInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMotivoAnulacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMotivoAnulacion](
	[idMotivoAnulacion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CodigoMINSA] [varchar](2) NOT NULL,
	[Motivo] [char](150) NOT NULL,
 CONSTRAINT [PK_farmMotivoAnulacion] PRIMARY KEY CLUSTERED 
(
	[idMotivoAnulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmMotivosDevolucion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmMotivosDevolucion](
	[IdMotivoDevolucion] [int] NULL,
	[Descripcion] [varchar](250) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimiento](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idAlmacenOrigen] [int] NOT NULL,
	[idAlmacenDestino] [int] NOT NULL,
	[idTipoConcepto] [int] NOT NULL,
	[DocumentoIdtipo] [int] NOT NULL,
	[DocumentoNumero] [varchar](20) NULL,
	[Observaciones] [varchar](100) NULL,
	[Total] [money] NOT NULL,
	[idMotivoAnulacion] [int] NULL,
	[fechaAnulacion] [datetime] NULL,
	[idUsuarioAnulacion] [int] NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEstadoMovimiento] [int] NOT NULL,
	[idEspecialidadDestino] [int] NULL,
	[IdMotivoDevolucion] [int] NULL,
	[IdOrigenDevolucion] [int] NULL,
	[indValidado] [int] NULL,
	[idEmpleadoValida] [int] NULL,
 CONSTRAINT [PK_farmTmovim] PRIMARY KEY CLUSTERED 
(
	[MovNumero] ASC,
	[MovTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoDetalle](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[Lote] [varchar](15) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL,
	[Item] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[RegistroSanitario] [varchar](50) NULL,
	[DocumentoNumero] [varchar](20) NULL,
	[NroActa] [varchar](25) NULL,
	[FechaActa] [date] NULL,
	[Concentracion] [varchar](100) NULL,
	[Fabricante] [varchar](100) NULL,
	[Presentacion] [varchar](100) NULL,
	[Condicion] [varchar](100) NULL,
 CONSTRAINT [PK_farmTmovimDet] PRIMARY KEY CLUSTERED 
(
	[MovNumero] ASC,
	[MovTipo] ASC,
	[idProducto] ASC,
	[Lote] ASC,
	[FechaVencimiento] ASC,
	[IdTipoSalidaBienInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoDetalleCorreccion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoDetalleCorreccion](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[Lote] [varchar](15) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL,
	[Item] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[RegistroSanitario] [varchar](50) NULL,
	[DocumentoNumero] [varchar](20) NULL,
	[NroActa] [varchar](25) NULL,
	[FechaActa] [date] NULL,
	[Concentracion] [varchar](100) NULL,
	[Fabricante] [varchar](100) NULL,
	[Presentacion] [varchar](100) NULL,
	[Condicion] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoDetalleDocumentacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoDetalleDocumentacion](
	[MovNumero] [varchar](10) NULL,
	[IdFarmDocumentacion] [int] NULL,
	[SI] [int] NULL,
	[NO] [int] NULL,
	[Observacion] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmMovimientoDonaciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmMovimientoDonaciones](
	[movNumero] [varchar](9) NOT NULL,
	[movTipo] [varchar](1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idPrescriptorReceta] [int] NULL,
	[idCoordinadorServicioSocial] [int] NOT NULL,
	[idDiagnostico] [int] NULL,
 CONSTRAINT [PK_FarmMovimientoDonaciones] PRIMARY KEY CLUSTERED 
(
	[movNumero] ASC,
	[movTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoNotaIngreso]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoNotaIngreso](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[DocumentoFechaRecepcion] [datetime] NULL,
	[OrigenIdTipo] [int] NULL,
	[OrigenNumero] [varchar](20) NULL,
	[OrigenFecha] [datetime] NULL,
	[idProveedor] [int] NULL,
	[idTipoCompra] [int] NULL,
	[idTipoProceso] [int] NULL,
	[NumeroProceso] [varchar](50) NULL,
	[idPaciente] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idComprobantePago] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[idUsuarioModifica] [int] NULL,
 CONSTRAINT [PK_farmMovimientoAlmacen] PRIMARY KEY CLUSTERED 
(
	[MovNumero] ASC,
	[MovTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoProgramas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoProgramas](
	[movNumero] [varchar](9) NOT NULL,
	[movTipo] [varchar](1) NOT NULL,
	[idCoordinador] [int] NOT NULL,
	[idPrescriptor] [char](10) NOT NULL,
	[idDiagnostico] [int] NOT NULL,
	[idPaciente] [int] NULL,
	[idComponente] [int] NOT NULL,
	[idSubComponente] [int] NOT NULL,
	[FechaHoraPrescribe] [datetime] NULL,
 CONSTRAINT [PK_farmMovimientoProgramas] PRIMARY KEY CLUSTERED 
(
	[movNumero] ASC,
	[movTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoVentas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoVentas](
	[movNumero] [varchar](9) NOT NULL,
	[movTipo] [varchar](1) NOT NULL,
	[tipoVenta] [varchar](1) NOT NULL,
	[idPreVenta] [int] NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[idPrescriptor] [int] NULL,
	[idTipoReceta] [int] NOT NULL,
	[idDiagnostico] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[IdServicioPaciente] [int] NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idPaciente] [int] NULL,
	[FechaHoraPrescribe] [datetime] NULL,
	[IdPaquete] [int] NULL,
	[idReceta] [int] NULL,
 CONSTRAINT [PK_farmMovimientoVentas] PRIMARY KEY CLUSTERED 
(
	[movNumero] ASC,
	[movTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoVentas_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoVentas_1587150](
	[movNumero] [varchar](9) NOT NULL,
	[movTipo] [varchar](1) NOT NULL,
	[tipoVenta] [varchar](1) NOT NULL,
	[idPreVenta] [int] NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[idPrescriptor] [int] NULL,
	[idTipoReceta] [int] NOT NULL,
	[idDiagnostico] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[IdServicioPaciente] [int] NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idPaciente] [int] NULL,
	[FechaHoraPrescribe] [datetime] NULL,
	[IdPaquete] [int] NULL,
	[idReceta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoVentasDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoVentasDetalle](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [float] NOT NULL,
	[precio] [money] NOT NULL,
	[total] [money] NOT NULL,
 CONSTRAINT [PK_farmMovimientoVentasDetalle] PRIMARY KEY CLUSTERED 
(
	[MovNumero] ASC,
	[MovTipo] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoVentasDetalle_1377667]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoVentasDetalle_1377667](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [float] NOT NULL,
	[precio] [money] NOT NULL,
	[total] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoVentasDetalle_1587150]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoVentasDetalle_1587150](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [float] NOT NULL,
	[precio] [money] NOT NULL,
	[total] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmMovimientoVentasDetalle_RIMAC]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmMovimientoVentasDetalle_RIMAC](
	[MovNumero] [varchar](9) NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [float] NOT NULL,
	[precio] [money] NOT NULL,
	[total] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmMovNumeroCorrelativo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmMovNumeroCorrelativo](
	[MovNumero] [varchar](20) NULL,
	[Correlativo] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmPreVenta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmPreVenta](
	[idPreventa] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idVendedor] [int] NOT NULL,
	[idPaciente] [int] NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[Total] [money] NOT NULL,
	[idDiagnostico] [int] NULL,
	[idTipoReceta] [int] NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[idPrescriptor] [int] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[HoraCreacion] [varchar](5) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[idUsuarioModifica] [int] NULL,
	[idEstadoPreventa] [int] NOT NULL,
	[FechaHoraPrescribe] [datetime] NULL,
 CONSTRAINT [PK_farmTventa] PRIMARY KEY CLUSTERED 
(
	[idPreventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmPreVentaDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmPreVentaDetalle](
	[idPreventa] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[item] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Importe] [money] NOT NULL,
 CONSTRAINT [PK_farmTpreVtaDe] PRIMARY KEY CLUSTERED 
(
	[idPreventa] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmRelMod]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmRelMod](
	[TipoAlmacen] [varchar](1) NOT NULL,
	[TipoMov] [varchar](1) NOT NULL,
	[TipoSuministro] [varchar](2) NOT NULL,
	[ConceptoCodigo] [varchar](2) NOT NULL,
	[DocumentoId] [int] NOT NULL,
	[DocumentoCodigo] [varchar](2) NOT NULL,
	[DocumentoEsAutomatico] [varchar](1) NOT NULL,
	[DocumentoUltimoNumero] [varchar](20) NOT NULL,
	[NiDocumentoOrigenId] [int] NOT NULL,
	[NiDocumentoOrigenCodigo] [varchar](2) NOT NULL,
	[NiDocumentoOrigenEsAutomatico] [varchar](1) NOT NULL,
	[NiDocumentoOrigenUltimoNumero] [varchar](20) NOT NULL,
	[NiFiltroAlmacenOrigen] [varchar](200) NULL,
	[NiEsCompra] [bit] NOT NULL,
	[NiEsDevolucionPaciente] [bit] NOT NULL,
	[NsFiltroAlmacenDestino] [varchar](200) NULL,
	[TipoPrecioParaNiNs] [int] NOT NULL,
	[MuestraLoteParaDespachoNS] [varchar](1) NULL,
	[NiFiltroAlmacenOrigenCS] [varchar](200) NULL,
	[NsFiltroAlmacenDestinoCS] [varchar](200) NULL,
 CONSTRAINT [PK_farmRelMod1] PRIMARY KEY CLUSTERED 
(
	[TipoAlmacen] ASC,
	[TipoMov] ASC,
	[TipoSuministro] ASC,
	[ConceptoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmSaldo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmSaldo](
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL,
	[cantidad] [money] NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_farmMstockAlm] PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC,
	[idProducto] ASC,
	[IdTipoSalidaBienInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmSaldo_alm]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmSaldo_alm](
	[idAlmacen] [varchar](50) NULL,
	[idProducto] [varchar](50) NULL,
	[IdTipoSalidaBienInsumo] [varchar](50) NULL,
	[cantidad] [varchar](50) NULL,
	[Precio] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmSaldoDetallado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmSaldoDetallado](
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Lote] [varchar](15) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL,
	[Cantidad] [money] NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_farmMsaldoXlote] PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC,
	[idProducto] ASC,
	[Lote] ASC,
	[FechaVencimiento] ASC,
	[IdTipoSalidaBienInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmSaldoDetalladoFinMes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmSaldoDetalladoFinMes](
	[Fecha] [datetime] NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Precio] [money] NULL,
	[Codigo] [varchar](7) NULL,
	[Nombre] [varchar](300) NULL,
	[Cantidad] [money] NULL,
	[StockMinimo] [int] NULL,
	[Lote] [varchar](15) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[CantidadLote] [money] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmSaldoFinMes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmSaldoFinMes](
	[Fecha] [datetime] NOT NULL,
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Codigo] [varchar](7) NULL,
	[Nombre] [varchar](300) NULL,
	[cantidad] [money] NOT NULL,
	[StockMinimo] [int] NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmSaldoMensual]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmSaldoMensual](
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL,
	[SaldoFecha] [datetime] NOT NULL,
	[Saldo] [int] NOT NULL,
 CONSTRAINT [PK_farmSaldoDetalladoMes] PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC,
	[idProducto] ASC,
	[SaldoFecha] ASC,
	[IdTipoSalidaBienInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmSaldoMensualDetallado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmSaldoMensualDetallado](
	[idAlmacen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Lote] [varchar](15) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[IdTipoSalidaBienInsumo] [int] NOT NULL,
	[SaldoFecha] [datetime] NOT NULL,
	[Saldo] [int] NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_FarmSaldoMensualDetallado] PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC,
	[idProducto] ASC,
	[Lote] ASC,
	[FechaVencimiento] ASC,
	[IdTipoSalidaBienInsumo] ASC,
	[SaldoFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoCompra]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoCompra](
	[idTipoCompra] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[codigoMINSA] [varchar](2) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_farmTipoCompra] PRIMARY KEY CLUSTERED 
(
	[idTipoCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoConceptos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoConceptos](
	[idTipoConcepto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[codigoMINSA] [varchar](2) NOT NULL,
	[Concepto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_farmTipoConceptos] PRIMARY KEY CLUSTERED 
(
	[idTipoConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoDocumentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoDocumentos](
	[idTipoDocumento] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CodigoMINSA] [varchar](2) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](20) NOT NULL,
	[Correlativo] [int] NOT NULL,
 CONSTRAINT [PK_farmMtipoDocu] PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoInventario]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoInventario](
	[idTipoInventario] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[TipoInventarioSismed] [varchar](1) NOT NULL,
 CONSTRAINT [PK_farmTipoInventario] PRIMARY KEY CLUSTERED 
(
	[idTipoInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoLocal]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoLocal](
	[idTipoLocal] [varchar](1) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_farmTipoAlmacen] PRIMARY KEY CLUSTERED 
(
	[idTipoLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoProceso]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoProceso](
	[idTipoProceso] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[codigoMINSA] [varchar](2) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_farmTipoProceso] PRIMARY KEY CLUSTERED 
(
	[idTipoProceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoProductosSismed]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoProductosSismed](
	[TipoProductoSismed] [varchar](1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_farmTipoSalidaSismed] PRIMARY KEY CLUSTERED 
(
	[TipoProductoSismed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoReceta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoReceta](
	[idTipoReceta] [int] NOT NULL,
	[tipoReceta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_farmTipoReceta] PRIMARY KEY CLUSTERED 
(
	[idTipoReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoSalidaBienInsumo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoSalidaBienInsumo](
	[idTipoSalidaBienInsumo] [int] NOT NULL,
	[tipo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_farmTipoBienInsumo] PRIMARY KEY CLUSTERED 
(
	[idTipoSalidaBienInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[farmTipoSuministro]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[farmTipoSuministro](
	[idTipoSuministro] [varchar](2) NOT NULL,
	[descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_farmTipoSuministro] PRIMARY KEY CLUSTERED 
(
	[idTipoSuministro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fechafallecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fechafallecimiento](
	[IdcuentaAtencion] [int] NULL,
	[FechaFallecimiento] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_atencion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_atencion](
	[id_atencion] [int] IDENTITY(1,1) NOT NULL,
	[disa] [varchar](3) NOT NULL,
	[lote] [varchar](2) NOT NULL,
	[numero] [varchar](8) NOT NULL,
	[udr] [varchar](3) NOT NULL,
	[ipress_realiza_atencion] [varchar](8) NOT NULL,
	[categoria_ipress_realiza_prestacion] [varchar](2) NOT NULL,
	[nivel_ipress_realiza_prestacion] [varchar](2) NOT NULL,
	[punto_digitacion] [int] NULL,
	[es_reconsideracion] [varchar](1) NOT NULL,
	[disa_reconsideracion] [varchar](3) NULL,
	[lote_reconsideracion] [varchar](2) NULL,
	[numero_reconsideracion] [varchar](8) NULL,
	[id_convenio] [int] NOT NULL,
	[componente_asegurado_sis] [int] NULL,
	[disa_formato_asegurado_sis] [varchar](3) NULL,
	[lote_formato_asegurado_sis] [varchar](2) NOT NULL,
	[numero_formato_asegurado_sis] [varchar](9) NOT NULL,
	[numero_correlativo_inscripcion_o_afiliacion] [int] NULL,
	[tipo_tabla_contrato_asegurado_sis] [varchar](1) NOT NULL,
	[identificador_formato_contrato_asegurado_sis] [int] NOT NULL,
	[plan_cobertura] [int] NULL,
	[grupo_poblacional] [varchar](2) NULL,
	[tipo_documento_identidad_asegurado] [int] NOT NULL,
	[numero_documento_identidad_asegurado] [varchar](10) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[primer_nombre] [varchar](35) NOT NULL,
	[otros_nombres] [varchar](35) NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[sexo] [int] NOT NULL,
	[ubigeo_asegurado] [varchar](6) NOT NULL,
	[historia_clinica] [varchar](20) NOT NULL,
	[tipo_atencion] [int] NOT NULL,
	[salud_materna] [int] NOT NULL,
	[modalidad_atencion] [int] NOT NULL,
	[numero_autorizacion] [varchar](15) NULL,
	[monto] [float] NULL,
	[fecha_hora_atencion] [datetime] NOT NULL,
	[ipress_refirio] [varchar](8) NULL,
	[numero_hoja_referencia] [varchar](20) NULL,
	[codigo_prestacional] [varchar](3) NOT NULL,
	[personal_atiende] [int] NOT NULL,
	[lugar_atencion] [int] NOT NULL,
	[destino_asegurado] [int] NOT NULL,
	[fecha_ingreso] [date] NULL,
	[fecha_alta] [date] NULL,
	[ipress_se_refiere_o_contrarefiere] [varchar](8) NULL,
	[numero_hoja_referiere_o_contrareferrencia] [varchar](20) NULL,
	[fecha_probable_parto_o_fecha_parto] [date] NULL,
	[grupo_riesgo_hvb] [varchar](2) NOT NULL,
	[institucion_educativa] [int] NULL,
	[nivel_educativo] [int] NULL,
	[grado_educativo] [int] NULL,
	[seccion_educativa] [varchar](30) NULL,
	[turno_educativo] [int] NULL,
	[educacion_especial] [int] NULL,
	[anexo_ieee] [int] NULL,
	[fecha_fallecimiento] [date] NULL,
	[codigo_oferta_flexible] [varchar](8) NULL,
	[id_etnia] [varchar](10) NULL,
	[id_iafas] [varchar](2) NULL,
	[codigo_seguro_iafa] [varchar](20) NULL,
	[id_ups] [varchar](6) NULL,
	[fecha_corte_administrativo] [date] NULL,
	[udr_autoriza_fua] [varchar](3) NULL,
	[lote_autoriza_fua] [varchar](2) NULL,
	[secuencia_autoriza_fua] [varchar](6) NULL,
	[disa_fua_vinculado] [varchar](8) NULL,
	[lote_fua_vinculado] [varchar](2) NULL,
	[numero_fua_vinculado] [varchar](10) NULL,
	[tipo_documento_responsable_atencion] [int] NOT NULL,
	[numero_documento_responsable_atencion] [varchar](9) NOT NULL,
	[tipo_personal_salud] [varchar](2) NOT NULL,
	[especialidad] [varchar](10) NULL,
	[es_egresado] [int] NOT NULL,
	[numero_colegiatura] [int] NULL,
	[numero_rne] [int] NULL,
	[periodo] [int] NOT NULL,
	[mes] [varchar](2) NOT NULL,
	[tipo_documento_digitador] [int] NOT NULL,
	[numero_documento_digitador] [varchar](10) NOT NULL,
	[fecha_hora_registro] [datetime] NOT NULL,
	[observacion] [varchar](250) NULL,
	[version_registro_aplicativo_origen] [varchar](9) NULL,
	[fecha_registro_informacion] [date] NOT NULL,
	[fecha_empaquetado_informacion] [date] NULL,
	[id_proceso_envio] [int] NULL,
	[cod_estado] [int] NOT NULL,
	[id_aplicativo] [varchar](6) NULL,
	[es_agrupado] [int] NOT NULL,
	[codigo_autorizacion_siteds] [varchar](20) NULL,
	[codigo_renipress] [varchar](8) NOT NULL,
	[es_numeracion_nueva] [bit] NULL,
	[es_fua_completo] [bit] NULL,
	[fecha_fua_completo] [date] NULL,
	[estado_fua] [bigint] NOT NULL,
	[estado_agrupado_ps] [bigint] NULL,
	[id_region] [int] NULL,
	[modulo_id] [int] NULL,
 CONSTRAINT [atencion_pkey] PRIMARY KEY CLUSTERED 
(
	[id_atencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [atencion_unique] UNIQUE NONCLUSTERED 
(
	[id_atencion] ASC,
	[disa] ASC,
	[lote] ASC,
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_diagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_diagnostico](
	[id_diagnostico] [int] IDENTITY(1,1) NOT NULL,
	[id_atencion] [int] NOT NULL,
	[codigo_diagnostico] [varchar](5) NOT NULL,
	[numero_correlativo_diagnosticon] [int] NOT NULL,
	[tipo_movimiento] [varchar](1) NOT NULL,
	[tipo_diagnosticon] [int] NOT NULL,
	[fecha_registro_informacion] [date] NOT NULL,
 CONSTRAINT [diagnostico_pkey] PRIMARY KEY CLUSTERED 
(
	[id_diagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [diagnostico_unique] UNIQUE NONCLUSTERED 
(
	[id_diagnostico] ASC,
	[id_atencion] ASC,
	[codigo_diagnostico] ASC,
	[numero_correlativo_diagnosticon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_insumos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_insumos](
	[id_insumos] [int] IDENTITY(1,1) NOT NULL,
	[id_atencion] [int] NOT NULL,
	[codigo_insumo] [varchar](5) NOT NULL,
	[correlativo_diagnostico] [int] NOT NULL,
	[cantidad_prescrita] [int] NOT NULL,
	[cantidad_entregada] [int] NOT NULL,
	[fecha_petitorio] [date] NULL,
	[numero_documento_petitorio] [varchar](20) NULL,
	[fecha_registro_informacion] [date] NOT NULL,
 CONSTRAINT [insumos_pkey] PRIMARY KEY CLUSTERED 
(
	[id_insumos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [insumos_unique] UNIQUE NONCLUSTERED 
(
	[id_insumos] ASC,
	[id_atencion] ASC,
	[codigo_insumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_medicamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_medicamentos](
	[id_medicamentos] [int] IDENTITY(1,1) NOT NULL,
	[id_atencion] [int] NOT NULL,
	[codigo_medicamento] [varchar](13) NOT NULL,
	[correlativo_diagnostico] [int] NOT NULL,
	[cantidad_prescrita] [int] NOT NULL,
	[cantidad_entregada] [int] NOT NULL,
	[fecha_petitorio] [date] NULL,
	[numero_documento_petitorio] [varchar](20) NULL,
	[fecha_registro_informacion] [date] NOT NULL,
 CONSTRAINT [medicamentos_pkey] PRIMARY KEY CLUSTERED 
(
	[id_medicamentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [medicamentos_unique] UNIQUE NONCLUSTERED 
(
	[id_medicamentos] ASC,
	[id_atencion] ASC,
	[codigo_medicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_procedimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_procedimientos](
	[id_procedimientos] [int] IDENTITY(1,1) NOT NULL,
	[id_atencion] [int] NOT NULL,
	[codigo_procedimiento] [varchar](15) NOT NULL,
	[correlativo_diagnostico] [int] NOT NULL,
	[cantidad_prescrita] [int] NOT NULL,
	[cantidad_entregada] [int] NOT NULL,
	[resultado_procedimiento] [varchar](50) NULL,
	[tipo_documento_profesional_realiza_procedimiento] [varchar](1) NULL,
	[numero_documento_profesional_realiza_procedimiento] [varchar](9) NULL,
	[tipo_personal_salud] [varchar](2) NULL,
	[especialidad_profesional] [varchar](4) NULL,
	[fecha_registro_informacion] [date] NOT NULL,
	[codigo_procedimiento_homol] [varchar](15) NOT NULL,
 CONSTRAINT [procedimiento_pkey] PRIMARY KEY CLUSTERED 
(
	[id_procedimientos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [procedimiento_unique] UNIQUE NONCLUSTERED 
(
	[id_procedimientos] ASC,
	[id_atencion] ASC,
	[codigo_procedimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_recien_nacido]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_recien_nacido](
	[id_recien_nacido] [int] IDENTITY(1,1) NOT NULL,
	[id_atencion] [int] NOT NULL,
	[numero_correlativo] [int] NOT NULL,
	[tipo_identificacion] [varchar](1) NULL,
	[numero_documento] [varchar](10) NULL,
	[disa_contrato_afiliacion] [varchar](3) NULL,
	[formato_contrato_afiliacion] [varchar](2) NULL,
	[numero_contrato_afiliacion] [varchar](9) NULL,
	[secuencia_contrato_inscripcion] [int] NULL,
	[apellido_paterno] [varchar](40) NOT NULL,
	[apellido_materno] [varchar](40) NOT NULL,
	[primer_nombre] [varchar](35) NOT NULL,
	[segundo_nombre] [varchar](35) NOT NULL,
	[identificacion_registro_o_inscripcion_afiliacion] [int] NULL,
	[identificacion_tabla] [varchar](1) NULL,
	[fecha_registro_informacion] [date] NOT NULL,
 CONSTRAINT [recien_nacido_pkey] PRIMARY KEY CLUSTERED 
(
	[id_recien_nacido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [recien_nacido_unique] UNIQUE NONCLUSTERED 
(
	[id_recien_nacido] ASC,
	[id_atencion] ASC,
	[numero_correlativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_servicios_adicionales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_servicios_adicionales](
	[id_servicios_adicionales] [int] IDENTITY(1,1) NOT NULL,
	[id_atencion] [int] NOT NULL,
	[codigo_concepto_prestacional] [varchar](3) NOT NULL,
	[fecha_registro_informacion] [date] NOT NULL,
 CONSTRAINT [servicios_adicionales_pkey] PRIMARY KEY CLUSTERED 
(
	[id_servicios_adicionales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [servicios_adicionales_unique] UNIQUE NONCLUSTERED 
(
	[id_servicios_adicionales] ASC,
	[id_atencion] ASC,
	[codigo_concepto_prestacional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fetv_smi]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fetv_smi](
	[id_smi] [int] IDENTITY(1,1) NOT NULL,
	[id_atencion] [int] NOT NULL,
	[codigo_actividad_preventiva] [varchar](3) NOT NULL,
	[resultado_smi] [varchar](19) NOT NULL,
	[fecha_registro_informacion] [date] NOT NULL,
 CONSTRAINT [smi_pkey] PRIMARY KEY CLUSTERED 
(
	[id_smi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [smi_unique] UNIQUE NONCLUSTERED 
(
	[id_smi] ASC,
	[id_atencion] ASC,
	[codigo_actividad_preventiva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeria](
	[idFicha] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[turno] [varchar](25) NULL,
	[Subjetivos] [varchar](1000) NULL,
	[conoceEnfermedad] [int] NULL,
	[alergia] [int] NULL,
	[descripcionAlergia] [varchar](150) NULL,
	[viaIngesta] [varchar](25) NULL,
	[otrosViaIngesta] [varchar](150) NULL,
	[apetito] [varchar](45) NULL,
	[piel] [varchar](45) NULL,
	[otrosPiel] [varchar](45) NULL,
	[higiene] [varchar](45) NULL,
	[abdomen] [varchar](45) NULL,
	[emesis] [int] NULL,
	[descripcionEmesis] [varchar](100) NULL,
	[caractEmesis] [varchar](100) NULL,
	[diuresis] [varchar](45) NULL,
	[otrosDiuresis] [varchar](45) NULL,
	[caractDiuresis] [varchar](150) NULL,
	[deposicion] [varchar](45) NULL,
	[diasDeposicion] [varchar](10) NULL,
	[caractDeposicion] [varchar](45) NULL,
	[actividadReposo] [varchar](65) NULL,
	[actividadResposoExtra] [varchar](45) NULL,
	[actividadCirculatoria] [varchar](45) NULL,
	[otrosActividadCirculatoria] [varchar](45) NULL,
	[edemas] [varchar](45) NULL,
	[edemasTipoDato] [varchar](45) NULL,
	[edemasDato] [varchar](45) NULL,
	[ActividadRespiratoria] [varchar](45) NULL,
	[datoActividadRespiratoria] [varchar](45) NULL,
	[escalaGlasgowAO] [varchar](45) NULL,
	[escalaGlasgowRV] [varchar](45) NULL,
	[escalaGlasgowRM] [varchar](45) NULL,
	[toleranteEStres] [varchar](45) NULL,
	[otrosTolerante] [varchar](150) NULL,
	[apoyoEmocional] [int] NULL,
	[seguridadProteccion] [varchar](250) NULL,
	[hemoglucotestHora] [varchar](45) NULL,
	[homoglucotestValor] [varchar](45) NULL,
	[escalaRiesgo] [varchar](45) NULL,
	[valorRiesgo] [varchar](45) NULL,
	[escalaDolor] [int] NULL,
	[ubicacionDolor] [varchar](45) NULL,
	[efectoMedicamento] [int] NULL,
	[diagnostico] [varchar](3000) NULL,
	[objetivo] [varchar](3500) NULL,
	[intervencion] [varchar](3000) NULL,
	[evaluacion] [varchar](3000) NULL,
	[observacion] [varchar](3500) NULL,
	[fechaRegistro] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdita] [datetime] NULL,
	[idEmpleadoEdita] [int] NULL,
	[estado] [int] NULL,
	[apetitoNauseas] [varchar](10) NULL,
	[paresia] [varchar](40) NULL,
	[plejia] [varchar](40) NULL,
	[otroAbdomen] [varchar](150) NULL,
	[ActividadRespiratoriaOtros] [varchar](50) NULL,
	[caracProteccion] [varchar](150) NULL,
	[tqt] [varchar](10) NULL,
	[lpp] [varchar](1000) NULL,
	[fecha] [date] NULL,
	[idServicio] [int] NULL,
	[gradoDependencia] [varchar](6) NULL,
	[tipoFicha] [int] NULL,
	[editable] [datetime] NULL,
	[Braden] [varchar](50) NULL,
	[Downton] [varchar](50) NULL,
	[LppCasa] [varchar](10) NULL,
 CONSTRAINT [PK__FichaEnf__846E2F765B83499D] PRIMARY KEY CLUSTERED 
(
	[idFicha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaBalanceHidrico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaBalanceHidrico](
	[idBalanceHidrico] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[fecha] [varchar](20) NULL,
	[talla] [varchar](10) NULL,
	[peso] [varchar](10) NULL,
	[edad] [varchar](10) NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdita] [int] NULL,
	[fechaEdita] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBalanceHidrico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaBalanceHidricoDetalla]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaBalanceHidricoDetalla](
	[idBalanceHidricoDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idBalanceHidrico] [int] NULL,
	[fecha] [date] NULL,
	[hora] [int] NULL,
	[idItemBalance] [int] NULL,
	[descripcionItem] [varchar](35) NULL,
	[valor] [varchar](10) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdita] [int] NULL,
	[fechaEdita] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBalanceHidricoDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaConsumoOxigeno]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaConsumoOxigeno](
	[idConsumoOxigeno] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[fecha] [date] NULL,
	[cantidad] [varchar](10) NULL,
	[tiempo] [varchar](10) NULL,
	[estado] [int] NULL,
	[fechaRegistro] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdita] [datetime] NULL,
	[idEmpleadoEdita] [int] NULL,
	[idServicio] [int] NULL,
	[IdDispositivo] [int] NULL,
	[Volumen] [varchar](10) NULL,
	[Fio2] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idConsumoOxigeno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaDatosGestacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaDatosGestacion](
	[idFichaEnfermeriaGestacion] [int] IDENTITY(1,1) NOT NULL,
	[idFicha] [int] NULL,
	[apn] [varchar](10) NULL,
	[eg] [varchar](10) NULL,
	[g] [varchar](10) NULL,
	[p] [varchar](10) NULL,
	[idCentroControl] [varchar](10) NULL,
	[alergia] [varchar](400) NULL,
	[peso] [varchar](10) NULL,
	[talla] [varchar](10) NULL,
	[pa] [varchar](10) NULL,
	[fc] [varchar](10) NULL,
	[fr] [varchar](10) NULL,
	[tem] [varchar](10) NULL,
	[sat] [varchar](10) NULL,
	[estado] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaEnfermeriaGestacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaDispositivoOxigeno]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaDispositivoOxigeno](
	[IdDispositivo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDispositivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaHorarioBalanceHidrico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaHorarioBalanceHidrico](
	[idHoraBalance] [int] NOT NULL,
	[descripcion] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoraBalance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaImagenes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaImagenes](
	[idImgene] [int] IDENTITY(1,1) NOT NULL,
	[idFicha] [int] NULL,
	[nombreIamgen] [varchar](150) NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[maquina] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[idImgene] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaItemBalance]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaItemBalance](
	[idItemBalance] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](15) NULL,
	[descripciom] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItemBalance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaMonitoreoObstetrico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaMonitoreoObstetrico](
	[idFichaMonitoreo] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[fecha] [varchar](15) NULL,
	[hora] [varchar](15) NULL,
	[pa] [varchar](7) NULL,
	[fc] [varchar](4) NULL,
	[temp] [varchar](2) NULL,
	[fr] [varchar](3) NULL,
	[diuresis] [varchar](4) NULL,
	[oxitocina] [varchar](7) NULL,
	[lfc] [varchar](3) NULL,
	[mf] [varchar](6) NULL,
	[du] [varchar](15) NULL,
	[dilatacion] [varchar](5) NULL,
	[incorporacion] [varchar](6) NULL,
	[ap] [varchar](3) NULL,
	[pla] [varchar](35) NULL,
	[sangrado] [varchar](7) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdita] [int] NULL,
	[fechaEdita] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFichaMonitoreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaObstetriz]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaObstetriz](
	[idFicha] [int] NOT NULL,
	[au] [varchar](4) NULL,
	[lfc] [varchar](4) NULL,
	[spp] [varchar](15) NULL,
	[spp_otros] [varchar](30) NULL,
	[du] [varchar](20) NULL,
	[mf] [varchar](10) NULL,
	[mamas] [varchar](100) NULL,
	[genitourinario] [varchar](250) NULL,
	[tv] [varchar](2) NULL,
	[dilatacion] [varchar](10) NULL,
	[incorporacion] [varchar](10) NULL,
	[altura_prestacion] [varchar](10) NULL,
	[menbranas_ovulares] [varchar](25) NULL,
	[pelvis] [varchar](20) NULL,
	[observacion] [varchar](500) NULL,
	[episiorrafia] [varchar](12) NULL,
	[desgarro] [varchar](5) NULL,
	[rot] [varchar](6) NULL,
	[uterocontraido] [varchar](3) NULL,
	[loquios] [varchar](3) NULL,
	[lfc2] [varchar](6) NULL,
	[puerpera] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFicha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaProcedimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaProcedimientos](
	[idProcedimientos] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[idProcedimientos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaProcedimientosFicha]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaProcedimientosFicha](
	[idProcedimientosFicha] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[dias] [varchar](10) NULL,
	[fechaRegistro] [datetime] NULL,
	[fechaEdit] [datetime] NULL,
	[idProcedimientos] [int] NOT NULL,
	[idFicha] [int] NOT NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProcedimientosFicha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaSignosVitales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaSignosVitales](
	[idSignosVitales] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[fc] [varchar](10) NULL,
	[fr] [varchar](10) NULL,
	[pa] [varchar](20) NULL,
	[tem] [varchar](10) NULL,
	[peso] [varchar](10) NULL,
	[talla] [varchar](10) NULL,
	[sat] [varchar](10) NULL,
	[glucosa] [varchar](10) NULL,
	[fechaRegistro] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdita] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[estado] [int] NULL,
	[datos] [varchar](1000) NULL,
	[fisat] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSignosVitales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaTransfusion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaTransfusion](
	[idTransfusion] [int] IDENTITY(1,1) NOT NULL,
	[idFicha] [int] NULL,
	[tipo] [varchar](20) NULL,
	[horaInicio] [varchar](10) NULL,
	[horaFin] [varchar](10) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTransfusion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaTratamiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaTratamiento](
	[idTratamiento] [int] IDENTITY(1,1) NOT NULL,
	[medicamento] [varchar](150) NULL,
	[via] [varchar](45) NULL,
	[hora] [varchar](45) NULL,
	[idFicha] [int] NOT NULL,
	[estado] [int] NULL,
	[dosis] [varchar](50) NULL,
	[observacion] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTratamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaViaGestion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaViaGestion](
	[idGestion] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [int] NULL,
	[hora] [varchar](100) NULL,
	[valor] [varchar](10) NULL,
	[idFicha] [int] NULL,
	[fechaRegistro] [datetime] NULL,
	[idEmpleado] [int] NULL,
	[fechaEdita] [datetime] NULL,
	[idEmpleadoEdita] [int] NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idGestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaEnfermeriaViaIngesta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaEnfermeriaViaIngesta](
	[idVia] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fichaNotas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fichaNotas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](5000) NULL,
	[empleado] [int] NULL,
	[fechaRegistro] [datetime] NULL,
	[idcuenta] [int] NULL,
	[idvisita] [int] NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialCategorizacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialCategorizacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[a] [text] NULL,
	[b] [text] NULL,
	[c] [text] NULL,
	[casosSociales] [text] NULL,
	[casosIndigenaFamiliar] [text] NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialData]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[paciente_id] [int] NULL,
	[lugarNac] [varchar](250) NULL,
	[distrito] [varchar](250) NULL,
	[referencia] [varchar](250) NULL,
	[celular] [varchar](20) NULL,
	[domicilioactual] [varchar](250) NULL,
	[discapacidad] [varchar](250) NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialEconomico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialEconomico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ingresos] [decimal](18, 0) NULL,
	[egresos] [decimal](18, 0) NULL,
	[otros] [decimal](18, 0) NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialIdentidicacionProblemas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialIdentidicacionProblemas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[violenciaFamiliar] [text] NULL,
	[psicologico] [text] NULL,
	[drogas] [text] NULL,
	[alcoholismo] [text] NULL,
	[discapacidad] [text] NULL,
	[prostitucion] [text] NULL,
	[enfermedadTransmicion] [text] NULL,
	[otros] [text] NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialInforme]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialInforme](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fechaAtencion] [datetime] NULL,
	[tecnicas_instrumentos] [varchar](20) NULL,
	[antecedente] [varchar](max) NULL,
	[dinamica] [varchar](max) NULL,
	[vivienda] [varchar](max) NULL,
	[socioecon] [varchar](max) NULL,
	[salud] [varchar](max) NULL,
	[educativa] [varchar](max) NULL,
	[factorriesgo] [varchar](max) NULL,
	[diagnostico] [varchar](max) NULL,
	[conclusion] [varchar](max) NULL,
	[recomendacion] [varchar](max) NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialNivelEducativo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialNivelEducativo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[estudios] [varchar](255) NOT NULL,
	[gradoAcademico] [varchar](255) NULL,
	[ocupacion] [varchar](255) NULL,
	[empleo] [varchar](255) NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialParametros]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialParametros](
	[clave] [varchar](50) NOT NULL,
	[valor] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialPersona]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialPersona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](12) NOT NULL,
	[tipodocumento] [int] NOT NULL,
	[paterno] [varchar](255) NOT NULL,
	[materno] [varchar](255) NULL,
	[nombres] [varchar](255) NULL,
	[edad] [int] NULL,
	[sexo] [int] NOT NULL,
	[parentesco] [int] NULL,
	[estadoCivil] [int] NULL,
	[gradoInstruccion] [int] NULL,
	[seguro] [varchar](255) NULL,
	[ocupacion] [int] NULL,
	[ingreso] [decimal](18, 0) NULL,
	[activo] [int] NULL,
	[paciente_id] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
	[edad_mes] [int] NULL,
	[edad_dia] [int] NULL,
	[ocupacionOtro] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialSalud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialSalud](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seguros] [int] NULL,
	[diagnostico] [text] NULL,
	[tratamiento] [text] NULL,
	[tratamientoSocial] [text] NULL,
	[riesgoSocial] [text] NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialSeguimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialSeguimiento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[ocurrencia] [text] NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[empleado_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FichaSocialVivienda]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaSocialVivienda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [int] NULL,
	[material] [int] NULL,
	[habitacion] [varchar](20) NULL,
	[muebles] [varchar](20) NULL,
	[servicios] [varchar](20) NULL,
	[paciente_id] [int] NULL,
	[cuenta_id] [int] NULL,
	[activo] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[firmaReceta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[firmaReceta](
	[idFirmaReceta] [int] IDENTITY(1,1) NOT NULL,
	[idReceta] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[idEmpleado] [int] NULL,
	[fechaFirma] [datetime] NULL,
	[tipoDoc] [varchar](25) NULL,
	[numdoc] [varchar](15) NULL,
	[nombre] [varchar](150) NULL,
	[celular] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFirmaReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIRMAReporteFUA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIRMAReporteFUA](
	[id] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[idEmpleado] [int] NULL,
	[estado] [int] NULL,
	[nombre] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FTMP]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FTMP](
	[movnumero] [varchar](9) NOT NULL,
	[idorden] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUA](
	[Idcuenta] [int] NULL,
	[numeroFUA] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuaCambioNumeracion_3]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuaCambioNumeracion_3](
	[FuaDisaAntiguo] [varchar](3) NULL,
	[FuaLoteAntiguo] [varchar](2) NULL,
	[FuaNumeroAntiguo] [varchar](16) NULL,
	[FuaCompletoAntiguo] [varchar](50) NULL,
	[idCuentaAtencion] [int] NULL,
	[FuaDisaNuevo] [varchar](3) NULL,
	[FuaLoteNuevo] [varchar](2) NULL,
	[FuaNumeroNuevo] [varchar](16) NULL,
	[FuaCompletoNuevo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuaCambioNumeracion2]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuaCambioNumeracion2](
	[FuaDisaAntiguo] [varchar](3) NULL,
	[FuaLoteAntiguo] [varchar](2) NULL,
	[FuaNumeroAntiguo] [varchar](16) NULL,
	[FuaCompletoAntiguo] [varchar](50) NULL,
	[idCuentaAtencion] [int] NULL,
	[FuaDisaNuevo] [varchar](3) NULL,
	[FuaLoteNuevo] [varchar](2) NULL,
	[FuaNumeroNuevo] [varchar](16) NULL,
	[FuaCompletoNuevo] [varchar](50) NULL,
	[Cambio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuaRecetaNoTarifado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuaRecetaNoTarifado](
	[idFuaRecetaNoTarifado] [int] IDENTITY(1,1) NOT NULL,
	[idReceta] [int] NOT NULL,
	[FuaDisa] [int] NOT NULL,
	[FuaLote] [int] NOT NULL,
	[FuaNumero] [varchar](10) NOT NULL,
	[FuaCodigoPrestacion] [varchar](3) NOT NULL,
	[idEstado] [int] NULL,
	[idUsuario] [int] NULL,
	[FuaVinculado] [varchar](50) NULL,
	[idCuentaAtencion] [int] NULL,
 CONSTRAINT [PK_FuaRecetaNoTarifado] PRIMARY KEY CLUSTERED 
(
	[idFuaRecetaNoTarifado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUASaludMaterna]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUASaludMaterna](
	[idDiagnostico] [int] NULL,
	[codigoCIEsinPto] [varchar](7) NULL,
	[CodigoCIE10] [varchar](7) NULL,
	[tipo] [char](1) NULL,
	[estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuentesFinanciamiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuentesFinanciamiento](
	[IdFuenteFinanciamiento] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdTipoFinanciamiento] [int] NULL,
	[idTipoConceptoFarmacia] [int] NULL,
	[UtilizadoEn] [int] NULL,
	[CodigoFuenteFinanciamientoSEM] [varchar](1) NULL,
	[idAreaTramitaSeguros] [int] NULL,
	[EsUsadoEnCaja] [bit] NULL,
	[CodigoHIS] [varchar](2) NULL,
	[idTipoFinanciador] [int] NOT NULL,
	[codigo] [char](11) NOT NULL,
	[esActivo] [int] NULL,
	[IdFFRefcon] [int] NULL,
 CONSTRAINT [FuentesFinaciamiento_PK] PRIMARY KEY CLUSTERED 
(
	[IdFuenteFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuentesFinanciamientoTarifas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuentesFinanciamientoTarifas](
	[idFuenteFinanciamiento] [int] NOT NULL,
	[idTipoFinanciamiento] [int] NOT NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [PK_FuentesFinanciamientoTarifas] PRIMARY KEY CLUSTERED 
(
	[idFuenteFinanciamiento] ASC,
	[idTipoFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneradorNroHistoriaClinica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneradorNroHistoriaClinica](
	[IdNumerador] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NroHistoriaClinica] [varchar](20) NULL,
	[Estado] [bit] NULL,
	[IdTipoNumeracion] [int] NULL,
 CONSTRAINT [GeneradorNroHistoriaClinica_PK] PRIMARY KEY CLUSTERED 
(
	[IdNumerador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneradorNroHistoriaNN]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneradorNroHistoriaNN](
	[IdNumerador] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NroHistoriaClinica] [varchar](20) NULL,
	[Estado] [bit] NULL,
	[IdTipoNumeracion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoCausaSuspensionOperacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoCausaSuspensionOperacion](
	[IdGrupoCausaSuspensionOperacion] [int] NOT NULL,
	[Descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_IdGrupoCausaSuspension] PRIMARY KEY CLUSTERED 
(
	[IdGrupoCausaSuspensionOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoChequeoEnfermeriaPreOperatoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoChequeoEnfermeriaPreOperatoria](
	[IdGrupoChequeoEnfermeriaPreOperatoria] [int] NOT NULL,
	[Numero] [int] NULL,
	[IdSeccionChequeoEnfermeria] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_GrupoChequeoEnfermeriaPreOperatoria] PRIMARY KEY CLUSTERED 
(
	[IdGrupoChequeoEnfermeriaPreOperatoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoCondicionIngresoURPA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoCondicionIngresoURPA](
	[IdGrupoCondicionIngresoURPA] [int] NOT NULL,
	[Descripcion] [nchar](100) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdCondicionIngresoURPA] PRIMARY KEY CLUSTERED 
(
	[IdGrupoCondicionIngresoURPA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoEtarios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoEtarios](
	[idGrupoEtario] [int] NULL,
	[Descripcion] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoSanguineo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoSanguineo](
	[IdGrupoSanguineo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGrupoSanguineo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GruposIndicacionAlta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GruposIndicacionAlta](
	[IdIndicacionAlta] [int] NOT NULL,
	[Descripcion] [nchar](200) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_GruposIndicacionAlta] PRIMARY KEY CLUSTERED 
(
	[IdIndicacionAlta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GS](
	[idPaciente] [int] NULL,
	[GrupoSanguineo] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcam]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcam](
	[idHcam] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[anamnesis] [varchar](25) NULL,
	[lugarNacimiento] [varchar](150) NULL,
	[forma_admision] [varchar](50) NULL,
	[signomas_sintomas] [varchar](1500) NULL,
	[tiempo_enfermedad] [varchar](20) NULL,
	[forma_inicio] [varchar](100) NULL,
	[curso] [varchar](100) NULL,
	[curso_otros] [varchar](100) NULL,
	[relatos] [varchar](1500) NULL,
	[orina] [varchar](500) NULL,
	[orina_caract] [varchar](500) NULL,
	[deposiciones] [varchar](500) NULL,
	[deposiciones_caract] [varchar](500) NULL,
	[sed] [varchar](500) NULL,
	[apetito] [varchar](500) NULL,
	[apetito_nauseas] [varchar](10) NULL,
	[sueno] [varchar](100) NULL,
	[sueno_carac] [varchar](500) NULL,
	[antecedentes_general] [varchar](1500) NULL,
	[antecedentes_fisiologico] [varchar](1500) NULL,
	[antecedentes_patologicos] [varchar](1500) NULL,
	[cirugias] [varchar](3500) NULL,
	[transfuciones] [varchar](3500) NULL,
	[alergias] [varchar](3500) NULL,
	[gineco_obstetrico] [varchar](3500) NULL,
	[madre] [varchar](3500) NULL,
	[padre] [varchar](3500) NULL,
	[otro] [varchar](3500) NULL,
	[procedimiento] [varchar](3500) NULL,
	[tratamiento] [varchar](3500) NULL,
	[interconsultas] [varchar](3500) NULL,
	[eva] [varchar](10) NULL,
	[peso] [varchar](10) NULL,
	[talla] [varchar](10) NULL,
	[pa] [varchar](10) NULL,
	[fc] [varchar](10) NULL,
	[fr] [varchar](10) NULL,
	[t] [varchar](10) NULL,
	[sat] [varchar](10) NULL,
	[examen_general] [varchar](3500) NULL,
	[examen_regional] [varchar](3500) NULL,
	[examen_auxiliares] [varchar](3500) NULL,
	[idServicio] [int] NULL,
	[estado] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[funciones_biologica] [text] NULL,
 CONSTRAINT [PK__hcam__7A7C6B5A72FBABD2] PRIMARY KEY CLUSTERED 
(
	[idHcam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcam_diagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcam_diagnostico](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idHcam] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[idTipoDiagnostico] [int] NULL,
	[estado] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
 CONSTRAINT [PK__hcam_dia__49CAE2FB0A141B54] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcam_gineco]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcam_gineco](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idHcam] [int] NULL,
	[menarquia] [varchar](20) NULL,
	[fur_rc] [varchar](20) NULL,
	[irc] [varchar](20) NULL,
	[mac] [varchar](20) NULL,
	[fup] [varchar](20) NULL,
	[menopaucia] [varchar](20) NULL,
	[estado] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
 CONSTRAINT [PK__hcam_dia__49CAE2FB0A14] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcam_informante]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcam_informante](
	[idHcam] [int] NOT NULL,
	[numDocInform] [varchar](15) NULL,
	[nomApelli] [varchar](150) NULL,
	[parentesco] [int] NULL,
 CONSTRAINT [PK__hcam_inf__7A7C6B5A0DE4AC38] PRIMARY KEY CLUSTERED 
(
	[idHcam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCCirugiaAmbulatoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCCirugiaAmbulatoria](
	[IdHCCirugiaAmbulatoria] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[SignosySintomasPrincipales] [varchar](5000) NULL,
	[TiempodeEnfermedad] [varchar](5000) NULL,
	[FormaDeInicio] [varchar](5000) NULL,
	[Curso] [varchar](5000) NULL,
	[RelatodelaEnfermedad] [varchar](5000) NULL,
	[FuncionesBiologicas] [varchar](5000) NULL,
	[AntecedentesGenerales] [varchar](5000) NULL,
	[AntecedentesFisiologicos] [varchar](5000) NULL,
	[HTA] [varchar](5000) NULL,
	[DM] [varchar](5000) NULL,
	[TBC] [varchar](5000) NULL,
	[Asma] [varchar](5000) NULL,
	[Hepatitis] [varchar](5000) NULL,
	[VIH] [varchar](5000) NULL,
	[ALcohol] [varchar](5000) NULL,
	[Tabaco] [varchar](5000) NULL,
	[Drogas] [varchar](5000) NULL,
	[Otros] [varchar](5000) NULL,
	[CirugiasPrevias] [varchar](5000) NULL,
	[Transfusiones] [varchar](5000) NULL,
	[Alergias] [varchar](5000) NULL,
	[Menarquia] [varchar](5000) NULL,
	[MAC] [varchar](5000) NULL,
	[FurRC] [varchar](5000) NULL,
	[FUP] [varchar](5000) NULL,
	[IRS] [varchar](5000) NULL,
	[Menopausia] [varchar](5000) NULL,
	[AntecedentesMadre] [varchar](5000) NULL,
	[AntecedentesPadre] [varchar](5000) NULL,
	[AntecedentesOtros] [varchar](5000) NULL,
	[TriajeEscalaEva] [varchar](5000) NULL,
	[TriajePeso] [varchar](5000) NULL,
	[TriajeTalla] [varchar](5000) NULL,
	[TriajePA] [varchar](5000) NULL,
	[TriajeFC] [varchar](5000) NULL,
	[TriajeFR] [varchar](5000) NULL,
	[TriajeTemp] [varchar](5000) NULL,
	[TriajeSAT] [varchar](5000) NULL,
	[ExamenClinicoGeneral] [varchar](5000) NULL,
	[ExamenClinicoRegional] [varchar](5000) NULL,
	[ExamenesAuxiliares] [varchar](5000) NULL,
	[Tratamiento] [varchar](5000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHCCirugiaAmbulatoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hchospitalizacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hchospitalizacion](
	[idHospi] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[forma_admision] [varchar](50) NULL,
	[motivo] [varchar](3500) NULL,
	[tiempo_enfermedad] [varchar](150) NULL,
	[forma_inicio] [varchar](150) NULL,
	[curso] [varchar](150) NULL,
	[sintomas_signos] [varchar](1500) NULL,
	[relato_enfermedad] [varchar](3500) NULL,
	[apetito] [varchar](150) NULL,
	[orina] [varchar](150) NULL,
	[sueno] [varchar](150) NULL,
	[sed] [varchar](150) NULL,
	[deposicion] [varchar](350) NULL,
	[fisiologicos] [varchar](15) NULL,
	[gineco_obstetrico] [varchar](15) NULL,
	[eruptiva] [varchar](1500) NULL,
	[hta] [varchar](1500) NULL,
	[dm] [varchar](1500) NULL,
	[asma] [varchar](1500) NULL,
	[otros_eruptiva] [varchar](1500) NULL,
	[cirugia] [varchar](1500) NULL,
	[tbc] [varchar](1500) NULL,
	[transfuciones] [varchar](1500) NULL,
	[uso_sustancias] [varchar](1500) NULL,
	[alergia] [varchar](1500) NULL,
	[antecdentes_familiares] [varchar](3500) NULL,
	[fecha] [varchar](15) NULL,
	[hora] [varchar](15) NULL,
	[peso] [varchar](15) NULL,
	[talla] [varchar](15) NULL,
	[pa] [varchar](15) NULL,
	[fc] [varchar](15) NULL,
	[fr] [varchar](15) NULL,
	[tem] [varchar](15) NULL,
	[sat] [varchar](15) NULL,
	[aspecto_general] [varchar](3500) NULL,
	[piel_mucosa] [varchar](3500) NULL,
	[tcsc] [varchar](3500) NULL,
	[linfatico] [varchar](3500) NULL,
	[torax] [varchar](3500) NULL,
	[cardiovascular] [varchar](3500) NULL,
	[abdomen] [varchar](3500) NULL,
	[genitourinario] [varchar](3500) NULL,
	[recto] [varchar](3500) NULL,
	[neurologica] [varchar](3500) NULL,
	[examenes_auxiliares] [varchar](3500) NULL,
	[procedimientos_medicos] [varchar](3500) NULL,
	[interconsultas] [varchar](3500) NULL,
	[idServicio] [int] NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[tratamiento] [varchar](3500) NULL,
	[oxigenoterapia] [varchar](150) NULL,
	[anamnesis] [varchar](20) NULL,
	[lugarNacimiento] [varchar](150) NULL,
 CONSTRAINT [PK__hchospit__699ADF416EA10B09] PRIMARY KEY CLUSTERED 
(
	[idHospi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hchospitalizacion_diagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hchospitalizacion_diagnostico](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idHospi] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[idTipoDiagnostico] [int] NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hchospitalizacion_fisiologicos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hchospitalizacion_fisiologicos](
	[idHospi] [int] NOT NULL,
	[cpn] [varchar](150) NULL,
	[complicaciones] [varchar](150) NULL,
	[parto_tipo] [varchar](150) NULL,
	[parto_lugar] [varchar](150) NULL,
	[peso_nacimiento] [varchar](150) NULL,
	[eg] [varchar](150) NULL,
	[apgar] [varchar](150) NULL,
	[lactancia] [varchar](150) NULL,
	[ablactancia] [varchar](150) NULL,
	[inmunizaciones] [varchar](1500) NULL,
	[problemas_desarrollo] [varchar](150) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
 CONSTRAINT [PK__hchospit__699ADF4176422CD1] PRIMARY KEY CLUSTERED 
(
	[idHospi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hchospitalizacion_gineco]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hchospitalizacion_gineco](
	[idHospi] [int] NOT NULL,
	[menarquia] [varchar](150) NULL,
	[fur_rc] [varchar](150) NULL,
	[mac] [varchar](150) NULL,
	[irs] [varchar](150) NULL,
	[ps] [varchar](150) NULL,
	[dispareunia] [varchar](150) NULL,
	[fup] [varchar](150) NULL,
	[cesarea] [varchar](150) NULL,
	[menopausia] [varchar](150) NULL,
	[manografia] [varchar](150) NULL,
	[cirugiago] [varchar](150) NULL,
	[otros] [varchar](1500) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
 CONSTRAINT [PK__hchospit__699ADF417A12BDB5] PRIMARY KEY CLUSTERED 
(
	[idHospi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hchospitalizacion_informante]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hchospitalizacion_informante](
	[idHospi] [int] NOT NULL,
	[numDocInform] [varchar](15) NULL,
	[nomApelli] [varchar](150) NULL,
	[parentesco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHospi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCRNDiagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCRNDiagnostico](
	[IdHCRNDiagnostico] [int] IDENTITY(1,1) NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdHc] [int] NULL,
	[idTipoDiagnostico] [int] NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHCRNDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCRNEnfermedadesEmbarazo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCRNEnfermedadesEmbarazo](
	[idHcEnfermedad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHcEnfermedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCRNEnfermedadesEmbarazoHistoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCRNEnfermedadesEmbarazoHistoria](
	[idHcEnfermedadHistoria] [int] IDENTITY(1,1) NOT NULL,
	[IdHc] [int] NOT NULL,
	[idHcEnfermedad] [int] NOT NULL,
	[descripctionEnfermedad] [varchar](150) NULL,
	[especificacion] [varchar](200) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHcEnfermedadHistoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCRNregistro]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCRNregistro](
	[IdHc] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[dni_madre] [varchar](15) NULL,
	[nombreApellido] [varchar](150) NULL,
	[telefono] [varchar](15) NULL,
	[edad_materna] [varchar](10) NULL,
	[IdGradoInstruccion] [int] NULL,
	[g] [varchar](2) NULL,
	[p] [varchar](12) NULL,
	[cpn] [varchar](15) NULL,
	[enfermedades_embarazo] [varchar](250) NULL,
	[medicacion_embarazo] [varchar](250) NULL,
	[examen_embarazo] [varchar](250) NULL,
	[vdrl] [varchar](45) NULL,
	[hiv] [varchar](45) NULL,
	[grupo_sanguineo] [varchar](15) NULL,
	[IdTipoParto] [int] NULL,
	[motivo_cesarea] [varchar](250) NULL,
	[fecha_parto] [date] NULL,
	[hora_parto] [varchar](20) NULL,
	[lugar_nacimiento] [varchar](250) NULL,
	[apgar] [varchar](15) NULL,
	[paseo_al_nacer] [varchar](10) NULL,
	[talla] [varchar](10) NULL,
	[perimetro_cefalico] [varchar](10) NULL,
	[edad_gestacional_al_nacer] [varchar](10) NULL,
	[grupo_factor] [varchar](10) NULL,
	[sintomas_signos] [varchar](150) NULL,
	[inicio] [varchar](100) NULL,
	[cursos] [varchar](100) NULL,
	[tiempo_enfermedad] [varchar](1000) NULL,
	[relato_cronologico] [varchar](5000) NULL,
	[funciones_biologicas] [varchar](5000) NULL,
	[antecedentes_familiares] [varchar](5000) NULL,
	[fc] [varchar](10) NULL,
	[fr] [varchar](10) NULL,
	[sat] [varchar](10) NULL,
	[t] [varchar](10) NULL,
	[pa] [varchar](10) NULL,
	[peso] [varchar](10) NULL,
	[examen_clinico_general] [varchar](5000) NULL,
	[piel] [varchar](100) NULL,
	[cabeza] [varchar](100) NULL,
	[torax_pulmon] [varchar](100) NULL,
	[aparato_cardio] [varchar](100) NULL,
	[abdomen] [varchar](100) NULL,
	[neurologico] [varchar](100) NULL,
	[dieta] [varchar](150) NULL,
	[ciudados_enfermeria] [varchar](250) NULL,
	[medicacion] [varchar](5000) NULL,
	[examen_laboratorio] [varchar](5000) NULL,
	[diagnostico_por_imagen] [varchar](250) NULL,
	[interconsultas_referencias] [varchar](250) NULL,
	[cultivos] [varchar](250) NULL,
	[estado] [int] NULL,
	[fecha_creacion] [datetime] NULL,
	[idEmpleado_creacion] [int] NULL,
	[fecha_editar] [datetime] NULL,
	[idEmpleado_editar] [int] NULL,
	[direccionMadre] [varchar](150) NULL,
	[informante] [varchar](100) NULL,
	[idServicio] [int] NULL,
	[resultadoCovid] [varchar](50) NULL,
	[editable] [int] NULL,
	[horaeditar] [time](7) NULL,
	[IdParentesco] [int] NULL,
	[apetito] [varchar](35) NULL,
	[nauseas] [varchar](4) NULL,
	[sed] [varchar](35) NULL,
	[sueno] [varchar](180) NULL,
	[orina] [varchar](240) NULL,
	[deposicion] [varchar](250) NULL,
 CONSTRAINT [PK__HCRNregi__B773FA485F29BD4F] PRIMARY KEY CLUSTERED 
(
	[IdHc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCRNregistroAuditoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCRNregistroAuditoria](
	[IdAuditoria] [int] IDENTITY(1,1) NOT NULL,
	[IdHC] [int] NULL,
	[campoEditado] [varchar](100) NULL,
	[datoAnterior] [varchar](max) NULL,
	[datoNuevo] [varchar](max) NULL,
	[fechaCambio] [datetime] NULL,
	[idEmpleado] [int] NULL,
	[equipo] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAuditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcsm]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcsm](
	[idHcsm] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[anamnesis] [varchar](25) NULL,
	[lugarNacimiento] [varchar](150) NULL,
	[forma_admision] [varchar](50) NULL,
	[motivo_hospitalizacion] [varchar](150) NULL,
	[episodio_actual] [varchar](20) NULL,
	[tiempo_enfermedad] [varchar](20) NULL,
	[forma_inicio] [varchar](100) NULL,
	[curso] [varchar](100) NULL,
	[signomas_sintomas] [varchar](1500) NULL,
	[relatos] [varchar](1500) NULL,
	[orina] [varchar](500) NULL,
	[deposiciones] [varchar](500) NULL,
	[sed] [varchar](500) NULL,
	[apetito] [varchar](500) NULL,
	[sueno] [varchar](500) NULL,
	[prenatal] [varchar](500) NULL,
	[parto] [varchar](500) NULL,
	[lactancia] [varchar](500) NULL,
	[piscomotriz] [varchar](3500) NULL,
	[educacion] [varchar](3500) NULL,
	[ocupacional] [varchar](3500) NULL,
	[antecedentes_violencia] [varchar](150) NULL,
	[psicosexual] [varchar](3500) NULL,
	[marital] [varchar](3500) NULL,
	[recreacion] [varchar](3500) NULL,
	[personalidad] [varchar](3500) NULL,
	[policiales_pensales] [varchar](3500) NULL,
	[patologias] [varchar](150) NULL,
	[cirugias] [varchar](3500) NULL,
	[alergias] [varchar](3500) NULL,
	[medicacion_habitual] [varchar](3500) NULL,
	[tratamiento_anterorior] [varchar](3500) NULL,
	[uso_sustancias] [varchar](20) NULL,
	[padre] [varchar](3500) NULL,
	[madre] [varchar](3500) NULL,
	[parientes_paternos] [varchar](3500) NULL,
	[parientes_maternos] [varchar](3500) NULL,
	[hermanos] [varchar](3500) NULL,
	[historia_hogar] [varchar](3500) NULL,
	[tipo_familia] [varchar](50) NULL,
	[dinamica_familiar] [varchar](50) NULL,
	[soporte_familiar] [varchar](3500) NULL,
	[fecha] [varchar](15) NULL,
	[hora] [varchar](15) NULL,
	[peso] [varchar](20) NULL,
	[talla] [varchar](20) NULL,
	[pa] [varchar](20) NULL,
	[fc] [varchar](20) NULL,
	[fr] [varchar](20) NULL,
	[t] [varchar](20) NULL,
	[sat] [varchar](20) NULL,
	[oxigenoterapia] [varchar](150) NULL,
	[examen_general] [varchar](3500) NULL,
	[piel_tcsc] [varchar](3500) NULL,
	[torax_pulmones] [varchar](3500) NULL,
	[cardiovascular] [varchar](3500) NULL,
	[abdomen] [varchar](3500) NULL,
	[genitouterino] [varchar](3500) NULL,
	[neurologico] [varchar](3500) NULL,
	[porte_actitud] [varchar](3500) NULL,
	[conciencia_atencion] [varchar](3500) NULL,
	[lenguaje] [varchar](3500) NULL,
	[pensamiento] [varchar](3500) NULL,
	[percepcion] [varchar](3500) NULL,
	[memoria] [varchar](3500) NULL,
	[afecto] [varchar](3500) NULL,
	[conciencia] [varchar](3500) NULL,
	[dieta] [varchar](3500) NULL,
	[cuidados_enfermeria] [varchar](3500) NULL,
	[medicacion] [varchar](3500) NULL,
	[examen_ayuda] [varchar](3500) NULL,
	[procedimiento_medico] [varchar](3500) NULL,
	[evaluacion_psicologia] [varchar](3500) NULL,
	[interconsultas] [varchar](3500) NULL,
	[idServicio] [int] NULL,
	[estado] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
 CONSTRAINT [PK__hcsm__7A7C6B5A72FBABD2] PRIMARY KEY CLUSTERED 
(
	[idHcsm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcsm_diagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcsm_diagnostico](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idHcsm] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[idTipoDiagnostico] [int] NULL,
	[estado] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcsm_informante]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcsm_informante](
	[idHcsm] [int] NOT NULL,
	[numDocInform] [varchar](15) NULL,
	[nomApelli] [varchar](150) NULL,
	[parentesco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHcsm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcsm_sustancias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcsm_sustancias](
	[idSustancias] [int] NOT NULL,
	[idHcsm] [int] NULL,
	[sustancia] [varchar](50) NULL,
	[edad_inicio] [varchar](3) NULL,
	[edad_termino] [varchar](3) NULL,
	[patron] [varchar](20) NULL,
	[frecuencia] [varchar](3) NULL,
	[fuc] [varchar](10) NULL,
	[cantidad] [varchar](15) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
 CONSTRAINT [PK__hcsm_sus__0ED59EBD11B53D1C] PRIMARY KEY CLUSTERED 
(
	[idSustancias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCSMDiagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCSMDiagnostico](
	[IdHcsmDiagnostico] [int] IDENTITY(1,1) NOT NULL,
	[IdDiagnostico] [int] NULL,
	[IdHcsm] [int] NULL,
	[idTipoDiagnostico] [int] NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHcsmDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcsmRegistro]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcsmRegistro](
	[idHcsm] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[informante] [varchar](150) NULL,
	[parentesco] [varchar](150) NULL,
	[ocupacion] [varchar](150) NULL,
	[procedencia] [varchar](150) NULL,
	[lugarNacimiento] [varchar](150) NULL,
	[gradoInstruccion] [varchar](10) NULL,
	[religion] [varchar](150) NULL,
	[estadoCivil] [varchar](150) NULL,
	[direccion] [varchar](150) NULL,
	[telefono] [varchar](150) NULL,
	[formaAdmision] [varchar](10) NULL,
	[motivoHospi] [varchar](250) NULL,
	[tiempoEpisodio] [varchar](150) NULL,
	[formaInicio] [varchar](150) NULL,
	[tiempoEnfermedad] [varchar](150) NULL,
	[curso] [varchar](150) NULL,
	[sintomassignos] [varchar](150) NULL,
	[relato] [varchar](max) NULL,
	[funcionesBiologicas] [varchar](150) NULL,
	[orina] [varchar](150) NULL,
	[deposicion] [varchar](150) NULL,
	[sed] [varchar](150) NULL,
	[apetito] [varchar](150) NULL,
	[sueno] [varchar](150) NULL,
	[prenatal] [varchar](150) NULL,
	[parto] [varchar](150) NULL,
	[lactancia] [varchar](150) NULL,
	[psicomotriz] [varchar](150) NULL,
	[educacion] [varchar](150) NULL,
	[desOcupacional] [varchar](150) NULL,
	[antecedentesViolencia] [varchar](150) NULL,
	[histoPsicosexual] [varchar](150) NULL,
	[histoMarital] [varchar](150) NULL,
	[vidaSocial] [varchar](150) NULL,
	[premorbida] [varchar](150) NULL,
	[antecedentesPoli] [varchar](150) NULL,
	[patologias] [varchar](150) NULL,
	[cirugias] [varchar](150) NULL,
	[alergias] [varchar](150) NULL,
	[medicacionHabitual] [varchar](150) NULL,
	[tratamientosAnteriores] [varchar](150) NULL,
	[ususustancias] [varchar](10) NULL,
	[padre] [varchar](150) NULL,
	[madre] [varchar](150) NULL,
	[parientesPat] [varchar](150) NULL,
	[parientesMat] [varchar](150) NULL,
	[hermanos] [varchar](150) NULL,
	[hogar] [varchar](150) NULL,
	[tipoFamilia] [varchar](10) NULL,
	[dinamicaFam] [varchar](10) NULL,
	[soporteFam] [varchar](150) NULL,
	[fecha] [varchar](15) NULL,
	[hora] [varchar](15) NULL,
	[peso] [varchar](10) NULL,
	[talla] [varchar](10) NULL,
	[imc] [varchar](10) NULL,
	[pa] [varchar](10) NULL,
	[fc] [varchar](10) NULL,
	[fr] [varchar](10) NULL,
	[temp] [varchar](10) NULL,
	[examenGeneral] [varchar](150) NULL,
	[examenRegional] [varchar](150) NULL,
	[piel] [varchar](150) NULL,
	[torax] [varchar](150) NULL,
	[cardio] [varchar](150) NULL,
	[abdomen] [varchar](150) NULL,
	[genito] [varchar](150) NULL,
	[neurologico] [varchar](150) NULL,
	[porte] [varchar](150) NULL,
	[concienciaAtencion] [varchar](150) NULL,
	[lenguaje] [varchar](150) NULL,
	[pensamiento] [varchar](150) NULL,
	[precepcion] [varchar](150) NULL,
	[memoria] [varchar](150) NULL,
	[afecto] [varchar](150) NULL,
	[concienciaEnfermedad] [varchar](150) NULL,
	[dieta] [varchar](150) NULL,
	[cuidadosEnfermeria] [varchar](150) NULL,
	[medicacion] [varchar](150) NULL,
	[ayudaDiagnostico] [varchar](150) NULL,
	[procedimientoMedico] [varchar](150) NULL,
	[evaluacionPsicologica] [varchar](150) NULL,
	[interconsulta] [varchar](150) NULL,
	[estado] [int] NULL,
	[idEmpleadoCrea] [int] NULL,
	[fechaCrea] [datetime] NULL,
	[idEmpleadoEdit] [int] NULL,
	[fechaEdit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHcsm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hcsmregistroAuditoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hcsmregistroAuditoria](
	[IdAuditoria] [int] IDENTITY(1,1) NOT NULL,
	[IdHcsm] [varchar](10) NULL,
	[campoEditado] [varchar](100) NULL,
	[datoAnterior] [varchar](max) NULL,
	[datoNuevo] [varchar](max) NULL,
	[fechaCambio] [datetime] NULL,
	[idEmpleado] [int] NULL,
	[equipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAuditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCT_HojaConduccionTransfusion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCT_HojaConduccionTransfusion](
	[IdConduccionTransfusion] [int] IDENTITY(1,1) NOT NULL,
	[IdConduccionTransfusiones] [int] NULL,
	[Lote] [varchar](20) NULL,
	[Controles] [varchar](20) NULL,
	[Hora] [varchar](20) NULL,
	[pas] [int] NULL,
	[pad] [int] NULL,
	[FrecuenciaPulso] [int] NULL,
	[Respiraciones] [int] NULL,
	[Temperatura] [varchar](10) NULL,
	[Palides] [varchar](10) NULL,
	[Hematocrito] [varchar](10) NULL,
	[Cianosis] [varchar](10) NULL,
	[Sangrado] [varchar](10) NULL,
	[Plaquetas] [varchar](10) NULL,
	[VolumenSangrado] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCT_HojaConduccionTransfusionDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCT_HojaConduccionTransfusionDetalle](
	[IdConduccionTransfusionDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdConduccionTransfusiones] [int] NULL,
	[Hora] [varchar](20) NULL,
	[pas] [int] NULL,
	[pad] [int] NULL,
	[FrecuenciaPulso] [int] NULL,
	[Respiraciones] [int] NULL,
	[Temperatura] [varchar](10) NULL,
	[Hematocrito] [varchar](10) NULL,
	[Palides] [varchar](10) NULL,
	[Cianosis] [varchar](10) NULL,
	[Sangrado] [varchar](10) NULL,
	[VolumenSangrado] [int] NULL,
	[Plaquetas] [varchar](10) NULL,
	[VolumenTransfundido] [varchar](10) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCT_HojaConduccionTransfusiones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCT_HojaConduccionTransfusiones](
	[IdConduccionTransfusiones] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleado] [int] NULL,
	[IdEnfermero] [int] NULL,
	[Lote] [varchar](10) NULL,
	[volumen] [varchar](50) NULL,
	[sellocalidad] [varchar](10) NULL,
	[Hemocomponente] [varchar](100) NULL,
	[GrupoSanguineo] [varchar](10) NULL,
	[FactorRH] [varchar](10) NULL,
	[UsoDrogas] [int] NULL,
	[AlergiaMedicamento] [int] NULL,
	[Dialisis] [int] NULL,
	[Lues] [int] NULL,
	[OtrasAlergias] [int] NULL,
	[Linfugranuloma] [int] NULL,
	[Hepatitis] [int] NULL,
	[Asma] [int] NULL,
	[ContactoSexual] [int] NULL,
	[ConsumoAlcohol] [int] NULL,
	[Gonorrea] [int] NULL,
	[OtrosAntecedentes] [varchar](500) NULL,
	[EstadoConciencia] [varchar](80) NULL,
	[Estadocardiovascular] [varchar](80) NULL,
	[EstadoPulmonar] [varchar](80) NULL,
	[OtroEstadoClinico] [varchar](500) NULL,
	[DolorSubEsteral] [int] NULL,
	[Hemoglobina] [int] NULL,
	[Cefalea] [int] NULL,
	[Rash] [int] NULL,
	[Escalofrios] [int] NULL,
	[Hipotension] [int] NULL,
	[Urticaria] [int] NULL,
	[Fiebre] [int] NULL,
	[Vomitos] [int] NULL,
	[Disnea] [int] NULL,
	[OtrasRecciones] [varchar](500) NULL,
	[IdEmpleadoRegistra] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdEmpleadoModifica] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCT_HojaConduccionTransfusionesPrevias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCT_HojaConduccionTransfusionesPrevias](
	[IdTransfusionesPrevias] [int] IDENTITY(1,1) NOT NULL,
	[IdConduccionTransfusiones] [int] NULL,
	[Fecha] [date] NULL,
	[Unidad] [varchar](50) NULL,
	[Componentes] [varchar](50) NULL,
	[ReaccionesAdversas] [varchar](50) NULL,
	[Lugar] [varchar](50) NULL,
	[Observaciones] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Cabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Cabecera](
	[IdHisCabecera] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdHisLote] [int] NULL,
	[NroHojaHis] [int] NULL,
	[NroFormato] [int] NOT NULL,
	[IdTurno] [int] NOT NULL,
	[IdUsuario] [int] NULL,
	[IdEstadoHis] [int] NULL,
	[IdMedico] [int] NULL,
	[IdServEstablecimiento] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[IdEstablecimiento] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
 CONSTRAINT [PK__HIS_Cabecera__2D0AE9D4] PRIMARY KEY CLUSTERED 
(
	[IdHisCabecera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_CodigosActividades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_CodigosActividades](
	[IdHisCodActvidad] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTipoAtencion] [int] NULL,
	[CodigoActividad] [char](6) NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK__HIS_CodigosActiv__3A64E4F2] PRIMARY KEY CLUSTERED 
(
	[IdHisCodActvidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_colegios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_colegios](
	[cod_col] [char](2) NOT NULL,
	[des_col] [char](41) NOT NULL,
	[abevriatura] [varchar](50) NULL,
 CONSTRAINT [PK_HIS_colegios] PRIMARY KEY CLUSTERED 
(
	[cod_col] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_DatosEstablecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_DatosEstablecimiento](
	[IdDatoEstablec] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdEstablecimiento] [int] NULL,
	[Color] [varchar](30) NULL,
	[Turnos] [int] NULL,
	[UltimoNroFormatoHIS] [int] NULL,
 CONSTRAINT [PK__HIS_DatosEstable__0B74EBDF] PRIMARY KEY CLUSTERED 
(
	[IdDatoEstablec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Detalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Detalle](
	[IdHisDetalle] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdHisCabecera] [int] NULL,
	[IdTipoAtencion] [int] NULL,
	[DiaAtencion] [int] NOT NULL,
	[IdHisPaciente] [int] NULL,
	[CodigoActividad] [varchar](10) NULL,
	[IdTipoFinanciamiento] [int] NULL,
	[IdDistrito] [int] NULL,
	[IdTipoEdad] [int] NULL,
	[Edad] [int] NULL,
	[Talla] [int] NULL,
	[Peso] [char](50) NULL,
	[IdEstadoaEstablec] [int] NULL,
	[IdEstadoaServicio] [int] NULL,
	[NroRegistroLote] [int] NULL,
	[NroRegistroHoja] [int] NULL,
 CONSTRAINT [PK__HIS_Detalle__2EF33246] PRIMARY KEY CLUSTERED 
(
	[IdHisDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Detalle_Verifica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Detalle_Verifica](
	[IdHisDetalle] [int] NOT NULL,
	[IdHisCabecera] [int] NOT NULL,
	[IdTipoAtencion] [int] NULL,
	[DiaAtencion] [int] NULL,
	[Sexo] [int] NULL,
	[IdNacionalidad] [int] NULL,
	[NroDocIdentidad] [varchar](12) NULL,
	[NroHijo] [char](2) NULL,
	[IdEtnia] [char](2) NULL,
	[IdTipoDocumento] [int] NULL,
	[NroHC_FF] [varchar](20) NULL,
	[CodigoActividad] [varchar](10) NULL,
	[IdTipoFinanciamiento] [int] NULL,
	[IdDistrito] [int] NULL,
	[IdTipoEdad] [int] NULL,
	[Edad] [int] NULL,
	[Talla] [int] NULL,
	[Peso] [char](50) NULL,
	[IdEstadoaEstablec] [int] NULL,
	[IdEstadoaServicio] [int] NULL,
	[NroRegistroLote] [int] NULL,
	[NroRegistroHoja] [int] NULL,
	[Registrado] [int] NOT NULL,
	[Coincide] [int] NULL,
 CONSTRAINT [PK_HIS_Detalle_Verifica] PRIMARY KEY CLUSTERED 
(
	[IdHisDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_DetalleDiagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_DetalleDiagnostico](
	[IdHisDetalleDiagnostico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdHisDetalle] [int] NULL,
	[IdCIE] [int] NULL,
	[IdSubClasificacionDX] [int] NULL,
	[CodLAB] [varchar](30) NULL,
 CONSTRAINT [PK__HIS_DetalleDiagn__34AC0B9C] PRIMARY KEY CLUSTERED 
(
	[IdHisDetalleDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_DetalleDx_Verifica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_DetalleDx_Verifica](
	[IdHisDetalle] [int] NOT NULL,
	[IdCIE] [int] NOT NULL,
	[IdSubClasificacionDX] [int] NULL,
	[CodLAB] [varchar](30) NULL,
 CONSTRAINT [PK_HIS_DetalleDx_Verifica] PRIMARY KEY CLUSTERED 
(
	[IdHisDetalle] ASC,
	[IdCIE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_DxOmitidos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_DxOmitidos](
	[NroPagina] [int] NOT NULL,
	[Codigo1] [varchar](6) NOT NULL,
	[Codigo2] [varchar](6) NOT NULL,
	[Codigo3] [varchar](6) NOT NULL,
	[Codigo4] [varchar](6) NOT NULL,
	[Codigo5] [varchar](6) NOT NULL,
	[Codigo6] [varchar](6) NOT NULL,
	[LabConf1] [varchar](3) NULL,
	[LabConf2] [varchar](3) NULL,
	[LabConf3] [varchar](3) NULL,
	[LabConf4] [varchar](3) NULL,
	[LabConf5] [varchar](3) NULL,
	[LabConf6] [varchar](3) NULL,
	[Diagnost1] [varchar](1) NOT NULL,
	[Diagnost2] [varchar](1) NOT NULL,
	[Diagnost3] [varchar](1) NOT NULL,
	[Diagnost4] [varchar](1) NOT NULL,
	[Diagnost5] [varchar](1) NOT NULL,
	[Diagnost6] [varchar](1) NOT NULL,
	[Edad] [int] NOT NULL,
	[TIP_EDAD] [varchar](1) NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
	[Peso] [money] NOT NULL,
	[FichaFam] [varchar](10) NULL,
	[Establecimiento] [varchar](1) NOT NULL,
	[Servicio] [varchar](1) NOT NULL,
	[CODVALIDACION] [int] NULL,
	[IdLote] [int] NULL,
	[DiaAtencion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_ESTAB]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_ESTAB](
	[COD_ESTAB] [nvarchar](9) NULL,
	[DESC_ESTAB] [nvarchar](44) NULL,
	[COD_2000] [float] NOT NULL,
	[TIPOESTAB] [nvarchar](1) NULL,
	[COD_DPTO] [nvarchar](2) NULL,
	[COD_PROV] [nvarchar](2) NULL,
	[COD_DIST] [nvarchar](2) NULL,
	[COD_DISA] [nvarchar](2) NULL,
	[COD_RED] [nvarchar](2) NULL,
	[COD_MIC] [nvarchar](2) NULL,
 CONSTRAINT [PK_HIS_ESTAB] PRIMARY KEY CLUSTERED 
(
	[COD_2000] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[His_Establecimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[His_Establecimientos](
	[IdEstablecimiento] [int] NOT NULL,
 CONSTRAINT [PK_His_Establecimientos] PRIMARY KEY CLUSTERED 
(
	[IdEstablecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_EstablecPacienteHIS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_EstablecPacienteHIS](
	[IdEstablecPacienteHIS] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdEstablecimiento] [int] NULL,
	[IdHisPaciente] [int] NULL,
	[NroHC_FF] [varchar](20) NOT NULL,
 CONSTRAINT [PK__HIS_EstablecPaci__4E36D375] PRIMARY KEY CLUSTERED 
(
	[IdEstablecPacienteHIS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[His_EstadosCalidad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[His_EstadosCalidad](
	[IdEstado] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_His_EstadosCalidad] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[His_EstadosLote]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[His_EstadosLote](
	[IdEstado] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_His_EstadosLote] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_FACTCATALOGOSERVICIOS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_FACTCATALOGOSERVICIOS](
	[IdDiagCpt] [int] NOT NULL,
	[CodigoDiagCpt] [varchar](20) NULL,
	[DescripcionDiagCpt] [varchar](1000) NULL,
	[EsCpt] [varchar](1) NULL,
	[CodCondicion] [varchar](1) NULL,
	[DxSexo] [varchar](4) NULL,
	[CodigoDiagCptSinPunto] [varchar](20) NULL,
	[MasDeUnDiagnosticos] [varchar](20) NULL,
 CONSTRAINT [PK_HIS_FACTCATALOGOSERVICIOS] PRIMARY KEY CLUSTERED 
(
	[IdDiagCpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Financiador]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Financiador](
	[IdCodigoFinancHis] [int] NOT NULL,
	[DescripcionFinancHis] [varchar](50) NULL,
	[IdFuenteFinanciamiento] [int] NULL,
 CONSTRAINT [PK_HIS_Financiador] PRIMARY KEY CLUSTERED 
(
	[IdCodigoFinancHis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[his_historicoAtenciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[his_historicoAtenciones](
	[idPaciente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[diagnost] [varchar](6) NULL,
	[cpt] [varchar](6) NULL,
	[ups] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Lotes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Lotes](
	[IdHisLote] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdEstablecimiento] [int] NULL,
	[Lote] [char](3) NULL,
	[NroHojas] [int] NULL,
	[Mes] [int] NULL,
	[Anio] [int] NULL,
	[Cerrado] [int] NOT NULL,
	[idEstadoLote] [int] NULL,
	[DobleDigitacion] [int] NOT NULL,
 CONSTRAINT [PK__HIS_Lotes__2B22A162] PRIMARY KEY CLUSTERED 
(
	[IdHisLote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Meses]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Meses](
	[IdMes] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_HIS_Meses] PRIMARY KEY CLUSTERED 
(
	[IdMes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Paciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Paciente](
	[IdHisPaciente] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Sexo] [int] NULL,
	[IdNacionalidad] [int] NULL,
	[NroDocIdentidad] [varchar](12) NULL,
	[NroHijo] [char](2) NULL,
	[IdEtnia] [char](2) NULL,
	[IdPacienteGalenHos] [int] NULL,
	[IdTipoDocumento] [int] NULL,
 CONSTRAINT [PK__HIS_Paciente__32C3C32A] PRIMARY KEY CLUSTERED 
(
	[IdHisPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_ProgMedEstMR]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_ProgMedEstMR](
	[IdHisProgMedEstMR] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdMedico] [int] NULL,
	[IdServicio] [int] NULL,
	[IdEstablecimiento] [int] NULL,
	[FechaProgramada] [datetime] NULL,
	[IdTurno] [int] NULL,
 CONSTRAINT [PK__HIS_ProgMedEstMR__3C4D2D64] PRIMARY KEY CLUSTERED 
(
	[IdHisProgMedEstMR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_ServEstablecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_ServEstablecimiento](
	[IdEstablecimiento] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
 CONSTRAINT [PK_HIS_ServEstablecimiento] PRIMARY KEY CLUSTERED 
(
	[IdEstablecimiento] ASC,
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_situacio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_situacio](
	[IdHisSituacio] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[valores] [char](5) NULL,
	[descripcio] [char](40) NOT NULL,
	[codigo] [numeric](5, 0) NOT NULL,
	[est] [char](1) NOT NULL,
 CONSTRAINT [PK_HISsituacio] PRIMARY KEY CLUSTERED 
(
	[IdHisSituacio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_tabetnia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_tabetnia](
	[codetni] [char](2) NOT NULL,
	[desetni] [char](48) NOT NULL,
	[codgen] [char](2) NOT NULL,
	[etnias] [char](24) NOT NULL,
 CONSTRAINT [PK_HIS_tabetnia] PRIMARY KEY CLUSTERED 
(
	[codetni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_TEMPORAL]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_TEMPORAL](
	[Codigo1] [varchar](6) NOT NULL,
	[Codigo2] [varchar](6) NOT NULL,
	[Codigo3] [varchar](6) NOT NULL,
	[Codigo4] [varchar](6) NOT NULL,
	[Codigo5] [varchar](6) NOT NULL,
	[Codigo6] [varchar](6) NOT NULL,
	[LabConf1] [varchar](3) NULL,
	[LabConf2] [varchar](3) NULL,
	[LabConf3] [varchar](3) NULL,
	[LabConf4] [varchar](3) NULL,
	[LabConf5] [varchar](3) NULL,
	[LabConf6] [varchar](3) NULL,
	[Diagnost1] [varchar](1) NOT NULL,
	[Diagnost2] [varchar](1) NOT NULL,
	[Diagnost3] [varchar](1) NOT NULL,
	[Diagnost4] [varchar](1) NOT NULL,
	[Diagnost5] [varchar](1) NOT NULL,
	[Diagnost6] [varchar](1) NOT NULL,
	[Edad] [int] NOT NULL,
	[TIP_EDAD] [varchar](1) NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
	[Peso] [money] NOT NULL,
	[FichaFam] [varchar](10) NULL,
	[Establecimiento] [varchar](1) NULL,
	[Servicio] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_TemporalSexo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_TemporalSexo](
	[CieCpt] [varchar](50) NOT NULL,
	[DxSexo] [int] NULL,
	[EsCpt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_TipoAtencion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_TipoAtencion](
	[IdHisTipoAtencion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [char](3) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK__HIS_TipoAtencion__30DB7AB8] PRIMARY KEY CLUSTERED 
(
	[IdHisTipoAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_TipoEdad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_TipoEdad](
	[IdHisTipoEdad] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CodigoEdad] [char](1) NULL,
	[Descripcion] [varchar](5) NULL,
 CONSTRAINT [PK__HIS_TipoEdad__3694540E] PRIMARY KEY CLUSTERED 
(
	[IdHisTipoEdad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_Turnos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_Turnos](
	[IdHisTurno] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Descripcion] [varchar](10) NULL,
 CONSTRAINT [PK__HIS_Turnos__3E3575D6] PRIMARY KEY CLUSTERED 
(
	[IdHisTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HIS_VALIDACIONES]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HIS_VALIDACIONES](
	[CODVALIDACION] [int] NOT NULL,
	[TXTDESCRIPCION] [varchar](300) NOT NULL,
	[TXTVALIDACION] [varchar](2000) NULL,
	[TXTARCHIVO] [varchar](100) NULL,
	[TXTNPAGINA] [varchar](100) NULL,
	[CodCondicion] [varchar](1) NULL,
	[FECACTIVACION] [datetime] NOT NULL,
	[FECINACTIVACION] [datetime] NOT NULL,
	[CCH] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriasClinicas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriasClinicas](
	[NroHistoriaClinica] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaPasoAPasivo] [datetime] NULL,
	[IdTipoHistoria] [int] NOT NULL,
	[IdEstadoHistoria] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[IdTipoNumeracion] [int] NOT NULL,
	[NroHistoriaClinicaAnterior] [int] NULL,
	[IdTipoNumeracionAnterior] [int] NULL,
	[HistoriaSistemaAnterior] [varchar](50) NULL,
	[IdServicio] [int] NULL,
	[IdEmpleado] [int] NULL,
	[Modulo] [varchar](50) NULL,
	[idEstadoEnvio] [int] NULL,
 CONSTRAINT [HistoriasClinicas_PK] PRIMARY KEY CLUSTERED 
(
	[NroHistoriaClinica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriasClinicas_borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriasClinicas_borrados](
	[NroHistoriaClinica] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaPasoAPasivo] [datetime] NULL,
	[IdTipoHistoria] [int] NOT NULL,
	[IdEstadoHistoria] [int] NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[IdTipoNumeracion] [int] NOT NULL,
	[NroHistoriaClinicaAnterior] [int] NULL,
	[IdTipoNumeracionAnterior] [int] NULL,
	[HistoriaSistemaAnterior] [varchar](50) NULL,
	[IdFuncional] [int] NULL,
	[IdEmpleado] [int] NULL,
	[Modulo] [varchar](50) NULL,
	[idEstadoEnvio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriasSolicitadas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriasSolicitadas](
	[IdHistoriaSolicitada] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[FechaSolicitud] [datetime] NULL,
	[HoraSolicitud] [char](5) NULL,
	[FechaRequerida] [datetime] NULL,
	[HoraRequerida] [char](5) NULL,
	[IdMotivo] [int] NULL,
	[IdServicio] [int] NULL,
	[Observacion] [varchar](150) NULL,
	[IdMovimiento] [int] NULL,
	[IdEmpleadoSolicita] [int] NULL,
	[FechaHoraReg] [datetime] NULL,
	[IdAtencion] [int] NULL,
 CONSTRAINT [HistoriasSolicitadas_PK] PRIMARY KEY CLUSTERED 
(
	[IdHistoriaSolicitada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoEstadosCitaControl]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoEstadosCitaControl](
	[IdCuentaAtencion] [int] NULL,
	[IdEspecialidad] [int] NULL,
	[IdEstadoVincula] [int] NULL,
	[Observacion] [varchar](2000) NULL,
	[FechaRegistro] [datetime] NULL,
	[Idusuario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoja1$]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoja1$](
	[id] [float] NULL,
	[idGrupo] [float] NULL,
	[Grupo] [nvarchar](255) NULL,
	[idSeccion] [float] NULL,
	[Seccion] [nvarchar](255) NULL,
	[idSubseccion] [nvarchar](255) NULL,
	[Subseccion] [nvarchar](255) NULL,
	[CPT] [nvarchar](255) NULL,
	[NombreMinsa] [nvarchar](255) NULL,
	[F10] [nvarchar](255) NULL,
	[F11] [nvarchar](255) NULL,
	[F12] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HojaConduccionLotePedido]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HojaConduccionLotePedido](
	[IdLotePedidoSangre] [int] IDENTITY(1,1) NOT NULL,
	[IdTransfusionesMasivas] [int] NULL,
	[Lote] [varchar](10) NULL,
	[DescripcionLote] [varchar](50) NULL,
	[snc] [varchar](10) NULL,
	[Componentes] [varchar](100) NULL,
	[GrupoSanguineo] [varchar](10) NULL,
	[FactorRH] [varchar](10) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HojaConduccionTransfusion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HojaConduccionTransfusion](
	[IdConduccionTransfusion] [int] IDENTITY(1,1) NOT NULL,
	[IdTransfusionesMasivas] [int] NULL,
	[Lote] [varchar](20) NULL,
	[Controles] [varchar](20) NULL,
	[Hora] [varchar](20) NULL,
	[pas] [int] NULL,
	[pad] [int] NULL,
	[FrecuenciaPulso] [int] NULL,
	[Respiraciones] [int] NULL,
	[Temperatura] [varchar](10) NULL,
	[Palides] [varchar](10) NULL,
	[Hematocrito] [varchar](10) NULL,
	[Cianosis] [varchar](10) NULL,
	[Sangrado] [varchar](10) NULL,
	[Plaquetas] [varchar](10) NULL,
	[VolumenSangrado] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HojaConduccionTransfusionesMasivas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HojaConduccionTransfusionesMasivas](
	[IdTransfusionesMasivas] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleado] [int] NULL,
	[IdEnfermero] [int] NULL,
	[UsoDrogas] [int] NULL,
	[AlergiaMedicamento] [int] NULL,
	[Dialisis] [int] NULL,
	[Lues] [int] NULL,
	[OtrasAlergias] [int] NULL,
	[Linfugranuloma] [int] NULL,
	[Hepatitis] [int] NULL,
	[Asma] [int] NULL,
	[ContactoSexual] [int] NULL,
	[ConsumoAlcohol] [int] NULL,
	[Gonorrea] [int] NULL,
	[Otros] [varchar](500) NULL,
	[EstadoConciencia] [varchar](80) NULL,
	[Estadocardiovascular] [varchar](80) NULL,
	[EstadoPulmonar] [varchar](80) NULL,
	[DolorSubEnteral] [int] NULL,
	[Fiebre] [int] NULL,
	[Urticaria] [int] NULL,
	[Hemoglobina] [int] NULL,
	[Escalofrios] [int] NULL,
	[Tos] [int] NULL,
	[SangradoCapa] [int] NULL,
	[Hipotension] [int] NULL,
	[Disnea] [int] NULL,
	[OtrasRecciones] [varchar](500) NULL,
	[IdEmpleadoRegistra] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
	[FechaModificacion] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HojaConduccionTransfusionesPrevias]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HojaConduccionTransfusionesPrevias](
	[IdTransfusionesPrevias] [int] IDENTITY(1,1) NOT NULL,
	[IdTransfusionesMasivas] [int] NULL,
	[Fecha] [date] NULL,
	[Unidad] [varchar](50) NULL,
	[Componentes] [varchar](50) NULL,
	[ReaccionesAdversas] [varchar](50) NULL,
	[Lugar] [varchar](50) NULL,
	[Observaciones] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP_CondicionAltaURPA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP_CondicionAltaURPA](
	[idCondicionAlta] [int] IDENTITY(1,1) NOT NULL,
	[idHojaIngreso] [int] NULL,
	[fecha_alta] [date] NULL,
	[hora_alta] [varchar](5) NULL,
	[anestesiologo_egreso] [int] NULL,
	[aldrete_actividad] [int] NULL,
	[aldrete_respitracion] [int] NULL,
	[aldrete_circulacion] [int] NULL,
	[aldrete_conciencia] [int] NULL,
	[aldrete_color] [int] NULL,
	[aldrete_total] [int] NULL,
	[andersen] [int] NULL,
	[bromage] [int] NULL,
	[glasgow_ao] [varchar](5) NULL,
	[glasgow_rv] [varchar](5) NULL,
	[glasgow_rm] [varchar](5) NULL,
	[glasgow_total] [varchar](6) NULL,
	[ras] [varchar](4) NULL,
	[ransay] [varchar](4) NULL,
	[destino_alta] [int] NULL,
	[estado] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[usuario_registro] [int] NULL,
	[fecha_actualiza] [datetime] NULL,
	[usuario_actualiza] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCondicionAlta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP_CondicionesAlta_Observaciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP_CondicionesAlta_Observaciones](
	[idObservacion] [int] IDENTITY(1,1) NOT NULL,
	[idCondicionAlta] [int] NULL,
	[observacion] [varchar](250) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idObservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP_EvolucionMedica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP_EvolucionMedica](
	[idEvolucion] [int] IDENTITY(1,1) NOT NULL,
	[idHojaIngreso] [int] NULL,
	[subjetivo] [text] NULL,
	[objetivo] [text] NULL,
	[apreciacion] [text] NULL,
	[ev_plan] [text] NULL,
	[estado] [char](1) NULL,
	[usuario_registra] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEvolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP_EvolucionMedica_Diagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP_EvolucionMedica_Diagnostico](
	[idDxEvolucion] [int] IDENTITY(1,1) NOT NULL,
	[idEvolucion] [int] NULL,
	[idDiagnostico] [int] NULL,
	[tipoDiagnostico] [int] NULL,
	[estado] [char](1) NULL,
	[usuario_registra] [int] NULL,
	[fecha_registro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDxEvolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP_HojaIngresoURPA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP_HojaIngresoURPA](
	[idHojaIngreso] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[fecha_ingreso] [date] NULL,
	[hora_ingreso] [varchar](5) NULL,
	[cama] [varchar](6) NULL,
	[cirugia] [int] NULL,
	[cirujano_1] [int] NULL,
	[cirujano_2] [int] NULL,
	[anestesiologo] [int] NULL,
	[tipo_anestesia] [int] NULL,
	[palidez] [bit] NULL,
	[cianosis] [bit] NULL,
	[rubor] [bit] NULL,
	[rash] [bit] NULL,
	[diaforesis] [bit] NULL,
	[tos] [bit] NULL,
	[bronespasmo] [bit] NULL,
	[excitacion] [bit] NULL,
	[hipertermia] [bit] NULL,
	[aldrete_actividad] [int] NULL,
	[aldrete_respitracion] [int] NULL,
	[aldrete_circulacion] [int] NULL,
	[aldrete_conciencia] [int] NULL,
	[aldrete_color] [int] NULL,
	[aldrete_total] [int] NULL,
	[bromage] [int] NULL,
	[glasgow_ao] [varchar](5) NULL,
	[glasgow_rv] [varchar](5) NULL,
	[glasgow_rm] [varchar](5) NULL,
	[glasgow_total] [varchar](6) NULL,
	[ras] [varchar](4) NULL,
	[ransay] [varchar](4) NULL,
	[andersen] [int] NULL,
	[via_aerea] [int] NULL,
	[apoyo_ventilatorio] [int] NULL,
	[cat_periferica] [bit] NULL,
	[cat_central] [bit] NULL,
	[cat_linea_art] [bit] NULL,
	[cat_epidural] [bit] NULL,
	[cat_nasogastrica] [bit] NULL,
	[cat_vesical] [bit] NULL,
	[cat_drenajes] [bit] NULL,
	[anestesiologo_2] [int] NULL,
	[estado] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[usuario_registro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHojaIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRP_IngresoUrpa_Observaciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRP_IngresoUrpa_Observaciones](
	[idObservacion] [int] IDENTITY(1,1) NOT NULL,
	[idHojaIngreso] [int] NULL,
	[observacion] [varchar](250) NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idObservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ICI_MINSA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ICI_MINSA](
	[codigo_eje] [varchar](5) NOT NULL,
	[codigo_pre] [varchar](7) NULL,
	[tipsum] [varchar](1) NOT NULL,
	[annomes] [varchar](1) NOT NULL,
	[codigo_med] [varchar](7) NULL,
	[saldo] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[ingre] [int] NOT NULL,
	[reingre] [int] NOT NULL,
	[venta] [int] NOT NULL,
	[sis] [int] NOT NULL,
	[intersan] [int] NOT NULL,
	[fec_perd] [int] NOT NULL,
	[defnac] [int] NOT NULL,
	[exo] [int] NOT NULL,
	[soat] [int] NOT NULL,
	[otr_conv] [int] NOT NULL,
	[devol] [int] NOT NULL,
	[vencido] [int] NOT NULL,
	[merma] [int] NOT NULL,
	[credhosp] [int] NOT NULL,
	[distri] [int] NOT NULL,
	[transf] [int] NOT NULL,
	[ventainst] [int] NOT NULL,
	[dev_ven] [int] NOT NULL,
	[dev_merma] [int] NOT NULL,
	[otras_sal] [int] NOT NULL,
	[stock_fin] [money] NULL,
	[stock_fin1] [money] NULL,
	[req] [int] NOT NULL,
	[total] [int] NOT NULL,
	[fec_exp] [datetime] NOT NULL,
	[do_saldo] [int] NOT NULL,
	[do_ingre] [int] NOT NULL,
	[do_con] [int] NOT NULL,
	[do_otr] [int] NOT NULL,
	[do_tot] [int] NOT NULL,
	[do_stk] [int] NOT NULL,
	[do_fecexp] [varchar](1) NOT NULL,
	[fecha] [varchar](1) NOT NULL,
	[usuario] [varchar](1) NOT NULL,
	[indiproc] [varchar](1) NOT NULL,
	[sit] [varchar](1) NOT NULL,
	[indisiga] [varchar](1) NOT NULL,
	[dstkcero] [varchar](1) NOT NULL,
	[mcodigo] [varchar](1) NOT NULL,
	[inv_feb] [varchar](1) NOT NULL,
	[fechap] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ICIDiarioCenares]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ICIDiarioCenares](
	[cod_pre] [varchar](50) NULL,
	[tip_sum] [varchar](50) NULL,
	[periodo] [varchar](25) NULL,
	[cod_siga] [varchar](50) NULL,
	[cod_sismed] [varchar](50) NULL,
	[cod_med] [varchar](50) NULL,
	[saldo] [int] NULL,
	[precio] [decimal](10, 5) NULL,
	[ingresos] [int] NULL,
	[fec_ing] [varchar](20) NULL,
	[st_sal1] [int] NULL,
	[st_sal2] [int] NULL,
	[st_sal3] [int] NULL,
	[st_sal4] [int] NULL,
	[st_sal5] [int] NULL,
	[st_sal6] [int] NULL,
	[st_sal7] [int] NULL,
	[st_sal8] [int] NULL,
	[t_salidas] [int] NULL,
	[stock_final] [int] NULL,
	[fec_exp] [varchar](20) NULL,
	[lote] [varchar](20) NULL,
	[reg_sanit] [varchar](50) NULL,
	[resp_farm] [varchar](100) NULL,
	[telf_resp] [varchar](100) NULL,
	[mail_resp] [varchar](100) NULL,
	[hora_registro] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ICIDiarios]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ICIDiarios](
	[CODIGO_EJE] [varchar](3) NULL,
	[CODIGO_PRE] [varchar](12) NULL,
	[TIPSUM] [char](1) NULL,
	[PERIODO] [varchar](8) NULL,
	[CODIGO_MED] [varchar](5) NULL,
	[PRECIO_ADQUISICION] [decimal](15, 6) NULL,
	[PRECIO_OPERACION] [decimal](15, 6) NULL,
	[SALDO] [int] NULL,
	[INGRE] [int] NULL,
	[REINGRE] [int] NULL,
	[VENTA] [int] NULL,
	[SIS] [int] NULL,
	[INTERSAN] [int] NULL,
	[FAC_PERD] [int] NULL,
	[DEFNAC] [int] NULL,
	[EXO] [int] NULL,
	[SOAT] [int] NULL,
	[CREDHOSP] [int] NULL,
	[OTR_CONV] [int] NULL,
	[DEVOL] [int] NULL,
	[VENCIDO] [int] NULL,
	[MERMA] [int] NULL,
	[DISTRI] [int] NULL,
	[TRANSF] [int] NULL,
	[VENTAINST] [int] NULL,
	[DEV_VEN] [int] NULL,
	[DEV_MERMA] [int] NULL,
	[OTRAS_SAL] [int] NULL,
	[TOTAL] [int] NULL,
	[STOCK_FIN] [int] NULL,
	[FEC_EXP] [date] NULL,
	[REQUERIMIENTO] [int] NULL,
	[DO_SALDO] [int] NULL,
	[DO_INGRE] [int] NULL,
	[DO_CON] [int] NULL,
	[DO_OTR] [int] NULL,
	[DO_TOT] [int] NULL,
	[DO_STK] [int] NULL,
	[DO_FECEXP] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ICIDiarios2]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ICIDiarios2](
	[CODIGO_EJE] [varchar](3) NULL,
	[CODIGO_PRE] [varchar](12) NULL,
	[TIPSUM] [char](1) NULL,
	[PERIODO] [varchar](8) NULL,
	[CODIGO_MED] [varchar](5) NULL,
	[PRECIO_ADQUISICION] [decimal](18, 0) NULL,
	[PRECIO_OPERACION] [decimal](15, 6) NULL,
	[SALDO] [int] NULL,
	[INGRE] [int] NULL,
	[REINGRE] [int] NULL,
	[VENTA] [int] NULL,
	[SIS] [int] NULL,
	[INTERSAN] [int] NULL,
	[FAC_PERD] [int] NULL,
	[DEFNAC] [int] NULL,
	[EXO] [int] NULL,
	[SOAT] [int] NULL,
	[CREDHOSP] [int] NULL,
	[OTR_CONV] [int] NULL,
	[DEVOL] [int] NULL,
	[VENCIDO] [int] NULL,
	[MERMA] [int] NULL,
	[DISTRI] [int] NULL,
	[TRANSF] [int] NULL,
	[VENTAINST] [int] NULL,
	[DEV_VEN] [int] NULL,
	[DEV_MERMA] [int] NULL,
	[OTRAS_SAL] [int] NULL,
	[TOTAL] [int] NULL,
	[STOCK_FIN] [int] NULL,
	[FEC_EXP] [date] NULL,
	[REQUERIMIENTO] [int] NULL,
	[DO_SALDO] [int] NULL,
	[DO_INGRE] [int] NULL,
	[DO_CON] [int] NULL,
	[DO_OTR] [int] NULL,
	[DO_TOT] [int] NULL,
	[DO_STK] [int] NULL,
	[DO_FECEXP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagCatalgoServicioDuracion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagCatalgoServicioDuracion](
	[IdProducto] [int] NOT NULL,
	[DuracionEnMin] [money] NOT NULL,
	[EsActivo] [bit] NOT NULL,
	[FechaCrea] [datetime] NOT NULL,
	[FechaEdita] [datetime] NULL,
 CONSTRAINT [PK_ImagCatalgoServicioDuracion] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagEstados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagEstados](
	[IdImagEstado] [int] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ImagEstados] PRIMARY KEY CLUSTERED 
(
	[IdImagEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMotivoSalidas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMotivoSalidas](
	[idMotivoSalida] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[motivo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ImagMotivosSalidas] PRIMARY KEY CLUSTERED 
(
	[idMotivoSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMovimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMovimiento](
	[IdMovimiento] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[IdTipoConcepto] [int] NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdImagEstado] [int] NOT NULL,
	[EstadoRis] [varchar](1) NULL,
 CONSTRAINT [PK_ImagMovimiento] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMovimientoCPT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMovimientoCPT](
	[idMovimiento] [int] NOT NULL,
	[idProductoCPT] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[importe] [money] NOT NULL,
 CONSTRAINT [PK_ImagMovimientoCPT] PRIMARY KEY CLUSTERED 
(
	[idMovimiento] ASC,
	[idProductoCPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMovimientoDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMovimientoDetalle](
	[idMovimiento] [int] NOT NULL,
	[idProductoCPT] [int] NULL,
	[idProducto] [int] NOT NULL,
	[CantidadFallada] [int] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMovimientoImagenes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMovimientoImagenes](
	[IdMovimiento] [int] NOT NULL,
	[IdOrden] [int] NOT NULL,
	[CorrelativoAnual] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdComprobantePago] [int] NULL,
	[idPersonaTomaImagen] [int] NULL,
	[idPersonaRecoge] [int] NULL,
	[zonaRayosX] [varchar](50) NULL,
	[PorcInformeRadiolog] [money] NULL,
	[ResultadoFinal] [varchar](1000) NULL,
	[EsContraste] [int] NULL,
	[EsContrasteIonico] [int] NULL,
	[idDiagnostico] [int] NULL,
	[EsDiagnosticoDefinitivo] [int] NULL,
	[Eo_FUM] [datetime] NULL,
	[Eo_Gestantes] [varchar](2) NULL,
	[Eo_Partos] [varchar](20) NULL,
	[Eo_EG] [int] NULL,
	[Paciente] [varchar](100) NULL,
	[IdTipoSexo] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
 CONSTRAINT [PK_ImagMovimientoRayosX] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMovimientoIngresos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMovimientoIngresos](
	[IdMovimiento] [int] NOT NULL,
	[NroDocumento] [varchar](20) NULL,
	[IdPersonaRecepciona] [int] NULL,
 CONSTRAINT [PK_ImagMovimientoIngresos] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMovimientoResultados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMovimientoResultados](
	[IdMovimiento] [int] NOT NULL,
	[IdOrden] [int] NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdProducto] [varchar](50) NOT NULL,
	[ResultadoFinal] [varchar](5000) NULL,
	[IdUsuario] [int] NULL,
	[Estado] [bit] NULL,
	[CodigoIMR] [varchar](50) NULL,
	[IdComprobantePago] [int] NULL,
	[ide] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagMovimientoSalidas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagMovimientoSalidas](
	[IdMovimiento] [int] NOT NULL,
	[IdResponsable] [int] NOT NULL,
	[IdMotivoSalida] [int] NOT NULL,
 CONSTRAINT [PK_ImagMovimientoSalidas] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagRecojeExamen]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagRecojeExamen](
	[idRecojeExamen] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RecojeExamen] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ImagRecojeExamen] PRIMARY KEY CLUSTERED 
(
	[idRecojeExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagSala]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagSala](
	[IdSala] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTipoModalidadSala] [int] NOT NULL,
	[Sala] [varchar](50) NOT NULL,
	[Codigo] [varchar](15) NOT NULL,
	[EsActivo] [bit] NOT NULL,
	[FechaCrea] [datetime] NOT NULL,
	[FechaEdita] [datetime] NULL,
 CONSTRAINT [PK_ImagSala] PRIMARY KEY CLUSTERED 
(
	[IdSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagSalaPuntoCarga]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagSalaPuntoCarga](
	[IdSala] [int] NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[EsActivo] [bit] NOT NULL,
	[FechsCrea] [datetime] NOT NULL,
	[FechaEdita] [datetime] NULL,
 CONSTRAINT [PK_ImagSalaPuntoCarga] PRIMARY KEY CLUSTERED 
(
	[IdSala] ASC,
	[IdPuntoCarga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagTipoConceptos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagTipoConceptos](
	[idTipoConcepto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Concepto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ImagTipoConceptos] PRIMARY KEY CLUSTERED 
(
	[idTipoConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagTipoModalidadSala]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagTipoModalidadSala](
	[IdTipoModalidadSala] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TipoModalidadSala] [varchar](50) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[EsActivo] [bit] NOT NULL,
	[FechaCrea] [datetime] NOT NULL,
	[FechaEdita] [datetime] NULL,
 CONSTRAINT [PK_ImagTipoModalidadSala] PRIMARY KEY CLUSTERED 
(
	[IdTipoModalidadSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabConfiguracionLaboratorio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabConfiguracionLaboratorio](
	[IdConfiguracionLaboratorio] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[HoraInicio] [varchar](5) NOT NULL,
	[HoraFin] [varchar](5) NOT NULL,
	[NroCupos] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConfiguracionLaboratorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabConfiguracionModalidad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabConfiguracionModalidad](
	[IdConfiguracionModalidad] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[IdModalidad] [int] NOT NULL,
	[NroCupos] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConfiguracionModalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabEmergenciaTemp]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabEmergenciaTemp](
	[IdReceta] [int] NULL,
	[IdItem] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabEstados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabEstados](
	[IdEstado] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[Icono] [varchar](200) NULL,
	[Color] [varchar](100) NULL,
	[Estado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabInfectologia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabInfectologia](
	[Fecha] [date] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabLaboratorioDobleTicket]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabLaboratorioDobleTicket](
	[IdProducto] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabModalidades]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabModalidades](
	[IdModalidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabModalidadesEmergencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabModalidadesEmergencia](
	[IdModalidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabObservacionesEmergencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabObservacionesEmergencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReceta] [int] NULL,
	[Observacion] [varchar](1000) NULL,
	[UsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioActualiza] [int] NULL,
	[FechaActualiza] [datetime] NULL,
	[UsuarioElimina] [int] NULL,
	[FechaElimina] [datetime] NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabOrdenesNuevas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabOrdenesNuevas](
	[IdReceta] [int] NOT NULL,
	[IdRecetaNueva] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabParametros]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabParametros](
	[IdParametro] [int] IDENTITY(1,1) NOT NULL,
	[ValorTexto] [varchar](200) NULL,
	[ValorInt] [int] NULL,
	[Descripcion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabPersonalLaboratorio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabPersonalLaboratorio](
	[IdEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabProgramacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabProgramacion](
	[IdProgramacion] [int] IDENTITY(1,1) NOT NULL,
	[IdReceta] [int] NOT NULL,
	[IdItem] [int] NULL,
	[IdMovimiento] [int] NULL,
	[IdServicio] [int] NULL,
	[Fecha] [date] NULL,
	[HoraInicio] [varchar](5) NULL,
	[HoraFin] [varchar](5) NULL,
	[IdEstado] [int] NOT NULL,
	[Observacion] [varchar](500) NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[TurnoAdicional] [int] NULL,
	[IdMedico] [int] NULL,
	[Id] [int] NULL,
	[IdModalidad] [int] NULL,
	[FechaProg] [date] NULL,
	[HoraInicioProg] [varchar](5) NULL,
	[HoraFinProg] [varchar](5) NULL,
	[UsuarioReprogramacion] [int] NULL,
	[FechaReprogramacion] [datetime] NULL,
	[IdMedicoProg] [int] NULL,
	[IdRecetaA] [int] NULL,
	[IdMovimientoA] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProgramacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabProgramacionEmergencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabProgramacionEmergencia](
	[IdProgramacion] [int] IDENTITY(1,1) NOT NULL,
	[IdReceta] [int] NOT NULL,
	[IdItem] [int] NULL,
	[IdMovimiento] [int] NULL,
	[IdServicio] [int] NULL,
	[Fecha] [date] NULL,
	[HoraInicio] [varchar](5) NULL,
	[HoraFin] [varchar](5) NULL,
	[IdEstado] [int] NOT NULL,
	[Observacion] [varchar](500) NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[TurnoAdicional] [int] NULL,
	[IdMedico] [int] NULL,
	[Id] [int] NULL,
	[IdModalidad] [int] NULL,
	[FechaProg] [date] NULL,
	[HoraInicioProg] [varchar](5) NULL,
	[HoraFinProg] [varchar](5) NULL,
	[UsuarioReprogramacion] [int] NULL,
	[FechaReprogramacion] [datetime] NULL,
	[IdMedicoProg] [int] NULL,
	[IdRecetaA] [int] NULL,
	[IdMovimientoA] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabServiciosCpt]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabServiciosCpt](
	[IdServicio] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgLabServiciosPuntosCargas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgLabServiciosPuntosCargas](
	[IdServicio] [int] NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[IdEstado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformeCitologia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformeCitologia](
	[Id_Informe] [int] NULL,
	[id_Solicitud] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Inf_TipMuestra] [text] NULL,
	[Inf_Satisfactorio] [text] NULL,
	[Inf_InSatisfactorio] [text] NULL,
	[Inf_clasificacion] [text] NULL,
	[Inf_interpretacion] [text] NULL,
	[Inf_conclusion] [text] NULL,
	[Inf_HallazgoSatisfactorio] [text] NULL,
	[Inf_HallazgoInSatisfactorio] [text] NULL,
	[inf_Fecha] [datetime] NULL,
	[inf_FReg] [datetime] NULL,
	[inf_Estado] [int] NULL,
	[idEmpleado] [int] NULL,
	[idOrden] [int] NULL,
	[idProductoSig] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformeCitologiaDiagnostico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformeCitologiaDiagnostico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdClasificacionDx] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[vacio] [int] NULL,
	[Id_Solicitud] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformeCitologiaDiagnosticoInforme]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformeCitologiaDiagnosticoInforme](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdClasificacionDx] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[vacio] [int] NULL,
	[Id_Informe] [int] NULL,
 CONSTRAINT [PK_InformeCitologiaDiagnosticoInforme] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformeCitologiaSolicitud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformeCitologiaSolicitud](
	[id_Solicitud] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Sol_BrevHistoria] [text] NULL,
	[IdProducto] [int] NULL,
	[IdMetodos] [int] NULL,
	[Sol_FechaToma] [datetime] NULL,
	[Sol_UltimoPap] [datetime] NULL,
	[Sol_FUR] [datetime] NULL,
	[Sol_AntCA] [varchar](150) NULL,
	[Sol_MAC] [varchar](150) NULL,
	[Sol_Observacion] [text] NULL,
	[Sol_FReg] [datetime] NULL,
	[Sol_Estado] [int] NULL,
	[idEmpleado] [int] NULL,
	[idOrden] [int] NULL,
	[idProductoSig] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMEDiagnosticoApoyo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMEDiagnosticoApoyo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[id_Solicitud] [int] NULL,
 CONSTRAINT [PK_INFORMEDiagnosticoApoyo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMEDiagnosticoDefinitivo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMEDiagnosticoDefinitivo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[id_Solicitud] [int] NULL,
	[ACtivar] [int] NULL,
	[IdTipoDiagnostico] [int] NULL,
 CONSTRAINT [PK_INFORMEDiagnosticoDefinitivo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMEHistoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMEHistoria](
	[id_Solicitud] [int] NULL,
	[IdHistoria] [int] NULL,
	[INFAntecedentes] [text] NULL,
	[INFResumen] [text] NULL,
	[INFExamen] [text] NULL,
	[INFTratamiento] [text] NULL,
	[INFEvaluacion] [text] NULL,
	[INFRecomendacion] [text] NULL,
	[INFFecha] [datetime] NULL,
	[FReg] [datetime] NULL,
	[IdEmpleado] [int] NULL,
	[estado] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMEHistoriaDiagnosticoApoyo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMEHistoriaDiagnosticoApoyo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdHistoria] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[id_Solicitud] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMEHistoriaDiagnosticoDefinitivo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMEHistoriaDiagnosticoDefinitivo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdHistoria] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[id_Solicitud] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMEMedico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMEMedico](
	[id_Solicitud] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[INFAntecedentes] [text] NULL,
	[INFResumen] [text] NULL,
	[INFExamen] [text] NULL,
	[INFTratamiento] [text] NULL,
	[INFEvaluacion] [text] NULL,
	[INFRecomendacion] [text] NULL,
	[INFApoyoDiagnostico] [text] NULL,
	[INFFecha] [datetime] NULL,
	[INFHora] [varchar](10) NULL,
	[FReg] [datetime] NULL,
	[IdEmpleado] [int] NULL,
	[IdServicio] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMEPSICOMedicoN]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMEPSICOMedicoN](
	[IdInformeMedico] [int] NOT NULL,
	[IdPaciente] [int] NULL,
	[FechaInforme] [date] NULL,
	[motivo] [text] NULL,
	[antecedentes] [text] NULL,
	[tecnicasInstrumentos] [text] NULL,
	[observacion] [text] NULL,
	[resultado] [text] NULL,
	[conclusiones] [text] NULL,
	[recomendacion] [text] NULL,
	[idMedico] [int] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInformeMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFORMERadio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMERadio](
	[idInformeRadio] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[descripcion_Estudio] [varchar](5000) NULL,
	[conclusiones] [varchar](5000) NULL,
	[idProcedimiento] [int] NULL,
	[fechaInforme] [date] NULL,
	[fechaRegistro] [datetime] NULL,
	[fechaEdit] [datetime] NULL,
	[idEmpleadoRegistra] [int] NULL,
	[idEmpleadoedita] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idInformeRadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institucion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institucion](
	[IdInstitucion] [int] NULL,
	[Institución] [varchar](150) NULL,
	[CodigoInstitucion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsumoWada]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsumoWada](
	[Codigo] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InteoIntegracionSistema]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteoIntegracionSistema](
	[IdIntegracionSistema] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTipoSistema] [int] NOT NULL,
	[IdProveedorSistema] [int] NOT NULL,
	[NombreUsuario] [varchar](35) NULL,
	[ClaveUsuario] [varchar](50) NULL,
	[EsProveedorActual] [bit] NOT NULL,
	[EsActivo] [bit] NOT NULL,
	[FechaCrea] [datetime] NOT NULL,
	[FechaEdita] [datetime] NULL,
 CONSTRAINT [PK_InteoIntegracionSistema] PRIMARY KEY CLUSTERED 
(
	[IdIntegracionSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InteoProveedorSistema]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteoProveedorSistema](
	[IdProveedorSistema] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ProveedorSistema] [varchar](100) NOT NULL,
	[EsActivo] [bit] NOT NULL,
	[FechaCrea] [datetime] NOT NULL,
	[FechaEdita] [datetime] NULL,
 CONSTRAINT [PK_IOpProveedorSistema] PRIMARY KEY CLUSTERED 
(
	[IdProveedorSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InteoTipoSistema]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteoTipoSistema](
	[IdTipoSistema] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TipoSistema] [varchar](50) NOT NULL,
	[EsActivo] [bit] NOT NULL,
	[FechaCrea] [datetime] NOT NULL,
	[FechaEdita] [datetime] NULL,
 CONSTRAINT [PK_InteoTipoSistema] PRIMARY KEY CLUSTERED 
(
	[IdTipoSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InteracioonesMedicamentosas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteracioonesMedicamentosas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductoA] [int] NULL,
	[CodigoA] [varchar](50) NULL,
	[MedicamentoA] [varchar](5000) NULL,
	[IdProductoB] [int] NULL,
	[CodigoB] [varchar](50) NULL,
	[MedicamentoB] [varchar](5000) NULL,
	[Efecto] [varchar](5000) NULL,
	[Severidad] [varchar](50) NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_InteracioonesMedicamentosas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterconsultaCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterconsultaCab](
	[IdInterconsultaCab] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdAtencion] [int] NOT NULL,
	[IdInterconsulta] [int] NOT NULL,
	[IdServicioS] [int] NULL,
	[IdEspecialidad] [int] NULL,
	[IdMedicoS] [int] NULL,
	[IdMedicoR] [int] NULL,
	[IdPaciente] [int] NULL,
	[IdCama] [int] NULL,
	[EstadoReg] [bit] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdInterconsultaCab] PRIMARY KEY CLUSTERED 
(
	[IdInterconsultaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterconsultaDiagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterconsultaDiagnosticos](
	[IdInterconsultaDiagnostico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdDiagnosticoIC] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubclasificacionDx] [int] NULL,
	[TipoInterconsulta] [varchar](1) NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_IdInterconsultaDiagnostico] PRIMARY KEY CLUSTERED 
(
	[IdInterconsultaDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterconsultaRespuesta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterconsultaRespuesta](
	[IdInterconsultaRespuesta] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdInterconsultaCab] [int] NOT NULL,
	[HoraR] [varchar](5) NULL,
	[FechaR] [datetime] NULL,
	[ResumenHC] [varchar](3000) NULL,
	[Motivo] [varchar](3000) NULL,
	[IdUsuario] [int] NULL,
	[EstadoReg] [bit] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdInterconsultaRespuesta] PRIMARY KEY CLUSTERED 
(
	[IdInterconsultaRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterconsultaSolicitud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterconsultaSolicitud](
	[IdInterconsultaSolicitud] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdInterconsultaCab] [int] NULL,
	[HoraS] [varchar](5) NULL,
	[FechaS] [datetime] NULL,
	[ResumenHC] [varchar](1000) NULL,
	[Motivo] [varchar](1000) NULL,
	[IdUsuario] [int] NULL,
	[EstadoReg] [bit] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_InterconsultaSolicitud] PRIMARY KEY CLUSTERED 
(
	[IdInterconsultaSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[investigacion_bactoriologica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[investigacion_bactoriologica](
	[idInvestigacion] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[idServicio] [int] NULL,
	[tipo_muestra] [varchar](150) NULL,
	[antecedente_tratamiento] [varchar](150) NULL,
	[examen_solicitado] [varchar](40) NULL,
	[nro_examen_solicitado] [varchar](20) NULL,
	[motivo] [varchar](150) NULL,
	[control_tratamiento] [varchar](150) NULL,
	[grupo_riesgo] [varchar](150) NULL,
	[factores_riesgo] [varchar](500) NULL,
	[fecha_toma_muestra] [date] NULL,
	[calidad_muestra] [varchar](100) NULL,
	[observacion_muestra] [varchar](250) NULL,
	[registrado_netlab] [varchar](50) NULL,
	[fecha_resultado] [date] NULL,
	[observacion_resultado] [varchar](350) NULL,
	[estado] [int] NULL,
	[idEmpleadoRegistraExamen] [int] NULL,
	[fechaRegistroExamen] [datetime] NULL,
	[idEmpleadoRegistraResultado] [int] NULL,
	[fechaRegistroResultado] [datetime] NULL,
	[idMovimiento] [int] NULL,
	[idOrden] [int] NULL,
	[idProducto] [int] NULL,
	[nro_resultado] [int] NULL,
	[tipo_examen] [varchar](100) NULL,
	[descr_convecional] [varchar](60) NULL,
	[mes_valor] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idInvestigacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JRTEMPCptNoRegistrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JRTEMPCptNoRegistrados](
	[ID] [float] NULL,
	[CODIGO] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[PRECIO] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JRTEMPTarifarioOmologadoSIS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JRTEMPTarifarioOmologadoSIS](
	[ID] [float] NULL,
	[CODIGO] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[PRECIO] [float] NULL,
	[CODIGO1] [nvarchar](255) NULL,
	[DESCRIPCION1] [nvarchar](255) NULL,
	[PRECIO1] [float] NULL,
	[Diferencia] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JRTEMPTarifarioSIS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JRTEMPTarifarioSIS](
	[CPT_SIS] [nvarchar](255) NULL,
	[DEN_SIS] [nvarchar](255) NULL,
	[Prec_SIS] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KITANATOMIAPATOLOGICA]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KITANATOMIAPATOLOGICA](
	[CODIGO] [nchar](10) NULL,
	[NOMBRE] [nchar](200) NULL,
	[CPT1] [nchar](10) NULL,
	[CPT2] [nchar](10) NULL,
	[NUMERACION] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lab_Peticion_hevesPerfil]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lab_Peticion_hevesPerfil](
	[IdMovimiento] [int] NULL,
	[DNI] [varchar](12) NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[FecNac] [datetime] NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](11) NULL,
	[Direccion] [varchar](150) NULL,
	[Email] [varchar](100) NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[Id_Servicio_solicitante] [int] NULL,
	[ServicioSolicitante] [varchar](100) NULL,
	[MedicoTratante] [varchar](200) NULL,
	[Cmp] [varchar](6) NULL,
	[Tarifa] [varchar](50) NULL,
	[TipoOrden] [varchar](50) NULL,
	[NroCama] [varchar](10) NULL,
	[CodCie10] [varchar](10) NULL,
	[DescCie10] [varchar](450) NULL,
	[Codigo] [varchar](20) NULL,
	[Nombre] [varchar](255) NULL,
	[IdOrden] [int] NULL,
	[IdProducto] [int] NULL,
	[IdCuenta] [int] NULL,
	[FechaReceta] [datetime] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaHoraRealizaCpt] [datetime] NULL,
	[EstadoRegistro] [char](1) NULL,
	[EstadoRango] [int] NULL,
	[FechaEnvio] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabClasificacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabClasificacion](
	[codigo] [float] NULL,
	[DESCRIP] [nvarchar](1500) NULL,
	[Bioquimica] [nvarchar](255) NULL,
	[Hematologia] [nvarchar](255) NULL,
	[Inmunología] [nvarchar](255) NULL,
	[Microbiología] [nvarchar](255) NULL,
	[BancoSangre] [nchar](10) NULL,
	[Clasi] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabEstados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabEstados](
	[IdLabEstado] [int] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
 CONSTRAINT [PK_LabEstados] PRIMARY KEY CLUSTERED 
(
	[IdLabEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labGrupos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labGrupos](
	[idGrupo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NombreGrupo] [char](20) NOT NULL,
	[SiglasGrupo] [char](3) NOT NULL,
	[idCargo] [int] NULL,
 CONSTRAINT [PK_labGrupos] PRIMARY KEY CLUSTERED 
(
	[idGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabItems]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabItems](
	[idItem] [int] NOT NULL,
	[Item] [varchar](500) NULL,
	[idProductoCpt] [int] NULL,
 CONSTRAINT [PK_LabItems] PRIMARY KEY CLUSTERED 
(
	[idItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabItemsCpt]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabItemsCpt](
	[idProductoCpt] [int] NOT NULL,
	[ordenXresultado] [int] NOT NULL,
	[idGrupo] [int] NOT NULL,
	[idItemGrupo] [int] NULL,
	[idItem] [int] NOT NULL,
	[ValorSiEsCombo] [varchar](100) NULL,
	[ValorReferencial] [varchar](500) NULL,
	[Metodo] [varchar](50) NULL,
	[SoloNumero] [bit] NULL,
	[SoloTexto] [bit] NULL,
	[SoloCombo] [bit] NULL,
	[SoloCheck] [bit] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_LabItemsCpt] PRIMARY KEY CLUSTERED 
(
	[idProductoCpt] ASC,
	[ordenXresultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabItemsGrupos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabItemsGrupos](
	[idItemGrupo] [int] NOT NULL,
	[Grupo] [varchar](100) NULL,
 CONSTRAINT [PK_LabItemsGrupos] PRIMARY KEY CLUSTERED 
(
	[idItemGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMotivoSalidas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMotivoSalidas](
	[idMotivoSalida] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[motivo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_LabMotivoSalidas] PRIMARY KEY CLUSTERED 
(
	[idMotivoSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMovimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMovimiento](
	[IdMovimiento] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[MovTipo] [varchar](1) NOT NULL,
	[IdTipoConcepto] [int] NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdLabEstado] [int] NULL,
 CONSTRAINT [PK_LabMovimiento] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMovimientoCPT]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMovimientoCPT](
	[idMovimiento] [int] NOT NULL,
	[idProductoCPT] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[importe] [money] NOT NULL,
	[observaciones] [varchar](3000) NULL,
	[FechaTomaMuestra] [datetime] NULL,
	[idLabEstado] [int] NULL,
	[idEstadoResultado] [int] NULL,
 CONSTRAINT [PK_LabMovimientoCPT] PRIMARY KEY CLUSTERED 
(
	[idMovimiento] ASC,
	[idProductoCPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMovimientoDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMovimientoDetalle](
	[idMovimiento] [int] NOT NULL,
	[idProductoCPT] [int] NULL,
	[idProducto] [int] NOT NULL,
	[CantidadFallada] [int] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMovimientoIngresos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMovimientoIngresos](
	[IdMovimiento] [int] NOT NULL,
	[NroDocumento] [varchar](20) NULL,
	[IdPersonaRecepciona] [int] NULL,
 CONSTRAINT [PK_LabMovimientoIngresos] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMovimientoLaboratorio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMovimientoLaboratorio](
	[IdMovimiento] [int] NOT NULL,
	[IdOrden] [int] NOT NULL,
	[CorrelativoAnual] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdComprobantePago] [int] NULL,
	[idPersonaTomaLab] [int] NULL,
	[idPersonaRecoge] [int] NULL,
	[idDiagnostico] [int] NULL,
	[EsDiagnosticoDefinitivo] [int] NULL,
	[OrdenaPrueba] [varchar](50) NULL,
	[Paciente] [varchar](100) NULL,
	[idTipoSexo] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
 CONSTRAINT [PK_LabMovimientoLaboratorio] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMovimientoSalidas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMovimientoSalidas](
	[IdMovimiento] [int] NOT NULL,
	[IdResponsable] [int] NOT NULL,
	[IdMotivoSalida] [int] NOT NULL,
 CONSTRAINT [PK_LabMovimientoSalidas] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaboratorioOrdenAntibiotico]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaboratorioOrdenAntibiotico](
	[idLaboratorioOrden] [int] IDENTITY(1,1) NOT NULL,
	[Orden] [int] NULL,
	[Antibiotico] [varchar](60) NULL,
	[Fecha] [datetime] NULL,
	[idEstado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLaboratorioOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labPruebas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labPruebas](
	[idPrueba] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CodigoPrueba] [char](6) NOT NULL,
	[CodigoCPT] [char](20) NULL,
 CONSTRAINT [PK_labPruebas] PRIMARY KEY CLUSTERED 
(
	[idPrueba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabRealizaPruebas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabRealizaPruebas](
	[IdProducto] [int] NULL,
	[Codigo] [varchar](10) NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabRecojeExamen]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabRecojeExamen](
	[idRecojeExamen] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RecojeExamen] [varchar](30) NOT NULL,
 CONSTRAINT [PK_LabRecojeExamen] PRIMARY KEY CLUSTERED 
(
	[idRecojeExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabResultado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabResultado](
	[idAnalisis] [varchar](20) NOT NULL,
	[idOrden] [int] NOT NULL,
	[resultadoAnalisis] [text] NOT NULL,
	[realizaAnalisis] [int] NOT NULL,
	[observacionResultado] [varchar](8000) NULL,
	[idUsuario] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[ControlDeCancer] [char](1) NULL,
 CONSTRAINT [PK_LabResultado] PRIMARY KEY CLUSTERED 
(
	[idAnalisis] ASC,
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabResultadoAntibioticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabResultadoAntibioticos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabResultadoOrganismos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabResultadoOrganismos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabResultadoPorItems]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabResultadoPorItems](
	[idOrden] [int] NOT NULL,
	[idProductoCpt] [int] NOT NULL,
	[ordenXresultado] [int] NOT NULL,
	[ValorNumero] [money] NULL,
	[ValorResultado] [varchar](100) NULL,
	[ValorTexto] [varchar](2000) NULL,
	[ValorCombo] [varchar](100) NULL,
	[ValorCheck] [varchar](1) NULL,
	[realizaAnalisis] [int] NULL,
	[idUsuario] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Canal] [varchar](15) NULL,
	[ValorReferencialLab] [varchar](500) NULL,
	[Comentario] [varchar](max) NULL,
	[Metodo] [varchar](200) NULL,
	[EstadoRango] [int] NULL,
	[IdUsuarioValidaPrueba] [int] NULL,
	[EstadoCritico] [int] NULL,
 CONSTRAINT [PK_LabResutadoPorItems] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC,
	[idProductoCpt] ASC,
	[ordenXresultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabResultadoPorItems_b]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabResultadoPorItems_b](
	[idOrden] [int] NOT NULL,
	[idProductoCpt] [int] NULL,
	[ordenXresultado] [int] NULL,
	[ValorNumero] [money] NULL,
	[ValorResultado] [varchar](100) NULL,
	[ValorTexto] [varchar](2000) NULL,
	[ValorCombo] [varchar](100) NULL,
	[ValorCheck] [varchar](1) NULL,
	[realizaAnalisis] [int] NULL,
	[idUsuario] [int] NULL,
	[Fecha] [datetime] NULL,
	[Canal] [varchar](15) NULL,
	[ValorReferencialLab] [varchar](500) NULL,
	[Comentario] [varchar](max) NULL,
	[Metodo] [varchar](200) NULL,
	[EstadoRango] [int] NULL,
	[IdUsuarioValidaPrueba] [int] NULL,
	[EstadoCritico] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabResultadoUCabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabResultadoUCabecera](
	[IdMovimiento] [int] NULL,
	[Codigo] [varchar](20) NULL,
	[Origen] [varchar](100) NULL,
	[Organismo] [varchar](150) NULL,
	[RecColonias] [text] NULL,
	[ColGram] [text] NULL,
	[ExamenDirecto] [text] NULL,
	[Comentario] [text] NULL,
	[IdCuenta] [int] NULL,
	[FechaHoraRealizaCpt] [datetime] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaProceso] [datetime] NULL,
	[ResponsableProceso] [varchar](60) NULL,
	[FechaValidacion] [datetime] NULL,
	[ResponsableValidacion] [int] NULL,
	[EstadoRegistro] [int] NULL,
	[IdProductoCPT] [int] NULL,
	[IdOrden] [int] NULL,
	[ResultadoValidacion] [nchar](2) NULL,
	[NumeroMuestra] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabResultadoUDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabResultadoUDetalle](
	[IdMovimiento] [int] NULL,
	[Codigo] [varchar](20) NULL,
	[OrdenResultado] [int] NULL,
	[Organismo] [varchar](150) NULL,
	[Antibiotico] [varchar](120) NULL,
	[ValorCMI] [varchar](20) NULL,
	[Interpretacion] [varchar](100) NULL,
	[Origen] [varchar](100) NULL,
	[EstadoRegistro] [int] NULL,
	[ResultadoValidacion] [nchar](2) NULL,
	[IdResultadoDetalle] [int] IDENTITY(1,1) NOT NULL,
	[FechaValidacion] [datetime] NULL,
	[FechaActualizacion] [datetime] NULL,
	[NumeroMuestra] [tinyint] NULL,
 CONSTRAINT [PK_LabResultadoUDetalle] PRIMARY KEY CLUSTERED 
(
	[IdResultadoDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabServiciosResultado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabServiciosResultado](
	[Codigo] [varchar](10) NULL,
	[estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabTipoConceptos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabTipoConceptos](
	[idTipoConcepto] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Concepto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LabTipoConceptos] PRIMARY KEY CLUSTERED 
(
	[idTipoConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_Configuracion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_Configuracion](
	[usuario] [varchar](30) NULL,
	[clave] [varchar](30) NULL,
	[webServicesAuth] [varchar](250) NULL,
	[webServicesIns] [varchar](250) NULL,
	[idEstado] [int] NULL,
	[ambiente] [varchar](100) NULL,
	[id] [int] IDENTITY(0,1) NOT NULL,
 CONSTRAINT [laura_Configuracion_PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_a]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_a](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[dni] [varchar](100) NOT NULL,
	[detalle] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_activas_emer]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_activas_emer](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[idCuenta] [varchar](100) NOT NULL,
	[detalle] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_antibiograma]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_antibiograma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idMovimiento] [int] NOT NULL,
	[codigo] [varchar](10) NOT NULL,
	[numeroMuestra] [int] NULL,
	[fecha_modificacion] [datetime] NULL,
	[idEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_eliminadas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_eliminadas](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[cuenta] [varchar](100) NOT NULL,
	[detalle] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_examenes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_examenes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idMovimiento] [int] NOT NULL,
	[codigo] [varchar](10) NOT NULL,
	[ordenxResultado] [int] NULL,
	[fecha_modificacion] [datetime] NULL,
	[idEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_farmacia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_farmacia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idReceta] [int] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[idEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_historia_clinica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_historia_clinica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[idEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_movimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_movimientos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idEstanciaHospitalaria] [int] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[idEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_cuentas_signos_vitales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_cuentas_signos_vitales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[idEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_trama_antibiograma]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_trama_antibiograma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[estado] [varchar](10) NOT NULL,
	[trama] [text] NULL,
	[http_code] [varchar](20) NULL,
	[error_code] [varchar](20) NULL,
	[message] [varchar](200) NULL,
	[error] [nvarchar](4000) NULL,
	[fecha_envio] [datetime] NULL,
	[intento] [int] NOT NULL,
	[id_user_envio] [int] NULL,
	[tipo_registro] [varchar](10) NULL,
	[idMovimiento] [int] NOT NULL,
	[codigo] [varchar](10) NOT NULL,
	[numeroMuestra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_trama_examenes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_trama_examenes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[estado] [varchar](10) NOT NULL,
	[trama] [text] NULL,
	[http_code] [varchar](20) NULL,
	[error_code] [varchar](20) NULL,
	[message] [varchar](200) NULL,
	[error] [nvarchar](4000) NULL,
	[fecha_envio] [datetime] NULL,
	[intento] [int] NOT NULL,
	[id_user_envio] [int] NULL,
	[tipo_registro] [varchar](10) NULL,
	[idMovimiento] [int] NOT NULL,
	[codigo] [varchar](10) NOT NULL,
	[ordenxResultado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_trama_farmacia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_trama_farmacia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[estado] [varchar](10) NOT NULL,
	[trama] [text] NULL,
	[http_code] [varchar](20) NULL,
	[error_code] [varchar](20) NULL,
	[message] [varchar](200) NULL,
	[error] [nvarchar](4000) NULL,
	[fecha_envio] [datetime] NULL,
	[intento] [int] NOT NULL,
	[id_user_envio] [int] NULL,
	[tipo_registro] [varchar](10) NULL,
	[idReceta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_trama_medical_record]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_trama_medical_record](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[estado] [varchar](10) NOT NULL,
	[trama] [text] NULL,
	[http_code] [varchar](20) NULL,
	[error_code] [varchar](20) NULL,
	[message] [varchar](200) NULL,
	[error] [nvarchar](4000) NULL,
	[fecha_envio] [datetime] NULL,
	[intento] [int] NOT NULL,
	[id_user_envio] [int] NULL,
	[tipo_registro] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_trama_movimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_trama_movimientos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[estado] [varchar](10) NOT NULL,
	[trama] [text] NULL,
	[http_code] [varchar](20) NULL,
	[error_code] [varchar](20) NULL,
	[message] [varchar](200) NULL,
	[error] [nvarchar](4000) NULL,
	[fecha_envio] [datetime] NULL,
	[intento] [int] NOT NULL,
	[id_user_envio] [int] NULL,
	[tipo_registro] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laura_trama_signos_vitales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laura_trama_signos_vitales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[paciente_id] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NULL,
	[estado] [varchar](10) NOT NULL,
	[trama] [text] NULL,
	[http_code] [varchar](20) NULL,
	[error_code] [varchar](20) NULL,
	[message] [varchar](200) NULL,
	[error] [nvarchar](4000) NULL,
	[fecha_envio] [datetime] NULL,
	[intento] [int] NOT NULL,
	[id_user_envio] [int] NULL,
	[tipo_registro] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaDeEspera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaDeEspera](
	[IdcuentaATencion] [int] NULL,
	[IdAsa] [int] NULL,
	[Apto] [int] NULL,
	[Observacion] [varchar](3000) NULL,
	[idListaEstado] [int] NULL,
	[ObservacionEstadoLista] [varchar](3000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listaDNI]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listaDNI](
	[NroDocumento] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listado de Establecimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listado de Establecimientos](
	[id] [nvarchar](255) NULL,
	[codigo] [nvarchar](255) NULL,
	[IdClasificación] [nvarchar](255) NULL,
	[Idtipo] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaEsperaCirugiaGeneral]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaEsperaCirugiaGeneral](
	[NroHistoriaClinica] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaExamenesLaboratorio]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaExamenesLaboratorio](
	[codigo] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaFissal]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaFissal](
	[Tipo] [nvarchar](255) NULL,
	[Cie10] [nvarchar](255) NULL,
	[Clasi] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaPacientesCronicos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaPacientesCronicos](
	[NroHistoriaClinica] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListBarGrupos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListBarGrupos](
	[IdListGrupo] [int] NOT NULL,
	[Texto] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Indice] [int] NOT NULL,
 CONSTRAINT [GUIListBarGrupos_PK] PRIMARY KEY CLUSTERED 
(
	[IdListGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListBarItems]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListBarItems](
	[IdListItem] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Texto] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[IdListGrupo] [int] NOT NULL,
	[Indice] [int] NOT NULL,
	[KeyIcon] [varchar](50) NULL,
 CONSTRAINT [GUIListBarItems_PK] PRIMARY KEY CLUSTERED 
(
	[IdListItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListBarReporte]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListBarReporte](
	[idReporte] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Reporte] [varchar](255) NOT NULL,
	[id_MenuReporte] [varchar](100) NOT NULL,
	[MODULO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ListBarReporte] PRIMARY KEY CLUSTERED 
(
	[idReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogRefCon]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogRefCon](
	[idLog] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lolcliProblemasHC]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lolcliProblemasHC](
	[pacHis] [char](50) NULL,
	[pacPat] [char](30) NULL,
	[pacMat] [char](30) NULL,
	[pacNam] [char](50) NULL,
	[nroHistoriaGalenhos] [varchar](50) NULL,
	[pacfin] [datetime] NULL,
	[autogeneradoGalenHos] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lolcliUbigeo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lolcliUbigeo](
	[ubigeoLolcli] [varchar](50) NULL,
	[dptoLolCli] [varchar](50) NULL,
	[provLolCli] [varchar](50) NULL,
	[distritoLolCli] [varchar](50) NULL,
	[idDepartamento] [int] NULL,
	[idprovincia] [int] NULL,
	[idDistrito] [int] NULL,
	[dpto] [varchar](50) NULL,
	[prov] [varchar](50) NULL,
	[distrito] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCadaverAnexo05]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCadaverAnexo05](
	[idAnexo05] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[FechaHoraSalidaMortuorio] [datetime] NULL,
	[estado] [int] NULL,
	[idEmpleado_creacion] [int] NULL,
	[fechaHora_creacion] [datetime] NULL,
	[idempleado_edicion] [int] NULL,
	[fechaHora_edicion] [datetime] NULL,
	[nombreEstacion] [varchar](50) NULL,
 CONSTRAINT [PK_MCadaverAnexo5] PRIMARY KEY CLUSTERED 
(
	[idAnexo05] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCadaverAnexo06]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCadaverAnexo06](
	[idAnexo06] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[FechaHoraIngresoMortuorio] [datetime] NULL,
	[FechaHoraIngresoCamara] [datetime] NULL,
	[Necropsia] [bit] NULL,
	[idMedicoAnatomo] [int] NULL,
	[FechaHoraN] [datetime] NULL,
	[FechaHoraRetornoN] [datetime] NULL,
	[Familiar] [bit] NULL,
	[FechaHoraSalidaAmbiente] [datetime] NULL,
	[idTipoDocumento] [int] NULL,
	[NroDocumento] [varchar](12) NULL,
	[NombreVerifica] [varchar](150) NULL,
	[Funeraria] [bit] NULL,
	[NombreFuneraria] [varchar](150) NULL,
	[estado] [bit] NULL,
	[idEmpleado_creacion] [int] NULL,
	[fechaHora_creacion] [datetime] NULL,
	[idempleado_edicion] [int] NULL,
	[fechaHora_edicion] [datetime] NULL,
	[nombreEstacion] [varchar](50) NULL,
 CONSTRAINT [PK_MCadaverAnexo06] PRIMARY KEY CLUSTERED 
(
	[idAnexo06] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCadaverAnexo10]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCadaverAnexo10](
	[idAnexo10] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NULL,
	[TieneCertificado] [bit] NULL,
	[idMedicoCD] [int] NULL,
	[NroCD] [varchar](50) NULL,
	[Observaciones] [varchar](5000) NULL,
	[EsFamiliar] [bit] NULL,
	[idTipoDocumento] [int] NULL,
	[NroDocumento] [varchar](12) NULL,
	[Solicitante] [varchar](150) NULL,
	[estado] [bit] NULL,
	[idParentesco] [int] NULL,
	[NroOficio] [varchar](50) NULL,
	[idEmpleado_creacion] [int] NULL,
	[fechaHora_creacion] [datetime] NULL,
	[idempleado_edicion] [int] NULL,
	[fechaHora_edicion] [datetime] NULL,
	[nombreEstacion] [varchar](50) NULL,
 CONSTRAINT [PK_MCadaverAnexo10] PRIMARY KEY CLUSTERED 
(
	[idAnexo10] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCadaverProceso]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCadaverProceso](
	[idProcesoC] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_MCadaverProceso] PRIMARY KEY CLUSTERED 
(
	[idProcesoC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCadaverRequisitoAnexo06]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCadaverRequisitoAnexo06](
	[idRequisitoAnexo06] [int] IDENTITY(1,1) NOT NULL,
	[idAnexo06] [int] NULL,
	[idRequisito] [int] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_MCadaverRequisitoAnexo06] PRIMARY KEY CLUSTERED 
(
	[idRequisitoAnexo06] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCadaverRequisitos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCadaverRequisitos](
	[idRequisito] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_MCadaverRequisitos] PRIMARY KEY CLUSTERED 
(
	[idRequisito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MCadaverTecnicoEAnexo6]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCadaverTecnicoEAnexo6](
	[idTecnicoEProceso] [int] IDENTITY(1,1) NOT NULL,
	[idAnexo06] [int] NULL,
	[idProcesoC] [int] NULL,
	[idEmpleado] [int] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_MCadaverTecnicoEAnexo6] PRIMARY KEY CLUSTERED 
(
	[idTecnicoEProceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicamentosEstupefacientes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicamentosEstupefacientes](
	[Codigo] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoHistoriaClinicaEmergencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoHistoriaClinicaEmergencia](
	[idCuentaAtencion] [int] NULL,
	[idMedico] [int] NULL,
	[Fecha] [datetime] NULL,
	[idEstado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoLlamadoPaciente]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoLlamadoPaciente](
	[idLlamado] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NULL,
	[idServicio] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[nroLlamado] [int] NULL,
	[fechaRegistro] [datetime] NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLlamado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[IdMedico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Colegiatura] [varchar](6) NOT NULL,
	[IdEmpleado] [int] NULL,
	[LoteHIS] [varchar](2) NULL,
	[idColegioHIS] [varchar](2) NULL,
	[rne] [varchar](50) NULL,
	[egresado] [bit] NULL,
	[rneWeb] [varchar](50) NULL,
	[paterno] [varchar](50) NULL,
	[materno] [varchar](50) NULL,
	[nombres] [varchar](50) NULL,
	[estado] [varchar](50) NULL,
	[NroEspecialidad] [varchar](50) NULL,
	[Especialidad] [varchar](80) NULL,
	[rneActualizar] [varchar](50) NULL,
 CONSTRAINT [Medicos_PK] PRIMARY KEY CLUSTERED 
(
	[IdMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicosCirugia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicosCirugia](
	[IdCirugia] [int] IDENTITY(1,1) NOT NULL,
	[IdListaEspera] [int] NULL,
	[IdUsuario] [int] NULL,
	[TipoCirujano] [varchar](100) NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCirugia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicosEspecialidad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicosEspecialidad](
	[IdMedicoEspecialidad] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdMedico] [int] NOT NULL,
 CONSTRAINT [MedicosEspecialidad_PK] PRIMARY KEY CLUSTERED 
(
	[IdMedicoEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MensajesEnVentana]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensajesEnVentana](
	[Ventana] [varchar](50) NOT NULL,
	[Orden] [int] NOT NULL,
	[MensajeAusuario] [varchar](250) NULL,
 CONSTRAINT [PK_MensajesEnVentana] PRIMARY KEY CLUSTERED 
(
	[Ventana] ASC,
	[Orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[meta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[meta](
	[idMeta] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](56) NOT NULL,
	[descripcion] [varchar](128) NOT NULL,
	[prioridad] [char](5) NULL,
	[fechaLim] [date] NOT NULL,
	[categoria] [char](15) NULL,
 CONSTRAINT [PK__meta__C26D05DE2CC78F5D] PRIMARY KEY CLUSTERED 
(
	[idMeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodoAnticonceptivos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodoAnticonceptivos](
	[IdMetodos] [int] NULL,
	[Descripcion] [varchar](150) NULL,
	[Estado] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MFMonitoreoCab]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MFMonitoreoCab](
	[IdMFMonitoreoCab] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[idProducto] [int] NULL,
	[idOrden] [int] NULL,
	[IdObstetra] [int] NULL,
	[CPN] [int] NULL,
	[FUR] [date] NULL,
	[FPP] [date] NULL,
	[AU] [float] NULL,
	[G] [int] NULL,
	[P] [int] NULL,
	[NroSemanas] [float] NULL,
	[FechaEco] [date] NULL,
	[TiempoAyuno] [varchar](50) NULL,
	[Medicacion] [varchar](100) NULL,
	[Duracion] [int] NULL,
	[Inicio] [varchar](5) NULL,
	[Termino] [varchar](5) NULL,
	[PAS] [int] NULL,
	[PAD] [int] NULL,
	[Pulso] [int] NULL,
	[Temperatura] [decimal](18, 1) NULL,
	[FR] [int] NULL,
	[PuntajeTF] [int] NULL,
	[Observaciones] [varchar](500) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[sat] [int] NULL,
	[EG] [decimal](10, 2) NULL,
	[otros] [varchar](500) NULL,
	[mip] [int] NULL,
	[IdMedicoResponsable] [int] NULL,
 CONSTRAINT [PK_IdMFMonitoreoCab] PRIMARY KEY CLUSTERED 
(
	[IdMFMonitoreoCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MFMotivoEventos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MFMotivoEventos](
	[IdEventos] [int] IDENTITY(1,1) NOT NULL,
	[IdmotivoEventos] [int] NOT NULL,
	[IdMFMonitoreoCab] [int] NOT NULL,
	[evento1] [int] NULL,
	[evento2] [int] NULL,
	[evento3] [int] NULL,
	[evento4] [int] NULL,
	[evento5] [int] NULL,
	[evento6] [int] NULL,
	[evento7] [int] NULL,
	[evento8] [int] NULL,
	[evento9] [int] NULL,
	[evento10] [int] NULL,
	[FechaReg] [datetime] NULL,
	[Estacion] [varchar](50) NULL,
	[IdUsuario] [int] NULL,
	[EstadoReg] [bit] NULL,
 CONSTRAINT [PK_IdEventos] PRIMARY KEY CLUSTERED 
(
	[IdEventos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MFMotivoPruebaDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MFMotivoPruebaDet](
	[IdMotivoPruebaDet] [int] IDENTITY(1,1) NOT NULL,
	[IdmotivoPrueba] [int] NOT NULL,
	[IdMFMonitoreoCab] [int] NOT NULL,
	[Prueba1] [int] NULL,
	[Prueba2] [int] NULL,
	[Prueba3] [int] NULL,
	[Prueba4] [int] NULL,
	[Prueba5] [int] NULL,
	[Prueba6] [int] NULL,
	[Prueba7] [int] NULL,
	[Prueba8] [int] NULL,
	[Prueba9] [int] NULL,
	[FechaReg] [datetime] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[EstadoReg] [bit] NULL,
 CONSTRAINT [PK_IdMotivoPruebaDet] PRIMARY KEY CLUSTERED 
(
	[IdMotivoPruebaDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MFTestFisherDet]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MFTestFisherDet](
	[IdTestFisherDet] [int] IDENTITY(1,1) NOT NULL,
	[IdParametro] [int] NOT NULL,
	[IdMFMonitoreoCab] [int] NOT NULL,
	[Puntaje] [int] NULL,
	[Puntaje2] [int] NULL,
	[Puntaje3] [int] NULL,
	[Puntaje4] [int] NULL,
	[puntaje5] [int] NULL,
	[PuntajeObtenido] [int] NULL,
	[PuntajeObtenido2] [int] NULL,
	[PuntajeObtenido3] [int] NULL,
	[PuntajeObtenido4] [int] NULL,
	[PuntajeObtenido5] [int] NULL,
	[EstadoReg] [int] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdTestFisherDet] PRIMARY KEY CLUSTERED 
(
	[IdTestFisherDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MFValoresPuntuacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MFValoresPuntuacion](
	[IdPuntuacion] [int] NOT NULL,
	[IdEstadoPuntuacion] [int] NOT NULL,
 CONSTRAINT [PK_MFValoresPuntuacion] PRIMARY KEY CLUSTERED 
(
	[IdPuntuacion] ASC,
	[IdEstadoPuntuacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MicroRed]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MicroRed](
	[IdMicroRed] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [MicroRed_PK] PRIMARY KEY CLUSTERED 
(
	[IdMicroRed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MicroRedEstablecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MicroRedEstablecimiento](
	[IdMicro] [int] NULL,
	[Codigo] [int] NULL,
	[Nombre] [varchar](150) NULL,
	[CodigoDisa] [int] NULL,
	[CódigoRed] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migracion_FactOrdenServicioPagosBak]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migracion_FactOrdenServicioPagosBak](
	[idOrdenPago] [int] NOT NULL,
	[idComprobantePago] [int] NULL,
	[idOrden] [int] NOT NULL,
	[ImporteExonerado] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstadoFacturacion] [int] NOT NULL,
	[idUsuarioExonera] [int] NULL,
	[esFraccionado] [char](1) NULL,
	[idMigracion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Migracion_FacturacionServicioPagosBak]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Migracion_FacturacionServicioPagosBak](
	[idOrdenPago] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[idComprobantePago] [int] NULL,
	[idMigracion] [int] NULL,
	[FechaRegistro] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MigracionConsumos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MigracionConsumos](
	[idMigracion] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NULL,
	[idCuentaAtencionOrigen] [int] NULL,
	[idCuentaAtencionDestino] [int] NULL,
	[Fecha] [datetime] NULL,
	[nombrePC] [varchar](30) NULL,
	[idTipoMigracion] [int] NULL,
	[opcionConsumo] [int] NULL,
	[idEstadoMigracion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMigracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MigracionConsumosDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MigracionConsumosDetalle](
	[idMigracion] [int] NULL,
	[idOrdenOrigen] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[idOrdenDestino] [int] NULL,
	[idOrdenPagoDestino] [int] NULL,
	[idMovimientoOrigenLab] [int] NULL,
	[idMovimientoDestinoLab] [int] NULL,
	[idMovimientoOrigenImg] [int] NULL,
	[idMovimientoDestinoImg] [int] NULL,
	[MovNumeroOrigen] [nvarchar](20) NULL,
	[MovNumeroDestino] [nvarchar](20) NULL,
	[idRecetaOrigen] [int] NULL,
	[idRecetaDestino] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MINSACPMS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MINSACPMS](
	[NombreCPMS] [varchar](5000) NULL,
	[CodigoCPMS] [varchar](50) NULL,
	[CodigoSIS] [varchar](50) NULL,
	[NombreSIS] [varchar](5000) NULL,
	[IdComplejidadCirugia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[minsacpmsodonto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[minsacpmsodonto](
	[Nombrecpms] [varchar](5000) NULL,
	[CodigoCPMS] [varchar](5000) NULL,
	[NombreSIS] [varchar](5000) NULL,
	[CodigoSIS] [varchar](5000) NULL,
	[IdComplejidad] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MmCausaGenerica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MmCausaGenerica](
	[IdCausaGenerica] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCausaGenerica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MmClasificacionInicial]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MmClasificacionInicial](
	[IdClasificacionInicial] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdClasificacionInicial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MmInstitucion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MmInstitucion](
	[IdInstitucion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInstitucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MmLugarFallecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MmLugarFallecimiento](
	[IdLugarFallecimiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLugarFallecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MmMomentoFallecimiento]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MmMomentoFallecimiento](
	[IdMomentoFallecimiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMomentoFallecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MmNotificacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MmNotificacion](
	[IdNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[FechaNotificacion] [date] NOT NULL,
	[HoraNotificacion] [varchar](5) NOT NULL,
	[IdVigilancia] [int] NOT NULL,
	[IdInstitucionNotifica] [int] NOT NULL,
	[NombreInstitucion] [varchar](200) NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[Domicilio] [varchar](200) NOT NULL,
	[IdDistritoProcedencia] [int] NOT NULL,
	[IdMomentoFallecimiento] [int] NOT NULL,
	[EdadGestacional] [int] NULL,
	[IdEdadDesconocida] [int] NULL,
	[FechaFallecimiento] [date] NOT NULL,
	[HoraFallecimiento] [time](7) NOT NULL,
	[IdLugarFallecimiento] [int] NOT NULL,
	[NombreEstablecimientoFallecimiento] [varchar](200) NULL,
	[PermanenciaDias] [int] NOT NULL,
	[PermanenciaHoras] [int] NOT NULL,
	[PermanenciaMinutos] [int] NOT NULL,
	[IdDistritoFallecimiento] [int] NOT NULL,
	[IdReferido] [int] NOT NULL,
	[IdTipoEstablecimientoReferencia] [int] NULL,
	[IdEstablecimientoReferencia] [int] NULL,
	[IdDiagnosticoCausaBasica] [int] NOT NULL,
	[IdDiagnosticoCausaIntermedia] [int] NOT NULL,
	[IdDiagnosticoCausaProbable] [int] NOT NULL,
	[IdCausaGenerica] [int] NOT NULL,
	[OtraCausagenerica] [varchar](200) NULL,
	[IdClasificacionInicial] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [int] NULL,
	[FechaAnula] [datetime] NULL,
	[UsuarioAnula] [int] NULL,
	[MotivoAnula] [varchar](5000) NULL,
	[FechaCalidad] [datetime] NULL,
	[UsuarioCalidad] [int] NULL,
	[ObservacionCalidad] [varchar](5000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MmTipoVigilancia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MmTipoVigilancia](
	[IdTipoVigilancia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoVigilancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNClasificacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNClasificacion](
	[IdClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNGrupo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNGrupo](
	[IdGrupo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNItem]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNItem](
	[IdItem] [int] NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[Descripcion] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNLugarIntoxicacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNLugarIntoxicacion](
	[IdLugarIntoxicacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLugarIntoxicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNMetanolCabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNMetanolCabecera](
	[IdMetanol] [int] IDENTITY(1,1) NOT NULL,
	[FechaNotificacion] [date] NULL,
	[IdCuentaAtencion] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[IdEmbarazada] [int] NULL,
	[Ocupacion] [varchar](1000) NULL,
	[IdDistrito] [int] NULL,
	[Direccion] [varchar](1000) NULL,
	[IdAcompaniante] [int] NULL,
	[Parentesco] [varchar](1000) NULL,
	[ParentescoCelular] [varchar](50) NULL,
	[IdClasificacion] [int] NULL,
	[IdLugarIntoxicacion] [int] NULL,
	[LugarIntoxicacionOtro] [varchar](1000) NULL,
	[LugarIntoxicacionDir] [varchar](1000) NULL,
	[ProductoConsumido] [varchar](1000) NULL,
	[FechaConsumo] [date] NULL,
	[HoraConsumo] [varchar](5) NULL,
	[LocalAdquisicionProducto] [varchar](1000) NULL,
	[IdEnfermedadCronica] [int] NULL,
	[EnfermedadCronicaEsp] [varchar](1000) NULL,
	[FechaInicioSintomas] [date] NULL,
	[HoraInicioSintomas] [varchar](5) NULL,
	[OpcionOtros] [varchar](1000) NULL,
	[FechaTomaMuestra] [date] NULL,
	[IdTipoMuestra] [int] NULL,
	[TipoMuestraOtro] [varchar](1000) NULL,
	[Resultado] [varchar](1000) NULL,
	[FechaResultado] [date] NULL,
	[OtrosExamenes] [varchar](1000) NULL,
	[OtrosResultados] [varchar](1000) NULL,
	[FechaAga] [date] NULL,
	[HoraAga] [varchar](5) NULL,
	[PH] [varchar](20) NULL,
	[PO2] [varchar](20) NULL,
	[PCO2] [varchar](20) NULL,
	[HCO3] [varchar](20) NULL,
	[CI] [varchar](20) NULL,
	[Na] [varchar](20) NULL,
	[K] [varchar](20) NULL,
	[AnionGap] [varchar](20) NULL,
	[IdAcidosisMetabolica] [int] NULL,
	[IdUsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdUsuarioLaboratorio] [int] NULL,
	[FechaLaboratorio] [datetime] NULL,
	[IdUsuarioLaboratorioModificacion] [int] NULL,
	[FechaLaboratorioModificacion] [datetime] NULL,
	[IdEstado] [int] NULL,
	[IdUsuarioElimina] [int] NULL,
	[FechaElimina] [datetime] NULL,
	[FechaSolicitud] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMetanol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNMetanolDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNMetanolDetalle](
	[IdMetanol] [int] NOT NULL,
	[IdItem] [int] NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[IdEstado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNOpciones]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNOpciones](
	[IdTipo] [int] NOT NULL,
	[IdOpcion] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdEstado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNTipoMuestra]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNTipoMuestra](
	[IdTipoMuestra] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoMuestra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modulo_aplicativo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modulo_aplicativo](
	[id_modulo_aplicativo] [int] IDENTITY(1,1) NOT NULL,
	[modulo] [varchar](30) NOT NULL,
	[id_aplicativo] [int] NOT NULL,
 CONSTRAINT [modulo_aplicativo_PK] PRIMARY KEY CLUSTERED 
(
	[id_modulo_aplicativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonitoreoNutricional]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonitoreoNutricional](
	[IdMonitoreo] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[FechaMonitoreo] [date] NULL,
	[Observacion] [varchar](2000) NULL,
	[IdUsuario] [int] NULL,
	[FechaRegistro] [date] NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMonitoreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoReprogramacion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoReprogramacion](
	[idMotivoReprogramacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_MotivoReprogramacion] PRIMARY KEY CLUSTERED 
(
	[idMotivoReprogramacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivosMovimientoHistoria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivosMovimientoHistoria](
	[IdMotivo] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [MotivosPrestamoHistoria_PK] PRIMARY KEY CLUSTERED 
(
	[IdMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientoHC]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientoHC](
	[idMovimiento] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](2) NULL,
	[fechaRegistro] [datetime] NULL,
	[idEmpleadoReg] [int] NULL,
	[idEstado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientosEstadosCamas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientosEstadosCamas](
	[IdRegistroCama] [int] IDENTITY(1,1) NOT NULL,
	[IdMotivo] [varchar](1) NULL,
	[IdTipoDocumento] [int] NULL,
	[NroDocumento] [varchar](12) NULL,
	[NroHistoria] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[ApellidoMaterno] [varchar](40) NULL,
	[PrimerNombre] [varchar](40) NULL,
	[SegundoNombre] [varchar](40) NULL,
	[IdCama] [int] NULL,
	[IdEstadoCama] [int] NULL,
	[IdUsuario] [int] NULL,
	[FechaRegistro] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientosFormatosHistoriaClinica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientosFormatosHistoriaClinica](
	[IdMovimiento] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[FechaMovimiento] [datetime] NOT NULL,
	[IdMotivo] [int] NOT NULL,
	[Observacion] [varchar](100) NULL,
	[IdServicioOrigen] [int] NULL,
	[IdServicioDestino] [int] NULL,
	[NroFolios] [int] NULL,
	[IdEmpleadoArchivo] [int] NULL,
	[IdEmpleadoTransporte] [int] NULL,
	[IdEmpleadoRecepcion] [int] NULL,
	[IdGrupoMovimiento] [int] NULL,
	[IdAtencion] [int] NULL,
 CONSTRAINT [PK_MovimientosFormatosHistoriaClinica] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientosHistoriaClinica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientosHistoriaClinica](
	[IdMovimiento] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[FechaMovimiento] [datetime] NOT NULL,
	[IdMotivo] [int] NOT NULL,
	[Observacion] [varchar](100) NULL,
	[IdServicioOrigen] [int] NULL,
	[IdServicioDestino] [int] NULL,
	[NroFolios] [int] NULL,
	[IdEmpleadoArchivo] [int] NULL,
	[IdEmpleadoTransporte] [int] NULL,
	[IdEmpleadoRecepcion] [int] NULL,
	[IdGrupoMovimiento] [int] NULL,
	[IdAtencion] [int] NULL,
 CONSTRAINT [PrestamosHistoriaClinica_PK] PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaCreditoDebito]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaCreditoDebito](
	[IdNota] [int] IDENTITY(1,1) NOT NULL,
	[IdComprobantePago] [int] NULL,
	[IdTipoNota] [int] NULL,
	[NroSerie] [char](3) NULL,
	[NroDocumento] [varchar](12) NULL,
	[RazonSocial] [varchar](50) NULL,
	[RUC] [char](11) NULL,
	[SubTotal] [money] NULL,
	[IGV] [money] NULL,
	[Total] [money] NOT NULL,
	[IdUsuarioAutoriza] [int] NULL,
	[FechaAprueba] [datetime] NULL,
	[notas] [varchar](100) NULL,
	[TipoCambio] [money] NULL,
	[Observaciones] [varchar](500) NULL,
	[IdEstadoNota] [int] NULL,
	[FechaPagado] [datetime] NULL,
	[IdGestionCaja] [int] NULL,
	[IdPaciente] [int] NULL,
	[IdCajero] [int] NULL,
	[idTurno] [int] NULL,
	[idCaja] [int] NULL,
	[idFarmacia] [int] NULL,
	[idMotivo] [int] NULL,
	[Direccion] [varchar](50) NULL,
	[TipoAnulacion] [bit] NULL,
	[EstadoFacturadorNC] [int] NULL,
	[estadofacturador] [int] NULL,
	[fechaEnvioSunat] [datetime] NULL,
	[sunatCodigo] [varchar](10) NULL,
	[sunatRespuesta] [varchar](200) NULL,
	[sunatCpe] [varchar](100) NULL,
	[sunatCdr] [varchar](100) NULL,
	[esCheque] [int] NULL,
	[NroCheque] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaCreditoDebitoEstadoNota]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaCreditoDebitoEstadoNota](
	[IdEstado] [int] NULL,
	[EstadoNota] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaCreditoDebitoMotivo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaCreditoDebitoMotivo](
	[IdMotivo] [int] NULL,
	[Motivo] [varchar](50) NULL,
	[codigoSUNAT] [varchar](5) NULL,
	[tipo] [varchar](10) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaCreditoDebitoTipoNota]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaCreditoDebitoTipoNota](
	[IdTipoNota] [int] NULL,
	[TipoNota] [varchar](50) NULL,
	[NroSerie] [char](3) NULL,
	[NroDocumento] [char](12) NULL,
	[NroDocumentoInicial] [char](12) NULL,
	[NroDocumentoFinal] [char](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospecha]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospecha](
	[IdNotificacionSospecha] [int] IDENTITY(1,1) NOT NULL,
	[IdFormato] [int] NULL,
	[NroNotificacion] [varchar](10) NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleadoRegistra] [int] NULL,
	[DescripcionRA] [varchar](5000) NULL,
	[TipoNotificacion] [varchar](50) NULL,
	[FechaInicioRAM] [date] NULL,
	[FechaFinalRAM] [date] NULL,
	[IdTipoGravedad] [int] NULL,
	[IdTipoGrvedadGrave] [varchar](20) NULL,
	[IdDesenlace] [int] NULL,
	[ResultadosLaboratorio] [varchar](5000) NULL,
	[OtrosDatosHC] [varchar](5000) NULL,
	[Suspension] [varchar](50) NULL,
	[Reexposicion] [varchar](50) NULL,
	[TratamientoRA] [varchar](50) NULL,
	[ProblemasCalidadRS] [varchar](50) NULL,
	[ProblemasCalidadFV] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdEmpleadoAudita] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaCausa]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaCausa](
	[IdCausa] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaConsecuencia]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaConsecuencia](
	[IdConsecuencia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaDesenlace]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaDesenlace](
	[IdDesenlace] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaDetalleFormato3]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaDetalleFormato3](
	[idDetalleFormato3] [int] IDENTITY(1,1) NOT NULL,
	[IdNotificacionSospechosa] [int] NULL,
	[Diabetes] [int] NULL,
	[VIH] [int] NULL,
	[Drogadiccion] [int] NULL,
	[Alcoholismo] [int] NULL,
	[Hepatopatiaaguda] [int] NULL,
	[Hepatopatia] [int] NULL,
	[Gastritis] [int] NULL,
	[Dermatopatias] [int] NULL,
	[Tabaquismo] [int] NULL,
	[Asma] [int] NULL,
	[Convulsiones] [int] NULL,
	[Alteraciones] [int] NULL,
	[Insuficiencia] [int] NULL,
	[Desnutricion] [int] NULL,
	[OtrosEnfermedades] [varchar](500) NULL,
	[SuspendioTodosMedicamentos] [int] NULL,
	[SuspendioSoloMedicamentos] [varchar](500) NULL,
	[DisminuyoDosis] [int] NULL,
	[Desensibilizacion] [int] NULL,
	[CambioEsquema] [varchar](50) NULL,
	[TratamientoRAM] [varchar](50) NULL,
	[Observaciones] [varchar](5000) NULL,
	[Gastricac] [int] NULL,
	[Psiquiatricac] [int] NULL,
	[Hematologicac] [int] NULL,
	[Endocrinologicac] [int] NULL,
	[Dermicac] [int] NULL,
	[Renalc] [int] NULL,
	[Osteoarticularc] [int] NULL,
	[diarreicac] [int] NULL,
	[Hepaticac] [int] NULL,
	[Ototoxicac] [int] NULL,
	[Neurologicac] [int] NULL,
	[Otrosc] [varchar](50) NULL,
	[Registrotb] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaDetalleFormato4]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaDetalleFormato4](
	[idDetalleFormato4] [int] IDENTITY(1,1) NOT NULL,
	[IdNotificacionSospecha] [int] NULL,
	[IdProducto] [int] NULL,
	[NombreComercial] [varchar](5000) NULL,
	[RegistroSanitario] [varchar](50) NULL,
	[Lote] [varchar](50) NULL,
	[Modelo] [varchar](50) NULL,
	[Serie] [varchar](50) NULL,
	[FechaFabricacion] [date] NULL,
	[FechaExpiracion] [date] NULL,
	[NombreSitioFabricante] [varchar](500) NULL,
	[IdPaisa] [int] NULL,
	[NombreFabricante] [varchar](500) NULL,
	[IdPaisb] [int] NULL,
	[NombreImportador] [varchar](500) NULL,
	[Uso] [int] NULL,
	[Temporalidad] [varchar](50) NULL,
	[IdServicio] [int] NULL,
	[TipoAfectado] [varchar](50) NULL,
	[Clasificacion] [varchar](50) NULL,
	[IdConsecuencia] [varchar](5000) NULL,
	[IdCausa] [varchar](5000) NULL,
	[AccionesCorrectivas] [varchar](5000) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaFormatos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaFormatos](
	[IdFormato] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaMedicamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaMedicamentos](
	[IdDetalleMedicamentos] [int] IDENTITY(1,1) NOT NULL,
	[IdNotificacionSospecha] [int] NULL,
	[NombreComercial] [varchar](50) NULL,
	[Laboratorio] [varchar](50) NULL,
	[Lote] [varchar](50) NULL,
	[Dosis] [int] NULL,
	[Frecuencia] [int] NULL,
	[ViaAdministracion] [int] NULL,
	[FechaInicio] [date] NULL,
	[FechaFinal] [date] NULL,
	[MotivoPrescripcion] [varchar](500) NULL,
	[Seccion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaTipoGravedad]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaTipoGravedad](
	[IdTipoGravedad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaTipos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaTipos](
	[IdTipoNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechaTiposGravedadGrave]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechaTiposGravedadGrave](
	[IdTipoGrvedadGrave] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificacionSospechosaTiposMedicamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificacionSospechosaTiposMedicamentos](
	[IdMedicamento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](5000) NULL,
	[Tipo] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nutricion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nutricion](
	[IdNutricion] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdUsuario] [int] NULL,
	[Fecha] [datetime] NULL,
	[Servicio] [varchar](500) NULL,
	[Cama] [varchar](10) NULL,
	[EvaluacionAntropometrica] [varchar](2000) NULL,
	[ValoracionEvaluacionAntropometrica] [varchar](2000) NULL,
	[EvaluacionBioquimica] [varchar](2000) NULL,
	[ValoracionEvaluacionBioquimica] [varchar](2000) NULL,
	[EvaluacionClinica] [varchar](2000) NULL,
	[ValoracionEvaluacionClinica] [varchar](2000) NULL,
	[EvaluacionDietetica] [varchar](2000) NULL,
	[ValoracionEvaluacionDietetica] [varchar](2000) NULL,
	[EvaluacionFuncional] [varchar](2000) NULL,
	[ValoracionEvaluacionFuncional] [varchar](2000) NULL,
	[EvaluacionBioimpedancia] [varchar](2000) NULL,
	[ValoracionEvaluacionBioimpedancia] [varchar](2000) NULL,
	[RequerimientoNutricional] [varchar](2000) NULL,
	[IntervencionNutricional] [varchar](2000) NULL,
	[DietoterapiaHC] [varchar](2000) NULL,
	[DietoterapiaVN] [varchar](2000) NULL,
	[Energia] [varchar](100) NULL,
	[Proteina] [varchar](100) NULL,
	[TipoFormato] [int] NULL,
	[IdAntecedentePatologico] [int] NULL,
	[Alergias] [varchar](2000) NULL,
	[Sintomas] [varchar](2000) NULL,
	[Restriccion] [varchar](2000) NULL,
	[Denticion] [varchar](2000) NULL,
	[Interaccion] [varchar](2000) NULL,
	[TipoAlimento] [varchar](2000) NULL,
	[IdTamizaje] [int] NULL,
	[Puntaje] [int] NULL,
	[IdResultado] [int] NULL,
	[ObjetivoNutricional] [varchar](2000) NULL,
	[Grasa] [varchar](200) NULL,
	[Carbohidrato] [varchar](200) NULL,
	[Agua] [varchar](200) NULL,
	[Otros] [varchar](2000) NULL,
	[SegDietoterapeuticoActual] [varchar](2000) NULL,
	[SegViaAdministracion] [varchar](2000) NULL,
	[SegVolumen] [varchar](2000) NULL,
	[SegConsumo] [varchar](2000) NULL,
	[SegDietoterapeuticoPropuesto] [varchar](2000) NULL,
	[SegObservacion] [varchar](5000) NULL,
	[IdEstado] [int] NULL,
	[AntecedentePatologicoOtro] [varchar](2000) NULL,
	[ConTipoRegimen] [varchar](1000) NULL,
	[ConObservaciones] [varchar](5000) NULL,
	[IdTamizaje2] [int] NULL,
	[Puntaje2] [int] NULL,
	[IdResultado2] [int] NULL,
	[Uci] [int] NULL,
	[IdUsuarioConsejeria] [int] NULL,
	[FechaConsejeria] [datetime] NULL,
	[IdUsuarioTratante] [int] NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdUsuarioTratanteConsejeria] [int] NULL,
 CONSTRAINT [PK__nutricio__50F2F6F020EC93B4] PRIMARY KEY CLUSTERED 
(
	[IdNutricion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NutricionDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NutricionDetalle](
	[IdNutricionDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdNutricion] [int] NOT NULL,
	[IdAntecedentesPatologicos] [varchar](100) NULL,
	[IdTamizajeNutricional] [int] NULL,
	[TipoTamizajeNutricional] [int] NULL,
	[Peso] [varchar](10) NULL,
	[Talla] [varchar](10) NULL,
	[CMB] [varchar](10) NULL,
	[PCT] [varchar](10) NULL,
	[ObservacionAntropometrico] [varchar](2000) NULL,
	[Glucosa] [varchar](500) NULL,
	[HemoglobinaGlicosilada] [varchar](500) NULL,
	[Hemoglobina] [varchar](500) NULL,
	[Plaqueta] [varchar](500) NULL,
	[Urea] [varchar](500) NULL,
	[Creatinina] [varchar](500) NULL,
	[Albumina] [varchar](500) NULL,
	[PCR] [varchar](500) NULL,
	[Sodio] [varchar](500) NULL,
	[Potasio] [varchar](500) NULL,
	[Cloro] [varchar](500) NULL,
	[Lactalo] [varchar](500) NULL,
	[Calcio] [varchar](500) NULL,
	[Fosforo] [varchar](500) NULL,
	[Magnesio] [varchar](500) NULL,
	[ObservacionBioquimico] [varchar](2000) NULL,
	[TipoNutricion] [varchar](500) NULL,
	[RegimenDietoterapeutico] [varchar](500) NULL,
	[Volumen] [varchar](500) NULL,
	[Consumo] [varchar](500) NULL,
	[AdecuacionEnergetica] [varchar](500) NULL,
	[AdecuacionProteica] [varchar](500) NULL,
	[ObservacionDietetico] [varchar](2000) NULL,
	[FuerzaPresionManual] [varchar](500) NULL,
	[VelocidadMarcha] [varchar](500) NULL,
	[ObservacionFuncional] [varchar](2000) NULL,
	[IndiceMasaGrasa] [varchar](500) NULL,
	[IndiceMasaMagra] [varchar](500) NULL,
	[MasaMuscularEsqueletica] [varchar](500) NULL,
	[AnguloFase] [varchar](500) NULL,
	[AguaCorporalTotal] [varchar](100) NULL,
	[AguaExtracelular] [varchar](100) NULL,
	[AguaIntracelular] [varchar](100) NULL,
	[Hidratacion] [varchar](500) NULL,
	[ObservacionBioimpedancia] [varchar](2000) NULL,
	[TipoNutricionPSR] [varchar](100) NULL,
	[RegimenDietoterapeuticoPSR] [varchar](500) NULL,
	[VolumenPSR] [varchar](500) NULL,
	[ConsumoPSR] [varchar](500) NULL,
	[ObservacionSeguimientoNutricional] [varchar](2000) NULL,
	[TipoRegimenDietoterapeuticoPA] [varchar](500) NULL,
	[ObservacionConsejeriaNutricional] [varchar](2000) NULL,
	[IdUsuario] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
	[TipoFormato] [int] NULL,
	[Alergias] [varchar](2000) NULL,
	[Sintomas] [varchar](2000) NULL,
	[Restriccion] [varchar](2000) NULL,
	[Denticion] [varchar](2000) NULL,
	[Interaccion] [varchar](2000) NULL,
	[TipoAlimento] [varchar](2000) NULL,
	[TamizajeNutricional] [varchar](2000) NULL,
	[Antropometrica] [varchar](2000) NULL,
	[AntropometricaVal] [varchar](2000) NULL,
	[Bioquimica] [varchar](2000) NULL,
	[BioquimicaVal] [varchar](2000) NULL,
	[Clinica] [varchar](2000) NULL,
	[ClinicaVal] [varchar](2000) NULL,
	[Dietetica] [varchar](2000) NULL,
	[DieteticaVal] [varchar](2000) NULL,
	[Funcional] [varchar](2000) NULL,
	[FuncionalVal] [varchar](2000) NULL,
	[ObjetivoNutricional] [varchar](2000) NULL,
	[Energia] [varchar](100) NULL,
	[Proteina] [varchar](100) NULL,
	[Grasa] [varchar](100) NULL,
	[Carbohidrato] [varchar](100) NULL,
	[Agua] [varchar](100) NULL,
	[Otros] [varchar](2000) NULL,
	[SegDietoterapeuticoActual] [varchar](2000) NULL,
	[SegViaAdministración] [varchar](2000) NULL,
	[SegVolumen] [varchar](2000) NULL,
	[SegConsumo] [varchar](2000) NULL,
	[SegDietoterapeuticoPropuesto] [varchar](2000) NULL,
	[SegObservacion] [varchar](5000) NULL,
 CONSTRAINT [PK__Nutricio__E4788C182F3AB30B] PRIMARY KEY CLUSTERED 
(
	[IdNutricionDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NutricionDiagnoticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NutricionDiagnoticos](
	[IdDxNutricion] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaATencion] [int] NULL,
	[Problema] [varchar](1000) NULL,
	[Etiologia] [varchar](1000) NULL,
	[SignosySintomas] [varchar](1000) NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
	[IdNutricion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDxNutricion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NutricionDieta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NutricionDieta](
	[IdNutricion] [int] IDENTITY(1,1) NOT NULL,
	[IdcuentaAtencion] [int] NULL,
	[FormulaEnteral] [varchar](5000) NULL,
	[IdLiquida] [int] NULL,
	[Idpolvo] [int] NULL,
	[ModuloProteico] [varchar](5000) NULL,
	[IdVia] [int] NULL,
	[Volumen] [varchar](5000) NULL,
	[Tiempo20] [int] NULL,
	[Tiempo40] [int] NULL,
	[AdminBolos] [int] NULL,
	[ADminInfusion] [int] NULL,
	[VelocidadInfusion] [varchar](5000) NULL,
	[Dieta] [varchar](5000) NULL,
	[Volumen2] [varchar](5000) NULL,
	[IdUsuario] [int] NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK__Nutricio__50F2F6F03710DEFD] PRIMARY KEY CLUSTERED 
(
	[IdNutricion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NutricionTamizaje]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NutricionTamizaje](
	[IdNutricionTamizaje] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNutricionTamizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NutricionTamizajeResultado]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NutricionTamizajeResultado](
	[IdNutricionTamizajeResultado] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNutricionTamizajeResultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjetosFormulario]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjetosFormulario](
	[idObjetosFormulario] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](20) NULL,
	[Nombre] [varchar](60) NULL,
	[Descripcion] [varchar](150) NULL,
	[idEstado] [char](1) NULL,
	[Codigo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idObjetosFormulario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjetosFormularioDetalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjetosFormularioDetalle](
	[idObjetosFormularioDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idObjetosFormulario] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[Obligatorio] [char](1) NULL,
	[Visible] [char](1) NULL,
	[idEstado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idObjetosFormularioDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPCS]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPCS](
	[IdOPCS] [int] NOT NULL,
	[Codigo] [char](7) NULL,
	[Descripcion] [varchar](255) NULL,
 CONSTRAINT [OPCS_PK] PRIMARY KEY CLUSTERED 
(
	[IdOPCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenDiagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenDiagnosticos](
	[IdOrdenDx] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [OrdenDiagnosticos_PK] PRIMARY KEY CLUSTERED 
(
	[IdOrdenDx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenesObservacionesXProducto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenesObservacionesXProducto](
	[idProducto] [int] NOT NULL,
	[Observacion] [varchar](500) NULL,
	[Estado] [char](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtrosProcedimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtrosProcedimientos](
	[IdCuentaAtencion] [int] NULL,
	[Codigo] [varchar](10) NULL,
	[Activar] [int] NULL,
	[Fecha] [datetime] NULL,
	[IdUsuario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteParentescoContacto]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteParentescoContacto](
	[IdContacto] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NULL,
	[IdParentesco] [int] NULL,
	[IdEstado] [int] NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](20) NULL,
	[NroDocumento] [varchar](12) NULL,
	[IndPrincipal] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
	[Sistema] [int] NULL,
	[IdOrden] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[IdPaciente] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[ApellidoMaterno] [varchar](40) NULL,
	[PrimerNombre] [varchar](40) NULL,
	[SegundoNombre] [varchar](40) NULL,
	[TercerNombre] [varchar](40) NULL,
	[FechaNacimiento] [datetime] NULL,
	[NroDocumento] [varchar](12) NULL,
	[Telefono] [varchar](10) NULL,
	[DireccionDomicilio] [varchar](100) NULL,
	[Autogenerado] [varchar](30) NULL,
	[IdTipoSexo] [int] NULL,
	[IdProcedencia] [int] NULL,
	[IdGradoInstruccion] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[IdDocIdentidad] [int] NULL,
	[IdTipoOcupacion] [int] NULL,
	[IdCentroPobladoNacimiento] [int] NULL,
	[IdCentroPobladoDomicilio] [int] NULL,
	[NombrePadre] [varchar](20) NULL,
	[NombreMadre] [varchar](20) NULL,
	[NroHistoriaClinica] [varchar](50) NULL,
	[IdTipoNumeracion] [int] NULL,
	[IdCentroPobladoProcedencia] [int] NULL,
	[Observacion] [varchar](150) NULL,
	[IdPaisDomicilio] [int] NULL,
	[IdPaisProcedencia] [int] NULL,
	[IdPaisNacimiento] [int] NULL,
	[IdDistritoProcedencia] [int] NULL,
	[IdDistritoDomicilio] [int] NULL,
	[IdDistritoNacimiento] [int] NULL,
	[FichaFamiliar] [varchar](20) NULL,
	[IdEtnia] [varchar](2) NULL,
	[GrupoSanguineo] [varchar](10) NULL,
	[FactorRh] [varchar](10) NULL,
	[UsoWebReniec] [bit] NULL,
	[IdIdioma] [int] NULL,
	[Email] [varchar](50) NULL,
	[madreDocumento] [varchar](12) NULL,
	[madreApellidoPaterno] [varchar](20) NULL,
	[madreApellidoMaterno] [varchar](20) NULL,
	[madrePrimerNombre] [varchar](20) NULL,
	[madreSegundoNombre] [varchar](20) NULL,
	[NroOrdenHijo] [int] NULL,
	[madreTipoDocumento] [int] NULL,
	[Sector] [varchar](2) NULL,
	[Sectorista] [int] NULL,
	[Telefono2] [varchar](20) NULL,
	[Telefono3] [varchar](20) NULL,
	[Telefono4] [varchar](20) NULL,
	[Religion] [varchar](50) NULL,
	[IdPaisDomicilioTutor] [int] NULL,
	[IdCentroPobladoDomicilioTutor] [int] NULL,
	[IdDistritoDomicilioTutor] [int] NULL,
	[DireccionDomicilioTutor] [varchar](500) NULL,
	[tieneHCDigital] [char](2) NULL,
	[InfTipoDocumento] [int] NULL,
	[InfNroDocumento] [varchar](50) NULL,
	[InfApePaterno] [varchar](50) NULL,
	[InfApeMaterno] [varchar](50) NULL,
	[InfPNombre] [varchar](50) NULL,
	[InfSNombre] [varchar](50) NULL,
	[InfTelefono] [varchar](20) NULL,
	[InfIdParentesco] [int] NULL,
	[InfDistrito] [int] NULL,
	[InfPoblado] [int] NULL,
	[InfPais] [int] NULL,
	[InfDireccion] [varchar](200) NULL,
	[TipoDocumentoMadre] [int] NULL,
	[NroDocumentoMadre] [varchar](20) NULL,
	[NombresMadre] [varchar](200) NULL,
	[TipoDocumentoPadre] [int] NULL,
	[NroDocumentoPadre] [varchar](20) NULL,
	[NombresPadre] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[CondLaboral] [int] NULL,
	[IdDiscapacidad] [int] NULL,
 CONSTRAINT [Pacientes_PK] PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes_Borrados]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes_Borrados](
	[IdPaciente] [int] NOT NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[ApellidoMaterno] [varchar](40) NULL,
	[PrimerNombre] [varchar](40) NULL,
	[SegundoNombre] [varchar](40) NULL,
	[TercerNombre] [varchar](40) NULL,
	[FechaNacimiento] [datetime] NULL,
	[NroDocumento] [varchar](12) NULL,
	[Telefono] [varchar](10) NULL,
	[DireccionDomicilio] [varchar](100) NULL,
	[Autogenerado] [varchar](30) NULL,
	[IdTipoSexo] [int] NULL,
	[IdProcedencia] [int] NULL,
	[IdGradoInstruccion] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[IdDocIdentidad] [int] NULL,
	[IdTipoOcupacion] [int] NULL,
	[IdCentroPobladoNacimiento] [int] NULL,
	[IdCentroPobladoDomicilio] [int] NULL,
	[NombrePadre] [varchar](20) NULL,
	[NombreMadre] [varchar](20) NULL,
	[NroHistoriaClinica] [varchar](50) NULL,
	[IdTipoNumeracion] [int] NULL,
	[IdCentroPobladoProcedencia] [int] NULL,
	[Observacion] [varchar](150) NULL,
	[IdPaisDomicilio] [int] NULL,
	[IdPaisProcedencia] [int] NULL,
	[IdPaisNacimiento] [int] NULL,
	[IdDistritoProcedencia] [int] NULL,
	[IdDistritoDomicilio] [int] NULL,
	[IdDistritoNacimiento] [int] NULL,
	[FichaFamiliar] [varchar](20) NULL,
	[IdEtnia] [varchar](2) NULL,
	[GrupoSanguineo] [varchar](10) NULL,
	[FactorRh] [varchar](10) NULL,
	[UsoWebReniec] [bit] NULL,
	[IdIdioma] [int] NULL,
	[Email] [varchar](50) NULL,
	[madreDocumento] [varchar](12) NULL,
	[madreApellidoPaterno] [varchar](20) NULL,
	[madreApellidoMaterno] [varchar](20) NULL,
	[madrePrimerNombre] [varchar](20) NULL,
	[madreSegundoNombre] [varchar](20) NULL,
	[NroOrdenHijo] [int] NULL,
	[madreTipoDocumento] [int] NULL,
	[Sector] [varchar](2) NULL,
	[Sectorista] [int] NULL,
	[Telefono2] [varchar](20) NULL,
	[Telefono3] [varchar](20) NULL,
	[Telefono4] [varchar](20) NULL,
	[Religion] [varchar](50) NULL,
	[IdPaisDomicilioTutor] [int] NULL,
	[IdCentroPobladoDomicilioTutor] [int] NULL,
	[IdDistritoDomicilioTutor] [int] NULL,
	[DireccionDomicilioTutor] [varchar](500) NULL,
	[tieneHCDigital] [char](2) NULL,
	[InfTipoDocumento] [int] NULL,
	[InfNroDocumento] [varchar](50) NULL,
	[InfApePaterno] [varchar](50) NULL,
	[InfApeMaterno] [varchar](50) NULL,
	[InfPNombre] [varchar](50) NULL,
	[InfSNombre] [varchar](50) NULL,
	[InfTelefono] [varchar](20) NULL,
	[InfIdParentesco] [int] NULL,
	[InfDistrito] [int] NULL,
	[InfPoblado] [int] NULL,
	[InfPais] [int] NULL,
	[InfDireccion] [varchar](200) NULL,
	[TipoDocumentoMadre] [int] NULL,
	[NroDocumentoMadre] [varchar](20) NULL,
	[NombresMadre] [varchar](200) NULL,
	[TipoDocumentoPadre] [int] NULL,
	[NroDocumentoPadre] [varchar](20) NULL,
	[NombresPadre] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[CondLaboral] [int] NULL,
	[IdDiscapacidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesBak]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesBak](
	[IdPaciente] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[ApellidoMaterno] [varchar](40) NULL,
	[PrimerNombre] [varchar](40) NULL,
	[SegundoNombre] [varchar](40) NULL,
	[TercerNombre] [varchar](40) NULL,
	[FechaNacimiento] [datetime] NULL,
	[NroDocumento] [varchar](12) NULL,
	[Telefono] [varchar](10) NULL,
	[DireccionDomicilio] [varchar](100) NULL,
	[Autogenerado] [varchar](30) NULL,
	[IdTipoSexo] [int] NULL,
	[IdProcedencia] [int] NULL,
	[IdGradoInstruccion] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[IdDocIdentidad] [int] NULL,
	[IdTipoOcupacion] [int] NULL,
	[IdCentroPobladoNacimiento] [int] NULL,
	[IdCentroPobladoDomicilio] [int] NULL,
	[NombrePadre] [varchar](20) NULL,
	[NombreMadre] [varchar](20) NULL,
	[NroHistoriaClinica] [varchar](50) NULL,
	[IdTipoNumeracion] [int] NULL,
	[IdCentroPobladoProcedencia] [int] NULL,
	[Observacion] [varchar](150) NULL,
	[IdPaisDomicilio] [int] NULL,
	[IdPaisProcedencia] [int] NULL,
	[IdPaisNacimiento] [int] NULL,
	[IdDistritoProcedencia] [int] NULL,
	[IdDistritoDomicilio] [int] NULL,
	[IdDistritoNacimiento] [int] NULL,
	[FichaFamiliar] [varchar](20) NULL,
	[IdEtnia] [varchar](2) NULL,
	[GrupoSanguineo] [varchar](10) NULL,
	[FactorRh] [varchar](10) NULL,
	[UsoWebReniec] [bit] NULL,
	[IdIdioma] [int] NULL,
	[Email] [varchar](50) NULL,
	[madreDocumento] [varchar](12) NULL,
	[madreApellidoPaterno] [varchar](20) NULL,
	[madreApellidoMaterno] [varchar](20) NULL,
	[madrePrimerNombre] [varchar](20) NULL,
	[madreSegundoNombre] [varchar](20) NULL,
	[NroOrdenHijo] [int] NULL,
	[madreTipoDocumento] [int] NULL,
	[Sector] [varchar](2) NULL,
	[Sectorista] [int] NULL,
	[Telefono2] [varchar](20) NULL,
	[Telefono3] [varchar](20) NULL,
	[Telefono4] [varchar](20) NULL,
	[Religion] [varchar](50) NULL,
	[IdPaisDomicilioTutor] [int] NULL,
	[IdCentroPobladoDomicilioTutor] [int] NULL,
	[IdDistritoDomicilioTutor] [int] NULL,
	[DireccionDomicilioTutor] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pacientesBorrar]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pacientesBorrar](
	[IdPaciente] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[ApellidoMaterno] [varchar](40) NULL,
	[PrimerNombre] [varchar](40) NULL,
	[SegundoNombre] [varchar](40) NULL,
	[TercerNombre] [varchar](40) NULL,
	[FechaNacimiento] [datetime] NULL,
	[NroDocumento] [varchar](12) NULL,
	[Telefono] [varchar](10) NULL,
	[DireccionDomicilio] [varchar](100) NULL,
	[Autogenerado] [varchar](30) NULL,
	[IdTipoSexo] [int] NULL,
	[IdProcedencia] [int] NULL,
	[IdGradoInstruccion] [int] NULL,
	[IdEstadoCivil] [int] NULL,
	[IdDocIdentidad] [int] NULL,
	[IdTipoOcupacion] [int] NULL,
	[IdCentroPobladoNacimiento] [int] NULL,
	[IdCentroPobladoDomicilio] [int] NULL,
	[NombrePadre] [varchar](20) NULL,
	[NombreMadre] [varchar](20) NULL,
	[NroHistoriaClinica] [varchar](50) NULL,
	[IdTipoNumeracion] [int] NULL,
	[IdCentroPobladoProcedencia] [int] NULL,
	[Observacion] [varchar](150) NULL,
	[IdPaisDomicilio] [int] NULL,
	[IdPaisProcedencia] [int] NULL,
	[IdPaisNacimiento] [int] NULL,
	[IdDistritoProcedencia] [int] NULL,
	[IdDistritoDomicilio] [int] NULL,
	[IdDistritoNacimiento] [int] NULL,
	[FichaFamiliar] [varchar](20) NULL,
	[IdEtnia] [varchar](2) NULL,
	[GrupoSanguineo] [varchar](10) NULL,
	[FactorRh] [varchar](10) NULL,
	[UsoWebReniec] [bit] NULL,
	[IdIdioma] [int] NULL,
	[Email] [varchar](50) NULL,
	[madreDocumento] [varchar](12) NULL,
	[madreApellidoPaterno] [varchar](20) NULL,
	[madreApellidoMaterno] [varchar](20) NULL,
	[madrePrimerNombre] [varchar](20) NULL,
	[madreSegundoNombre] [varchar](20) NULL,
	[NroOrdenHijo] [int] NULL,
	[madreTipoDocumento] [int] NULL,
	[Sector] [varchar](2) NULL,
	[Sectorista] [int] NULL,
	[Telefono2] [varchar](20) NULL,
	[Telefono3] [varchar](20) NULL,
	[Telefono4] [varchar](20) NULL,
	[Religion] [varchar](50) NULL,
	[IdPaisDomicilioTutor] [int] NULL,
	[IdCentroPobladoDomicilioTutor] [int] NULL,
	[IdDistritoDomicilioTutor] [int] NULL,
	[DireccionDomicilioTutor] [varchar](500) NULL,
	[tieneHCDigital] [char](2) NULL,
	[InfTipoDocumento] [int] NULL,
	[InfNroDocumento] [varchar](50) NULL,
	[InfApePaterno] [varchar](50) NULL,
	[InfApeMaterno] [varchar](50) NULL,
	[InfPNombre] [varchar](50) NULL,
	[InfSNombre] [varchar](50) NULL,
	[InfTelefono] [varchar](20) NULL,
	[InfIdParentesco] [int] NULL,
	[InfDistrito] [int] NULL,
	[InfPoblado] [int] NULL,
	[InfPais] [int] NULL,
	[InfDireccion] [varchar](200) NULL,
	[TipoDocumentoMadre] [int] NULL,
	[NroDocumentoMadre] [varchar](20) NULL,
	[NombresMadre] [varchar](200) NULL,
	[TipoDocumentoPadre] [int] NULL,
	[NroDocumentoPadre] [varchar](20) NULL,
	[NombresPadre] [varchar](200) NULL,
	[FechaCreacion] [datetime] NULL,
	[CondLaboral] [int] NULL,
	[IdDiscapacidad] [int] NULL,
	[tieneHistoria] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesDatosAdicionales]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesDatosAdicionales](
	[idPaciente] [int] NOT NULL,
	[antecedentes] [varchar](1000) NULL,
	[antecedAlergico] [varchar](1000) NULL,
	[antecedObstetrico] [varchar](1000) NULL,
	[antecedQuirurgico] [varchar](1000) NULL,
	[antecedFamiliar] [varchar](1000) NULL,
	[antecedPatologico] [varchar](1000) NULL,
	[madreDNI] [varchar](8) NULL,
	[madreApellidoPaterno] [varchar](20) NULL,
	[madreApellidoMaterno] [varchar](20) NULL,
	[madrePrimerNombre] [varchar](20) NULL,
	[madreSegundoNombre] [varchar](20) NULL,
	[NroOrdenHijo] [int] NULL,
	[FNacimientoCalculada] [bit] NULL,
 CONSTRAINT [PK_PacientesDatosAdicionales] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesExtSegurosCtasVinculadas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesExtSegurosCtasVinculadas](
	[IdPacExtSeg] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdCuentaAtencionVinculado] [int] NULL,
	[FechaReg] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesMovimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesMovimientos](
	[IdCuentaAtencion] [int] NOT NULL,
	[Peso] [money] NULL,
	[Talla] [money] NULL,
	[idDxNutricional] [int] NULL,
	[GrafXedadEnMeses] [int] NULL,
	[GrafYpercentilTE] [int] NULL,
	[GrafYpercentilPT] [int] NULL,
	[GrafYpercentilPE] [int] NULL,
	[ZetaPT] [money] NULL,
	[ZetaTE] [money] NULL,
	[ZetaPE] [money] NULL,
	[Hemoglobina] [money] NULL,
	[Parasitosis] [varchar](2) NULL,
 CONSTRAINT [PK_PacientesMovimientos] PRIMARY KEY CLUSTERED 
(
	[IdCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesMovimientosDx]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesMovimientosDx](
	[idDxNutricional] [int] NOT NULL,
	[DxNutricional] [varchar](200) NOT NULL,
 CONSTRAINT [PK_PacientesMovimientosDx] PRIMARY KEY CLUSTERED 
(
	[idDxNutricional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesNuevos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesNuevos](
	[idpaciente] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PadronNominal_Detalle]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PadronNominal_Detalle](
	[IdPaNomDetalle] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdTipoDoc] [int] NULL,
	[NumDocumento] [int] NULL,
	[HistClinica] [varchar](10) NOT NULL,
	[ApellidoPaterno] [varchar](20) NOT NULL,
	[ApellidoMaterno] [varchar](20) NOT NULL,
	[Nombres] [varchar](40) NOT NULL,
	[idSexo] [int] NOT NULL,
	[FecNacimiento] [varchar](10) NOT NULL,
	[IdTipoSeguro] [int] NULL,
	[NumAfiliacion] [varchar](10) NULL,
	[FecEvaluacion] [varchar](10) NOT NULL,
	[Peso] [varchar](5) NOT NULL,
	[Talla] [varchar](3) NOT NULL,
	[IdDiagNutricional] [int] NULL,
	[CodRenaes] [int] NULL,
	[IdDiagPE] [int] NOT NULL,
	[IdDiagPT] [int] NOT NULL,
	[IdDiagTE] [int] NOT NULL,
	[hemoglobina] [int] NULL,
	[heces] [varchar](2) NULL,
	[renaes] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[padronnominal_dxnutricional]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[padronnominal_dxnutricional](
	[iddiagnostico] [int] NULL,
	[LabReferencia] [varchar](8) NULL,
	[RangoInicial] [money] NULL,
	[RangoFinal] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PadronNominal_DxNutriTemp]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PadronNominal_DxNutriTemp](
	[IdpadNomFormulario] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] NOT NULL,
	[Codigo] [char](3) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [Paises_PK] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PanamericanosMedicamentosProhibidos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PanamericanosMedicamentosProhibidos](
	[Codigo] [nvarchar](10) NULL,
	[Descripcion] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[IdParametro] [int] NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
	[Codigo] [varchar](20) NULL,
	[ValorTexto] [varchar](355) NULL,
	[ValorInt] [int] NULL,
	[ValorFloat] [float] NULL,
	[Descripcion] [varchar](150) NULL,
	[Grupo] [varchar](30) NULL,
 CONSTRAINT [Parametros_PK] PRIMARY KEY CLUSTERED 
(
	[IdParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametrosPrueba]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametrosPrueba](
	[IdParametro] [int] NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
	[Codigo] [varchar](20) NULL,
	[ValorTexto] [varchar](355) NULL,
	[ValorInt] [int] NULL,
	[ValorFloat] [float] NULL,
	[Descripcion] [varchar](150) NULL,
	[Grupo] [varchar](30) NULL,
 CONSTRAINT [ParametrosPrueba_PK] PRIMARY KEY CLUSTERED 
(
	[IdParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parentesco]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parentesco](
	[IdParentesco] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdParentesco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartoCesaria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartoCesaria](
	[IdCesaria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartoVaginal]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartoVaginal](
	[IdPartoVaginal] [int] IDENTITY(1,1) NOT NULL,
	[IdPreNatal] [int] NULL,
	[IdTipoParto] [int] NULL,
	[TipoPartoDistocisoEutosico] [varchar](50) NULL,
	[TiposDistocias] [int] NULL,
	[Episiotomia] [int] NULL,
	[Presentacion] [varchar](50) NULL,
	[PosicionMujerParto] [varchar](50) NULL,
	[TiempoPeriodoExpulsivo] [int] NULL,
	[DistociaCordon] [varchar](50) NULL,
	[TiempoAlumbramiento] [int] NULL,
	[DesgarroGrave] [varchar](50) NULL,
	[Anemia] [varchar](100) NULL,
	[Observacion] [varchar](100) NULL,
	[TranstornoHipertensivo] [int] NULL,
	[DescripcionTranstorno] [varchar](100) NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_PartoVaginal] PRIMARY KEY CLUSTERED 
(
	[IdPartoVaginal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatologiasObstetricas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatologiasObstetricas](
	[IdAtencion] [int] NULL,
	[IdPatologia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalAtencion]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalAtencion](
	[idPerinatalAtencion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idPaciente] [int] NOT NULL,
	[idModulo] [int] NOT NULL,
	[GrafXedadEnMeses] [int] NULL,
	[GrafYpercentilTE] [int] NULL,
	[GrafYpercentilPT] [int] NULL,
	[GrafYpercentilPE] [int] NULL,
	[GrafYimc] [money] NULL,
	[FechaAtencion] [datetime] NULL,
 CONSTRAINT [PK_PerinatalAtencion] PRIMARY KEY CLUSTERED 
(
	[idPerinatalAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalAtencionCred]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalAtencionCred](
	[idPerinatalAtencion] [int] NOT NULL,
	[EdadEnAnios] [varchar](10) NOT NULL,
	[CredNumero] [int] NOT NULL,
	[CredCheck] [varchar](1) NOT NULL,
	[idAtencion] [int] NULL,
 CONSTRAINT [PK_PerinatalAtencionCRED] PRIMARY KEY CLUSTERED 
(
	[idPerinatalAtencion] ASC,
	[EdadEnAnios] ASC,
	[CredNumero] ASC,
	[CredCheck] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalAtencionCred1]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalAtencionCred1](
	[idPerinatalAtencion] [int] NOT NULL,
	[idModulo] [int] NULL,
	[EstimulacionTemprana] [bit] NULL,
	[AlimentacionComplementaria] [bit] NULL,
	[LactanciaMaterna] [bit] NULL,
	[PersonalSalud] [bit] NULL,
	[DemandaIndividual] [bit] NULL,
	[MujerEdadReproductiva] [bit] NULL,
	[MujerGestante] [bit] NULL,
	[idAtencion] [int] NULL,
 CONSTRAINT [PK_PerinatalAtencionCred1] PRIMARY KEY CLUSTERED 
(
	[idPerinatalAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalAtencionDiagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalAtencionDiagnosticos](
	[idPerinatalAtencion] [int] NOT NULL,
	[idModulo] [int] NOT NULL,
	[idLista] [int] NOT NULL,
	[idDiagnostico] [int] NOT NULL,
	[CodigoHIS] [varchar](7) NULL,
	[idAtencion] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[ItemDiagnostico] [int] NOT NULL,
	[IdClasificacionDx] [int] NOT NULL,
	[IdSubclasificacionDx] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalAtencionDiaria]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalAtencionDiaria](
	[idPerinatalAtencion] [int] NOT NULL,
	[idAtencion] [int] NOT NULL,
 CONSTRAINT [PK_PerinatalAtencionDiaria] PRIMARY KEY CLUSTERED 
(
	[idPerinatalAtencion] ASC,
	[idAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalAtencionMedicamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalAtencionMedicamentos](
	[idPerinatalAtencion] [int] NOT NULL,
	[idModulo] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idAtencion] [int] NULL,
 CONSTRAINT [PK_PerinatalAtencionMedicamentos] PRIMARY KEY CLUSTERED 
(
	[idPerinatalAtencion] ASC,
	[idModulo] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalAtencionProcedimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalAtencionProcedimientos](
	[idPerinatalAtencion] [int] NOT NULL,
	[idModulo] [int] NOT NULL,
	[idLista] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[CptEsAutomatico] [bit] NULL,
	[CodigoHIS] [varchar](7) NULL,
	[idAtencion] [int] NULL,
	[IdOrden] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
	[ItemProcedimiento] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalCatalogoCie10]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalCatalogoCie10](
	[idModulo] [int] NOT NULL,
	[idLista] [int] NOT NULL,
	[idDiagnostico] [int] NOT NULL,
	[RangoInicio] [money] NULL,
	[RangoFinal] [money] NULL,
	[CodigoHIS] [varchar](7) NULL,
	[LabHis] [varchar](20) NULL,
	[TipoDx] [varchar](6) NULL,
 CONSTRAINT [PK_PerinatalCatalogoDiagnosticos] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC,
	[idLista] ASC,
	[idDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalCatalogoCpt]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalCatalogoCpt](
	[idModulo] [int] NOT NULL,
	[idLista] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[CodigoHIS] [varchar](7) NULL,
 CONSTRAINT [PK_PerinatalCatalogoDeProcedimientos] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC,
	[idLista] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalCatalogoCptAutomaticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalCatalogoCptAutomaticos](
	[idModulo] [int] NOT NULL,
	[idLista] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idProductoAutomatico] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalCatalogoCptMaximaDosis]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalCatalogoCptMaximaDosis](
	[idModulo] [int] NOT NULL,
	[idLista] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Limite] [int] NOT NULL,
	[EdadInicial] [int] NOT NULL,
	[EdadFinal] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalCatalogoMedicamentos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalCatalogoMedicamentos](
	[idModulo] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_PerinatalCatalogoMedicamentos] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalListas]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalListas](
	[idLista] [int] NOT NULL,
	[Lista] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PerinatalListas] PRIMARY KEY CLUSTERED 
(
	[idLista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerinatalModulos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerinatalModulos](
	[idModulo] [int] NOT NULL,
	[Modulo] [varchar](100) NOT NULL,
	[AniosDesde] [int] NULL,
	[AniosHasta] [int] NULL,
 CONSTRAINT [PK_PerinatalModulos] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeriodoTiempo]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodoTiempo](
	[IdPeriodoTiempo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PeriodoTiempo] [varchar](20) NULL,
 CONSTRAINT [PK_PeriodoTiempo] PRIMARY KEY CLUSTERED 
(
	[IdPeriodoTiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[IdPermiso] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Modulo] [varchar](50) NULL,
 CONSTRAINT [Permisos_PK] PRIMARY KEY CLUSTERED 
(
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermisosFormaFarmaceutica]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisosFormaFarmaceutica](
	[IdPermisoFF] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[FormaFarmaceutica] [varchar](10) NULL,
	[IdUsuario] [int] NULL,
	[Justificacion] [varchar](200) NULL,
	[FechaHora] [datetime] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoPaterno] [varchar](500) NULL,
	[ApellidoMaterno] [varchar](500) NULL,
	[Nombres] [varchar](500) NULL,
	[FechaNacimiento] [date] NULL,
	[IdTipoSexo] [int] NULL,
	[IdTipoDoc] [int] NULL,
	[NumDoc] [int] NULL,
	[Direccion] [varchar](50) NULL,
	[Distrito] [varchar](50) NULL,
	[Provincia] [varchar](50) NULL,
	[Departamento] [varchar](50) NULL,
	[Pais] [varchar](50) NULL,
	[IdEstado] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Observacion] [varchar](5000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanesRimac]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanesRimac](
	[idPlanRimac] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[CopagoFijo] [int] NULL,
	[Cobertura] [int] NULL,
	[idEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanificacionFamiliar]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanificacionFamiliar](
	[IdPlanificacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[NroHistoria] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[HoraReg] [varchar](5) NULL,
	[IdProcedencia] [int] NULL,
	[IdCondicion] [int] NULL,
	[IdProducto] [int] NULL,
	[IdTipoPaciente] [int] NULL,
	[IdOrientacion] [int] NULL,
	[IndFallaAnticonceptivo] [int] NULL,
	[IndAnticonceptivoPrecon] [int] NULL,
	[IndBloqueoTubarico] [int] NULL,
	[FechaHoraModifica] [datetime] NULL,
	[IdEstado] [int] NULL,
	[IdUsuario] [int] NULL,
	[IdPaciente] [int] NULL,
	[IdLicObstetras] [int] NULL,
	[IdDocObstetras] [int] NULL,
	[IndBuscaPorCuenta] [varchar](1) NULL,
	[IndSinInsumo] [varchar](1) NULL,
	[IndFirmoConsentimiento] [varchar](1) NULL,
	[IndRemocionImplante] [int] NULL,
	[IndRemocionTCobre] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanSalud]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanSalud](
	[IdPlanSalud] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[IdEstado] [int] NULL,
	[IdFuenteFinanciamiento] [int] NULL,
	[IdAseguradora] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreAlta]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreAlta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdcuentaAtencion] [int] NOT NULL,
	[Pronostico] [varchar](5000) NULL,
	[Recomendaciones] [varchar](5000) NULL,
	[Tratamiento] [varchar](5000) NULL,
	[Complicaciones] [varchar](5000) NULL,
	[ResumenEnfermedad] [varchar](5000) NULL,
	[Idempleado] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
	[IndMantenerPA] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntasVerificacionCirugiaCQx]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntasVerificacionCirugiaCQx](
	[IdPreguntasVerificacionCirugiaCQx] [int] NOT NULL,
	[Descripcion] [varchar](1000) NULL,
	[IdEtapasCirugiaCQx] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdPreguntasVerificacionCirugiaCQx] PRIMARY KEY CLUSTERED 
(
	[IdPreguntasVerificacionCirugiaCQx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrioridadCQ]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrioridadCQ](
	[IdPrioridadCQ] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[idEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCabecera]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCabecera](
	[IdPrograma] [int] NOT NULL,
	[IdProcabecera] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPaciente] [int] NOT NULL,
 CONSTRAINT [PK_ProCabecera] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdProcabecera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCabeceraConfigDatos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCabeceraConfigDatos](
	[IdPrograma] [int] NOT NULL,
	[IdCabDato] [int] NOT NULL,
	[Cab_Texto] [varchar](200) NULL,
	[Cab_Tipo] [varchar](200) NULL,
	[Cab_Ancho] [int] NULL,
	[Cab_EsDatoObligatorio] [int] NULL,
	[Cab_TextoToolTip] [varchar](200) NULL,
	[Cab_EsDatoCalculado] [bit] NULL,
	[Cab_FormulaCalculaValor] [varchar](200) NULL,
	[Cab_EsDatoCalculador] [bit] NULL,
	[Cab_RangoInicial] [int] NULL,
	[Cab_RangoFinal] [int] NULL,
	[Cab_Fila] [int] NULL,
	[Cab_Columna] [int] NULL,
 CONSTRAINT [PK_ProCabeceraConfigDatos] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdCabDato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCabeceraDato]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCabeceraDato](
	[IdPrograma] [int] NOT NULL,
	[IdProCabecera] [int] NOT NULL,
	[IdCabDato] [int] NOT NULL,
	[CabDato] [varchar](200) NULL,
 CONSTRAINT [PK_ProCabeceraDato] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdProCabecera] ASC,
	[IdCabDato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCatalogoControles]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCatalogoControles](
	[IdPrograma] [int] NOT NULL,
	[IdControl] [int] NOT NULL,
	[Descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_ProCatalogoControles] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdControl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCatalogoDiagnosticos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCatalogoDiagnosticos](
	[IdPrograma] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
 CONSTRAINT [PK_ProCatalogoDiagnosticos] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCatalogoProcedimientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCatalogoProcedimientos](
	[IdPrograma] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_ProCatalogoProcedimientos] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdDiagnostico] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCatalogoTratamientos]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCatalogoTratamientos](
	[IdPrograma] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_ProCatalogoTratamientos] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoEspecialidadQx]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoEspecialidadQx](
	[IdProcedimientoEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCPT] [varchar](50) NOT NULL,
	[DescripcionReferencialCPT] [varchar](5000) NULL,
	[Idespecialidad] [int] NOT NULL,
	[IdComplejidadCirugia] [int] NULL,
 CONSTRAINT [PK_ProcedimientoEspecialidadQx] PRIMARY KEY CLUSTERED 
(
	[CodigoCPT] ASC,
	[Idespecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientosCQx]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientosCQx](
	[Grado] [varchar](30) NULL,
	[Codigo] [int] NULL,
	[especialidad] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientosCQx1]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientosCQx1](
	[Grado] [varchar](30) NULL,
	[Codigo] [int] NULL,
	[especialidad] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientosCQx2]    Script Date: 04/01/2024 05:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientosCQx2](
	[Grado] [varchar](30) NULL,
	[Codigo] [varchar](20) NULL,
	[especialidad] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proceso_envio]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proceso_envio](
	[id_proceso_envio] [int] NOT NULL,
	[ipress_realiza_atencion] [varchar](8) NULL,
	[numero_envio] [int] NOT NULL,
	[fecha_creacion] [date] NULL,
	[fecha_genera_numero_envio] [date] NULL,
	[nombre_archivo] [varchar](50) NULL,
	[mensaje_respuesta] [varchar](1200) NULL,
	[codigo_respuesta] [int] NULL,
	[periodo_envio] [int] NULL,
	[cantidad_empaquetados] [int] NOT NULL,
	[cantidad_envios] [int] NOT NULL,
	[cod_estado] [int] NOT NULL,
	[id_paquete_envio] [varchar](6) NULL,
	[uuid_envio] [uniqueidentifier] NULL,
	[id_envio] [varchar](20) NULL,
	[id_aplicativo] [varchar](6) NULL,
	[cant_atenciones] [int] NULL,
	[cant_diagnosticos] [int] NULL,
	[cant_insumos] [int] NULL,
	[cant_medicamentos] [int] NULL,
	[cant_procedimientos] [int] NULL,
	[cant_recien_nacidos] [int] NULL,
	[cant_servicios_adicionales] [int] NULL,
	[cant_smi] [int] NULL,
	[estado_catalogo] [bigint] NULL,
 CONSTRAINT [proceso_envio_pkey] PRIMARY KEY CLUSTERED 
(
	[id_proceso_envio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProControlConfigDatos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProControlConfigDatos](
	[IdPrograma] [int] NOT NULL,
	[IdControlDato] [int] NOT NULL,
	[Control_Texto] [varchar](200) NULL,
	[Control_Tipo] [varchar](200) NULL,
	[Control_Ancho] [int] NULL,
	[Control_EsDatoObligatorio] [bit] NULL,
	[Control_TextoToolTip] [varchar](200) NULL,
	[Control_EsPresion] [bit] NULL,
	[Control_EsPeso] [bit] NULL,
	[Control_EsTalla] [bit] NULL,
	[Control_EsDatoCalculado] [bit] NULL,
	[Control_FormulaCalculaValor] [varchar](200) NULL,
	[Control_EsDatoGrafico] [bit] NULL,
	[Control_EsGraficoEjeX] [bit] NULL,
	[Control_Fila] [int] NULL,
	[Control_Columna] [int] NULL,
 CONSTRAINT [PK_ProControlConfigDatos] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdControlDato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProControlDato]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProControlDato](
	[IdPrograma] [int] NOT NULL,
	[IdProCabecera] [int] NOT NULL,
	[IdControl] [int] NOT NULL,
	[IdControlDato] [int] NOT NULL,
	[ControlDato] [varchar](200) NULL,
 CONSTRAINT [PK_ProControlDato] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdProCabecera] ASC,
	[IdControl] ASC,
	[IdControlDato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProControles]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProControles](
	[IdPrograma] [int] NOT NULL,
	[IdProCabecera] [int] NOT NULL,
	[IdControl] [int] NOT NULL,
	[IdAtencion] [int] NULL,
	[FechaControl] [nvarchar](10) NULL,
	[ControlOtroEESS] [bit] NULL,
	[IdEstablecimiento] [int] NULL,
 CONSTRAINT [PK_ProControles] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdProCabecera] ASC,
	[IdControl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProDiagnosticos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProDiagnosticos](
	[IdPrograma] [int] NOT NULL,
	[IdProCabecera] [int] NOT NULL,
	[IdControl] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[Principal] [bit] NULL,
	[labConfHIS] [varchar](3) NULL,
	[IdSubClasificacionDX] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosHis]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosHis](
	[IdProductoHis] [int] NOT NULL,
	[EsCpt] [varchar](1) NOT NULL,
	[CodigoProductoHis] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ProductosHis] PRIMARY KEY CLUSTERED 
(
	[IdProductoHis] ASC,
	[EsCpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaConceptoN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaConceptoN](
	[IdProformaConcepto] [int] NOT NULL,
	[descripcionConcepto] [varchar](100) NULL,
	[estadoConcepto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaItemsServicioN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaItemsServicioN](
	[IdProformaItemsServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdProformaCirugia] [int] NULL,
	[IdProformaServicios] [int] NULL,
	[IdProformaPrestacion] [int] NULL,
	[IdProformaConcepto] [int] NULL,
	[codigo] [varchar](150) NULL,
	[cantidad] [decimal](12, 2) NULL,
	[estadoItems] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaItemsServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaN](
	[IdProformaCirugia] [int] NOT NULL,
	[descripcionCirugia] [varchar](150) NULL,
	[estadoCirugia] [int] NULL,
	[codigo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaCirugia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaPacienteDetalleN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaPacienteDetalleN](
	[IdProformaPaceinteDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdProformaPaciente] [int] NULL,
	[cantidad] [decimal](12, 2) NULL,
	[precio] [decimal](12, 2) NULL,
	[IdProformaItemsServicio] [int] NULL,
	[codigo] [varchar](12) NULL,
	[tipo] [varchar](15) NULL,
	[IdProformaServicios] [int] NULL,
	[IdProformaPrestacion] [int] NULL,
	[IdProformaConcepto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaPaceinteDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaPacienteN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaPacienteN](
	[IdProformaPaciente] [int] NOT NULL,
	[dniPaciente] [varchar](12) NULL,
	[Riesgo] [int] NULL,
	[fecha] [date] NULL,
	[hora] [time](7) NULL,
	[idEmpleado] [int] NULL,
	[IdProformaCirugia] [int] NULL,
	[estado] [int] NULL,
	[tipoDocumento] [int] NULL,
	[nroOrden] [int] NULL,
	[idTipoProforma] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaPagosN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaPagosN](
	[IdProformaPacientePagos] [int] IDENTITY(1,1) NOT NULL,
	[IdProformaPaciente] [int] NULL,
	[totalProforma] [decimal](12, 2) NULL,
	[cuotas] [int] NULL,
	[observacion] [text] NULL,
	[IdTipoFormaPago] [int] NULL,
	[especialidad] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaPacientePagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaPrestacionN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaPrestacionN](
	[IdProformaPrestacion] [int] NOT NULL,
	[descripcionPrestacion] [varchar](100) NULL,
	[estadoPresentacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaPrestacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaRiesgo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaRiesgo](
	[id] [int] NULL,
	[Riesgo] [varchar](50) NULL,
	[Clasificacion] [varchar](50) NULL,
	[estadoRiesgo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaSecundariaN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaSecundariaN](
	[IdProformaCirugiaSecundaria] [int] IDENTITY(1,1) NOT NULL,
	[IdProformaCirugia] [int] NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaCirugiaSecundaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFORMACirugiaServiciosN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFORMACirugiaServiciosN](
	[IdProformaServicios] [int] NOT NULL,
	[descripcionServicio] [varchar](100) NULL,
	[estadoServicios] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProformaServicios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramacionMedica]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramacionMedica](
	[IdProgramacion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdMedico] [int] NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[HoraInicio] [char](5) NOT NULL,
	[HoraFin] [char](5) NOT NULL,
	[IdTipoProgramacion] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[IdTurno] [int] NULL,
	[IdEspecialidad] [int] NULL,
	[Color] [int] NULL,
	[IdServicio] [int] NULL,
	[IdTipoServicio] [int] NULL,
	[FechaReg] [datetime] NULL,
	[TiempoPromedioAtencion] [int] NULL,
	[HoraFinProgramacion] [char](5) NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [ProgramacionMedica_PK] PRIMARY KEY NONCLUSTERED 
(
	[IdProgramacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programas]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programas](
	[IdPrograma] [int] NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Programas] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProProcedimientos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProProcedimientos](
	[IdPrograma] [int] NOT NULL,
	[IdProCabecera] [int] NOT NULL,
	[IdControl] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdResultado] [int] NULL,
	[labConfHIS] [varchar](3) NULL,
 CONSTRAINT [PK_ProProcedimientos] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdProCabecera] ASC,
	[IdControl] ASC,
	[IdDiagnostico] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProTratamientos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProTratamientos](
	[IdPrograma] [int] NOT NULL,
	[IdProCabecera] [int] NOT NULL,
	[IdControl] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_ProTratamientos] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC,
	[IdProCabecera] ASC,
	[IdControl] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProveedor] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Ruc] [varchar](11) NOT NULL,
	[RazonSocial] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[IdProvincia] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[IdReniec] [int] NULL,
 CONSTRAINT [Provincias_PK] PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PruebasValidasEmergencia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebasValidasEmergencia](
	[idproducto] [int] NULL,
	[codigo] [varchar](8) NULL,
	[descripcion] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[radiologia_informes]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[radiologia_informes](
	[idlista] [int] IDENTITY(1,1) NOT NULL,
	[idcuentaatencion] [int] NULL,
	[idmovimiento] [int] NULL,
	[codigoexamen] [int] NULL,
	[idempleado] [int] NULL,
	[ruta] [varchar](200) NULL,
	[estadofirma] [int] NULL,
	[iddocumento] [int] NULL,
 CONSTRAINT [PK_radiologia_informes] PRIMARY KEY CLUSTERED 
(
	[idlista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rc_01]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rc_01](
	[CodPrestacion] [varchar](10) NULL,
	[Edadminima] [int] NULL,
	[Edadmaxima] [int] NULL,
	[Sexo] [varchar](10) NULL,
	[hospitalizacion] [varchar](10) NULL,
	[Gestante] [varchar](10) NULL,
	[Puerpera] [varchar](10) NULL,
	[NoGestanteNiPuerpera] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rc_31]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rc_31](
	[Cpt] [varchar](200) NULL,
	[CodPrestacion] [varchar](2000) NULL,
	[TopeMinimo] [varchar](10) NULL,
	[TopeMaximo] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RC_39]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RC_39](
	[CPT] [varchar](2000) NULL,
	[NOMBRE] [varchar](2000) NULL,
	[MAX] [int] NULL,
	[COD_PRESTACION] [varchar](50) NULL,
	[FECHA_RC] [date] NULL,
	[ESTAOD] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RC_53]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RC_53](
	[CIE10] [varchar](20) NULL,
	[Descripcion] [varchar](500) NULL,
	[Sexo] [varchar](5) NULL,
	[EdadMinima] [varchar](100) NULL,
	[EdadMaxima] [varchar](100) NULL,
	[CondicionMaterna] [varchar](500) NULL,
	[Restriccion] [int] NULL,
	[Estado] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RC_60]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RC_60](
	[CodigoCPT] [varchar](10) NULL,
	[Condicion1] [varchar](500) NULL,
	[Condicion2] [varchar](100) NULL,
	[TopeMaxCondicion2] [int] NULL,
	[TopeMaximo] [int] NULL,
	[TopeAnual] [int] NULL,
	[TopePorVida] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaCabecera]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaCabecera](
	[idReceta] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[FechaReceta] [datetime] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idServicioReceta] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[DocumentoDespacho] [varchar](20) NULL,
	[idComprobantePago] [int] NULL,
	[idMedicoReceta] [int] NULL,
	[fechaVigencia] [datetime] NULL,
	[IdFarmacia] [int] NULL,
	[NroRecetaEstupefaciente] [varchar](20) NULL,
	[NoCubreSOAT] [int] NULL,
	[labPrioridad] [varchar](5) NULL,
	[labFecha] [date] NULL,
	[labHora] [varchar](10) NULL,
	[IdEstadoProa] [int] NULL,
	[IdSolicitudFarmacia] [int] NULL,
	[idRecetaA] [int] NULL,
 CONSTRAINT [PK_RecetaCabecera] PRIMARY KEY CLUSTERED 
(
	[idReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaCabecera_borrados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaCabecera_borrados](
	[idReceta] [int] NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[FechaReceta] [datetime] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idServicioReceta] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[DocumentoDespacho] [varchar](20) NULL,
	[idComprobantePago] [int] NULL,
	[idMedicoReceta] [int] NULL,
	[fechaVigencia] [datetime] NULL,
	[IdFarmacia] [int] NULL,
	[NroRecetaEstupefaciente] [varchar](20) NULL,
	[NoCubreSOAT] [int] NULL,
	[labPrioridad] [varchar](5) NULL,
	[labFecha] [date] NULL,
	[labHora] [varchar](10) NULL,
	[IdEstadoProa] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recetacabecera_VigenciaAdolfo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recetacabecera_VigenciaAdolfo](
	[idReceta] [int] IDENTITY(1,1) NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[FechaReceta] [datetime] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idServicioReceta] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[DocumentoDespacho] [varchar](20) NULL,
	[idComprobantePago] [int] NULL,
	[idMedicoReceta] [int] NULL,
	[fechaVigencia] [datetime] NULL,
	[IdFarmacia] [int] NULL,
	[NroRecetaEstupefaciente] [varchar](20) NULL,
	[NoCubreSOAT] [int] NULL,
	[labPrioridad] [varchar](5) NULL,
	[labFecha] [date] NULL,
	[labHora] [varchar](10) NULL,
	[IdEstadoProa] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaCabeceraBorrado]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaCabeceraBorrado](
	[idReceta] [int] IDENTITY(1,1) NOT NULL,
	[IdPuntoCarga] [int] NOT NULL,
	[FechaReceta] [datetime] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[idServicioReceta] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[DocumentoDespacho] [varchar](20) NULL,
	[idComprobantePago] [int] NULL,
	[idMedicoReceta] [int] NULL,
	[fechaVigencia] [datetime] NULL,
	[IdFarmacia] [int] NULL,
	[NroRecetaEstupefaciente] [varchar](20) NULL,
	[NoCubreSOAT] [int] NULL,
	[labPrioridad] [varchar](5) NULL,
	[labFecha] [date] NULL,
	[labHora] [varchar](10) NULL,
	[IdEstadoProa] [int] NULL,
	[IdSolicitudFarmacia] [int] NULL,
	[idRecetaA] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaClasificacionViasAdmin]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaClasificacionViasAdmin](
	[IdCategoria] [int] NOT NULL,
	[Categoria] [varchar](50) NULL,
 CONSTRAINT [PK_RecetaClasificacionViasAdmin] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDetalle]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDetalle](
	[idReceta] [int] NOT NULL,
	[idItem] [int] NOT NULL,
	[CantidadPedida] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[SaldoEnRegistroReceta] [int] NULL,
	[SaldoEnDespachoReceta] [int] NULL,
	[CantidadDespachada] [float] NULL,
	[idDosisRecetada] [int] NULL,
	[idEstadoDetalle] [int] NULL,
	[MotivoAnulacionMedico] [varchar](300) NULL,
	[observaciones] [varchar](300) NULL,
	[IdViaAdministracion] [int] NULL,
	[idDiagnostico] [int] NULL,
	[TiempoEnfermedad] [varchar](2000) NULL,
	[SignosySintomas] [varchar](2000) NULL,
	[MotivoEstudio] [varchar](2000) NULL,
	[ResultadoPCR] [varchar](2000) NULL,
	[DificultadRespiratoria] [varchar](2000) NULL,
	[TipoPrueba] [varchar](50) NULL,
	[IndPreparado] [int] NULL,
	[CantidadPreparado] [varchar](7) NULL,
	[IdEstadoProaDetalle] [int] NULL,
	[DiasProaDetalle] [int] NULL,
	[IdUsuarioProaDetalle] [int] NULL,
	[EspecificacionProaDetalle] [varchar](1000) NULL,
	[CultivosProaDetalle] [varchar](1) NULL,
	[FechaEvaluacionProaDetalle] [datetime] NULL,
	[AntRestringido] [int] NULL,
 CONSTRAINT [PK_RecetaDetalle] PRIMARY KEY CLUSTERED 
(
	[idReceta] ASC,
	[idItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDetalle_04092020_cta2268264]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDetalle_04092020_cta2268264](
	[idReceta] [int] NOT NULL,
	[idItem] [int] NOT NULL,
	[CantidadPedida] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[SaldoEnRegistroReceta] [int] NULL,
	[SaldoEnDespachoReceta] [int] NULL,
	[CantidadDespachada] [float] NULL,
	[idDosisRecetada] [int] NULL,
	[idEstadoDetalle] [int] NULL,
	[MotivoAnulacionMedico] [varchar](300) NULL,
	[observaciones] [varchar](300) NULL,
	[IdViaAdministracion] [int] NULL,
	[idDiagnostico] [int] NULL,
	[TiempoEnfermedad] [varchar](2000) NULL,
	[SignosySintomas] [varchar](2000) NULL,
	[MotivoEstudio] [varchar](2000) NULL,
	[ResultadoPCR] [varchar](2000) NULL,
	[DificultadRespiratoria] [varchar](2000) NULL,
	[TipoPrueba] [varchar](50) NULL,
	[IndPreparado] [int] NULL,
	[CantidadPreparado] [varchar](7) NULL,
	[IdEstadoProaDetalle] [int] NULL,
	[DiasProaDetalle] [int] NULL,
	[IdUsuarioProaDetalle] [int] NULL,
	[EspecificacionProaDetalle] [varchar](1000) NULL,
	[CultivosProaDetalle] [varchar](1) NULL,
	[FechaEvaluacionProaDetalle] [datetime] NULL,
	[AntRestringido] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDetalle_borrados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDetalle_borrados](
	[idReceta] [int] NOT NULL,
	[idItem] [int] NOT NULL,
	[CantidadPedida] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[SaldoEnRegistroReceta] [int] NULL,
	[SaldoEnDespachoReceta] [int] NULL,
	[CantidadDespachada] [float] NULL,
	[idDosisRecetada] [int] NULL,
	[idEstadoDetalle] [int] NULL,
	[MotivoAnulacionMedico] [varchar](300) NULL,
	[observaciones] [varchar](300) NULL,
	[IdViaAdministracion] [int] NULL,
	[idDiagnostico] [int] NULL,
	[TiempoEnfermedad] [varchar](2000) NULL,
	[SignosySintomas] [varchar](2000) NULL,
	[MotivoEstudio] [varchar](2000) NULL,
	[ResultadoPCR] [varchar](2000) NULL,
	[DificultadRespiratoria] [varchar](2000) NULL,
	[TipoPrueba] [varchar](50) NULL,
	[IndPreparado] [int] NULL,
	[CantidadPreparado] [varchar](7) NULL,
	[IdEstadoProaDetalle] [int] NULL,
	[DiasProaDetalle] [int] NULL,
	[IdUsuarioProaDetalle] [int] NULL,
	[EspecificacionProaDetalle] [varchar](1000) NULL,
	[CultivosProaDetalle] [varchar](1) NULL,
	[FechaEvaluacionProaDetalle] [datetime] NULL,
	[AntRestringido] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDetalleBorrado]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDetalleBorrado](
	[idReceta] [int] NOT NULL,
	[idItem] [int] NOT NULL,
	[CantidadPedida] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[SaldoEnRegistroReceta] [int] NULL,
	[SaldoEnDespachoReceta] [int] NULL,
	[CantidadDespachada] [float] NULL,
	[idDosisRecetada] [int] NULL,
	[idEstadoDetalle] [int] NULL,
	[MotivoAnulacionMedico] [varchar](300) NULL,
	[observaciones] [varchar](300) NULL,
	[IdViaAdministracion] [int] NULL,
	[idDiagnostico] [int] NULL,
	[TiempoEnfermedad] [varchar](2000) NULL,
	[SignosySintomas] [varchar](2000) NULL,
	[MotivoEstudio] [varchar](2000) NULL,
	[ResultadoPCR] [varchar](2000) NULL,
	[DificultadRespiratoria] [varchar](2000) NULL,
	[TipoPrueba] [varchar](50) NULL,
	[IndPreparado] [int] NULL,
	[CantidadPreparado] [varchar](7) NULL,
	[IdEstadoProaDetalle] [int] NULL,
	[DiasProaDetalle] [int] NULL,
	[IdUsuarioProaDetalle] [int] NULL,
	[EspecificacionProaDetalle] [varchar](1000) NULL,
	[CultivosProaDetalle] [varchar](1) NULL,
	[FechaEvaluacionProaDetalle] [datetime] NULL,
	[AntRestringido] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDetalleEliminados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDetalleEliminados](
	[idReceta] [int] NOT NULL,
	[idItem] [int] NOT NULL,
	[CantidadPedida] [float] NOT NULL,
	[Precio] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[SaldoEnRegistroReceta] [int] NULL,
	[SaldoEnDespachoReceta] [int] NULL,
	[CantidadDespachada] [float] NULL,
	[idDosisRecetada] [int] NULL,
	[idEstadoDetalle] [int] NULL,
	[MotivoAnulacionMedico] [varchar](300) NULL,
	[observaciones] [varchar](300) NULL,
	[IdViaAdministracion] [int] NULL,
	[idDiagnostico] [int] NULL,
	[Accion] [varchar](40) NULL,
	[Usuario] [varchar](80) NULL,
	[fechaRegistro] [datetime] NULL,
	[HostName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDetalleItem]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDetalleItem](
	[idReceta] [int] NOT NULL,
	[idItem] [int] NOT NULL,
	[DocumentoDespacho] [varchar](20) NOT NULL,
	[CantidadDespachada] [float] NOT NULL,
 CONSTRAINT [PK_RecetaDetalleItem] PRIMARY KEY CLUSTERED 
(
	[idReceta] ASC,
	[idItem] ASC,
	[DocumentoDespacho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDetalleProa]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDetalleProa](
	[IdProa] [int] IDENTITY(1,1) NOT NULL,
	[IndAlgoritmo] [int] NULL,
	[Especificacion] [varchar](200) NULL,
	[IdReceta] [int] NULL,
	[IdItem] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaDosis]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaDosis](
	[idDosis] [int] NOT NULL,
	[NumeroDosis] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RecetaDosis] PRIMARY KEY CLUSTERED 
(
	[idDosis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaEntrega]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaEntrega](
	[idRecetaEntrega] [int] IDENTITY(1,1) NOT NULL,
	[idReceta] [int] NULL,
	[idTipoDocumento] [int] NULL,
	[NroDocumento] [varchar](12) NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[ApellidoMaterno] [varchar](40) NULL,
	[Nombres] [varchar](120) NULL,
	[Telefono] [varchar](10) NULL,
	[huella] [text] NULL,
	[idParentesco] [int] NULL,
	[idUsuario] [int] NULL,
	[fechaRegistro] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaEstados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaEstados](
	[idEstado] [int] NOT NULL,
	[Estado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_RecetaEstados] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaEstadosDetalle]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaEstadosDetalle](
	[idEstadoDetalle] [int] NOT NULL,
	[Estado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_RecetaEstadosDetalle] PRIMARY KEY CLUSTERED 
(
	[idEstadoDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetasMigradas]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetasMigradas](
	[IdcuentaAnterior] [int] NULL,
	[IdcuentaNueva] [int] NULL,
	[IdReceta] [int] NULL,
	[MovNumero] [int] NULL,
	[FechaMigracion] [datetime] NULL,
	[IdUsuario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recetatemp]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recetatemp](
	[idReceta] [int] NOT NULL,
	[idEstado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaViaAdministracion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaViaAdministracion](
	[IdViaAdministracion] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_RecetaViaAdministracion] PRIMARY KEY CLUSTERED 
(
	[IdViaAdministracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recibo_pago]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recibo_pago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_cotizacion] [int] NULL,
	[fecha] [date] NULL,
	[monto] [decimal](15, 2) NOT NULL,
	[numeracion] [varchar](12) NULL,
	[recibi_de] [varchar](250) NULL,
	[fecha_regsitro] [date] NULL,
	[usuario_registro] [int] NULL,
	[fecha_actualiza] [date] NULL,
	[usuario_actualiza] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[serie] [varchar](6) NULL,
	[nroDocumento] [varchar](15) NULL,
	[IdCuentaAtencion] [int] NULL,
	[FechaCreaCuenta] [datetime] NULL,
 CONSTRAINT [PK_recibo_pago] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboIngresoCaja]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboIngresoCaja](
	[idReciboIngreso] [int] IDENTITY(1,1) NOT NULL,
	[idTipoReciboIngreso] [int] NULL,
	[Fecha] [date] NULL,
	[Numeracion] [int] NULL,
	[SIAF] [varchar](150) NULL,
	[Total] [decimal](18, 2) NULL,
	[Manual] [int] NULL,
	[idEstado] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[idUsuarioRegistro] [int] NULL,
	[FechaModifica] [datetime] NULL,
	[idUsuarioModifica] [int] NULL,
 CONSTRAINT [PK_ReciboIngreso] PRIMARY KEY CLUSTERED 
(
	[idReciboIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboIngresoCuentaCorriente]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboIngresoCuentaCorriente](
	[idCuentaCorriente] [int] IDENTITY(1,1) NOT NULL,
	[nroCuenta] [varchar](50) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_ReciboIngresoCuentaCorriente] PRIMARY KEY CLUSTERED 
(
	[idCuentaCorriente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboIngresoVoucher]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboIngresoVoucher](
	[idReciboIngresoVoucher] [int] IDENTITY(1,1) NOT NULL,
	[idReciboIngreso] [int] NULL,
	[fecha] [date] NULL,
	[operacion] [varchar](50) NULL,
	[monto] [decimal](18, 2) NULL,
	[idCuentaCorriente] [int] NULL,
 CONSTRAINT [PK_ReciboIngresoVoucher] PRIMARY KEY CLUSTERED 
(
	[idReciboIngresoVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboPago]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboPago](
	[IdRecibo] [int] IDENTITY(1,1) NOT NULL,
	[Correlativo] [varchar](50) NULL,
	[Fecha] [datetime] NULL,
	[IdPersonaPaciente] [int] NULL,
	[IdPersonaRecibe] [int] NULL,
	[Monto] [money] NULL,
	[Concepto] [varchar](5000) NULL,
	[IdEmpleado] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecorridoProvedor]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecorridoProvedor](
	[id] [int] NULL,
	[RUC] [varchar](50) NULL,
	[Nombre] [varchar](500) NULL,
	[CostoXGalon] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RedEstablecimiento]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RedEstablecimiento](
	[IdRed] [int] NULL,
	[Codigo] [int] NULL,
	[Nombre] [varchar](150) NULL,
	[CodigoDisa] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefConTurnosUPS]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefConTurnosUPS](
	[IdTurno] [int] NULL,
	[codTurno] [char](1) NULL,
	[Turno] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenciaCondicion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenciaCondicion](
	[IdReferenciaCondicion] [int] NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[referenciadiagnosticos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[referenciadiagnosticos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReferencia] [int] NULL,
	[IdCuentaATencion] [int] NULL,
	[IdDiagnostico] [int] NULL,
	[IdSubClasificacionDx] [int] NULL,
	[IdClasificacionDx] [int] NULL,
	[ACtivar] [int] NULL,
 CONSTRAINT [PK_referenciadiagnosticos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenciaMotivo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenciaMotivo](
	[IdMotivoReferencia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](5000) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referencias]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referencias](
	[cmi] [varchar](150) NULL,
	[condicion] [varchar](50) NULL,
	[fecha] [date] NULL,
	[mes] [nchar](2) NULL,
	[PersonalRefiere] [varchar](200) NULL,
	[especialidad] [varchar](200) NULL,
	[motivo] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenciasRefcon]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenciasRefcon](
	[tipFinanciador] [varchar](6) NULL,
	[numeroSeguro] [varchar](16) NULL,
	[fechaVencimientoSis] [varchar](10) NULL,
	[tipDocumento] [varchar](2) NULL,
	[dni] [varchar](15) NULL,
	[apePaterno] [varchar](150) NULL,
	[apeMaterno] [varchar](150) NULL,
	[nombres] [varchar](80) NULL,
	[fecNacimiento] [varchar](10) NULL,
	[direccion] [varchar](150) NULL,
	[sexo] [varchar](1) NULL,
	[ubigeo1] [varchar](6) NULL,
	[ubigeo2] [varchar](6) NULL,
	[celular] [varchar](10) NULL,
	[condicionPaciente] [varchar](1) NULL,
	[tipDocumentoMedico] [varchar](2) NULL,
	[numDocumentoMedico] [varchar](15) NULL,
	[fecActual] [varchar](10) NULL,
	[fecSolicitudReferencia] [varchar](10) NULL,
	[fecCita] [varchar](10) NULL,
	[codServicio] [varchar](6) NULL,
	[especialidad] [varchar](50) NULL,
	[nroReferencia] [varchar](12) NULL,
	[resAnamnesis] [varchar](1000) NULL,
	[resExaFisico] [varchar](900) NULL,
	[diagnostico1] [varchar](5) NULL,
	[tipoDiagnostico1] [varchar](1) NULL,
	[diagnostico2] [varchar](5) NULL,
	[tipoDiagnostico2] [varchar](1) NULL,
	[diagnostico3] [varchar](5) NULL,
	[tipoDiagnostico3] [varchar](1) NULL,
	[codRenipressOrigen] [varchar](6) NULL,
	[codRenipressDestino] [varchar](6) NULL,
	[ubigeoRenipress] [varchar](6) NULL,
	[cpt1] [varchar](45) NULL,
	[cpt2] [varchar](45) NULL,
	[cpt3] [varchar](45) NULL,
	[cpt4] [varchar](45) NULL,
	[cpt5] [varchar](45) NULL,
	[cpt6] [varchar](45) NULL,
	[cpt7] [varchar](45) NULL,
	[cpt8] [varchar](45) NULL,
	[cpt9] [varchar](45) NULL,
	[tipDocumentoTutor] [varchar](2) NULL,
	[numDocumentoTutor] [varchar](15) NULL,
	[apePaternoTutor] [varchar](150) NULL,
	[apeMaternoTutor] [varchar](150) NULL,
	[nombreTutor] [varchar](80) NULL,
	[idReferencia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferenciasRefconPrueba]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenciasRefconPrueba](
	[tipFinanciador] [varchar](6) NULL,
	[numeroSeguro] [varchar](16) NULL,
	[fechaVencimientoSis] [varchar](10) NULL,
	[tipDocumento] [varchar](2) NULL,
	[dni] [varchar](15) NULL,
	[apePaterno] [varchar](150) NULL,
	[apeMaterno] [varchar](150) NULL,
	[nombres] [varchar](80) NULL,
	[fecNacimiento] [varchar](10) NULL,
	[direccion] [varchar](150) NULL,
	[sexo] [varchar](1) NULL,
	[ubigeo1] [varchar](6) NULL,
	[ubigeo2] [varchar](6) NULL,
	[celular] [varchar](10) NULL,
	[condicionPaciente] [varchar](1) NULL,
	[tipDocumentoMedico] [varchar](2) NULL,
	[numDocumentoMedico] [varchar](15) NULL,
	[fecActual] [varchar](10) NULL,
	[fecSolicitudReferencia] [varchar](10) NULL,
	[fecCita] [varchar](10) NULL,
	[codServicio] [varchar](6) NULL,
	[especialidad] [varchar](50) NULL,
	[nroReferencia] [varchar](12) NULL,
	[resAnamnesis] [varchar](1000) NULL,
	[resExaFisico] [varchar](900) NULL,
	[diagnostico1] [varchar](5) NULL,
	[tipoDiagnostico1] [varchar](1) NULL,
	[diagnostico2] [varchar](5) NULL,
	[tipoDiagnostico2] [varchar](1) NULL,
	[diagnostico3] [varchar](5) NULL,
	[tipoDiagnostico3] [varchar](1) NULL,
	[codRenipressOrigen] [varchar](6) NULL,
	[codRenipressDestino] [varchar](6) NULL,
	[ubigeoRenipress] [varchar](6) NULL,
	[cpt1] [varchar](45) NULL,
	[cpt2] [varchar](45) NULL,
	[cpt3] [varchar](45) NULL,
	[cpt4] [varchar](45) NULL,
	[cpt5] [varchar](45) NULL,
	[cpt6] [varchar](45) NULL,
	[cpt7] [varchar](45) NULL,
	[cpt8] [varchar](45) NULL,
	[cpt9] [varchar](45) NULL,
	[tipDocumentoTutor] [varchar](2) NULL,
	[numDocumentoTutor] [varchar](15) NULL,
	[apePaternoTutor] [varchar](150) NULL,
	[apeMaternoTutor] [varchar](150) NULL,
	[nombreTutor] [varchar](80) NULL,
	[idReferencia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[region]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[region](
	[id_region] [int] IDENTITY(1,1) NOT NULL,
	[region] [varchar](100) NOT NULL,
 CONSTRAINT [region_PK] PRIMARY KEY CLUSTERED 
(
	[id_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroCitaControl]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroCitaControl](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [varchar](10) NOT NULL,
	[fechaCitaControl] [datetime] NOT NULL,
	[idCuentaAtencionCitado] [varchar](10) NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_RegistroCitaControl] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroInterconsulta]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroInterconsulta](
	[idregistro] [int] NULL,
	[IdInterconsultaSolicitud] [int] NULL,
	[IdInterconsultaCab] [int] NULL,
	[IdInterconsulta] [int] NULL,
	[IdAtencion] [int] NULL,
	[UsuarioRegistra] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReimpresionComprobantes]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReimpresionComprobantes](
	[idReimpresion] [int] IDENTITY(1,1) NOT NULL,
	[NroTicket] [varchar](30) NULL,
	[NroSerie] [varchar](5) NULL,
	[NroComprobante] [varchar](15) NULL,
	[idCuentaAtencion] [int] NULL,
	[Observacion] [varchar](2000) NULL,
	[idComprobantePago] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[nombrePC] [varchar](30) NULL,
	[fecha] [datetime] NULL,
	[idEstado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idReimpresion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion](
	[IdReligion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReligion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renhice_autorizacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renhice_autorizacion](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[idempleado] [int] NULL,
	[idcuentatencion] [int] NULL,
	[fecha] [datetime] NULL,
	[rpta_webservice] [varchar](50) NULL,
	[rpta_descripcion] [varchar](200) NULL,
	[token] [varchar](200) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renhice_consultaMasiva]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renhice_consultaMasiva](
	[idmasivo] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[idpaciente] [int] NULL,
	[idcuentaatencion] [int] NULL,
	[rpta_webservice] [varchar](50) NULL,
	[token] [varchar](150) NULL,
	[autorizacion_usuario] [varchar](10) NULL,
	[idempleado] [int] NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renhice_consultaToken]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renhice_consultaToken](
	[ide] [int] IDENTITY(1,1) NOT NULL,
	[idempleado] [int] NULL,
	[idcuentatencion] [int] NULL,
	[fecha] [datetime] NULL,
	[rpta_webservice] [varchar](50) NULL,
	[rpta_descripcion] [varchar](200) NULL,
	[token] [varchar](200) NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renhice_DatosSisgalen]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renhice_DatosSisgalen](
	[iddatos] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[idpaciente] [int] NULL,
	[idcuentaatencion] [int] NULL,
	[rpta_usuario] [int] NULL,
	[idempleado] [int] NULL,
	[estado] [int] NULL,
	[fechaEnvio] [datetime] NULL,
	[idempleadoenvio] [int] NULL,
	[rpta_webservice] [varchar](10) NULL,
 CONSTRAINT [PK_renhice_DatosSisgalen] PRIMARY KEY CLUSTERED 
(
	[iddatos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renhice_RegistroDatos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renhice_RegistroDatos](
	[iddatos] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[idpaciente] [int] NULL,
	[idcuentaatencion] [int] NULL,
	[rpta_usuario] [int] NULL,
	[idempleado] [int] NULL,
	[estado] [int] NULL,
	[fechaEnvio] [datetime] NULL,
	[idempleadoenvio] [int] NULL,
	[rpta_webservice] [varchar](10) NULL,
	[token] [varchar](200) NULL,
 CONSTRAINT [PK_renhice_RegistroDatos] PRIMARY KEY CLUSTERED 
(
	[iddatos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renhiceEnvioHC]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renhiceEnvioHC](
	[ideenvio] [int] IDENTITY(1,1) NOT NULL,
	[fechaEnvio] [datetime] NULL,
	[idcuentaatencion] [int] NULL,
	[rpta_estado] [varchar](10) NULL,
	[rpta_descripcion] [varchar](50) NULL,
	[idempleado] [int] NULL,
	[estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reporte]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporte](
	[NroHistoriaClinica] [int] NULL,
	[ApellidoPaterno] [varchar](20) NOT NULL,
	[ApellidoMaterno] [varchar](20) NOT NULL,
	[PrimerNombre] [varchar](20) NOT NULL,
	[SegundoNombre] [varchar](20) NULL,
	[Sexo] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[HoraIngreso] [char](5) NOT NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [char](5) NULL,
	[Condición Alta] [varchar](50) NOT NULL,
	[Cod. Serv. Ing] [varchar](6) NOT NULL,
	[Servicio Ingreso] [varchar](50) NOT NULL,
	[Cod. Serv. Egr] [varchar](6) NOT NULL,
	[Servicio Egreso] [varchar](50) NOT NULL,
	[CodigoCIE10_Diagn] [char](7) NULL,
	[Diagnóstico] [varchar](250) NOT NULL,
	[CodigoCPT2004] [char](7) NOT NULL,
	[Descripción Procedimiento] [varchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reporte_cabecera]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reporte_cabecera](
	[idUsuario] [int] NULL,
	[NroCuenta] [int] NOT NULL,
	[FechaIngreso] [datetime] NULL,
	[HoraIngreso] [varchar](5) NULL,
	[Paciente] [varchar](100) NULL,
	[Sexo] [varchar](1) NULL,
	[Motivo] [varchar](100) NULL,
	[Estancia] [varchar](100) NULL,
	[FechaEgreso] [datetime] NULL,
	[HoraEgreso] [varchar](5) NULL,
	[Destino] [varchar](100) NULL,
	[Recibe] [varchar](100) NULL,
	[MedicoIE] [varchar](100) NULL,
	[idServicio] [int] NULL,
	[ServicioHosp] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reporte_detalle]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reporte_detalle](
	[idUsuario] [int] NULL,
	[NroCuenta] [int] NULL,
	[ConsumoDescripcion] [varchar](100) NULL,
	[ConsumoImporte] [money] NULL,
	[DevolucionHC] [varchar](50) NULL,
	[dia1] [int] NULL,
	[dia2] [int] NULL,
	[dia3] [int] NULL,
	[dia4] [int] NULL,
	[dia5] [int] NULL,
	[dia6] [int] NULL,
	[dia7] [int] NULL,
	[dia8] [int] NULL,
	[dia9] [int] NULL,
	[dia10] [int] NULL,
	[dia11] [int] NULL,
	[dia12] [int] NULL,
	[dia13] [int] NULL,
	[dia14] [int] NULL,
	[dia15] [int] NULL,
	[dia16] [int] NULL,
	[dia17] [int] NULL,
	[dia18] [int] NULL,
	[dia19] [int] NULL,
	[dia20] [int] NULL,
	[dia21] [int] NULL,
	[dia22] [int] NULL,
	[dia23] [int] NULL,
	[dia24] [int] NULL,
	[dia25] [int] NULL,
	[dia26] [int] NULL,
	[dia27] [int] NULL,
	[dia28] [int] NULL,
	[dia29] [int] NULL,
	[dia30] [int] NULL,
	[dia31] [int] NULL,
	[total] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReporteFarmaciaDisponibilidad]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReporteFarmaciaDisponibilidad](
	[fechaReporte] [date] NULL,
	[mes] [varchar](33) NULL,
	[idProducto] [int] NOT NULL,
	[codigo] [varchar](7) NOT NULL,
	[totCantidad] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RFDisponibilidadReemplazo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RFDisponibilidadReemplazo](
	[codigo1] [varchar](12) NULL,
	[codigo2] [varchar](12) NULL,
	[idProducto1] [int] NULL,
	[idProducto2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RH]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RH](
	[idPaciente] [int] NULL,
	[FactorRH] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IdRol] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [SeguridadGrupos_PK] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesItems]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesItems](
	[IdRolItem] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdListItem] [int] NULL,
	[IdRol] [int] NULL,
	[Agregar] [bit] NULL,
	[Modificar] [bit] NULL,
	[Eliminar] [bit] NULL,
	[Consultar] [bit] NULL,
 CONSTRAINT [SeguridadGruposPermisos_PK] PRIMARY KEY CLUSTERED 
(
	[IdRolItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesPermisos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesPermisos](
	[IdRolPermiso] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdPermiso] [int] NULL,
	[IdRol] [int] NULL,
 CONSTRAINT [RolesPermisos_PK] PRIMARY KEY CLUSTERED 
(
	[IdRolPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesReportes]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesReportes](
	[idRol] [int] NOT NULL,
	[IdReporte] [int] NOT NULL,
	[TieneAcceso] [bit] NULL,
 CONSTRAINT [PK_RolesReportes] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC,
	[IdReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScoreApacheSofaTiss]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScoreApacheSofaTiss](
	[IdcuentaAtencion] [int] NULL,
	[apache] [varchar](20) NULL,
	[sofa] [varchar](20) NULL,
	[tiss] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeccionChequeoEnfermeria]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeccionChequeoEnfermeria](
	[IdSeccionChequeoEnfermeria] [int] NOT NULL,
	[Descripcion] [nchar](100) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_SeccionChequeoEnfermeria] PRIMARY KEY CLUSTERED 
(
	[IdSeccionChequeoEnfermeria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[secuencia_documento]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secuencia_documento](
	[id] [int] NOT NULL,
	[tipo_doc] [varchar](10) NULL,
	[serie] [int] NULL,
	[numero] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_secuencia_documento] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[secuenciadorEmegercia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secuenciadorEmegercia](
	[idSecuenciadorEmergencia] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [int] NULL,
	[inicio] [int] NULL,
	[codigo] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSecuenciadorEmergencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seguimientoMedicamentoFichaB]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seguimientoMedicamentoFichaB](
	[idSeguimiento] [int] IDENTITY(1,1) NOT NULL,
	[idFichaB] [int] NULL,
	[fechaSeguimiento] [varchar](20) NULL,
	[tipoSeguimiento] [varchar](20) NULL,
	[fecharegistro] [datetime] NULL,
	[idUsuarioRegistra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSeguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguimietnoGestanteAltoRiesgo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguimietnoGestanteAltoRiesgo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[IdcuentaAtencion] [int] NOT NULL,
	[IdTipoGestanteAltoRiesgo] [int] NULL,
	[Estado] [int] NULL,
	[Fecha] [datetime] NULL,
	[IdUsuaio] [int] NULL,
 CONSTRAINT [PK_SeguimietnoGestanteAltoRiesgo] PRIMARY KEY CLUSTERED 
(
	[IdcuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguroSis]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguroSis](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipoDocumento] [int] NULL,
	[NroDocumento] [varchar](15) NULL,
	[apePaterno] [varchar](50) NULL,
	[apeMaterno] [varchar](50) NULL,
	[nombres] [varchar](50) NULL,
	[nombres2] [varchar](50) NULL,
	[fecAfiliacion] [date] NULL,
	[EESS] [varchar](50) NULL,
	[descEESS] [varchar](50) NULL,
	[EESSUbigeo] [varchar](200) NULL,
	[descEESSUbigeo] [varchar](50) NULL,
	[regimen] [varchar](50) NULL,
	[tipoSeguro] [varchar](50) NULL,
	[descTipoSeguro] [varchar](100) NULL,
	[contrato] [varchar](100) NULL,
	[fecCaducidad] [varchar](50) NULL,
	[estado] [varchar](50) NULL,
	[msgConfidencial] [varchar](300) NULL,
	[tabla] [varchar](50) NULL,
	[idNumReg] [varchar](50) NULL,
	[genero] [varchar](50) NULL,
	[fecNacimiento] [datetime] NULL,
	[idUbigeo] [varchar](10) NULL,
	[disa] [varchar](50) NULL,
	[tipoFormato] [varchar](50) NULL,
	[nroContrato] [varchar](50) NULL,
	[correlativo] [varchar](50) NULL,
	[idPlan] [varchar](50) NULL,
	[idGrupoPoblacional] [varchar](50) NULL,
	[idsuario] [int] NULL,
	[estadoDato] [int] NULL,
	[fecha] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[IdServicio] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdTipoServicio] [int] NOT NULL,
	[Codigo] [varchar](6) NOT NULL,
	[SVG] [varchar](1000) NULL,
	[IdProducto] [int] NULL,
	[soloTipoSexo] [int] NULL,
	[maximaEdad] [int] NULL,
	[codigoServicioSEM] [varchar](2) NULL,
	[ubicacionSEM] [varchar](5) NULL,
	[codigoServicioHIS] [varchar](6) NULL,
	[CostoCeroCE] [varchar](1) NULL,
	[MinimaEdad] [int] NULL,
	[idEstado] [int] NULL,
	[Triaje] [bit] NULL,
	[EsObservacionEmergencia] [bit] NULL,
	[UsaModuloNinoSano] [bit] NULL,
	[UsaModuloMaterno] [bit] NULL,
	[UsaGalenHos] [bit] NULL,
	[TipoEdad] [int] NULL,
	[UsaFUA] [bit] NULL,
	[codigoServicioSuSalud] [varchar](7) NULL,
	[codigoServicioFUA] [varchar](6) NULL,
	[FuaTipoAnexo2015] [int] NULL,
	[codigoServicioRenaes] [varchar](6) NULL,
	[EstadoProximaCita] [int] NULL,
	[HabSaludMaterna] [int] NULL,
	[HabCitologiaBiopsia] [int] NULL,
	[Abreviatura] [varchar](50) NULL,
	[NombreAmbiente] [varchar](50) NULL,
	[IdTipoEmpleado] [int] NULL,
	[idCondicionServicio] [int] NULL,
	[TipoConsultorio] [int] NULL,
 CONSTRAINT [Servicios_PK] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosAtenSimultanea]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosAtenSimultanea](
	[idServicio] [int] NOT NULL,
	[idServicioAtencionSimultanea] [int] NOT NULL,
 CONSTRAINT [PK_ServiciosAtencionSimultaneo] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC,
	[idServicioAtencionSimultanea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosAtenSimultaneaFua]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosAtenSimultaneaFua](
	[AScorrelativo] [char](10) NOT NULL,
	[idAtencion] [int] NOT NULL,
	[item] [int] NOT NULL,
	[idTipo] [int] NOT NULL,
	[idFuaCorrelativo] [int] NOT NULL,
	[idFuaIdCuentaAtencion] [int] NULL,
	[FuaCodigoPrestacion] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosAtenSimultaneaFuaEquiv]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosAtenSimultaneaFuaEquiv](
	[Id] [int] NOT NULL,
	[ups] [varchar](6) NOT NULL,
	[EdadInicio] [int] NOT NULL,
	[EdadFinal] [int] NOT NULL,
	[idTipoEdad] [int] NOT NULL,
	[FuaCodigoPrestacion] [varchar](3) NOT NULL,
	[DxTipo] [varchar](1) NOT NULL,
	[DxCodigo] [varchar](20) NOT NULL,
	[PesoKgMenor] [money] NOT NULL,
	[PesoKgMayor] [money] NOT NULL,
 CONSTRAINT [PK_ServiciosAtenSimultaneaFuaEquiv] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosAtenSimultaneaImpHIS]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosAtenSimultaneaImpHIS](
	[ups] [varchar](6) NOT NULL,
	[grupo] [int] NOT NULL,
	[subgrupo] [int] NOT NULL,
	[subgrupoOrden] [int] NULL,
	[Lab] [varchar](3) NULL,
	[cpt_dx] [varchar](20) NOT NULL,
	[idTipo] [int] NOT NULL,
	[EdadInicio] [int] NOT NULL,
	[EdadFinal] [int] NOT NULL,
	[idTipoEdad] [int] NOT NULL,
	[PesoKgMenor] [money] NOT NULL,
	[PesoKgMayor] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosAtenSimultaneaMov]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosAtenSimultaneaMov](
	[AScorrelativo] [int] NOT NULL,
	[IdAtencion] [int] NOT NULL,
 CONSTRAINT [PK_ServiciosAtenSimultaneaMov] PRIMARY KEY CLUSTERED 
(
	[AScorrelativo] ASC,
	[IdAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosCodPrestacional]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosCodPrestacional](
	[idservicio] [int] NULL,
	[nombre] [varchar](100) NULL,
	[FuaCodigoPrestacion] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosEspecialidades]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosEspecialidades](
	[idservicio] [int] NULL,
	[idespecialidad] [int] NULL,
	[idactividad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosRefcon_UPS]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosRefcon_UPS](
	[IdRegistro] [int] IDENTITY(1,1) NOT NULL,
	[Servicio] [varchar](50) NOT NULL,
	[codUPSSusalud] [varchar](50) NOT NULL,
	[estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SISCatalogoTipoFinanciamiento]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SISCatalogoTipoFinanciamiento](
	[IdProducto] [int] NULL,
	[CPT] [varchar](50) NULL,
	[Procedimiento] [nvarchar](255) NULL,
	[TarifaSIS] [float] NULL,
	[CoberturaSIS] [float] NULL,
	[Paga] [numeric](11, 2) NULL,
	[DescuentoPorcen] [numeric](4, 2) NULL,
	[IdTipoFinanciamiento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoatConfiguracion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoatConfiguracion](
	[Usuario] [varchar](20) NULL,
	[Clave] [varchar](20) NULL,
	[WebServicesAuth] [varchar](200) NULL,
	[WebServicesIns] [varchar](200) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoatEnvios]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoatEnvios](
	[IdFicha] [int] NOT NULL,
	[FechaEnvio] [datetime] NULL,
	[Estado] [varchar](10) NULL,
	[HttpCode] [int] NULL,
	[ErrorCode] [varchar](10) NULL,
	[ErrorMessage] [varchar](200) NULL,
	[ErrorDetalle] [varchar](500) NULL,
	[ObservacionVal] [varchar](200) NULL,
	[UsuarioEnvio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFicha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFICHAAccidentePaciente]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFICHAAccidentePaciente](
	[id] [int] NULL,
	[NroFicha] [int] NULL,
	[AccidenteFecha] [date] NULL,
	[AccidenteHora] [time](7) NULL,
	[AccidenteLugar] [varchar](500) NULL,
	[AccidenteIdDistrito] [int] NULL,
	[AccidenteComisaria] [varchar](500) NULL,
	[TipoAccidente] [varchar](50) NULL,
	[OcurrioAcidente] [varchar](50) NULL,
	[LesionadoAccidente] [varchar](50) NULL,
	[UbicacionAccidente] [varchar](50) NULL,
	[TrasladoAccidenete] [varchar](50) NULL,
	[OcasionanteAccidente] [varchar](50) NULL,
	[OtrosTipoAccidente] [text] NULL,
	[OtrosEncontrabaLesionado] [text] NULL,
	[OtrosTrasladoLesionado] [text] NULL,
	[OtrosTipoVehiculo] [text] NULL,
	[CondicionOcacionanteAccidente] [int] NULL,
	[dniConductor] [varchar](10) NULL,
	[rehabilitacion] [varchar](10) NULL,
	[dniaseguradotitular] [varchar](10) NULL,
	[idComisarias] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFichaConsultasDNIReniec]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFichaConsultasDNIReniec](
	[id] [int] NULL,
	[nroDocumento] [varchar](10) NULL,
	[idTipoDocumento] [int] NULL,
	[nombres] [varchar](150) NULL,
	[apellidoPaterno] [varchar](100) NULL,
	[apellidoMaterno] [varchar](100) NULL,
	[sexo] [int] NULL,
	[fechaNacimiento] [date] NULL,
	[direccion] [varchar](100) NULL,
	[distrito] [varchar](100) NULL,
	[provincia] [varchar](100) NULL,
	[departamento] [varchar](100) NULL,
	[idEmpleado] [int] NULL,
	[registroProcedencia] [varchar](100) NULL,
	[telefono] [varchar](35) NULL,
	[email] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFICHAFinanciamientoPaciente]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFICHAFinanciamientoPaciente](
	[id] [int] NULL,
	[NroFicha] [int] NULL,
	[licenciaconducir] [varchar](50) NULL,
	[edadconducir] [varchar](50) NULL,
	[sexoconducir] [int] NULL,
	[financiadorseguro] [varchar](50) NULL,
	[polizasoat] [varchar](50) NULL,
	[nombrefinanciador] [varchar](500) NULL,
	[NombreIAFAS] [varchar](500) NULL,
	[personalIAFAS] [varchar](500) NULL,
	[fechacat] [date] NULL,
	[fechacomunicacion] [date] NULL,
	[horacomunicacion] [time](7) NULL,
	[placavehiculo] [varchar](50) NULL,
	[nombreprocurador] [varchar](500) NULL,
	[telefonoprocurador] [varchar](10) NULL,
	[montogarantia] [varchar](50) NULL,
	[nombreaseguradora] [varchar](500) NULL,
	[nombreconductor] [varchar](500) NULL,
	[CuentaCorrientesoSoat] [varchar](50) NULL,
	[idAseguradora] [int] NULL,
	[dniIafas] [varchar](10) NULL,
	[licencia] [int] NULL,
	[procurador] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFICHARegistro]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFICHARegistro](
	[NroFicha] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[idEmpleado] [int] NULL,
	[FReg] [datetime] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFichaSolicitudGarantias]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFichaSolicitudGarantias](
	[id] [int] NULL,
	[NroFicha] [int] NULL,
	[fechaGarantia] [date] NULL,
	[horaGarantia] [time](7) NULL,
	[montoGarantia] [decimal](20, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFichaSoliGaranFacturacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFichaSoliGaranFacturacion](
	[id] [int] NULL,
	[NroFicha] [int] NULL,
	[dniPreAuditor] [varchar](10) NULL,
	[nombrePreAuditor] [varchar](150) NULL,
	[consumoSISGALEN] [decimal](20, 2) NULL,
	[liquidado] [decimal](20, 2) NULL,
	[nMeno] [varchar](15) NULL,
	[nLiquidado] [varchar](15) NULL,
	[fechaRecepcion] [date] NULL,
	[estado] [int] NULL,
	[estadoOtros] [varchar](25) NULL,
	[dniAuditor] [varchar](8) NULL,
	[nombreAuditor] [varchar](150) NULL,
	[observacion] [text] NULL,
	[tienePendiente] [int] NULL,
	[tienesPendienteOtros] [varchar](25) NULL,
	[documentoPendiente] [int] NULL,
	[documentoPendienteOtro] [varchar](25) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFichaSoliGaranInsumo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFichaSoliGaranInsumo](
	[id] [int] NULL,
	[NroFicha] [int] NULL,
	[IdEmpleado] [int] NULL,
	[IdMedico] [int] NULL,
	[dniMedico] [varchar](10) NULL,
	[fecha] [date] NULL,
	[hora] [varchar](10) NULL,
	[montoCotizado] [decimal](20, 2) NULL,
	[fechaProgramacion] [date] NULL,
	[casaComercial] [varchar](50) NULL,
	[fechaRecepcion] [date] NULL,
	[observacion] [text] NULL,
	[liquidado] [decimal](20, 2) NULL,
	[nombreMedico] [varchar](150) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATFichaSoliGaranPagos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATFichaSoliGaranPagos](
	[id] [int] NULL,
	[NroFicha] [int] NULL,
	[nOficio] [varchar](15) NULL,
	[fechaFacturaM] [date] NULL,
	[nFacturaM] [varchar](15) NULL,
	[importeM] [decimal](20, 2) NULL,
	[fechaFacturaP] [date] NULL,
	[nFacturaP] [varchar](15) NULL,
	[importeP] [decimal](20, 2) NULL,
	[estado] [varchar](25) NULL,
	[fechaGiro] [date] NULL,
	[totalGirado] [decimal](20, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOATTipoVehiculo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOATTipoVehiculo](
	[IdTipoVehiculo] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[Motorizado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoatValidar]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoatValidar](
	[CUENTA] [float] NULL,
	[N° DOC] [nvarchar](255) NULL,
	[HC] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOFA]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOFA](
	[IdSOFA] [int] NULL,
	[IdCalificacionSOFA1] [int] NULL,
	[IdCalificacionSOFA2] [int] NULL,
	[IdCalificacionSOFA3] [int] NULL,
	[IdCalificacionSOFA4] [int] NULL,
	[IdCalificacionSOFA5] [int] NULL,
	[IdCalificacionSOFA6] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdSecuencia] [int] NULL,
	[IdServicio] [int] NULL,
	[IdPrioridad] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuario] [int] NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudExamenBaciloscopia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudExamenBaciloscopia](
	[IdSolicitudBaciloscopia] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdTipoMuestra] [int] NULL,
	[Especificar] [varchar](50) NULL,
	[IdAntecedenteTratamiento] [int] NULL,
	[SrDiagnostico] [int] NULL,
	[SegDiagnostico] [int] NULL,
	[RxAnormalDiagnostico] [int] NULL,
	[OtroDiagnostico] [varchar](50) NULL,
	[IdControlTratamiento] [int] NULL,
	[IdExSolicitado] [int] NULL,
	[DescripcionSolicitados] [int] NULL,
	[PruebaSensibilidadRapida] [int] NULL,
	[EspecificarPruebaRapida] [varchar](50) NULL,
	[PruebaSensibilidadConvencional] [int] NULL,
	[EspecificarPruebaConvencional] [varchar](50) NULL,
	[OtroExamen] [varchar](50) NULL,
	[FactorRiesgo] [varchar](50) NULL,
	[FechaObtencionMuestra] [date] NULL,
	[Observaciones] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProa]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProa](
	[IdSolicitudProa] [int] IDENTITY(1,1) NOT NULL,
	[FechaSolicitudProa] [datetime] NOT NULL,
	[IdQuimicoFarmaceutico] [int] NULL,
	[IdMedicoInfectologo] [int] NULL,
	[IdReceta] [int] NOT NULL,
	[ObservacionesQF] [varchar](1000) NULL,
	[ObservacionesINF] [varchar](1000) NULL,
	[EstadoSolicitud] [int] NULL,
	[FechaEvaluacion] [datetime] NULL,
	[FechaConfirmacion] [datetime] NULL,
	[UsuarioConfirmacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitudProa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProaAutorizacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProaAutorizacion](
	[IdAutorizacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Dias] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAutorizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProaDetalle]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProaDetalle](
	[IdSolicitudProa] [int] NOT NULL,
	[IdItem] [int] NOT NULL,
	[EstadoAutorizado] [int] NULL,
	[NroDiasAutorizado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitudProa] ASC,
	[IdItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProaDiagnostico]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProaDiagnostico](
	[IdSolicitudProa] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[IdTipoDiagnostico] [int] NOT NULL,
	[Orden] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitudProa] ASC,
	[IdDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProaRecomendacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProaRecomendacion](
	[IdSolicitudProa] [int] NOT NULL,
	[IdItem] [int] NOT NULL,
	[Dosis] [varchar](50) NULL,
	[IdViaAdministracion] [int] NULL,
	[Duracion] [varchar](50) NULL,
	[Observaciones] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitudProa] ASC,
	[IdItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProcedimientos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProcedimientos](
	[IdSolicitudProc] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdCuenta] [int] NOT NULL,
	[IdProducto] [int] NULL,
	[idDiagnostico] [int] NULL,
	[Cantidad] [varchar](3) NULL,
	[Observación] [varchar](1000) NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuario] [int] NOT NULL,
	[Estado] [bit] NULL,
	[IdCuentaPago] [int] NULL,
	[FechaPago] [datetime] NULL,
	[EstadoPago] [char](1) NULL,
 CONSTRAINT [PK_SolicitudProcedimientos] PRIMARY KEY CLUSTERED 
(
	[IdSolicitudProc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudProcedimientosDetalle]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudProcedimientosDetalle](
	[IdSolicitudProc] [int] NOT NULL,
	[IdProducto] [int] NULL,
	[idDiagnostico] [int] NULL,
	[Cantidad] [varchar](3) NULL,
	[Observación] [varchar](1000) NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubclasificacionDiagnosticos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubclasificacionDiagnosticos](
	[IdSubclasificacionDx] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[IdClasificacionDx] [int] NULL,
	[IdTipoServicio] [int] NULL,
 CONSTRAINT [SubclasificaciónDiagnosticos_PK] PRIMARY KEY CLUSTERED 
(
	[IdSubclasificacionDx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubDxObstetricoEgre]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDxObstetricoEgre](
	[IdSubDxObstetricoEgre] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdDxObstetricoEgre] [int] NULL,
	[IdTipoParto] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubDxObstetricoIng]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDxObstetricoIng](
	[IdSubDxObstetricoIng] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdDxObstetricoIng] [int] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subir]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subir](
	[idatencion] [int] NULL,
	[idcuentaatencion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SunasaPacientesHistoricos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SunasaPacientesHistoricos](
	[idSunasaPacienteHistorico] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[idPaciente] [int] NOT NULL,
	[CodigoIAFA] [varchar](5) NULL,
	[idPaisTitular] [int] NULL,
	[idTipoDocumentoTitular] [int] NULL,
	[NroDocumentoTitular] [varchar](10) NULL,
	[ApellidoCasada] [varchar](35) NULL,
	[ValidacionRegIdentidad] [bit] NULL,
	[NroCarnetIdentidad] [varchar](10) NULL,
	[EstadoDelSeguro] [int] NULL,
	[IdAfiliacion] [int] NULL,
	[ProductoYplan] [varchar](7) NULL,
	[FechaInicioAfiliacion] [datetime] NULL,
	[FechaFinalAfiliacion] [datetime] NULL,
	[idRegimen] [int] NULL,
	[CodigoEstablecimientoIAFA] [varchar](8) NULL,
	[CodigoEstablecimientoRENAES] [varchar](8) NULL,
	[idParentesco] [int] NULL,
	[RUCempleador] [varchar](11) NULL,
	[AnteriorIdTipoDocumentoAsegurado] [int] NULL,
	[AnteriorNroDocumentoAsegurado] [varchar](10) NULL,
	[DNIusarioOperacion] [varchar](8) NULL,
	[idOperacion] [int] NULL,
	[FechaEnvio] [datetime] NULL,
	[SisSepelioParienteEncargado] [varchar](100) NULL,
	[SisSepelioDni] [varchar](8) NULL,
	[SisSepelioFnacimiento] [datetime] NULL,
	[SisSepelioSexo] [int] NULL,
	[SisNroAfiliacion] [varchar](20) NULL,
	[YaNoTieneSeguro] [bit] NULL,
 CONSTRAINT [PK_PacienteSunasa] PRIMARY KEY CLUSTERED 
(
	[idSunasaPacienteHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SunasaTiposAfiliacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SunasaTiposAfiliacion](
	[idAfiliacion] [int] NOT NULL,
	[Afiliacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposSUNASAafiliacion] PRIMARY KEY CLUSTERED 
(
	[idAfiliacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SunasaTiposOperacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SunasaTiposOperacion](
	[idOperacion] [int] NOT NULL,
	[Operacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposSUNASAoperacion] PRIMARY KEY CLUSTERED 
(
	[idOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SunasaTiposParentesco]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SunasaTiposParentesco](
	[idParentesco] [int] NOT NULL,
	[Parentesco] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposSUNASAparentesco] PRIMARY KEY CLUSTERED 
(
	[idParentesco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SunasaTiposRegimen]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SunasaTiposRegimen](
	[idRegimen] [int] NOT NULL,
	[Regimen] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposSUNASAregimen] PRIMARY KEY CLUSTERED 
(
	[idRegimen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuSalud_ups]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuSalud_ups](
	[Codigo] [varchar](7) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SVGEstructura]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SVGEstructura](
	[Orden] [int] NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
	[SVG] [varchar](8000) NOT NULL,
	[Codigo] [varchar](20) NULL,
 CONSTRAINT [EstructuraSVG_PK] PRIMARY KEY CLUSTERED 
(
	[Orden] ASC,
	[Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla](
	[clave] [int] NULL,
	[cantidad] [int] NULL,
	[bloque] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TamizajeNutricional]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TamizajeNutricional](
	[IdTamizaje] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTamizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifa](
	[Item] [float] NULL,
	[codigo] [nvarchar](max) NULL,
	[descrip] [nvarchar](max) NULL,
	[tarifaa] [float] NULL,
	[tarifab] [float] NULL,
	[conv_priv] [float] NULL,
	[IdServicioGrupo] [float] NULL,
	[ServicioGrupo] [nvarchar](max) NULL,
	[IdServicioSubGrupo] [float] NULL,
	[ServicioSubGrupo] [nvarchar](max) NULL,
	[IdServicioSeccion] [float] NULL,
	[ServicioSeccion] [nvarchar](max) NULL,
	[IdServicioSubSeccion] [float] NULL,
	[ServicioSubSeccion] [nvarchar](max) NULL,
	[IdPartida] [float] NULL,
	[Clasif_partida] [nvarchar](max) NULL,
	[desc_partida] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarifaSoat]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarifaSoat](
	[cpt] [nvarchar](max) NULL,
	[tarifa] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TecnicaAnestesiaRegional]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TecnicaAnestesiaRegional](
	[IdTecnicaAnestesiaRegional] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TecnicaAnestesiaRegional] PRIMARY KEY CLUSTERED 
(
	[IdTecnicaAnestesiaRegional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TELESALUD]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELESALUD](
	[id] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleado] [int] NULL,
	[TELE_Motivo] [varchar](50) NULL,
	[TELE_Muestra] [varchar](50) NULL,
	[TELE_MuestraDetalle] [text] NULL,
	[TELE_Conclusion] [text] NULL,
	[TELE_BIRADS] [varchar](50) NULL,
	[TELE_Fecha] [datetime] NULL,
	[TELE_Estado] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TELESALUDFua]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELESALUDFua](
	[id] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleado] [int] NULL,
	[nombre] [varchar](100) NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TELESALUDInforme]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELESALUDInforme](
	[id] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleado] [int] NULL,
	[nombre] [varchar](100) NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TELESALUDMotivo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELESALUDMotivo](
	[id] [int] NULL,
	[Nombre] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TELESALUDMuestra]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELESALUDMuestra](
	[id] [int] NULL,
	[Nombre] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempFarmSOAT]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempFarmSOAT](
	[cod] [varchar](50) NOT NULL,
	[Nom] [varchar](350) NOT NULL,
	[cant] [numeric](18, 0) NOT NULL,
	[dev] [numeric](18, 0) NOT NULL,
	[cantidad] [numeric](18, 0) NOT NULL,
	[preunit] [numeric](18, 3) NOT NULL,
	[total] [numeric](18, 3) NOT NULL,
	[idProducto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempMovimientos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempMovimientos](
	[IdMovimiento] [int] NULL,
	[IdUsuario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temporal]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporal](
	[Mes] [varchar](61) NULL,
	[idProducto] [int] NOT NULL,
	[codigo] [varchar](7) NOT NULL,
	[TotCantidad] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[ID] [int] NULL,
	[Name] [char](1) NULL,
	[Year] [int] NULL,
	[QTY] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFAtendidoPor]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFAtendidoPor](
	[IdAtendidoPor] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAtendidoPor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFCalendarioEpidemiologico]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFCalendarioEpidemiologico](
	[Fecha] [date] NULL,
	[Semana] [int] NULL,
	[Anio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFHisopo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFHisopo](
	[IdHisopo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHisopo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFPrueba]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFPrueba](
	[IdPrueba] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrueba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TFTosFerinaCabecera]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TFTosFerinaCabecera](
	[IdTosFerina] [int] IDENTITY(1,1) NOT NULL,
	[FechaNotificacion] [date] NULL,
	[IdTipo] [int] NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdPaciente] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[EstadoCivil] [int] NULL,
	[Ocupacion] [varchar](1000) NULL,
	[Tiempo] [varchar](50) NULL,
	[IdEtnia] [int] NULL,
	[EtniaOtro] [varchar](200) NULL,
	[IdDistrito] [int] NULL,
	[Direccion] [varchar](1000) NULL,
	[Referencia] [varchar](1000) NULL,
	[FechaInicioSintomas] [date] NULL,
	[SemanaEpidemiologica] [varchar](100) NULL,
	[TosParoxistica] [int] NULL,
	[TosParoxisticaFecha] [date] NULL,
	[InspiracionRuidosa] [int] NULL,
	[InspiracionRuidosaFecha] [date] NULL,
	[Vomitos] [int] NULL,
	[VomitosFecha] [date] NULL,
	[Neumonia] [int] NULL,
	[NeumoniaFecha] [date] NULL,
	[Deshidratacion] [int] NULL,
	[DeshidratacionFecha] [date] NULL,
	[Desnutricion] [int] NULL,
	[DesnutricionFecha] [date] NULL,
	[OtraComplicacion] [varchar](200) NULL,
	[OtraComplicacionFecha] [date] NULL,
	[IdAtendidoPor] [int] NULL,
	[AtendidoPorOtro] [varchar](200) NULL,
	[Hospitalizado] [int] NULL,
	[FechaHospitalizacion] [date] NULL,
	[TxAntibiotico] [int] NULL,
	[Antibiotico] [varchar](500) NULL,
	[DiasTx] [varchar](50) NULL,
	[IdHisopo] [int] NULL,
	[EstablecimientoVacunado] [varchar](500) NULL,
	[CarnetVacunacion] [int] NULL,
	[BcgRn] [int] NULL,
	[Antipolio1] [int] NULL,
	[Antipolio2] [int] NULL,
	[Antipolio3] [int] NULL,
	[AntipolioDAN] [int] NULL,
	[Antisarampion1] [int] NULL,
	[Antisarampion1Ref] [int] NULL,
	[PentaDpt1] [int] NULL,
	[PentaDpt2] [int] NULL,
	[PentaDpt3] [int] NULL,
	[PentaDpt1RefDpt] [int] NULL,
	[PentaDpt2RefDpt] [int] NULL,
	[FechaUltimaDosis] [date] NULL,
	[Viaje12] [int] NULL,
	[Viaje12Nombre] [varchar](200) NULL,
	[Viaje12Lugar] [varchar](200) NULL,
	[Visita12] [int] NULL,
	[Visita12Nombre] [varchar](200) NULL,
	[Visita12Lugar] [varchar](200) NULL,
	[OtroCaso] [int] NULL,
	[OtroCasoNombre] [varchar](200) NULL,
	[OtroCasoLugar] [varchar](200) NULL,
	[Hospitalizado12] [int] NULL,
	[Hospitalizado12Nombre] [varchar](200) NULL,
	[Hospitalizado12Lugar] [varchar](200) NULL,
	[HemoLinfocitos] [varchar](50) NULL,
	[HemoNeutrofilos] [varchar](50) NULL,
	[HemoAbastonados] [varchar](50) NULL,
	[HemoSegmentados] [varchar](50) NULL,
	[HemoEosinofilos] [varchar](50) NULL,
	[HemoBasofilos] [varchar](50) NULL,
	[HemoMonocitos] [varchar](50) NULL,
	[ReaccionLeucemoide] [int] NULL,
	[Observaciones] [varchar](2000) NULL,
	[ContactoDomicilio1] [varchar](500) NULL,
	[ContactoDomicilio1Edad] [varchar](20) NULL,
	[ContactoDomicilio1Sexo] [int] NULL,
	[ContactoDomicilio1Vacunado] [int] NULL,
	[ContactoDomicilio1ConTos] [int] NULL,
	[ContactoDomicilio1Hoy] [int] NULL,
	[ContactoDomicilio2] [varchar](500) NULL,
	[ContactoDomicilio2Edad] [varchar](20) NULL,
	[ContactoDomicilio2Sexo] [int] NULL,
	[ContactoDomicilio2Vacunado] [int] NULL,
	[ContactoDomicilio2ConTos] [int] NULL,
	[ContactoDomicilio2Hoy] [int] NULL,
	[ContactoDomicilio3] [varchar](500) NULL,
	[ContactoDomicilio3Edad] [varchar](20) NULL,
	[ContactoDomicilio3Sexo] [int] NULL,
	[ContactoDomicilio3Vacunado] [int] NULL,
	[ContactoDomicilio3ConTos] [int] NULL,
	[ContactoDomicilio3Hoy] [int] NULL,
	[ContactoEstablecimiento1] [varchar](200) NULL,
	[ContactoEstablecimiento1Vacunado] [int] NULL,
	[ContactoEstablecimiento1Lugar] [varchar](500) NULL,
	[ContactoEstablecimiento2] [varchar](200) NULL,
	[ContactoEstablecimiento2Vacunado] [int] NULL,
	[ContactoEstablecimiento2Lugar] [varchar](500) NULL,
	[ContactoEstablecimiento3] [varchar](200) NULL,
	[ContactoEstablecimiento3Vacunado] [int] NULL,
	[ContactoEstablecimiento3Lugar] [varchar](500) NULL,
	[VacunacionContactoDomicilio] [int] NULL,
	[VacunacionContactoDomicilioFecha] [date] NULL,
	[VacunacionCentroEducativo] [int] NULL,
	[VacunacionCentroEducativoFecha] [date] NULL,
	[VacunacionCercanaCaso] [int] NULL,
	[VacunacionCercanaCasoFecha] [date] NULL,
	[OtrasMedidasControl] [varchar](2000) NULL,
	[LaboratorioRecepciona] [varchar](2000) NULL,
	[FechaTomaMuestra] [date] NULL,
	[TipoMuestra] [int] NULL,
	[TipoMuestraEsp] [varchar](200) NULL,
	[Otras] [varchar](200) NULL,
	[OtrasFecha] [date] NULL,
	[FechaResultado] [date] NULL,
	[Prueba] [int] NULL,
	[TosFerina] [int] NULL,
	[Laboratorio] [int] NULL,
	[AnatomiaPatologica] [int] NULL,
	[Clinica] [int] NULL,
	[DxDescarte] [varchar](500) NULL,
	[IdUsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[IdUsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[IdUsuarioLaboratorio] [int] NULL,
	[FechaLaboratorio] [datetime] NULL,
	[IdUsuarioLaboratorioModificacion] [int] NULL,
	[FechaLaboratorioModificacion] [datetime] NULL,
	[IdEstado] [int] NULL,
	[IdUsuarioElimina] [int] NULL,
	[FechaElimina] [datetime] NULL,
	[IdUsuarioClasificacion] [int] NULL,
	[FechaClasificacion] [datetime] NULL,
	[IdUsuarioClasificacionModificacion] [int] NULL,
	[FechaClasificacionModificacion] [datetime] NULL,
	[FechaResultadoLab] [date] NULL,
	[ResultadoLab] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTosFerina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicCanalesEnvio]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicCanalesEnvio](
	[IdCanalEnvio] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCanalEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicEspecialidades]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicEspecialidades](
	[IdEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicEstados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicEstados](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicModalidades]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicModalidades](
	[IdModalidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Cpt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicMotivosSolicitud]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicMotivosSolicitud](
	[IdMotivoSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMotivoSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicMotivosSolicitudTeleconsultor]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicMotivosSolicitudTeleconsultor](
	[IdMotivoSolicitudTeleconsultor] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMotivoSolicitudTeleconsultor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicPacientes]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicPacientes](
	[IdPaciente] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoPaterno] [varchar](40) NULL,
	[Apellidomaterno] [varchar](40) NULL,
	[Nombres] [varchar](40) NULL,
	[IdDocIdentidad] [int] NOT NULL,
	[NroDocumento] [varchar](12) NOT NULL,
	[FechaNacimiento] [date] NULL,
	[IdTipoSexo] [int] NOT NULL,
	[DireccionDomicilio] [varchar](100) NOT NULL,
	[DistritoDomicilio] [varchar](40) NOT NULL,
	[IdDistritoReniec] [varchar](6) NULL,
	[EsNn] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[Estado] [int] NULL,
	[ProvinciaDomicilio] [varchar](40) NULL,
	[DepartamentoDomicilio] [varchar](40) NULL,
	[PaisDomicilio] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicProfesiones]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicProfesiones](
	[IdProfesion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProfesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudes]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudes](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NOT NULL,
	[IdEstablecimiento] [int] NULL,
	[IdModalidad] [int] NOT NULL,
	[IdModalidad2] [int] NOT NULL,
	[IdMotivoSolicitud] [int] NOT NULL,
	[IdEspecialidad] [int] NULL,
	[IdProfesion] [int] NULL,
	[Referencia] [int] NOT NULL,
	[PresionArterial] [varchar](20) NULL,
	[FrecuenciaCardiaca] [varchar](20) NULL,
	[FrecuenciaRespiratoria] [varchar](20) NULL,
	[Sat] [varchar](20) NULL,
	[Temperatura] [varchar](20) NULL,
	[Peso] [varchar](20) NULL,
	[Talla] [varchar](20) NULL,
	[Imc] [varchar](20) NULL,
	[Relato] [varchar](2000) NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[Observacion] [varchar](1000) NULL,
	[Estado] [int] NOT NULL,
	[BienesInsumos] [varchar](max) NULL,
	[IdEstado] [int] NULL,
	[UsuarioAdministrativo] [int] NULL,
	[FechaAdministrativo] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesDiagnostico]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesDiagnostico](
	[IdSolicitud] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[IdTipoDiagnostico] [int] NOT NULL,
	[Orden] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC,
	[IdDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesEstado]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesEstado](
	[IdSolicitud] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[IdMotivoSolicitud] [int] NULL,
	[Observacion] [varchar](1000) NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[UsuarioRegistro] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesFarmaciaLaboratorio]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesFarmaciaLaboratorio](
	[IdSolicitud] [int] NOT NULL,
	[IdMovimiento] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Fecha] [varchar](10) NULL,
	[Cantidad] [int] NOT NULL,
	[Tipo] [int] NOT NULL,
	[Tipo2] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC,
	[IdMovimiento] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesNota]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesNota](
	[IdNota] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitud] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Nota] [varchar](1000) NOT NULL,
	[Observacion] [varchar](1000) NULL,
	[Estado] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [int] NULL,
	[Medico] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesTeleconsultor]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesTeleconsultor](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NULL,
	[IdPacienteTic] [int] NULL,
	[FechaSolicitud] [date] NOT NULL,
	[IpressOrigen] [int] NOT NULL,
	[UpssOrigen] [int] NOT NULL,
	[IdEspecialidad] [int] NOT NULL,
	[IdModalidad] [int] NOT NULL,
	[IdModalidad2] [int] NOT NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[Observacion] [varchar](1000) NULL,
	[IdEstado] [int] NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesTeleconsultorAtencion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesTeleconsultorAtencion](
	[IdAtencion] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitud] [int] NULL,
	[Fecha] [date] NULL,
	[Hora] [time](7) NULL,
	[Medico] [int] NULL,
	[Estado] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioRegistro] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [int] NULL,
	[FechaEliminacion] [datetime] NULL,
	[UsuarioEliminacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesTeleconsultorDiagnostico]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesTeleconsultorDiagnostico](
	[IdSolicitud] [int] NOT NULL,
	[IdDiagnostico] [int] NOT NULL,
	[IdTipoDiagnostico] [int] NOT NULL,
	[Orden] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC,
	[IdDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesTeleconsultorEstado]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesTeleconsultorEstado](
	[IdSolicitud] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[IdMotivoSolicitudTeleconsultor] [int] NULL,
	[Observacion] [varchar](1000) NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[UsuarioRegistro] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicSolicitudesTeleconsultorNota]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicSolicitudesTeleconsultorNota](
	[IdNota] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitud] [int] NOT NULL,
	[FechaEnvioFat] [date] NOT NULL,
	[HoraEnvioFat] [time](7) NOT NULL,
	[IdCanalEnvio] [int] NOT NULL,
	[Nota] [varchar](1000) NOT NULL,
	[Observacion] [varchar](1000) NULL,
	[Estado] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicTelefonos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicTelefonos](
	[IdTelefono] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[Tbl] [varchar](10) NOT NULL,
	[Telefono] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
	[Observacion] [varchar](1000) NULL,
	[UsuarioRegistro] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UsuarioModificacion] [int] NULL,
	[FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTelefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicTiposDocumento]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicTiposDocumento](
	[IdTipoDocumento] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Orden] [int] NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicTiposUbicacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicTiposUbicacion](
	[IdUbicacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAccidenteLesacctra]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAccidenteLesacctra](
	[IdTipoAccidente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEstablecimiento]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEstablecimiento](
	[idtipo] [int] NULL,
	[Nombre] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFinanciador]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFinanciador](
	[idTipoFinanciador] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[denominacion] [varchar](50) NULL,
	[codigo] [varchar](11) NULL,
 CONSTRAINT [PK_TipoFinanciador] PRIMARY KEY CLUSTERED 
(
	[idTipoFinanciador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFormaPago]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFormaPago](
	[IdTipoFormaPago] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMigracion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMigracion](
	[idTipoMigracion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](80) NULL,
	[idEstado] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoMigracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMuestraBaciloscopia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMuestraBaciloscopia](
	[IdTipoMuestra] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoNotificacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNotificacion](
	[IdNotificacion] [int] NULL,
	[TipoNotificacion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoParto]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoParto](
	[IdTipoParto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPersonaJP]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPersonaJP](
	[IdTipoPersonaJP] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPlanSalida]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPlanSalida](
	[IdPlan] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [PK_TipoPlanSalida] PRIMARY KEY CLUSTERED 
(
	[IdPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPruebaCovid]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPruebaCovid](
	[idTipoPrueba] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoPrueba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoReciboIngreso]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoReciboIngreso](
	[idTipoReciboIngreso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_TipoReciboIngreso] PRIMARY KEY CLUSTERED 
(
	[idTipoReciboIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposAccidenteEventos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposAccidenteEventos](
	[IdTiposE] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposAccidenteTransito]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposAccidenteTransito](
	[IdAccidente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposAccionesEnfermeria]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposAccionesEnfermeria](
	[IdAccionesEnfermeria] [int] NOT NULL,
	[Descripcion] [nchar](200) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposAccionesEnfermeria] PRIMARY KEY CLUSTERED 
(
	[IdAccionesEnfermeria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposAlta]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposAlta](
	[IdTipoAlta] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposAlta_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoAlta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposAnestesia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposAnestesia](
	[IdAnestesia] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposAnestesia] PRIMARY KEY CLUSTERED 
(
	[IdAnestesia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposAnestesiaGeneral]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposAnestesiaGeneral](
	[IdAnestesiaGeneral] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposAnestesiaGeneral] PRIMARY KEY CLUSTERED 
(
	[IdAnestesiaGeneral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCama]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCama](
	[IdTipoCama] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [TiposCama_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoCama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCargo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCargo](
	[idTipoCargo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Cargo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TiposCargo] PRIMARY KEY CLUSTERED 
(
	[idTipoCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCasosCE]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCasosCE](
	[IdTipoCaso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCausaSuspensionOperacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCausaSuspensionOperacion](
	[IdCausaSuspensionOperacion] [int] NOT NULL,
	[IdGrupoCausaSuspensionOperacion] [int] NULL,
	[Descripcion] [varchar](1000) NULL,
	[Orden] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposCausaSuspension] PRIMARY KEY CLUSTERED 
(
	[IdCausaSuspensionOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposChequeoCirujano]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposChequeoCirujano](
	[IdChequeoCirujano] [int] NOT NULL,
	[Descripcion] [varchar](1000) NULL,
	[Orden] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposChequeoCirujano] PRIMARY KEY CLUSTERED 
(
	[IdChequeoCirujano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposChequeoEnfermeriaPreOperatoria]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposChequeoEnfermeriaPreOperatoria](
	[IdChequeoEnfermeriaPreOperatoria] [int] NOT NULL,
	[IdGrupoChequeoEnfermeriaPreOperatoria] [int] NULL,
	[Descripcion] [varchar](1000) NULL,
	[Orden] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposChequeoEnfermeriaPreOperatoria] PRIMARY KEY CLUSTERED 
(
	[IdChequeoEnfermeriaPreOperatoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCirugiasCQ]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCirugiasCQ](
	[IdTiposCirugias] [int] IDENTITY(1,1) NOT NULL,
	[Abreviatura] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionAlta]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionAlta](
	[IdCondicionAlta] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[codigoCondicionAltaSEM] [varchar](1) NULL,
 CONSTRAINT [TiposCondicionAlta_PK] PRIMARY KEY CLUSTERED 
(
	[IdCondicionAlta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionContrarreferencia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionContrarreferencia](
	[IdCondicion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Abreviacion] [varchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionIngresoURPA]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionIngresoURPA](
	[IdCondicionIngresoURPA] [int] NOT NULL,
	[IdGrupoCondicionIngresoURPA] [int] NULL,
	[Descripcion] [varchar](1000) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposCondicionIngresoURPA] PRIMARY KEY CLUSTERED 
(
	[IdCondicionIngresoURPA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionLaboral]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionLaboral](
	[IdCondicion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionOcupacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionOcupacion](
	[IdCondicionOcupacion] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposCondicionOcupacion_PK] PRIMARY KEY CLUSTERED 
(
	[IdCondicionOcupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionPaciente]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionPaciente](
	[IdTipoCondicionPaciente] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[OrdenRegHis] [int] NULL,
 CONSTRAINT [TiposCondicionPaciente_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoCondicionPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionRecienNacido]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionRecienNacido](
	[IdCondicionRN] [int] NOT NULL,
	[Descripcion] [varchar](20) NULL,
 CONSTRAINT [TiposCondicionRecienNacido_PK] PRIMARY KEY CLUSTERED 
(
	[IdCondicionRN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondicionTrabajo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondicionTrabajo](
	[IdCondicionTrabajo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposCondicionTrabajo_PK] PRIMARY KEY CLUSTERED 
(
	[IdCondicionTrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposCondPacientesPlanFam]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposCondPacientesPlanFam](
	[IdCondicion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposConsentimientoInformado]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposConsentimientoInformado](
	[IdTiposConsentimientoInformado] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Abreviatura] [varchar](10) NULL,
	[EsOrdenOperatoriaMQ] [bit] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [varchar](50) NULL,
	[FechaReg] [datetime] NULL,
	[idespecialidad] [int] NULL,
	[IdTipoSexo] [int] NULL,
	[IdTipoConcepto] [int] NULL,
	[Opcion2] [varchar](max) NULL,
	[idEntorno] [int] NULL,
 CONSTRAINT [PK_TiposConsentimientoInformado] PRIMARY KEY CLUSTERED 
(
	[IdTiposConsentimientoInformado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposConsumos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposConsumos](
	[idTipoConsumo] [int] NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TiposConsumos] PRIMARY KEY CLUSTERED 
(
	[idTipoConsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDestacados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDestacados](
	[idDestacado] [int] NOT NULL,
	[Destacado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposDestacados] PRIMARY KEY CLUSTERED 
(
	[idDestacado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDestinoAtencion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDestinoAtencion](
	[IdDestinoAtencion] [int] NOT NULL,
	[Codigo] [char](1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdTipoServicio] [int] NULL,
	[TipoServicioHosp] [int] NULL,
	[DestinoSEM] [varchar](2) NULL,
	[id_destinoAseguradoSIS] [varchar](1) NULL,
 CONSTRAINT [DestinosAtencion_PK] PRIMARY KEY CLUSTERED 
(
	[IdDestinoAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDestinoOperacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDestinoOperacion](
	[IdTiposDestinoOperacion] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_DestinoOperacionSG] PRIMARY KEY CLUSTERED 
(
	[IdTiposDestinoOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiposDiagnosticos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposDiagnosticos](
	[idTipoDiagnostico] [int] NOT NULL,
	[descTipoDiagnostico] [varchar](100) NULL,
	[idEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDiscapacidad]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDiscapacidad](
	[IdDiscapacidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocIdentidad]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocIdentidad](
	[IdDocIdentidad] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[CodigoSUNASA] [int] NULL,
	[CodigoHIS] [varchar](1) NULL,
	[CodigoSIS] [varchar](1) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [TiposDocIdentidad_PK] PRIMARY KEY CLUSTERED 
(
	[IdDocIdentidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEdad]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEdad](
	[IdTipoEdad] [int] NOT NULL,
	[Codigo] [char](1) NOT NULL,
	[Descripcion] [varchar](10) NOT NULL,
	[tipoEdadSEM] [varchar](1) NULL,
 CONSTRAINT [TiposEdad_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoEdad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEmpleado]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEmpleado](
	[IdTipoEmpleado] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[TipoEmpleadoHIS] [varchar](2) NULL,
	[EsProgramado] [bit] NULL,
	[TipoEmpleadoSIS] [varchar](2) NULL,
	[EsColegiatura] [bit] NULL,
	[Interconsulta] [int] NULL,
	[CondicionEmpleado] [char](1) NULL,
	[IdCentroCosto] [int] NULL,
	[Abreviatura] [varchar](50) NULL,
	[EsMedico] [int] NULL,
	[ColegioProfesional] [varchar](200) NULL,
	[EspecialidadSuSalud] [varchar](500) NULL,
 CONSTRAINT [TiposEmpleado_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEmpleadosRolesCQx]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEmpleadosRolesCQx](
	[IdEmpleadosRolesCQx] [int] NOT NULL,
	[IdTipoEmpleado] [int] NOT NULL,
	[IdRolesCQx] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
 CONSTRAINT [PK_TiposEmpleadosRolesCQx] PRIMARY KEY CLUSTERED 
(
	[IdEmpleadosRolesCQx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEscalaSOFAUCI]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEscalaSOFAUCI](
	[IdEscalaSOFA] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEscalaSOFA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEstablecimientos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEstablecimientos](
	[IdTipo] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [TiposEstablecimientos_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEstadoCivil]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEstadoCivil](
	[IdEstadoCivil] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[lolcli] [varchar](2) NULL,
	[sip2000] [varchar](2) NULL,
 CONSTRAINT [TiposEstadoCivil_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEstadoSalaOperacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEstadoSalaOperacion](
	[IdEstadoSalaOperacion] [int] NOT NULL,
	[Descripcion] [nchar](50) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposEstadoSalaOperacion] PRIMARY KEY CLUSTERED 
(
	[IdEstadoSalaOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEstadosCita]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEstadosCita](
	[IdEstadoCita] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposEstadosCita_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEstadoTriajeLlamado]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEstadoTriajeLlamado](
	[IdEstadoLlamado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposExamenFisico]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposExamenFisico](
	[IdExamenFisico] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Abreviatura] [varchar](50) NULL,
	[Tipo] [varchar](20) NULL,
	[FormatoMask] [varchar](50) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposExamenFisico] PRIMARY KEY CLUSTERED 
(
	[IdExamenFisico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposFinanciamiento]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposFinanciamiento](
	[IdTipoFinanciamiento] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[esOficina] [bit] NOT NULL,
	[esSalida] [bit] NOT NULL,
	[SeIngresPrecios] [bit] NOT NULL,
	[EsFarmacia] [bit] NOT NULL,
	[idCajaTiposComprobante] [int] NULL,
	[tipoVenta] [varchar](1) NULL,
	[SeImprimeComprobante] [bit] NULL,
	[esFuenteFinanciamiento] [bit] NOT NULL,
	[GeneraPago] [int] NULL,
	[idTipoConcepto] [int] NULL,
 CONSTRAINT [TiposFinanciamiento_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposFormaFarmaceutica]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposFormaFarmaceutica](
	[IdFormaFarmaceutica] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](10) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposFormatosCQx]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposFormatosCQx](
	[IdFormatosCQx] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[IdRolesCQx] [int] NOT NULL,
	[Objeto] [nchar](100) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposFormatosCQx] PRIMARY KEY CLUSTERED 
(
	[IdFormatosCQx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposGradoComplejidadOperacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposGradoComplejidadOperacion](
	[idGradoComplejidadOperacion] [int] NULL,
	[Descripcion] [varchar](30) NULL,
	[TipoComplejidad] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposGradoInstruccion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposGradoInstruccion](
	[IdGradoInstruccion] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[sip2000] [varchar](2) NULL,
 CONSTRAINT [TiposGradoInstruccion_PK] PRIMARY KEY CLUSTERED 
(
	[IdGradoInstruccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposGravedadAtencion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposGravedadAtencion](
	[IdTipoGravedad] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposGravedadAtencion_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoGravedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposHistoriaClinica]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposHistoriaClinica](
	[IdTipoHistoria] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposHistoriaClinica_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoHistoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposIdiomas]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposIdiomas](
	[IdIdioma] [int] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Lengua] [varchar](40) NOT NULL,
 CONSTRAINT [PK_TiposIdiomas] PRIMARY KEY CLUSTERED 
(
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposIndicadorCasoCE]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposIndicadorCasoCE](
	[IdIndicadorCaso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposInduccionAnestesia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposInduccionAnestesia](
	[IdInduccionAnestesia] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposInduccionAnestesia] PRIMARY KEY CLUSTERED 
(
	[IdInduccionAnestesia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposModalidadAsistencia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposModalidadAsistencia](
	[IdModalidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposMonitoreoInvasivo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposMonitoreoInvasivo](
	[IdMonitoreoInvasivo] [int] NOT NULL,
	[Descripcion] [nchar](200) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposMonitoreoInvasivo] PRIMARY KEY CLUSTERED 
(
	[IdMonitoreoInvasivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposMotivoAtencionEmergencia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposMotivoAtencionEmergencia](
	[IdMotivoAtencionEmergencia] [int] NOT NULL,
	[Descripcion] [varchar](2000) NULL,
	[IdPrioridadEmergencia] [int] NOT NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_IdMotivoAtencionEmergencia] PRIMARY KEY CLUSTERED 
(
	[IdMotivoAtencionEmergencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposNumeracionHistoria]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposNumeracionHistoria](
	[IdTipoNumeracion] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [TipoGeneracionHistoria_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoNumeracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposOcupacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposOcupacion](
	[IdTipoOcupacion] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[lolcli] [varchar](2) NULL,
 CONSTRAINT [TiposOcupacion_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoOcupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposOrientacionConsejeria]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposOrientacionConsejeria](
	[IdOrientacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposOrigenAtencion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposOrigenAtencion](
	[IdOrigenAtencion] [int] NOT NULL,
	[Codigo] [char](1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[IdTipoServicio] [int] NULL,
	[TipoServicioHosp] [int] NULL,
	[id_origenAseguradoSIS] [varchar](1) NULL,
 CONSTRAINT [TiposViaAdmision_PK] PRIMARY KEY CLUSTERED 
(
	[IdOrigenAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposOrigenDevolucion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposOrigenDevolucion](
	[IdOrigenDevolucion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdOrigenDevolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPacientePlanFam]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPacientePlanFam](
	[IdTipoPaciente] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPatologiasObstetricas]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPatologiasObstetricas](
	[IdPatologia] [int] NULL,
	[Descripcion] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPosicionAnestesia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPosicionAnestesia](
	[IdPosicionAnestesia] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposPosicionAnestesia] PRIMARY KEY CLUSTERED 
(
	[IdPosicionAnestesia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPrioridadEmergencia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPrioridadEmergencia](
	[IdPrioridadEmergencia] [int] NOT NULL,
	[Descripcion] [varchar](150) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposPrioridadEmergencia] PRIMARY KEY CLUSTERED 
(
	[IdPrioridadEmergencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPrioridadUCI]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPrioridadUCI](
	[IdPrioridad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrioridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposProcedencia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposProcedencia](
	[IdProcedencia] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposProcedencia_PK] PRIMARY KEY CLUSTERED 
(
	[IdProcedencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposProcedenciaPlanFam]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposProcedenciaPlanFam](
	[IdProcedencia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposProgramacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposProgramacion](
	[IdTipoProgramacion] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposProgramacion_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoProgramacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposProximaCita]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposProximaCita](
	[IdTipoProximaCita] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposReferencia]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposReferencia](
	[IdTipoReferencia] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposReferencia_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposResultadosServInterm]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposResultadosServInterm](
	[IdResultadoSI] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TiposResultadosServInterm] PRIMARY KEY CLUSTERED 
(
	[IdResultadoSI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposRolesCQx]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposRolesCQx](
	[IdRolesCQx] [int] NOT NULL,
	[Descripcion] [nchar](100) NULL,
	[Bit] [bit] NULL,
	[Orden] [int] NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposRolesCQx] PRIMARY KEY CLUSTERED 
(
	[IdRolesCQx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposServicio]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposServicio](
	[IdTipoServicio] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposServicio_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposServiciosIntermedios]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposServiciosIntermedios](
	[idTipo] [int] NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TiposServiciosIntermedios] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposSexo]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposSexo](
	[IdTipoSexo] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](5) NULL,
 CONSTRAINT [TiposSexo_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposSignosVitales]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposSignosVitales](
	[IdSignosVitales] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Abreviatura] [varchar](50) NULL,
	[Tipo] [varchar](20) NULL,
	[FormatoMask] [varchar](50) NULL,
	[EstadoReg] [bit] NULL,
	[IdUsuario] [int] NULL,
	[Estacion] [nchar](50) NULL,
	[FechaReg] [datetime] NULL,
 CONSTRAINT [PK_TiposSignosVitales] PRIMARY KEY CLUSTERED 
(
	[IdSignosVitales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiposSolicitud]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposSolicitud](
	[id] [int] NULL,
	[nombreFormato] [nchar](180) NULL,
	[ruta] [nchar](250) NULL,
	[servicio] [nchar](80) NULL,
	[estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposSubsector]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposSubsector](
	[IdTipoSubsector] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [TiposSubsector_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoSubsector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposTarifa]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposTarifa](
	[idTipoTarifa] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[codigo] [varchar](50) NOT NULL,
	[TipoTarifa] [varchar](100) NOT NULL,
	[EsFarmacia] [bit] NULL,
 CONSTRAINT [PK_TiposTarifa] PRIMARY KEY CLUSTERED 
(
	[idTipoTarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposTarifaCpt]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposTarifaCpt](
	[idTipoTarifa] [int] NOT NULL,
	[idProductoCpt] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposTransporte]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposTransporte](
	[idTipoTransporte] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposTransporte] PRIMARY KEY CLUSTERED 
(
	[idTipoTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposViaje]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposViaje](
	[idTipoViaje] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposViaje] PRIMARY KEY CLUSTERED 
(
	[idTipoViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTamizajeNutricional]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTamizajeNutricional](
	[IdTipoTamizaje] [int] IDENTITY(1,1) NOT NULL,
	[IdTamizaje] [int] NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK__TipoTami__D87EFDAE768C4594] PRIMARY KEY CLUSTERED 
(
	[IdTipoTamizaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTrasladoLesacctra]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTrasladoLesacctra](
	[IdTipoTraslado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTrasporteReferencias]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTrasporteReferencias](
	[IdTipoTransporte] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoVentilacionMecanica]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVentilacionMecanica](
	[idTipoVentilacionMecanica] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[orden] [int] NULL,
 CONSTRAINT [PK_TipoVentilacionMecanica] PRIMARY KEY CLUSTERED 
(
	[idTipoVentilacionMecanica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tmp]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tmp](
	[idCuentaatencion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMPReporteFarmaciaDisponibilidad]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMPReporteFarmaciaDisponibilidad](
	[IdProducto] [int] NOT NULL,
	[Codigo] [varchar](7) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
	[CodigoSiga] [varchar](20) NULL,
	[Forma] [varchar](10) NULL,
	[ 2021-08] [float] NOT NULL,
	[ 2021-09] [float] NOT NULL,
	[ 2021-10] [float] NOT NULL,
	[ 2021-11] [float] NOT NULL,
	[ 2021-12] [float] NOT NULL,
	[ 2022-01] [float] NOT NULL,
	[ 2022-02] [float] NOT NULL,
	[ 2022-03] [float] NOT NULL,
	[ 2022-04] [float] NOT NULL,
	[ 2022-05] [float] NOT NULL,
	[ 2022-06] [float] NOT NULL,
	[ 2022-07] [float] NOT NULL,
	[ A1_Total] [float] NOT NULL,
	[ A2_MaxConsumo] [float] NOT NULL,
	[ A3_MesesConsumo] [float] NOT NULL,
	[ A4_PromMensual] [float] NOT NULL,
	[ Stock] [float] NOT NULL,
	[Provisto] [numeric](5, 2) NULL,
	[Situacion] [varchar](13) NOT NULL,
	[IdEstadoDisponibilidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopePorMedicamentos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopePorMedicamentos](
	[IdTope] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[TopeHospitalizados] [int] NULL,
	[TopeNoHospitalizados] [int] NULL,
	[IdEstado] [int] NULL,
	[IdTipoEmpleado] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRAMA_HIS]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRAMA_HIS](
	[IdCuentaAtencion] [int] NOT NULL,
	[idtipodoc] [int] NULL,
	[nrodocumento] [varchar](15) NULL,
	[apepaterno] [varchar](50) NULL,
	[apematerno] [varchar](50) NULL,
	[nombres] [varchar](300) NULL,
	[fechanacimiento] [varchar](8) NULL,
	[idsexo] [char](1) NULL,
	[idpais] [varchar](3) NULL,
	[IdEstablecimiento] [varchar](10) NULL,
	[idetnia] [varchar](3) NULL,
	[nrohistoriaclinica] [varchar](10) NULL,
	[idflag] [varchar](1) NOT NULL,
	[PERSONAL_ATIENDE] [varchar](1) NOT NULL,
	[PA_idtipodoc] [int] NULL,
	[PA_nrodocumento] [varchar](15) NULL,
	[PA_apepaterno] [varchar](50) NULL,
	[PA_apematerno] [varchar](50) NULL,
	[PA_nombres] [varchar](300) NULL,
	[PA_fechanacimiento] [varchar](8) NULL,
	[PA_idsexo] [char](1) NULL,
	[PA_idpais] [varchar](3) NULL,
	[PA_IdEstablecimiento] [varchar](10) NULL,
	[PA_idcondicion] [int] NULL,
	[PA_idprofesion] [varchar](2) NULL,
	[PERSONAL_REGISTRA] [varchar](1) NOT NULL,
	[PR_idtipodoc] [int] NULL,
	[PR_nrodocumento] [varchar](15) NULL,
	[PR_apepaterno] [varchar](50) NULL,
	[PR_apematerno] [varchar](50) NULL,
	[PR_nombres] [varchar](150) NULL,
	[PR_fechanacimiento] [varchar](8) NULL,
	[PR_idsexo] [char](1) NULL,
	[PR_idpais] [varchar](3) NULL,
	[PR_IdEstablecimiento] [varchar](10) NULL,
	[PR_idcondicion] [int] NULL,
	[PR_idprofesion] [varchar](2) NULL,
	[CITA] [varchar](1) NOT NULL,
	[C_edad_reg] [int] NULL,
	[C_idfinanciador] [varchar](2) NULL,
	[C_idturno] [varchar](1) NULL,
	[C_componente] [varchar](1) NOT NULL,
	[C_idestablecimiento] [varchar](10) NULL,
	[C_numeroafiliacion] [varchar](15) NULL,
	[C_annioedad] [int] NULL,
	[C_mesedad] [int] NULL,
	[C_diaedad] [int] NULL,
	[C_idtedadregistro] [char](1) NULL,
	[C_fechaatencion] [varchar](8) NULL,
	[C_idups] [varchar](6) NULL,
	[C_estadoregistro] [varchar](1) NOT NULL,
	[C_fgdiag] [varchar](2) NOT NULL,
	[ITEMS] [varchar](1) NOT NULL,
	[I_codigo] [varchar](10) NULL,
	[I_tipoitem] [varchar](2) NULL,
	[I_tipodiag] [varchar](1) NULL,
	[codigolote] [varchar](1) NOT NULL,
	[fechasolicitud] [varchar](1) NOT NULL,
	[fecharesultado] [varchar](1) NOT NULL,
	[codigo_labs] [varchar](1) NOT NULL,
	[valor_lab] [varchar](1) NOT NULL,
	[LABS] [varchar](1) NOT NULL,
	[codigo] [varchar](1) NOT NULL,
	[valor] [varchar](10) NULL,
	[codigo_labs1] [varchar](1) NULL,
	[valor_lab1] [varchar](10) NULL,
	[codigo_labs2] [varchar](1) NULL,
	[valor_lab2] [varchar](10) NULL,
	[codigo_labs3] [varchar](1) NULL,
	[valor_lab3] [varchar](10) NULL,
	[codigo_labs4] [varchar](1) NULL,
	[valor_lab4] [varchar](10) NULL,
	[EXAMENFISICO] [varchar](1) NOT NULL,
	[peso] [varchar](7) NULL,
	[talla] [varchar](7) NULL,
	[hemoglobina] [varchar](1) NOT NULL,
	[perimetrocefalico] [money] NULL,
	[perimetroabdominal] [varchar](1) NOT NULL,
	[SIdups] [int] NULL,
	[EIdEmpleado] [int] NULL,
	[FOSidusuario] [int] NULL,
	[SIdServicio] [int] NULL,
	[CondicionALEstab] [varchar](20) NULL,
	[CondicionAlServicio] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trama_minsaF500]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trama_minsaF500](
	[idTramaEnvio] [int] IDENTITY(1,1) NOT NULL,
	[idcuenta] [int] NULL,
	[idservicio] [int] NULL,
	[fecha] [date] NULL,
	[idenvio] [varchar](10) NULL,
	[fechaenvio] [varchar](20) NULL,
	[usuario] [varchar](20) NULL,
	[tipo_documento] [varchar](2) NULL,
	[numero_documento] [varchar](20) NULL,
	[nombres] [varchar](250) NULL,
	[apellido_paterno] [varchar](250) NULL,
	[apellido_materno] [varchar](250) NULL,
	[fecha_nacimiento] [varchar](8) NULL,
	[sexo] [varchar](1) NULL,
	[codipress] [varchar](8) NULL,
	[estado] [varchar](20) NULL,
	[fecha_ingreso] [varchar](8) NULL,
	[hora_ingreso] [varchar](5) NULL,
	[es_recuperado] [varchar](10) NULL,
	[fecha_alta] [varchar](8) NULL,
	[es_recuperado_voluntario] [varchar](10) NULL,
	[fecha_alta_voluntario] [varchar](8) NULL,
	[es_fallecido] [varchar](10) NULL,
	[fecha_fallecido] [varchar](8) NULL,
	[es_referido] [varchar](10) NULL,
	[fecha_referido] [varchar](8) NULL,
	[tipo_ingreso] [varchar](50) NULL,
	[eess_id] [varchar](8) NULL,
	[fecha_seguimiento] [varchar](10) NULL,
	[observaciones] [varchar](50) NULL,
	[evolucion] [varchar](50) NULL,
	[hospitalizacion] [varchar](50) NULL,
	[hora_seguimiento] [varchar](5) NULL,
	[cama] [varchar](5) NULL,
	[con_oxigeno] [varchar](10) NULL,
	[con_ventilacion] [varchar](50) NULL,
	[cuarto] [varchar](1) NULL,
	[esta_hospitalizacion] [varchar](10) NULL,
	[esta_uci] [varchar](10) NULL,
	[esta_ucin] [varchar](10) NULL,
	[piso] [varchar](1) NULL,
	[sala] [varchar](5) NULL,
	[fecha_de_envio] [datetime] NULL,
	[mensaje_respuesta] [varchar](20) NULL,
	[maquina] [varchar](25) NULL,
	[estadoReg] [int] NULL,
 CONSTRAINT [PK__trama_mi__40A19A731E852855] PRIMARY KEY CLUSTERED 
(
	[idTramaEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRIAJEEmergenciaDatosExtra]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRIAJEEmergenciaDatosExtra](
	[idTRIAJEEmergencia] [int] NOT NULL,
	[idDistrito] [varchar](20) NULL,
	[domicilioActual] [varchar](150) NULL,
	[telefonoEmergencia] [varchar](50) NULL,
	[parentesco1] [varchar](60) NULL,
	[parentesco2] [varchar](60) NULL,
	[parentesco3] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTRIAJEEmergencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRIAJEEmergenciaDolorN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRIAJEEmergenciaDolorN](
	[idTRIAJEEmergenciaDol] [int] IDENTITY(1,1) NOT NULL,
	[idTRIAJEEmergencia] [int] NULL,
	[adulto_Dolor] [int] NULL,
	[adulto_ValorEscala] [int] NULL,
	[adulto_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTRIAJEEmergenciaDol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRIAJEEmergenciaGinecoObsN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRIAJEEmergenciaGinecoObsN](
	[idTRIAJEEmergenciaGiO] [int] IDENTITY(1,1) NOT NULL,
	[idTRIAJEEmergencia] [int] NULL,
	[gineco_APN] [int] NULL,
	[gineco_AU] [int] NULL,
	[gineco_LCF] [varchar](50) NULL,
	[gineco_tieneControl] [int] NULL,
	[gineco_IdEstablecimiento] [int] NULL,
	[gineco_eje] [varchar](15) NULL,
	[gineco_g] [int] NULL,
	[gineco_p] [int] NULL,
	[gineco_claveObstetrico] [int] NULL,
	[gineco_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTRIAJEEmergenciaGiO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRIAJEEmergenciaN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRIAJEEmergenciaN](
	[idTRIAJEEmergencia] [int] NOT NULL,
	[idTipoTriaje] [int] NULL,
	[idPaciente] [int] NULL,
	[referido] [int] NULL,
	[IdEstablecimiento] [int] NULL,
	[alergia] [text] NULL,
	[TriajePeso] [decimal](7, 2) NULL,
	[TriajeTalla] [int] NULL,
	[TriajePresionArterial] [int] NULL,
	[TriajeSistolica] [int] NULL,
	[TriajeFrecCardiaca] [int] NULL,
	[TriajeFrecRespiratoria] [int] NULL,
	[TriajeTemperatura] [varchar](50) NULL,
	[TriajeSaturacion] [int] NULL,
	[TriajePulso] [int] NULL,
	[IMC] [decimal](7, 2) NULL,
	[MotivoConsulta] [text] NULL,
	[ProblemasDiagnoistico] [text] NULL,
	[PrioridadAtencion] [int] NULL,
	[idServicio] [varchar](120) NULL,
	[fechaRegistro] [datetime] NULL,
	[idEmpleado] [int] NULL,
	[violencia_genero] [int] NULL,
	[estado] [int] NULL,
	[Observacion] [text] NULL,
	[IdCuentaAtencion] [int] NULL,
	[edad] [int] NULL,
	[idTipoEdad] [int] NULL,
	[idMedico] [int] NULL,
	[idServicioA] [int] NULL,
	[EsAccidente] [int] NULL,
	[IdAseguradoras] [int] NULL,
	[codigos] [varchar](45) NULL,
	[BuscoPorTriaje] [int] NULL,
	[codigoTriaje] [varchar](16) NULL,
	[esDiferenciado] [int] NULL,
 CONSTRAINT [PK__TRIAJEEm__AC52E8982CF277E6] PRIMARY KEY CLUSTERED 
(
	[idTRIAJEEmergencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRIAJEEmergenciaPediatricoN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRIAJEEmergenciaPediatricoN](
	[idTRIAJEEmergenciaPed] [int] IDENTITY(1,1) NOT NULL,
	[idTRIAJEEmergencia] [int] NULL,
	[pediatrico_nomnreApellido] [varchar](150) NULL,
	[pediatrico_Parentesto] [varchar](100) NULL,
	[pediatrico_NroDocumento] [varchar](10) NULL,
	[pediatrico_antecedentes] [text] NULL,
	[pediatrico_respOcular] [int] NULL,
	[pediatrico_respVerval] [int] NULL,
	[pediatrico_respMotora] [int] NULL,
	[pediatrico_respPuntos] [int] NULL,
	[pediatrico_estado] [int] NULL,
	[pediatrico_escalaDolor] [int] NULL,
	[pediatrico_Dolor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTRIAJEEmergenciaPed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRIAJEEmergenciaViolenciaGeneroN]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRIAJEEmergenciaViolenciaGeneroN](
	[idTRIAJEEmergenciaVG] [int] IDENTITY(1,1) NOT NULL,
	[idTRIAJEEmergencia] [int] NULL,
	[violencia_tamizajeVIH] [int] NULL,
	[violencia_tamizajeSifilis] [int] NULL,
	[violencia_entregaAOE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTRIAJEEmergenciaVG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriajeEmergenciaViolenciaGeneroObservacion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriajeEmergenciaViolenciaGeneroObservacion](
	[IdTriaje] [int] NULL,
	[Observacion] [varchar](5000) NULL,
	[IdUsuarioRegistro] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[Violencia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriajeLlamadoPaciente]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriajeLlamadoPaciente](
	[idLlamado] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NULL,
	[idServicio] [int] NULL,
	[idCuentaAtencion] [int] NULL,
	[nroLlamado] [int] NULL,
	[fechaRegistro] [datetime] NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLlamado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriajeRegistroTiempos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriajeRegistroTiempos](
	[IdCuentaAtencion] [int] NULL,
	[IdUsuario] [int] NULL,
	[Pc] [varchar](30) NULL,
	[Fecha] [datetime] NULL,
	[Observacion] [varchar](200) NULL,
	[IdEstado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[idTurno] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY CLUSTERED 
(
	[idTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoE]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoE](
	[idturno] [int] NULL,
	[idturnoE] [int] NULL,
	[Turno] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[IdTurno] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[HoraInicio] [char](5) NOT NULL,
	[HoraFin] [char](5) NOT NULL,
	[IdTipoServicio] [int] NULL,
	[IdEspecialidad] [int] NULL,
	[IdTipoTurnoRef] [int] NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [Turnos_PK] PRIMARY KEY CLUSTERED 
(
	[IdTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCIHCAnalitica]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCIHCAnalitica](
	[IdAnalitica] [int] IDENTITY(1,1) NOT NULL,
	[Idhcuci] [int] NULL,
	[PH] [varchar](10) NULL,
	[PO2] [varchar](10) NULL,
	[PCO2] [varchar](10) NULL,
	[HCO3] [varchar](10) NULL,
	[Base] [varchar](10) NULL,
	[Lactato] [varchar](10) NULL,
	[NA] [varchar](50) NULL,
	[K] [varchar](50) NULL,
	[CL] [varchar](50) NULL,
	[CA] [varchar](50) NULL,
	[MG] [varchar](50) NULL,
	[P] [varchar](50) NULL,
	[Hemoglobina] [varchar](10) NULL,
	[Hematocrito] [varchar](10) NULL,
	[Plaquetas] [varchar](10) NULL,
	[Leucositos] [varchar](10) NULL,
	[Segmentados] [varchar](10) NULL,
	[Linfositos] [varchar](10) NULL,
	[Creatinina] [varchar](50) NOT NULL,
	[Urea] [varchar](50) NULL,
	[Glucosa] [varchar](50) NULL,
	[OtrosPerfiles] [varchar](5000) NULL,
	[Apache] [int] NULL,
	[Sofa] [int] NULL,
	[IdPrioridad] [int] NULL,
	[PlanTrabajo] [varchar](8000) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCIHCExamenFisico]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCIHCExamenFisico](
	[IdExamenFisico] [int] IDENTITY(1,1) NOT NULL,
	[Idhcuci] [int] NULL,
	[FC] [varchar](10) NULL,
	[FR] [varchar](10) NULL,
	[PA1] [varchar](10) NULL,
	[PA2] [varchar](10) NULL,
	[T] [varchar](10) NULL,
	[SATO2] [varchar](10) NULL,
	[Noradrenalina] [int] NULL,
	[Dopamina] [int] NULL,
	[Adrenalina] [int] NULL,
	[Dobutamina] [int] NULL,
	[Amiodarona] [int] NULL,
	[Midazonal] [int] NULL,
	[Fentanilo] [int] NULL,
	[OtrosMedicamentos] [varchar](5000) NULL,
	[tet] [int] NULL,
	[cvc] [int] NULL,
	[LineaArterial] [int] NULL,
	[Sng] [int] NULL,
	[sf] [int] NULL,
	[OtrosDispositivos] [varchar](500) NULL,
	[EstadoConciencia] [varchar](500) NULL,
	[RassEcg] [varchar](50) NULL,
	[Pupilas] [varchar](500) NULL,
	[Fuerzamuscular] [varchar](500) NULL,
	[Reflejos] [varchar](500) NULL,
	[ExamenRespiratorio] [varchar](5000) NULL,
	[ParametrosVentilatorios] [varchar](5000) NULL,
	[RxToraxTem] [varchar](500) NULL,
	[ExamenCardiovascular] [varchar](500) NULL,
	[Ekg] [varchar](50) NULL,
	[Vasopresores] [varchar](50) NULL,
	[ExamenGastrointestinal] [varchar](5000) NULL,
	[ExamenGenturiano] [varchar](5000) NULL,
	[Diuresis] [varchar](500) NULL,
	[BHE] [varchar](50) NULL,
	[MedioInterno] [varchar](500) NULL,
	[PielFaneras] [varchar](500) NULL,
	[IdEstado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCIHCSofaApache]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCIHCSofaApache](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Idhcuci] [int] NULL,
	[SRepiracion] [varchar](5) NULL,
	[SCoagulacion] [varchar](5) NULL,
	[SHigado] [varchar](5) NULL,
	[SCardiovascular] [varchar](5) NULL,
	[SGlasgow] [varchar](5) NULL,
	[SRenal] [varchar](5) NULL,
	[ATemperatura] [varchar](5) NULL,
	[APAM] [varchar](5) NULL,
	[AFC] [varchar](5) NULL,
	[AFR] [varchar](5) NULL,
	[APAO2] [varchar](5) NULL,
	[APH] [varchar](5) NULL,
	[ANA] [varchar](5) NULL,
	[AK] [varchar](5) NULL,
	[ACreatitina] [varchar](5) NULL,
	[AHematocrito] [varchar](5) NULL,
	[Aleucocitos] [varchar](5) NULL,
	[AGlasgow] [varchar](5) NULL,
	[AEdad] [varchar](5) NULL,
	[ACronica] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCIHistoriaClinica]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCIHistoriaClinica](
	[Idhcuci] [int] IDENTITY(1,1) NOT NULL,
	[IdCuentaAtencion] [int] NULL,
	[IdEmpleado] [int] NULL,
	[IdMedico] [int] NULL,
	[IdEstanciaHospitalaria] [int] NULL,
	[Anamnesis] [varchar](50) NULL,
	[MedicacionHabitual] [varchar](5000) NULL,
	[zmh] [int] NULL,
	[CirugiasPrevias] [varchar](5000) NULL,
	[zcp] [int] NULL,
	[HospitalizacionesPrevias] [varchar](5000) NULL,
	[zhp] [int] NULL,
	[comorbilidad] [int] NULL,
	[hta] [int] NULL,
	[dm] [int] NULL,
	[erc] [int] NULL,
	[tbc] [int] NULL,
	[asma] [int] NULL,
	[epoc] [int] NULL,
	[vih] [int] NULL,
	[icc] [int] NULL,
	[aritmias] [int] NULL,
	[otrosComorbilidades] [varchar](500) NULL,
	[AGFUM] [date] NULL,
	[AGMenarquia] [varchar](50) NULL,
	[ReaccionAlergica] [varchar](5000) NULL,
	[HNAlcohol] [varchar](500) NULL,
	[HNTabaco] [varchar](500) NULL,
	[HNDrogas] [varchar](500) NULL,
	[HNOtrosHabitos] [varchar](500) NULL,
	[TiempoEnfermedad] [varchar](50) NULL,
	[TiempoEnfermedad2] [int] NULL,
	[TiempoEnfermedad3] [int] NULL,
	[FormaInicio] [varchar](50) NULL,
	[Curso] [varchar](50) NULL,
	[Signos] [varchar](500) NULL,
	[EstadoBasal] [varchar](500) NULL,
	[RelatoCompleto] [varchar](8000) NULL,
	[Reanimacion] [varchar](500) NULL,
	[ColocacionCVC] [varchar](500) NULL,
	[IntubacionOrotraquial] [varchar](500) NULL,
	[ColocacionSonda] [varchar](500) NULL,
	[Inotropicos] [varchar](500) NULL,
	[DetalleProc] [varchar](5000) NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [int] NULL,
	[FechaModificacion] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPServicios]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPServicios](
	[IdUPS] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [bit] NOT NULL,
	[UPShis] [varchar](6) NULL,
 CONSTRAINT [PK_UPServicios] PRIMARY KEY CLUSTERED 
(
	[IdUPS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPSRenaes]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPSRenaes](
	[IdUps] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UPS] [nchar](6) NULL,
	[Descripcion] [varchar](255) NULL,
	[IdEstado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPSTRAMA]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPSTRAMA](
	[IdServicio] [int] NULL,
	[codigoServicioHIS] [varchar](6) NULL,
	[IdEspecialidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_region]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_region](
	[id_usuario_region] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](20) NOT NULL,
	[numero_documento] [varchar](10) NOT NULL,
	[tipo_documento] [varchar](2) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[zip_password] [varchar](20) NOT NULL,
	[codigo_renipress] [varchar](8) NOT NULL,
	[id_region] [int] NULL,
 CONSTRAINT [usuario_region_PK] PRIMARY KEY CLUSTERED 
(
	[id_usuario_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosCapacitados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosCapacitados](
	[IdUsuario] [int] NULL,
	[NombrePC] [varchar](50) NULL,
	[FechaCapacitacion] [date] NULL,
	[Estado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosRoles]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosRoles](
	[IdUsuarioRol] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IdRol] [int] NULL,
	[IdEmpleado] [int] NULL,
 CONSTRAINT [SeguridadUsuariosGrupos_PK] PRIMARY KEY CLUSTERED 
(
	[IdUsuarioRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UtilitariosCargaMasivaComprobantesSoat]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UtilitariosCargaMasivaComprobantesSoat](
	[IdCuentaAtencion] [int] NULL,
	[IdAseguradora] [int] NULL,
	[TipoComprobante] [int] NULL,
	[NroSerieMed] [varchar](4) NULL,
	[NroDocumentoMed] [varchar](8) NULL,
	[MontoMed] [numeric](10, 2) NULL,
	[NroSeriePro] [varchar](4) NULL,
	[NroDocumentoPro] [varchar](8) NULL,
	[MontoPro] [numeric](10, 2) NULL,
	[Observacion] [varchar](200) NULL,
	[FechaPago] [date] NULL,
	[IdEmpleado] [int] NULL,
	[Estado] [int] NULL,
	[FechaProceso] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValorUIT]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValorUIT](
	[Unidad] [varchar](3) NOT NULL,
	[Valor] [money] NULL,
	[valorSoat] [money] NULL,
	[Fecha] [date] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_ValorUIT] PRIMARY KEY CLUSTERED 
(
	[Unidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[versionesPC]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[versionesPC](
	[NombrePC] [varchar](15) NULL,
	[VersionPC] [varchar](10) NULL,
	[Estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViasNutricion]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViasNutricion](
	[IdViaNutricion] [int] NULL,
	[Descripcion] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebHisminsa]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebHisminsa](
	[idWebHisminsa] [int] NOT NULL,
	[p_nrodocumento] [varchar](15) NULL,
	[p_apematerno] [varchar](50) NULL,
	[p_idflag] [varchar](2) NULL,
	[p_nombres] [varchar](50) NULL,
	[p_nrohistoriaclinica] [varchar](20) NULL,
	[p_idtipodoc] [varchar](2) NULL,
	[p_apepaterno] [varchar](50) NULL,
	[p_idetnia] [varchar](4) NULL,
	[p_fechanacimiento] [varchar](10) NULL,
	[p_idestablecimiento] [varchar](10) NULL,
	[p_idpais] [varchar](3) NULL,
	[p_idsexo] [varchar](2) NULL,
	[pa_nrodocumento] [varchar](14) NULL,
	[pa_apematerno] [varchar](50) NULL,
	[pa_idpais] [varchar](3) NULL,
	[pa_idprofesion] [varchar](4) NULL,
	[pa_fechanacimiento] [varchar](10) NULL,
	[pa_nombres] [varchar](50) NULL,
	[pa_idtipodoc] [varchar](2) NULL,
	[pa_apepaterno] [varchar](50) NULL,
	[pa_idsexo] [varchar](2) NULL,
	[pa_idcondicion] [varchar](2) NULL,
	[pr_nrodocumento] [varchar](14) NULL,
	[pr_apematerno] [varchar](50) NULL,
	[pr_idpais] [varchar](3) NULL,
	[pr_idprofesion] [varchar](4) NULL,
	[pr_fechanacimiento] [varchar](10) NULL,
	[pr_nombres] [varchar](50) NULL,
	[pr_idtipodoc] [varchar](2) NULL,
	[pr_apepaterno] [varchar](50) NULL,
	[pr_idsexo] [varchar](2) NULL,
	[idcondicion] [varchar](2) NULL,
	[numeroafiliacion] [varchar](50) NULL,
	[fechaatencion] [varchar](10) NULL,
	[estadoregistro] [varchar](2) NULL,
	[idups] [varchar](10) NULL,
	[idestablecimiento] [varchar](10) NULL,
	[diaedad] [varchar](10) NULL,
	[edadregistro] [varchar](10) NULL,
	[idturno] [varchar](2) NULL,
	[idtipedadregistro] [varchar](10) NULL,
	[fgdiag] [varchar](2) NULL,
	[mesedad] [varchar](2) NULL,
	[componente] [varchar](10) NULL,
	[idfinanciador] [varchar](2) NULL,
	[annioedad] [varchar](4) NULL,
	[peso] [varchar](10) NULL,
	[talla] [varchar](10) NULL,
	[hemoglobina] [varchar](10) NULL,
	[fechaRegistro] [datetime] NULL,
	[idAtencion] [int] NULL,
	[rspt_estado] [varchar](3) NULL,
	[rspt_descripcion] [varchar](500) NULL,
	[rspt_idCita] [varchar](20) NULL,
	[detalleDaignostico] [varchar](5000) NULL,
	[detalleDiagnostico] [varchar](5000) NULL,
	[tipodato] [varchar](13) NULL,
	[fur] [date] NULL,
	[percefalico] [decimal](18, 2) NULL,
	[perabdominal] [decimal](18, 2) NULL,
	[pesogestacional] [decimal](18, 2) NULL,
	[error_devuelto] [varchar](150) NULL,
	[tiposerv] [int] NULL,
	[idmaterno] [varchar](1) NULL,
	[idcondespe] [varchar](1) NULL,
	[idcondeess] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idWebHisminsa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WEBSERVICEMINSAEnviados]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WEBSERVICEMINSAEnviados](
	[IdWebServiceEnviado] [int] IDENTITY(1,1) NOT NULL,
	[fechaEnvio] [date] NULL,
	[horaEnvio] [time](7) NULL,
	[id_referencia] [varchar](35) NULL,
	[id_cita] [varchar](35) NULL,
	[tipo] [varchar](35) NULL,
	[ipress_id] [varchar](35) NULL,
	[diresa_id] [varchar](35) NULL,
	[red_id] [varchar](35) NULL,
	[microred_id] [varchar](35) NULL,
	[seguro_sis] [varchar](35) NULL,
	[tipo_documento] [varchar](35) NULL,
	[numero_documento] [varchar](35) NULL,
	[prenombres] [varchar](35) NULL,
	[apellido_paterno] [varchar](35) NULL,
	[apellido_materno] [varchar](35) NULL,
	[departamento_id] [varchar](35) NULL,
	[provincia_id] [varchar](35) NULL,
	[distrito_id] [varchar](35) NULL,
	[fecha_inicio] [varchar](35) NULL,
	[fecha_fin] [varchar](35) NULL,
	[token] [varchar](150) NULL,
	[codigo_respuesta] [varchar](35) NULL,
	[id_respuesta] [varchar](35) NULL,
	[mensaje] [varchar](100) NULL,
	[tipoRegistro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdWebServiceEnviado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x_total]    Script Date: 04/01/2024 05:43:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x_total](
	[IdCuentaAtencion] [int] NOT NULL,
	[paciente] [varchar](203) NULL,
	[documento] [varchar](12) NULL,
	[total_deuda] [decimal](10, 2) NULL,
	[saldo] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
