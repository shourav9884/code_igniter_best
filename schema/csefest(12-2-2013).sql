-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2013 at 08:01 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


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
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`) VALUES
(1, 'sujon335@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b');

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

--
-- Dumping data for table `alumni`
--


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
(3, 1, 'PHP_Team_3', 'BUET', 'CSE', '2008', '2013-02-04 16:00:00', 'registered', 0),
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
-- Table structure for table `bsadd_contest_winners`
--

CREATE TABLE IF NOT EXISTS `bsadd_contest_winners` (
  `contest_id` int(12) NOT NULL AUTO_INCREMENT,
  `first_team_name` varchar(50) NOT NULL,
  `second_team_name` varchar(50) NOT NULL,
  `third_team_name` varchar(50) NOT NULL,
  PRIMARY KEY (`contest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bsadd_contest_winners`
--

INSERT INTO `bsadd_contest_winners` (`contest_id`, `first_team_name`, `second_team_name`, `third_team_name`) VALUES
(1, 'PHP_Team_2', 'PHP_Team_2', 'PHP_Team_2'),
(2, 'Adroid_Team_3', 'Adroid_Team_3', 'Adroid_Team_3'),
(3, 'Windows_Team_4', 'Windows_Team_4', 'Windows_Team_4');

-- --------------------------------------------------------

--
-- Table structure for table `online_games`
--

CREATE TABLE IF NOT EXISTS `online_games` (
  `online_game_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`online_game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `online_games`
--


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

--
-- Dumping data for table `online_game_members`
--


-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `content`) VALUES
(1, 'hello', 'ICAgIA0KICAgICZsdDtodG1sJmd0Ow0KICAgICZsdDtoZWFkJmd0Ow0KICAgICAgICAmbHQ7dGl0bGUmZ3Q7Jmx0Oy90aXRsZT4NCiAgICAmbHQ7L2hlYWQmZ3Q7DQogICAgJmx0O2JvZHkmZ3Q7DQogDQogICBbcmVtb3ZlZF0NCiAgICBjaGFyIGFycltdOw0KICAgIGZ1bmN0aW9uIG5ld2EoKQ0KICAgIHsNCiAgICAgYWxlcnQmIzQwOydIb3cgZGFyZSB5b3UhIScmIzQxOzsNCiAgICB9DQogICAgZnVuY3Rpb24gbmV3YigpDQogICAgew0KICAgICAgICANCiAgICAgYXJyPXRleHQoKTsNCiAgICANCiAgICB9DQogICAgZnVuY3Rpb24gbmV3YygpDQogICAgew0KICAgIGFsZXJ0JiM0MDthcnImIzQxOzsNCiAgICB9DQogICBbcmVtb3ZlZF0NCiAgICZsdDtmb3JtJmd0Ow0KICAgICZsdDtpbnB1dCB0eXBlPSJidXR0b24iIHZhbHVlPSJ0b3VjaCBrb2lyYSBkZWtoIiAgJmd0Ow0KICAgJmx0Oy9mb3JtJmd0Ow0KICAgJmx0O2Zvcm0mZ3Q7DQogICAmbHQ7aW5wdXQgdHlwZT0idGV4dCIgdmFsdWU9Im5ldyIgDQogICAmbHQ7L2Zvcm0+DQogICAmbHQ7Zm9ybSZndDsNCiAgICAmbHQ7aW5wdXQgdHlwZT0iYnV0dG9uIiB2YWx1ZT0ibGF2IG5haSIgICZndDsNCiAgICZsdDsvZm9ybSZndDsNCiAgIA0KICZsdDsvYm9keSZndDsNCiZsdDsvaHRtbCZndDs='),
(2, 'new', 'ICAgICAgICAgDQogICAgJmx0O2h0bWwmZ3Q7DQogICAgJmx0O2hlYWQmZ3Q7DQogICAgICAgICZsdDt0aXRsZSZndDsmbHQ7L3RpdGxlPg0KICAgICZsdDsvaGVhZCZndDsNCiAgICAmbHQ7Ym9keSZndDsNCiANCiAgIHRoaXMgaXMgYSB0ZXN0IHBhZ2UNCiAmbHQ7L2JvZHkmZ3Q7DQombHQ7L2h0bWwmZ3Q7'),
(3, 'dummy', 'ICAgPCFET0NUWVBFIGh0bWw+DQombHQ7aHRtbCZndDsNCiAgICAmbHQ7aGVhZCZndDsNCiAgICAgICAgJmx0O3RpdGxlJmd0OyZsdDsvdGl0bGU+DQogICAgJmx0Oy9oZWFkJmd0Ow0KICAgICZsdDtib2R5Jmd0Ow0KIA0KICAgW3JlbW92ZWRdDQogICAgY2hhciBhcnJbXTsNCiAgICBmdW5jdGlvbiBuZXdhKCkNCiAgICB7DQogICAgIGFsZXJ0JiM0MDsnSG93IGRhcmUgeW91ISEnJiM0MTs7DQogICAgfQ0KICAgIGZ1bmN0aW9uIG5ld2IoKQ0KICAgIHsNCiAgICAgICAgDQogICAgIGFycj10ZXh0KCk7DQogICAgDQogICAgfQ0KICAgIGZ1bmN0aW9uIG5ld2MoKQ0KICAgIHsNCiAgICBhbGVydCYjNDA7YXJyJiM0MTs7DQogICAgfQ0KICAgW3JlbW92ZWRdDQogICAmbHQ7Zm9ybSZndDsNCiAgICAmbHQ7aW5wdXQgdHlwZT0iYnV0dG9uIiB2YWx1ZT0idG91Y2gga29pcmEgZGVraCIgICZndDsNCiAgICZsdDsvZm9ybSZndDsNCiAgICZsdDtmb3JtJmd0Ow0KICAgJmx0O2lucHV0IHR5cGU9InRleHQiIHZhbHVlPSJuZXciIA0KICAgJmx0Oy9mb3JtPg0KICAgJmx0O2Zvcm0mZ3Q7DQogICAgJmx0O2lucHV0IHR5cGU9ImJ1dHRvbiIgdmFsdWU9ImxhdiBuYWkiICAmZ3Q7DQogICAmbHQ7L2Zvcm0mZ3Q7DQogICANCiAmbHQ7L2JvZHkmZ3Q7DQombHQ7L2h0bWwmZ3Q7DQogICAgICANCiAgICA='),
(4, 'New', 'ICAgIDwhRE9DVFlQRSBodG1sPg0KJmx0O2h0bWwmZ3Q7DQogICAgJmx0O2hlYWQmZ3Q7DQogICAgICAgICZsdDt0aXRsZSZndDsmbHQ7L3RpdGxlPg0KICAgICZsdDsvaGVhZCZndDsNCiAgICAmbHQ7Ym9keSZndDsNCiANCiAgIFtyZW1vdmVkXQ0KICAgIGNoYXIgYXJyW107DQogICAgZnVuY3Rpb24gbmV3YSgpDQogICAgew0KICAgICBhbGVydCYjNDA7J0hvdyBkYXJlIHlvdSEhJyYjNDE7Ow0KICAgIH0NCiAgICBmdW5jdGlvbiBuZXdiKCkNCiAgICB7DQogICAgICAgIA0KICAgICBhcnI9dGV4dCgpOw0KICAgIA0KICAgIH0NCiAgICBmdW5jdGlvbiBuZXdjKCkNCiAgICB7DQogICAgYWxlcnQmIzQwO2FyciYjNDE7Ow0KICAgIH0NCiAgIFtyZW1vdmVkXQ0KICAgJmx0O2Zvcm0mZ3Q7DQogICAgJmx0O2lucHV0IHR5cGU9ImJ1dHRvbiIgdmFsdWU9InRvdWNoIGtvaXJhIGRla2giICAmZ3Q7DQogICAmbHQ7L2Zvcm0mZ3Q7DQogICAmbHQ7Zm9ybSZndDsNCiAgICZsdDtpbnB1dCB0eXBlPSJ0ZXh0IiB2YWx1ZT0ibmV3IiANCiAgICZsdDsvZm9ybT4NCiAgICZsdDtmb3JtJmd0Ow0KICAgICZsdDtpbnB1dCB0eXBlPSJidXR0b24iIHZhbHVlPSJsYXYgbmFpIiAgJmd0Ow0KICAgJmx0Oy9mb3JtJmd0Ow0KICAgDQogJmx0Oy9ib2R5Jmd0Ow0KJmx0Oy9odG1sJmd0Ow0KICAgICANCiAgICA='),
(5, 'image', 'ICAgICAgICAgDQogICAgPGltZyBzcmM9Imh0dHA6Ly9sb2NhbGhvc3QvYXBhY2hlX3BiMl9hbmkuZ2lmIi8+');

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

--
-- Dumping data for table `project_show_teams`
--


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

--
-- Dumping data for table `project_show_team_members`
--


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

--
-- Dumping data for table `sport_members`
--

