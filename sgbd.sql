-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2023 at 10:18 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sgbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `culori`
--

DROP TABLE IF EXISTS `culori`;
CREATE TABLE IF NOT EXISTS `culori` (
  `id_culoare` int NOT NULL AUTO_INCREMENT,
  `nume_culoare` varchar(50) NOT NULL,
  `grad_culoare` int NOT NULL,
  `id_opacitate` int NOT NULL,
  `id_metalizare` int NOT NULL,
  `cod_marca` int NOT NULL,
  PRIMARY KEY (`id_culoare`),
  KEY `id_opacitate` (`id_opacitate`),
  KEY `id_metalizare` (`id_metalizare`),
  KEY `cod_marca` (`cod_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `culori`
--

INSERT INTO `culori` (`id_culoare`, `nume_culoare`, `grad_culoare`, `id_opacitate`, `id_metalizare`, `cod_marca`) VALUES
(1, 'albastru', 78, 5, 1, 1),
(2, 'albastru', 34, 1, 5, 1),
(3, 'albastru', 81, 4, 3, 2),
(4, 'albastru', 53, 2, 2, 2),
(5, 'negru', 99, 1, 5, 3),
(6, 'rosu', 66, 6, 5, 4),
(7, 'gri', 33, 3, 4, 4),
(8, 'alb', 47, 2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dimensiuni`
--

DROP TABLE IF EXISTS `dimensiuni`;
CREATE TABLE IF NOT EXISTS `dimensiuni` (
  `id_dimensiune` int NOT NULL AUTO_INCREMENT,
  `greutate` float NOT NULL,
  `latime` float NOT NULL,
  `inaltime` float NOT NULL,
  `lungime` float NOT NULL,
  `volum_portbagaj` float NOT NULL,
  PRIMARY KEY (`id_dimensiune`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dimensiuni`
--

INSERT INTO `dimensiuni` (`id_dimensiune`, `greutate`, `latime`, `inaltime`, `lungime`, `volum_portbagaj`) VALUES
(1, 2588, 1746, 1534, 4020, 0),
(2, 2470, 1732, 1467, 3997, 0),
(3, 1730, 1847, 1493, 4762, 0),
(4, 1690, 1847, 1428, 4762, 0),
(5, 0, 1827, 1463, 4829, 0),
(6, 0, 1828, 1508, 4824, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dotari`
--

DROP TABLE IF EXISTS `dotari`;
CREATE TABLE IF NOT EXISTS `dotari` (
  `id_dotare` int NOT NULL AUTO_INCREMENT,
  `tip_dotare` varchar(50) NOT NULL,
  PRIMARY KEY (`id_dotare`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dotari`
--

INSERT INTO `dotari` (`id_dotare`, `tip_dotare`) VALUES
(1, 'aer_conditionat_manual'),
(2, 'aer_conditionat_automat'),
(3, 'tapiterie_piele'),
(4, 'computer_bord'),
(5, 'onglizi_heliomate'),
(6, 'ABS');

-- --------------------------------------------------------

--
-- Table structure for table `istoric_vanzari`
--

DROP TABLE IF EXISTS `istoric_vanzari`;
CREATE TABLE IF NOT EXISTS `istoric_vanzari` (
  `cod_vanzari` int NOT NULL AUTO_INCREMENT,
  `nr_vanzari` int NOT NULL,
  `luna_vanzari` int NOT NULL,
  `an_vanzari` int NOT NULL,
  PRIMARY KEY (`cod_vanzari`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `istoric_vanzari`
--

INSERT INTO `istoric_vanzari` (`cod_vanzari`, `nr_vanzari`, `luna_vanzari`, `an_vanzari`) VALUES
(1, 2356487, 12, 2020),
(2, 1234567, 5, 2017),
(3, 271003, 10, 2011),
(4, 578963421, 3, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `marci`
--

DROP TABLE IF EXISTS `marci`;
CREATE TABLE IF NOT EXISTS `marci` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nume_marca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `an_fabricare_marca` int NOT NULL,
  `cod_sediu` int NOT NULL,
  PRIMARY KEY (`id_marca`),
  KEY `cod_sediu` (`cod_sediu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `marci`
--

INSERT INTO `marci` (`id_marca`, `nume_marca`, `an_fabricare_marca`, `cod_sediu`) VALUES
(1, 'ford', 1913, 1),
(2, 'bmw', 1928, 2),
(3, 'dacia', 1968, 3),
(4, 'audi', 1915, 4),
(5, 'renault', 1906, 5),
(6, 'skoda', 1929, 6);

-- --------------------------------------------------------

--
-- Table structure for table `metalizate`
--

DROP TABLE IF EXISTS `metalizate`;
CREATE TABLE IF NOT EXISTS `metalizate` (
  `id_metalizare` int NOT NULL AUTO_INCREMENT,
  `grad_metalizare` int NOT NULL,
  PRIMARY KEY (`id_metalizare`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `metalizate`
--

INSERT INTO `metalizate` (`id_metalizare`, `grad_metalizare`) VALUES
(1, 13),
(2, 7),
(3, 19),
(4, 34),
(5, 97),
(6, 26);

-- --------------------------------------------------------

--
-- Table structure for table `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `id_model` int NOT NULL AUTO_INCREMENT,
  `nume_model` varchar(50) NOT NULL,
  `cod_vanzari` int NOT NULL,
  `cod_productie` int NOT NULL,
  `id_marca` int NOT NULL,
  PRIMARY KEY (`id_model`),
  KEY `cod_vanzari` (`cod_vanzari`),
  KEY `cod_productie` (`cod_productie`),
  KEY `id_marca` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `modele`
--

INSERT INTO `modele` (`id_model`, `nume_model`, `cod_vanzari`, `cod_productie`, `id_marca`) VALUES
(1, 'sandero', 1, 1, 5),
(2, 'fabia', 2, 2, 6),
(3, 'B9', 2, 3, 4),
(4, 'seria 3', 3, 4, 2),
(5, 'grand tourism', 1, 1, 2),
(6, 'fiesta', 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modele_carose`
--

DROP TABLE IF EXISTS `modele_carose`;
CREATE TABLE IF NOT EXISTS `modele_carose` (
  `id_modcar` int NOT NULL,
  `id_car` int NOT NULL,
  `id_mo` int NOT NULL,
  KEY `id_car` (`id_car`),
  KEY `id_mo` (`id_mo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modele_dimensiuni`
--

DROP TABLE IF EXISTS `modele_dimensiuni`;
CREATE TABLE IF NOT EXISTS `modele_dimensiuni` (
  `id_mod_dim` int NOT NULL AUTO_INCREMENT,
  `id_m` int NOT NULL,
  `id_di` int NOT NULL,
  PRIMARY KEY (`id_mod_dim`),
  KEY `id_di` (`id_di`),
  KEY `id_m` (`id_m`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `modele_dimensiuni`
--

INSERT INTO `modele_dimensiuni` (`id_mod_dim`, `id_m`, `id_di`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `modele_dotari`
--

DROP TABLE IF EXISTS `modele_dotari`;
CREATE TABLE IF NOT EXISTS `modele_dotari` (
  `id_mod_dot` int NOT NULL AUTO_INCREMENT,
  `id_mod` int NOT NULL,
  `id_dot` int NOT NULL,
  `suplimentar` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_mod_dot`),
  KEY `id_mod` (`id_mod`),
  KEY `id_dor` (`id_dot`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `modele_dotari`
--

INSERT INTO `modele_dotari` (`id_mod_dot`, `id_mod`, `id_dot`, `suplimentar`) VALUES
(1, 1, 2, 0),
(2, 2, 3, 0),
(3, 3, 1, 1),
(4, 4, 5, 0),
(5, 5, 4, 1),
(6, 6, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modele_motoare`
--

DROP TABLE IF EXISTS `modele_motoare`;
CREATE TABLE IF NOT EXISTS `modele_motoare` (
  `id_mod_mot` int NOT NULL AUTO_INCREMENT,
  `id_mode` int NOT NULL,
  `cod_mot` int NOT NULL,
  PRIMARY KEY (`id_mod_mot`),
  KEY `id_mode` (`id_mode`),
  KEY `cod_mot` (`cod_mot`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `modele_motoare`
--

INSERT INTO `modele_motoare` (`id_mod_mot`, `id_mode`, `cod_mot`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 1),
(6, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `motoare`
--

DROP TABLE IF EXISTS `motoare`;
CREATE TABLE IF NOT EXISTS `motoare` (
  `cod_motor` int NOT NULL AUTO_INCREMENT,
  `nume_motor` varchar(50) NOT NULL,
  `distributie` varchar(50) NOT NULL,
  `putere` float NOT NULL,
  `nr_cilindri` int NOT NULL,
  `tip_motor` varchar(50) NOT NULL,
  `id_tipuri` int NOT NULL,
  PRIMARY KEY (`cod_motor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `motoare`
--

INSERT INTO `motoare` (`cod_motor`, `nume_motor`, `distributie`, `putere`, `nr_cilindri`, `tip_motor`, `id_tipuri`) VALUES
(1, 'motorina', '2011', 255, 5, 'curea', 0),
(2, 'benzina', '2007', 300, 6, 'lant', 0),
(3, 'electrica', '2021', 210, 5, 'curea', 0),
(4, 'hibrid', '2022', 230, 4, 'curea', 0);

-- --------------------------------------------------------

--
-- Table structure for table `opace`
--

DROP TABLE IF EXISTS `opace`;
CREATE TABLE IF NOT EXISTS `opace` (
  `id_opacitate` int NOT NULL AUTO_INCREMENT,
  `grad_opacitate` int NOT NULL,
  `grad_luciu` int NOT NULL,
  PRIMARY KEY (`id_opacitate`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `opace`
--

INSERT INTO `opace` (`id_opacitate`, `grad_opacitate`, `grad_luciu`) VALUES
(1, 12, 12),
(2, 24, 56),
(3, 13, 17),
(4, 18, 25),
(5, 54, 99),
(6, 87, 3);

-- --------------------------------------------------------

--
-- Table structure for table `productii`
--

DROP TABLE IF EXISTS `productii`;
CREATE TABLE IF NOT EXISTS `productii` (
  `cod_productie` int NOT NULL AUTO_INCREMENT,
  `an_incep_prod` int NOT NULL,
  `an_incet_prod` int NOT NULL,
  `an_fabricatie` int NOT NULL,
  PRIMARY KEY (`cod_productie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productii`
--

INSERT INTO `productii` (`cod_productie`, `an_incep_prod`, `an_incet_prod`, `an_fabricatie`) VALUES
(1, 2018, 2020, 2019),
(2, 2016, 2021, 2019),
(3, 2011, 2016, 2016),
(4, 2010, 2020, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `sedii`
--

DROP TABLE IF EXISTS `sedii`;
CREATE TABLE IF NOT EXISTS `sedii` (
  `cod_sediu` int NOT NULL AUTO_INCREMENT,
  `localitate` varchar(50) NOT NULL,
  `nr_telefon` varchar(50) NOT NULL,
  `site_web` varchar(255) NOT NULL,
  PRIMARY KEY (`cod_sediu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sedii`
--

INSERT INTO `sedii` (`cod_sediu`, `localitate`, `nr_telefon`, `site_web`) VALUES
(1, 'Michigan', '07222563445', 'https://www.ford.ro/autoturisme'),
(2, 'Pitesti', '0725564255', 'https://www.dacia.ro/'),
(3, 'Munchen', '0733264587', 'https://www.bmw.ro/ro/index.html'),
(4, 'Ingolstadt', '0735448963', 'https://www.audi.com/en.html'),
(5, 'Bucuresti', '0725489333178', 'https://www.renault.ro/contact.html'),
(6, 'Timisoara', '0789456631211', 'https://skoda-timisoara.ro/despre-noi/');

-- --------------------------------------------------------

--
-- Table structure for table `senzori`
--

DROP TABLE IF EXISTS `senzori`;
CREATE TABLE IF NOT EXISTS `senzori` (
  `id_senzori` int NOT NULL AUTO_INCREMENT,
  `nr_senzori` int NOT NULL,
  `tip_senzori` varchar(50) NOT NULL,
  `id_dotare` int NOT NULL,
  PRIMARY KEY (`id_senzori`),
  KEY `id_dotare` (`id_dotare`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `senzori`
--

INSERT INTO `senzori` (`id_senzori`, `nr_senzori`, `tip_senzori`, `id_dotare`) VALUES
(1, 4, 'parcare', 2),
(2, 2, 'ulei', 1),
(3, 2, 'parcare', 4),
(4, 2, 'ulei', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tipuri_caroserii`
--

DROP TABLE IF EXISTS `tipuri_caroserii`;
CREATE TABLE IF NOT EXISTS `tipuri_caroserii` (
  `id_car` int NOT NULL AUTO_INCREMENT,
  `nume_caroserie` varchar(255) NOT NULL,
  `an_platforma` int NOT NULL,
  PRIMARY KEY (`id_car`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tipuri_caroserii`
--

INSERT INTO `tipuri_caroserii` (`id_car`, `nume_caroserie`, `an_platforma`) VALUES
(1, 'monovolum', 2012),
(2, 'berlina', 2010),
(3, 'monovolum', 2007),
(4, 'berlina', 2022),
(5, 'break', 2009),
(6, 'break', 2019),
(7, 'pick-up', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `tipuri_motoare`
--

DROP TABLE IF EXISTS `tipuri_motoare`;
CREATE TABLE IF NOT EXISTS `tipuri_motoare` (
  `id_tip_mo` int NOT NULL AUTO_INCREMENT,
  `cod_m1` int NOT NULL,
  `serie_sasiu` int NOT NULL,
  PRIMARY KEY (`id_tip_mo`),
  KEY `cod_m1` (`cod_m1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `culori`
--
ALTER TABLE `culori`
  ADD CONSTRAINT `cod_marca` FOREIGN KEY (`cod_marca`) REFERENCES `marci` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_metalizare` FOREIGN KEY (`id_metalizare`) REFERENCES `metalizate` (`id_metalizare`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_opacitate` FOREIGN KEY (`id_opacitate`) REFERENCES `opace` (`id_opacitate`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marci`
--
ALTER TABLE `marci`
  ADD CONSTRAINT `cod_sediu` FOREIGN KEY (`cod_sediu`) REFERENCES `sedii` (`cod_sediu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modele`
--
ALTER TABLE `modele`
  ADD CONSTRAINT `cod_productie` FOREIGN KEY (`cod_productie`) REFERENCES `productii` (`cod_productie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cod_vanzari` FOREIGN KEY (`cod_vanzari`) REFERENCES `istoric_vanzari` (`cod_vanzari`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_marca` FOREIGN KEY (`id_marca`) REFERENCES `marci` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modele_carose`
--
ALTER TABLE `modele_carose`
  ADD CONSTRAINT `id_car` FOREIGN KEY (`id_car`) REFERENCES `tipuri_caroserii` (`id_car`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `id_mo` FOREIGN KEY (`id_mo`) REFERENCES `modele` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modele_dimensiuni`
--
ALTER TABLE `modele_dimensiuni`
  ADD CONSTRAINT `id_di` FOREIGN KEY (`id_di`) REFERENCES `dimensiuni` (`id_dimensiune`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_m` FOREIGN KEY (`id_m`) REFERENCES `modele` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modele_dotari`
--
ALTER TABLE `modele_dotari`
  ADD CONSTRAINT `id_dor` FOREIGN KEY (`id_dot`) REFERENCES `dotari` (`id_dotare`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_mod` FOREIGN KEY (`id_mod`) REFERENCES `modele` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modele_motoare`
--
ALTER TABLE `modele_motoare`
  ADD CONSTRAINT `cod_mot` FOREIGN KEY (`cod_mot`) REFERENCES `motoare` (`cod_motor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_mode` FOREIGN KEY (`id_mode`) REFERENCES `modele` (`id_model`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `senzori`
--
ALTER TABLE `senzori`
  ADD CONSTRAINT `id_dotare` FOREIGN KEY (`id_dotare`) REFERENCES `dotari` (`id_dotare`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tipuri_motoare`
--
ALTER TABLE `tipuri_motoare`
  ADD CONSTRAINT `cod_m1` FOREIGN KEY (`cod_m1`) REFERENCES `motoare` (`cod_motor`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
