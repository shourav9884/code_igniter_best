-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2013 at 02:32 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `acm_teams`
--

INSERT INTO `acm_teams` (`team_id`, `team_name`, `registration_date_time`, `status`) VALUES
(1, 'Kaktarua', '2013-02-02 09:00:00', 'registered'),
(2, 'BUEt', '2013-02-14 12:00:00', 'registered');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `acm_team_members`
--

INSERT INTO `acm_team_members` (`member_id`, `team_id`, `batch`, `student_id`, `name`, `email`, `department`, `phone`, `address`) VALUES
(1, 1, '0', 'St1', 'name1', 'mc65799@gmail.com', '', 'phone1', 'n hs ascas'),
(2, 1, '08', 'st2', 'name2', 'mc65799@gmail.com', '', 'phone2', 'sdsad\r\nsadasd'),
(3, 1, '08', 'st3', 'name3', 'c_maksud@outlook.com', '', 'phone3', 'asdsd\r\nsadasdasd'),
(4, 2, '0', 'St1', 'name1', 'email1', '', 'phone1', 'sadasdsadasda'),
(5, 2, '08', 'st2', 'name2', 'email2', '', 'phone2', 'sadsadasd'),
(6, 2, '09', 'st3', 'name3', 'email3', '', 'phone3', 'sadasdsadasd');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `bsadd_contests`
--

INSERT INTO `bsadd_contests` (`contest_id`, `field`, `last_date_time`, `ranklist`) VALUES
(1, 'PHP', '2013-02-04 16:30:00', NULL),
(2, 'Android', '2013-02-04 16:30:00', NULL),
(3, 'Windows ', '2013-02-04 16:30:00', NULL),
(4, 'project_show', '2013-02-20 08:12:08', NULL),
(5, 'acm', '2013-02-20 00:00:00', NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

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
(18, 2, 'team1', 'Dummy', 'Dummy', '2008', '2013-02-02 03:00:00', 'registered', 0),
(21, 3, 'team1', 'Dummy', 'Dummy', '2008', '2013-02-14 11:00:00', 'registered', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

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
(24, 20, 'st3', 'name3', 'c_maksud@outlook.com', 'phone3', 'sjf jasa\r\nfasfasf'),
(25, 21, 'St1', 'name1', 'email1', '', ''),
(26, 21, '', '', '', '', ''),
(27, 21, '', '', '', '', '');

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
(1, 'PHP_Team_1', 'PHP_Team_1', 'PHP_Team_1'),
(2, 'Android_Team_2', 'Android_Team_1', 'Android_Team_1'),
(3, 'Windows_Team_2', 'Windows_Team_3', 'Windows_Team_3');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `content`) VALUES
(1, 'hello', 'ICAgIA0KICAgICZsdDtodG1sJmd0Ow0KICAgICZsdDtoZWFkJmd0Ow0KICAgICAgICAmbHQ7dGl0bGUmZ3Q7Jmx0Oy90aXRsZT4NCiAgICAmbHQ7L2hlYWQmZ3Q7DQogICAgJmx0O2JvZHkmZ3Q7DQogDQogICBbcmVtb3ZlZF0NCiAgICBjaGFyIGFycltdOw0KICAgIGZ1bmN0aW9uIG5ld2EoKQ0KICAgIHsNCiAgICAgYWxlcnQmIzQwOydIb3cgZGFyZSB5b3UhIScmIzQxOzsNCiAgICB9DQogICAgZnVuY3Rpb24gbmV3YigpDQogICAgew0KICAgICAgICANCiAgICAgYXJyPXRleHQoKTsNCiAgICANCiAgICB9DQogICAgZnVuY3Rpb24gbmV3YygpDQogICAgew0KICAgIGFsZXJ0JiM0MDthcnImIzQxOzsNCiAgICB9DQogICBbcmVtb3ZlZF0NCiAgICZsdDtmb3JtJmd0Ow0KICAgICZsdDtpbnB1dCB0eXBlPSJidXR0b24iIHZhbHVlPSJ0b3VjaCBrb2lyYSBkZWtoIiAgJmd0Ow0KICAgJmx0Oy9mb3JtJmd0Ow0KICAgJmx0O2Zvcm0mZ3Q7DQogICAmbHQ7aW5wdXQgdHlwZT0idGV4dCIgdmFsdWU9Im5ldyIgDQogICAmbHQ7L2Zvcm0+DQogICAmbHQ7Zm9ybSZndDsNCiAgICAmbHQ7aW5wdXQgdHlwZT0iYnV0dG9uIiB2YWx1ZT0ibGF2IG5haSIgICZndDsNCiAgICZsdDsvZm9ybSZndDsNCiAgIA0KICZsdDsvYm9keSZndDsNCiZsdDsvaHRtbCZndDs='),
(2, 'new', 'ICAgICAgICAgDQogICAgJmx0O2h0bWwmZ3Q7DQogICAgJmx0O2hlYWQmZ3Q7DQogICAgICAgICZsdDt0aXRsZSZndDsmbHQ7L3RpdGxlPg0KICAgICZsdDsvaGVhZCZndDsNCiAgICAmbHQ7Ym9keSZndDsNCiANCiAgIHRoaXMgaXMgYSB0ZXN0IHBhZ2UNCiAmbHQ7L2JvZHkmZ3Q7DQombHQ7L2h0bWwmZ3Q7'),
(3, 'dummy', 'ICAgPCFET0NUWVBFIGh0bWw+DQombHQ7aHRtbCZndDsNCiAgICAmbHQ7aGVhZCZndDsNCiAgICAgICAgJmx0O3RpdGxlJmd0OyZsdDsvdGl0bGU+DQogICAgJmx0Oy9oZWFkJmd0Ow0KICAgICZsdDtib2R5Jmd0Ow0KIA0KICAgW3JlbW92ZWRdDQogICAgY2hhciBhcnJbXTsNCiAgICBmdW5jdGlvbiBuZXdhKCkNCiAgICB7DQogICAgIGFsZXJ0JiM0MDsnSG93IGRhcmUgeW91ISEnJiM0MTs7DQogICAgfQ0KICAgIGZ1bmN0aW9uIG5ld2IoKQ0KICAgIHsNCiAgICAgICAgDQogICAgIGFycj10ZXh0KCk7DQogICAgDQogICAgfQ0KICAgIGZ1bmN0aW9uIG5ld2MoKQ0KICAgIHsNCiAgICBhbGVydCYjNDA7YXJyJiM0MTs7DQogICAgfQ0KICAgW3JlbW92ZWRdDQogICAmbHQ7Zm9ybSZndDsNCiAgICAmbHQ7aW5wdXQgdHlwZT0iYnV0dG9uIiB2YWx1ZT0idG91Y2gga29pcmEgZGVraCIgICZndDsNCiAgICZsdDsvZm9ybSZndDsNCiAgICZsdDtmb3JtJmd0Ow0KICAgJmx0O2lucHV0IHR5cGU9InRleHQiIHZhbHVlPSJuZXciIA0KICAgJmx0Oy9mb3JtPg0KICAgJmx0O2Zvcm0mZ3Q7DQogICAgJmx0O2lucHV0IHR5cGU9ImJ1dHRvbiIgdmFsdWU9ImxhdiBuYWkiICAmZ3Q7DQogICAmbHQ7L2Zvcm0mZ3Q7DQogICANCiAmbHQ7L2JvZHkmZ3Q7DQombHQ7L2h0bWwmZ3Q7DQogICAgICANCiAgICA='),
(4, 'New', 'ICAgIDwhRE9DVFlQRSBodG1sPg0KJmx0O2h0bWwmZ3Q7DQogICAgJmx0O2hlYWQmZ3Q7DQogICAgICAgICZsdDt0aXRsZSZndDsmbHQ7L3RpdGxlPg0KICAgICZsdDsvaGVhZCZndDsNCiAgICAmbHQ7Ym9keSZndDsNCiANCiAgIFtyZW1vdmVkXQ0KICAgIGNoYXIgYXJyW107DQogICAgZnVuY3Rpb24gbmV3YSgpDQogICAgew0KICAgICBhbGVydCYjNDA7J0hvdyBkYXJlIHlvdSEhJyYjNDE7Ow0KICAgIH0NCiAgICBmdW5jdGlvbiBuZXdiKCkNCiAgICB7DQogICAgICAgIA0KICAgICBhcnI9dGV4dCgpOw0KICAgIA0KICAgIH0NCiAgICBmdW5jdGlvbiBuZXdjKCkNCiAgICB7DQogICAgYWxlcnQmIzQwO2FyciYjNDE7Ow0KICAgIH0NCiAgIFtyZW1vdmVkXQ0KICAgJmx0O2Zvcm0mZ3Q7DQogICAgJmx0O2lucHV0IHR5cGU9ImJ1dHRvbiIgdmFsdWU9InRvdWNoIGtvaXJhIGRla2giICAmZ3Q7DQogICAmbHQ7L2Zvcm0mZ3Q7DQogICAmbHQ7Zm9ybSZndDsNCiAgICZsdDtpbnB1dCB0eXBlPSJ0ZXh0IiB2YWx1ZT0ibmV3IiANCiAgICZsdDsvZm9ybT4NCiAgICZsdDtmb3JtJmd0Ow0KICAgICZsdDtpbnB1dCB0eXBlPSJidXR0b24iIHZhbHVlPSJsYXYgbmFpIiAgJmd0Ow0KICAgJmx0Oy9mb3JtJmd0Ow0KICAgDQogJmx0Oy9ib2R5Jmd0Ow0KJmx0Oy9odG1sJmd0Ow0KICAgICANCiAgICA='),
(5, 'image', 'PHA+PGltZyBzcmM9Ii4uLy4uLy4uLy4uL2FwYWNoZV9wYjJfYW5pLmdpZiIgYWx0PSIiIC8+YWRzZHNhZDwvcD4NCjxwPnNhZGFzZGFzZGFzZGFzZGFzPGltZyB0aXRsZT0iSW5ub2NlbnQiIHNyYz0iLi4vLi4vLi4vYXNzZXRzL2pzL3RpbnltY2UvanNjcmlwdHMvdGlueV9tY2UvcGx1Z2lucy9lbW90aW9ucy9pbWcvc21pbGV5LWlubm9jZW50LmdpZiIgYWx0PSJJbm5vY2VudCIgYm9yZGVyPSIwIiAvPjwvcD4='),
(6, 'seminar_summary', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+Jm5ic3A7PC9kaXY+DQo8ZGl2IGNsYXNzPSJzcGFuMTIiPg0KPGgzPk91dGxpbmU6PC9oMz4NCjxvbD4NCjxsaT4NCjxoND48c3Ryb25nPkhpZ2hlciBTdHVkeSBTZW1pbmFyPC9zdHJvbmc+PC9oND4NCjwvbGk+DQo8bGk+DQo8aDQ+PHN0cm9uZz5DYXJlZXIgVGFsazwvc3Ryb25nPjwvaDQ+DQo8L2xpPg0KPC9vbD4NCjxoND4mbmJzcDs8L2g0Pg0KPGg0PioqKiAmbmJzcDsgJm5ic3A7IFRoZXJlIHdpbGwgYmUgdG90YWwgNiBzZXNzaW9ucyBpbiAyPHN1cD5uZDwvc3VwPiBhbmQgMzxzdXA+cmQ8L3N1cD4gZGF5cyBvZiB0aGUgZmVzdGl2YWwuIFRoYXQgbWVhbnMgMyBzZXNzaW9ucyBwZXIgZGF5LjwvaDQ+DQo8aDQ+KioqICZuYnNwOyAmbmJzcDsmbmJzcDsgRWFjaCBzZXNzaW9uIHdpbGwgYmUgYXBwcm94aW1hdGVseSAxIGhvdXIgbG9uZy48L2g0Pg0KPC9kaXY+DQo8L2Rpdj4='),
(7, 'jam', 'PHA+c2RzYWRzYWQ8L3A+DQo8cD5zYWRzYSA8YnIgLz48aW1nIHRpdGxlPSJiY25fNDAwIiBzcmM9Ii4uLy4uL2Fzc2V0cy9waWN0dXJlcy9iY25fNDAwLnBuZyIgYWx0PSJiY25fNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM4NCIgLz48L3A+'),
(8, 'yyy', 'PHA+YXNkc2Fkc2FkYXM8aW1nIHRpdGxlPSJiY25fNDAwIiBzcmM9Ii4uLy4uL2Fzc2V0cy9waWN0dXJlcy9iY25fNDAwLnBuZyIgYWx0PSJiY25fNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM4NCIgLz48L3A+'),
(9, 'pointer-1', 'PHA+PGltZyB0aXRsZT0iZmdmXzQwMCIgc3JjPSIuLi8uLi9hc3NldHMvcGljdHVyZXMvZmdmXzQwMC5wbmciIGFsdD0iZmdmXzQwMCIgd2lkdGg9IjQwMCIgaGVpZ2h0PSIyNjUiIC8+c2FzZHNhZHNhZDwvcD4NCjxwPnNhZGFzZHNhZGRhc2RzYWQgPGltZyB0aXRsZT0iYmNuXzQwMCIgc3JjPSIuLi8uLi9hc3NldHMvcGljdHVyZXMvYmNuXzQwMC5wbmciIGFsdD0iYmNuXzQwMCIgd2lkdGg9IjQwMCIgaGVpZ2h0PSIzODQiIC8+PC9wPg=='),
(10, 'New New ', 'PHA+YXNkYXNkc2FkPC9wPg0KPHA+c2Rhc2Rhc2Rhc2RzYTxpbWcgdGl0bGU9IkZvb3QgaW4gTW91dGgiIHNyYz0iLi4vLi4vYXNzZXRzL2pzL3RpbnltY2UvanNjcmlwdHMvdGlueV9tY2UvcGx1Z2lucy9lbW90aW9ucy9pbWcvc21pbGV5LWZvb3QtaW4tbW91dGguZ2lmIiBhbHQ9IkZvb3QgaW4gTW91dGgiIGJvcmRlcj0iMCIgLz48L3A+'),
(11, 'notice_board', 'PHVsPg0KPGxpPlBIUCByZXN1bHQgQW5ub3VuY2VkPC9saT4NCjxsaT5BbmRyb2lkIFJlc3VsdCBQdWJsaXNoZWQ8L2xpPg0KPGxpPkdhbGxlcnkgVXBkYXRlZDwvbGk+DQo8L3VsPg=='),
(12, 'announcement_board', 'PHVsPg0KPGxpPlNlbWluYXIgQ29tbWl0dGVlIG1lZXRpbmcgb24gdGh1cnNkYXk8L2xpPg0KPGxpPkJTQUREIGNvbW1pdHRlZSBtZWV0aW5nIHRvZGF5PC9saT4NCjwvdWw+'),
(13, 'picture_puzzle', 'PGRpdiBjbGFzcz0iY29udGFpbmVyLWZsdWlkIj4NCjxkaXYgY2xhc3M9InJvdy1mbHVpZCI+DQo8ZGl2IGNsYXNzPSJzcGFuMyI+Jm5ic3A7PC9kaXY+DQo8ZGl2IGNsYXNzPSJzcGFuOCI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJwcm9ncmFtbWluZ19jb250ZXN0XzQwMCIgc3JjPSIuLi8uLi9hc3NldHMvcGljdHVyZXMvcHJvZ3JhbW1pbmdfY29udGVzdF80MDAuanBnIiBhbHQ9InByb2dyYW1taW5nX2NvbnRlc3RfNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4gc2Fkc2FkYXNta2xkbWFzbGtkbWFza2xtZGxrc2FtZGxrc2EgYXNkc2FkYXNkc2Fkc2Fkc2FkYXNkYXNkIGRhc2RzYWRhc2Rhc2Rhc2Rhc2Q8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+'),
(14, 'CompetitiveEvents_summary', 'PHVsPg0KPGxpPkJTQUREPC9saT4NCjxsaT5BSSBDaGFsbGVuZ2U8L2xpPg0KPGxpPlJvYm90aWNzIENvbnRlc3Q8L2xpPg0KPC91bD4='),
(15, 'GamesNsports_summary', 'PHA+R2FtZXMgJmFtcDsgU3BvcnRzIFN1bW1hcnkgUGFnZTwvcD4='),
(16, 'AlumniRegistration_summary', 'PGgzPjxzcGFuPjxzdHJvbmc+IFdpbGwgYmUgYXZhaWxhYmxlIHNvb24uLi4uPC9zdHJvbmc+PC9zcGFuPjwvaDM+'),
(17, 'Publication_summary', 'PGgzPjxzdHJvbmc+V2lsbCBiZSBhdmFpbGFibGUgc29vbiAuLi4uLjwvc3Ryb25nPjwvaDM+'),
(18, 'unknown_language_contest', 'PGRpdiBjbGFzcz0iY29udGFpbmVyLWZsdWlkIj4NCjxkaXYgY2xhc3M9InJvdy1mbHVpZCI+DQo8ZGl2IGNsYXNzPSJzcGFuMiI+Jm5ic3A7PC9kaXY+DQo8ZGl2IGNsYXNzPSJzcGFuMTAiPjxpbWcgY2xhc3M9ImZvY3VzLWltYWdlIiB0aXRsZT0idW5rbm93bl9sYW5ndWFnZV9jb21wZXRpdGlvbl80MDAiIHNyYz0iLi4vLi4vYXNzZXRzL3BpY3R1cmVzL3Vua25vd25fbGFuZ3VhZ2VfY29tcGV0aXRpb25fNDAwLmpwZyIgYWx0PSJ1bmtub3duX2xhbmd1YWdlX2NvbXBldGl0aW9uXzQwMCIgd2lkdGg9IjQwMCIgaGVpZ2h0PSIzNDQiIC8+DQo8aDEgY2xhc3M9ImN1c3RvbS1mb250Ij5Vbmtub3duIExhbmd1YWdlIENvbnRlc3Q6PC9oMT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhlIGZvcm1hdCBpcyBqdXN0IGxpa2UgdHJhZGl0aW9uYWwgSUNQQyBzdHlsZSwgYWx0aG91Z2ggdGltZXNwYW4gaXMgc2hvcnRlci4gV2l0aGluIDIuNSBob3VycyB5b3UgaGF2ZSB0byBzb2x2ZSBzb21lIHByb2dyYW1taW5nIHByb2JsZW1zLCBhbmQgdGhlIHJhbmtpbmcgd2lsbCBiZSBhbHNvIHNpbWlsYXIgdG8gSUNQQyBmb3JtYXQuPC9zcGFuPjwvcD4NCjxwPjxiciAvPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+IFNvdW5kcyBmYW1pbGlhciwgcmlnaHQ/IFRoZSBjYXRjaCBpcywgdGhlIGNvZGluZyBsYW5ndWFnZS9sYW5ndWFnZXMgd2lsbCBiZSBrbm93biBvbmx5IGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIGNvbnRlc3QuIEhlbmNlIHRoZSBuYW1lLjwvc3Bhbj48L3A+DQo8cD48YnIgLz48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiBZb3Ugd2lsbCBiZSBwcm92aWRlZCBuZWNlc3NhcnkgY29tcGlsZXJzL2ludGVycHJldGVycywgZG9jdW1lbnRhdGlvbiBhbmQvb3Igc29tZSBzYW1wbGUgY29kZSBzbmlwcGV0cy4gVGhlIGNoYWxsZW5nZSBpcyBzaW1wbHkgdGhhdCwgaG93IGZhc3QgeW91IGNhbiBsZWFybiBhIGxhbmd1YWdlIGFuZCBpbXBsZW1lbnQgaXQgZm9yIHNvbHZpbmcgYSBzdWl0YWJsZSBwcm9ibGVtLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+RHVyYXRpb24gOjwvc3Ryb25nPiAyIGhvdXIgMzAgbWludXRlczwvc3Bhbj48YnIgLz4gPGJyIC8+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4gPHN0cm9uZz5QYXJ0aWNpcGFudHMgOiA8L3N0cm9uZz5BbnkgQ1NFIFVuZGVyZ3JhZCBzdHVkZW50IGN1cnJlbnRseSBzdHVkeWluZyBhdCBCVUVUPC9zcGFuPjxiciAvPiA8YnIgLz48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiA8c3Ryb25nPkluZGl2aWR1YWwvR3JvdXAgOjwvc3Ryb25nPiBJbmRpdmlkdWFsIGNvbnRlc3Q8L3NwYW4+PGJyIC8+IDxiciAvPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+IDxzdHJvbmc+UmVzdHJpY3Rpb25zIDo8L3N0cm9uZz4gWW91IGNhbiBicmluZyBhbG1vc3QgYW55IG51bWJlciBvZiBib29rcy4gVW5saW1pdGVkIGJsYW5rIHBhZ2VzIGFyZSBhbGxvd2VkLiBIb3dldmVyLCBubyBlbGVjdHJvbmljIGRldmljZSBpcyBhbGxvd2VkLiBObyBpbnRlcm5ldCBjb25uZWN0aW9uIHdpbGwgYmUgcHJvdmlkZWQgZHVyaW5nIHRoZSBjb250ZXN0Ljwvc3Bhbj48L3A+DQo8cD4mbmJzcDs8L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+'),
(19, 'robotics_competition', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJyb2JvdGljc19jb21wZXRpdGlvbl80MDAiIHNyYz0iLi4vLi4vYXNzZXRzL3BpY3R1cmVzL3JvYm90aWNzX2NvbXBldGl0aW9uXzQwMC5qcGciIGFsdD0icm9ib3RpY3NfY29tcGV0aXRpb25fNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPlJvYm90aWNzIGNvbnRlc3Q6PC9oMT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhpcyB5ZWFyIHdlIHdpbGwgb3JnYW5pemUgYW4gaW50cmEgQ1NFIHJvYm90aWNzIGNvbnRlc3QuIFRoZSBjb250ZXN0IHdpbGwgYmUgYSBzaW1wbGUgbGluZSBmb2xsb3dpbmcgcm9ib3QgY29udGVzdCB3aXRoIDUtNiBkaWZmZXJlbnQgYXJlYW5hcyB5b3UgaGF2ZS4gWW91IGhhdmUgdG8gY29tcGxldGUgdGhlIGZpcnN0IGFyZW5hIHRvIGdvdG8gdGhlIG5leHQgYXJlbmEuIFJhbmtpbmcgd2lsbCBiZSBkZWNpZGVkIGJ5IHRoZSBjdW11bGl0aXZlIHRpbWUgb2YgY29tcGxldGluZyBhbGwgdGhlIHRhc2tzLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRvcCAzIHJhbmtlZCB0ZWFtcyB3aWxsIGJlIGdpdmVuIHByaXplIG1vbmV5J3Mgd2l0aCBjcmVzdHMuIEFuZCBhbGwgdGhlIHBhcnRpY2lwYW50cyB3aWxsIGJlIGdpdmVuIGEgY2VydGlmaWNhdGUuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Sm9pbiB0aGlzIGV4Y2l0aW5nIGNvbnRlc3QuIFdlbGNvbWUgdG8gdGhlIFdvcmxkIG9mIFJvYm90aWNzLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZXJlIHdpbGwgYmUgYSBzZXNzaW9uIG9uICdsaW5lIGZvbGxvd2luZyByb2JvdCcgdGhpcyB3ZWVrLiBQbGVhc2UgYSBhdHRlbmQgdGhlIHNlbWluYXIuIFRpbWUgc2NoZWR1bGUgb2YgdGhlIHNlc3Npb24gd2lsbCBiZSBkZWNsYXJlZCBvbiAxN3RoIGZlYnJ1YXJ5Ljwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiZuYnNwOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkZvciBhbnkgaW5mb3JtYXRpb24sIGZlZWwgZnJlZSB0byBjb250YWN0IHVzPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz5NZC4gSWZ0ZWthaHJ1bCBJc2xhbSBSdXBhbSAoIDAxOTE3NTE0MjExICk8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPlJhdHVsIFNoYXJrZXIgKCAwMTkyMTQwNDc2NyApPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz5UYW5iaXIgQWhtZWQgU2FnYXIgKCAwMTczNzU0ODg2NiApPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxoMz48YnIgLz48YnIgLz48YnIgLz48L2gzPg0KPC9kaXY+DQo8L2Rpdj4='),
(25, 'seminar', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+DQo8aDEgY2xhc3M9ImN1c3RvbS1mb250Ij5TZW1pbmFyPC9oMT4NCjx1bCBjbGFzcz0ibmF2IG5hdi10YWJzIj4NCjxsaSBjbGFzcz0iYWN0aXZlIj48YSBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiIGhyZWY9IiNjYXJlZXItdGFsayIgZGF0YS10b2dnbGU9InRhYiI+Q2FyZWVyIFRhbGs8L2E+PC9saT4NCjxsaT48YSBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiIGhyZWY9IiNoaWdoZXItc3R1ZHkiIGRhdGEtdG9nZ2xlPSJ0YWIiPkhpZ2hlciBTdHVkeTwvYT48L2xpPg0KPC91bD4NCjxkaXYgY2xhc3M9InRhYi1jb250ZW50Ij4NCjxkaXYgaWQ9ImNhcmVlci10YWxrIiBjbGFzcz0idGFiLXBhbmUgYWN0aXZlIj4NCjx1bD4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkVudHJlcHJlbmV1cnNoaXA8L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlJlY2VudCBIaWdoIFByb2ZpbGUgSm9iczwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+SGlnaGVyIFN0dWR5IGFzIENhcmVlciAvIFJlc2VhcmNoPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5DYXJlZXIvVGVjaG5vbG9neSBUcmVuZHM8L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlNwZWNpYWwgQXR0cmFjdGlvbjwvc3Bhbj4NCjx1bD4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPk5vb2dsYXIgQWRkYTwvc3Bhbj48L2xpPg0KPC91bD4NCjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5PcHRpb25hbDwvc3Bhbj4NCjx1bD4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkJ1c2luZXNzIElUPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4mbmJzcDtNaWNyb3NvZnQgJm5ic3A7Sm9iczwvc3Bhbj48L2xpPg0KPC91bD4NCjwvbGk+DQo8L3VsPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4qKiombmJzcDsgT3B0aW9uYWwgbWF5IGJlIGtlcHQgZGVwZW5kaW5nIG9uIHRoZSB0aW1lICZhbXA7IGZyZWUgc2NoZWR1bGVzLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPioqKiZuYnNwOyBBbmQgc29tZSBzdXJwcmlzZSBldmVudHM8L3NwYW4+PC9wPg0KPHA+Jm5ic3A7PC9wPg0KPC9kaXY+DQo8ZGl2IGlkPSJoaWdoZXItc3R1ZHkiIGNsYXNzPSJ0YWItcGFuZSI+DQo8dWwgc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4NCjxsaT5SZXNlYXJjaCBhbmQgY291bnRyeSBzZWxlY3Rpb248L2xpPg0KPGxpPlN0YW5kYXJkaXplIHRlc3RzIGFuZCBHUkUgcHJlcGFyYXRpb24gZGV0YWlsczwvbGk+DQo8bGk+U3RhdGVtZW50IG9mIHB1cnBvc2VzKFNPUCkgYW5kIExldHRlciBvZiBSZWNvbW1lbmRhdGlvbiAoTE9SKTwvbGk+DQo8bGk+QXBwbGljYXRpb24gcHJvY2VkdXJlLCBzdHJhdGVnaWVzIGFuZCBhcHByb2FjaGVzPC9saT4NCjxsaT5WSVNBPC9saT4NCjwvdWw+DQo8cCBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPioqKiAmbmJzcDsgJm5ic3A7IFNvbWUgc3VycHJpc2UgZXZlbnRzPC9wPg0KPHAgc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4qKiogJm5ic3A7ICZuYnNwOyBNYXRlcmlhbHMgd2lsbCBiZSBkZWxpdmVyZWQgaW4gZWFjaCBzZXNzaW9uPC9wPg0KPHA+Jm5ic3A7PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+'),
(20, 'logic_olympiad', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJsb2dpY19vbHltcGlhZF80MDAiIHNyYz0iLi4vLi4vYXNzZXRzL3BpY3R1cmVzL2xvZ2ljX29seW1waWFkXzQwMC5qcGciIGFsdD0ibG9naWNfb2x5bXBpYWRfNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPkxvZ2ljIE9seW1waWFkOjwvaDE+DQpDb250ZW50cyBXaWxsIGJlIHVwbG9hZGVkIFNvb24uLi4uPGJyIC8+PGJyIC8+PC9kaXY+DQo8L2Rpdj4NCjxwPiZuYnNwOzwvcD4='),
(21, 'programming_contest', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyB0aXRsZT0icHJvZ3JhbW1pbmdfY29udGVzdF80MDBfMDEiIHNyYz0iLi4vLi4vYXNzZXRzL3BpY3R1cmVzL3Byb2dyYW1taW5nX2NvbnRlc3RfNDAwXzAxLmpwZyIgYWx0PSJwcm9ncmFtbWluZ19jb250ZXN0XzQwMF8wMSIgd2lkdGg9IjQwMCIgaGVpZ2h0PSIzNDQiIC8+DQo8aDM+UHJvZ3JhbW1pbmcgQ29udGVzdDo8L2gzPg0KPGJyIC8+PGJyIC8+PC9kaXY+DQo8L2Rpdj4='),
(22, 'project_show', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJwcm9qZWN0X3Nob3dfNDAwIiBzcmM9Ii4uLy4uL2Fzc2V0cy9waWN0dXJlcy9wcm9qZWN0X3Nob3dfNDAwLmpwZyIgYWx0PSJwcm9qZWN0X3Nob3dfNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPlByb2plY3QgU2hvdzo8L2gxPg0KLg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPjxlbT48c3BhbiBzdHlsZT0idGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7Ij5SdWxlcyAmYW1wOyBSZWd1bGF0aW9uczo8L3NwYW4+PC9lbT48L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOzwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8b2w+DQo8bGk+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZSBsYW5ndWFnZSBvZiB0aGUgQ29udGVzdCBpcyBFbmdsaXNoLiBBbGwgd3JpdHRlbiBjb250ZXN0IG1hdGVyaWFscyB3aWxsIGJlIGluIEVuZ2xpc2guPC9zcGFuPjwvcD4NCjwvbGk+DQo8bGk+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkFsbCBwYXJ0aWNpcGFudHMgbXVzdCBiZSBhIGN1cnJlbnQgc3R1ZGVudCBvZiBpbnZpdGVkIHVuaXZlcnNpdHkuPC9zcGFuPjwvcD4NCjwvbGk+DQo8bGk+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkJlaW5nIGFuIG9wZW4gY29udGVzdCB0ZWFtcyBhcmUgYWxsb3dlZCB0byBoYXZlIGNvbnRlc3RhbnRzIGZyb20gZGlmZmVyZW50IHVuaXZlcnNpdGllcy48L3NwYW4+PC9wPg0KPC9saT4NCjxsaT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+RWFjaCB0ZWFtIGNvbnNpc3RzIG9mIDxzdHJvbmc+YXQgbW9zdCBmaXZlPC9zdHJvbmc+IGNvbnRlc3RhbnRzLCB3aG8gbXVzdCBiZSBlbnJvbGxlZCBpbiBhIGRlZ3JlZSBwcm9ncmFtIGF0IHRoZWlycmVzcGVjdGl2ZSBpbnN0aXR1dGlvbi48L3NwYW4+PC9wPg0KPC9saT4NCjxsaT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhlIHByb2plY3Qgc2hvdyB3aWxsIHJ1biBmb3IgYXJvdW5kIDIgZGF5cy48L3NwYW4+PC9wPg0KPC9saT4NCjxsaT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGVhbXMgaGF2ZSB0byBicmluZyB0aGVpciA8c3Ryb25nPm93biBJbnN0cnVtZW50IDwvc3Ryb25nPmR1cmluZzxzdHJvbmc+IHByb2plY3Qgc2hvdy4gTm8gaW5zdHJ1bWVudCB3aWxsIGJlIHByb3ZpZGVkIHN1Y2ggYXMgbGFwdG9wIGxvY2tzLCBpbnRlcm5ldCBtb2RlbXMuPC9zdHJvbmc+V2ktZmkgd2lsbCBiZSBwcm92aWRlZCwgYnV0IGZvciBiYWNrIHVwLCBlYWNoIHRlYW0gaXMgcmVxdWVzdGVkIHRvIGJyaW5nIHRoZWlyIG93biBpbnRlcm5ldCBjb25uZWN0aW9uLjwvc3Bhbj48L3A+DQo8L2xpPg0KPGxpPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BIHRlYW0gbWF5IGJlIGRpc3F1YWxpZmllZCBieSB0aGUgcHJvZ3JhbSBkaXJlY3RvciBmb3IgYW55IGFjdGl2aXR5IHRoYXQgamVvcGFyZGl6ZXMgdGhlIHByb2dyYW0gc3VjaCBhcyBkaXNsb2RnaW5nIGV4dGVuc2lvbiBjb3JkcywgdW5hdXRob3JpemVkIG1vZGlmaWNhdGlvbiBvZiBjb250ZXN0IG1hdGVyaWFscywgb3IgZGlzdHJhY3RpbmcgYmVoYXZpb3IuPC9zcGFuPjwvcD4NCjwvbGk+DQo8bGk+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlBvd2VyIHN1cHBseXdpbGwgYmUgcHJvdmlkZWQuPC9zcGFuPjwvcD4NCjwvbGk+DQo8bGk+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkp1ZGdpbmcgdGltZSB3aWxsIG5vdCBiZSBhbm5vdW5jZWQuIFRoZSBkZWNpc2lvbiBtYWRlIGJ5IHRoZSBqdWRnZSBwYW5lbCB3aWxsIGJlIHRyZWF0ZWQgYXMgZmluYWwuPC9zcGFuPjwvcD4NCjwvbGk+DQo8bGk+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZSBQcm9qZWN0IFNob3cgY29tbWl0dGVlIHByZXNlcnZlcyBhbGwgdGhlIHBvd2VyIHRvIGNoYW5nZSBhbGwgdGhlIHJ1bGVzICZhbXA7IHJlZ3VsYXRpb25zIGFuZCB0byB0YWtlIGFueSBhY3Rpb24gZHVyaW5nIHByb2plY3Qgc2hvdy48L3NwYW4+PC9wPg0KPC9saT4NCjxsaT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+RWFjaCB0ZWFtIG11c3QgcGF5IGEgcmVnaXN0cmF0aW9uIGZlZSBvZiA8c3Ryb25nPlRrLiA1MDAgZm9yIGVhY2ggbWVtYmVyIDwvc3Ryb25nPihUb3RhbDogbnVtYmVyIG9mIHBhcnRpY2lwYW50ICZ0aW1lczsgVGsuIDUwMCkuIFRoZSByZWdpc3RyYXRpb24gZmVlIGlzIHRvIGJlIHN1Ym1pdHRlZCB0byB0aGUgPHN0cm9uZz5PZmZpY2Ugb2YgdGhlQ1NFIERlcGFydG1lbnQsIEJVRVQuPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjwvbGk+DQo8L29sPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOzwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Rm9yIFRlYW1zIG9mIEJVRVQ6IChhcHBsaWNhYmxlIGZvciBhbGwgZGVwYXJ0bWVudHMgb2YgQlVFVCk8L3N0cm9uZz48L3NwYW4+PC9wPg0KPG9sPg0KPGxpPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5FdmVyeSB0ZWFtIG11c3QgYmUgcmVnaXN0ZXJlZCBvbmxpbmUsIGJ1dCBubyByZWdpc3RyYXRpb24gZmVlIGlzIG5lZWRlZC4gRm9yIHRoaXMsIGVhY2ggdGVhbSBtZW1iZXIgbXVzdCBiZSBCVUVUaWFuLjwvc3Bhbj48L3A+DQo8L2xpPg0KPGxpPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5FdmVyeSB0ZWFtIG11c3QgcGFzcyB0aHJvdWdoIHRoZSBzY3JlZWluZyB0ZXN0LiBTY3JlZW5pbmcgdGVzdCB3aWxsIGJlIGhlbGQgMiB3ZWVrcyBiZWZvcmUgcHJvamVjdCBzaG93LiBJbiBzY3JlZW5pbmcgdGVzdCwgZWFjaCB0ZWFtIG11c3Qgc2hvdyB0aGVpciBmdWxsIHByb2plY3QgYW5kIGRvY3VtZW50YXRpb24uPC9zcGFuPjwvcD4NCjwvbGk+DQo8bGk+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlByb2plY3Qgc2hvdyBjb21taXR0ZWUgd2lsbCBub3QgcHJvdmlkZSBhbnkgZWxlY3Ryb25pYyBkZXZpY2UgbGlrZSBsYXB0b3AsIGFuZHJvaWQgZGV2aWNlLCBldGMuPC9zcGFuPjwvcD4NCjwvbGk+DQo8L29sPg0KPHA+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyBmb250LXNpemU6IGxhcmdlOyI+VGltZWxpbmU6PGJyIC8+PGJyIC8+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4xPHN1cD5zdDwvc3VwPiBkYXk6PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgMDg6MDAgYW0gdG8gMDk6MDAgYW0gLS0tLSBTZXQtdXAsIFQtc2hpcnQgYW5kIGlkLWNhcmRzIGRpc3RyaWJ1dGlvbiwgYnJlYWtmYXN0PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgMDk6MDAgYW0gdG8gMTI6NDUgYW0gLS0tLSBQcm9qZWN0IHNob3c8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAxMjo0NSBhbSB0byAwMTozMCBwbSAtLS0tIEx1bmNoIGFuZCBOYW1heiBicmVhazwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDAxOjMwIHBtIHRvIDA1OjAwIHBtIC0tLS0gUHJvamVjdCBzaG93PGJyIC8+PGJyIC8+PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJkaXZpZGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiZuYnNwOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+MjxzdXA+bmQ8L3N1cD4gZGF5Ojwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOzxzdHJvbmc+IDA4OjQ1IGFtIHRvIDA5OjAwIGFtIC0tLS0gQnJlYWtmYXN0PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgMDk6MDAgYW0gdG8gMTI6NDUgYW0gLS0tLSBQcm9qZWN0IHNob3c8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyAxMjo0NSBhbSAmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgLS0tLSBMdW5jaDwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IDA0OjAwIHBtJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IC0tLS0gUHJpemUgZ2l2aW5nIGNlcmVtb255PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPiZuYnNwOzwvcD4NCjwvZGl2Pg0KPC9kaXY+'),
(23, 'system_prototyping_contest', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJzeXN0ZW1fcHJvdG90eXBpbmdfNDAwIiBzcmM9Ii4uLy4uL2Fzc2V0cy9waWN0dXJlcy9zeXN0ZW1fcHJvdG90eXBpbmdfNDAwLmpwZyIgYWx0PSJzeXN0ZW1fcHJvdG90eXBpbmdfNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPlN5c3RlbSBQcm90b3R5cGluZzwvaDE+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+UmVxdWlyZWQgRXhwZXJ0aXNlOjwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BIHRlYW0gY2FuIHBhcnRpY2lwYXRlIGluIGFueSA8c3Ryb25nPm9uZTwvc3Ryb25nPiBvZiB0aGUgZm9sbG93aW5nIHRocmVlIGxhbmd1YWdlIGNyaXRlcmlhOjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkxhbmd1YWdlOjwvc3Bhbj48L3A+DQo8dWw+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5QSFAuIFN5c3RlbSBzaG91bGQgYmUgaW1wbGVtZW50ZWQgdXNpbmcgRnJhbWV3b3JrLjwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+QW5kcm9pZDwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+V2luZG93cyBwaG9uZSAmYW1wOyBXaW5kb3dzIDg8L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkoyRUUuIEZyYW1ld29yazogU3ByaW5nLyBTdHJ1dHMgYW5kIEhpYmVybmF0ZS48L3NwYW4+PC9saT4NCjwvdWw+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkJhc2ljIEtub3dsZWRnZSBhYm91dCBEYXRhYmFzZSBEZXNpZ25pbmcsIEVSIERpYWdyYW0sIElTRCByZWxhdGVkIGRpYWdyYW0gZGVzaWduIChDbGFzcywgVXNlLUNhc2UpLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+UmVnaXN0cmF0aW9uPC9zcGFuPjwvc3Ryb25nPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+Ojwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BIHRlYW0gY2FuIGhhdmUgYSBtYXhpbXVtIG9mIDMgYW5kIG1pbmltdW0gb2YgMiBtZW1iZXJzLiBBbGwgdGVhbXMgaGF2ZSB0byByZWdpc3RlciB0aHJvdWdoIHdlYiAoKS48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPlJlZ2lzdHJhdGlvbiBQcm9jZXNzOjwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PC9wPg0KPHVsPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+RWFjaCB0ZWFtIGhhcyB0byBmaWxsIHVwIGEgPHN0cm9uZz5yZWdpc3RyYXRpb24gZm9ybTwvc3Ryb25nPiBvbmxpbmUuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BZnRlciBzdWNjZXNzZnVsIHJlZ2lzdHJhdGlvbiB0aGV5IHdpbGwgYmUgcHJvdmlkZWQgYSA8c3Ryb25nPjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPktFWS48L3NwYW4+PC9zdHJvbmc+PC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UZWFtcyBoYXZlIHRvIHByb3ZpZGUgdGhlc2UgPHN0cm9uZz5LRVk8L3N0cm9uZz4gYXMgaWRlbnRpZmljYXRpb24gbnVtYmVyIGR1cmluZyB0aGUgPHN0cm9uZz5TY3JlZW5pbmcgVGVzdC48L3N0cm9uZz48L3NwYW4+PC9saT4NCjwvdWw+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+UG9zdCBSZWdpc3RyYXRpb24gUHJvY2Vzczo8L3NwYW4+PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+U2NyZWVuaW5nOjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkFsbCB0ZWFtcyBoYXZlIHRvIGdvIHRocm91Z2ggYSBwcmVsaW1pbmFyeSBzZWxlY3Rpb24gcHJvY2Vzcy4gQSBzY3JlZW5pbmcgdGVzdCB3aWxsIGJlIGhlbGQgdG8gY2hvb3NlIHRoZSBiZXN0IHRlYW1zIGZvciB0aGUgZmluYWwgY29udGVzdC48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5Hcm9vbWluZzo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BZnRlciB0aGUgc2NyZWVuaW5nIHRlc3QsIGEgJmxkcXVvOzxzdHJvbmc+R3Jvb21pbmcgU2Vzc2lvbjwvc3Ryb25nPiZyZHF1bzsgd2lsbCBiZSBoZWxkIHRvIGJyaWVmIHRoZSBzdHVkZW50cyBhYm91dCB0aGUgY29tcGV0aXRpb24gZm9ybWF0IGFuZCB0by1kb3MuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4qKipUaGUgdGVhbXMgc2VsZWN0ZWQgdGhyb3VnaCB0aGUgc2NyZWVuaW5nIHRlc3Qgd2lsbCBoYXZlIHRvIHJlZ2lzdGVyIGZvciB0aGUgZmluYWwgY29udGVzdCB3aXRoIGEgcmVnaXN0cmF0aW9uIGZlZSBvZiA1MDAgQkRULjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+Q29udGVzdCBGb3JtYXQ6PC9zcGFuPjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkEgcHJvYmxlbSBkZXBpY3Rpbmcgc29tZSByZWFsIGxpZmUgc2NlbmFyaW8gd2lsbCBiZSBnaXZlbi4gVGhlIGNvbnRlc3RhbnRzIHdpbGwgYmUgYXNrZWQgdG8gZGVzaWduIHRoZSBkYXRhYmFzZSwgc29tZSByZWxldmFudCBkaWFncmFtcyBhbmQgdGhlbiBkZXZlbG9wIHRoZSBzeXN0ZW0uIFRoZSB0ZWFtcyB3aWxsIGdldCBhdCBtb3N0IDUgaHJzIHRvIGRldmVsb3AgdGhlIHN5c3RlbS48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPlRpbWUgVGFibGU6PC9zcGFuPjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlByb3Bvc2VkIERhdGU6IDxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+MjEvMDMvMjAxMzwvc3Bhbj4oVGh1cnNkYXkpPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjx0YWJsZSBib3JkZXI9IjEiIGNlbGxzcGFjaW5nPSIwIiBjZWxscGFkZGluZz0iMCI+DQo8dGJvZHk+DQo8dHI+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIxMzMiPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPlRpbWU8L3N0cm9uZz48L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjIzNCI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+RXZlbnQ8L3N0cm9uZz48L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjI3MSI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Tm90ZXMod2lsbCBub3QgYXBwZWFyIGluIHdlYnNpdGUpPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMTMzIj4NCjxwIGFsaWduPSJjZW50ZXIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz44LjAwIEFNIC05LjAwIEFNPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyMzQiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5SZXBvcnRpbmcgYW5kIEtpdCBjb2xsZWN0aW9uPC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyNzEiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4mbmJzcDs8L3NwYW4+PC9wPg0KPC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIxMzMiPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPjkuMDAgQU0gJm5kYXNoOyAxLjAwIFBNPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyMzQiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5Db250ZXN0IChzeXN0ZW0gZGV2ZWxvcG1lbnQpPC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyNzEiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5TeXN0ZW0gZGVzaWduIGFuZCBkZXZlbG9wbWVudDwvc3Bhbj48L3A+DQo8L3RkPg0KPC90cj4NCjx0cj4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjEzMyI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+MS4wMCBQTSAmbmRhc2g7IDIuMDAgUE08L3N0cm9uZz48L3NwYW4+PC9wPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOzwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8L3RkPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMjM0Ij4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+THVuY2ggQnJlYWs8L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjI3MSI+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiZuYnNwOzwvc3Bhbj48L3A+DQo8L3RkPg0KPC90cj4NCjx0cj4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjEzMyI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Mi4wMFBNLTMuMDAgUE08L3N0cm9uZz48L3NwYW4+PC9wPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOzwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8L3RkPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMjM0Ij4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Q29udGVzdCAoc3lzdGVtIGRldmVsb3BtZW50KTwvc3Bhbj48L3A+DQo8L3RkPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMjcxIj4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Jm5ic3A7PC9zcGFuPjwvcD4NCjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMTMzIj4NCjxwIGFsaWduPSJjZW50ZXIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4zLjAwIFBNLTUuMDAgUE08L3N0cm9uZz48L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjIzNCI+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlByZXNlbnRhdGlvbiBhbmQgUS9BIHNlc3Npb248L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjI3MSI+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlNlcGFyYXRlIFJvb21zIHdpbGwgYmUgcHJvdmlkZWQgZm9yIFByZXNlbnRhdGlvbiBvZiByZXNwZWN0aXZlIGNyaXRlcmlhLiBFc3RpbWF0ZWQgdGltZSAoY29uc2lkZXJpbmcgbWF4IDEyIHRlYW1zIGluIFBIUC9XaW5kb3dzIFBsYXRmb3JtL0FuZHJvaWQpPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+MTJYOCA9IDk2IG1pbithZGRpdGlvbmFsIHRpbWU8L3NwYW4+PC9wPg0KPC90ZD4NCjwvdHI+DQo8L3Rib2R5Pg0KPC90YWJsZT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4mbmJzcDs8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPlJ1bGVzIGFuZCBSZWd1bGF0aW9uOjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8b2w+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgbGFuZ3VhZ2Ugb2YgdGhlIENvbnRlc3QgaXMgRW5nbGlzaC4gQWxsIHdyaXR0ZW4gY29udGVzdCBtYXRlcmlhbHMgd2lsbCBiZSBpbiBFbmdsaXNoLjwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+QWxsIHBhcnRpY2lwYW50cyBtdXN0IGJlIGEgY3VycmVudCBzdHVkZW50IG9mIGludml0ZWQgdW5pdmVyc2l0eS48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkFsbCB0aGUgdGVhbSBtZW1iZXJzIHNob3VsZCBiZSBvZiBzYW1lIHVuaXZlcnNpdHkuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5FYWNoIHRlYW0gY29uc2lzdHMgb2YgdGhyZWUvdHdvIGNvbnRlc3RhbnRzLCB3aG8gbXVzdCBiZSBlbnJvbGxlZCBpbiBhIGRlZ3JlZSBwcm9ncmFtIGF0IHRoZWlyIHJlc3BlY3RpdmUgaW5zdGl0dXRpb24uPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgcmVzdHJpY3Rpb24gb24gdGhlIG51bWJlciBvZiB0ZWFtcyBpcyBub3QgYXBwbGljYWJsZSB0byB0aGUgaG9zdCB1bml2ZXJzaXR5Ljwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhlIGNvbnRlc3Qgd2lsbCBydW4gZm9yIGFyb3VuZCA1IGhvdXJzLjwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+RmFpbHVyZSBpbiA8c3Ryb25nPnNjcmVlbmluZyB0ZXN0PC9zdHJvbmc+IHdpbGwgcmVzdWx0IGluIGVsaW1pbmF0aW9uIGZyb20gdGhlIGNvbnRlc3QuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UZWFtcyBoYXZlIHRvIGJyaW5nIHRoZWlyIDxzdHJvbmc+b3duIExhcHRvcHMgPC9zdHJvbmc+ZHVyaW5nPHN0cm9uZz4gZmluYWwgY29udGVzdC4gTm8gd29ya3N0YXRpb24gd2lsbCBiZSBwcm92aWRlZC48L3N0cm9uZz48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkEgdGVhbSBtYXkgYmUgZGlzcXVhbGlmaWVkIGJ5IHRoZSBjb250ZXN0IGRpcmVjdG9yIGZvciBhbnkgYWN0aXZpdHkgdGhhdCBqZW9wYXJkaXplcyB0aGUgY29udGVzdCBzdWNoIGFzIGRpc2xvZGdpbmcgZXh0ZW5zaW9uIGNvcmRzLCB1bmF1dGhvcml6ZWQgbW9kaWZpY2F0aW9uIG9mIGNvbnRlc3QgbWF0ZXJpYWxzLCBvciBkaXN0cmFjdGluZyBiZWhhdmlvci48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRlYW1zIGFyZSBmcmVlIHRvIHVzZSBhbnkgSURFIGFzIHBlciB0aGVpciByZXF1aXJlbWVudC48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRlYW1zIGFyZSBhbGxvd2VkIHVzZSB0aGVpciBvd24gdGVtcGxhdGUgZGVzaWduZWQgYmVmb3JlaGFuZC48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRlYW1zIGNhbiBicmluZyB0aGVpciBvd24gPHN0cm9uZz5Nb2RlbTwvc3Ryb25nPi48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkludGVybmV0IHNlcnZpY2Ugd2lsbCBiZSBwcm92aWRlZCB0byBhY2Nlc3MgaGVscCBpbmZvcm1hdGlvbiB0aHJvdWdoIGludGVybmV0Ljwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhlIGRlY2lzaW9uIG1hZGUgYnkgdGhlIGp1ZGdlIHBhbmVsIHdpbGwgYmUgdHJlYXRlZCBhcyBmaW5hbC48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZSBTeXN0ZW0gRGVzaWduIGFuZCBEZXZlbG9wbWVudCBDb250ZXN0IGNvbW1pdHRlZSBwcmVzZXJ2ZXMgYWxsIHRoZSBwb3dlciB0byBjaGFuZ2UgYWxsIHRoZSBydWxlcyAmYW1wOyByZWd1bGF0aW9ucyBhbmQgdG8gdGFrZSBhbnkgYWN0aW9uIGR1cmluZyBjb250ZXN0Ljwvc3Bhbj48L2xpPg0KPC9vbD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz48c3BhbiBzdHlsZT0idGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7Ij5Bd2FyZHM6PC9zcGFuPjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPi0mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgV2lubmVyIDxzdHJvbmc+Q3Jlc3RzLCBDZXJ0aWZpY2F0ZXM8L3N0cm9uZz4sIGFuZCA8c3Ryb25nPlByaXplIE1vbmV5PC9zdHJvbmc+IHdpbGwgYmUgYXdhcmRlZCB0byA8c3Ryb25nPnRvcCB0aHJlZTwvc3Ryb25nPiB0ZWFtcyBmcm9tIGVhY2ggY3JpdGVyaW9uLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPi0mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgQ2VydGlmaWNhdGUgb2YgcGFydGljaXBhdGlvbiB0byByZXN0IG9mIHRoZSB0ZWFtcy48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4tJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IEdpZnQgaXRlbXMgdG8gYWxsIHBhcnRpY2lwYW50cy48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4='),
(24, 'ai_contest', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJhaV9jaGFsbGVuZ2VfNDAwIiBzcmM9Ii4uLy4uL2Fzc2V0cy9waWN0dXJlcy9haV9jaGFsbGVuZ2VfNDAwLmpwZyIgYWx0PSJhaV9jaGFsbGVuZ2VfNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPkFJIENvbnRlc3Q8L2gxPg0KPHA+PHN0cm9uZz48YnIgLz48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPk9iamVjdGl2ZTo8L3NwYW4+PC9zdHJvbmc+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgcGFydGljaXBhbnRzIHdpbGwgaGF2ZSB0byBpbXBsZW1lbnQgYSBib3QgdGhhdCB3aWxsIHJ1biBpbiBhIGdhbWUgZm9yIGl0c2VsZi4gVGhlIGJvdCB3aWxsIHRoZW4gcGFydGljaXBhdGUgaW4gZmllcmNlIGJhdHRsZXMgd2l0aCBvdGhlciBib3RzIHRvIGFjaGlldmUgdWx0aW1hdGUgZ2xvcnkuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz5UaGUgR2FtZTo8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgR2FtZSBmb3IgQUkgQ2hhbGxlbmdlIGlzIGEgbW9kaWZpZWQgdHdvIHBsYXllciB2ZXJzaW9uIG9mIHRoZSBjbGFzc2ljIFBhYy1NYW4gZ2FtZS4gSW4gdGhlIG9yaWdpbmFsIFBhYy1tYW4sIHRoZXJlIGFyZSB0d28ga2luZHMgb2YgcGllY2VzIFBhYyBhbmQgR2hvc3QuIFRoZSBQYWMgbmVlZHMgdG8gcnVuIGluIGEgbWF6ZSB0byBmaW5kIGNvbGxlY3RpYmxlcyB3aGljaCB3aWxsIGluY3JlYXNlIHBsYXllcnMgcG9pbnQgYW5kIEdob3N0cyB0cnkgdG8gY2F0Y2ggdGhlIFBhYyB0byByZWR1Y2UgaXRzIGxpZmUuIEluIG91ciB2ZXJzaW9uOjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPi1Ud28gUGxheWVyIHdpbGwgcGxheSBhZ2FpbnN0IGVhY2ggb3RoZXIgaW4gYSBtYXplIHdpdGggY29sbGVjdGlibGVzIHRoYXQgd2lsbCBlaXRoZXIgaW5jcmVhc2Ugb3IgcmVkdWNlIHRoZWlyIFBvaW50cy48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4tR2FtZSB3aWxsIGJlIHBsYXllZCBmb3IgcHJlZGVmaW5lZCBudW1iZXIgb2YgbW92ZXMuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+LUVhY2ggUGxheWVyIHdpbGwgaGF2ZSAyIFBhY3MgLCAzIEdob3N0cy48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4tUGFjcyB3aWxsIHRyeSB0byBjb2xsZWN0IHBvaW50cyBhbmQgR2hvc3RzIHdpbGwgdHJ5IHRvIHN0b3AgdGhlbSBieSBmcmVlemluZyB0aGVtIGJ5IGNyZWF0aW5nIGEgc3BlY2lhbCBib21iIGZpZWxkLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPi1BIEdob3N0IGNhbiBvbmx5IHNldCBib21iIGFmdGVyIGEgcHJlZGVmaW5lZCBudW1iZXIgb2YgdGltZSBzbG90Ljwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPi1HYW1lIGJvYXJkIGlzIGluaXRpYWxpemVkIHdpdGggc29tZSBwcmVkZWZpbmVkIG9ic3RhY2xlIGEgYm9tYiBjYW4gcmVtb3ZlIG9ic3RhY2xlLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPi1BIFBhYyBjYW4gd3JhcCBidXQgYSBnaG9zdCBjYW4mcnNxdW87dC48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4tQW55IGludmFsaWQgbW92ZSB3aWxsIHJlc3VsdCBpbiBuZWdhdGl2ZSBzY29yZS48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4tVGhlcmUgd2lsbCBiZSBzb21lIHNwZWNpYWwgcG93ZXIgZm9yIFBhYy4gSXQgd2lsbCBjcmVhdGUgYSBwb3dlciBmaWxlZCBzdXJyb3VuZGluZyBpdHNlbGYuIEFueSBnaG9zdCBmYWxsaW5nIGluIHRoaXMgZmllbGQgd2lsbCBmcmVlemUuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Jm5ic3A7LSoqRm9yIGRldGFpbHMgc2VlIHRoZSBhdHRhY2htZW50IHBkZi48L3NwYW4+PC9wPg0KPHA+PGJyIC8+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4gPHN0cm9uZz5JbnB1dDo8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4tSW5pdGlhbGx5IHRoZSBib2FyZCBhbG9uZyB3aXRoIHRoZSBvYnN0YWNsZSB3aWxsIGJlIGdpdmVuLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkZvciBlYWNoIG1vdmU6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+LVBsYXllciB3aWxsIGJlIHByb3ZpZGVkIHdpdGggNSB2aXNpYmlsaXR5IHNxdWFyZXMgZm9yIGVhY2ggUGFjIGFuZCBHaG9zdCBjb250YWluaW5nIHRoZSBmb29kLCBHaG9zdCwgUGFjLCBib21iIGV0YyBjb25maWd1cmF0aW9uLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+T3V0cHV0Ojwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkZvciBlYWNoIG1vdmU6PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+LVBsYXllciBqdXN0IG5lZWRzIHRvIG91dHB1dCB0aGUgZGlyZWN0aW9uIHdoaWNoIGhlIGludGVuZHMgZm9yIGhpcyBwaWVjZXMgYW5kIHRoZSBib21iaW5nIGRlY2lzaW9uLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiZuYnNwOzwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+RG9jdW1lbnRhdGlvbjo8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4qKkF0dGFjaG1lbnQ8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5EZXZlbG9wbWVudCBFbnZpcm9ubWVudDo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPi1DKys6PC9zdHJvbmc+IG5lZWQgdG8gc3VibWl0IG9ubHkgdGhlIGV4ZSBmaWxlIChuYW1lZCBNYWluKTs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPi1KYXZhOjwvc3Ryb25nPiBuZWVkIHRvIHN1Ym1pdCBhbGwgdGhlIGNsYXNzIGZpbGVzJm5ic3A7ICggY2xhc3MgY29udGFpbmluZyBtYWluKCkgZnVuY3Rpb24gc2hvdWxkIGJlIG5hbWVkIHB1YmxpYyBjbGFzcyBNYWluICk8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPlRoZSBUb3VybmFtZW50Ojwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZSB0b3VybmFtZW50IHdpbGwgdGFrZSBwbGFjZSBvbiAqREFURSBORUVEUyBUTyBCRSBBRERFRCosIGVhcmx5IGluIHRoZSBtb3JuaW5nLiBBZnRlciByZWdpc3RyYXRpb24gKCpEQVRFIE5FRURTIFRPIEJFIEFEREVEKikgYSBzY2hlZHVsZSB3aWxsIGJlIGdlbmVyYXRlZCBhbmQgY29udGVzdGFudHMgd2lsbCBiZSBub3RpZmllZC4gT24gKkRBVEUgTkVFRFMgVE8gQkUgQURERUQqIHRoZWlyIGJvdHMgd2lsbCBwbGF5IGFjY29yZGluZyB0byB0aGF0IHNjaGVkdWxlIGFuZCB0aGUgTGFzdCBCb3QgU3RhbmRpbmcgd2lsbCBiZSBhbm5vdW5jZWQgYXMgd2lubmVyLjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+RWxpZ2liaWxpdHk6PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhlIGNvbnRlc3RhbnQgbXVzdCBiZSBhbiB1bmRlcmdyYWR1YXRlIHN0dWRlbnQgb2YgYW55IHVuaXZlcnNpdHkgaW4gQmFuZ2xhZGVzaC4gQnV0IGhlL3NoZSBkb2VzbiZyc3F1bzt0IG5lZWQgdG8gYmUgYSBDU0UvQ1MgbWFqb3IuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Jm5ic3A7PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+'),
(26, 'GamesNsports', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW44Ij4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPkdhbWVzICZhbXA7ICZuYnNwO1Nwb3J0czo8L2gxPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5XZWxjb21lIHRvIHRoZSB3b3JsZCBvZiBleGNpdGVtZW50ICZhbXA7IGNvbXBldGl0aW9uICwgd2hlcmUgeW91ciBwaHlzaWNhbCAmYW1wOyBtZW50YWwgc3RyZW5ndGggaXMgdGVzdGVkICZhbXA7IHlvdXIgaW5kaXZpZHVhbCBiZXN0IGdldHMgb3V0IG9mIHlvdSAuV2VsY29tZSB0byB0aGUgbWVnYS1ldmVudCAmbGRxdW87R2FtZXMgJmFtcDsgU3BvcnRzJnJkcXVvOy48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPkJveXMnIHNlY3Rpb246PC9zdHJvbmc+IDwvc3Bhbj48YnIgLz4gPGJyIC8+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4gV2UgaGF2ZSBkZXNpZ25lZCBhIG51bWJlciBvZiBldmVudHMgKGJveXMmcnNxdW87KSBzdWNoIGFzPC9zcGFuPjwvcD4NCjx1bD4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkludGVyLWJhdGNoIEZvb3RiYWxsPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5JbnRlci1iYXRjaCZuYnNwOyBDcmlja2V0PC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgc2luZ2xlIFRUPC9zcGFuPjwvbGk+DQo8L3VsPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgRG91YmxlIENhcm9tIGV0YyAuPC9zcGFuPjxiciAvPiA8YnIgLz48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiA8c3Ryb25nPnZlbnVlOjwvc3Ryb25nPiAmbmJzcDtUaGUgb3V0ZG9vciBib3lzJnJzcXVvOyBldmVudHMgd2lsbCBiZSBvbiBCdWV0LWZpZWxkICZhbXA7IHRoZSBpbmRvb3IgZXZlbnRzIG9uIEJ1ZXQtaGFsbHMuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz5HaXJscycgc2VjdGlvbjo8L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgZ2lybHMmcnNxdW87IGV2ZW50cyBhbHNvIGluY2x1ZGU8L3NwYW4+PC9wPg0KPHVsPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Rm9vdGJhbGw8L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkJhZG1pbnRvbjwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Jm5ic3A7Q2Fyb208L3NwYW4+PC9saT4NCjwvdWw+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZXNlIHdpbGwgYmUgcGxheWVkIGluIENoYXRyaS1oYWxsIC48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPkNvbWJpbmVkIFNlY3Rpb246PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+V2UgaGF2ZSBhIG51bWJlciBvZiBjb21iaW5lZCBnYW1lcyBsaWtlPC9zcGFuPjwvcD4NCjx1bD4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkNoZXNzPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5DYXJkczwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+THVkdTwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+U2hvb3RpbmcgJm5ic3A7PC9zcGFuPjwvbGk+DQo8L3VsPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4mbmJzcDtUaGF0IHdpbGwgYmUgZm9yIGFsbCAmYW1wOyB3aWxsIGJlIHBsYXllZCBvbiBjbGFzc3Jvb20gaW4gZnJlZSB0aW1lIG9mLWNvdXJzZS48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgZGV0YWlscyBvZiB0aW1pbmcgb2YgdGhlc2Ugd2lsbCBiZSBkZXRlcm1pbmVkIGFzIHNvb24gYXMgYWxsIHRoZSBjbGFzcyByb3V0aW5lcyBhcmUgY29sbGVjdGVkLiBUaGUgcmVnaXN0cmF0aW9uIHdpbGwgYmUgc3RhcnRlZCB3aXRoIGluIHRoaXMgd2VlayAuICZuYnNwO1dlIGFyZSBleHBlY3RpbmcgYSBodWdlIHBhcnRpY2lwYXRpb24gZnJvbSB5b3UuPC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9kaXY+'),
(28, 'system_prototyping_contest_schedule', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJzeXN0ZW1fcHJvdG90eXBpbmdfNDAwIiBzcmM9Ii4uLy4uL2Fzc2V0cy9waWN0dXJlcy9zeXN0ZW1fcHJvdG90eXBpbmdfNDAwLmpwZyIgYWx0PSJzeXN0ZW1fcHJvdG90eXBpbmdfNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPlN5c3RlbSBQcm90b3R5cGluZyBTY2hlZHVsZTwvaDE+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+UmVnaXN0cmF0aW9uPC9zcGFuPjwvc3Ryb25nPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+Ojwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BIHRlYW0gY2FuIGhhdmUgYSBtYXhpbXVtIG9mIDMgYW5kIG1pbmltdW0gb2YgMiBtZW1iZXJzLiBBbGwgdGVhbXMgaGF2ZSB0byByZWdpc3RlciB0aHJvdWdoIHdlYiAoKS48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPlJlZ2lzdHJhdGlvbiBQcm9jZXNzOjwvc3Bhbj48L3N0cm9uZz48L3NwYW4+PC9wPg0KPHVsPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+RWFjaCB0ZWFtIGhhcyB0byBmaWxsIHVwIGEgPHN0cm9uZz5yZWdpc3RyYXRpb24gZm9ybTwvc3Ryb25nPiBvbmxpbmUuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BZnRlciBzdWNjZXNzZnVsIHJlZ2lzdHJhdGlvbiB0aGV5IHdpbGwgYmUgcHJvdmlkZWQgYSA8c3Ryb25nPjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPktFWS48L3NwYW4+PC9zdHJvbmc+PC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UZWFtcyBoYXZlIHRvIHByb3ZpZGUgdGhlc2UgPHN0cm9uZz5LRVk8L3N0cm9uZz4gYXMgaWRlbnRpZmljYXRpb24gbnVtYmVyIGR1cmluZyB0aGUgPHN0cm9uZz5TY3JlZW5pbmcgVGVzdC48L3N0cm9uZz48L3NwYW4+PC9saT4NCjwvdWw+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+UG9zdCBSZWdpc3RyYXRpb24gUHJvY2Vzczo8L3NwYW4+PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+U2NyZWVuaW5nOjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkFsbCB0ZWFtcyBoYXZlIHRvIGdvIHRocm91Z2ggYSBwcmVsaW1pbmFyeSBzZWxlY3Rpb24gcHJvY2Vzcy4gQSBzY3JlZW5pbmcgdGVzdCB3aWxsIGJlIGhlbGQgdG8gY2hvb3NlIHRoZSBiZXN0IHRlYW1zIGZvciB0aGUgZmluYWwgY29udGVzdC48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5Hcm9vbWluZzo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BZnRlciB0aGUgc2NyZWVuaW5nIHRlc3QsIGEgJmxkcXVvOzxzdHJvbmc+R3Jvb21pbmcgU2Vzc2lvbjwvc3Ryb25nPiZyZHF1bzsgd2lsbCBiZSBoZWxkIHRvIGJyaWVmIHRoZSBzdHVkZW50cyBhYm91dCB0aGUgY29tcGV0aXRpb24gZm9ybWF0IGFuZCB0by1kb3MuPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4qKipUaGUgdGVhbXMgc2VsZWN0ZWQgdGhyb3VnaCB0aGUgc2NyZWVuaW5nIHRlc3Qgd2lsbCBoYXZlIHRvIHJlZ2lzdGVyIGZvciB0aGUgZmluYWwgY29udGVzdCB3aXRoIGEgcmVnaXN0cmF0aW9uIGZlZSBvZiA1MDAgQkRULjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+Q29udGVzdCBGb3JtYXQ6PC9zcGFuPjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkEgcHJvYmxlbSBkZXBpY3Rpbmcgc29tZSByZWFsIGxpZmUgc2NlbmFyaW8gd2lsbCBiZSBnaXZlbi4gVGhlIGNvbnRlc3RhbnRzIHdpbGwgYmUgYXNrZWQgdG8gZGVzaWduIHRoZSBkYXRhYmFzZSwgc29tZSByZWxldmFudCBkaWFncmFtcyBhbmQgdGhlbiBkZXZlbG9wIHRoZSBzeXN0ZW0uIFRoZSB0ZWFtcyB3aWxsIGdldCBhdCBtb3N0IDUgaHJzIHRvIGRldmVsb3AgdGhlIHN5c3RlbS48L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPlRpbWUgVGFibGU6PC9zcGFuPjwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlByb3Bvc2VkIERhdGU6IDxzdHJvbmc+PHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+MjEvMDMvMjAxMzwvc3Bhbj4oVGh1cnNkYXkpPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjx0YWJsZSBib3JkZXI9IjEiIGNlbGxzcGFjaW5nPSIwIiBjZWxscGFkZGluZz0iMCI+DQo8dGJvZHk+DQo8dHI+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIxMzMiPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPlRpbWU8L3N0cm9uZz48L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjIzNCI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+RXZlbnQ8L3N0cm9uZz48L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjI3MSI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Tm90ZXMod2lsbCBub3QgYXBwZWFyIGluIHdlYnNpdGUpPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMTMzIj4NCjxwIGFsaWduPSJjZW50ZXIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz44LjAwIEFNIC05LjAwIEFNPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyMzQiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5SZXBvcnRpbmcgYW5kIEtpdCBjb2xsZWN0aW9uPC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyNzEiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij4mbmJzcDs8L3NwYW4+PC9wPg0KPC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIxMzMiPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPjkuMDAgQU0gJm5kYXNoOyAxLjAwIFBNPC9zdHJvbmc+PC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyMzQiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5Db250ZXN0IChzeXN0ZW0gZGV2ZWxvcG1lbnQpPC9zcGFuPjwvcD4NCjwvdGQ+DQo8dGQgdmFsaWduPSJ0b3AiIHdpZHRoPSIyNzEiPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5TeXN0ZW0gZGVzaWduIGFuZCBkZXZlbG9wbWVudDwvc3Bhbj48L3A+DQo8L3RkPg0KPC90cj4NCjx0cj4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjEzMyI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+MS4wMCBQTSAmbmRhc2g7IDIuMDAgUE08L3N0cm9uZz48L3NwYW4+PC9wPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOzwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8L3RkPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMjM0Ij4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+THVuY2ggQnJlYWs8L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjI3MSI+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPiZuYnNwOzwvc3Bhbj48L3A+DQo8L3RkPg0KPC90cj4NCjx0cj4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjEzMyI+DQo8cCBhbGlnbj0iY2VudGVyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Mi4wMFBNLTMuMDAgUE08L3N0cm9uZz48L3NwYW4+PC9wPg0KPHAgYWxpZ249ImNlbnRlciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij48c3Ryb25nPiZuYnNwOzwvc3Ryb25nPjwvc3Bhbj48L3A+DQo8L3RkPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMjM0Ij4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Q29udGVzdCAoc3lzdGVtIGRldmVsb3BtZW50KTwvc3Bhbj48L3A+DQo8L3RkPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMjcxIj4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+Jm5ic3A7PC9zcGFuPjwvcD4NCjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHZhbGlnbj0idG9wIiB3aWR0aD0iMTMzIj4NCjxwIGFsaWduPSJjZW50ZXIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz4zLjAwIFBNLTUuMDAgUE08L3N0cm9uZz48L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjIzNCI+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlByZXNlbnRhdGlvbiBhbmQgUS9BIHNlc3Npb248L3NwYW4+PC9wPg0KPC90ZD4NCjx0ZCB2YWxpZ249InRvcCIgd2lkdGg9IjI3MSI+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlNlcGFyYXRlIFJvb21zIHdpbGwgYmUgcHJvdmlkZWQgZm9yIFByZXNlbnRhdGlvbiBvZiByZXNwZWN0aXZlIGNyaXRlcmlhLiBFc3RpbWF0ZWQgdGltZSAoY29uc2lkZXJpbmcgbWF4IDEyIHRlYW1zIGluIFBIUC9XaW5kb3dzIFBsYXRmb3JtL0FuZHJvaWQpPC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+MTJYOCA9IDk2IG1pbithZGRpdGlvbmFsIHRpbWU8L3NwYW4+PC9wPg0KPC90ZD4NCjwvdHI+DQo8L3Rib2R5Pg0KPC90YWJsZT4NCjwvZGl2Pg0KPC9kaXY+');
INSERT INTO `pages` (`page_id`, `title`, `content`) VALUES
(27, 'system_prototyping_contest_rules', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+PGltZyBjbGFzcz0iZm9jdXMtaW1hZ2UiIHRpdGxlPSJzeXN0ZW1fcHJvdG90eXBpbmdfNDAwIiBzcmM9Ii4uLy4uL2Fzc2V0cy9waWN0dXJlcy9zeXN0ZW1fcHJvdG90eXBpbmdfNDAwLmpwZyIgYWx0PSJzeXN0ZW1fcHJvdG90eXBpbmdfNDAwIiB3aWR0aD0iNDAwIiBoZWlnaHQ9IjM0NCIgLz4NCjxoMSBjbGFzcz0iY3VzdG9tLWZvbnQiPlN5c3RlbSBQcm90b3R5cGluZyBSdWxlczwvaDE+DQo8cD48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPjxzdHJvbmc+Jm5ic3A7PC9zdHJvbmc+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+PHN0cm9uZz5SdWxlcyBhbmQgUmVndWxhdGlvbjo8L3N0cm9uZz48L3NwYW4+PC9wPg0KPG9sPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhlIGxhbmd1YWdlIG9mIHRoZSBDb250ZXN0IGlzIEVuZ2xpc2guIEFsbCB3cml0dGVuIGNvbnRlc3QgbWF0ZXJpYWxzIHdpbGwgYmUgaW4gRW5nbGlzaC48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkFsbCBwYXJ0aWNpcGFudHMgbXVzdCBiZSBhIGN1cnJlbnQgc3R1ZGVudCBvZiBpbnZpdGVkIHVuaXZlcnNpdHkuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BbGwgdGhlIHRlYW0gbWVtYmVycyBzaG91bGQgYmUgb2Ygc2FtZSB1bml2ZXJzaXR5Ljwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+RWFjaCB0ZWFtIGNvbnNpc3RzIG9mIHRocmVlL3R3byBjb250ZXN0YW50cywgd2hvIG11c3QgYmUgZW5yb2xsZWQgaW4gYSBkZWdyZWUgcHJvZ3JhbSBhdCB0aGVpciByZXNwZWN0aXZlIGluc3RpdHV0aW9uLjwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGhlIHJlc3RyaWN0aW9uIG9uIHRoZSBudW1iZXIgb2YgdGVhbXMgaXMgbm90IGFwcGxpY2FibGUgdG8gdGhlIGhvc3QgdW5pdmVyc2l0eS48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZSBjb250ZXN0IHdpbGwgcnVuIGZvciBhcm91bmQgNSBob3Vycy48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPkZhaWx1cmUgaW4gPHN0cm9uZz5zY3JlZW5pbmcgdGVzdDwvc3Ryb25nPiB3aWxsIHJlc3VsdCBpbiBlbGltaW5hdGlvbiBmcm9tIHRoZSBjb250ZXN0Ljwvc3Bhbj48L2xpPg0KPGxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IGxhcmdlOyI+VGVhbXMgaGF2ZSB0byBicmluZyB0aGVpciA8c3Ryb25nPm93biBMYXB0b3BzIDwvc3Ryb25nPmR1cmluZzxzdHJvbmc+IGZpbmFsIGNvbnRlc3QuIE5vIHdvcmtzdGF0aW9uIHdpbGwgYmUgcHJvdmlkZWQuPC9zdHJvbmc+PC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5BIHRlYW0gbWF5IGJlIGRpc3F1YWxpZmllZCBieSB0aGUgY29udGVzdCBkaXJlY3RvciBmb3IgYW55IGFjdGl2aXR5IHRoYXQgamVvcGFyZGl6ZXMgdGhlIGNvbnRlc3Qgc3VjaCBhcyBkaXNsb2RnaW5nIGV4dGVuc2lvbiBjb3JkcywgdW5hdXRob3JpemVkIG1vZGlmaWNhdGlvbiBvZiBjb250ZXN0IG1hdGVyaWFscywgb3IgZGlzdHJhY3RpbmcgYmVoYXZpb3IuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UZWFtcyBhcmUgZnJlZSB0byB1c2UgYW55IElERSBhcyBwZXIgdGhlaXIgcmVxdWlyZW1lbnQuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UZWFtcyBhcmUgYWxsb3dlZCB1c2UgdGhlaXIgb3duIHRlbXBsYXRlIGRlc2lnbmVkIGJlZm9yZWhhbmQuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UZWFtcyBjYW4gYnJpbmcgdGhlaXIgb3duIDxzdHJvbmc+TW9kZW08L3N0cm9uZz4uPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5JbnRlcm5ldCBzZXJ2aWNlIHdpbGwgYmUgcHJvdmlkZWQgdG8gYWNjZXNzIGhlbHAgaW5mb3JtYXRpb24gdGhyb3VnaCBpbnRlcm5ldC48L3NwYW4+PC9saT4NCjxsaT48c3BhbiBzdHlsZT0iZm9udC1zaXplOiBsYXJnZTsiPlRoZSBkZWNpc2lvbiBtYWRlIGJ5IHRoZSBqdWRnZSBwYW5lbCB3aWxsIGJlIHRyZWF0ZWQgYXMgZmluYWwuPC9zcGFuPjwvbGk+DQo8bGk+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogbGFyZ2U7Ij5UaGUgU3lzdGVtIERlc2lnbiBhbmQgRGV2ZWxvcG1lbnQgQ29udGVzdCBjb21taXR0ZWUgcHJlc2VydmVzIGFsbCB0aGUgcG93ZXIgdG8gY2hhbmdlIGFsbCB0aGUgcnVsZXMgJmFtcDsgcmVndWxhdGlvbnMgYW5kIHRvIHRha2UgYW55IGFjdGlvbiBkdXJpbmcgY29udGVzdC48L3NwYW4+PC9saT4NCjwvb2w+PC9kaXY+DQo8L2Rpdj4='),
(29, 'system_prototyping_contest_ranklist', 'PGRpdiBjbGFzcz0icm93LWZsdWlkIj4NCjxkaXYgY2xhc3M9InNwYW4xMiI+DQo8aDEgY2xhc3M9ImN1c3RvbS1mb250Ij5TeXN0ZW0gUHJvdG90eXBlIENvbnRlc3QgUmFua2xpc3Q8L2gxPg0KPC9kaXY+DQo8L2Rpdj4=');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_type` varchar(10) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `registration_date_time` datetime NOT NULL,
  `status` varchar(30) NOT NULL,
  `payment_status` varchar(3) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_type`, `project_name`, `registration_date_time`, `status`, `payment_status`) VALUES
(1, '', '0', '2013-02-14 07:00:00', 'registered', '0'),
(2, 'software', '', '2013-02-14 08:00:00', 'registered', '0'),
(3, 'software', 'Devils', '2013-02-14 08:00:00', 'registered', '0');

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE IF NOT EXISTS `project_members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `session` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `project_members`
--

INSERT INTO `project_members` (`member_id`, `project_id`, `student_id`, `name`, `email`, `institution`, `department`, `session`, `phone`, `address`) VALUES
(1, 2, '0805034', 'name1', 'email1', 'Bangladesh', 'CSE', 0, 'phone1', ''),
(2, 2, '', 'name2', 'email2', 'Bangladesh', 'CSE', 0, 'phone2', ''),
(3, 2, 'st3', 'name3', 'email3', '0', '0908977', 0, 'phone3', 'assaa'),
(4, 3, '0805034', 'name1', 'email1', 'Bangladesh', 'CSE', 0, 'phone1', 'lalmdsakdad'),
(5, 3, 'st2', 'name2', 'email2', 'Bangladesh', 'CSE', 0, 'phone2', 'asdasdad'),
(6, 3, 'st3', 'name3', 'c_maksud@outlook.com', '0', '0908977', 0, 'phone3', 'ssadasds');

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
