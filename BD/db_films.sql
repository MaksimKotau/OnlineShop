-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 05:17 AM
-- Server version: 5.7.17
-- PHP Version: 7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_films`
--
CREATE DATABASE IF NOT EXISTS `db_films` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_films`;

-- --------------------------------------------------------

--
-- Table structure for table `achats`
--

DROP TABLE IF EXISTS `achats`;
CREATE TABLE IF NOT EXISTS `achats` (
  `idach` int(11) NOT NULL AUTO_INCREMENT,
  `idm` int(11) NOT NULL,
  `datach` date DEFAULT NULL,
  PRIMARY KEY (`idach`),
  KEY `achats_idm_FK` (`idm`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `achats`:
--

--
-- Dumping data for table `achats`
--

INSERT INTO `achats` (`idach`, `idm`, `datach`) VALUES
(1, 1, '2018-02-18'),
(2, 2, '2018-02-21'),
(3, 3, '2018-02-22'),
(4, 1, '2018-02-19'),
(5, 4, '2018-01-28'),
(6, 3, '2018-02-19'),
(7, 1, '2018-02-21'),
(8, 6, '2018-02-26'),
(9, 7, '2018-02-19'),
(10, 7, '2018-02-19'),
(11, 7, '2018-02-19'),
(12, 7, '2018-02-20'),
(13, 7, '2018-02-20'),
(14, 7, '2018-02-20'),
(15, 5, '2018-02-20'),
(16, 5, '2018-02-20'),
(17, 5, '2018-02-21'),
(18, 7, '2018-03-05'),
(19, 7, '2018-03-05'),
(20, 7, '2018-03-05'),
(21, 7, '2018-03-05'),
(22, 5, '2018-03-06'),
(23, 5, '2018-03-06');

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `idf` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `res` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `trailer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pochette` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `descr` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`idf`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `films`:
--

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`idf`, `titre`, `duree`, `res`, `pays`, `prix`, `trailer`, `pochette`, `rating`, `descr`) VALUES
(2, 'Moana', 107, 'John Musker', 'Amérique', '3.99', 'RisAN8aNCXI', 'c7ee5c3e2a95257aa69981155f5a8144d8424db3.jpg', '4.0', 'Moana est la fille unique du chef dMoana est la fille unique du chef d\'un village, campé sur une île paradisiaque du Pacifique Sud. Bien que la jeune femme connaît son devoir d\'héritière et de future chef, elle est irrémédiablement attirée par l\'océan. Lorsque sa grand-mère lui apprend son véritable destin, celui de convaincre le demi-dieu Maui de ramener le coeur de Te Fiti, qu\'il a volé il y a de cela des centaines d\'années, elle s\'embarque dans une aventure remplie de rebondissement sur les hautes mers. Des créatures effrayantes et des situations inattendues viendront teinter son voyage.'),
(3, 'Dirty Papy', 102, 'Dan Mazer', 'Amérique', '6.00', 'vOAn83vOZLk', 'c88f0aa917236c98ef82f5d5e39a7a99df46686b.jpg', '2.0', 'Jason Kelly, avocat un peu coincé, s\'apprête à épouser la fille autoritaire de son patron. Autant dire qu\'il est désormais bien parti pour devenir associé au sein du cabinet… Mais c\'est sans compter sur son grand-père Dick, vieil obsédé sexuel, qui le convainc de l\'accompagner en Floride pour quelques jours de vacances. Soudain, Jason voit la perspective de son mariage remise en question. Car son grand-père entend profiter de la vie au maximum et embarquer son petit-fils dans ses aventures rocambolesques. Du coup, entre les soirées arrosées, les bagarres dans les bars et une folle nuit passée au karaoké, Jason découvre des plaisirs de l\'existence qu\'il ne soupçonnait pas, tandis que Dick s\'attache à ce garçon qu\'il ne connaissait presque pas…'),
(4, 'Mise à l\'épreuve 2', 102, 'Tim Story', 'Amérique', '7.00', 'ipQEuzH5D1c', 'f4a3e98f52ce4f21de01b8db1993cc438c444b88.jpg', '3.0', 'Grâce à une mission menée à bien, l\'agent de police Ben Barber obtient l\'accord de son collègue, le coriace James Payton, pour fréquenter sa soeur Angela. Quelque temps plus tard, Ben est désormais sur le point de se marier avec Angela. Mais tandis que les préparatifs de la cérémonie s\'organisent, il est une nouvelle fois mis à l\'épreuve par son futur beau-frère afin obtenir son aval sur le mariage. Les deux détectives refont alors équipe et se rendent cette fois à Miami pour tenter de démanteler un important réseau de trafic de drogue...'),
(5, 'The Boss', 99, 'Ben Falcone', 'Amérique', '5.59', 'Ppzt_hrlUxw', '5c105f5e9df6453313260a2e0348c7985b098848.jpg', '4.0', 'Une huile de la finance tombée pour délit d’initié est envoyée en prison. À sa sortie, tout le monde, surtout ceux qu’elle a arnaqués par le passé, n’est pas prêt à croire en son tout nouveau numéro de parfaite repentie prête pour un nouveau départ.'),
(6, 'Keanu', 100, 'Peter Atencio', 'Amérique', '7.29', 'K9zy27apgI8', '697d13bb648e57973785b7b133d5c5ec876368f0.jpg', '3.0', 'Tout va mal dans la vie de Rell, un photographe toxicomane, depuis que sa petite amie l\'a quitté. Pour contrer les revers de la vie, Rell se procure un mignon petit chaton, qu\'il nomme Keanu, qui lui rend instantanément le bonheur. Malheureusement, ce bien-être sera de courte durée puisque sa maison sera cambriolée et le félin kidnappé par un gang de rue mené par un être impitoyable surnommé Cheddar. Rell et son cousin Clarence décideront alors de se faire passer pour de redoutables assassins afin de retrouver les coupables et peut-être le chaton disparu.'),
(7, 'L\'Âge de Glace', 94, 'Galen T. Chu', 'Amérique', '6.99', '9v44tabqvoo', '33b0d4c3e922b5092d0720d9c38cc61316a5d78a.jpg', '5.0', 'L’éternelle quête de Scrat pour attraper son insaisissable gland le catapulte dans l’espace, où il déclenche accidentellement une série d’événements cosmiques qui vont transformer et menacer le monde de l’Âge de Glace. Pour survivre, Sid, Manny, Diego et le reste de la bande vont devoir quitter leur foyer et se lancer dans une nouvelle aventure pleine d’humour au cours de laquelle ils vont traverser d’incroyables paysages exotiques et rencontrer des personnages tous plus étonnants les uns que les autres.'),
(8, 'Mike et Dave', 98, 'Jake Szymanski', 'Amérique', '8.29', 'zegp6ACT9qc', '16c666a536ec5ce17607f365d0841d70ffaeb00a.jpg', '4.0', 'Mike et Dave sont deux frères qui ruinent constamment les événements familiaux importants. Lorsque leur soeur est sur le point de se marier, leurs parents obligent les frangins à être accompagnés par des femmes sages et discrètes. L\'inséparable duo publie une annonce qui devient virale et il reçoit de nombreuses propositions de gens qui veulent se faire payer un voyage à Hawaï. C\'est finalement Alice et Tatiana qui remportent la mise, des amies dévergondées portées sur la fête et l\'alcool qui se font passer pour des filles sans histoire. Leurs bonnes intentions sont insuffisantes lorsque quatre adultes irresponsables et incontrôlables enveniment par inadvertance toutes les situations.'),
(9, 'Bad Moms 2', 104, 'Jon Lucas', 'Amérique', '4.99', 'LOaX0VNC4oE', '5deaf86329f545eebc973d4d19e4dff004255b61.jpg', '3.2', 'Comme toutes les mères de famille, Amy, Kiki et Carla angoissent à l’approche de Noël. Entre les cadeaux, la cuisine, la décoration, l’organisation et la préparation, c’est toujours les mêmes qui s’y collent… Et pour compliquer les choses, leurs propres mères, exigeantes et critiques, s’invitent à la fête ! Au bout du rouleau, elles décident de prendre les choses en main et de s’éclater. Cette année l’esprit de noël va sérieusement trinquer…'),
(10, 'Barbershop', 112, 'Malcolm D. Lee', 'Amérique', '5.99', 'uKcq4iNkT74', '841490a5e43314611f67bcb11fe72cd114683142.jpg', '4.2', '10 ans se sont écoulés depuis que Calvin a ouvert son commerce. Son équipe toujours unie et authentique s\'est toutefois agrandie et ce lieu qui était autrefois dominé par la testostérone inclut désormais la gent féminine. Les rires et le bonheur fusent de partout et la boutique va bon train. Malheureusement, bien que tout semble au beau fixe, un nuage noir semble se profiler au coeur de leur quartier menaçant leur entreprise. Calvin et son équipe n\'auront d\'autre choix que de se réunir au grand complet afin de sauver le salon - voir même le quartier qu\'ils aiment tant.'),
(11, 'Ma Vie De Chat', 88, 'Barry Sonnenfeld', 'France', '4.89', 'Y5iLpeCL8Eg', '07d2ae0183aed6cb67ce3b8cd8a123f5cad87cf9.jpg', '4.3', 'Tom Brand est un milliardaire qui a consacré sa vie à son travail et à sa réussite. Sa carrière trépidante l’a éloigné de sa femme Lara et de son adorable fille Rebecca. Pour l’anniversaire de cette dernière, Tom n’a d’autre choix que de lui offrir ce qu’il déteste par-dessus tout : un chat. En route pour la fête de Rebecca, Tom est victime d’un terrible accident et se retrouve mystérieusement coincé dans le corps du chat.  Répondant désormais au doux nom de Monsieur Fuzzypants, il est adopté par sa propre famille qui peine à maîtriser ce chat maladroit et peu obéissant… Tom va devoir tant bien que mal se faire à sa nouvelle condition tout en portant un nouveau regard sur son entourage. Il devra comprendre pourquoi il s’est retrouvé dans cette situation et tout mettre en œuvre pour reconquérir son apparence humaine.');

-- --------------------------------------------------------

--
-- Table structure for table `films_achats`
--

DROP TABLE IF EXISTS `films_achats`;
CREATE TABLE IF NOT EXISTS `films_achats` (
  `idfach` int(11) NOT NULL AUTO_INCREMENT,
  `idach` int(11) NOT NULL,
  `idf` int(11) NOT NULL,
  PRIMARY KEY (`idfach`),
  KEY `films_achats_idach_FK` (`idach`),
  KEY `films_achats_idf_FK` (`idf`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `films_achats`:
--

--
-- Dumping data for table `films_achats`
--

INSERT INTO `films_achats` (`idfach`, `idach`, `idf`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 4),
(4, 3, 3),
(5, 4, 6),
(6, 5, 8),
(7, 6, 3),
(8, 7, 6),
(9, 7, 7),
(10, 8, 2),
(11, 9, 2),
(12, 9, 5),
(13, 9, 8),
(14, 10, 7),
(15, 11, 7),
(16, 12, 5),
(17, 12, 7),
(18, 12, 4),
(19, 13, 4),
(20, 14, 2),
(21, 14, 6),
(22, 14, 4),
(23, 15, 8),
(24, 15, 4),
(25, 16, 5),
(26, 16, 2),
(27, 17, 7),
(28, 18, 5),
(29, 19, 5),
(30, 20, 4),
(31, 21, 4),
(32, 22, 8),
(33, 23, 9);

-- --------------------------------------------------------

--
-- Table structure for table `films_genres`
--

DROP TABLE IF EXISTS `films_genres`;
CREATE TABLE IF NOT EXISTS `films_genres` (
  `idfgen` int(11) NOT NULL AUTO_INCREMENT,
  `idf` int(11) NOT NULL,
  `idgen` int(11) NOT NULL,
  PRIMARY KEY (`idfgen`),
  KEY `films_genres_idf_FK` (`idf`),
  KEY `films_genres_idgen_FK` (`idgen`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `films_genres`:
--

--
-- Dumping data for table `films_genres`
--

INSERT INTO `films_genres` (`idfgen`, `idf`, `idgen`) VALUES
(1, 2, 1),
(2, 3, 3),
(3, 4, 3),
(4, 4, 5),
(5, 5, 3),
(6, 6, 3),
(7, 6, 5),
(8, 7, 1),
(9, 8, 3),
(10, 9, 3),
(11, 10, 3),
(12, 11, 3),
(13, 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `idgen` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idgen`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `genres`:
--

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`idgen`, `nom`) VALUES
(1, 'Animation'),
(3, 'Comédie'),
(5, 'Action'),
(6, 'Fantaisie');

-- --------------------------------------------------------

--
-- Stand-in structure for view `meillfilm`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `meillfilm`;
CREATE TABLE IF NOT EXISTS `meillfilm` (
`titre` varchar(50)
,`filmlist` bigint(21)
,`somme` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `idm` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datnais` date DEFAULT NULL,
  `datinsc` date DEFAULT NULL,
  PRIMARY KEY (`idm`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `membres`:
--

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`idm`, `prenom`, `nom`, `datnais`, `datinsc`) VALUES
(1, 'Mike', 'Myers', '2000-01-01', '2018-01-01'),
(2, 'Benny', 'Hill', '1965-03-10', '2017-02-11'),
(3, 'Jim', 'Carrey', '1966-05-08', '2016-01-01'),
(4, 'Simon', 'Todd', '1960-06-09', '2017-08-12'),
(5, 'Maksim', 'Kotau', '1981-09-28', '2018-03-03');

-- --------------------------------------------------------

--
-- Stand-in structure for view `resultsem`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `resultsem`;
CREATE TABLE IF NOT EXISTS `resultsem` (
`prenom` varchar(50)
,`nom` varchar(50)
,`somme` decimal(32,2)
,`nombrefilms` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `idm` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_idm_FK` (`idm`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `users`:
--   `idm`
--       `membres` -> `idm`
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `idm`) VALUES
(1, 'michael', 'memilien01@yahoo.com', '0f569b4cf5eb2687b6dbde10e19d2421', 1),
(2, 'mihomax', 'mihomax@yahoo.com', '74bbfa7c9c5dc0eb74a3df67b6015c31', 2),
(3, 'william', 'william@yahoo.com', 'fd820a2b4461bddd116c1518bc4b0f77', 3),
(5, 'admin@admin.ca', 'admin@admin.ca', 'b51144511fc2a3042baf068878e04bad', 4),
(7, 'maxkotov', 'maxkotov@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ventes`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `ventes`;
CREATE TABLE IF NOT EXISTS `ventes` (
`datach` date
,`nombrefilms` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `meillfilm`
--
DROP TABLE IF EXISTS `meillfilm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `meillfilm`  AS  select `films`.`titre` AS `titre`,count(`films_achats`.`idf`) AS `filmlist`,sum(`films`.`prix`) AS `somme` from ((`films` join `films_achats`) join `achats`) where ((`achats`.`datach` >= (curdate() - interval (dayofweek(curdate()) + 6) day)) and (`films`.`idf` = `films_achats`.`idf`) and (`films_achats`.`idach` = `achats`.`idach`) and (`achats`.`idach` = `films_achats`.`idach`)) group by `films`.`titre` ;

-- --------------------------------------------------------

--
-- Structure for view `resultsem`
--
DROP TABLE IF EXISTS `resultsem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `resultsem`  AS  select `membres`.`prenom` AS `prenom`,`membres`.`nom` AS `nom`,sum(`films`.`prix`) AS `somme`,count(`achats`.`idach`) AS `nombrefilms` from (((`membres` join `films`) join `achats`) join `films_achats`) where ((`achats`.`datach` >= (curdate() - interval (dayofweek(curdate()) + 6) day)) and (`membres`.`idm` = `achats`.`idm`) and (`films`.`idf` = `films_achats`.`idf`) and (`achats`.`idach` = `films_achats`.`idach`)) group by `achats`.`idm` ;

-- --------------------------------------------------------

--
-- Structure for view `ventes`
--
DROP TABLE IF EXISTS `ventes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ventes`  AS  select `achats`.`datach` AS `datach`,count(`films_achats`.`idf`) AS `nombrefilms` from (`achats` join `films_achats`) where ((`achats`.`datach` >= (curdate() - interval (dayofweek(curdate()) + 30) day)) and (`achats`.`idach` = `films_achats`.`idach`)) group by `achats`.`datach` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_idm_FK` FOREIGN KEY (`idm`) REFERENCES `membres` (`idm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
