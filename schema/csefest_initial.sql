-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2013 at 10:52 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csefest`
--

-- --------------------------------------------------------

--
-- Table structure for table `acm_teams`
--

CREATE TABLE IF NOT EXISTS `acm_teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) NOT NULL,
  `registration_date_time` datetime NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_name` (`team_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `acm_teams`
--

INSERT INTO `acm_teams` (`team_id`, `team_name`, `registration_date_time`, `status`) VALUES
(1, 'Kaktarua', '2013-02-02 09:00:00', 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `acm_team_members`
--

CREATE TABLE IF NOT EXISTS `acm_team_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `batch` varchar(2) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` varchar(70) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `acm_team_members`
--

INSERT INTO `acm_team_members` (`member_id`, `team_id`, `batch`, `student_id`, `name`, `email`, `department`, `phone`, `address`) VALUES
(1, 1, '0', 'St1', 'name1', 'mc65799@gmail.com', '', 'phone1', 'n hs ascas'),
(2, 1, '08', 'st2', 'name2', 'mc65799@gmail.com', '', 'phone2', 'sdsad\r\nsadasd'),
(3, 1, '08', 'st3', 'name3', 'c_maksud@outlook.com', '', 'phone3', 'asdsd\r\nsadasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE IF NOT EXISTS `alumni` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bsadd_contests`
--

CREATE TABLE IF NOT EXISTS `bsadd_contests` (
  `contest_id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(30) NOT NULL,
  `last_date_time` datetime NOT NULL,
  `ranklist` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contest_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bsadd_contests`
--

INSERT INTO `bsadd_contests` (`contest_id`, `field`, `last_date_time`, `ranklist`) VALUES
(1, 'PHP', '2013-02-04 16:30:00', NULL),
(2, 'Android', '2013-02-04 16:30:00', NULL),
(3, 'Windows ', '2013-02-04 16:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bsadd_contest_teams`
--

CREATE TABLE IF NOT EXISTS `bsadd_contest_teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `session` varchar(10) NOT NULL,
  `registration_date_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `payment_status` int(11) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `bsadd_contest_teams`
--

INSERT INTO `bsadd_contest_teams` (`team_id`, `contest_id`, `team_name`, `institution`, `department`, `session`, `registration_date_time`, `status`, `payment_status`) VALUES
(1, 1, 'PHP_Team_1', 'BUET', 'CSE', '2008', '2013-02-03 13:00:00', 'registered', 1),
(2, 1, 'PHP_Team_2', 'BUET', 'CSE', '2008', '2013-02-03 13:00:00', 'registered', 0),
(3, 1, 'PHP_Team_3', 'BUET', 'CSE', '2008', '2013-02-03 13:00:00', 'registered', 0),
(4, 1, 'PHP_Team_4', 'DU', 'CSE', '2009', '2013-02-03 14:17:00', 'registered', 1),
(5, 2, 'Android_Team_1', 'BUET', 'CSE', '2008', '2013-02-03 13:00:00', 'registered', 0),
(6, 2, 'Android_Team_2', 'BUET', 'CSE', '2009', '2013-02-03 15:00:00', 'registered', 1),
(7, 2, 'Adroid_Team_3', 'BUET', 'CSE', '2010', '2013-02-03 16:00:00', 'registered', 1),
(8, 2, 'Adroid_Team_4', 'BUET', 'CSE', '2009', '2013-02-03 08:00:00', 'registered', 1),
(9, 3, 'Windows_Team_1', 'BUET', 'CSE', '2009', '2013-02-03 10:00:00', 'registered', 1),
(10, 3, 'Windows_Team_2', 'BUET', 'CSE', '2009', '2013-02-03 09:00:00', 'registered', 1),
(11, 3, 'Windows_Team_3', 'JU', 'CSE', '2008', '2013-02-03 05:00:00', 'registered', 1),
(12, 3, 'Windows_Team_4', 'JU', 'CSE', '2009', '2013-02-03 07:00:00', 'registered', 1),
(20, 1, 'team1', 'Dummy', 'Dummy', '2008', '2013-02-02 07:00:00', 'registered', 0),
(18, 2, 'team1', 'Dummy', 'Dummy', '2008', '2013-02-02 03:00:00', 'registered', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bsadd_contest_team_members`
--

CREATE TABLE IF NOT EXISTS `bsadd_contest_team_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `bsadd_contest_team_members`
--

INSERT INTO `bsadd_contest_team_members` (`member_id`, `team_id`, `student_id`, `name`, `email`, `phone`, `address`) VALUES
(1, 1, '0805001', 'Tanveer Ahmed', 'takhandipu@yahoo.com', '01520080138', 'lmflksmdklm fklsmd ds\r\nfszfdfdsfdsffsdvfd'),
(2, 1, '0805030', 'Azad', 'azadsalam2611@gmail.com', '+8801912349701', 'mgkldfmkld fklb\r\nfdbfdbdfbd\r\nfbfdbdfbdfbdfbdf'),
(3, 1, '0805023', 'kamrul Hasan', 'c_maksud@yahoo.com', '01520080138', 'klmgklmf lvmdfv\r\nf\r\nvfvdfvdf\r\nvdf\r\nv\r\ndfvdf\r\nv\r\nfv\r\ndf\r\nv'),
(22, 20, 'St1', 'name1', 'mc65799@gmail.com', 'phone1', 'lasnfansf\r\nasfasfsa'),
(19, 18, 'St1', 'name1', 'email1', 'phone1', 'kasjklasn\r\nasfsdfds'),
(20, 18, 'st2', 'name2', 'email2', 'phone2', 'ksfnjkbfkjwe\r\nwefwefwefwef'),
(21, 18, 'st3', 'name3', 'email3', 'phone3', 'klkandlnlk\r\nwqfqwqqw'),
(23, 20, 'st2', 'name2', 'mc65799@gmail.com', 'phone2', 'sakfk ksdb fk\r\nsdfdfsd\r\n'),
(24, 20, 'st3', 'name3', 'c_maksud@outlook.com', 'phone3', 'sjf jasa\r\nfasfasf');

-- --------------------------------------------------------

--
-- Table structure for table `online_games`
--

CREATE TABLE IF NOT EXISTS `online_games` (
  `online_game_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`online_game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `online_game_members`
--

CREATE TABLE IF NOT EXISTS `online_game_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `online_game_id` int(11) NOT NULL,
  `student_id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `project_show_teams`
--

CREATE TABLE IF NOT EXISTS `project_show_teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) NOT NULL,
  `project_type` varchar(10) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `project_show_team_members`
--

CREATE TABLE IF NOT EXISTS `project_show_team_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE IF NOT EXISTS `sports` (
  `sport_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`sport_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sport_id`, `name`) VALUES
(1, 'Ludu'),
(2, 'Table Tennis');

-- --------------------------------------------------------

--
-- Table structure for table `sport_members`
--

CREATE TABLE IF NOT EXISTS `sport_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `sport_id` int(11) NOT NULL,
  `batch` varchar(2) DEFAULT NULL,
  `student_id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
