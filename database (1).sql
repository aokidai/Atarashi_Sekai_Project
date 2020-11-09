create database AtarashiSekaiProject
go
use AtarashiSekaiProject
go
create table News
(
	newsID int identity(1,1) primary key,
	dateUpdate datetime not null,
	naiyo ntext not null,
	link varchar(100) not null,
)
create table OnAir
(
	onAirID int identity(1,1) primary key,
	kaisha nvarchar(30) not null,
	jouhou nvarchar(100) not null,
	
)
create table Staff
(
	staffID int identity(1,1) primary key,
	shigoto nvarchar(50) not null,
	staffName nvarchar(50) not null,
)
create table Cast
(
	castID int identity(1,1) primary key,
	shigoto nvarchar(50) not null,
	staffName nvarchar(50) not null,
)
create table StaffAndCast
(
	staffAndCastID int identity(1,1) primary key,
	staffID int references Staff(staffID),
	castID int references Cast(castID),
)
create table Story
(
	storyID int identity(1,1) primary key,
	storyName nvarchar(10) not null,
	naiyoStory ntext not null,
	storyImages varchar(50) not null,
)
create table Kyanrakuta
(
	kyanrakutaID int identity(1,1) primary key,
	kyanName nvarchar(50) not null,
	kyanCV nvarchar(50) not null,
	kyanShokai ntext not null,
	kyanImage varchar(50) not null,
)
create table DVD
(
	DVDID int identity(1,1) primary key,
	DVDMai nvarchar(10) not null,
	title nvarchar(50) not null,
	naiyo ntext not null,
	images nvarchar not null,
)
create table BrurayAndDVD
(
	bruDVDID int identity(1,1) primary key,
	DVDID int references DVD(DVDID),
)
create table Music
(
	musicID int identity(1,1) primary key,
	title nvarchar(50) not null,
	naiyo ntext not null,
	images nvarchar(50) not null,
)
create table Gensaku
(
	gensakuID int identity(1,1) primary key,
	title nvarchar(50) not null,
	naiyo ntext not null,
	images nvarchar(50) not null,
)
create table Goods
(
	goodsID int identity(1,1) primary key,
	gName nvarchar(100) not null,
	link nvarchar(100) not null,
	images nvarchar(50) not null,
)
create table Pimu
(
	pimuID int identity(1,1) primary key,
	link nvarchar(100) not null,
)
create table Supesharu
(
	supesharuID int identity(1,1) primary key,
	sName nvarchar(100) not null,
	link nvarchar(100) not null,
	images nvarchar(50) not null,
)
create table Account
(
	accID int identity(1,1) primary key,
	nameAcc nvarchar(50) not null,
	userName varchar(50) not null,
	password varchar(50) not null,
)
create table Top
(
	topID int identity(1,1) primary key,
	newsID int references News(newsID),
	onAirID int references OnAir(onAirID),
	staffAndCastID int references StaffAndCast(staffAndCastID),
	storyID int references Story(storyID),
	kyanrakutaID int references Kyanrakuta(kyanrakutaID),
	bruDVDID int references BrurayAndDVD(bruDVDID),
	musicID int references Music(musicID),
	gensakuID int references Gensaku(gensakuID),
	goodsID int references Goods(goodsID),
	pimuID int references Pimu(pimuID),
	supesharuID int references Supesharu(supesharuID),
	accID int references Account(accID),
)
