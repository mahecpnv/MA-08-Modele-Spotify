/*
	Author : Mahé Lavaud & Jean Bösch
	Description : Database de Spotify pour le projet à deux de la semaine COM.
	Date : 15.01.2021
*/

-- Créer la base de données "Spotify"
USE master;

DROP DATABASE IF EXISTS Spotify;

--We use the default parameters to create the database
CREATE DATABASE Spotify
	ON  PRIMARY 
	( NAME = 'Spotify', FILENAME = 'C:\Data\MA-08\Spotify.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = 'Spotify_log', FILENAME = 'C:\Data\MA-08\Spotify_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)

	USE Spotify;

 --------------------------------
 -- Céer la 1 ère table "Users"
 --------------------------------
 Create TABLE Users (
 id int primary key not null identity (1,1),
 Username varchar(45) not null,
 Email varchar(45) not null,
 [Password] varchar(45) not null,
 PhoneNumber int not null,
 PlaylistNumber int not null,
 SubscritionNumber int not null
 )
 
 --------------------------------
 -- Céer la 2 ème table "Music"
 --------------------------------
 Create TABLE Music (
 id int primary key not null identity (1,1),
 Title varchar(45) not null,
 Featuring varchar(45) not null,
 Duration Datetime not null
 )

  --------------------------------
 -- Céer la 3 ème table "Artist"
 --------------------------------
 Create TABLE Artist (
 id int primary key not null identity (1,1),
 Username varchar(15) not null,
 Email varchar(45) not null,
 [Password] varchar(45) not null,
 PhoneNumber int not null,
 PlaylistNumber int not null,
 SubscriberNumber int not null
 )

 --------------------------------
 -- Céer la 4 ème table "Formats"
 --------------------------------
 Create TABLE Formats (
 id int primary key not null identity (1,1),
 FormatName varchar(45) not null,
 MaxMusic int not null
 )

 --------------------------------
 -- Céer la 5 ème table "Prenium"
 --------------------------------
 Create TABLE Prenium (
 id int primary key not null identity (1,1),
 PackageType varchar(45) not null,
 Cost int not null,
 RenewalDate datetime  not null
 )

 --------------------------------
 -- Céer la 6 ème table "Playlists"
 --------------------------------
 Create TABLE Playlists (
 id int primary key not null identity (1,1),
 Names varchar(45) not null,
 Creator varchar(45) not null,
 [Time] Time not null,
 CreationDate date not null
 )

  --------------------------------
 -- Céer la 7 ème table "BankData"
 --------------------------------
 Create TABLE BankData (
 id int primary key not null identity (1,1),
 IBAN int not null,
 CardNumber int not null,
 CCV int not null,
 ExpirationDate datetime not null,
 Firstname varchar(45) not null,
 Lastname varchar(45) not null
 )

 --------------------------------
 -- Céer la 8 ème table "Searchstyle"
 --------------------------------
 Create TABLE Searchstyle (
 id int primary key not null identity (1,1),
 Names varchar(45) not null,
 MusicStyle varchar(45) not null
 )

 --------------------------------
 -- Céer la 9 ème table "Interface"
 --------------------------------s
 Create TABLE Interface (
 id int primary key not null identity (1,1),
 SelectionType varchar(45) not null,
 FavoriteStyle varchar(45) not null,
 SuggestedStyle varchar(45) not null
 )

 --------------------------------
 -- Céer la 10 ème table "Register"
 --------------------------------
 Create TABLE Register (
 id int primary key not null identity (1,1),
 Title varchar(45) not null,
 MusicNumber int not null
 )