CREATE DATABASE IF NOT EXISTS ma_base_de_donnees;
USE ma_base_de_donnees;

CREATE TABLE IF NOT EXISTS profil (
  idProfil INT NOT NULL AUTO_INCREMENT,
  pseudo VARCHAR(50) NOT NULL,
  arobase VARCHAR(50) NOT NULL,
  avatar VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tweet (
  idTweet INT NOT NULL AUTO_INCREMENT,
  idProfil INT, 
  message VARCHAR(255) NOT NULL,
  object VARCHAR(255) NOT NULL,
  reply INT NOT NULL,
  retweet INT NOT NULL,
  like INT NOT NULL,
  view INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (idProfil) REFERENCES profil(idProfil)
);

INSERT INTO tweet (arobase, pseudo, message) VALUES ('@bail', 'zerezr', 'Jzerrop ca');
INSERT INTO tweet (arobase, pseudo, message) VALUES ('@zer', 'Crarezrteros', 'Jai123 ca');
INSERT INTO tweet (arobase, pseudo, message) VALUES ('@zrezr', 'rezr', 'Ja15ca');

-- type init.sql  > ./db-lib/init.sql

-- cat ./db-lib/init.sql | docker exec -i twittos-db-1 mysql -u root -proot 
-- cat ./db-lib/init.sql | docker exec -i twittos-db-1 mysql -u mon_user -pmon_mot_de_passe ma_base_de_donnees 

