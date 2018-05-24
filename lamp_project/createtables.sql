-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2017 at 02:02 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lamp_final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_category` varchar(30) NOT NULL,
  `sub_category` varchar(30) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `main_category`, `sub_category`) VALUES
(1, 'sale', 'Books'),
(2, 'sale', 'Electronics'),
(3, 'sale', 'Household'),
(4, 'services', 'computer'),
(5, 'services', 'financial'),
(6, 'services', 'lesson'),
(7, 'jobs', 'Full_time'),
(8, 'jobs', 'part_time'),
(9, 'jobs', 'volunteering');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `country`, `city`) VALUES
(1, 'USA', 'Cupertino'),
(2, 'USA', 'Sacramento'),
(3, 'USA', 'New York'),
(4, 'India', 'Delhi'),
(5, 'India', 'Mumbai'),
(6, 'India', 'Hyderabad'),
(7, 'Sweden', 'Gothenburg'),
(8, 'Sweden', 'Stockholm'),
(9, 'Sweden', 'Malmo');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('user1', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `description` varchar(70) NOT NULL,
  `category` varchar(40) NOT NULL,
  `sub_category` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `email` varchar(40) NOT NULL,
  `img1` varchar(256) DEFAULT NULL,
  `img2` varchar(256) DEFAULT NULL,
  `img3` varchar(256) DEFAULT NULL,
  `img4` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `description`, `category`, `sub_category`, `country`, `city`, `price`, `email`, `img1`, `img2`, `img3`, `img4`) VALUES
(1, 'Five point someone', 'what not to do at IIT', 'sale', 'Books', 'India', 'Delhi', 30, 'book@edu.com', NULL, NULL, NULL, NULL),
(3, 'Ganga Ghat', 'by Sudha Murthy', 'sale', 'Books', 'India', 'Hyderabad', 50, 'sudhabook@info.com', NULL, NULL, NULL, NULL),
(2, 'The day i stopped drinking mil', 'Life stories from here and there -by Sudha Murthy', 'sale', 'Books', 'India', 'Mumbai', 10, 'sudha@info.com', NULL, NULL, NULL, NULL),
(4, 'Laptop', 'Microsoft surface pro', 'sale', 'Electronics', 'USA', 'Cupertino', 600, 'best@info.com', NULL, NULL, NULL, NULL),
(5, 'Tablet', 'Nexus', 'sale', 'Electronics', 'USA', 'Sacramento', 300, 'Nexus@info.com', NULL, NULL, NULL, NULL),
(6, 'Mobile', 'Samsung Note', 'sale', 'Electronics', 'USA', 'New York', 800, 'samsung@info.com', NULL, NULL, NULL, NULL),
(7, 'Juicer', 'Hamilton beach', 'sale', 'Household', 'Sweden', 'Gothenburg', 55, 'hamilton@info.com', NULL, NULL, NULL, NULL),
(8, 'Cookware', 'cusine art', 'sale', 'Household', 'Sweden', 'Stockholm', 100, 'cusineart@info.com', NULL, NULL, NULL, NULL),
(9, 'Lamp', 'IKEA lamp', 'sale', 'Household', 'Sweden', 'Malmo', 20, 'ikea@info.com', NULL, NULL, NULL, NULL),
(10, 'software update', 'windows', 'services', 'Computer', 'India', 'Delhi', 258, 'software@red.com', NULL, NULL, NULL, NULL),
(11, 'Hardware', 'computer repair', 'services', 'Computer', 'India', 'Mumbai', 45, 'elec@hw.com', NULL, NULL, NULL, NULL),
(12, 'tablet repair', 'repair ', 'services', 'Computer', 'India', 'Hyderabad', 78, 'tablet@repair.com', NULL, NULL, NULL, NULL),
(13, 'Bank manager', 'finance department', 'services', 'Financial', 'USA', 'Cupertino', 60, 'finance@dep.com', NULL, NULL, NULL, NULL),
(14, 'CA', 'charted accountant', 'services', 'Financial', 'USA', 'Sacramento', 90, 'ca@account.com', NULL, NULL, NULL, NULL),
(15, ' Manager MBA', 'insurance company', 'services', 'Financial', 'USA', 'New York', 70, 'insurance@info.com', NULL, NULL, NULL, NULL),
(16, 'History', 'world history', 'services', 'Lesson', 'Sweden', 'Gothenburg', 12, 'history@world.com', NULL, NULL, NULL, NULL),
(17, 'Science', 'astrology', 'services', 'Lesson', 'Sweden', 'Stockholm', 56, 'science@as.com', NULL, NULL, NULL, NULL),
(18, 'web design', 'web design', 'services', 'Lesson', 'Sweden', 'Malmo', 50, 'web@info.com', NULL, NULL, NULL, NULL),
(19, 'software engineer', 'software engineer', 'jobs', 'Full_Time', 'India', 'Delhi', 1000, 'softlink@in.com', NULL, NULL, NULL, NULL),
(20, 'web developer', 'computer science', 'jobs', 'Full_Time', 'India', 'Mumbai', 4000, 'calsoft@info.com', NULL, NULL, NULL, NULL),
(21, 'UI designer', 'web design', 'jobs', 'Full_Time', 'India', 'Hyderabad', 5000, 'kpit@info.com', NULL, NULL, NULL, NULL),
(22, 'receptionist', 'macd', 'jobs', 'Part_Time', 'USA', 'Cupertino', 99, 'recept@link.com', NULL, NULL, NULL, NULL),
(23, 'Internship', 'gap', 'jobs', 'Part_Time', 'USA', 'Sacramento', 125, 'intern@info.com', NULL, NULL, NULL, NULL),
(24, 'TA', 'RIT', 'jobs', 'Part_Time', 'USA', 'New York', 40, 'rit@edu.com', NULL, NULL, NULL, NULL),
(25, 'park maintanence', 'maintanence', 'jobs', 'Volunteering', 'Sweden', 'Gothenburg', 10, 'park@vol.com', NULL, NULL, NULL, NULL),
(26, 'farmers market', 'help to built up a tent', 'jobs', 'Volunteering', 'Sweden', 'Stockholm', 2, 'farmers@market.com', NULL, NULL, NULL, NULL),
(27, 'event ', 'event management anywhere in portland', 'jobs', 'Volunteering', 'Sweden', 'Malmo', 10, 'event@info.com', NULL, NULL, NULL, NULL);
