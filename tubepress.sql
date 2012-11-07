-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2012 at 08:17 PM
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
  `paid` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`feature_id`),
  UNIQUE KEY `internal_slug` (`internal_slug`),
  KEY `version_id_introduced` (`version_id_introduced`),
  KEY `version_id_deprecated` (`version_id_deprecated`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`feature_id`, `internal_desc`, `internal_slug`, `long_desc`, `version_id_introduced`, `version_id_deprecated`, `group_id`, `applies_to_pro`, `applies_to_youtube`, `applies_to_vimeo`, `applies_to_bliptv`, `applies_to_wix_free`, `applies_to_wix_paid`, `applies_to_downloadable_addon`, `paid`) VALUES
(26, 'Gallery source: YouTube favorites', 'gallery-source-youtube-favorites', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 'Gallery source: YouTube playlist', 'gallery-source-youtube-playlist', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 'Gallery source: YouTube search', 'gallery-source-youtube-search', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 'Combine multiple video sources', 'multiple-video-sources', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 'Player location: TinyBox', 'player-location-tinybox', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 'Environment: WordPress templates', 'environment-wordpress-templates', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 'Ajax pagination', 'thumbnails-ajax-pagination', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 'Player location: FancyBox', 'player-location-fancybox', '', 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
(1, 'gallery'),
(2, 'player'),
(3, 'thumbnails');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE IF NOT EXISTS `versions` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(11) NOT NULL,
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`version_id`, `version`) VALUES
(1, '1.0.0'),
(2, '1.0.1'),
(3, '1.0.2'),
(4, '1.1.0'),
(5, '1.1.3'),
(6, '2.0.1');

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
