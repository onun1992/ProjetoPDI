USE [gestaoSeguranca]
GO
/****** Object:  Table [dbo].[AcessoFuncionario]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcessoFuncionario](
	[IdAcesso] [int] IDENTITY(1,1) NOT NULL,
	[numFuncionario] [int] NOT NULL,
	[horaAcesso] [varchar](9) NOT NULL,
	[dataAcesso] [varchar](12) NOT NULL,
	[tipoAcesso] [varchar](50) NOT NULL,
	[createUser] [int] NOT NULL,
	[createDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAcesso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartaoVisita]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartaoVisita](
	[idCartaoVisita] [int] IDENTITY(1,1) NOT NULL,
	[numCartao] [int] NOT NULL,
	[finalidade] [varchar](50) NOT NULL,
	[ativo] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
	[disponivel] [int] NOT NULL,
	[fabrica] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCartaoVisita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[Id] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[idEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[nomeEmpresa] [varchar](50) NOT NULL,
	[telefone] [varchar](50) NULL,
	[localidade] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[visivel] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
	[nif] [varchar](50) NULL,
	[logo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoDistribuicao]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoDistribuicao](
	[IdGrupo] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[active] [int] NOT NULL,
	[finalidade] [varchar](50) NOT NULL,
	[fabrica] [varchar](3) NOT NULL,
	[createDate] [date] NOT NULL,
	[createUser] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoradasSociedade]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoradasSociedade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[codMorada] [varchar](3) NOT NULL,
	[Morada] [varchar](250) NOT NULL,
	[codigoPostal] [varchar](50) NOT NULL,
	[localidade] [varchar](50) NOT NULL,
	[telefone] [varchar](50) NOT NULL,
	[idSociedade] [int] NOT NULL,
	[fabrica] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pesagem]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pesagem](
	[idPesagem] [int] IDENTITY(1,1) NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[idCondutor] [int] NOT NULL,
	[idViatura] [int] NOT NULL,
	[material] [varchar](50) NOT NULL,
	[origem] [varchar](50) NOT NULL,
	[destino] [varchar](50) NOT NULL,
	[tara] [varchar](50) NULL,
	[selo] [varchar](50) NULL,
	[primeiraPesagem] [varchar](50) NOT NULL,
	[horaPrimeiraPesagem] [varchar](50) NOT NULL,
	[dataPrimeiraPesagem] [date] NOT NULL,
	[segundaPesagem] [varchar](50) NULL,
	[horaSegundaPesagem] [varchar](50) NULL,
	[dataSegundaPesagem] [date] NOT NULL,
	[pesoLiquido] [varchar](50) NULL,
	[vgm] [varchar](50) NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
	[tipoMovimento] [varchar](50) NOT NULL,
	[docTransporte] [varchar](50) NULL,
	[grupoEmail] [int] NOT NULL,
	[concluida] [int] NOT NULL,
	[numContentor] [varchar](50) NULL,
	[contador] [int] NOT NULL,
	[movimento] [varchar](50) NOT NULL,
	[fabrica] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Pesagem] PRIMARY KEY CLUSTERED 
(
	[idPesagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ronda]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ronda](
	[IdRonda] [int] IDENTITY(1,1) NOT NULL,
	[horaInicio] [varchar](9) NOT NULL,
	[dataInicio] [date] NOT NULL,
	[horaFim] [varchar](9) NULL,
	[dataFim] [date] NULL,
	[observacoes] [varchar](300) NULL,
	[concluida] [int] NOT NULL,
	[createUser] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[tipoRonda] [varchar](50) NULL,
	[concluidaUser] [int] NULL,
	[fabrica] [varchar](50) NOT NULL,
	[contador] [int] NOT NULL,
	[movimento] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRonda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seguranca]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seguranca](
	[idSeguranca] [int] IDENTITY(1,1) NOT NULL,
	[numSeguranca] [int] NOT NULL,
	[nomeSeguranca] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[fabrica] [varchar](3) NOT NULL,
	[tipoUtilizador] [varchar](50) NOT NULL,
	[visivel] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
	[telefone] [int] NULL,
	[imagem] [varchar](50) NULL,
 CONSTRAINT [PK_Seguranca] PRIMARY KEY CLUSTERED 
(
	[idSeguranca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sociedade]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sociedade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nomeFiscal] [varchar](50) NOT NULL,
	[NIF] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UtilizacaoViatura]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UtilizacaoViatura](
	[IdUtilizacao] [int] IDENTITY(1,1) NOT NULL,
	[idViaturaEmpresa] [int] NOT NULL,
	[dataLevantamento] [date] NOT NULL,
	[autorizadoPor] [varchar](50) NOT NULL,
	[levantadoPor] [int] NOT NULL,
	[KmLevantamento] [int] NOT NULL,
	[tipoMovimento] [varchar](50) NOT NULL,
	[dataEntrega] [date] NULL,
	[entreguePor] [int] NULL,
	[kmEntrega] [int] NULL,
	[contador] [int] NOT NULL,
	[fabrica] [varchar](3) NOT NULL,
	[movimento] [varchar](50) NOT NULL,
	[concluida] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUtilizacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViaturaEmpresa]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViaturaEmpresa](
	[IdViatura] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[modelo] [varchar](50) NOT NULL,
	[kmIniciais] [int] NOT NULL,
	[fabrica] [varchar](3) NOT NULL,
	[utilizacao] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
	[matricula] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdViatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViaturaExterna]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViaturaExterna](
	[idCamiao] [int] IDENTITY(1,1) NOT NULL,
	[matricula] [varchar](50) NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[visivel] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
 CONSTRAINT [PK_ViaturaExterna] PRIMARY KEY CLUSTERED 
(
	[idCamiao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitaExterna]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitaExterna](
	[IdAcesso] [int] IDENTITY(1,1) NOT NULL,
	[idPessoa] [int] NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[idViatura] [int] NOT NULL,
	[tipoVisita] [varchar](50) NOT NULL,
	[cartaoAtribuido] [int] NOT NULL,
	[funcionarioResponsavel] [varchar](50) NOT NULL,
	[motivoVisita] [varchar](450) NOT NULL,
	[horaEntrada] [varchar](5) NOT NULL,
	[dataEntrada] [date] NOT NULL,
	[horaSaida] [varchar](5) NULL,
	[dataSaida] [date] NULL,
	[concluida] [int] NOT NULL,
	[departamento] [varchar](50) NOT NULL,
	[fabrica] [varchar](3) NOT NULL,
	[contador] [int] NOT NULL,
	[movimento] [varchar](50) NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAcesso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitaFrequente]    Script Date: 23/05/2019 15:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitaFrequente](
	[idVisitaFrequente] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[numCC] [varchar](50) NULL,
	[idEmpresa] [int] NULL,
	[telefone] [int] NULL,
	[email] [varchar](50) NULL,
	[localidade] [varchar](50) NULL,
	[visivel] [int] NOT NULL,
	[createData] [date] NOT NULL,
	[createUser] [int] NOT NULL,
	[imagem] [varchar](200) NULL,
	[contador] [int] NULL,
	[movimento] [varchar](50) NULL,
 CONSTRAINT [PK_VisitaFrequente] PRIMARY KEY CLUSTERED 
(
	[idVisitaFrequente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AcessoFuncionario] ON 

INSERT [dbo].[AcessoFuncionario] ([IdAcesso], [numFuncionario], [horaAcesso], [dataAcesso], [tipoAcesso], [createUser], [createDate]) VALUES (3, 52212, N'14:47', N'23/04/2019', N'Entrada', 52212, CAST(N'2019-04-23' AS Date))
INSERT [dbo].[AcessoFuncionario] ([IdAcesso], [numFuncionario], [horaAcesso], [dataAcesso], [tipoAcesso], [createUser], [createDate]) VALUES (4, 52212, N'14:49', N'23/04/2019', N'Saida', 53313, CAST(N'2019-04-23' AS Date))
INSERT [dbo].[AcessoFuncionario] ([IdAcesso], [numFuncionario], [horaAcesso], [dataAcesso], [tipoAcesso], [createUser], [createDate]) VALUES (5, 632154, N'16:21', N'30/04/2019', N'Saida', 52212, CAST(N'2019-04-30' AS Date))
INSERT [dbo].[AcessoFuncionario] ([IdAcesso], [numFuncionario], [horaAcesso], [dataAcesso], [tipoAcesso], [createUser], [createDate]) VALUES (6, 52212, N'17:23', N'30/04/2019', N'Saida', 52212, CAST(N'2019-04-30' AS Date))
INSERT [dbo].[AcessoFuncionario] ([IdAcesso], [numFuncionario], [horaAcesso], [dataAcesso], [tipoAcesso], [createUser], [createDate]) VALUES (7, 52212, N'12:39', N'14/05/2019', N'Entrada', 52212, CAST(N'2019-05-14' AS Date))
INSERT [dbo].[AcessoFuncionario] ([IdAcesso], [numFuncionario], [horaAcesso], [dataAcesso], [tipoAcesso], [createUser], [createDate]) VALUES (8, 53313, N'10:26', N'22/05/2019', N'Entrada', 52212, CAST(N'2019-05-22' AS Date))
SET IDENTITY_INSERT [dbo].[AcessoFuncionario] OFF
SET IDENTITY_INSERT [dbo].[CartaoVisita] ON 

INSERT [dbo].[CartaoVisita] ([idCartaoVisita], [numCartao], [finalidade], [ativo], [createData], [createUser], [disponivel], [fabrica]) VALUES (23, 1, N'Trabalhador Externo', 1, CAST(N'0001-01-01' AS Date), 52212, 1, N'COI')
INSERT [dbo].[CartaoVisita] ([idCartaoVisita], [numCartao], [finalidade], [ativo], [createData], [createUser], [disponivel], [fabrica]) VALUES (24, 2, N'Trabalhador Externo', 1, CAST(N'0001-01-01' AS Date), 52212, 1, N'COI')
SET IDENTITY_INSERT [dbo].[CartaoVisita] OFF
INSERT [dbo].[email] ([Id], [email], [password]) VALUES (1, N'gestaosegurancasoftware@gmail.com', N'qigtavkmcnwmbxpo')
SET IDENTITY_INSERT [dbo].[Empresa] ON 

INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (21, N'ArlindoLda', N'789456123', N'Tentugal', N'arlindo@arlindo', 0, CAST(N'2019-05-06' AS Date), 52212, N'999999999', N'nopick.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (22, N'Notheger', N'874695123', N'Holanda', N'notheger@email.com', 0, CAST(N'2019-05-07' AS Date), 52212, N'999999999', N'nopick.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (23, N'Notheger Trasnport Logistik', N'123654789', N'GMB', N'Notheger@TrasnportLogistik.com', 1, CAST(N'2019-05-08' AS Date), 52212, N'987456321', N'Notheger Trasnport Logistik.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (24, N'Luis Simões Logistica integrada', N'239145876', N'Carregado', N'geral@luisSimoes.com', 1, CAST(N'2019-05-08' AS Date), 52212, N'546987123', N'Luis Simões Logistica integrada.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (25, N'EmpresaTeste!', NULL, NULL, NULL, 1, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (26, N'Teste5', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (27, N'Teste6', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (28, N'Teste7', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (29, N'Teste8', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (30, N'Teste9', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (31, N'Teste10', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (32, N'Teste11', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (33, N'Teste12', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (34, N'Teste13', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (35, N'Teste13', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (36, N'Teste14', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (37, N'Teste15', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (38, N'Teste16', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (39, N'Teste18', N'', N'', N'', 0, CAST(N'2019-05-08' AS Date), 52212, NULL, N'')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (40, N'Teste19', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (41, N'Teste20', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, N'nopick.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (42, N'Teste21', NULL, NULL, NULL, 0, CAST(N'2019-05-08' AS Date), 52212, NULL, N'nopick.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (43, N'Teste22', N'', N'teste', N'', 0, CAST(N'2019-05-08' AS Date), 52212, NULL, N'nopick.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (44, N'Dancake S.a.', N'239145687', N'Coimbra', N'geral@dancake.pt', 1, CAST(N'2019-05-09' AS Date), 52212, N'500999666', N'Dancake Coimbra.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (45, N'TesteNovaBD', NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (46, N'EmpresaTesteNovoFormAtualizarDados', N'123123', N'asdasd', N'asdasd', 1, CAST(N'0001-01-01' AS Date), 52212, N'123123', N'nopick.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (47, N'TesteNovoFormParaAtualizar', NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL)
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (48, N'this.Close();', N'13132131', N'this.Close();', N'this.Close();', 1, CAST(N'0001-01-01' AS Date), 52212, N'134546', N'nopick.jpg')
INSERT [dbo].[Empresa] ([idEmpresa], [nomeEmpresa], [telefone], [localidade], [email], [visivel], [createData], [createUser], [nif], [logo]) VALUES (49, N'try', NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Empresa] OFF
SET IDENTITY_INSERT [dbo].[GrupoDistribuicao] ON 

INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (8, N'peres.rafael33@gmail.com', 1, N'Contentor', N'COI', CAST(N'2019-05-09' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (9, N'peres.rafael33@gmail.com', 1, N'MP', N'COI', CAST(N'2019-05-09' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (10, N'peres.rafael33@gmail.com', 1, N'EE', N'COI', CAST(N'2019-05-09' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (13, N'peres.rafael33@gmail.com', 1, N'PA', N'COI', CAST(N'2019-05-09' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (14, N'peres.rafael33@gmail.com', 1, N'Ronda', N'COI', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (16, N'peres.rafael33@gmail.com', 1, N'Ronda', N'PSI', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (19, N'peres.rafael33@gmail.com', 1, N'Contentor', N'PSI', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (20, N'peres.rafael33@gmail.com', 1, N'MP', N'PSI', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (23, N'peres.rafael33@gmail.com', 1, N'EE', N'PSI', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (24, N'peres.rafael33@gmail.com', 1, N'PA', N'PSI', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (25, N'peres.rafael33@gmail.com', 1, N'acessos', N'COI', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[GrupoDistribuicao] ([IdGrupo], [email], [active], [finalidade], [fabrica], [createDate], [createUser]) VALUES (27, N'peres.rafael33@gmail.com', 1, N'acessos', N'PSI', CAST(N'2019-05-14' AS Date), 52212)
SET IDENTITY_INSERT [dbo].[GrupoDistribuicao] OFF
SET IDENTITY_INSERT [dbo].[MoradasSociedade] ON 

INSERT [dbo].[MoradasSociedade] ([Id], [codMorada], [Morada], [codigoPostal], [localidade], [telefone], [idSociedade], [fabrica]) VALUES (1, N'M1', N'Estrada de Eiras', N'3020-109', N'Coimbra', N'239499800', 1, N'COI')
INSERT [dbo].[MoradasSociedade] ([Id], [codMorada], [Morada], [codigoPostal], [localidade], [telefone], [idSociedade], [fabrica]) VALUES (3, N'M2', N'R. Alexandre Herculano, Lotes I/P', N'2626-506', N'Póvoa de Santa Iria', N'219532500', 1, N'PSI')
SET IDENTITY_INSERT [dbo].[MoradasSociedade] OFF
SET IDENTITY_INSERT [dbo].[Pesagem] ON 

INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (1, 21, 47, 33, N'Teste novoLayout', N'Coimbra', N'Dancake COI', N'', N'', N'5000', N'09/05/2019 15:49:01', CAST(N'0001-01-01' AS Date), N'15000', N'09/05/2019 15:59:05', CAST(N'0001-01-01' AS Date), N'10000', N'', CAST(N'2019-05-09' AS Date), 52212, N'MP', N'Teste novo Layout', 8, 1, N'', 1, N'MP-C19050001', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (2, 23, 57, 53, N'Butter Cookies e Chocolate Chips', N'Dancake COI', N'Espanha', N'4500', N'PT458799ES', N'15000', N'10/05/2019 10:38:42', CAST(N'0001-01-01' AS Date), N'48560', N'10/05/2019 10:40:10', CAST(N'0001-01-01' AS Date), N'33560', N'38060', CAST(N'2019-05-10' AS Date), 52212, N'Contentor', N'TRS-DC789456', 8, 1, N'35861', 1, N'CO-C19050001', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (3, 24, 58, 54, N'Latas', N'Dancake COI', N'USA', N'4500', N'LS-789456A', N'15000', N'10:49', CAST(N'2019-05-10' AS Date), N'48650', N'10:57', CAST(N'0001-01-01' AS Date), N'33650', N'38150', CAST(N'2019-05-10' AS Date), 52212, N'Contentor', N'PTR-21312A', 8, 1, N'7894', 2, N'CO-C19050002', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (4, 21, 48, 33, N'Teste saida userForm', N'Dancake COI', N'MenuInicial', N'', N'', N'3500', N'11:02', CAST(N'2019-05-10' AS Date), N'123123', N'11:04', CAST(N'2019-05-13' AS Date), N'119623', N'', CAST(N'2019-05-10' AS Date), 52212, N'PA', N'Teste saida userForm', 13, 1, N'', 1, N'PA-C19050001', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (5, 44, 59, 55, N'Computadores', N'Dancake COI', N'Lisboa', N'', N'', N'500', N'11:12', CAST(N'2019-05-10' AS Date), N'213', N'11:05', CAST(N'2019-05-13' AS Date), N'287', N'', CAST(N'2019-05-10' AS Date), 52212, N'PA', N'TRS-Teste', 13, 1, N'', 2, N'PA-C19050002', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (6, 44, 59, 55, N'sdf', N'sdfsf', N'Dancake COI', N'', N'', N'23423', N'13:17', CAST(N'2019-05-10' AS Date), N'213123', N'11:06', CAST(N'2019-05-13' AS Date), N'189700', N'', CAST(N'2019-05-10' AS Date), 52212, N'MP', N'sdfsdf', 9, 1, N'', 2, N'MP-C19050002', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (7, 21, 47, 33, N'asdasd', N'asdasdasdasd', N'Dancake COI', N'', N'', N'123123', N'13:18', CAST(N'2019-05-10' AS Date), N'23123', N'11:07', CAST(N'2019-05-13' AS Date), N'100000', N'', CAST(N'2019-05-10' AS Date), 52212, N'MP', N'sdasd', 8, 1, N'', 3, N'MP-C19050003', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (8, 23, 57, 53, N'asdasd', N'Dancake COI', N'asdasd', N'1231', N'asdasd', N'1233213', N'13:20', CAST(N'2019-05-10' AS Date), N'123123', N'11:11', CAST(N'2019-05-13' AS Date), N'1110090', N'-1108859', CAST(N'2019-05-10' AS Date), 52212, N'Contentor', N'asdasdasd', 8, 1, N'23123', 3, N'CO-C19050003', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (9, 24, 58, 54, N'asdasdasd', N'asdsadasd', N'Dancake COI', N'', N'', N'123123123', N'13:20', CAST(N'2019-05-10' AS Date), N'12312', N'11:08', CAST(N'2019-05-13' AS Date), N'123110811', N'', CAST(N'2019-05-10' AS Date), 52212, N'MP', N'adasdasd', 9, 1, N'', 4, N'MP-C19050004', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (10, 23, 57, 30, N'asdada', N'asdasdasd', N'Dancake COI', N'', N'', N'213123', N'13:23', CAST(N'2019-05-10' AS Date), N'13231', N'11:09', CAST(N'2019-05-13' AS Date), N'199892', N'', CAST(N'2019-05-10' AS Date), 52212, N'MP', N'asdasdasd', 9, 1, N'', 5, N'MP-C19050005', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (11, 44, 59, 55, N'Teste', N'Dancake COI', N'PSI', N'123', N'teste', N'1200', N'09:17', CAST(N'2019-05-13' AS Date), N'12354', N'12:44', CAST(N'2019-05-13' AS Date), N'11154', N'11277', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'asdasd', 8, 1, N'asd', 4, N'CO-C19050004', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (12, 24, 58, 54, N'sadas', N'Dancake COI', N'Dancake PSI', N'', N'', N'1232', N'09:20', CAST(N'2019-05-13' AS Date), N'12345', N'15:04', CAST(N'2019-05-21' AS Date), N'11113', N'', CAST(N'2019-05-13' AS Date), 52212, N'EE', N'asdasd', 10, 1, N'', 1, N'EE-C19050001', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (13, 24, 58, 54, N'asdsad', N'Dancake COI', N'asdasd', N'', N'', N'1231', N'09:24', CAST(N'2019-05-13' AS Date), N'12313', N'12:46', CAST(N'2019-05-13' AS Date), N'11082', N'', CAST(N'2019-05-13' AS Date), 52212, N'PA', N'dasd', 13, 1, N'', 3, N'PA-C19050003', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (14, 24, 58, 54, N'asdasd', N'Dancake COI', N'Dancake PSI', N'', N'', N'2131', N'09:25', CAST(N'2019-05-13' AS Date), N'21345', N'13:06', CAST(N'2019-05-16' AS Date), N'19214', N'', CAST(N'2019-05-13' AS Date), 52212, N'EE', N'sdasd', 10, 1, N'', 2, N'EE-C19050002', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (15, 23, 57, 53, N'asdasd', N'asdaas', N'Dancake COI', N'', N'', N'123', N'09:47', CAST(N'2019-05-13' AS Date), N'1235465', N'13:06', CAST(N'2019-05-16' AS Date), N'1235342', N'', CAST(N'2019-05-13' AS Date), 52212, N'MP', N'asdasd', 9, 1, N'', 6, N'MP-C19050006', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (16, 23, 57, 53, N'123123', N'123123', N'Dancake COI', N'', N'', N'2313', N'09:49', CAST(N'2019-05-13' AS Date), N'123456', N'15:04', CAST(N'2019-05-21' AS Date), N'121143', N'', CAST(N'2019-05-13' AS Date), 52212, N'MP', N'12313', 9, 1, N'', 7, N'MP-C19050007', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (17, 44, 59, 55, N'213123', N'123123', N'Dancake COI', N'', N'', N'123213', N'09:58', CAST(N'2019-05-13' AS Date), N'132415646', N'15:06', CAST(N'2019-05-21' AS Date), N'132292433', N'', CAST(N'2019-05-13' AS Date), 52212, N'MP', N'23123', 9, 1, N'', 8, N'MP-C19050008', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (18, 44, 59, 55, N'sdasdasd', N'Dancake COI', N'asdad', N'100', N'dasd', N'5000', N'12:45', CAST(N'2019-05-13' AS Date), N'12313', N'12:47', CAST(N'2019-05-13' AS Date), N'7313', N'7413', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'asdasd', 8, 1, N'12321', 5, N'CO-C19050005', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (19, 24, 58, 54, N'asdasd', N'Dancake COI', N'asdad', N'', N'', N'2311', N'12:46', CAST(N'2019-05-13' AS Date), N'12222', N'15:12', CAST(N'2019-05-21' AS Date), N'9911', N'', CAST(N'2019-05-13' AS Date), 52212, N'PA', N'asdasd', 13, 1, N'', 4, N'PA-C19050004', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (20, 23, 57, 30, N'asdasd', N'Dancake COI', N'asdasd', N'121', N'asdasd', N'11111', N'12:48', CAST(N'2019-05-13' AS Date), N'31231', N'12:49', CAST(N'2019-05-13' AS Date), N'20120', N'20241', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'asdad', 8, 1, N'1212', 6, N'CO-C19050006', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (21, 23, 57, 53, N'123123', N'Dancake COI', N'asdasd', N'1231', N'sadasd', N'12313', N'12:49', CAST(N'2019-05-13' AS Date), N'123123', N'12:51', CAST(N'2019-05-13' AS Date), N'110810', N'112041', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'sadsasd', 8, 1, N'1212', 7, N'CO-C19050007', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (22, 24, 58, 54, N'asdasd', N'Dancake COI', N'asdad', N'111', N'assadad', N'111', N'12:51', CAST(N'2019-05-13' AS Date), N'25000', N'10:56', CAST(N'2019-05-15' AS Date), N'24889', N'25000', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'1111', 8, 1, N'122', 8, N'CO-C19050008', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (23, 24, 58, 54, N'asdad', N'Dancake COI', N'asdasd', N'1111', N'asdad', N'111', N'12:53', CAST(N'2019-05-13' AS Date), N'123456', N'14:56', CAST(N'2019-05-15' AS Date), N'123345', N'124456', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'1111', 8, 1, N'11', 9, N'CO-C19050009', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (24, 44, 59, 55, N'12313', N'Dancake COI', N'123123', N'', N'', N'123213', N'12:54', CAST(N'2019-05-13' AS Date), N'1222222', N'15:13', CAST(N'2019-05-21' AS Date), N'1099009', N'', CAST(N'2019-05-13' AS Date), 52212, N'PA', N'123123', 13, 1, N'', 5, N'PA-C19050005', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (25, 22, 52, 56, N'asdasd', N'Dancake COI', N'sadasd', N'', N'', N'213', N'12:56', CAST(N'2019-05-13' AS Date), N'213465', N'13:06', CAST(N'2019-05-16' AS Date), N'213252', N'', CAST(N'2019-05-13' AS Date), 52212, N'PA', N'asdasd', 13, 1, N'', 6, N'PA-C19050006', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (26, 24, 58, 54, N'asdasd', N'Dancake COI', N'asdasd', N'', N'', N'123123', N'13:03', CAST(N'2019-05-13' AS Date), N'12312', N'10:56', CAST(N'2019-05-15' AS Date), N'110811', N'', CAST(N'2019-05-13' AS Date), 52212, N'PA', N'asdads', 13, 1, N'', 7, N'PA-C19050007', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (27, 24, 58, 54, N'asdasd', N'Dancake COI', N'Dancake PSI', N'', N'', N'12123', N'13:05', CAST(N'2019-05-13' AS Date), N'15000', N'18:29', CAST(N'2019-05-22' AS Date), N'10000', N'', CAST(N'2019-05-13' AS Date), 52212, N'EE', N'asdada', 10, 1, N'', 3, N'EE-C19050003', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (28, 44, 59, 55, N'sadasd', N'Dancake COI', N'sdasd', N'1111', N'asdasd', N'11111111', N'13:06', CAST(N'2019-05-13' AS Date), N'11231231', N'12:19', CAST(N'2019-05-14' AS Date), N'120120', N'121231', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'11111', 8, 1, N'231', 10, N'CO-C19050010', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (29, 24, 58, 54, N'21312323', N'12312312', N'Dancake COI', N'', N'', N'123213', N'13:07', CAST(N'2019-05-13' AS Date), NULL, NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, CAST(N'2019-05-13' AS Date), 52212, N'MP', N'3123', 9, 0, N'', 9, N'MP-C19050009', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (30, 44, 59, 55, N'123123', N'Dancake COI', N'3123', N'123123', N'23123', N'12313', N'13:08', CAST(N'2019-05-13' AS Date), N'123145', N'13:05', CAST(N'2019-05-16' AS Date), N'110832', N'233955', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'12213', 8, 1, N'12313', 11, N'CO-C19050011', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (31, 44, 59, 55, N'123213', N'123123', N'Dancake COI', N'', N'', N'123123', N'13:09', CAST(N'2019-05-13' AS Date), N'456465546', N'09:43', CAST(N'2019-05-23' AS Date), N'456342423', N'', CAST(N'2019-05-13' AS Date), 52212, N'MP', N'2123', 9, 1, N'', 10, N'MP-C19050010', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (32, 24, 58, 54, N'asdasd', N'Dancake COI', N'sdasd', N'23213', N'213123', N'123123', N'13:11', CAST(N'2019-05-13' AS Date), N'456465', N'16:06', CAST(N'2019-05-21' AS Date), N'333342', N'356555', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'3123', 8, 1, N'123123', 12, N'CO-C19050012', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (33, 44, 59, 55, N'asdasd', N'Dancake COI', N'asdasd', N'123', N'asdasd', N'132', N'13:33', CAST(N'2019-05-13' AS Date), N'1500', N'18:55', CAST(N'2019-05-22' AS Date), N'1368', N'1491', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'123', 8, 1, N'123123', 13, N'CO-C19050013', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (34, 44, 59, 55, N'asdasdasd', N'Dancake COI', N'asdasd', N'123123', N'asdasd', N'123123', N'13:35', CAST(N'2019-05-13' AS Date), N'15000', N'18:56', CAST(N'2019-05-22' AS Date), N'108123', N'15000', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'sdasd', 8, 1, N'123', 14, N'CO-C19050014', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (35, 44, 59, 55, N'asdasd', N'Dancake COI', N'asdasd', N'12213', N'asdasd', N'2123213', N'13:39', CAST(N'2019-05-13' AS Date), N'323323232', N'18:08', CAST(N'2019-05-22' AS Date), N'321200019', N'321212232', CAST(N'2019-05-13' AS Date), 52212, N'Contentor', N'asads', 8, 1, N'asdasd', 15, N'CO-C19050015', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (36, 23, 57, 53, N'Latas e Tampas', N'Colep', N'Dancake COI', N'', N'', N'35000', N'10:54', CAST(N'2019-05-15' AS Date), N'456560', N'09:44', CAST(N'2019-05-23' AS Date), N'421560', N'', CAST(N'2019-05-15' AS Date), 52212, N'MP', N'NTL-T213211A', 9, 1, N'', 11, N'MP-C19050011', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (37, 44, 60, 55, N'Butter Cookies', N'Dancake COI', N'Dancake PSI', N'', N'', N'5000', N'12:50', CAST(N'2019-05-16' AS Date), N'15000', N'18:29', CAST(N'2019-05-22' AS Date), N'10000', N'', CAST(N'2019-05-16' AS Date), 52212, N'EE', N'TRS-C19/013549', 10, 1, N'', 3, N'EE-C19050003', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (38, 23, 57, 53, N'testeNovaBD', N'Dancake COI', N'testeNovaBD', N'4500', N'testeNovaBD', N'15000', N'14:47', CAST(N'2019-05-21' AS Date), N'25000', N'14:47', CAST(N'2019-05-21' AS Date), N'10000', N'14500', CAST(N'2019-05-21' AS Date), 52212, N'Contentor', N'testeNovaBD', 8, 1, N'testeNovaBD', 16, N'CO-C19050016', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (39, 44, 60, 55, N'wdfew', N'we', N'Dancake COI', N'', N'', N'1223', N'14:57', CAST(N'2019-05-21' AS Date), N'1233', N'14:58', CAST(N'2019-05-21' AS Date), N'10', N'', CAST(N'2019-05-21' AS Date), 52212, N'MP', N'123', 9, 1, N'', 12, N'MP-C050012', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (40, 44, 59, 55, N'TesteNovaBDNovosReport', N'TesteNovaBDNovosReport', N'Dancake COI', N'', N'', N'15000', N'16:06', CAST(N'2019-05-21' AS Date), N'25000', N'10:05', CAST(N'2019-05-23' AS Date), N'10000', N'', CAST(N'2019-05-21' AS Date), 52212, N'MP', N'TesteNovaBDNovosReport', 9, 1, N'', 13, N'MP-C19050013', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (41, 44, 60, 55, N'asd', N'Dancake COI', N'asd', N'', N'', N'123', N'21:40', CAST(N'2019-05-21' AS Date), N'25000', N'18:58', CAST(N'2019-05-22' AS Date), N'24877', N'', CAST(N'2019-05-21' AS Date), 52212, N'PA', N'123', 13, 1, N'', 8, N'PA-C050008', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (42, 45, 61, 57, N'TesteNovaBD', N'TesteNovaBD', N'Dancake COI', N'', N'', N'15000', N'10:23', CAST(N'2019-05-22' AS Date), N'25000', N'13:20', CAST(N'2019-05-23' AS Date), N'10000', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'TesteNovaBD', 9, 1, N'', 14, N'MP-C19050014', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (43, 23, 57, 53, N'TesteScrool', N'TesteScrool', N'Dancake COI', N'', N'', N'15000', N'12:40', CAST(N'2019-05-22' AS Date), N'25000', N'12:40', CAST(N'2019-05-22' AS Date), N'10000', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'TesteScrool', 9, 1, N'', 15, N'MP-C19050015', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (44, 46, 63, 58, N'EmpresaTesteNovoFormAtualizarDados', N'EmpresaTesteNovoFormAtualizarDados', N'Dancake COI', N'', N'', N'1500', N'13:05', CAST(N'2019-05-22' AS Date), N'25000', N'13:22', CAST(N'2019-05-23' AS Date), N'23500', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'EmpresaTesteNovoFormAtualizarDados', 9, 1, N'', 16, N'MP-C19050016', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (45, 47, 64, 59, N'TesteNovoFormParaAtualizar', N'TesteNovoFormParaAtualizar', N'Dancake COI', N'', N'', N'5000', N'13:12', CAST(N'2019-05-22' AS Date), N'5555', N'18:25', CAST(N'2019-05-22' AS Date), N'555', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'TesteNovoFormParaAtualizar', 9, 1, N'', 17, N'MP-C19050017', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (46, 48, 65, 60, N'this.Close();', N'this.Close();this.Close();', N'Dancake COI', N'', N'', N'1500', N'13:14', CAST(N'2019-05-22' AS Date), N'12222', N'18:52', CAST(N'2019-05-22' AS Date), N'10722', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'this.Close();', 9, 1, N'', 18, N'MP-C19050018', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (47, 48, 66, 61, N'try', N'try', N'Dancake COI', N'', N'', N'1500', N'13:24', CAST(N'2019-05-22' AS Date), N'5000', N'13:29', CAST(N'2019-05-23' AS Date), N'3500', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'try', 9, 1, N'', 19, N'MP-C19050019', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (48, 23, 57, 53, N'TESTE2user', N'TESTE2user', N'Dancake PSI', N'', N'', N'15000', N'18:05', CAST(N'2019-05-22' AS Date), NULL, NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, CAST(N'2019-05-22' AS Date), 53313, N'MP', N'TESTE2user', 0, 0, N'', 10, N'MP-S19050010', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (49, 44, 60, 55, N'qwe', N'qwe', N'Dancake COI', N'', N'', N'123', N'18:06', CAST(N'2019-05-22' AS Date), N'123123', N'13:27', CAST(N'2019-05-23' AS Date), N'123000', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'123', 9, 1, N'', 20, N'MP-C050020', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (50, 44, 59, 55, N'qwe', N'qwe', N'Dancake COI', N'', N'', N'123', N'18:10', CAST(N'2019-05-22' AS Date), N'1234', N'18:50', CAST(N'2019-05-22' AS Date), N'1111', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'123', 9, 1, N'', 21, N'MP-C050021', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (51, 44, 60, 55, N'asdasd', N'Dancake PSI', N'asdasd', N'', N'', N'2131', N'18:10', CAST(N'2019-05-22' AS Date), N'4465465', N'18:11', CAST(N'2019-05-22' AS Date), N'4463334', N'', CAST(N'2019-05-22' AS Date), 53313, N'PA', N'asdasd', 0, 1, N'', 1, N'PA-S19050001', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (52, 25, 67, 62, N'qwe', N'Dancake COI', N'qwe', N'', N'', N'123', N'18:30', CAST(N'2019-05-22' AS Date), N'1234', N'18:32', CAST(N'2019-05-22' AS Date), N'1111', N'', CAST(N'2019-05-22' AS Date), 52212, N'PA', N'123', 13, 1, N'', 9, N'PA-C050009', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (53, 22, 52, 56, N'asdasd', N'Dancake PSI', N'asdads', N'1231', N'asdasd', N'15000', N'18:30', CAST(N'2019-05-22' AS Date), NULL, NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, CAST(N'2019-05-22' AS Date), 53313, N'Contentor', N'asdasd', 19, 0, N'1231', 11, N'CO-S19050011', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (54, 44, 59, 55, N'asdasd', N'asdasd', N'Dancake PSI', N'', N'', N'15616', N'18:30', CAST(N'2019-05-22' AS Date), NULL, NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, CAST(N'2019-05-22' AS Date), 53313, N'MP', N'asdasd', 20, 0, N'', 11, N'MP-S19050011', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (55, 44, 59, 55, N'asdasd', N'asdasd', N'Dancake PSI', N'', N'', N'465', N'18:32', CAST(N'2019-05-22' AS Date), NULL, NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, CAST(N'2019-05-22' AS Date), 53313, N'MP', N'asdas', 20, 0, N'', 12, N'MP-S19050012', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (56, 25, 67, 62, N'teste', N'Dancake PSI', N'teste', N'', N'', N'4500', N'18:34', CAST(N'2019-05-22' AS Date), N'66500', N'18:35', CAST(N'2019-05-22' AS Date), N'62000', N'', CAST(N'2019-05-22' AS Date), 53313, N'PA', N'teste', 24, 1, N'', 2, N'PA-S19050002', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (57, 46, 63, 58, N'Teste', N'Teste', N'Dancake COI', N'', N'', N'1500', N'18:53', CAST(N'2019-05-22' AS Date), N'5000', N'13:25', CAST(N'2019-05-23' AS Date), N'3500', N'', CAST(N'2019-05-22' AS Date), 52212, N'MP', N'Teste', 9, 1, N'', 22, N'MP-C19050022', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (58, 23, 57, 53, N'TestePcCasa', N'TestePcCasa', N'Dancake PSI', N'', N'', N'15000', N'10:42', CAST(N'2019-05-23' AS Date), NULL, NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, CAST(N'2019-05-23' AS Date), 53313, N'MP', N'TestePcCasa', 20, 0, N'', 13, N'MP-S19050013', N'PSI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (59, 44, 59, 55, N'TestePCRafael', N'TestePCRafael', N'Dancake COI', N'', N'', N'5000', N'10:42', CAST(N'2019-05-23' AS Date), N'7800', N'13:42', CAST(N'2019-05-23' AS Date), N'2800', N'', CAST(N'2019-05-23' AS Date), 52212, N'MP', N'TestePCRafael', 9, 1, N'', 23, N'MP-C19050023', N'COI')
INSERT [dbo].[Pesagem] ([idPesagem], [idEmpresa], [idCondutor], [idViatura], [material], [origem], [destino], [tara], [selo], [primeiraPesagem], [horaPrimeiraPesagem], [dataPrimeiraPesagem], [segundaPesagem], [horaSegundaPesagem], [dataSegundaPesagem], [pesoLiquido], [vgm], [createData], [createUser], [tipoMovimento], [docTransporte], [grupoEmail], [concluida], [numContentor], [contador], [movimento], [fabrica]) VALUES (60, 25, 67, 62, N'ButterCookies', N'Dancake COI', N'Holanda', N'4500', N'SL4594OL', N'15000', N'13:45', CAST(N'2019-05-23' AS Date), N'48560', N'13:46', CAST(N'2019-05-23' AS Date), N'33560', N'38060', CAST(N'2019-05-23' AS Date), 52212, N'Contentor', N'dasdasd', 8, 1, N'123123', 17, N'CO-C19050017', N'COI')
SET IDENTITY_INSERT [dbo].[Pesagem] OFF
SET IDENTITY_INSERT [dbo].[Ronda] ON 

INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (36, N'11:46', CAST(N'2019-05-14' AS Date), N'12:10', CAST(N'2019-05-14' AS Date), N'Teste', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 0, N'')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (40, N'12:11', CAST(N'2019-05-14' AS Date), N'12:11', CAST(N'2019-05-14' AS Date), N'teste', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 1, N'RO-C19050001')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (41, N'12:14', CAST(N'2019-05-14' AS Date), N'12:14', CAST(N'2019-05-14' AS Date), N'asdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 2, N'RO-C19050002')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (42, N'12:15', CAST(N'2019-05-14' AS Date), N'12:15', CAST(N'2019-05-14' AS Date), N'asdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 3, N'RO-C19050003')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (43, N'12:16', CAST(N'2019-05-14' AS Date), N'12:16', CAST(N'2019-05-14' AS Date), N'asdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Interna', 52212, N'COI', 4, N'RO-C19050004')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (44, N'12:17', CAST(N'2019-05-14' AS Date), N'13:04', CAST(N'2019-05-14' AS Date), N'asdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 5, N'RO-C19050005')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (45, N'12:19', CAST(N'2019-05-14' AS Date), NULL, NULL, NULL, 2, 53313, CAST(N'2019-05-14' AS Date), NULL, NULL, N'PSI', 1, N'RO-S19050001')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (46, N'13:05', CAST(N'2019-05-14' AS Date), N'13:05', CAST(N'2019-05-14' AS Date), N'asdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 6, N'RO-C19050006')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (47, N'13:08', CAST(N'2019-05-14' AS Date), N'13:09', CAST(N'2019-05-14' AS Date), N'dasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Interna', 52212, N'COI', 7, N'RO-C19050007')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (48, N'13:12', CAST(N'2019-05-14' AS Date), N'13:12', CAST(N'2019-05-14' AS Date), N'asdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 8, N'RO-C19050008')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (49, N'13:13', CAST(N'2019-05-14' AS Date), N'13:13', CAST(N'2019-05-14' AS Date), N'sdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 9, N'RO-C19050009')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (50, N'13:15', CAST(N'2019-05-14' AS Date), N'13:15', CAST(N'2019-05-14' AS Date), N'sdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 10, N'RO-C19050010')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (51, N'13:23', CAST(N'2019-05-14' AS Date), N'13:23', CAST(N'2019-05-14' AS Date), N'asdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Interna', 52212, N'COI', 11, N'RO-C19050011')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (52, N'13:30', CAST(N'2019-05-14' AS Date), N'13:30', CAST(N'2019-05-14' AS Date), N'asdasdad', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 12, N'RO-C19050012')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (53, N'13:32', CAST(N'2019-05-14' AS Date), N'13:32', CAST(N'2019-05-14' AS Date), N'asdasdasdasdad', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 13, N'RO-C19050013')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (54, N'13:32', CAST(N'2019-05-14' AS Date), N'13:33', CAST(N'2019-05-14' AS Date), N'asdasdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 14, N'RO-C19050014')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (55, N'14:29', CAST(N'2019-05-14' AS Date), N'14:29', CAST(N'2019-05-14' AS Date), N'asdasdasd', 2, 52212, CAST(N'2019-05-14' AS Date), N'Externa', 52212, N'COI', 15, N'RO-C19050015')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (56, N'13:35', CAST(N'2019-05-15' AS Date), N'14:53', CAST(N'2019-05-15' AS Date), N'Foi uma ronda de teste!', 2, 52212, CAST(N'2019-05-15' AS Date), N'Externa', 52212, N'COI', 16, N'RO-C19050016')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (57, N'14:56', CAST(N'2019-05-16' AS Date), N'14:56', CAST(N'2019-05-16' AS Date), N'sdasdasd', 2, 52212, CAST(N'2019-05-16' AS Date), N'Interna', 52212, N'COI', 17, N'RO-C19050017')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (58, N'10:29', CAST(N'2019-05-22' AS Date), N'10:29', CAST(N'2019-05-22' AS Date), N'TesteNovaBd', 2, 52212, CAST(N'2019-05-22' AS Date), N'Externa', 52212, N'COI', 18, N'RO-C19050018')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (59, N'17:57', CAST(N'2019-05-22' AS Date), N'18:38', CAST(N'2019-05-22' AS Date), N'qwer', 2, 52212, CAST(N'2019-05-22' AS Date), N'Interna', 52212, N'COI', 19, N'RO-C050019')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (60, N'18:37', CAST(N'2019-05-22' AS Date), N'18:44', CAST(N'2019-05-22' AS Date), N'asdasdsad', 2, 53313, CAST(N'2019-05-22' AS Date), N'Externa', 53313, N'PSI', 2, N'RO-S19050002')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (61, N'18:38', CAST(N'2019-05-22' AS Date), N'18:39', CAST(N'2019-05-22' AS Date), N'asdas', 2, 52212, CAST(N'2019-05-22' AS Date), N'Externa', 52212, N'COI', 20, N'RO-C050020')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (62, N'13:29', CAST(N'2019-05-23' AS Date), N'13:29', CAST(N'2019-05-23' AS Date), N'sadasdasd', 2, 52212, CAST(N'2019-05-23' AS Date), N'Interna', 52212, N'COI', 21, N'RO-C19050021')
INSERT [dbo].[Ronda] ([IdRonda], [horaInicio], [dataInicio], [horaFim], [dataFim], [observacoes], [concluida], [createUser], [createData], [tipoRonda], [concluidaUser], [fabrica], [contador], [movimento]) VALUES (63, N'13:32', CAST(N'2019-05-23' AS Date), N'13:32', CAST(N'2019-05-23' AS Date), N'asdasdadasdasd', 2, 52212, CAST(N'2019-05-23' AS Date), N'Externa', 52212, N'COI', 22, N'RO-C19050022')
SET IDENTITY_INSERT [dbo].[Ronda] OFF
SET IDENTITY_INSERT [dbo].[Seguranca] ON 

INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (1, 52212, N'Rafael Peres Duarte', N'admin', N'rafael.duarte@dancake.pt', N'COI', N'Administrador', 1, CAST(N'2019-04-11' AS Date), 52212, 960013580, N'52212.jpg')
INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (2, 53313, N'Paulo Coelho', N'paulo', N'paulo.coelho@dancake.pt', N'PSI', N'Utilizador', 1, CAST(N'2019-04-11' AS Date), 52212, 963215478, N'53313.jpg')
INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (3, 14564, N'Nuno Pereira', N'nuno', N'nuno@gmail.com', N'COI', N'Administrador', 1, CAST(N'2019-04-25' AS Date), 52212, 913245687, N'14564.jpg')
INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (4, 14594, N'Rafael Duarte', N'rafael', N'rafael@gmail.com', N'PSI', N'Administrador', 0, CAST(N'2019-04-25' AS Date), 52212, 987456321, N'nopick.jpg')
INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (5, 1234, N'Nuno Pereira', N'nuno', N'nuno@nuno.pt', N'COI', N'Utilizador', 0, CAST(N'2019-05-06' AS Date), 52212, 987654321, N'nopick.jpg')
INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (6, 54123, N'Tatiana Nunes', N'tatiana', N'tatiana.nunes@dancake.pt', N'COI', N'Utilizador', 1, CAST(N'2019-05-07' AS Date), 52212, 987000000, N'nopick.jpg')
INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (7, 12345, N'Mónica Lourenço', N'monica', N'monica.lourenco@dancake.pt', N'COI', N'Utilizador', 1, CAST(N'2019-05-07' AS Date), 52212, 963215478, N'nopick.jpg')
INSERT [dbo].[Seguranca] ([idSeguranca], [numSeguranca], [nomeSeguranca], [password], [email], [fabrica], [tipoUtilizador], [visivel], [createData], [createUser], [telefone], [imagem]) VALUES (8, 123654, N'Alfredo', N'alfredo', N'alfredo@alfredo', N'COI', N'Utilizador', 1, CAST(N'2019-05-09' AS Date), 52212, 987456321, N'52212.jpg')
SET IDENTITY_INSERT [dbo].[Seguranca] OFF
SET IDENTITY_INSERT [dbo].[Sociedade] ON 

INSERT [dbo].[Sociedade] ([Id], [nomeFiscal], [NIF]) VALUES (1, N'Dancake S.A.', N'500792984')
SET IDENTITY_INSERT [dbo].[Sociedade] OFF
SET IDENTITY_INSERT [dbo].[UtilizacaoViatura] ON 

INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (1, 12, CAST(N'2019-04-20' AS Date), N'José Manuel', 52212, 400, N'Volta', CAST(N'2019-05-16' AS Date), 52212, 5000, 1, N'COI', N'UV-C19050001', 0, CAST(N'2019-05-16' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (2, 12, CAST(N'2019-05-16' AS Date), N'José Manuel', 52212, 5000, N'Voltinha ao quarteirao', CAST(N'2019-05-17' AS Date), 52212, 52212, 2, N'COI', N'UV-C19050002', 0, CAST(N'2019-05-16' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (3, 12, CAST(N'2019-05-16' AS Date), N'José Manuel', 52212, 5000, N'Voltinha ao quarteirao', CAST(N'2019-05-17' AS Date), 52212, 52212, 3, N'COI', N'UV-C19050002', 0, CAST(N'2019-05-16' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (4, 12, CAST(N'2019-05-17' AS Date), N'Paulo Coelho', 53313, 52212, N'TesteDrive', CAST(N'2019-05-17' AS Date), 53313, 60000, 4, N'COI', N'UV-C19050004', 0, CAST(N'2019-05-17' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (5, 12, CAST(N'2019-05-17' AS Date), N'Teste', 123456, 60000, N'Teste!', CAST(N'2019-05-22' AS Date), 52212, 60001, 5, N'COI', N'UV-C19050005', 0, CAST(N'2019-05-17' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (6, 12, CAST(N'2019-05-22' AS Date), N'TesteNovaBD', 541236, 65000, N'TesteNovaBD', CAST(N'2019-05-22' AS Date), 52212, 500, 6, N'COI', N'UV-C19050006', 0, CAST(N'2019-05-22' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (7, 12, CAST(N'2019-05-22' AS Date), N'Paulo Coelho', 52212, 60001, N'teste', CAST(N'2019-05-22' AS Date), 46545, 465464, 7, N'COI', N'UV-C19050007', 0, CAST(N'2019-05-22' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (8, 14, CAST(N'2019-05-22' AS Date), N'Rafael Duarte', 46578, 8000, N'Teste', CAST(N'2019-05-22' AS Date), 52212, 6000000, 8, N'COI', N'UV-C19050008', 0, CAST(N'2019-05-22' AS Date), 52212)
INSERT [dbo].[UtilizacaoViatura] ([IdUtilizacao], [idViaturaEmpresa], [dataLevantamento], [autorizadoPor], [levantadoPor], [KmLevantamento], [tipoMovimento], [dataEntrega], [entreguePor], [kmEntrega], [contador], [fabrica], [movimento], [concluida], [createData], [createUser]) VALUES (10, 14, CAST(N'2019-05-23' AS Date), N'Rafae Duarte', 52212, 8000, N'Teste', CAST(N'2019-05-23' AS Date), 52212, 45000, 9, N'COI', N'UV-C19050009', 0, CAST(N'2019-05-23' AS Date), 52212)
SET IDENTITY_INSERT [dbo].[UtilizacaoViatura] OFF
SET IDENTITY_INSERT [dbo].[ViaturaEmpresa] ON 

INSERT [dbo].[ViaturaEmpresa] ([IdViatura], [marca], [modelo], [kmIniciais], [fabrica], [utilizacao], [createData], [createUser], [matricula]) VALUES (12, N'Renault', N'Clio', 465464, N'COI', 0, CAST(N'2019-05-09' AS Date), 52212, N'Xc-58-27')
INSERT [dbo].[ViaturaEmpresa] ([IdViatura], [marca], [modelo], [kmIniciais], [fabrica], [utilizacao], [createData], [createUser], [matricula]) VALUES (13, N'Opel', N'Corsa', 350, N'COI', 1, CAST(N'2019-05-09' AS Date), 52212, N'XC-58-28')
INSERT [dbo].[ViaturaEmpresa] ([IdViatura], [marca], [modelo], [kmIniciais], [fabrica], [utilizacao], [createData], [createUser], [matricula]) VALUES (14, N'Mitsubishi', N'Canter', 6000000, N'COI', 0, CAST(N'2019-05-09' AS Date), 52212, N'OlaAdeus')
SET IDENTITY_INSERT [dbo].[ViaturaEmpresa] OFF
SET IDENTITY_INSERT [dbo].[ViaturaExterna] ON 

INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (27, N'Teste Inserçao', 0, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (28, N'Teste Inserçao2', 22, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (29, N'Teste Inserçao2', 22, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (30, N'Teste Inserçao3', 23, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (31, N'XC-58-27', 0, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (32, N'Teste', 0, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (33, N'Teste2', 21, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (34, N'Teste3', 0, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (35, N'Teste4', 0, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (36, N'Teste5', 26, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (37, N'Teste6', 27, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (38, N'Teste7', 28, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (39, N'Teste8', 29, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (40, N'Teste9', 30, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (41, N'Teste10', 31, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (42, N'Teste11', 32, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (43, N'Teste12', 33, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (44, N'Teste13', 34, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (45, N'Teste14', 36, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (46, N'Teste15', 37, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (47, N'Teste16', 38, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (48, N'Teste18', 39, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (49, N'Teste19', 40, 0, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (50, N'Teste20', 41, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (51, N'Teste21', 42, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (52, N'Teste22', 43, 1, CAST(N'2019-05-08' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (53, N'LC-485123', 23, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (54, N'LS-35847', 24, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (55, N'XC-58-27', 44, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (56, N'asdasdasdas', 22, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (57, N'TesteNovaBD', 45, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (58, N'EmpresaTesteNovoFormAtualizarDados', 46, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (59, N'TesteNovoFormParaAtualizar', 47, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (60, N'this.Close();', 48, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (61, N'try', 0, 1, CAST(N'0001-01-01' AS Date), 52212)
INSERT [dbo].[ViaturaExterna] ([idCamiao], [matricula], [idEmpresa], [visivel], [createData], [createUser]) VALUES (62, N'12', 25, 1, CAST(N'0001-01-01' AS Date), 52212)
SET IDENTITY_INSERT [dbo].[ViaturaExterna] OFF
SET IDENTITY_INSERT [dbo].[VisitaExterna] ON 

INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (1, 59, 44, 0, N'Visita Externa', 1, N'Paulo', N'asdasdasd', N'12:52', CAST(N'2019-05-14' AS Date), N'13:27', CAST(N'2019-05-15' AS Date), 2, N'Manutenção', N'COI', 1, N'VE-C19050001', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (2, 55, 0, 0, N'Trabalhador Dancake', 23, N'sadasd', N'sdasdasd', N'12:55', CAST(N'2019-05-14' AS Date), N'16:53', CAST(N'2019-05-17' AS Date), 2, N'Armazem Matéria Prima', N'COI', 1, N'TD-C19050001', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (3, 56, 0, 0, N'Visita Externa', 1, N'asdasd', N'asdasdasdasd', N'12:56', CAST(N'2019-05-14' AS Date), N'14:54', CAST(N'2019-05-16' AS Date), 2, N'Manutenção', N'COI', 2, N'VE-C19050002', CAST(N'2019-05-14' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (4, 56, 0, 0, N'Trabalhador Externo', 1, N'Paulo Coelho', N'asdasdasdasd', N'10:40', CAST(N'2019-05-15' AS Date), N'14:54', CAST(N'2019-05-16' AS Date), 1, N'Informática', N'COI', 1, N'TE-C19050001', CAST(N'2019-05-15' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (5, 60, 44, 0, N'Trabalhador Externo', 1, N'sdasd', N'asdasdasdasd', N'10:46', CAST(N'2019-05-15' AS Date), N'13:44', CAST(N'2019-05-23' AS Date), 2, N'Qualidade', N'COI', 2, N'TE-C19050002', CAST(N'2019-05-15' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (6, 59, 44, 0, N'Visita Externa', 1, N'Paulo Coelho', N'Veio fazer testes!', N'13:30', CAST(N'2019-05-15' AS Date), N'11:49', CAST(N'2019-05-17' AS Date), 1, N'Informática', N'COI', 3, N'VE-C19050003', CAST(N'2019-05-15' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (7, 53, 0, 0, N'Visita Externa', 2, N'Rafael Duarte', N'Veio fazer testes!', N'13:33', CAST(N'2019-05-15' AS Date), N'10:24', CAST(N'2019-05-22' AS Date), 2, N'Qualidade', N'COI', 4, N'VE-C19050004', CAST(N'2019-05-15' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (8, 62, 0, 0, N'Visita Externa', 1, N'TesteNovaBD', N'TesteNovaBD', N'10:24', CAST(N'2019-05-22' AS Date), NULL, NULL, 1, N'Informática', N'COI', 5, N'VE-C19050005', CAST(N'2019-05-22' AS Date), 52212)
INSERT [dbo].[VisitaExterna] ([IdAcesso], [idPessoa], [idEmpresa], [idViatura], [tipoVisita], [cartaoAtribuido], [funcionarioResponsavel], [motivoVisita], [horaEntrada], [dataEntrada], [horaSaida], [dataSaida], [concluida], [departamento], [fabrica], [contador], [movimento], [createData], [createUser]) VALUES (9, 55, 0, 0, N'Trabalhador Dancake', 1, N'asdasdad', N'sdasdasdad', N'16:21', CAST(N'2019-05-22' AS Date), N'17:06', CAST(N'2019-05-22' AS Date), 2, N'Manutenção', N'COI', 2, N'TD-C19050002', CAST(N'2019-05-22' AS Date), 52212)
SET IDENTITY_INSERT [dbo].[VisitaExterna] OFF
SET IDENTITY_INSERT [dbo].[VisitaFrequente] ON 

INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (47, N'Arlindo Pereira', N'123654AP', 21, 321654987, N'arlindo@pereira', N'Tentugal', 1, CAST(N'0001-01-01' AS Date), 52212, N'nopick.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (48, N'Jose Pereira', N'123647898JP', 21, 321456987, N'jose@pereira', N'Tentugal', 1, CAST(N'2019-05-06' AS Date), 52212, N'nopick.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (49, N'Otávio Almeida', N'32145987OA', 0, 987654321, N'otavio@gmail.com', N'Coimbra', 1, CAST(N'2019-05-06' AS Date), 52212, N'32145987OA.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (52, N'Rafael Duarte', N'123654789', 22, 960013580, N'asdasd@asdasd', N'sadasd', 1, CAST(N'2019-05-06' AS Date), 52212, N'123654789.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (53, N'Nuno Pereira', N'258963147', 0, 913265478, N'nuno@pereira', N'Figueira', 1, CAST(N'2019-05-06' AS Date), 52212, N'258963147.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (54, N'Paulo Coelho', N'248763218', 21, 12345678, N'paulo@asd.pt', N'asdasd', 1, CAST(N'2019-05-06' AS Date), 52212, N'248763218.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (55, N'maria Pipa', N'27196548', 0, 123213, N'sadasd@asda', N'sdasd', 0, CAST(N'2019-05-06' AS Date), 52212, N'27196548.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (56, N'Maria De Abreu Loureiro Pipa', N'75314862', 0, 969794632, N'maria.pipa6@gmail.com', N'Viseu', 1, CAST(N'2019-05-07' AS Date), 52212, N'75314862.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (57, N'José Carlos', NULL, 23, NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (58, N'José Manuel', NULL, 24, NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (59, N'Rafael Duarte', NULL, 44, NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, N'nopick.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (60, N'Rafael Peres Duarte', N'268185620', 44, 960013580, N'peres.rafael33@gmail.com', N'Viseu', 1, CAST(N'2019-05-14' AS Date), 52212, N'123654789.jpg', 1, N'VF-C19050001')
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (61, N'TesteNovaBD', NULL, 45, NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (62, N'TesteNovaBD', N'TesteNovaBD', 0, NULL, NULL, NULL, 1, CAST(N'2019-05-22' AS Date), 52212, NULL, NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (63, N'EmpresaTesteNovoFormAtualizarDados', NULL, 46, NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (64, N'TesteNovoFormParaAtualizar', NULL, 47, NULL, NULL, NULL, 1, CAST(N'0001-01-01' AS Date), 52212, NULL, NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (65, N'this.Close();', N'123123123', 48, 213213213, N'this.Close();', N'this.Close();', 1, CAST(N'0001-01-01' AS Date), 52212, N'nopick.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (66, N'try', N'213123', 0, 123123, N'asdasd', N'adssad', 1, CAST(N'0001-01-01' AS Date), 52212, N'nopick.jpg', NULL, NULL)
INSERT [dbo].[VisitaFrequente] ([idVisitaFrequente], [nome], [numCC], [idEmpresa], [telefone], [email], [localidade], [visivel], [createData], [createUser], [imagem], [contador], [movimento]) VALUES (67, N'tfd', N'123', 25, 123123123, N'qwe', N'qwe', 1, CAST(N'0001-01-01' AS Date), 52212, N'nopick.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[VisitaFrequente] OFF
ALTER TABLE [dbo].[CartaoVisita] ADD  DEFAULT ((1)) FOR [ativo]
GO
ALTER TABLE [dbo].[CartaoVisita] ADD  DEFAULT (getdate()) FOR [createData]
GO
ALTER TABLE [dbo].[CartaoVisita] ADD  DEFAULT ((1)) FOR [disponivel]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT ((1)) FOR [visivel]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT (getdate()) FOR [createData]
GO
ALTER TABLE [dbo].[GrupoDistribuicao] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[MoradasSociedade] ADD  DEFAULT ((1)) FOR [idSociedade]
GO
ALTER TABLE [dbo].[Pesagem] ADD  CONSTRAINT [DF_Pesagem_createData]  DEFAULT (getdate()) FOR [createData]
GO
ALTER TABLE [dbo].[Pesagem] ADD  DEFAULT ((0)) FOR [concluida]
GO
ALTER TABLE [dbo].[Ronda] ADD  DEFAULT ((1)) FOR [concluida]
GO
ALTER TABLE [dbo].[Ronda] ADD  DEFAULT (getdate()) FOR [createData]
GO
ALTER TABLE [dbo].[Seguranca] ADD  CONSTRAINT [DF_Seguranca_visivel]  DEFAULT ((1)) FOR [visivel]
GO
ALTER TABLE [dbo].[Seguranca] ADD  CONSTRAINT [DF_Seguranca_createData]  DEFAULT (getdate()) FOR [createData]
GO
ALTER TABLE [dbo].[UtilizacaoViatura] ADD  DEFAULT ((0)) FOR [concluida]
GO
ALTER TABLE [dbo].[ViaturaExterna] ADD  DEFAULT (getdate()) FOR [createData]
GO
ALTER TABLE [dbo].[VisitaExterna] ADD  DEFAULT ((1)) FOR [concluida]
GO
ALTER TABLE [dbo].[VisitaFrequente] ADD  DEFAULT ((1)) FOR [visivel]
GO
ALTER TABLE [dbo].[VisitaFrequente] ADD  DEFAULT (getdate()) FOR [createData]
GO
