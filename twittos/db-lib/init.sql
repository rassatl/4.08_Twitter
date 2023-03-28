CREATE DATABASE IF NOT EXISTS ma_base_de_donnees;
USE ma_base_de_donnees;

CREATE TABLE IF NOT EXISTS profil (
  idProfil INT NOT NULL AUTO_INCREMENT,
  pseudo VARCHAR(50) NOT NULL,
  arobase VARCHAR(50) NOT NULL,
  avatar VARCHAR(255) NOT NULL,
  PRIMARY KEY (idProfil),
  CONSTRAINT UC_profil UNIQUE (arobase)
);

CREATE TABLE IF NOT EXISTS tweet (
  idTweet INT NOT NULL AUTO_INCREMENT,
  idProfil INT, 
  msg VARCHAR(255) NOT NULL,
  obj VARCHAR(255),
  reply INT NOT NULL,
  retweet INT NOT NULL,
  lik INT NOT NULL,
  view INT NOT NULL,
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
  PRIMARY KEY (idMp),
  FOREIGN KEY (idSender) REFERENCES profil(idProfil),
  FOREIGN KEY (idRecever) REFERENCES profil(idProfil)
);

INSERT INTO profil (pseudo, arobase, avatar) VALUES ('Emmanuel Macron', '@LeM', 'https://upload.wikimedia.org/wikipedia/commons/d/d2/Emmanuel_Macron_June_2022_%28cropped%29.jpg');
INSERT INTO profil (pseudo, arobase, avatar) VALUES ('Didier Deschamps', '@LeDD', 'https://fyooyzbm.filerobot.com/v7/didier+deschamps+epa+5416841684-hB2KWxn7.jpg?vh=3afa71&ci_seal=c3313734b7');
INSERT INTO profil (pseudo, arobase, avatar) VALUES ('50 Cents', '@50Cent', 'https://upload.wikimedia.org/wikipedia/commons/a/a3/50_Cent_AKA_Curtis_Jackson_%28cropped%29.jpg');
INSERT INTO profil (pseudo, arobase, avatar) VALUES ('Dino Merlin', '@Dino', 'https://upload.wikimedia.org/wikipedia/commons/1/15/Dino_Merlin_%282011%29.jpg');

INSERT INTO tweet (idProfil,msg, obj, reply, retweet, lik, view ) VALUES (1,'Le 49.3 arrive en force', 'sdf', 1232, 650, 2, 58954);
INSERT INTO tweet (idProfil,msg, obj, reply, retweet, lik, view ) VALUES (3,'My new album is coming soon ðŸ˜ˆ, restez branchÃ© !', 'sdfg', 44523, 26032, 80123, 103154);

INSERT INTO mp (idSender,idRecever,msg, obj,aEnvoye) VALUES (1,2,'Pourquoi Didier Deschamps a-t-il mis une girafe dans l''Ã©quipe de France de football ?
Parce qu''elle avait un excellent jeu de tÃªte !', 'https://image.spreadshirtmedia.net/image-server/v1/compositions/T724A1PA6121PT17X30Y17D151250191W14172H14172/views/1,width=550,height=550,appearanceId=1,backgroundColor=FFFFFF,noPt=true/girafe-drole-joue-au-football-enfants-t-shirt-enfant.jpg', true);



