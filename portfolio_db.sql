-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 08:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'ASD', 'asd@gmail.com', ''),
(2, 'ASD', 'asd@gmail.com', ''),
(3, 'wwwwwwww', 'www@gmail.com', ''),
(4, 'wwwwwwww', 'www@gmail.com', ''),
(5, 'Filan', 'filan@gmail.com', 'alskdjkljasdkljslakjdlksd'),
(6, 'asdasd', 'asd@gmail.com', 'wwwwwwwwwwwwwwwwww'),
(7, 'sadasd', 'asd@gmail.com', 'asdasd'),
(8, 'sadasd', 'asd@gmail.com', 'asdasd'),
(9, 'sadasd', 'asd@gmail.com', 'asdasdsss'),
(10, 'sadasd', 'asd@gmail.com', 'asdasdsss'),
(11, 'sadasd', 'asd@gmail.com', 'asdasdsssaaaa'),
(12, 'sadasd', 'asd@gmail.com', 'asdasdsssaaaa'),
(13, 'sadasd', 'asd@gmail.com', 'asdasdsssaaaaasaa'),
(14, 'sadasd', 'asd@gmail.com', 'asdasdasdasdasd'),
(15, 'filan', 'fialn@gmail.com', 'hellooooooooooooooooooooooooo'),
(16, 'albiona', 'albiona.berisha66@outlook.com', 'description..'),
(17, 'albiona1', 'albiona.berisha66@outlook.com', 'description'),
(18, 'albo', 'asd@gmail.com', 'avfafa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
