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
	[Date] date not null,
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

create table Budgets
(
	Id int not null primary key identity (1, 1),
	UserId int not null,
	Amount numeric(18, 4) not null,
	[From] date not null,
	[To] date not null
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