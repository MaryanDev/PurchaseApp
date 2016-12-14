create database PurchaseAppDb
go

use PurchaseAppDb
go

create table Purchases
(
	Id int not null primary key identity(1, 1),
	Title nvarchar(100) not null,
	[Description] nvarchar(2000) null,
	Price numeric(18, 4) not null,
	UserId int not null,
	PlaceId int,
	[Date] nvarchar(50) not null,
	CategoryId int not null,
	ImportanceId int null,
	IsPlanned bit not null
);

create table Places
(
	Id int not null primary key identity(1, 1),
	Long numeric(20, 15), 
	Lat numeric(20, 15),
	Title nvarchar(100)
)

create table Categories
(
	Id int not null primary key identity(1, 1),
	Title nvarchar(100) not null
);

create table Importances
(
	Id int not null primary key identity(1, 1),
	ImpCoef tinyint not null,
	ImpTitle nvarchar(100) 
);

CREATE TABLE [dbo].[AspNetUsers](
	[Id] int NOT NULL primary key identity(1, 1),
	[Hometown] [nvarchar](max) NULL,
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
);
SET ANSI_NULLS ON
GO
 
SET QUOTED_IDENTIFIER ON
GO
 
CREATE TABLE [dbo].[AspNetRoles](
	[Id] int identity(1, 1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
 
GO

SET ANSI_NULLS ON
GO
 
SET QUOTED_IDENTIFIER ON
GO
 
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] int NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
 
GO
 
--ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
--REFERENCES [dbo].[AspNetUsers] ([Id])
--ON DELETE CASCADE
--GO
 
--ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
--GO

SET ANSI_NULLS ON
GO
 
SET QUOTED_IDENTIFIER ON
GO
 
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] int NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
 
GO
 
--ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
--REFERENCES [dbo].[AspNetUsers] ([Id])
--ON DELETE CASCADE
--GO
 
--ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
--GO


SET ANSI_NULLS ON
GO
 
SET QUOTED_IDENTIFIER ON
GO
 
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] int NOT NULL,
	[RoleId] int NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
 
GO
create table Budgets
(
	Id int not null primary key identity (1, 1),
	UserId int not null,
	Amount numeric(18, 4) not null,
	[From] nvarchar(50) not null,
	[To] nvarchar(50) not null
)

alter table Purchases
add constraint fk_purchase_to_user
foreign key (UserId) references [AspNetUsers](Id);

alter table Purchases
add constraint fk_purchase_to_category
foreign key (CategoryId) references Categories(Id)

alter table Purchases 
add constraint fk_purchase_to_importance
foreign key (ImportanceId) references Importances(Id);

alter table Purchases 
add constraint fk_purchase_to_place
foreign key (PlaceId) references Places(Id);

alter table Budgets
add constraint fk_budget_to_user
foreign key (UserId) references [AspNetUsers](Id);