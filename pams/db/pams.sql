-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 04:36 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pams`
--

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'spoc'),
(3, 'coach'),
(4, 'mentor'),
(5, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `spocs`
--

CREATE TABLE `spocs` (
  `spoc_id` varchar(64) NOT NULL,
  `spoc_first_name` varchar(64) NOT NULL,
  `spoc_last_name` varchar(64) NOT NULL,
  `spoc_age` int(11) NOT NULL,
  `spoc_date_of_birth` date NOT NULL,
  `spoc_gender` varchar(10) NOT NULL,
  `spoc_email` varchar(64) NOT NULL,
  `spoc_alternate_email` varchar(64) DEFAULT NULL,
  `spoc_phone_number` bigint(20) NOT NULL,
  `spoc_alternate_phone_number` bigint(20) DEFAULT NULL,
  `spoc_linkedin_profile` text DEFAULT NULL,
  `spoc_github_profile` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(64) NOT NULL,
  `student_first_name` varchar(64) NOT NULL,
  `student_last_name` varchar(64) NOT NULL,
  `student_age` int(11) NOT NULL,
  `student_branch` varchar(64) NOT NULL,
  `student_year` int(11) NOT NULL,
  `student_semester` int(11) NOT NULL,
  `student_gender` varchar(64) NOT NULL,
  `student_email` varchar(64) NOT NULL,
  `student_alternate_email` varchar(64) DEFAULT NULL,
  `student_address` text NOT NULL,
  `student_linkedin_profile` text DEFAULT NULL,
  `student_github_profile` text DEFAULT NULL,
  `student_aadhar_number` bigint(20) DEFAULT NULL,
  `student_phone_number` bigint(20) NOT NULL,
  `student_alternate_phone_number` bigint(20) DEFAULT NULL,
  `student_date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('admin', 'admin@admin.com', 'admin', 1, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
