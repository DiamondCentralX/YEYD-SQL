SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE TABLE IF NOT EXISTS `accounting_inntekt` (
  `inntekt_id` int(11) NOT NULL AUTO_INCREMENT,
  `mengde` double NOT NULL,
  `dato` varchar(12) NOT NULL,
  `fra` varchar(64) NOT NULL,
  `bruker` int(11) NOT NULL,
  PRIMARY KEY (`inntekt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

CREATE TABLE IF NOT EXISTS `accounting_noenlaner` (
  `lan_id` int(11) NOT NULL AUTO_INCREMENT,
  `mengde` double NOT NULL,
  `dato` varchar(12) NOT NULL,
  `hvem` varchar(64) NOT NULL,
  `forhva` varchar(128) NOT NULL,
  `betalt` int(1) NOT NULL DEFAULT '0',
  `bruker` int(11) NOT NULL,
  PRIMARY KEY (`lan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `accounting_utgift` (
  `utgift_id` int(11) NOT NULL AUTO_INCREMENT,
  `mengde` double NOT NULL,
  `dato` varchar(12) NOT NULL,
  `fra` varchar(64) NOT NULL,
  `bruker` int(11) NOT NULL,
  PRIMARY KEY (`utgift_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

CREATE TABLE IF NOT EXISTS `clicks` (
  `click_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `date` varchar(32) NOT NULL,
  PRIMARY KEY (`click_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=533 ;

CREATE TABLE IF NOT EXISTS `docs` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` blob NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

CREATE TABLE IF NOT EXISTS `logoquiz_logos` (
  `logo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`logo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

INSERT INTO `logoquiz_logos` (`logo_id`, `name`) VALUES
(1, 'microsoft'),
(2, 'skype'),
(3, 'kongregate'),
(4, 'windows 8'),
(5, 'logmein'),
(6, 'wikipedia'),
(7, 'google'),
(8, 'facebook'),
(9, 'twitter'),
(10, 'youtube'),
(11, 'anarchy'),
(12, 'nike'),
(13, 'mcdonalds'),
(14, 'shell'),
(15, 'starbucks'),
(16, 'ferrari'),
(17, 'acer'),
(18, 'android'),
(19, 'quiksilver'),
(20, 'bmw'),
(21, 'minecraft'),
(22, 'steam'),
(23, 'google chrome'),
(24, 'firefox'),
(25, 'safari'),
(26, 'internet explorer'),
(27, 'apple'),
(28, 'github'),
(29, 'jquery'),
(30, 'outlook.com');

CREATE TABLE IF NOT EXISTS `logoquiz_solved` (
  `solved_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`solved_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL,
  `date` varchar(64) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` blob NOT NULL,
  `timestamp` int(11) NOT NULL,
  `date` varchar(64) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  `date` varchar(64) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;


CREATE TABLE IF NOT EXISTS `todolist_tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(256) NOT NULL,
  `completed` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `about` text NOT NULL,
  `website` varchar(1024) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `google+` varchar(128) NOT NULL DEFAULT '',
  `steam` varchar(128) NOT NULL DEFAULT '',
  `skype` varchar(128) NOT NULL DEFAULT '',
  `minecraft` varchar(128) NOT NULL DEFAULT '',
  `youtube` varchar(128) NOT NULL DEFAULT '',
  `is_banned` int(11) NOT NULL DEFAULT '0',
  `profile_privacy` int(11) NOT NULL DEFAULT '3',
  `gender` varchar(32) NOT NULL DEFAULT 'Unknown',
  `species` varchar(32) NOT NULL DEFAULT 'Unknown',
  `search_able` int(11) NOT NULL DEFAULT '1',
  `address` varchar(256) NOT NULL DEFAULT '',
  `job` varchar(64) NOT NULL DEFAULT '',
  `app_docs` int(11) NOT NULL DEFAULT '0',
  `app_accounting` int(11) NOT NULL DEFAULT '0',
  `app_logoquiz` int(11) NOT NULL DEFAULT '0',
  `app_todolist` int(11) NOT NULL DEFAULT '0',
  `pengetype` varchar(5) NOT NULL DEFAULT '$',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
