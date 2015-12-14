USE [master]
GO
/****** Object:  Database [Inventario]    Script Date: 07/10/2015 10:20:41 p.m. ******/
CREATE DATABASE [Inventario]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inventario', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DESARROLLO\MSSQL\DATA\Inventario.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Inventario_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DESARROLLO\MSSQL\DATA\Inventario_log.ldf' , SIZE = 10176KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Inventario] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inventario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inventario] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inventario] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inventario] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inventario] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inventario] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inventario] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inventario] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inventario] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inventario] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inventario] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inventario] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inventario] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inventario] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inventario] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inventario] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Inventario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inventario] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inventario] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inventario] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inventario] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inventario] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inventario] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inventario] SET RECOVERY FULL 
GO
ALTER DATABASE [Inventario] SET  MULTI_USER 
GO
ALTER DATABASE [Inventario] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inventario] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inventario] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inventario] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Inventario] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Inventario]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Capsulas]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Capsulas](
	[IdCapsula] [varchar](8) NOT NULL,
	[Descripcion] [varchar](40) NULL CONSTRAINT [DF_Capsulas_Descripcion]  DEFAULT (''),
	[IdUsuario] [varchar](100) NOT NULL,
	[ItemID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Capsulas] PRIMARY KEY CLUSTERED 
(
	[IdCapsula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapsulasItems]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapsulasItems](
	[IdCapsula] [varchar](8) NOT NULL,
	[ItemID] [varchar](10) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_CapsulasItems_1] PRIMARY KEY CLUSTERED 
(
	[IdCapsula] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Imagenes]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imagenes](
	[IdImagen] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [image] NOT NULL,
 CONSTRAINT [PK_Imagenes] PRIMARY KEY CLUSTERED 
(
	[IdImagen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventarios]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventarios](
	[IdInventario] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [varchar](100) NOT NULL,
	[ItemID] [varchar](10) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[IdInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reproducciones]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reproducciones](
	[IdReproduccion] [int] IDENTITY(1,1) NOT NULL,
	[IdCapsula] [varchar](8) NOT NULL,
	[IdUsuario] [varchar](100) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Reproducciones] PRIMARY KEY CLUSTERED 
(
	[IdReproduccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReproduccionesItems]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReproduccionesItems](
	[IdReproduccion] [int] NOT NULL,
	[ItemID] [varchar](10) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ReproduccionesItems_1] PRIMARY KEY CLUSTERED 
(
	[IdReproduccion] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempItems]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempItems](
	[ItemID_old] [varchar](10) NOT NULL,
	[ItemID] [varchar](10) NOT NULL CONSTRAINT [DF_TempItems_ItemID]  DEFAULT (''),
 CONSTRAINT [PK_TempItems] PRIMARY KEY CLUSTERED 
(
	[ItemID_old] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[ReproduccionesEstadisticas]    Script Date: 07/10/2015 10:20:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ReproduccionesEstadisticas]
AS
SELECT 
	R.IdUsuario
	,R.IdCapsula
	,CONVERT(decimal(11,0),COUNT(R.IdReproduccion)) CantidadReproducciones
	,MIN(R.Fecha) FechaPrimeraReproduccion
	,MAX(R.Fecha) FechaUltimaReproduccion
	,CONVERT(int,MAX(R.Fecha)-MIN(R.Fecha)) DiasEntrePrimeraUltimaReproduccion
	,COUNT(DISTINCT RI.ItemID) ItemsDistintos
	,CASE WHEN COUNT(DISTINCT RI.ItemID)=1 THEN MIN(RI.ItemID) ELSE '('+CONVERT(varchar,COUNT(DISTINCT RI.ItemID))+' items)' END ItemReproducido
	,CONVERT(decimal(11,0),SUM(RI.Cantidad)) CantidadItemsTotal
	,CASE WHEN MIN(C.IdCapsula) IS NULL THEN CONVERT(bit,0) ELSE CONVERT(bit,1) END IsOwner
    ,FORMAT((CONVERT(decimal(11,0),SUM(RI.Cantidad))/CONVERT(decimal(11,0),COUNT(R.IdReproduccion)))-1, 'p') PorcentajeReproduccion
	,FORMAT(CONVERT(decimal(11,0),SUM(RI.Cantidad))/CONVERT(int,MAX(R.Fecha)-MIN(R.Fecha)),'N') ItemsXDia
FROM [dbo].[Reproducciones] R
	INNER JOIN ReproduccionesItems RI ON
		R.IdReproduccion=RI.IdReproduccion
    LEFT JOIN Capsulas C ON
	    R.IdCapsula=C.IdCapsula
		AND R.IdUsuario=C.IdUsuario
GROUP BY
	R.[IdCapsula]
	,R.IdUsuario



GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201509100139100_InitialCreate', N'MiInventario2.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CD919CC1AED044EDBCE1A3BBE60DA13E46DC096D86D62244A9128C7C6225F96877C527E618B1275E345976EB9BB1D0408A6C5E2A962F1902C9245FFF9FB1FD3EF9F03DF7AC27142427A661F4D0E6D0B5337F4085D9DD9295B7EFBC1FEFEBBBFFF6D7AE905CFD64F85DC0997839A3439B31F198B4E1D27711F7180924940DC384CC2259BB861E0202F748E0F0FFFED1C1D3918206CC0B2ACE9A7943212E0EC07FC9C85D4C5114B917F137AD84FC477289967A8D62D0A701221179FD937E49A3E61CA504CC2E3492E6F5BE73E4160CB1CFB4BDB4294860C31B0F4F47382E72C0EE96A1EC107E43FBC4418E496C84FB068C16925DEB73187C7BC314E55B18072D38485C140C0A313E11D47AEBE968FEDD27BE0BF4BF0337BE1ADCE7C78665F7B38FBF429F4C101B2C2D3991F7361EEE642C57912DD6236292A4E72C8AB18E07E0DE3AF933AE281D5BBDE41C9A6E3C921FFEFC09AA53E4B637C4671CA62E41F58F7E9C227EE7FF1CB43F815D3B393A3C5F2E4C3BBF7C83B79FF2F7CF2AEDE52682BC8353EC0A7FB388C700CB6E165D97EDB729AF51CB96259AD5627F70A700906866DDDA0E78F98AED8230C99E30FB675459EB1577C11E4FA4C098C23A8C4E2147EDEA6BE8F163E2ECB9D569DFCFF2D5A8FDFBD1F45EB2D7A22ABACEB25FD30706218579FB09F95268F24CA8757A3BFBF08B1AB380CF8EF26BFF2D22FF3308D5DDE98D028F280E215664DEBA64E45DE5E94E650E3D3BA40DD7F6A734B557A6B457983D61909858A6D8F86C2DED7D5DB9B71E751049D97518B7BA49D70EA723591EA736AD5A42AFA1CF5A50F8566FD9567C3CB00117F84E9B08716884596240E70D9CA1F42201FA2836DBE474902B381F71F943CB6980EFF1CC1F43976D318483A6728885E5DDBFD6348F16D1A2C38F7B7A76BB4AE79F835BC422E0BE34BCA6B6D8CF73174BF8629BBA4DE0562F833730B40FEF38104FD014631E7DC7571925C0199B1370B21D42E00AF293B391E0CC7A7A85D8723331F91401F8F4893E99742B48A49F4124A5C6210D3C5266DA67E0C5784F633B510359B9A4B749A2AC4869ACAC1FA592A24CD8666029D76E652A3457B590F8D1FEE65B0FB1FEF6DB6789BE6829A1BE73043E21F31C5314C63DE3D620CC7B4EA813EF3C62E8285ACFBB8D2575F9B324D3F213F1D5BD55AA3219B04C61F0D19ECFE8F86CC4CF8FC443C1E95F4D80415C200DF4B5EBFBFEA1E739265DB1E0E8D666E5BF976E600D370394F92D025D928D01C7F89C38BA6FD10C359DD2719796BE4D3106818109DF0250FBE40DB6C995477F402FB9861EBDCCD8F0767287191A7BA111AE40D30AC5851358655A7224DE3FEA9E804A6E39857427C1394C0482594A9C382509744C8EFF49254B3E712C6DB5EEA904B2E70842957D8E9893ECAF58720DC80528FD4295D1E9A3A35C6B513D110B59AFABC2B84ADFA5D399BD80A273B6267032F45FCF62AC46CF7D816C8D9EE923E06180FF4764150B157E94B0079E3B26F0495764C06828A906A2B046D7A6C07046DBAE4CD1134DFA2F6ED7F69BFBA6FF46C6E94B7BFACB7BA6B07DC6CF863CFA899C79E5087410D1CABF4BC58F042FCCC349B33B053ECCF1211EACA14E1E073CC9A473655BCAB8D439D761099446D8015D13A40C555A002A40CA801C6156779ADD6892862006C71EED60A2BE67E09B6C60115BB7E255A13345F9CCAE4ECB5FB285B56B2412179AFCD420D47430879F26A36BC87534CE7B2AA63FAC4C243A2E15AC34467B438A823723538A968CCE85E2AA8D9ED255D40362424DBC84B52F864F052D198D1BD2438DAED244D5030202CD8C845CD257CA4C1569C7494AB4D593675F25C29F161EA1892AAA637288A085DD592ACC4176B9E6758CDBE9D0F4F3C0A720CC74D34F947A5B5A52616C66885A552500D965E9138611788A105E2E73C332F50C4B46BAB61FA2F54D6974FB5138B75A090E6FFCE6B682FF01BABAD1A8E08942B6863C0639AEC205DC3007D758BA7BD211FC59AB3FB59E8A701358758E6DAF90D5EBD7EFE4545983A92FD4A08A5F84B09749BCEEFD535EAB018AD9BCA1866FDAE3243981C5E44A075979BA252334A71485547311D5CEDACEB4CC1CCC0EE9223C5E1BDD589F03A634BA4A7D401C4A78118B50C0705AC56D61FB5998452C76C96F44794324DEA9052D1002BEBF9240D23EB056BE1193CAA97E8AF41CD20A9A3ABA5FD9135B92475684DF11AD81A9BE5B2FEA89A74933AB0A6B83F76957B224FA37BBC7A19F72F1B2C5FF92677B3F5CB80F13A73E238CB5FED2EBF0E54FB3C104BDCD62B60E2FB5EF2C9B8D3DB804FF9E9C6667C326098679FC63D7873F269BDBC3763362EB71B137CDBE5BE196F186B5F951BCA564F1629B5975B3E696B3715DBACEE4735CABE2B17B1ADC28DB0B8BF240C07132E3099FFE2CF7C82F9545E08DC204A9638617942877D7C78742CBDCAD99F17324E9278BE669B6A7A26D3ECB32DE466D12714BB8F2856332536784552812A87D0D7D4C3CF67F6FFB25AA7D97906FF57F6F9C0BA4E3E53F24B0A050F718AADDFD4CCCF71B2EADBB75A7BFA06A2BF57AF7FFE92573DB0EE621831A7D6A1E4CB757AB8F93262903579D50DAC59FBBDC4DB1D508D87085A546940ACFFEE6041D8286F0E0A2BBF09D0F33F869AA67D57B011A2E6EDC05878A3B8D0F436601D2CE3BB000F7EB2EC5DC0B0C6EADF09AC639AF18D00A1C3C1E41702FDA7A1A2E60E971ACDAE681B5352E6E7CE0CEB8DD22D77BD362989D81B0D7435D97A00DC0609D56B30E38DE5228FB63A6A528D47C3DE25B55F3DBF785F528AAB648FDD66126F3379B8E572E82F9533BC07596E9AAC9DDD67066F9B6BA693DC3D4FAF1C96FFBB676413B95CBBCFF2DD36D94CC7BC7B4EB641B9BC7BC6B55DAD9F3B665AEF2574E799B96A9291E146467716DC95799B1F9CC30E7F110209F288327F30A94FF53229ABC86254588998959A73CC64C5CAC051F42A12ED6A87B5552CF8AD8D1532ED6A0D99996DBAC5FCDFAA5BC8B4EB36E43BEE2267589B71A8CBE3EE98C7DA52A1DE528E70A3251D29E95D316BEBF5FA5B4A091EC5298DD163B8237E3B19C0A3B864CCA13320E357BDEE85B5B3F6971661FD4EC8AA82E07F779162B7B16A9632D77419168BB7645121229DD0DC60863C5852CF634696C86550CCCF98B317DFD9B91DBFE95860EF9ADEA52C4A193419070BBF71E0C5838036FD595A73D3E6E95D94FDF192319A0066127E367F477F4889EF95765F69CE840C103CBA1027BABC2F193FD95DBD9448B721ED0924DC5706450F38887C004BEEE81C3DE1756C03FA7DC42BE4BE5427802690EE8E68BA7D7A41D02A46412230AAFAF01338EC05CFDFFD1F5304075970540000, N'6.1.0-30225')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0398af62-242a-409c-9cd9-57df1d344a9c', N'pceriani@gmail.com', 0, N'ABdEslDtWwsvtz3pV1KUr45mWGJgaAd0eCXH04BZaJMTKT+c3ySgsQdmw3tKHUZOxw==', N'de5ebaad-3eae-4a8f-95d1-f0c9f380bb78', NULL, 0, 0, NULL, 0, 0, N'pceriani@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7ff842d8-cae7-44ea-9338-7c75f454c351', N'diegomenta@gmail.com', 0, N'ADvy4PlWLZFMzJ0ttDxGYo0mF2YDjfA7QMcsPxsPQcQ8V50dpYIfljh6MVn7VRpiiA==', N'957f1110-543e-4436-add6-633b78b32b1c', NULL, 0, 0, NULL, 0, 0, N'diegomenta@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dde25035-498b-40e7-99f3-fee3aa3baddb', N'tuc4n1000@gmail.com', 0, N'AKY3n5FQdg8AV3Mk0FxVcl2CwIqRWC7krBV/+jKiMUMmm4CQgKaPCqhXDq3MfhiETw==', N'848ac476-7e6e-4e2b-a0c3-ae140c08ee55', NULL, 0, 0, NULL, 0, 0, N'tuc4n1000@gmail.com')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'08A6831F', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'0B470E1C', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'11A96AE2', N'Llaves Chacarita', N'diegomenta@gmail.com', N'CAPS_RA')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'28032D22', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'3A1826E6', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'4A392197', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'4DECAED1', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'5D183EA2', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'5D68D17A', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'99157881', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'B9A9BF69', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'BD7C0111', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'C11DDC3B', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'C12346D3', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'CAE8CE04', N'Llaves Victoria', N'pceriani@gmail.com', N'CAPS_RA')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'CBF23A5F', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'D9A4E9CB', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'E05E514D', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'FCEB97B6', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[Capsulas] ([IdCapsula], [Descripcion], [IdUsuario], [ItemID]) VALUES (N'FE1268D7', NULL, N'tuc4n1000@gmail.com', N'CAPS_MUFG')
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'08A6831F', N'XMP_8', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'0B470E1C', N'RESO_8', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'11A96AE2', N'KEY', 54)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'28032D22', N'FA_RA', 48)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'28032D22', N'TU_RA', 48)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'3A1826E6', N'XMP_8', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4A392197', N'JARVIS', 80)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4A392197', N'LA_VR', 5)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4A392197', N'MH_VR', 10)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4DECAED1', N'CUBE_8', 10)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4DECAED1', N'HS_VR', 8)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4DECAED1', N'SHIELD_VR', 40)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4DECAED1', N'US_8', 13)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'4DECAED1', N'XMP_8', 24)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'5D183EA2', N'ADA', 45)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'5D183EA2', N'JARVIS', 2)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'5D183EA2', N'LA_SB', 24)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'5D183EA2', N'SHIELD_AXA', 24)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'5D68D17A', N'SHIELD_VR', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'99157881', N'SHIELD_AXA', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'B9A9BF69', N'RESO_6', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'BD7C0111', N'XMP_8', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'C11DDC3B', N'US_8', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'C12346D3', N'CUBE_8', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'CAE8CE04', N'KEY', 25)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'CBF23A5F', N'HS_VR', 48)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'CBF23A5F', N'MH_VR', 48)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'D9A4E9CB', N'SHIELD_VR', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'E05E514D', N'US_8', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'FCEB97B6', N'SHIELD_AXA', 95)
INSERT [dbo].[CapsulasItems] ([IdCapsula], [ItemID], [Cantidad]) VALUES (N'FE1268D7', N'CUBE_8', 95)
SET IDENTITY_INSERT [dbo].[Inventarios] ON 

INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (8, N'tuc4n1000@gmail.com', N'RESO_8', 96)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (52, N'tuc4n1000@gmail.com', N'CAPS_MUFG', 18)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (53, N'tuc4n1000@gmail.com', N'CAPS_RA', 26)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2060, N'diegomenta@gmail.com', N'RESO_2', 65)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2063, N'diegomenta@gmail.com', N'RESO_5', 30)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2064, N'diegomenta@gmail.com', N'RESO_6', 108)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2065, N'diegomenta@gmail.com', N'RESO_7', 167)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2066, N'diegomenta@gmail.com', N'RESO_8', 14)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2070, N'diegomenta@gmail.com', N'XMP_8', 22)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2073, N'diegomenta@gmail.com', N'US_8', 15)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2080, N'diegomenta@gmail.com', N'HS_CO', 9)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2081, N'diegomenta@gmail.com', N'HS_RA', 20)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2082, N'diegomenta@gmail.com', N'HS_VR', 2)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2084, N'diegomenta@gmail.com', N'MH_RA', 18)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2085, N'diegomenta@gmail.com', N'MH_VR', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2089, N'diegomenta@gmail.com', N'CUBE_8', 58)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2090, N'diegomenta@gmail.com', N'KEY', 357)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2091, N'diegomenta@gmail.com', N'CAPS_RA', 5)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2093, N'pceriani@gmail.com', N'RESO_2', 65)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2096, N'pceriani@gmail.com', N'RESO_5', 30)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2097, N'pceriani@gmail.com', N'RESO_6', 109)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2098, N'pceriani@gmail.com', N'RESO_7', 168)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2102, N'pceriani@gmail.com', N'XMP_8', 22)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2107, N'pceriani@gmail.com', N'US_8', 15)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2108, N'pceriani@gmail.com', N'ADA', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2109, N'pceriani@gmail.com', N'JARVIS', 16)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2112, N'pceriani@gmail.com', N'SHIELD_VR', 19)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2115, N'pceriani@gmail.com', N'HS_CO', 8)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2116, N'pceriani@gmail.com', N'HS_RA', 20)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2117, N'pceriani@gmail.com', N'HS_VR', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2119, N'pceriani@gmail.com', N'MH_RA', 17)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2120, N'pceriani@gmail.com', N'MH_VR', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2123, N'pceriani@gmail.com', N'KEY', 617)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2124, N'pceriani@gmail.com', N'CAPS_RA', 5)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (2126, N'pceriani@gmail.com', N'CUBE_8', 57)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3133, N'diegomenta@gmail.com', N'RESO_1', 92)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3158, N'diegomenta@gmail.com', N'CUBE_7', 7)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3166, N'pceriani@gmail.com', N'MH_CO', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3169, N'diegomenta@gmail.com', N'XMP_7', 25)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3171, N'diegomenta@gmail.com', N'US_7', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3180, N'pceriani@gmail.com', N'RESO_1', 93)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3182, N'diegomenta@gmail.com', N'XMP_6', 22)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3183, N'diegomenta@gmail.com', N'LA_RA', 2)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3185, N'diegomenta@gmail.com', N'JARVIS', 16)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3186, N'diegomenta@gmail.com', N'SHIELD_VR', 18)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3191, N'pceriani@gmail.com', N'TU_RA', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3201, N'diegomenta@gmail.com', N'XMP_5', 24)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3203, N'diegomenta@gmail.com', N'US_6', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3204, N'diegomenta@gmail.com', N'ADA', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3205, N'diegomenta@gmail.com', N'TU_RA', 5)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3208, N'diegomenta@gmail.com', N'CUBE_6', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3209, N'pceriani@gmail.com', N'XMP_5', 24)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3210, N'pceriani@gmail.com', N'XMP_7', 25)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3212, N'pceriani@gmail.com', N'CUBE_7', 6)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3223, N'diegomenta@gmail.com', N'FA_RA', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3234, N'diegomenta@gmail.com', N'US_5', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3235, N'diegomenta@gmail.com', N'SHIELD_RA', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3236, N'diegomenta@gmail.com', N'SHIELD_AXA', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3237, N'pceriani@gmail.com', N'XMP_4', 6)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3238, N'pceriani@gmail.com', N'XMP_6', 21)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3239, N'pceriani@gmail.com', N'US_5', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3243, N'pceriani@gmail.com', N'LA_SB', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3244, N'pceriani@gmail.com', N'FA_RA', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3246, N'pceriani@gmail.com', N'CUBE_6', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3247, N'diegomenta@gmail.com', N'SHIELD_CO', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3248, N'pceriani@gmail.com', N'SHIELD_AXA', 5)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3249, N'pceriani@gmail.com', N'US_6', 2)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3251, N'diegomenta@gmail.com', N'RESO_3', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3252, N'diegomenta@gmail.com', N'XMP_4', 6)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3253, N'diegomenta@gmail.com', N'MH_CO', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3267, N'diegomenta@gmail.com', N'RESO_4', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3268, N'pceriani@gmail.com', N'RESO_8', 14)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3269, N'pceriani@gmail.com', N'RESO_4', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3270, N'pceriani@gmail.com', N'US_7', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3271, N'pceriani@gmail.com', N'SHIELD_CO', 2)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3272, N'pceriani@gmail.com', N'SHIELD_RA', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3273, N'pceriani@gmail.com', N'LA_RA', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (3275, N'tuc4n1000@gmail.com', N'RESO_6', 102)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4210, N'tuc4n1000@gmail.com', N'HS_VR', 0)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4211, N'tuc4n1000@gmail.com', N'XMP_8', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4212, N'tuc4n1000@gmail.com', N'FA_RA', 4)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4213, N'tuc4n1000@gmail.com', N'TU_RA', 3)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4215, N'tuc4n1000@gmail.com', N'LA_VR', 0)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4216, N'tuc4n1000@gmail.com', N'MH_VR', 0)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4217, N'tuc4n1000@gmail.com', N'US_8', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4218, N'tuc4n1000@gmail.com', N'CUBE_8', 1)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4220, N'tuc4n1000@gmail.com', N'SHIELD_VR', 0)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4221, N'tuc4n1000@gmail.com', N'ADA', 0)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4222, N'tuc4n1000@gmail.com', N'JARVIS', 0)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4223, N'tuc4n1000@gmail.com', N'SHIELD_AXA', 0)
INSERT [dbo].[Inventarios] ([IdInventario], [IdUsuario], [ItemID], [Cantidad]) VALUES (4224, N'tuc4n1000@gmail.com', N'LA_SB', 0)
SET IDENTITY_INSERT [dbo].[Inventarios] OFF
SET IDENTITY_INSERT [dbo].[Reproducciones] ON 

INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-07-23 18:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (4, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-07-27 22:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (5, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (6, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-07-29 20:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (9, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-07-30 12:17:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (10, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-07-24 16:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (11, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-07-25 17:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (12, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (13, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (14, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-07-29 20:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (15, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-07-31 10:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (16, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-07-24 16:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (17, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-07-25 17:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (18, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (20, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-07-23 18:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (21, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-07-25 17:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (22, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-07-30 12:17:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (23, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-07-24 16:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (24, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (25, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-07-27 22:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (26, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (27, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-07-31 10:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (28, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-07-23 18:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (29, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-07-24 16:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (30, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-07-25 17:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (31, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (32, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-07-27 22:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (33, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (34, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-07-24 16:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (35, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (36, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-07-27 22:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (37, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (38, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-07-30 12:17:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (39, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-07-23 18:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (40, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-07-24 16:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (41, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-07-25 17:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (42, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (43, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-07-29 20:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (44, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-07-30 12:17:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (45, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-07-31 10:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (46, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-07-25 17:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (47, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-07-27 22:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (48, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (49, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-07-29 20:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (50, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-07-30 12:17:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (51, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-07-23 18:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (52, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-07-25 17:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (53, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (54, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-07-27 22:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (55, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-07-28 23:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (56, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-07-30 12:17:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (57, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-07-31 10:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (58, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-07-23 18:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (59, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-07-24 16:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (60, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-07-26 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (61, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-07-29 20:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (62, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-07-30 12:17:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (63, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-07-31 10:45:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (64, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (65, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-04 08:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (66, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-05 14:35:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (67, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (68, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (69, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-04 08:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (70, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (71, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (72, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 15:36:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (73, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-09 19:48:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (74, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-03 23:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (75, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (76, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 15:36:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (77, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (78, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (79, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-03 23:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (80, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (81, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (82, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-01 20:16:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (83, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (84, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-04 08:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (85, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (86, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (87, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 15:36:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (88, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (89, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-09 19:48:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (90, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-01 20:16:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (91, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (92, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-03 23:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (93, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (94, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (95, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 15:36:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (96, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-09 19:48:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (97, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-01 20:16:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (98, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (99, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-03 23:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (100, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-04 08:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (101, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (102, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (103, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 15:36:00.000' AS DateTime))
GO
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (104, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (105, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-04 08:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (106, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (107, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (108, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 15:36:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (109, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (110, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-09 19:48:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (111, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-01 20:16:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (112, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (113, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-03 23:24:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (114, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (115, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-07 08:42:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (116, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 15:36:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (117, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-01 20:16:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (118, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-02 14:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (119, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-06 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (120, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-08 23:00:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (121, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-11 00:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (122, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-12 02:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (123, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-13 23:50:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (124, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-14 19:26:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (125, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (126, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-18 13:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (127, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-19 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (128, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-21 12:41:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (129, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-22 15:58:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (130, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-23 18:38:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (131, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (132, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-27 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (133, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-28 09:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (134, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-08-29 14:37:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (135, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (136, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-14 19:26:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (137, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (138, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (139, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-18 13:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (140, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-19 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (141, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-20 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (142, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-29 14:37:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (143, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (144, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-08-31 09:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (145, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (146, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (147, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-18 13:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (148, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-19 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (149, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-22 15:58:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (150, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-23 18:38:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (151, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-26 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (152, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-28 09:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (153, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (154, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (155, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (156, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-19 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (157, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-26 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (158, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-08-27 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (159, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-11 00:19:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (160, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-11 20:18:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (161, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-13 23:50:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (162, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (163, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (164, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-18 13:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (165, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (166, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-26 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (167, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-27 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (168, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-29 14:37:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (169, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (170, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-13 23:50:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (171, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-14 19:26:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (172, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (173, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (174, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-19 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (175, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-22 15:58:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (176, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (177, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-26 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (178, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-28 09:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (179, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-29 14:37:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (180, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (181, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-08-31 09:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (182, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-11 20:18:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (183, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-12 18:55:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (184, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-13 23:50:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (185, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (186, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-18 13:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (187, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-20 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (188, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-21 12:41:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (189, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-22 15:58:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (190, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (191, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-27 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (192, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-29 14:37:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (193, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (194, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-11 20:18:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (195, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-12 18:55:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (196, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-13 23:50:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (197, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-14 19:26:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (198, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (199, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (200, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-21 12:41:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (201, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (202, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-08-31 09:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (203, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-08-31 09:02:00.000' AS DateTime))
GO
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (204, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-12 18:55:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (205, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-14 19:26:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (206, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (207, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (208, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-18 13:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (209, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-19 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (210, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-20 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (211, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-21 12:41:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (212, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-23 18:38:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (213, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (214, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-26 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (215, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-29 14:37:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (216, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (217, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-11 20:18:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (218, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-13 23:50:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (219, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (220, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-18 13:05:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (221, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-22 15:58:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (222, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (223, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-26 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (224, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-27 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (225, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-28 09:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (226, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-29 14:37:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (227, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (228, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-08-31 09:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (229, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-11 20:18:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (230, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-13 23:50:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (231, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-15 17:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (232, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (233, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-19 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (234, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-21 12:41:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (235, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-22 15:58:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (236, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (237, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-26 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (238, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-28 09:56:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (239, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-30 13:51:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (240, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-08-31 09:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (241, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-14 19:26:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (242, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-17 19:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (243, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-20 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (244, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-21 12:41:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (245, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-23 18:38:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (246, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-25 19:15:02.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (247, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-27 09:20:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (248, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-08-31 09:02:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (249, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 20:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (250, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (251, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 20:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (252, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (253, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 20:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (254, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (255, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 20:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (256, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (257, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 20:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (258, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (259, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (260, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (261, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 07:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (262, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 20:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (263, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-01 20:12:00.000' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (264, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (265, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (266, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (267, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (268, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (269, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (270, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (271, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (272, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (273, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-02 20:53:02.973' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (274, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-03 19:22:38.963' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (275, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-03 19:22:38.963' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (276, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-03 19:22:38.963' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (277, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-03 19:22:38.963' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (278, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-03 19:22:38.963' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (279, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-03 19:22:38.963' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (280, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-03 19:22:38.963' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (281, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (282, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (283, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (284, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (285, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (286, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (287, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (288, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (289, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (290, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (291, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (292, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-04 20:13:38.303' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (293, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-05 20:14:33.523' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (294, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-05 20:14:33.523' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (295, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-05 20:14:33.523' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (296, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-05 20:14:33.523' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (297, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-05 20:14:33.523' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (298, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-05 20:14:33.523' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (299, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-05 20:14:33.523' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1064, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1065, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1066, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1067, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
GO
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1068, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1069, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1070, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1071, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1072, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1073, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1074, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-06 16:48:27.787' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1075, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1076, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1077, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1078, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1079, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1080, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1081, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1082, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1083, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1084, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1085, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1086, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1087, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-08 16:22:03.237' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1088, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1089, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1090, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1091, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1092, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1093, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1094, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1095, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1096, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1097, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-09 19:07:06.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1098, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1099, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1100, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1101, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1102, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1103, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1104, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1105, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-10 21:38:39.070' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1107, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1108, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1109, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1110, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1111, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1112, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1113, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1114, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (1115, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-11 19:25:22.997' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2106, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2107, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2108, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2109, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2110, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2111, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2112, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2113, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2114, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2115, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2116, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2117, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-12 12:50:40.790' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2118, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2119, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2120, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2121, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2122, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2123, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2124, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2125, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-13 17:26:54.813' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2126, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2127, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2128, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2129, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2130, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2131, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2132, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2133, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2134, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2135, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2136, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2137, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2138, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-14 22:02:56.580' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2139, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2140, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2141, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2142, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2143, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2144, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2145, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2146, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2147, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2148, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2149, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-15 09:12:49.403' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2150, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-16 08:50:54.297' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2151, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-16 08:50:54.297' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2152, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-16 08:50:54.297' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2153, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-16 08:50:54.297' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2154, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-16 08:50:54.297' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2155, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-16 08:50:54.297' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2156, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-16 08:50:54.297' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2157, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2158, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
GO
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2159, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2160, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2161, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2162, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2163, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2164, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-17 08:52:02.373' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2165, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2166, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2167, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2168, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2169, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2170, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2171, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2172, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2173, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2174, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2175, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2176, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2177, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-18 08:57:32.193' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2178, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2179, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2180, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2181, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2182, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2183, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2184, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2185, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2186, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2187, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-19 15:19:30.180' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2188, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2189, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2190, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2191, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2192, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2193, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2194, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2195, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2196, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2197, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-20 11:38:20.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2198, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2199, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2200, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2201, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2202, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2203, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2204, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2205, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2206, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2207, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2208, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2209, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 09:06:54.540' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2210, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2211, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2212, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2213, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2214, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2215, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2216, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2217, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2218, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2219, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2220, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-21 23:26:48.107' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2221, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-23 00:23:02.977' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2222, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-23 00:23:02.977' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2223, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-23 00:23:02.977' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2224, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-23 00:23:02.977' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2225, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-23 00:23:02.977' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2226, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-23 00:23:02.977' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2227, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-23 00:23:02.977' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2228, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2229, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2230, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2231, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2232, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2233, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2234, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2235, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2236, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2237, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2238, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2239, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2240, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2241, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-24 02:07:39.077' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2242, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2243, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2244, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2245, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2246, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2247, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2248, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2249, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2250, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2251, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2252, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2253, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-25 00:09:25.800' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2254, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2255, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2256, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2257, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2258, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
GO
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2259, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2260, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2261, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2262, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 00:08:37.277' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2263, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2264, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2265, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2266, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2267, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2268, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2269, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2270, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2271, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2272, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2273, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-26 21:39:45.187' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2274, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2275, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2276, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2277, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2278, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2279, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2280, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2281, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2282, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2283, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-27 17:52:02.247' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2284, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2285, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2286, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2287, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2288, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2289, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2290, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2291, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2292, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2293, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2294, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2295, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-28 20:05:08.133' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2296, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-29 19:57:59.603' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2297, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-09-29 19:57:59.603' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2298, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-09-29 19:57:59.603' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2299, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-29 19:57:59.603' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2300, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-09-29 19:57:59.603' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2301, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-29 19:57:59.603' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2302, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2303, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2304, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2305, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2306, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2307, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2308, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2309, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2310, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2311, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-09-30 21:50:34.453' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2312, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2313, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2314, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2315, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2316, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2317, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2318, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2319, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2320, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2321, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2322, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-10-01 22:41:05.980' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2323, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2324, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2325, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2326, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2327, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2328, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2329, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2330, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2331, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2332, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2333, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2334, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-10-02 20:49:25.613' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2335, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2336, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2337, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2338, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2339, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2340, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2341, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2342, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2343, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2344, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2345, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2346, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2347, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2348, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2349, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-10-03 16:36:41.027' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2350, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2351, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2352, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2353, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2354, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2355, N'B9A9BF69', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2356, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2357, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2358, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
GO
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2359, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2360, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2361, N'FE1268D7', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2362, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-10-04 16:04:10.877' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2363, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2364, N'0B470E1C', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2365, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2366, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2367, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2368, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2369, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2370, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2371, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2372, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2373, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (2374, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-10-05 19:17:33.733' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3242, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3243, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3244, N'3A1826E6', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3245, N'5D183EA2', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3246, N'99157881', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3247, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3248, N'C11DDC3B', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3249, N'C12346D3', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3250, N'CBF23A5F', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3251, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3252, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-10-06 22:28:49.513' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3253, N'08A6831F', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3254, N'28032D22', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3255, N'4A392197', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3256, N'4DECAED1', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3257, N'5D68D17A', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3258, N'BD7C0111', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3259, N'D9A4E9CB', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3260, N'E05E514D', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
INSERT [dbo].[Reproducciones] ([IdReproduccion], [IdCapsula], [IdUsuario], [Fecha]) VALUES (3261, N'FCEB97B6', N'tuc4n1000@gmail.com', CAST(N'2015-10-07 21:01:15.663' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reproducciones] OFF
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (4, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (5, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (6, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (6, N'MH_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (6, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (9, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (10, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (11, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (12, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (13, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (14, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (15, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (16, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (17, N'HS_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (17, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (18, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (18, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (20, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (21, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (22, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (23, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (24, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (25, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (26, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (27, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (28, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (29, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (30, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (31, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (32, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (33, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (34, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (35, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (36, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (37, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (38, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (39, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (40, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (41, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (42, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (43, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (44, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (45, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (46, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (47, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (48, N'US_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (49, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (50, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (51, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (52, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (53, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (54, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (55, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (56, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (57, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (58, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (59, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (60, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (61, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (62, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (63, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (64, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (65, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (66, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (66, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (67, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (68, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (69, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (70, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (70, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (71, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (71, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (72, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (73, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (73, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (74, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (75, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (76, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (77, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (78, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (79, N'JARVIS', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (80, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (81, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (82, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (83, N'SHIELD_VR', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (84, N'SHIELD_VR', 5)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (85, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (86, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (87, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (88, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (89, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (90, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (91, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (91, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (92, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (93, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (94, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (95, N'LA_SB', 1)
GO
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (96, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (97, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (98, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (99, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (100, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (101, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (102, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (103, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (104, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (105, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (106, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (107, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (108, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (109, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (110, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (111, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (112, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (113, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (114, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (115, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (116, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (117, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (118, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (119, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (120, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (121, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (122, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (123, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (124, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (125, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (126, N'MH_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (126, N'SHIELD_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (127, N'MH_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (128, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (129, N'SHIELD_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (130, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (131, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (131, N'HS_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (131, N'MH_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (132, N'MH_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (133, N'MH_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (134, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (135, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (136, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (137, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (137, N'TU_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (138, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (138, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (139, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (140, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (141, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (142, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (143, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (144, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (144, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (145, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (146, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (147, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (148, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (149, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (149, N'MH_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (150, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (151, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (152, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (153, N'SHIELD_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (154, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (155, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (156, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (157, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (158, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (159, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (160, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (161, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (162, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (163, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (164, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (165, N'SHIELD_VR', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (166, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (167, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (168, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (169, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (170, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (171, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (172, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (173, N'LA_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (173, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (174, N'HS_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (175, N'LA_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (175, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (176, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (176, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (177, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (178, N'MH_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (178, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (179, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (180, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (181, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (182, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (183, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (184, N'XMP_8', 1)
GO
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (185, N'XMP_8', 4)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (186, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (187, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (188, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (189, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (190, N'US_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (191, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (192, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (193, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (194, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (195, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (196, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (197, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (198, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (199, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (200, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (201, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (202, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (203, N'LA_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (204, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (205, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (206, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (207, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (208, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (208, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (209, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (210, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (211, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (212, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (213, N'SHIELD_VR', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (214, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (215, N'SHIELD_VR', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (216, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (217, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (218, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (219, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (220, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (221, N'US_8', 4)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (222, N'US_8', 5)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (223, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (224, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (225, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (226, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (227, N'US_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (228, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (229, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (230, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (231, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (232, N'SHIELD_AXA', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (233, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (234, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (235, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (236, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (237, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (238, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (239, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (240, N'SHIELD_AXA', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (241, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (242, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (243, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (244, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (245, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (246, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (247, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (248, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (249, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (250, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (251, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (252, N'ADA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (252, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (253, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (254, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (255, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (256, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (256, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (257, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (257, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (258, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (259, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (260, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (261, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (262, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (263, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (264, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (265, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (266, N'FA_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (267, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (267, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (268, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (269, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (269, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (270, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (271, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (272, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (273, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (274, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (275, N'RESO_6', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (276, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (277, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (278, N'US_8', 2)
GO
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (279, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (280, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (281, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (282, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (282, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (283, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (284, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (285, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (286, N'RESO_6', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (287, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (288, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (289, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (289, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (290, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (291, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (292, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (293, N'FA_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (294, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (295, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (296, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (297, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (298, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (299, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1064, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1065, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1066, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1067, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1068, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1069, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1070, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1071, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1072, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1073, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1074, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1075, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1076, N'RESO_6', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1077, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1078, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1078, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1079, N'SHIELD_VR', 4)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1080, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1081, N'RESO_6', 5)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1082, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1083, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1084, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1085, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1085, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1086, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1087, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1088, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1089, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1090, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1091, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1092, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1092, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1093, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1094, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1095, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1096, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1097, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1098, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1099, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1099, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1100, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1101, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1102, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1102, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1103, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1104, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1105, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1107, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1108, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1109, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1110, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1111, N'RESO_6', 4)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1112, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1113, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1114, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (1115, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2106, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2107, N'RESO_6', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2108, N'FA_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2108, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2109, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2110, N'ADA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2110, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2110, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2110, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2111, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2112, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2113, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2114, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2114, N'MH_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2115, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2116, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2117, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2118, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2119, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2120, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2121, N'RESO_6', 1)
GO
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2122, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2123, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2124, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2125, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2126, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2127, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2128, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2128, N'HS_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2129, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2130, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2131, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2132, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2133, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2134, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2135, N'SHIELD_VR', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2136, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2137, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2138, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2139, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2140, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2141, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2142, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2143, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2144, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2145, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2146, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2147, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2148, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2149, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2150, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2151, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2152, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2153, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2154, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2155, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2156, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2157, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2158, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2159, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2160, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2161, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2162, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2163, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2164, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2165, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2166, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2167, N'TU_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2168, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2169, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2169, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2170, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2171, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2172, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2173, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2174, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2175, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2176, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2177, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2178, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2179, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2180, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2181, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2182, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2183, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2184, N'US_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2185, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2186, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2187, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2188, N'RESO_6', 4)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2189, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2190, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2191, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2191, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2192, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2193, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2194, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2195, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2196, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2197, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2198, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2199, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2200, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2201, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2202, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2203, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2204, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2205, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2206, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2207, N'HS_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2208, N'SHIELD_AXA', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2209, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2210, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2211, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2212, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2213, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2214, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2215, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2216, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2217, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2218, N'SHIELD_VR', 2)
GO
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2219, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2220, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2221, N'RESO_6', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2222, N'TU_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2223, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2224, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2225, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2226, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2227, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2228, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2229, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2230, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2231, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2232, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2233, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2234, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2235, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2236, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2237, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2238, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2239, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2240, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2241, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2242, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2243, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2244, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2245, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2245, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2246, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2247, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2248, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2249, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2250, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2251, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2252, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2253, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2254, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2255, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2255, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2256, N'SHIELD_AXA', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2257, N'RESO_6', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2258, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2259, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2260, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2261, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2262, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2263, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2264, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2265, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2266, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2267, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2268, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2269, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2270, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2271, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2272, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2273, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2273, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2274, N'FA_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2275, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2276, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2276, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2277, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2278, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2279, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2280, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2281, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2282, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2283, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2284, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2285, N'RESO_6', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2286, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2287, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2288, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2288, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2289, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2289, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2290, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2291, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2292, N'RESO_6', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2293, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2294, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2295, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2296, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2297, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2298, N'RESO_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2299, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2300, N'US_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2301, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2302, N'RESO_6', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2303, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2304, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2305, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2306, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2307, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2308, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2309, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2310, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2311, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2312, N'XMP_8', 1)
GO
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2313, N'FA_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2314, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2315, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2315, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2316, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2317, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2318, N'HS_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2318, N'MH_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2319, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2320, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2321, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2322, N'CUBE_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2323, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2324, N'RESO_6', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2325, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2326, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2327, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2328, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2329, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2330, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2331, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2332, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2333, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2334, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2335, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2336, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2337, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2338, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2339, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2340, N'JARVIS', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2341, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2342, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2343, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2344, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2345, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2346, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2347, N'SHIELD_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2348, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2349, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2350, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2351, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2352, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2353, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2354, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2355, N'RESO_6', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2356, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2357, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2358, N'HS_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2359, N'US_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2360, N'SHIELD_AXA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2361, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2362, N'RESO_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2363, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2364, N'RESO_6', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2365, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2366, N'LA_SB', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2367, N'SHIELD_VR', 4)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2368, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2369, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2370, N'US_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2371, N'CUBE_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2372, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2373, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (2374, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3242, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3243, N'TU_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3244, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3245, N'ADA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3246, N'SHIELD_AXA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3247, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3248, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3249, N'CUBE_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3250, N'MH_VR', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3251, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3252, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3253, N'XMP_8', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3254, N'FA_RA', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3254, N'TU_RA', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3255, N'JARVIS', 2)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3256, N'XMP_8', 3)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3257, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3258, N'XMP_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3259, N'SHIELD_VR', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3260, N'US_8', 1)
INSERT [dbo].[ReproduccionesItems] ([IdReproduccion], [ItemID], [Cantidad]) VALUES (3261, N'SHIELD_AXA', 1)
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'1', N'RESO_1')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'10', N'XMP_2')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'11', N'XMP_3')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'12', N'XMP_4')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'13', N'XMP_5')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'14', N'XMP_6')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'15', N'XMP_7')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'16', N'XMP_8')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'17', N'US_1')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'18', N'US_2')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'19', N'US_3')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'2', N'RESO_2')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'20', N'US_4')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'21', N'US_5')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'22', N'US_6')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'23', N'US_7')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'24', N'US_8')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'25', N'ADA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'26', N'JARVIS')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'27', N'SHIELD_CO')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'28', N'SHIELD_RA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'29', N'SHIELD_VR')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'3', N'RESO_3')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'30', N'SHIELD_AXA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'31', N'LA_RA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'32', N'LA_VR')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'33', N'LA_SB')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'34', N'HS_CO')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'35', N'HS_RA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'36', N'HS_VR')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'37', N'MH_CO')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'38', N'MH_RA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'39', N'MH_VR')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'4', N'RESO_4')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'40', N'FA_RA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'41', N'TU_RA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'42', N'CUBE_1')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'43', N'CUBE_2')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'44', N'CUBE_3')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'45', N'CUBE_4')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'46', N'CUBE_5')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'47', N'CUBE_6')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'48', N'CUBE_7')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'49', N'CUBE_8')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'5', N'RESO_5')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'50', N'CAPS_MUFG')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'51', N'CAPS_RA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'52', N'MEDIA')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'53', N'KEY')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'6', N'RESO_6')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'7', N'RESO_7')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'8', N'RESO_8')
INSERT [dbo].[TempItems] ([ItemID_old], [ItemID]) VALUES (N'9', N'XMP_1')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 07/10/2015 10:20:41 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 07/10/2015 10:20:41 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 07/10/2015 10:20:41 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 07/10/2015 10:20:41 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 07/10/2015 10:20:41 p.m. ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 07/10/2015 10:20:41 p.m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CapsulasItems]  WITH CHECK ADD  CONSTRAINT [FK_CapsulasItems_Capsulas] FOREIGN KEY([IdCapsula])
REFERENCES [dbo].[Capsulas] ([IdCapsula])
GO
ALTER TABLE [dbo].[CapsulasItems] CHECK CONSTRAINT [FK_CapsulasItems_Capsulas]
GO
ALTER TABLE [dbo].[ReproduccionesItems]  WITH CHECK ADD  CONSTRAINT [FK_ReproduccionesItems_Reproducciones] FOREIGN KEY([IdReproduccion])
REFERENCES [dbo].[Reproducciones] ([IdReproduccion])
GO
ALTER TABLE [dbo].[ReproduccionesItems] CHECK CONSTRAINT [FK_ReproduccionesItems_Reproducciones]
GO
USE [master]
GO
ALTER DATABASE [Inventario] SET  READ_WRITE 
GO
