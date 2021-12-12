-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2021 at 02:50 PM
-- Server version: 8.0.21
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adarsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkup`
--

CREATE TABLE `checkup` (
  `SNO` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `aadhar` bigint NOT NULL,
  `m_number` bigint NOT NULL,
  `fever` text NOT NULL,
  `cough` text NOT NULL,
  `tierdness` text NOT NULL,
  `breathlessness` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `checkup`
--

INSERT INTO `checkup` (`SNO`, `name`, `aadhar`, `m_number`, `fever`, `cough`, `tierdness`, `breathlessness`, `dt`) VALUES
(2, 'Ada', 111121324534, 5643355, 'Yes', 'Yes', 'No', 'No', '2021-09-19 20:27:47'),
(6, 'Rohit', 342535673684, 88732474, 'Yes', 'Yes', 'No', 'No', '2021-09-19 22:47:49'),
(7, 'ADAR', 111111111111, 3333333333, 'No', 'No', 'Yes', 'No', '2021-09-19 22:51:50'),
(10, 'Ro', 111121324534, 88732474, 'Yes', 'Yes', 'Yes', 'No', '2021-09-19 23:05:44'),
(11, 'Rohit', 528469528452, 73473287, 'No', 'Yes', 'No', 'Yes', '2021-09-21 19:39:09'),
(12, 'Aman Pal', 111121324534, 121212, 'Yes', 'Yes', 'Yes', 'No', '2021-09-21 19:40:02'),
(13, 'xyz', 342535673684, 88732474, 'No', 'No', 'No', 'No', '2021-09-28 18:08:58'),
(14, 'xyz', 342535673684, 88732474, 'No', 'No', 'No', 'No', '2021-09-28 18:08:58'),
(15, 'xyz', 342535673684, 88732474, 'No', 'No', 'No', 'No', '2021-09-28 18:08:58'),
(16, 'xyz', 342535673684, 88732474, 'No', 'No', 'No', 'No', '2021-09-28 18:08:58'),
(17, 'xyz', 873482738281, 88732474, 'No', 'Yes', 'Yes', 'No', '2021-09-28 18:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `SNO` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `m_number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`SNO`, `name`, `email`, `m_number`) VALUES
(1, 'Ada', 'ada@gmail.com', 5643355),
(2, 'Rohit', 'rj@gmail.com', 88732474),
(3, 'Aman Pal', 'pal@iilm.in', 73473287),
(5, 'xyz', 'xyx@jj.dff', 111111),
(6, 'joshi', 'xyx@jj.dff', 625252),
(7, 'Ada', 'aaaa@aaa.aaa', 1231231212),
(8, 'poi', 'ppo@ppo.ppo', 1231242),
(9, 'ssssss', 'gsts@dda.lo', 12111);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `SNO` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `aadhar` bigint NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `m_number` int NOT NULL,
  `address` varchar(35) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`SNO`, `username`, `aadhar`, `email`, `m_number`, `address`, `password`, `description`, `dt`) VALUES
(3, 'ada', 0, 'asa@hhhh.kk', 0, 'hyuy', '11111', '', '2021-09-04 14:21:16'),
(6, 'joshi', 0, 'joshi@iilm.in', 0, 'joshipur', '121212', '', '2021-09-04 14:21:16'),
(7, 'Adarsh', 0, 'sharma@gmail.com', 0, 'STREET NO-3', 'a', '', '2021-09-04 14:21:16'),
(8, 'a', 0, 'sh28@gmail.com', 0, '1/130, Ghanshyam Puri,', 'qqq', '', '2021-09-04 14:21:16'),
(9, 'agag', 0, 'aad@sss', 0, 'STREET NO-3', '11111', '', '2021-09-04 14:21:16'),
(11, 'lmn', 0, 'lmn@mn.n', 625252, 'IILM College of Engg & Tech', '1', 'aaa', '2021-09-04 15:15:05'),
(12, 'qwe', 0, 'pal@pal.p', 73473287, 'IILM College of Engg & Tech', 'qq', 'qweqwe', '2021-09-04 18:22:25'),
(13, 'roghit', 0, 'shar5@gmail.com', 111111, 'STREET NO-3', 'qq', 'czxcvvcxc', '2021-09-05 12:28:17'),
(14, 'zee', 111121324534, 'ada@gmail.com', 5643355, 'asgdha, ahdhad', '11111', '', '2021-09-05 23:38:31'),
(16, 'Demo', 111111111111, 'sharmaa@mail.com', 625252, 'STREET NO-3', '11111111', '111111', '2021-09-06 00:39:33'),
(17, 'Demo3', 528469528452, 'sharm@ail.com', 121212, 'STREET NO-3', 'azazaz', 'qq', '2021-09-06 13:36:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkup`
--
ALTER TABLE `checkup`
  ADD UNIQUE KEY `SNO` (`SNO`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`SNO`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `SNO` (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkup`
--
ALTER TABLE `checkup`
  MODIFY `SNO` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `SNO` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `SNO` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
