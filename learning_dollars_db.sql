-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 19, 2022 at 08:36 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_dollars_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_news`
--

DROP TABLE IF EXISTS `db_news`;
CREATE TABLE IF NOT EXISTS `db_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_news`
--

INSERT INTO `db_news` (`id`, `title`, `content`, `date_posted`) VALUES
(1, 'This is just a test', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-07 13:19:11'),
(2, 'This is just a test', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-07 13:19:11'),
(3, 'This is just a test', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-07 13:19:29'),
(4, 'This is just a test', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-07 13:19:29'),
(5, 'This is just a test', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-07 13:19:39'),
(6, 'This is just a test', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-05-07 13:19:39'),
(7, 'sabaa', 'jhlhlkjh', '2020-05-07 13:19:39'),
(8, 'sabaa', 'jhlhlkjh', '2020-05-07 13:19:39'),
(9, 'sabaa', 'jhlhlkjh', '2020-05-07 13:19:39'),
(10, 'sabaa', 'jhlhlkjh', '2020-05-07 13:19:39'),
(11, 'sabaa', 'jhlhlkjh', '2020-05-07 13:19:39'),
(12, 'sabaa', 'jhlhlkjh', '2020-05-07 13:19:39'),
(13, 'sabaa', 'jhlhlkjh', '2020-05-07 13:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

DROP TABLE IF EXISTS `db_user`;
CREATE TABLE IF NOT EXISTS `db_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_no` varchar(191) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_me` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `email`, `phone_no`, `password`, `remember_me`, `status`, `created_at`) VALUES
(1, 'Ilori Stephen A', 'stephenilori458@gmail.com', '07012316289', '$2y$10$ToVd7fYSm8ufLlD4S6nHH.nbnDEwOoWsQ2Th1VGIw0S33auYxVE2q', NULL, 1, '2020-05-06 23:12:38'),
(2, '83289jdjds', 'stephenilori458@gmail.com', 'sdjdsjhdt76272', '$2y$10$3DzZwbF/rBY9DjhbyzayZOqe.2cGIXpNziE23BlhdU3C2zTKSvmpC', NULL, 1, '2020-05-06 23:23:54'),
(3, '87567hj', 'stephenilori458@gmail.com', 'hgfeer', '$2y$10$dWgg98rdx5sIAzzLra3MXu4WRdvpLtmqPX9Rux5b/bDMGeRY2Nqdq', NULL, 1, '2020-05-06 23:27:01'),
(4, '87656', 'stephenilori458@gmail.com', 'jhhjjhjh', '$2y$10$0ILrTll7TdZoHPT.Qr/HbObf7xFpMYQzT1mnP1k4myC.nmJZhO2U6', NULL, 1, '2020-05-06 23:27:31'),
(5, 'saba', 'sabaa.alshamery@gmail.com', '777777777', '$2y$10$kUOPJbZBARH5eOIJc6hbluzbgME/DrgOu0l5.9yoXwayAXASS6apq', NULL, 1, '2022-03-19 18:52:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
