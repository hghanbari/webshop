-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 24, 2021 at 05:45 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `aanmelden`
--

DROP TABLE IF EXISTS `aanmelden`;
CREATE TABLE IF NOT EXISTS `aanmelden` (
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aanmelden`
--

INSERT INTO `aanmelden` (`email`, `password`) VALUES
('piet@worldonline.nl', 'doetje123'),
('klaas@carpets.nl', 'snoepje777'),
('truushendriks@wegweg.nl', 'arkiearkie201');

-- --------------------------------------------------------

--
-- Table structure for table `broodlist`
--

DROP TABLE IF EXISTS `broodlist`;
CREATE TABLE IF NOT EXISTS `broodlist` (
  `Bestanden` varchar(100) NOT NULL,
  `Omschrijving` varchar(100) NOT NULL,
  `Uitvoering` varchar(100) NOT NULL,
  `Categorie` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `broodlist`
--

INSERT INTO `broodlist` (`Bestanden`, `Omschrijving`, `Uitvoering`, `Categorie`) VALUES
('', 'jh', 'gkyk', 'kug'),
('', 'jh', 'gkyk', 'kug'),
('', 'gngfn', 'jfgn', 'gngm'),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cursist`
--

DROP TABLE IF EXISTS `cursist`;
CREATE TABLE IF NOT EXISTS `cursist` (
  `cursistnr` varchar(4) DEFAULT NULL,
  `naam` varchar(25) DEFAULT NULL,
  `roepnaam` varchar(25) DEFAULT NULL,
  `straat` varchar(25) DEFAULT NULL,
  `postcode` varchar(7) DEFAULT NULL,
  `plaats` varchar(25) DEFAULT NULL,
  `geslacht` varchar(1) DEFAULT NULL,
  `geb_datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cursist`
--

INSERT INTO `cursist` (`cursistnr`, `naam`, `roepnaam`, `straat`, `postcode`, `plaats`, `geslacht`, `geb_datum`) VALUES
('64', 'Broeken', 'Bram', 'Drimmelseweg 8', '4395 XX', 'Made', 'M', '1988-03-24'),
('88', 'Vos', 'Henk', 'Besbeemd 64', '4142 CE', 'Oosterhout', 'M', '1989-09-22'),
('2', 'Krimpen', 'Tanja', 'Tilburgseweg 2', '4222 BB', 'Goirle', 'V', '1990-02-08'),
('14', 'Norbart', 'Niels', 'Gershof 8', '4841 PL', 'Breda', 'M', '1987-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `cursus`
--

DROP TABLE IF EXISTS `cursus`;
CREATE TABLE IF NOT EXISTS `cursus` (
  `curs_code` varchar(8) DEFAULT NULL,
  `curs_plts` varchar(25) DEFAULT NULL,
  `curs_dat` date DEFAULT NULL,
  `omschr` varchar(25) DEFAULT NULL,
  `doc_code` varchar(2) DEFAULT NULL,
  `curs_prijs` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cursus`
--

INSERT INTO `cursus` (`curs_code`, `curs_plts`, `curs_dat`, `omschr`, `doc_code`, `curs_prijs`) VALUES
('DB3', 'Breda', '1993-12-04', 'Dbase III Plus', 'WI', '3300.00'),
('DB4', 'Etten', '1993-12-11', 'Dbase IV', 'HM', '3600.00'),
('OA2', 'Made', '1993-11-13', 'Open Access 2.1', 'PE', '2400.00'),
('OA3', 'Breda', '1993-11-13', 'Open Access 3.0', 'GR', '2600.00'),
('FW', 'Breda', '1993-11-20', 'Framework', 'WI', '850.00'),
('WP', 'Breda', '1993-11-20', 'Wordperfect', 'GR', '1450.00'),
('NO', 'Breda', '1993-12-06', 'Normaliseren', 'MO', '3000.00'),
('C++', 'Made', '1993-11-27', 'Programmeren in C++', 'MO', '1450.00');

-- --------------------------------------------------------

--
-- Table structure for table `c_regel`
--

DROP TABLE IF EXISTS `c_regel`;
CREATE TABLE IF NOT EXISTS `c_regel` (
  `curs_code` varchar(8) DEFAULT NULL,
  `cursistnr` varchar(4) DEFAULT NULL,
  `cijfer` decimal(2,0) DEFAULT NULL,
  `betaald` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_regel`
--

INSERT INTO `c_regel` (`curs_code`, `cursistnr`, `cijfer`, `betaald`) VALUES
('DB3', '64', '8', '3300.00'),
('DB3', '2', '6', NULL),
('DB3', '68', '9', '3300.00'),
('OA2', '14', '5', '2400.00'),
('OA2', '88', '7', '2000.00'),
('OA2', '2', '9', NULL),
('DB4', '14', '6', '3600.00');

-- --------------------------------------------------------

--
-- Table structure for table `docent`
--

DROP TABLE IF EXISTS `docent`;
CREATE TABLE IF NOT EXISTS `docent` (
  `doc_code` varchar(2) DEFAULT NULL,
  `doc_naam` varchar(25) DEFAULT NULL,
  `straat` varchar(25) DEFAULT NULL,
  `postcode` varchar(7) DEFAULT NULL,
  `plaats` varchar(25) DEFAULT NULL,
  `telefoon` varchar(12) DEFAULT NULL,
  `uurloon` decimal(5,2) DEFAULT NULL,
  `geb_datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `docent`
--

INSERT INTO `docent` (`doc_code`, `doc_naam`, `straat`, `postcode`, `plaats`, `telefoon`, `uurloon`, `geb_datum`) VALUES
('WI', 'Witlok', 'Madeseweg 8', '4841 PT', 'Oosterhout', '071-123378', '100.00', '1957-04-25'),
('HM', 'Hooymayers', 'Ignatiusstr 6', '4847 EZ', 'Breda', '076-442786', '200.00', '1952-09-01'),
('GR', 'Grond', 'Bolwerk 10', '4541 CC', 'Tilburg', '013-426786', '150.00', '1958-10-25'),
('PE', 'Peters', 'Breedonk 64', '4142 EC', 'Oosterhout', '01620-3429', '185.50', '1963-10-08'),
('SE', 'Sengers', 'Bredaseweg 2', '4344 DE', 'Bavel', NULL, '110.00', '1955-05-17'),
('MO', 'Mol', 'Waterstr 8', '4841 KA', 'Breda', '076-227788', '300.00', '1948-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `opleiding`
--

DROP TABLE IF EXISTS `opleiding`;
CREATE TABLE IF NOT EXISTS `opleiding` (
  `opleidingscode` varchar(3) NOT NULL,
  `naam` varchar(30) DEFAULT NULL,
  `niveau` char(1) DEFAULT NULL,
  PRIMARY KEY (`opleidingscode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opleiding`
--

INSERT INTO `opleiding` (`opleidingscode`, `naam`, `niveau`) VALUES
('AO', 'ApplicatieOntwikkeling', '4'),
('DT2', 'DeskTopPublising', '2'),
('DT3', 'DeskTopPublising', '3'),
('IB', 'ICT Beheerder', '4'),
('MBI', 'Medewerker Beheer ICT', '3'),
('MV', ' MediaVormgeving', '4');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `studentnr` varchar(5) NOT NULL,
  `roepnaam` varchar(10) DEFAULT NULL,
  `voorletters` varchar(10) DEFAULT NULL,
  `tussenvoegsels` varchar(8) DEFAULT NULL,
  `achternaam` varchar(25) DEFAULT NULL,
  `adres` varchar(25) DEFAULT NULL,
  `postcode` varchar(7) DEFAULT NULL,
  `woonplaats` varchar(25) DEFAULT NULL,
  `geslacht` char(1) DEFAULT NULL,
  `telefoon` varchar(11) DEFAULT NULL,
  `geboortedatum` date DEFAULT NULL,
  `uitgeschreven` date DEFAULT NULL,
  `schoolgeld` decimal(6,2) DEFAULT NULL,
  `betaald` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`studentnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentnr`, `roepnaam`, `voorletters`, `tussenvoegsels`, `achternaam`, `adres`, `postcode`, `woonplaats`, `geslacht`, `telefoon`, `geboortedatum`, `uitgeschreven`, `schoolgeld`, `betaald`) VALUES
('1111', 'Piet', 'P', '', 'Pietersen', 'Pietstraat 2', '1111PP', 'Almere', 'm', '036-1234567', '1995-02-20', NULL, '500.00', '500.00'),
('1313', 'Janneke', 'J', '', 'Simonsen', 'Revestraat 2', '2222VR', 'Almere', 'v', '0365467890', '1995-04-10', NULL, '500.00', '200.00'),
('2121', 'Ton', 'T', 'Van', 'Zetten ', 'Revestraat 44', '2121VR', 'Almere', 'm', '0367654321', '1995-12-02', NULL, '500.00', '500.00'),
('2222', 'Jan', 'J', '', 'Jansen', 'Janstraat 34', '2222JJ', 'Almere', 'm', '036-9876543', '1995-11-20', NULL, '500.00', '500.00'),
('3232', 'Annemieke', 'A', 'de', 'Groot', ' Janstraat 33', '1533JJ', 'Zeewolde', 'v', '0368912765', '1995-10-03', NULL, '500.00', '500.00'),
('3333', 'Willem', 'W', '', 'Willemsen', 'Willemstraat 45', '3333WW', 'Almere', 'm', '', '1995-10-02', NULL, '200.00', '200.00'),
('4444', 'Berend', 'B', 'van der', 'Tol', 'Tolweg 10', '4444WE', 'Lelystad', 'm', '', '1994-04-03', NULL, '500.00', '0.00'),
('5555', 'Cynthia', 'C', 'de', 'Bruin', 'Almerestraat 10', '1553CW', 'Zeewolde', '', '066-5789431', '1996-05-05', NULL, '500.00', '300.00'),
('6666', 'Angelique', 'A', 'de', 'Hoed', 'Hoedenstraat 12', '1663LW', 'Lelystad', 'v', '032-0654378', '1998-06-06', NULL, '200.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `studentopleiding`
--

DROP TABLE IF EXISTS `studentopleiding`;
CREATE TABLE IF NOT EXISTS `studentopleiding` (
  `studentnr` varchar(5) DEFAULT NULL,
  `opleidingscode` varchar(3) DEFAULT NULL,
  `startdatum` date DEFAULT NULL,
  `einddatum` date DEFAULT NULL,
  `diploma` tinyint(1) DEFAULT '0',
  KEY `studentnr` (`studentnr`),
  KEY `opleidingscode` (`opleidingscode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentopleiding`
--

INSERT INTO `studentopleiding` (`studentnr`, `opleidingscode`, `startdatum`, `einddatum`, `diploma`) VALUES
('1111', 'AO', '2015-08-01', NULL, NULL),
('2222', 'MV', '2015-08-01', NULL, NULL),
('3333', 'DT3', '2015-08-01', NULL, NULL),
('4444', 'DT2', '2015-08-01', NULL, NULL),
('5555', 'MBI', '2015-08-01', NULL, NULL),
('6666', 'IB', '2015-08-01', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentopleiding`
--
ALTER TABLE `studentopleiding`
  ADD CONSTRAINT `studentopleiding_ibfk_1` FOREIGN KEY (`studentnr`) REFERENCES `student` (`studentnr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `studentopleiding_ibfk_2` FOREIGN KEY (`opleidingscode`) REFERENCES `opleiding` (`opleidingscode`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
