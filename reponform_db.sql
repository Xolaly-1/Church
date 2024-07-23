-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2024 at 07:31 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reponform_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `age` int(10) NOT NULL,
  `subject` text NOT NULL,
  `filename` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
CREATE TABLE IF NOT EXISTS `diary` (
  `D_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `submitted` varchar(50) NOT NULL,
  PRIMARY KEY (`D_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diary`
--

INSERT INTO `diary` (`D_id`, `title`, `date`, `subject`, `submitted`) VALUES
(1, 'Learning Driving 2', '2021-09-27', 'I stared learning driving on 27th September, 2020 by Papa Kwesi AniAgyei of Suziana Dorgbadzi husband.\r\nHe continued with me on 11th October, 2020.', 'G.Overseer / Founder'),
(2, 'Davie', '2022-06-15', 'Comfort Atyive died.', 'Secretary'),
(3, 'Ministaria Study', '2022-05-31', 'The school of ministry is for you!!!', 'Ass. G.O'),
(4, 'International Passport', '2022-07-12', 'Hope processed international passport and he got it today: 12th July, 2022 returned home 2:00PM.\r\nTo God Be the Glory.', 'G.Overseer / Founder'),
(5, 'Texting', '2022-08-01', 'What is texting?', 'G.Overseer / Founder'),
(11, 'More Study', '', 'Ok, I hear you.[', 'G.Overseer / Founder'),
(8, 'Prayer for today', '2022-08-01', 'Hi brethren my name is Patink. I had a very wonderful prayer with my mother today (1st August,2022), Please pray that God Almighty should grant your request in Jesus Name.\r\nBrethren the prayer was about breakthrough in my life. Thank you.\r\n@ Patink_Love\r\nHashtag: Mother Love ', 'Patink'),
(9, 'Hope & Faith', '08-01-2022', 'lkplgkrepgkr kop[krgpokrgt rngop;jrogew', 'G.Overseer / Founder'),
(10, 'Think', '08-01-2022', 'ktgopkhporekhyper', 'Ass. G.O'),
(12, 'Ken Togbe Wife Funeral', '08-03-2022', 'This is to inform you', 'Ass. Finacial Secretary');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
CREATE TABLE IF NOT EXISTS `donate` (
  `Donate_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(55) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `record_date` varchar(50) NOT NULL,
  `update_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Donate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`Donate_id`, `fullname`, `email`, `telephone`, `amount`, `comment`, `record_date`, `update_date`) VALUES
(1, 'Kofi Nii', 'you@you.com', '+233592140092', '200-300', 'Yes try it', '21-05-2024', NULL),
(2, 'Kofi Nii', 'you@you.com', '+233592140092', '200-300', 'Yes try it', '21-05-2024', NULL),
(3, 'Chief Awojale Onileola', 'davidolawole1@gmail.com', '+1976318972', '1000-200', 'Thankkkkkkkk You.', '22-05-2024', NULL),
(4, 'Mabina Dorgbadzi Kwdjo', 'you@you.com', '+233201191925', '1000-200', 'Thank', '22-05-2024', NULL),
(5, 'Kwdjo Kwame Richard', 'you@you.com', '+233592140092', '400-600', 'Yes ooo.', '22-05-2024', NULL),
(6, 'Richard Ayivie Moses', 'you@you.com', '0248729081', '400-600', 'Thank', '22-05-2024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

DROP TABLE IF EXISTS `expences`;
CREATE TABLE IF NOT EXISTS `expences` (
  `Expences_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `particulars` varchar(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `submitted` text NOT NULL,
  PRIMARY KEY (`Expences_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expences`
--

INSERT INTO `expences` (`Expences_id`, `month`, `date`, `particulars`, `amount`, `submitted`) VALUES
(10, 'May', '2021-03-29', 'Given', '200.00', 'D.A.Olawole'),
(11, 'February', '2021-03-30', 'Software', '201.00', 'General Overseer'),
(6, 'May', '2020-05-18', 'The Needies', '470.00', 'General Overseer'),
(14, 'August', '2022-08-10', 'Support of Women', '200.00', 'G.Overseer / Founder'),
(12, 'January', '2022-01-28', 'bncvn', '455.60', 'vcncv'),
(13, 'June', '2022-06-23', 'Suz', '373.00', 'G.Overseer / Founder'),
(15, 'June', '2022-08-09', 'Bread for pastor', '20.00', 'Treasurer'),
(16, 'January', '2022-08-09', 'Doors Church', '250.00', 'Sec.');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `size` int(100) NOT NULL,
  `downloads` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `downloads`) VALUES
(1, 'Advanced-java.pdf', 893740, 3),
(2, 'kisspng-holy-spirit-prayer-christian-church-clip-art-doves-5ac01178bf9600.9012025915225368247848.png', 243083, 2),
(3, 'Customary marriage rites.pdf', 113124, 3),
(4, '7 things the Holy Spirit will do in.pdf', 635300, 0);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE IF NOT EXISTS `income` (
  `Income_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `income_type` varchar(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `submitted` text NOT NULL,
  PRIMARY KEY (`Income_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`Income_id`, `month`, `date`, `income_type`, `amount`, `submitted`) VALUES
(10, 'March', '2021-03-31', 'Special Offertory', '120.00', 'D.A.Olawoles'),
(9, 'February', '2021-03-30', 'Special Offertory', '456.00', 'D.A.Olawole'),
(8, 'January', '2021-03-30', 'Offertory', '345.00', 'D.A.Olawole');

-- --------------------------------------------------------

--
-- Table structure for table `joinus`
--

DROP TABLE IF EXISTS `joinus`;
CREATE TABLE IF NOT EXISTS `joinus` (
  `join_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `mobile` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `when_acc_christ` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `comments` text NOT NULL,
  `record_date` varchar(50) NOT NULL,
  `update_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`join_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joinus`
--

INSERT INTO `joinus` (`join_id`, `name`, `dob`, `gender`, `occupation`, `mobile`, `email`, `when_acc_christ`, `department`, `comments`, `record_date`, `update_date`) VALUES
(1, 'Florence dadamu Kofi', '', 'Female', 'Swetres', '+234837837372', 'you@you.com', '14/10/2001', 'Mission Partner', 'Yes i wish to join you.', '22-05-2024', NULL),
(2, 'Nana Kofi Ashampong', '', 'Male', 'Student', '0245763890', 'you@you.com', '25th Jan. 2010', 'General', 'Yesskjffkngfmm', '22-05-2024', NULL),
(3, 'Ololade Jospeh Ogungbe', '', 'Gender', 'Farmer', '+197636578792', 'you@you.com', '17/09/1989', 'Evangelism Team', 'Thank', '22-05-2024', NULL),
(4, 'Faith Olayemi Olawole', '12/04/1999', 'Female', 'Student', '+233597461325', 'you@you.com', '14/10/2001', 'Evangelism Team', 'Thank you bro.', '22-05-2024', NULL),
(5, 'Morenikeji Bolaajoko Ojoade', '12th May, 2006', 'Female', 'Banker', '+233587234123', 'you@you.com', '25th Jan. 2018', 'Evangelism Team', 'tttttttttttttttt', '22-05-2024', NULL),
(6, 'Bolaajoko Ojoade Kofi', '12th April, 1006', 'Female', 'Student', '+234837837372', 'you@you.com', '25th Jan. 2010', 'Medial Supporter', 'Thank', '22-05-2024', NULL),
(7, 'Apostle David Olawole', '3rd Feb. 1999', 'Male', 'Clergy', '0201191925', 'davidolawole1@gmail.com', 'September 1980', 'General', 'Thankkkkkkkkkkkkkkkkkkkkkkkkkk.', '22-05-2024', NULL),
(8, 'Morounke Omomeji', '12th April, 1006', 'Female', 'Student', '+23487834750976', 'you@you.com', '17/09/1989', 'Medial Supporter', 'Thank Yoooooooou Sir.', '22-05-2024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leaders`
--

DROP TABLE IF EXISTS `leaders`;
CREATE TABLE IF NOT EXISTS `leaders` (
  `leader_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` varchar(55) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`leader_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `minute`
--

DROP TABLE IF EXISTS `minute`;
CREATE TABLE IF NOT EXISTS `minute` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minute`
--

INSERT INTO `minute` (`id`, `title`, `date`, `location`) VALUES
(2, 'Kolade', '2020-07-07', 'bible_PNG45.png'),
(4, 'aaa', '2020-07-08', 'bible_PNG48.png'),
(9, 'Dorah D', '2020-07-10', 'How-to-Prepare-for-Judgment-Day-booklet.pdf'),
(12, 'Evang. Davids', '2020-07-14', '100 Bible Lessons.pdf'),
(13, 'Professor Kanji Dam', '2020-07-07', 'Advanced-java.pdf'),
(14, 'Solji Danjumah', '2020-06-30', 'SPIRIT, SOUL, AND BODY.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `obituary`
--

DROP TABLE IF EXISTS `obituary`;
CREATE TABLE IF NOT EXISTS `obituary` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `mname` varchar(40) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `filename` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obituary`
--

INSERT INTO `obituary` (`id`, `fname`, `lname`, `mname`, `age`, `gender`, `address`, `filename`) VALUES
(13, 'Angel', 'Colmenares', 'Locsin', 29, 'Female', 'Bulacan', 'angel locsin.jpg'),
(14, 'Anne', 'Curtis-Smith', 'Ojales', 29, 'Female', 'Australia', 'Anne Curtis.jpg'),
(15, 'Aubrey', 'Sandel', 'Miles', 36, 'Female', 'Caloocan', 'Aubrey_Miles.jpg'),
(16, 'Sylvia Valerie', 'Garcia', 'Pablo', 26, 'Female', 'Davao City', 'bangs garcia.jpg'),
(17, 'Denise Maria', 'Laurel', 'Sanz', 26, 'Female', 'Manila', 'Denise Laurel.jpg'),
(18, 'Samuelle Lynne', 'Pinto', 'Acosta', 24, 'Female', 'Philippines', 'Sam Pinto.jpg'),
(19, 'Chritine', 'Togbe', 'Affua', 87, 'Female', 'Amafrom via Pokuase', 'CALL TO PHONdE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
CREATE TABLE IF NOT EXISTS `pay` (
  `pid` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`pid`, `name`, `year`, `month`, `paydate`, `amount`) VALUES
(1, 'Davis Lekan Hope', '2022', 'June', '21st June, 2022', 22),
(2, 'Emmanuel Kolade Olawole', '2022', 'August', '05/08/2022', 50);

-- --------------------------------------------------------

--
-- Table structure for table `reponsive`
--

DROP TABLE IF EXISTS `reponsive`;
CREATE TABLE IF NOT EXISTS `reponsive` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `when_acc_christ` varchar(50) NOT NULL,
  `when_joined_sm` varchar(50) NOT NULL,
  `baptism` text NOT NULL,
  `duty` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `groupi` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `savings_expences`
--

DROP TABLE IF EXISTS `savings_expences`;
CREATE TABLE IF NOT EXISTS `savings_expences` (
  `SAexpences_id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(50) NOT NULL,
  `particulars` varchar(100) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `date` date DEFAULT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`SAexpences_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savings_expences`
--

INSERT INTO `savings_expences` (`SAexpences_id`, `month`, `particulars`, `amount`, `date`, `comment`) VALUES
(1, 'february', 'Elizabeth Atandzi was support.', 100.00, '2022-01-02', 'Every year support to landlady.'),
(2, 'January', 'Menu for Church', 100.00, '2021-12-26', 'Church provide menu during Annual Convection.'),
(3, 'January', 'Transport for Pastor', 10.00, '2021-12-29', 'I purchased credit for phone.'),
(4, 'January', 'Pastor Utlities', 200.00, '2022-01-05', 'I used the GHc200 to purchase some items for my household.');

-- --------------------------------------------------------

--
-- Table structure for table `schl`
--

DROP TABLE IF EXISTS `schl`;
CREATE TABLE IF NOT EXISTS `schl` (
  `schl_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `mobile` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `when_acc_christ` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `record_date` varchar(50) NOT NULL,
  `update_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`schl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schl`
--

INSERT INTO `schl` (`schl_id`, `name`, `dob`, `gender`, `occupation`, `mobile`, `email`, `when_acc_christ`, `class`, `country`, `record_date`, `update_date`) VALUES
(1, 'Apostle David Olawole', '20/12/1987', 'Male', 'Clergy', '+234837837372', 'you@you.com', 'Around 1988', 'Full / Part Time Class', 'Australia', '01-06-2024', NULL),
(2, 'Davids Hope Lekan', '23rd feb. 1985', 'Male', 'Engineering', '0592140092', 'davidolawole1@gmail.com', 'In The Year 2001', 'Full / Part Time Class', 'Argentina', '01-06-2024', NULL),
(3, 'Moses Moboluwaji', '14/12/2003', 'Male', 'Student', '+233597461925', 'you@you.com', '3rd April, 1990', 'Online Class', 'Angola', '01-06-2024', NULL),
(4, 'Segun Ogungbe', '23rd Feb.1989', 'Female', 'Swetres', '+234837837372', 'you@you.com', '14/10/2001', 'Online Class', 'India', '01-06-2024', NULL),
(5, 'David Hope Lekan', '23rd feb. 1985', 'Male', 'Student', '+233592140092', 'you@you.com', '25th Jan. 2010', 'Online Class', 'Algeria', '01-06-2024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE IF NOT EXISTS `subscribe` (
  `Sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(55) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  PRIMARY KEY (`Sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`Sub_id`, `fullname`, `email`, `telephone`) VALUES
(28, '', '', ''),
(27, '', '', ''),
(26, 'Dada Kwame', 'ds@asd.cv', '023276546'),
(25, 'Dada Kwame', 'ds@asd.cv', '023276546'),
(24, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(15, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(16, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(17, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(18, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(19, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(20, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(21, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(22, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(23, 'Ojo Ade', 'aa@as.co', '+23322211111'),
(29, '', '', ''),
(30, 'Dada Kwame', 'da@asfg.com', '78789789'),
(31, 'Siola Dada', 'd@sa.com', '5646262'),
(32, 'Siola Dada', 'd@sa.com', '5646262'),
(33, 'Dola Adegzi', 'steadfastnessmissions@gmail.com', '+233201191925'),
(34, 'Deborah Davids', 'davidolawole1@gmail.com', '+233597345123'),
(35, 'Deborah Davids', 'davidolawole1@gmail.com', '+233597345123'),
(36, '', '', ''),
(37, 'David Olawole', 'davidolawole1@gmail.com', '+233597345123'),
(38, 'Segun Ogunmola', 'davidolawole1@gmail.com', '+233592140092');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `number` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `trn_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `number`, `role`, `trn_date`) VALUES
(1, 'President', 'admin', '+233201191925', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_smbi`
--

DROP TABLE IF EXISTS `users_smbi`;
CREATE TABLE IF NOT EXISTS `users_smbi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_smbi`
--

INSERT INTO `users_smbi` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'President', '$2y$10$WhbpJW1cj0w6fQRj4FLmm.VQnRe1.gLhudMCqptHR5msOaA14grjC', '2024-06-01 18:56:39');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
