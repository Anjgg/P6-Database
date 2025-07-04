USE [DatabseP6]
GO
/****** Object:  Table [dbo].[Produit_SystemeExploitation_Versions]    Script Date: 26/05/2025 18:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produit_SystemeExploitation_Versions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProduitId] [int] NOT NULL,
	[SystemeExploitationId] [int] NOT NULL,
	[VersionId] [int] NOT NULL,
 CONSTRAINT [PK_Produit_SystemeExploitation_Versions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produits]    Script Date: 26/05/2025 18:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produits](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Produits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemesExploitation]    Script Date: 26/05/2025 18:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemesExploitation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SystemesExploitation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 26/05/2025 18:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Resolution] [nvarchar](max) NULL,
	[Statut] [nvarchar](max) NOT NULL,
	[CreationDate] [datetimeoffset](7) NOT NULL,
	[ClosingDate] [datetimeoffset](7) NULL,
	[ProduitSystemeExploitationVersionId] [int] NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versions]    Script Date: 26/05/2025 18:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumVersion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Versions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Produit_SystemeExploitation_Versions] ON 

INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (2, 2, 2, 2)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (3, 3, 3, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (4, 4, 4, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (5, 1, 3, 3)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (6, 2, 5, 4)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (7, 3, 2, 4)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (8, 4, 3, 5)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (9, 1, 2, 4)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (10, 2, 4, 5)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (11, 4, 5, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (12, 3, 2, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (13, 1, 3, 6)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (14, 4, 1, 4)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (15, 2, 3, 2)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (16, 1, 6, 3)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (17, 3, 4, 4)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (18, 2, 5, 2)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (19, 4, 2, 5)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (20, 1, 5, 6)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (21, 2, 4, 4)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (22, 4, 6, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (23, 3, 4, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (24, 1, 4, 1)
INSERT [dbo].[Produit_SystemeExploitation_Versions] ([Id], [ProduitId], [SystemeExploitationId], [VersionId]) VALUES (25, 2, 1, 5)
SET IDENTITY_INSERT [dbo].[Produit_SystemeExploitation_Versions] OFF
GO
SET IDENTITY_INSERT [dbo].[Produits] ON 

INSERT [dbo].[Produits] ([Id], [Name]) VALUES (1, N'Trader en herbe')
INSERT [dbo].[Produits] ([Id], [Name]) VALUES (2, N'Maître des investissements')
INSERT [dbo].[Produits] ([Id], [Name]) VALUES (3, N'Planificateur d’Anxiété Sociale')
INSERT [dbo].[Produits] ([Id], [Name]) VALUES (4, N'Planificateur d’Entrainement')
SET IDENTITY_INSERT [dbo].[Produits] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemesExploitation] ON 

INSERT [dbo].[SystemesExploitation] ([Id], [Name]) VALUES (1, N'Linux')
INSERT [dbo].[SystemesExploitation] ([Id], [Name]) VALUES (2, N'Windows')
INSERT [dbo].[SystemesExploitation] ([Id], [Name]) VALUES (3, N'Android')
INSERT [dbo].[SystemesExploitation] ([Id], [Name]) VALUES (4, N'MacOS')
INSERT [dbo].[SystemesExploitation] ([Id], [Name]) VALUES (5, N'iOS')
INSERT [dbo].[SystemesExploitation] ([Id], [Name]) VALUES (6, N'Windows Mobile')
SET IDENTITY_INSERT [dbo].[SystemesExploitation] OFF
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (1, N'L’application se ferme de manière inattendue lors de la tentative de connexion à un compte existant.', NULL, N'En cours', CAST(N'2024-01-05T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 1)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (2, N'Graphiques de performance non chargés.', N'Correction d’un bug d’API externe de récupération des données boursières.', N'Résolu', CAST(N'2024-02-18T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-02-25T00:00:00.0000000+00:00' AS DateTimeOffset), 2)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (3, N'Les notifications quotidiennes ne se déclenchent pas.', NULL, N'En cours', CAST(N'2024-03-10T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 3)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (4, N'Impossible de synchroniser avec l’application mobile.', N'Description de jeton expiré corrigé.', N'Résolu', CAST(N'2024-02-12T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-02-28T00:00:00.0000000+00:00' AS DateTimeOffset), 4)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (5, N'Le bouton "vendre" reste inactif.', N'Bug UI corrigé dans la dernière mise à jour.', N'Résolu', CAST(N'2024-04-20T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-04-23T00:00:00.0000000+00:00' AS DateTimeOffset), 5)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (6, N'Le portefeuille ne se met pas à jour après un achat.', NULL, N'En cours', CAST(N'2024-01-15T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 6)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (7, N'Écran vide après connexion.', N'Rechargement automatique ajouté en cas de réponse vide du serveur.', N'Résolu', CAST(N'2024-03-07T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-03-11T00:00:00.0000000+00:00' AS DateTimeOffset), 7)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (8, N'Synchronisation avec montre connectée échoue.', NULL, N'En cours', CAST(N'2024-04-18T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 8)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (9, N'Erreur au lancement de l’application sur certaines machines Windows 10.', N'Mise à jour du framework .NET requise.', N'Résolu', CAST(N'2024-02-05T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-02-12T00:00:00.0000000+00:00' AS DateTimeOffset), 9)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (10, N'Les favoris ne sont pas enregistrés après fermeture.', N'Ajout d’une sauvegarde automatique lors des changements.', N'Résolu', CAST(N'2024-03-28T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-04-02T00:00:00.0000000+00:00' AS DateTimeOffset), 10)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (11, N'Mauvais calcul du total de calories dépensées.', NULL, N'En cours', CAST(N'2024-04-10T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 11)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (12, N'Les entrées journalières ne se sauvegardent pas.', N'Description de quota disque corrigé.', N'Résolu', CAST(N'2024-02-04T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-02-10T00:00:00.0000000+00:00' AS DateTimeOffset), 12)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (13, N'Erreur de chargement des cotations boursières en temps réel.', NULL, N'En cours', CAST(N'2024-04-22T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 13)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (14, N'Interface graphique non responsive en Resolution 4K.', NULL, N'En cours', CAST(N'2024-03-30T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 14)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (15, N'Déconnexions fréquentes après inactivité.', N'Augmentation du délai de session à 15 minutes.', N'Résolu', CAST(N'2024-02-13T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-02-16T00:00:00.0000000+00:00' AS DateTimeOffset), 15)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (16, N'Interface utilisateur décalée.', NULL, N'En cours', CAST(N'2024-04-01T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 16)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (17, N'Le calendrier ne se met pas à jour automatiquement.', N'Correctif déployé dans la version 1.1.', N'Résolu', CAST(N'2024-03-21T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-03-24T00:00:00.0000000+00:00' AS DateTimeOffset), 17)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (18, N'Notification sonore manquante lors d’une alerte d’investissement.', NULL, N'En cours', CAST(N'2024-04-17T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 18)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (19, N'Affichage incorrect de la progression hebdomadaire.', N'Correction de l’algorithme de calcul.', N'Résolu', CAST(N'2024-01-08T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-01-15T00:00:00.0000000+00:00' AS DateTimeOffset), 19)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (20, N'Crashes au démarrage après mise à jour iOS 17.', N'Patch de compatibilité publié.', N'Résolu', CAST(N'2024-04-19T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-04-21T00:00:00.0000000+00:00' AS DateTimeOffset), 20)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (21, N'Impossible de supprimer un compte utilisateur.', NULL, N'En cours', CAST(N'2024-03-04T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 21)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (22, N'Application lente à démarrer.', N'Optimisation du temps de chargement initial.', N'Résolu', CAST(N'2024-03-25T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-03-30T00:00:00.0000000+00:00' AS DateTimeOffset), 22)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (23, N'Plantage lors du chargement des statistiques personnelles.', NULL, N'En cours', CAST(N'2024-02-01T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 23)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (24, N'Connexion impossible avec identifiants valides.', N'Correction du module d’authentification.', N'Résolu', CAST(N'2024-01-14T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2024-01-16T00:00:00.0000000+00:00' AS DateTimeOffset), 24)
INSERT [dbo].[Tickets] ([Id], [Description], [Resolution], [Statut], [CreationDate], [ClosingDate], [ProduitSystemeExploitationVersionId]) VALUES (25, N'Impossible de configurer des alertes de seuil de cours.', NULL, N'En cours', CAST(N'2024-02-26T00:00:00.0000000+00:00' AS DateTimeOffset), NULL, 25)
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
SET IDENTITY_INSERT [dbo].[Versions] ON 

INSERT [dbo].[Versions] ([Id], [NumVersion]) VALUES (1, N'1.1')
INSERT [dbo].[Versions] ([Id], [NumVersion]) VALUES (2, N'2.1')
INSERT [dbo].[Versions] ([Id], [NumVersion]) VALUES (3, N'1.2')
INSERT [dbo].[Versions] ([Id], [NumVersion]) VALUES (4, N'1.0')
INSERT [dbo].[Versions] ([Id], [NumVersion]) VALUES (5, N'2.0')
INSERT [dbo].[Versions] ([Id], [NumVersion]) VALUES (6, N'1.3')
SET IDENTITY_INSERT [dbo].[Versions] OFF
GO
ALTER TABLE [dbo].[Produit_SystemeExploitation_Versions]  WITH CHECK ADD  CONSTRAINT [FK_Produit_SystemeExploitation_Versions_Produits_ProduitId] FOREIGN KEY([ProduitId])
REFERENCES [dbo].[Produits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Produit_SystemeExploitation_Versions] CHECK CONSTRAINT [FK_Produit_SystemeExploitation_Versions_Produits_ProduitId]
GO
ALTER TABLE [dbo].[Produit_SystemeExploitation_Versions]  WITH CHECK ADD  CONSTRAINT [FK_Produit_SystemeExploitation_Versions_SystemesExploitation_SystemeExploitationId] FOREIGN KEY([SystemeExploitationId])
REFERENCES [dbo].[SystemesExploitation] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Produit_SystemeExploitation_Versions] CHECK CONSTRAINT [FK_Produit_SystemeExploitation_Versions_SystemesExploitation_SystemeExploitationId]
GO
ALTER TABLE [dbo].[Produit_SystemeExploitation_Versions]  WITH CHECK ADD  CONSTRAINT [FK_Produit_SystemeExploitation_Versions_Versions_VersionId] FOREIGN KEY([VersionId])
REFERENCES [dbo].[Versions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Produit_SystemeExploitation_Versions] CHECK CONSTRAINT [FK_Produit_SystemeExploitation_Versions_Versions_VersionId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Produit_SystemeExploitation_Versions_ProduitSystemeExploitationVersionId] FOREIGN KEY([ProduitSystemeExploitationVersionId])
REFERENCES [dbo].[Produit_SystemeExploitation_Versions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Produit_SystemeExploitation_Versions_ProduitSystemeExploitationVersionId]
GO
