-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 11:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_university_p`
--

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `degreeId` int(5) NOT NULL,
  `degreeName` varchar(50) NOT NULL,
  `duration` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `gradeId` int(5) NOT NULL,
  `studentId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `semester` int(5) NOT NULL,
  `year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjectId` int(5) NOT NULL,
  `subjectName` varchar(50) NOT NULL,
  `credit` int(5) NOT NULL,
  `degreeId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userPhone` int(10) NOT NULL,
  `userNic` varchar(12) NOT NULL,
  `userPwd` varchar(256) NOT NULL,
  `userRole` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPhone`, `userNic`, `userPwd`, `userRole`) VALUES
(13, 'ww@ww', 'ww@ww', 123, '123', '123', 'admin'),
(14, 'ee@ee', 'ee@ee', 123, '123', '123', 'user'),
(21, 'qwe', 'qaaw@Qwea.com', 754215398, '985426981V', '123', 'user'),
(22, 'dawd', 'awd@EAw.com', 781234567, '123456789V', '123456789', 'user'),
(23, 'user', 'user@gmail.com', 789456123, '123456789V', '123456789', 'user'),
(24, 'usertwo', 'user1@gmail.com', 789456123, '123456789V', '25f9e794323b453885f5181f1b624d0b', 'user'),
(25, 'admin', 'admin@gmail.com', 789456123, '789456123V', '25f9e794323b453885f5181f1b624d0b', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`degreeId`),
  ADD UNIQUE KEY `degreeName` (`degreeName`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`gradeId`),
  ADD KEY `studentId` (`studentId`),
  ADD KEY `subjectId` (`subjectId`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjectId`),
  ADD KEY `degreeId` (`degreeId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `degreeId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `gradeId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjectId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`subjectId`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`degreeId`) REFERENCES `degrees` (`degreeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
