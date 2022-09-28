CREATE DATABASE afrijet;

CREATE TABLE `utilisateur` (
  `id_Utilisateur` int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(75) NOT NULL,
  `nationalité` int(50) NOT NULL,
  `numero_passeport` int (50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `reservation` (
  `id_Reservation` int PRIMARY KEY AUTO_INCREMENT,
  `id_Utilisateur`int(30) NOT NULL,
  `prix` int(10) NOT NULL,
  `type_de_reservation` varchar(100) NOT NULL,
   FOREIGN KEY (`id_Utilisateur`) REFERENCES utilisateur(`id_Utilisateur`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `vol` (
  `id_Vol` int PRIMARY KEY AUTO_INCREMENT,
  `id_Reservation` int(30) NOT NULL,
  `numero_vol` int(50) NOT NULL,
  `date_depart` varchar(50) NOT NULL,
  `date_arrivee` varchar(50) NOT NULL,
  FOREIGN KEY (`id_Reservation`) REFERENCES reservation(`id_Reservation`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `classe` (
  `id_Classe` int PRIMARY KEY AUTO_INCREMENT,
  `id_Reservation` int(30) NOT NULL,
  `type classe` varchar(2) NOT NULL,
  `valeur_ajoutée` varchar(20) NOT NULL,
  `remise_classe` float NOT NULL,
  FOREIGN KEY (`id_Reservation`) REFERENCES reservation(`id_Reservation`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `places_reserver` (
  `id_places_reserver` int PRIMARY KEY AUTO_INCREMENT,
  `id_Vol` int(30) NOT NULL,
  `id_Classe` int(30) NOT NULL,
  `nbres_places_reserver` int(25) NOT NULL,
  FOREIGN KEY (`id_Vol`) REFERENCES vol(`id_Vol`)
  FOREIGN KEY (`id_Classe`) REFERENCES classe(`id_Classe`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;

