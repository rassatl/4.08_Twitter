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