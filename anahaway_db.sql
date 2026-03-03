-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2026 at 01:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anahaway_db`
--
CREATE DATABASE IF NOT EXISTS `anahaway_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `anahaway_db`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_description` text DEFAULT NULL,
  `course_image` varchar(255) DEFAULT 'default-course.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_description`, `course_image`) VALUES
(1, 'Science', 'Comprehensive curriculum focused on biological and physical sciences.', 'default-course.jpg'),
(2, 'Mathematics', 'Advanced algebraic, geometric, and trigonometric studies.', 'default-course.jpg'),
(3, 'English', 'Focusing on literature, creative writing, and communication skills.', 'default-course.jpg'),
(4, 'Technology', 'Modern ICT training and digital literacy programs.', 'default-course.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `school_stats`
--

CREATE TABLE `school_stats` (
  `stat_id` int(11) NOT NULL,
  `stat_label` varchar(100) NOT NULL,
  `stat_value` int(11) NOT NULL,
  `icon_class` varchar(50) DEFAULT 'fa-star'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_stats`
--

INSERT INTO `school_stats` (`stat_id`, `stat_label`, `stat_value`, `icon_class`) VALUES
(1, 'Certified Teachers', 18, 'fa-user-graduate'),
(2, 'Students', 43, 'fa-users'),
(3, 'Courses', 10, 'fa-book-open'),
(4, 'Awards Won', 50, 'fa-award');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_name`, `specialization`, `profile_img`, `bio`) VALUES
(1, 'John Smith', 'Mathematics Specialist', 'https://randomuser.me/api/portraits/men/1.jpg', NULL),
(2, 'Jane Doe', 'Science Lead', 'https://randomuser.me/api/portraits/women/2.jpg', NULL),
(3, 'Robert Wilson', 'IT Instructor', 'https://randomuser.me/api/portraits/men/3.jpg', NULL),
(4, 'Maria Garcia', 'English Department Head', 'https://randomuser.me/api/portraits/women/4.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `school_stats`
--
ALTER TABLE `school_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school_stats`
--
ALTER TABLE `school_stats`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
