-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 26 jan. 2023 à 16:06
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionhotels`
--

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

DROP TABLE IF EXISTS `etablissement`;
CREATE TABLE IF NOT EXISTS `etablissement` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(60) DEFAULT NULL,
  `Ville` varchar(155) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `SuiteId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `Id` bigint(20) NOT NULL,
  `imges` int(11) NOT NULL,
  `SuiteId` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `suite`
--

DROP TABLE IF EXISTS `suite`;
CREATE TABLE IF NOT EXISTS `suite` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(155) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Prix` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateursuite`
--

DROP TABLE IF EXISTS `utilisateursuite`;
CREATE TABLE IF NOT EXISTS `utilisateursuite` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UtilisateurId` bigint(20) NOT NULL,
  `SuiteId` bigint(20) NOT NULL,
  `Debut` date NOT NULL,
  `Fin` date NOT NULL,
  `EstAnnulee` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
