-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2014 at 11:40 PM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apti`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(23) NOT NULL AUTO_INCREMENT,
  `name` varchar(23) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `email`, `title`, `description`, `tags`) VALUES
(5, 'Armash', 'talktoarmash@gmail.com', 'Interview at HP.', 'This is just a test.', NULL),
(6, 'Jummal Musab', 'talktomusab@gmail.com', 'Importance of Communication Skills', 'This is a test Post.Testing the Versio.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(233) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(233) DEFAULT NULL,
  `video_id` varchar(233) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `cid` varchar(233) DEFAULT NULL,
  `vid` varchar(233) DEFAULT NULL,
  `name` varchar(233) DEFAULT NULL,
  `folder` varchar(233) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`cid`, `vid`, `name`, `folder`) VALUES
('age', 'age1', 'aptitude shortcut methods to solve age problem formulas and tips', 'age'),
('age', 'age2', ' aptitude shortcut methods to solve age problem 2', 'age'),
('age', 'age3', ' aptitude shortcut methods to solve age problem 3 ', 'age'),
('age', 'age4', ' aptitude shortcut methods to solve age problem 4', 'age'),
('age', 'age5', ' aptitude shortcut methods to solve age problem 5', 'age'),
('age', 'age6', ' aptitude shortcut methods to solve age problem 6', 'age'),
('profit', 'profit1', 'aptitude Profit and loss problem 1', 'profit and loss'),
('profit', 'profit2', 'aptitude Profit and loss problem 2', 'profit and loss'),
('profit', 'profit3', 'aptitude Profit and loss problem 3', 'profit and loss'),
('profit', 'profit4', 'aptitude Profit and loss problem 4', 'profit and loss'),
('profit', 'profit6', 'aptitude Profit and loss problem 6', 'profit and loss'),
('profit', 'profit7', 'aptitude Profit and loss problem 7', 'profit and loss'),
('profit', 'profit5', 'aptitude Profit and loss problem 5', 'profit and loss'),
('train', 'train1', 'aptitude test problems on train 1', 'train'),
('train', 'train2', 'aptitude test problems on train 2', 'train'),
('train', 'train3', 'aptitude test problems on train 3', 'train'),
('train', 'train4', 'aptitude test problems on train 4', 'train'),
('train', 'train5', 'aptitude test problems on train 5', 'train'),
('train', 'train6', 'aptitude test problems on train 6', 'train'),
('train', 'train7', 'aptitude test problems on train 7', 'train'),
('profit', 'profit8', 'aptitude Profit and loss formulas', 'profit and loss'),
('percentage', 'percentage1', 'aptitude shorcut Percentage problems 1', 'percentage'),
('percentage', 'percentage2', 'aptitude shorcut Percentage problems 2', 'percentage'),
('percentage', 'percentage3', 'aptitude shorcut Percentage problems 3', 'percentage'),
('percentage', 'percentage4', 'aptitude shorcut Percentage problems 4', 'percentage'),
('height', 'height1', 'aptitude Height and distance formulas', 'height and distance'),
('volume', 'volume1', 'Numerical reasoning _ Formulas and tips for surface area and volume', 'volume and surface'),
('volume', 'volume2', 'Numerical reasoning _ surface area and volume Problem 1', 'volume and surface'),
('volume', 'volume3', 'Numerical reasoning _ Volume and surface area problem 2', 'volume and surface'),
('volume', 'volume4', 'Numerical reasoning _ Volume and surface area problem 3', 'volume and surface'),
('volume', 'volume5', 'Numerical reasoning _ Volume and surface area problem 4', 'volume and surface'),
('gd', 'gd1', 'Group Discussion Tips', 'group discussion'),
('gd', 'gd2', 'Body Language in Group Discussion', 'group discussion'),
('gd', 'gd3', 'Different roles in a GD', 'group discussion'),
('gd', 'gd4', 'How important is it to have knowledge w.r.t the gd', 'group discussion'),
('pi', 'pi1', 'Tips for Self-Introduction in a Personal Interview', 'personal interview'),
('pi', 'pi2', 'How to do a job interview on Skype Tips for success', 'personal interview'),
('ti', 'ti1', 'Technical Interview Prep - 1 - General Tips_Advice', 'technical interview'),
('ti', 'ti2', 'Technical Interview Prep - 2 - Build of a C Program', 'technical interview'),
('ti', 'ti3', 'Technical Interview Prep - 3 - Checking For Anagrams', 'technical interview'),
('ti', 'ti4', 'Technical Interview Prep - 4 - Linked List Loops', 'technical interview'),
('ti', 'ti5', 'Technical Interview Prep - 5 - Linked List Reversal', 'technical interview'),
('ti', 'ti6', 'Technical Interview Prep - 6 - Fibonacci Sequence', 'technical interview'),
('ti', 'ti7', 'Technical Interview Prep - 7 - MS Paint Brush Tool', 'technical interview'),
('ti', 'ti8', 'Technical Interview Prep - 8 - Power of 2', 'technical interview'),
('ti', 'ti9', 'Technical Interview Prep - 9 - Counting Challenge', 'technical interview'),
('ti', 'ti10', 'Technical Interview Prep - 10 - Logic Question', 'technical interview'),
('cv', 'cv1', 'how to write a resume with little or no job experience', 'ciriculam vitae'),
('cv', 'cv2', 'Resume Objective Statements', 'ciriculam vitae'),
('obj', 'obj1', 'Career Goals and Objectives', 'career objective'),
('cv', 'cv3', 'Resume Writing', 'ciriculam vitae'),
('cv', 'cv4', 'Resume Writing Tips', 'ciriculam vitae'),
('cl', 'cl1', 'Cover Letters for Resume - Best Sample Cover Letters', 'cover letter'),
('cl', 'cl3', 'How to write a cover letter that gets results', 'cover letter'),
('obj', 'obj2', 'Resume Objective Statements', 'career objective'),
('com', 'com1', '12 Top Tips for Successful Interviews', 'communication'),
('com', 'com2', 'Interview Tips - The Top 5 Job Interview Tips You NEED To Pay Attention To', 'communication'),
('com', 'com3', 'communication during interview', 'communication'),
('com', 'com4', 'Top 10 Interview Questions and Answers', 'communication'),
('gm', 'gm1', 'Business Etiquette - Personal Branding', 'grooming'),
('gm', 'gm2', 'Dress code Grooming tips for a job Interview', 'grooming'),
('gm', 'gm3', 'Grooming tips for a Job Interview - Job Interview skills lesson', 'grooming'),
('com', 'com4', 'Interview Communication Skills', 'communication'),
('gd', 'gd5', 'How to do well in a GD', 'group discussion'),
('gd', 'gd6', 'How to start a GD - Group Discussions', 'group discussion'),
('gd', 'gd7', 'Tips to enter the group discussion', 'group discussion'),
('gd', 'gd8', 'What if there are no new points in a GD', 'group discussion'),
('pi', 'pi3', 'Top tips-How to crack campus placement interview', 'personal interview'),
('height', 'height2', 'tutorial Height and distance 1', 'height and distance'),
('height', 'height3', 'tutorial Height and distance 2', 'height and distance'),
('height', 'height4', 'tutorial Height and distance 3', 'height and distance'),
('height', 'height5', 'tutorial Height and distance 4', 'height and distance');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
