-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 10:22 PM
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
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `degree_code` varchar(5) NOT NULL,
  `degree_name` varchar(128) NOT NULL,
  `degree_duration` int(2) NOT NULL,
  `degree_credits` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`degree_code`, `degree_name`, `degree_duration`, `degree_credits`) VALUES
('D001', 'Bachelor of Science in Computer Science', 4, 120),
('D002', 'Bachelor of Arts in English', 4, 120),
('D003', 'Bachelor of Business Administration', 4, 120),
('D004', 'Bachelor of Science in Mechanical Engineering', 4, 120),
('D005', 'Bachelor of Science in Nursing', 4, 120),
('D006', 'Bachelor of Science in Mathematics', 4, 120),
('D007', 'Bachelor of Science in Environmental Science', 4, 120),
('D008', 'Bachelor of Arts in Psychology', 4, 120),
('D009', 'Bachelor of Science in Electrical Engineering', 4, 120),
('D010', 'Bachelor of Science in Biology', 4, 120),
('D011', 'Bachelor of Arts in History', 4, 120),
('D012', 'Bachelor of Science in Physics', 4, 120),
('D013', 'Bachelor of Science in Chemistry', 4, 120),
('D014', 'Bachelor of Science in Civil Engineering', 4, 120),
('D015', 'Bachelor of Arts in Communication', 4, 120),
('D016', 'Bachelor of Science in Computer Engineering', 4, 120),
('D017', 'Bachelor of Science in Geology', 4, 120),
('D018', 'Bachelor of Arts in Political Science', 4, 120),
('D019', 'Bachelor of Science in Aerospace Engineering', 4, 120);

-- --------------------------------------------------------

--
-- Table structure for table `degree_subject`
--

CREATE TABLE `degree_subject` (
  `degree_code` varchar(5) NOT NULL,
  `subject_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `degree_subject`
--

INSERT INTO `degree_subject` (`degree_code`, `subject_code`) VALUES
('D001', 'S01'),
('D001', 'S02'),
('D001', 'S03'),
('D001', 'S04'),
('D001', 'S05'),
('D001', 'S06'),
('D001', 'S07'),
('D002', 'S15'),
('D002', 'S16'),
('D002', 'S17'),
('D002', 'S18'),
('D002', 'S19'),
('D002', 'S20'),
('D005', 'S01'),
('D005', 'S02'),
('D005', 'S03');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(8) NOT NULL,
  `student_number` varchar(10) NOT NULL,
  `student_name` varchar(60) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_phone` varchar(10) NOT NULL,
  `student_nic` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_number`, `student_name`, `student_email`, `student_phone`, `student_nic`) VALUES
(1, 'ST1', 'Kamal', 'Herath@gmail.com', '0755679810', '992019286V'),
(4, 'ST2', 'Tizo', 'student1@example.com', '0756881234', '981213279V'),
(5, 'ST5', 'Student2', 'student2@example.com', '555-12342', 'NIC-2'),
(6, 'ST6', 'Student3', 'student3@example.com', '555-12343', 'NIC-3'),
(7, 'ST7', 'Student4', 'student4@example.com', '555-12344', 'NIC-4'),
(8, 'ST8', 'Student5', 'student5@example.com', '555-12345', 'NIC-5'),
(9, 'ST9', 'Student6', 'student6@example.com', '555-12346', 'NIC-6'),
(10, 'ST10', 'Student7', 'student7@example.com', '555-12347', 'NIC-7'),
(11, 'ST11', 'Student8', 'student8@example.com', '555-12348', 'NIC-8'),
(12, 'ST12', 'Student9', 'student9@example.com', '555-12349', 'NIC-9'),
(13, 'ST13', 'Student10', 'student10@example.com', '555-123410', 'NIC-10'),
(14, 'ST14', 'Student11', 'student11@example.com', '555-123411', 'NIC-11'),
(15, 'ST15', 'Student12', 'student12@example.com', '555-123412', 'NIC-12'),
(16, 'ST16', 'Student13', 'student13@example.com', '555-123413', 'NIC-13'),
(17, 'ST17', 'Student14', 'student14@example.com', '555-123414', 'NIC-14'),
(18, 'ST18', 'Student15', 'student15@example.com', '555-123415', 'NIC-15'),
(19, 'ST19', 'Student16', 'student16@example.com', '555-123416', 'NIC-16'),
(20, 'ST20', 'Student17', 'student17@example.com', '555-123417', 'NIC-17'),
(21, 'ST21', 'Student18', 'student18@example.com', '555-123418', 'NIC-18'),
(23, 'ST23', 'Student20', 'student20@example.com', '555-123420', 'NIC-20'),
(24, 'ST24', 'Student21', 'student21@example.com', '555-123421', 'NIC-21'),
(25, 'ST25', 'Student22', 'student22@example.com', '555-123422', 'NIC-22'),
(26, 'ST26', 'Student23', 'student23@example.com', '555-123423', 'NIC-23'),
(27, 'ST27', 'Student24', 'student24@example.com', '555-123424', 'NIC-24'),
(28, 'ST28', 'Student25', 'student25@example.com', '555-123425', 'NIC-25'),
(29, 'ST29', 'Student26', 'student26@example.com', '555-123426', 'NIC-26'),
(30, 'ST30', 'Student27', 'student27@example.com', '555-123427', 'NIC-27'),
(31, 'ST31', 'Student28', 'student28@example.com', '555-123428', 'NIC-28'),
(32, 'ST32', 'Student29', 'student29@example.com', '555-123429', 'NIC-29'),
(33, 'ST33', 'Student30', 'student30@example.com', '555-123430', 'NIC-30'),
(34, 'ST34', 'Student31', 'student31@example.com', '555-123431', 'NIC-31'),
(35, 'ST35', 'Student32', 'student32@example.com', '555-123432', 'NIC-32'),
(36, 'ST36', 'Student33', 'student33@example.com', '555-123433', 'NIC-33'),
(37, 'ST37', 'Student34', 'student34@example.com', '555-123434', 'NIC-34'),
(38, 'ST38', 'Student35', 'student35@example.com', '555-123435', 'NIC-35'),
(39, 'ST39', 'Student36', 'student36@example.com', '555-123436', 'NIC-36'),
(40, 'ST40', 'Student37', 'student37@example.com', '555-123437', 'NIC-37'),
(41, 'ST41', 'Student38', 'student38@example.com', '555-123438', 'NIC-38'),
(42, 'ST42', 'Student39', 'student39@example.com', '555-123439', 'NIC-39'),
(43, 'ST43', 'Student40', 'student40@example.com', '555-123440', 'NIC-40'),
(44, 'ST44', 'Student41', 'student41@example.com', '555-123441', 'NIC-41'),
(45, 'ST45', 'Student42', 'student42@example.com', '555-123442', 'NIC-42'),
(46, 'ST46', 'Student43', 'student43@example.com', '555-123443', 'NIC-43'),
(47, 'ST47', 'Student44', 'student44@example.com', '555-123444', 'NIC-44'),
(48, 'ST48', 'Student45', 'student45@example.com', '555-123445', 'NIC-45'),
(49, 'ST49', 'Student46', 'student46@example.com', '555-123446', 'NIC-46'),
(50, 'ST50', 'Student47', 'student47@example.com', '555-123447', 'NIC-47'),
(51, 'ST51', 'Student48', 'student48@example.com', '555-123448', 'NIC-48'),
(52, 'ST52', 'Student49', 'student49@example.com', '555-123449', 'NIC-49'),
(53, 'ST53', 'Student50', 'student50@example.com', '555-123450', 'NIC-50'),
(54, 'ST54', 'Keshara', 'keshara@gmail.com', '0772856300', '200'),
(55, 'ST55', 'Madushanka', 'madu@gmail.com', '0772455300', '200155988756'),
(57, 'ST56', 'kamal', 'kamala@gmail.com', '0789456123', '123456890');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `addSTtrigger` BEFORE INSERT ON `student` FOR EACH ROW SET NEW.student_number = 
  CONCAT("ST",COALESCE((SELECT MAX(id)+1 from student),1))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_student_gpa` AFTER INSERT ON `student` FOR EACH ROW BEGIN
    INSERT INTO student_gpa (student_number) VALUES (NEW.student_number);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_gpa`
--

CREATE TABLE `student_gpa` (
  `student_number` varchar(11) NOT NULL,
  `gpa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_gpa`
--

INSERT INTO `student_gpa` (`student_number`, `gpa`) VALUES
('ST1', 1.78),
('ST10', 4),
('ST11', 1.64),
('ST12', 1.47),
('ST13', 3),
('ST14', 2.7),
('ST15', 0),
('ST16', 0),
('ST17', 0),
('ST18', 0),
('ST19', 0),
('ST2', 0),
('ST20', 0),
('ST21', 0),
('ST22', 0),
('ST23', 0),
('ST24', 0),
('ST25', 0),
('ST26', 0),
('ST27', 0),
('ST28', 0),
('ST29', 0),
('ST30', 0),
('ST31', 0),
('ST32', 0),
('ST33', 0),
('ST34', 0),
('ST35', 0),
('ST36', 0),
('ST37', 0),
('ST38', 0),
('ST39', 0),
('ST40', 0),
('ST41', 0),
('ST42', 0),
('ST43', 0),
('ST44', 0),
('ST45', 0),
('ST46', 0),
('ST47', 0),
('ST48', 0),
('ST49', 0),
('ST5', 1.2),
('ST50', 0),
('ST51', 0),
('ST52', 0),
('ST53', 0),
('ST54', 0),
('ST55', 0),
('ST56', 0),
('ST6', 1),
('ST7', 1.3),
('ST8', 1.7),
('ST9', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `student_number` varchar(10) NOT NULL,
  `subject_code` varchar(5) NOT NULL,
  `grade` char(2) DEFAULT '',
  `grade_point_value` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`student_number`, `subject_code`, `grade`, `grade_point_value`) VALUES
('ST1', 'S01', 'C+', 16),
('ST1', 'S02', 'C+', 11.5),
('ST10', 'S02', 'A', 20),
('ST11', 'S01', 'F', 14.8),
('ST11', 'S02', 'F', 18.5),
('ST12', 'S01', 'B+', 13.2),
('ST12', 'S02', 'B+', 16.5),
('ST13', 'S02', 'B', 15),
('ST14', 'S02', 'B-', 13.5),
('ST2', 'S02', '', 0),
('ST5', 'S02', 'F', 0),
('ST6', 'S02', 'D', 5),
('ST7', 'S02', 'D+', 6.5),
('ST8', 'S02', 'C-', 8.5),
('ST9', 'S02', 'C', 10);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_code` varchar(5) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `subject_credits` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_code`, `subject_name`, `subject_credits`) VALUES
('S01', 'English & Communication', 2),
('S02', 'Introduction to Computing', 2),
('S03', 'Mathematics for Computing', 3),
('S04', 'Programming Methodologies', 3),
('S05', 'Computer Architecture', 2),
('S06', 'Database Management System', 3),
('S07', 'Client Side Web Technologies', 2),
('S08', 'Human computer interaction', 2),
('S09', 'System Analysis and Design', 2),
('S10', 'Subject 10', 2),
('S11', 'Subject 11', 2),
('S12', 'Subject 12', 2),
('S13', 'Subject 13', 3),
('S14', 'Subject 14', 2),
('S15', 'Subject 15', 2),
('S16', 'Subject 16', 3),
('S17', 'Subject 17', 1),
('S18', 'Subject 18', 5),
('S19', 'Subject 19', 3),
('S20', 'Subject 20', 3);

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
(34, 'admin1@gmail.com', 'admin1@gmail.com', 741741741, '1471471010', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(35, 'Usertest', 'Usertest@gmail.com', 741741741, '74171147100', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(36, 'userrr', 'userrr@gmail.com', 741741741, '1471471470', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(37, 'admin@gmail.com', 'admin@gmail.com', 741741741, '1478523690', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(44, 'user22', 'user22@gmail.com', 789456123, '0123654789', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(46, 'qweqwwe', 'qq@qq.com', 789456123, '1234567890', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(55, 'usertest', 'usertest@gmail.com', 123456789, '0123654987', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(56, 'user', 'user@gmail.com', 789456123, '123456789V', 'e10adc3949ba59abbe56e057f20f883e', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`degree_code`);

--
-- Indexes for table `degree_subject`
--
ALTER TABLE `degree_subject`
  ADD PRIMARY KEY (`degree_code`,`subject_code`),
  ADD KEY `subject_degree` (`subject_code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_number` (`student_number`);

--
-- Indexes for table `student_gpa`
--
ALTER TABLE `student_gpa`
  ADD PRIMARY KEY (`student_number`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`student_number`,`subject_code`),
  ADD KEY `student_subject_ibfk_2` (`subject_code`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `degree_subject`
--
ALTER TABLE `degree_subject`
  ADD CONSTRAINT `degree_subject` FOREIGN KEY (`degree_code`) REFERENCES `degree` (`degree_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_degree` FOREIGN KEY (`subject_code`) REFERENCES `subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_ibfk_1` FOREIGN KEY (`student_number`) REFERENCES `student` (`student_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_subject_ibfk_2` FOREIGN KEY (`subject_code`) REFERENCES `subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
