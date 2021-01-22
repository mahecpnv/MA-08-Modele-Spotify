/*

*/


USE Spotify;

GO

-- Drop de la vue --

IF (EXISTS (SELECT name
FROM sys.views
WHERE name = 'SpotifyView'))
BEGIN
    DROP VIEW SpotifyView;
END

GO

-- création de la vue des quantité d'entrée par table --

CREATE VIEW SpotifyView AS SELECT * FROM 
       (SELECT COUNT(*) AS "Users" FROM Users) as Users,
    (SELECT COUNT(*) AS "Artist" FROM Artist) as Artist,
    (SELECT COUNT(*) AS "Register" FROM Register) as Register,
    (SELECT COUNT(*) AS "BankData" FROM BankData) as BankData,
    (SELECT COUNT(*) AS "Formats" FROM Formats) as Formats,
    (SELECT COUNT(*) AS "Music" FROM Music) as Music,
    (SELECT COUNT(*) AS "Searchstyle" FROM Searchstyle) as Searchstyle,
    (SELECT COUNT(*) AS "Prenium" FROM Prenium) as Prenium,
    (SELECT COUNT(*) AS "Playlists" FROM Playlists) as Playlists
;

GO

-- Afficher vue --

SELECT *
FROM SpotifyView;

USE master;
