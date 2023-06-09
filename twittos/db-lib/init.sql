CREATE DATABASE IF NOT EXISTS ma_base_de_donnees;
USE ma_base_de_donnees;

CREATE TABLE IF NOT EXISTS profil (
  idProfil INT NOT NULL AUTO_INCREMENT,
  fullname VARCHAR(50) NOT NULL,
  username VARCHAR(50) NOT NULL,
  birthdate DATE NOT NULL,
  pwd VARCHAR(12) NOT NULL,
  mail VARCHAR(30) NOT NULL,
  avatar VARCHAR(255),
  isVerified BOOLEAN NOT NULL DEFAULT false,
  dateCreation TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idProfil),
  CONSTRAINT UC_profil UNIQUE (username)
);

-- CREATE TABLE IF NOT EXISTS abonnement (
--   idProfil INT,
--   idAbonee INT,
--   estAbonnee BOOLEAN NOT NULL DEFAULT false,
--   FOREIGN KEY (idProfil) REFERENCES profil(idProfil),
--   FOREIGN KEY (idAbonee) REFERENCES profil(idProfil),
--   PRIMARY KEY (idProfil, idAbonee)
-- );

CREATE TABLE IF NOT EXISTS tweet (
  idTweet INT NOT NULL AUTO_INCREMENT,
  idProfil INT, 
  msg VARCHAR(255) NOT NULL,
  obj VARCHAR(255),
  reply INT NOT NULL,
  retweet INT NOT NULL,
  lik INT NOT NULL,
  view INT NOT NULL,
  dateTweet TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idTweet),
  FOREIGN KEY (idProfil) REFERENCES profil(idProfil)
);

CREATE TABLE IF NOT EXISTS mp (
  idMp INT NOT NULL AUTO_INCREMENT,
  idSender INT,
  idRecever INT,
  msg VARCHAR(255) NOT NULL,
  obj VARCHAR(255),
  aEnvoye BOOLEAN NOT NULL,
  dateMp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idMp),
  FOREIGN KEY (idSender) REFERENCES profil(idProfil),
  FOREIGN KEY (idRecever) REFERENCES profil(idProfil)
);



INSERT INTO profil (fullname, username,birthdate,pwd,mail,isVerified) VALUES ('Emmanuel Macron', 'LeM','1975-05-21','1234','EmmanuelMacron@gmail.com', true);
INSERT INTO profil (fullname, username,birthdate,pwd,mail,isVerified) VALUES ('Didier Deschamps', 'LeDD','1940-08-06','1234','DidierDeschamps@gmail.com' , true);
INSERT INTO profil (fullname, username,birthdate,pwd,mail,isVerified) VALUES ('50 Cents', '50Cent','1980-01-03','1234','50Cents@gmail.com' , true);
INSERT INTO profil (fullname, username,birthdate,pwd,mail,isVerified) VALUES ('Dino Merlin', 'Dino','1976-02-21','1234','DinoMerlin@gmail.com', true);
INSERT INTO profil (fullname, username,birthdate,pwd,mail,isVerified) VALUES ('Lou RASSAT', 'Lou','2003-03-10','aze','Lou.rassat@gmail.com', true);

INSERT INTO tweet (idProfil,msg, obj, reply, retweet, lik, view ) VALUES (1,'Le 49.3 arrive en force', 'sdf', 1232, 650, 2, 58954);
INSERT INTO tweet (idProfil,msg, obj, reply, retweet, lik, view ) VALUES (3,'My new album is coming soon ðŸ˜ˆ, restez branchÃ© !', 'sdfg', 44523, 26032, 80123, 103154);

INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye, dateMp) VALUES (1,2,'Pourquoi Didier Deschamps a-t-il mis une girafe dans l''Ã©quipe de France de football ?
Parce qu''elle avait un excellent jeu de tÃªte !', 'https://image.spreadshirtmedia.net/image-server/v1/compositions/T724A1PA6121PT17X30Y17D151250191W14172H14172/views/1,width=550,height=550,appearanceId=1,backgroundColor=FFFFFF,noPt=true/girafe-drole-joue-au-football-enfants-t-shirt-enfant.jpg', true, '2023-04-03 16:33:17');
INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye, dateMp) VALUES (1,2,'Coucou ca va ?', '', true, '2023-04-03 17:33:17');
INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye, dateMp) VALUES (2,1,'Oui et toi ?', '', true, '2023-04-03 18:33:17');
INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye, dateMp) VALUES (1,2,'Tranquille', '', true, '2023-04-03 19:33:17');
INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye, dateMp) VALUES (1,2,'Il fait beau dehors !', '', true, '2023-04-03 20:33:17');
INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye, dateMp) VALUES (3,2,'Hello', '', true, '2023-04-03 20:33:17');
INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye, dateMp) VALUES (2,3,'Bonsoir', '', true, '2023-04-03 20:33:17');

-- INSERT INTO abonnement (idProfil, idAbonee,estAbonnee) VALUES (1, 2, true);
-- INSERT INTO abonnement (idProfil, idAbonee,estAbonnee) VALUES (1, 3, true);
-- INSERT INTO abonnement (idProfil, idAbonee,estAbonnee) VALUES (1, 4, true);
-- INSERT INTO abonnement (idProfil, idAbonee,estAbonnee) VALUES (4, 1, true);