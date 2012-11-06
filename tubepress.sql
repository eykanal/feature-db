-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2012 at 08:42 PM
-- Server version: 5.5.21
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tubepress`
--
CREATE DATABASE `tubepress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tubepress`;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE IF NOT EXISTS `features` (
  `feature_id` int(11) NOT NULL AUTO_INCREMENT,
  `internal_desc` varchar(255) NOT NULL,
  `internal_slug` varchar(255) NOT NULL,
  `long_desc` longtext,
  `version_id_introduced` int(11) DEFAULT NULL,
  `version_id_deprecated` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `applies_to_pro` tinyint(4) NOT NULL,
  `applies_to_youtube` tinyint(4) DEFAULT NULL,
  `applies_to_vimeo` tinyint(4) DEFAULT NULL,
  `applies_to_bliptv` tinyint(4) DEFAULT NULL,
  `applies_to_wix_free` tinyint(4) DEFAULT NULL,
  `applies_to_wix_paid` tinyint(4) DEFAULT NULL,
  `applies_to_downloadable_addon` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`feature_id`),
  UNIQUE KEY `internal_slug` (`internal_slug`),
  KEY `version_id_introduced` (`version_id_introduced`),
  KEY `version_id_deprecated` (`version_id_deprecated`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE IF NOT EXISTS `versions` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(11) NOT NULL,
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_ibfk_1` FOREIGN KEY (`version_id_introduced`) REFERENCES `versions` (`version_id`),
  ADD CONSTRAINT `features_ibfk_2` FOREIGN KEY (`version_id_deprecated`) REFERENCES `versions` (`version_id`),
  ADD CONSTRAINT `features_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
