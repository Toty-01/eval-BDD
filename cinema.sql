SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


-- Base de données : `cinema`


CREATE DATABASE IF NOT EXISTS 'cinema' SET utf8mb4 COLLATE utf8mb4_general_ci;


-- Structure de la table `admin`


CREATE TABLE `admin` (
  `id` PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom_admin` varchar(50) NOT NULL,
  `prénom_admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `permission` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` (`id`, `nom_admin`, `prénom_admin`, `password`, `permission`) VALUES
(1, 'verk', 'thierry', '$2y$10$uNHmehOPvWqRRUg3TCB.w.xcNDK39PdjbAHS/ZWT2TNHCFD2cPXri', 'admin'),
(2, 'gerdanzo', 'jojo', '$2y$10$jv9ApS/HaIT5VfZWmf7y0Oq1FDN0tjH3WcNAaBFAcn230MJthUi7K', 'admin'),
(3, 'jarry', 'Steeve', '$2y$10$DZSsyLXqnZcRL7shGbWnm.i2YwAcbwEkX5FJe38b9So', 'admin');
(4, 'pibourse', 'steevy', '$2y$10$b3qEhQc172Nf2F2IHYZfz.t1W71Ps4y4jEEzPAmxjkfCwX5fPSgca', 'admin'),

GRANT SELECT ON cinema* TO admin; 

-- Structure de la table `cinema`


CREATE TABLE `cinema` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `telephone` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cinema` (`id`, `nom`, `adresse`, `ville`, `telephone`, `email`) VALUES
(1, 'pathé', '15 avenue champagne', 'dijon', '0622443377', 'ks.ieieki@lzoz.net'),
(2, "carré de l\'autre", '18 rue des prés', 'mâcon', '0122445577', 'ks.ivvvv@lzoz.net'),
(3, 'les toiles', '15 hameau des vaches', 'montpellier', '0444664747', 'ks.ieiddfi@lzoz.net'),
(4, 'les projo', '12 rue des halles', 'paris', '0411445566', 'ks.ievdd@lzoz.net'),
(5, 'cinéstéthique', '6 avenue des étoiles', 'lyon', '0344558844', 'ks.ieieki@lzoz.net'),
(6, 'cinépolice', '52 avenue des champs élysées', 'lille', '0122114477', 'ks.ievvx@lzoz.net'),
(7, 'ciné phil', '34 rue des fourneaux', 'marseille', '0122445566', 'ks.imoli@lzoz.net');


-- Structure de la table `client`


CREATE TABLE `client` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prénom` varchar(50) NOT NULL,
  `adresse` text NOT NULL,
  `téléphone` text NOT NULL,
  `date de naissance` date NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `client` (`id`, `nom`, `prénom`, `adresse`, `ville`, `téléphone`, `date de naissance`, `email`, `password`) VALUES
(1, 'perouve', 'guy', '61 grande rue', 'paris', '0452663322', '1989-10-20', 'vinc.jdj@peoep.com', '$2y$10$IeQL99ItCqhlWzHCqn8hgeOcnGusR2eeXXvdL81YvMuxW5Eqr8oCG'),
(2, 'grizoou', 'esteban', '45 rue des pubilles', 'lyon', '0452663322', '2001-08-08', 'lfofpfkf@jdjdj.pon', '$2y$10$rKMFa3rK1kVm4qNRNh6w0.F5iUXra05nHprnjj0tuye4oWzDeg9RW'),
(3, 'johnson', 'steeve', '70 avenue des tournesols', 'paris', '0522336655', '1975-12-12', 'jfvshsdk@pdlldl.com', '$2y$10$pN6/naO0ajT7BFgVfmqq..0RNa6e.4DzSorRxg5rp8PP3qfnpcFK6'),
(4, 'friez', 'john', '55 avenue des écureuils', 'marseille', '0147483647', '2000-10-11', 'jfkfifnk@pdlldl.com', '$2y$10$uTZc1.jB4utiVS3jORJRJujy2kQwba5QjnQM9JK84Mb3ByZPWRa/W'),
(5, 'porf', 'doe', '15 rue des bonbons', 'lyon', '0155225544', '1988-05-12', 'jfjmdkddk@pdlldl.com', '$2y$10$tm9KK7sHbIjaVvHQ04TeReAz8VJN72UsYHqpue3kziyV4NmSkoC2K'),
(6, 'cherdan', 'johnny', '66 rue des fers', 'montpellier', '0233554477', '2012-01-02', 'jphlejkdk@pdlldl.com', '$2y$10$lY2HAUuBfGeOWXlqRyaZvuzD/YtqUeg7sZthZjhkIaa3L.GgPQnMa'),
(7, 'erpille', 'eric', '15 rue des trous', 'lille', '0366998877', '2000-01-01', 'jlhlhokdk@pdlldl.com', '$2y$10$iGgDiglD464tZCEvENzqE.MzHIYmnHOMzP7ek6FhNKdB/I2WMy8zS'),
(8, 'pibourse', 'steevy', '6 avenue des tilleuls', 'lyon', '0955664477', '1989-05-05', 'jfjfjf.kdk@pdlldl.com', '$2y$10$b3qEhQc172Nf2F2IHYZfz.t1W71Ps4y4jEEzPAmxjkfCwX5fPSgca'),
(9, 'thuram', 'pilou', '55 rue des sables', 'mâcon', '0244558899', '1999-04-01', 'ooddpd@palapz.com', '$2y$10$Z3jUDR.RSA6MwCEEWxecM.WXrzF1dgkIiODk3UwkxUu2gxp7DMSq');


-- Structure de la table `film`


CREATE TABLE `film` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) NOT NULL,
  `durée` int(11) NOT NULL,
  FOREIGN KEY (cinema_id)
  REFERENCES cinema (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `film` (`id`, `nom`, `durée`) VALUES
(1, 'blink', 182),
(2, 'avatar 6', 182),
(3, 'the thing', 93),
(4, 'le silence des anneaux', 122),
(5, 'le dernier des cahimans', 102),
(6, 'very good trip', 86);


-- Structure de la table `genre`


CREATE TABLE `genre` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `type` varchar(250) NOT NULL,
  ADD FOREIGN KEY (film_id)
  REFERENCES film (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `genre` (`id`, `type`) VALUES
(1, 'horreur, comédie'),
(2, 'drame, aventure'),
(3, 'horreur, comédie, aventure'),
(4, 'histoire, comédie'),
(5, 'drame, comédie'),
(6, 'fiction, aventure'),
(7, 'horreur, comédie');


-- Structure de la table `réservation`


CREATE TABLE `réservation` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `horaire` datetime NOT NULL,
  `tarif` DECIMAL(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `réservation` (`id`, `date`, `horaire`, `tarif`) VALUES
(1, '2023-01-19', '15:00:00', 9.20),
(2, '2023-01-19', '15:00:00', 7.60),
(3, '2023-01-19', '22:00:00', 5.90),
(4, '2023-01-19', '15:00:00', 5.90),
(5, '2023-01-20', '12:00:00', 9.20),
(6, '2023-01-20', '16:00:00', 7.60),
(7, '2023-01-20', '09:00:00', 5.90);


-- Structure de la table `salle`


CREATE TABLE `salle` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `capacity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `salle` (`id`, `capacity`) VALUES
(1, 120),
(2, 150),
(3, 180),
(4, 200),
(5, 240),
(6, 280),
(7, 350),
(8, 380),
(9, 400),
(10, 410),
(11, 415),
(12, 420);


-- Structure de la table `séance`


CREATE TABLE `séance` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `film` varchar(250) NOT NULL,
  FOREIGN KEY (film_id)
  REFERENCES film (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `séance` (`id`, `date`, `heure`, `film`) VALUES
(1, '2023-03-15', '15:00:00', 'groobs'),
(2, '2023-03-15', '10:00:00', 'avatar 5'),
(3, '2023-03-15', '16:30:00', 'snoopy doogs'),
(4, '2023-03-16', '20:00:00', 'le silence des anneaux'),
(5, '2023-03-16', '18:20:00', 'je veux du shiffre'),
(6, '2023-03-16', '20:00:00', 'mac trix'),
(7, '2023-03-18', '14:15:00', 'be bol'),
(8, '2023-03-15', '18:20:00', 'avatar 5');


-- Structure de la table `user`


CREATE TABLE `user` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prénom` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user` (`id`, `nom`, `prénom`, `password`) VALUES
(1, 'shpoung', 'valentin', '$2y$10$kmJMj0a4G1r.h6EcSwHuGu3rO.YgCLFJqit0.eq9s7n'),
(2, 'dipruve', 'george', '$2y$10$fv5uRKPFw6d/HXxzr.CBS.9TSWBcVPTCZdtSr5IsFID'),
(3, 'melies', 'george', '$2y$10$38gRR1SYdHdXLkU8LexFve/4JRZkjM2pE3HDGquiLJX'),
(4, 'primus', 'william', '$2y$10$mWv7a6iaJ1QgAWuU6OsnjuHfSPJNHyqYEbq0/2SAl3H'),
(5, 'alex', 'andre', '$2y$10$n4cDxjEE9E26Es6Hlmo8fOWgaFCr3zsiV6tAwyuZPS7');

/*
  Il faudra un client user par par cinéma comme convenu dans le cahier des charges
*/

GRANT SELECT, UPDATE, DELETE, INSERT
  ON séance
  TO user;

COMMIT;
