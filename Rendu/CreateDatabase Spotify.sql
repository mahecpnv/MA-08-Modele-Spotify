/*
	Author : Mahé Lavaud & Jean Bösch
	Description : Database de Spotify pour le projet à deux.
*/
  
-- Créer la base de données "Spotify"
create database Spotify;
USE Spotify;
 --------------------------------
 -- Céer la 1 ère table "Users"
 --------------------------------
 Create TABLE Users (
 id int primary key not null identity (1,1),
 Pseudo varchar(15) not null,
 Email varchar(45) not null,
 Password varchar(20) not null,
 )
 
 --------------------------------
 -- Céer la 2 ème table "Music"
 --------------------------------
 Create TABLE Music (
 id int primary key not null identity (1,1),
 Title varchar(15) not null,
 Featuring varchar(45) not null,
 Duration Time not null,
 )
  --------------------------------
 -- Céer la 3 ème table "Artist"
 --------------------------------
 Create TABLE Artist (
 id int primary key not null identity (1,1),
 Pseudo varchar(15) not null,
 Email varchar(45) not null,
 "Password" varchar(45) not null,
 Phonenumber int not null,
 Playlistnumber int not null,
 Subscribernumber int not null,
 )
  --------------------------------
 -- Céer la 4 ème table "Format"
 --------------------------------
 Create TABLE Formats (
 id int primary key not null identity (1,1),
 Title varchar(15) not null,
 Featuring varchar(45) not null,
 Duration Time not null,
 )
