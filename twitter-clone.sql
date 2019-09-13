-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2019 at 05:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter-clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `isFollowing`
--

CREATE TABLE `isFollowing` (
  `id` int(11) NOT NULL,
  `follower` int(11) NOT NULL,
  `isFollower` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isFollowing`
--

INSERT INTO `isFollowing` (`id`, `follower`, `isFollower`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 1, 2),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `tweet` text NOT NULL,
  `userid` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `tweet`, `userid`, `datetime`) VALUES
(1, 'Day 97;\r\nOur field is growing, outpacing projected nationwide growth in new jobs with an estimated 15% increase in web development jobs over 10 years. If u’ve just started exploring d industry, u’re not too late; we’re just getting started.\r\n#100DaysOfCode', 1, '2019-09-09 04:51:57'),
(2, 'There\'s no such thing as unneeded skills.\r\n\r\nDon\'t let anyone HTML-shame you. It\'s just as important as everything else. (for example, not many know how to write semantic HTML for people with visual impairment)\r\n\r\nI found this article to be eye-opening myself. https://w3.org/TR/low-vision-needs/', 2, '2019-09-06 03:51:57'),
(3, 'If it\'s one thing I\'ve learned being a dev, it\'s to approach programming langs as just tools to get things done.', 2, '2019-09-09 05:00:14'),
(4, 'hello', 4, '2019-09-09 10:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'nextwebb@gmail.com', '84d961568a65073a3bcf0eb216b2a576'),
(2, 'dicksondouglas@gmail.com', '67ec8c8e05bcf77c667b3278a88c5ac8'),
(3, 'williamsrick@gmail.com', '3d3fdb1677a571038d4a8e395840539d'),
(4, 'theo@gmail.com', 'c67c2bd13856a8d8e836b79270e5d308');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isFollowing`
--
ALTER TABLE `isFollowing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isFollowing`
--
ALTER TABLE `isFollowing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
