CREATE DATABASE IF NOT EXISTS ma_base_de_donnees;
USE ma_base_de_donnees;

CREATE TABLE tweet (
  id INT(11) NOT NULL AUTO_INCREMENT,
  arobase VARCHAR(50) NOT NULL,
  pseudo VARCHAR(50) NOT NULL,
  message VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO tweet (arobase, pseudo, message) VALUES ('@Lou', 'LouGaming', 'Incroyable ARC');
INSERT INTO tweet (arobase, pseudo, message) VALUES ('@Crateros', 'Crateros', 'Jaime trop ca');

-- cat ./db-lib/init.sql | docker exec -i twittos-db-1  mysql -u mon_user -pmon_mot_de_passe ma_base_de_donnees 

