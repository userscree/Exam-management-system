-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2025 at 08:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attempt_limits`
--

CREATE TABLE `attempt_limits` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `max_attempts` int(11) DEFAULT 1,
  `min_retake_interval` int(11) DEFAULT 30,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-08 09:08:32'),
(2, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-08 09:16:56'),
(3, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 09:18:09'),
(4, 2, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 09:52:01'),
(5, 2, 'question_added', 'Added question to exam ID: 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 10:12:46'),
(6, 2, 'question_added', 'Added question to exam ID: 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 10:12:51'),
(7, 3, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 10:30:34'),
(8, 2, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 10:56:30'),
(9, 3, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 19:11:39'),
(10, NULL, 'failed_login', 'Failed login attempt for username: teacher1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 19:15:05'),
(11, NULL, 'failed_login', 'Failed login attempt for username: teacher', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 19:15:16'),
(12, 3, 'exam_started', 'Started exam: CS101 Midterm Exam', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 19:27:37'),
(13, 3, 'exam_started', 'Started exam: CS101 Midterm Exam', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 19:27:42'),
(14, 3, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-08 19:33:44'),
(15, NULL, 'failed_login', 'Failed login attempt for username: teacher1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 19:39:30'),
(16, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-08 19:39:57'),
(17, 2, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 19:40:14'),
(18, 3, 'exam_started', 'Started exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 20:47:11'),
(19, 3, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-08 20:54:55'),
(20, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-08 21:41:26'),
(21, 2, 'exam_created', 'Created exam: hghghg (ID: 3)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 21:43:21'),
(22, 2, 'question_added', 'Added question to exam ID: 3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 21:43:53'),
(23, 2, 'question_added', 'Added question to exam ID: 3', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-08 21:44:18'),
(24, 3, 'exam_started', 'Started exam: hghghg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 21:56:47'),
(25, 3, 'exam_submitted', 'Submitted exam: CS101 Midterm Exam', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:02:54'),
(26, 3, 'exam_submitted', 'Submitted exam: hghghg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:04:12'),
(27, 3, 'exam_submitted', 'Submitted exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:05:47'),
(28, 3, 'exam_started', 'Started exam: hghghg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:07:13'),
(29, 3, 'exam_submitted', 'Submitted exam: hghghg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:07:43'),
(30, 3, 'exam_started', 'Started exam: hghghg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:08:22'),
(31, 3, 'exam_submitted', 'Submitted exam: hghghg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:10:51'),
(32, 3, 'exam_started', 'Started exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:18:56'),
(33, 3, 'exam_submitted', 'Submitted exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-08 22:21:01'),
(34, 3, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 06:25:07'),
(35, 2, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 07:42:37'),
(36, 7, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 07:43:45'),
(37, 7, 'exam_created', 'Created exam: mid (ID: 4)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 08:05:24'),
(38, 7, 'question_added', 'Added question to exam ID: 4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 08:12:28'),
(39, 7, 'question_added', 'Added question to exam ID: 4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 08:12:46'),
(40, 7, 'question_updated', 'Updated question ID: 11 for exam ID: 4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 08:20:08'),
(41, 7, 'question_updated', 'Updated question ID: 12 for exam ID: 4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 08:20:18'),
(42, 39, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 08:34:27'),
(43, 39, 'exam_started', 'Started exam: mid', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:33:08'),
(44, 39, 'exam_submitted', 'Submitted exam: mid', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:33:25'),
(45, 39, 'exam_started', 'Started exam: mid', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:34:28'),
(46, 39, 'exam_submitted', 'Submitted exam: mid', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:34:56'),
(47, 39, 'exam_started', 'Started exam: mid', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:35:06'),
(48, 39, 'exam_started', 'Started exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:38:04'),
(49, 39, 'exam_submitted', 'Submitted exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:38:29'),
(50, 39, 'exam_started', 'Started exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:38:54'),
(51, 39, 'exam_submitted', 'Submitted exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 09:45:38'),
(52, 7, 'question_added', 'Added question to exam ID: 4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 09:47:26'),
(53, 7, 'question_added', 'Added question to exam ID: 4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 09:47:47'),
(54, 7, 'question_added', 'Added question to exam ID: 4', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 09:47:57'),
(55, 7, 'exam_created', 'Created exam: zxczcz (ID: 5)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 09:48:47'),
(56, 39, 'exam_started', 'Started exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:05:06'),
(57, 39, 'exam_submitted', 'Submitted exam: MATH201 Quiz 1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:05:19'),
(58, 39, 'exam_submitted', 'Submitted exam: mid', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:07:35'),
(59, 7, 'exam_created', 'Created exam: ggg (ID: 6)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:08:31'),
(60, 7, 'question_added', 'Added question to exam ID: 6', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:09:32'),
(61, 39, 'exam_started', 'Started exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:10:02'),
(62, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:10:07'),
(63, 39, 'exam_started', 'Started exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:10:43'),
(64, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:10:48'),
(65, 39, 'exam_started', 'Started exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:17:52'),
(66, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:17:56'),
(67, 39, 'exam_started', 'Started exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:18:25'),
(68, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:18:54'),
(69, 7, 'question_updated', 'Updated question ID: 16 for exam ID: 6', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:19:16'),
(70, 39, 'exam_started', 'Started exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:19:39'),
(71, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:19:44'),
(72, 7, 'exam_created', 'Created exam: kkk (ID: 7)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:24:34'),
(73, 7, 'question_added', 'Added question to exam ID: 7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:25:04'),
(74, 7, 'question_added', 'Added question to exam ID: 7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:25:29'),
(75, 7, 'question_added', 'Added question to exam ID: 7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:25:46'),
(76, 7, 'question_added', 'Added question to exam ID: 7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 10:26:10'),
(77, 39, 'exam_started', 'Started exam: kkk', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:26:53'),
(78, 39, 'exam_submitted', 'Submitted exam: kkk', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:27:07'),
(79, 39, 'exam_started', 'Started exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:28:06'),
(80, 39, 'exam_started', 'Started exam: kkk', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 10:28:32'),
(81, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:01:46'),
(82, 39, 'exam_started', 'Started exam: ggg (Retake)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:02:11'),
(83, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:02:18'),
(84, 39, 'exam_started', 'Started exam: ggg (Retake)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:02:32'),
(85, 39, 'exam_submitted', 'Submitted exam: ggg', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:03:00'),
(86, 39, 'exam_started', 'Started exam: ggg (Retake)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:03:12'),
(87, 39, 'exam_submitted', 'Submitted exam: kkk', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:03:55'),
(88, 39, 'exam_started', 'Started exam: kkk (Retake)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 11:04:14'),
(89, 7, 'exam_created', 'Created exam: jjhhjhjhj (ID: 8)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 11:47:34'),
(90, 7, 'question_added', 'Added question to exam ID: 8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 11:48:02'),
(91, 7, 'question_added', 'Added question to exam ID: 8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 11:48:18'),
(92, 7, 'question_added', 'Added question to exam ID: 8', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', '2025-11-09 11:48:40'),
(93, 39, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 13:01:57'),
(94, 39, 'exam_started', 'Started exam: jjhhjhjhj', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 13:02:45'),
(95, 39, 'exam_submitted', 'Submitted exam: jjhhjhjhj', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 13:03:28'),
(96, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 13:17:10'),
(97, 39, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 14:33:27'),
(98, 39, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 14:34:59'),
(99, 40, 'registration', 'Student registered successfully with ID: CHE250002', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 14:54:10'),
(100, NULL, 'failed_login', 'Failed login attempt for username: hailu', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 14:54:23'),
(101, 40, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 14:54:34'),
(102, NULL, 'failed_login', 'Failed login attempt for username: student1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 14:55:24'),
(103, 3, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 14:55:32'),
(104, 39, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 15:01:34'),
(105, 2, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 15:07:58'),
(106, 39, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 15:12:45'),
(107, 2, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 15:20:34'),
(108, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 15:22:37'),
(109, 1, 'notification_sent', 'Sent notification to 30 users: Upcoming Exam Reminder', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 16:10:15'),
(110, 39, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-09 16:10:59'),
(111, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 06:58:54'),
(112, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 06:59:09'),
(113, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 06:59:17'),
(114, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 06:59:23'),
(115, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:00:16'),
(116, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:00:28'),
(117, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:03:00'),
(118, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:03:06'),
(119, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:03:13'),
(120, NULL, 'failed_login', 'Failed login attempt for username: admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:03:19'),
(121, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:03:27'),
(122, NULL, 'failed_login', 'Failed login attempt for username: dr_smith', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:08:56'),
(123, 4, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:09:01'),
(124, 7, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-29 07:09:51'),
(125, 7, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 17:24:19'),
(126, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 17:24:40'),
(127, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-05 18:28:55'),
(128, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 18:07:48'),
(129, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:30:32'),
(130, 1, 'course_added', 'Added new course: c++ - c++', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:36:38'),
(131, 1, 'student_enrolled', 'Enrolled student @student1 in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(132, 1, 'student_enrolled', 'Enrolled student @alice_johnson in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(133, 1, 'student_enrolled', 'Enrolled student @bob_smith in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(134, 1, 'student_enrolled', 'Enrolled student @carol_davis in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(135, 1, 'student_enrolled', 'Enrolled student @david_wilson in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(136, 1, 'student_enrolled', 'Enrolled student @eva_brown in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(137, 1, 'student_enrolled', 'Enrolled student @frank_miller in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(138, 1, 'student_enrolled', 'Enrolled student @grace_taylor in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(139, 1, 'student_enrolled', 'Enrolled student @henry_anderson in course c++ (via bulk department enrollment)', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:00'),
(140, NULL, 'failed_login', 'Failed login attempt for username: abebe.lemma', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:38:40'),
(141, NULL, 'failed_login', 'Failed login attempt for username: abebe.lemma', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:41:24'),
(142, NULL, 'failed_login', 'Failed login attempt for username: abebe.lemma', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:41:58'),
(143, NULL, 'failed_login', 'Failed login attempt for username: abebelemma', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:42:44'),
(144, 1, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:43:00'),
(145, 41, 'login', 'User logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-12-07 19:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `instructor_id` int(11) NOT NULL,
  `credits` int(11) DEFAULT 3,
  `academic_year` varchar(20) DEFAULT '2024-2025',
  `semester` varchar(20) DEFAULT 'Spring',
  `max_students` int(11) DEFAULT 50,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `description`, `department`, `instructor_id`, `credits`, `academic_year`, `semester`, `max_students`, `is_active`, `created_at`) VALUES
(1, 'CS101', 'Introduction to Computer Science', 'Fundamental concepts of computer science and programming', 'CS', 2, 3, '2024-2025', 'Spring', 50, 1, '2025-11-08 08:42:42'),
(2, 'MATH201', 'Advanced Mathematics', 'Calculus and linear algebra for computer science', 'MATH', 2, 3, '2024-2025', 'Spring', 50, 1, '2025-11-08 08:42:42'),
(3, 'data nining', 'Introduction to Cdata minn', 'jjghgjhgjhgjhgjhgjhgjgj', 'CHEM', 7, 5, '2024-2025', 'Spring', 50, 1, '2025-11-09 08:03:16'),
(4, 'c++', 'c++', 'c++ basic hgfhfhgf gvgv', 'CS', 41, 3, '2025-2026', 'Spring', 50, 1, '2025-12-07 19:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department_code` varchar(10) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_code`, `department_name`, `description`, `is_active`, `created_at`) VALUES
(1, 'CS', 'Computer Science', 'Department of Computer Science and Engineering', 1, '2025-11-09 07:06:57'),
(2, 'MATH', 'Mathematics', 'Department of Mathematics', 1, '2025-11-09 07:06:57'),
(3, 'PHY', 'Physics', 'Department of Physics', 1, '2025-11-09 07:06:57'),
(4, 'CHEM', 'Chemistry', 'Department of Chemistry', 1, '2025-11-09 07:06:57'),
(5, 'BIO', 'Biology', 'Department of Biology', 1, '2025-11-09 07:06:57'),
(6, 'SWE', 'software engineering', 'department of competing', 1, '2025-11-09 07:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrolled_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','completed','dropped') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_id`, `course_id`, `enrolled_at`, `status`) VALUES
(1, 3, 1, '2025-11-08 08:42:42', 'active'),
(2, 3, 2, '2025-11-08 08:42:42', 'active'),
(3, 39, 3, '2025-11-09 09:13:55', 'active'),
(4, 29, 3, '2025-11-09 09:22:10', 'active'),
(5, 30, 3, '2025-11-09 09:22:10', 'active'),
(6, 31, 3, '2025-11-09 09:22:10', 'active'),
(7, 32, 3, '2025-11-09 09:22:10', 'active'),
(8, 12, 3, '2025-11-09 09:22:24', 'active'),
(9, 13, 3, '2025-11-09 09:22:24', 'active'),
(10, 14, 3, '2025-11-09 09:22:24', 'active'),
(11, 15, 3, '2025-11-09 09:22:24', 'active'),
(12, 16, 3, '2025-11-09 09:22:24', 'active'),
(13, 20, 3, '2025-11-09 09:22:24', 'active'),
(14, 21, 3, '2025-11-09 09:22:24', 'active'),
(15, 22, 3, '2025-11-09 09:22:24', 'active'),
(16, 25, 3, '2025-11-09 09:22:24', 'active'),
(17, 26, 3, '2025-11-09 09:22:24', 'active'),
(18, 33, 3, '2025-11-09 09:22:24', 'active'),
(19, 34, 3, '2025-11-09 09:22:24', 'active'),
(20, 38, 3, '2025-11-09 09:22:24', 'active'),
(21, 17, 3, '2025-11-09 09:22:47', 'active'),
(22, 18, 3, '2025-11-09 09:22:47', 'active'),
(23, 19, 3, '2025-11-09 09:22:47', 'active'),
(24, 23, 3, '2025-11-09 09:22:47', 'active'),
(25, 24, 3, '2025-11-09 09:22:47', 'active'),
(26, 27, 3, '2025-11-09 09:22:47', 'active'),
(27, 28, 3, '2025-11-09 09:22:47', 'active'),
(28, 35, 3, '2025-11-09 09:22:47', 'active'),
(29, 36, 3, '2025-11-09 09:22:47', 'active'),
(30, 37, 3, '2025-11-09 09:22:47', 'active'),
(31, 29, 2, '2025-11-09 09:26:54', 'active'),
(32, 30, 2, '2025-11-09 09:26:54', 'active'),
(33, 31, 2, '2025-11-09 09:26:54', 'active'),
(34, 32, 2, '2025-11-09 09:26:54', 'active'),
(35, 39, 2, '2025-11-09 09:26:54', 'active'),
(36, 3, 4, '2025-12-07 19:38:00', 'active'),
(37, 12, 4, '2025-12-07 19:38:00', 'active'),
(38, 13, 4, '2025-12-07 19:38:00', 'active'),
(39, 14, 4, '2025-12-07 19:38:00', 'active'),
(40, 15, 4, '2025-12-07 19:38:00', 'active'),
(41, 16, 4, '2025-12-07 19:38:00', 'active'),
(42, 17, 4, '2025-12-07 19:38:00', 'active'),
(43, 18, 4, '2025-12-07 19:38:00', 'active'),
(44, 19, 4, '2025-12-07 19:38:00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `exam_type` enum('quiz','midterm','final','assignment') DEFAULT 'quiz',
  `total_marks` int(11) NOT NULL,
  `passing_marks` int(11) NOT NULL,
  `duration_minutes` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `allow_retake` tinyint(1) DEFAULT 0,
  `show_results_immediately` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `max_attempts` int(11) DEFAULT 1,
  `min_retake_interval` int(11) DEFAULT 30 COMMENT 'Minimum minutes between retakes',
  `allow_concurrent` tinyint(1) DEFAULT 0 COMMENT 'Whether to allow multiple concurrent attempts'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `title`, `description`, `course_id`, `instructor_id`, `exam_type`, `total_marks`, `passing_marks`, `duration_minutes`, `start_date`, `end_date`, `is_active`, `allow_retake`, `show_results_immediately`, `created_at`, `updated_at`, `max_attempts`, `min_retake_interval`, `allow_concurrent`) VALUES
(1, 'CS101 Midterm Exam', 'Midterm examination covering chapters 1-5', 1, 2, 'midterm', 100, 40, 60, '2025-11-07 22:45:00', '2025-11-15 23:59:00', 1, 1, 1, '2025-11-08 08:42:42', '2025-11-09 13:24:53', 5, 30, 0),
(2, 'MATH201 Quiz 1', 'Basic calculus concepts quiz', 2, 2, 'quiz', 50, 25, 30, '2025-11-08 11:42:00', '2025-11-22 11:42:00', 1, 1, 1, '2025-11-08 08:42:42', '2025-11-08 21:27:24', 1, 30, 0),
(3, 'hghghg', 'vvbvbvvbmvmvmnbvnvbnv', 1, 2, 'quiz', 100, 40, 90, '2025-11-08 06:00:00', '2025-11-17 14:00:00', 1, 1, 1, '2025-11-08 21:43:21', '2025-11-08 21:44:52', 1, 30, 0),
(4, 'mid', 'ksjfhksdfhksjdkf', 3, 7, 'quiz', 100, 40, 60, '2025-11-09 08:03:00', '2025-11-17 08:03:00', 1, 1, 1, '2025-11-09 08:05:24', '2025-11-09 08:33:45', 1, 30, 0),
(5, 'zxczcz', 'gxczxcz', 3, 7, 'quiz', 100, 40, 60, '2025-11-10 09:48:00', '2025-11-17 09:48:00', 1, 1, 1, '2025-11-09 09:48:47', '2025-11-09 09:48:47', 1, 30, 0),
(6, 'ggg', 'bvnbvnbvnbvnbv', 3, 7, 'quiz', 100, 40, 60, '2025-11-08 10:08:00', '2025-11-17 10:08:00', 1, 1, 1, '2025-11-09 10:08:31', '2025-11-09 13:26:46', 1, 30, 0),
(7, 'kkk', 'sdfsfsdfsdfsdfs', 3, 7, 'quiz', 20, 10, 60, '2025-11-08 10:23:00', '2025-11-17 10:23:00', 1, 1, 1, '2025-11-09 10:24:34', '2025-11-09 10:26:40', 1, 30, 0),
(8, 'jjhhjhjhj', 'nbhbhbhbhbhbhbhb', 3, 7, 'quiz', 10, 4, 60, '2025-11-08 11:46:00', '2025-11-17 11:46:00', 1, 0, 0, '2025-11-09 11:47:34', '2025-11-09 11:49:13', 1, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempts`
--

CREATE TABLE `exam_attempts` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `submitted_at` timestamp NULL DEFAULT NULL,
  `time_spent_seconds` int(11) DEFAULT 0,
  `total_questions` int(11) DEFAULT 0,
  `attempted_questions` int(11) DEFAULT 0,
  `obtained_marks` decimal(8,2) DEFAULT 0.00,
  `status` enum('in_progress','submitted','time_up','graded') DEFAULT 'in_progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_attempts`
--

INSERT INTO `exam_attempts` (`id`, `student_id`, `exam_id`, `started_at`, `submitted_at`, `time_spent_seconds`, `total_questions`, `attempted_questions`, `obtained_marks`, `status`) VALUES
(1, 3, 1, '2025-11-08 19:27:37', '2025-11-08 22:02:54', 0, 0, 0, 0.00, 'submitted'),
(2, 3, 1, '2025-11-08 19:27:42', NULL, 0, 0, 0, 0.00, 'in_progress'),
(3, 3, 2, '2025-11-08 20:47:11', '2025-11-08 22:05:47', 0, 2, 0, 0.00, 'submitted'),
(4, 3, 3, '2025-11-08 21:56:47', '2025-11-08 22:04:12', 0, 2, 0, 0.00, 'submitted'),
(5, 3, 3, '2025-11-08 22:07:13', '2025-11-08 22:07:43', 0, 2, 0, 0.00, 'submitted'),
(6, 3, 3, '2025-11-08 22:08:21', '2025-11-08 22:10:51', 0, 2, 2, 0.00, 'submitted'),
(7, 3, 2, '2025-11-08 22:18:56', '2025-11-08 22:21:01', 0, 2, 2, 0.00, 'submitted'),
(8, 39, 4, '2025-11-09 09:33:08', '2025-11-09 09:33:25', 0, 2, 2, 0.00, 'submitted'),
(9, 39, 4, '2025-11-09 09:34:28', '2025-11-09 09:34:56', 0, 2, 2, 0.00, 'submitted'),
(10, 39, 4, '2025-11-09 09:35:06', '2025-11-09 10:07:35', 0, 2, 5, 0.00, 'graded'),
(11, 39, 2, '2025-11-09 09:38:04', '2025-11-09 09:38:29', 0, 2, 2, 0.00, 'submitted'),
(12, 39, 2, '2025-11-09 09:38:54', '2025-11-09 09:45:37', 0, 2, 1, 0.00, 'submitted'),
(13, 39, 2, '2025-11-09 10:05:06', '2025-11-09 10:05:19', 0, 2, 2, 0.00, 'graded'),
(14, 39, 6, '2025-11-09 10:10:02', '2025-11-09 10:10:07', 0, 1, 1, 0.00, 'graded'),
(15, 39, 6, '2025-11-09 10:10:43', '2025-11-09 10:10:48', 0, 1, 1, 0.00, 'graded'),
(16, 39, 6, '2025-11-09 10:17:51', '2025-11-09 10:17:56', 0, 1, 1, 0.00, 'submitted'),
(17, 39, 6, '2025-11-09 10:18:25', '2025-11-09 10:18:54', 0, 1, 1, 0.00, 'submitted'),
(18, 39, 6, '2025-11-09 10:19:39', '2025-11-09 10:19:44', 0, 1, 1, 0.00, 'submitted'),
(19, 39, 7, '2025-11-09 10:26:53', '2025-11-09 10:27:07', 0, 4, 4, 0.00, 'submitted'),
(20, 39, 6, '2025-11-09 10:28:06', '2025-11-09 11:01:46', 0, 1, 1, 0.00, 'submitted'),
(21, 39, 7, '2025-11-09 10:28:32', '2025-11-09 11:03:55', 0, 4, 4, 0.00, 'submitted'),
(22, 39, 6, '2025-11-09 11:02:11', '2025-11-09 11:02:18', 0, 1, 1, 0.00, 'submitted'),
(23, 39, 6, '2025-11-09 11:02:32', '2025-11-09 11:03:00', 0, 1, 1, 0.00, 'submitted'),
(24, 39, 6, '2025-11-09 11:03:12', NULL, 0, 1, 1, 0.00, 'in_progress'),
(25, 39, 7, '2025-11-09 11:04:14', NULL, 0, 4, 4, 0.00, 'in_progress'),
(26, 39, 8, '2025-11-09 13:02:45', '2025-11-09 13:03:28', 0, 3, 3, 0.00, 'submitted');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `target_audience` enum('all','students','instructors','admins','specific_course') DEFAULT 'all',
  `course_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL,
  `is_urgent` tinyint(1) DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `notification_type` enum('info','warning','success','error','exam') DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `target_audience`, `course_id`, `created_by`, `is_active`, `created_at`, `expires_at`, `is_urgent`, `updated_at`, `notification_type`) VALUES
(1, 'System Maintenance', 'The system will be down for maintenance on Saturday from 2-4 AM.', 'all', NULL, 1, 1, '2025-11-08 08:42:42', '2025-12-08 11:42:42', 0, NULL, 'info'),
(2, 'New Exam Available', 'CS101 Midterm exam is now available. Please complete it before the deadline.', 'students', NULL, 2, 1, '2025-11-08 08:42:42', '2025-11-15 11:42:42', 0, NULL, 'info'),
(3, 'Upcoming Exam Reminder', 'This is a reminder about your upcoming exam. Please ensure you are prepared and have stable internet connection. Good luck!', 'students', NULL, 1, 1, '2025-11-09 16:10:15', '2025-11-13 19:07:00', 0, NULL, 'exam');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question_type` enum('multiple_choice','true_false','short_answer','essay') DEFAULT 'multiple_choice',
  `question_text` text NOT NULL,
  `option_a` text DEFAULT NULL,
  `option_b` text DEFAULT NULL,
  `option_c` text DEFAULT NULL,
  `option_d` text DEFAULT NULL,
  `correct_answer` text DEFAULT NULL,
  `marks` int(11) NOT NULL,
  `explanation` text DEFAULT NULL,
  `question_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `exam_id`, `question_type`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `marks`, `explanation`, `question_order`, `created_at`) VALUES
(1, 1, 'multiple_choice', 'What does HTML stand for?', 'Hyper Text Markup Language', 'High Tech Modern Language', 'Hyper Transfer Markup Language', 'Home Tool Markup Language', 'A', 10, NULL, 0, '2025-11-08 08:42:42'),
(2, 1, 'multiple_choice', 'Which programming language is known as the backbone of web development?', 'Python', 'JavaScript', 'Java', 'C++', 'B', 10, NULL, 0, '2025-11-08 08:42:42'),
(3, 1, 'true_false', 'PHP is a server-side scripting language.', 'TRUE', 'FALSE', NULL, NULL, 'TRUE', 5, NULL, 0, '2025-11-08 08:42:42'),
(4, 1, 'short_answer', 'What does CSS stand for?', NULL, NULL, NULL, NULL, 'Cascading Style Sheets', 15, NULL, 0, '2025-11-08 08:42:42'),
(5, 2, 'multiple_choice', 'What is the derivative of x²?', 'x', '2x', '2', 'x²', 'B', 10, NULL, 0, '2025-11-08 08:42:42'),
(6, 2, 'essay', 'Explain the fundamental theorem of calculus in your own words.', NULL, NULL, NULL, NULL, 'The fundamental theorem of calculus connects differentiation and integration, stating that differentiation is the reverse of integration.', 20, NULL, 0, '2025-11-08 08:42:42'),
(7, 1, 'multiple_choice', 'dfdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdf', 'dfgdfgdfgdfgdfgdfg', 'dfgdfgdfgdfg', 'dfgdfgdfgdfgdfgdf', 'cvdfdgsfdsdfs', 'C', 1, 'sdfsdfsdfsdfsdfsdfsdfsdfsdfsdf', 5, '2025-11-08 10:12:46'),
(8, 1, 'multiple_choice', 'dfdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdf', 'dfgdfgdfgdfgdfgdfg', 'dfgdfgdfgdfg', 'dfgdfgdfgdfgdfgdf', 'cvdfdgsfdsdfs', 'C', 1, 'sdfsdfsdfsdfsdfsdfsdfsdfsdfsdf', 5, '2025-11-08 10:12:51'),
(9, 3, 'multiple_choice', 'hjhjhkjhkjhkjhk', 'jghjhgjhgjhg', 'bhbjhbjhbjhb', 'jbjbjhbjhbjhbj', 'jbjhjhjhbjhbj', 'B', 1, '', 1, '2025-11-08 21:43:53'),
(10, 3, 'multiple_choice', 'bjhbhbjbjbjnbjbjnbn', 'njjnj', 'hbhbhb', 'jjjnjn', 'bhbhb', 'D', 1, '', 2, '2025-11-08 21:44:18'),
(11, 4, 'multiple_choice', 'the sdsjsjs sdjhgjshdf sdbfhsbf s bksbbv jhgj hjdkg', 'sds', 'sdgsdg', 'sdsdgs', 'sass', 'C', 1, 'sgsdgsdgsgsg', 1, '2025-11-09 08:12:28'),
(12, 4, 'multiple_choice', 'sdgsdgsdgs', 'sdgsdgsdg', 'gsdgsgsdgs', 'dgsdgs', 'sdgsdgs', 'C', 1, 'sdgsgsg', 2, '2025-11-09 08:12:46'),
(13, 4, 'multiple_choice', 'jhgjzhgjc', 'zxcz', 'xxc', 'xxc', 'zxczc', 'C', 1, '', 3, '2025-11-09 09:47:26'),
(14, 4, 'multiple_choice', 'zxczczc', 'zxczcz', 'zxczczc', 'zxczcz', 'zcczc', 'C', 1, '', 4, '2025-11-09 09:47:47'),
(15, 4, 'multiple_choice', 'zczcz', 'zxcz', 'xcx', 'xxc', 'zcxzz', 'C', 1, '', 5, '2025-11-09 09:47:57'),
(16, 6, 'multiple_choice', 'hgfhgf', 'hh', 'hhhh', 'hhhh', 'hhhh', 'C', 50, '', 1, '2025-11-09 10:09:32'),
(17, 7, 'multiple_choice', 'dgdfgdfg', 'aa', 'dasd', 'sdks', 'dgdfg', 'C', 4, '', 1, '2025-11-09 10:25:04'),
(18, 7, 'multiple_choice', 'sdfsjhgjfhgsjd', 'sdfjskjhdfj', 'sdfshjfd', 'sdfsdfsdf', 'sdfsdfs', 'C', 4, '', 2, '2025-11-09 10:25:29'),
(19, 7, 'multiple_choice', 'sdfsdfs', 'sdfsdf', 'sdfsdfsdf', 'sdfsdfs', 'ss', 'C', 7, '', 3, '2025-11-09 10:25:46'),
(20, 7, 'multiple_choice', 'sdfsdf', 'sfsdf', 'sdfsdf', 'sdks', 'sdfsdf', 'C', 5, '', 4, '2025-11-09 10:26:10'),
(21, 8, 'multiple_choice', 'jjjjjj', 'hhhh', 'hhh', 'aaa', 'hhh', 'C', 5, '', 1, '2025-11-09 11:48:02'),
(22, 8, 'multiple_choice', 'ggfgfgf', 'k', 'h', 'h', 'h', 'C', 1, '', 2, '2025-11-09 11:48:18'),
(23, 8, 'multiple_choice', 'kkkk', 'hug', 'h', 'k', 'h', 'C', 4, '', 3, '2025-11-09 11:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `attempt_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `total_marks` decimal(8,2) NOT NULL,
  `obtained_marks` decimal(8,2) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `status` enum('pass','fail') NOT NULL,
  `finalized_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `attempt_id`, `student_id`, `exam_id`, `total_marks`, `obtained_marks`, `percentage`, `grade`, `status`, `finalized_at`) VALUES
(1, 1, 3, 1, 42.00, 0.00, 0.00, 'F', 'pass', '2025-11-08 22:02:54'),
(2, 4, 3, 3, 2.00, 0.00, 0.00, 'F', 'pass', '2025-11-08 22:04:12'),
(3, 3, 3, 2, 30.00, 0.00, 0.00, 'F', 'pass', '2025-11-08 22:05:47'),
(4, 5, 3, 3, 2.00, 0.00, 0.00, 'F', 'pass', '2025-11-08 22:07:43'),
(5, 6, 3, 3, 2.00, 2.00, 100.00, 'A+', 'pass', '2025-11-08 22:10:51'),
(6, 7, 3, 2, 50.00, 10.00, 20.00, 'F', 'fail', '2025-11-08 22:21:01'),
(7, 8, 39, 4, 100.00, 2.00, 2.00, 'F', 'fail', '2025-11-09 09:33:25'),
(8, 9, 39, 4, 100.00, 2.00, 2.00, 'F', 'fail', '2025-11-09 09:34:56'),
(9, 11, 39, 2, 50.00, 10.00, 20.00, 'F', 'fail', '2025-11-09 09:38:29'),
(10, 12, 39, 2, 50.00, 10.00, 20.00, 'F', 'fail', '2025-11-09 09:45:38'),
(11, 13, 39, 2, 50.00, 10.00, 20.00, 'F', 'fail', '2025-11-09 10:05:19'),
(12, 10, 39, 4, 100.00, 5.00, 5.00, 'F', 'fail', '2025-11-09 10:07:35'),
(13, 14, 39, 6, 100.00, 1.00, 1.00, 'F', 'fail', '2025-11-09 10:10:07'),
(14, 15, 39, 6, 100.00, 1.00, 1.00, 'F', 'fail', '2025-11-09 10:10:48'),
(15, 16, 39, 6, 100.00, 1.00, 1.00, 'F', 'fail', '2025-11-09 10:17:56'),
(16, 17, 39, 6, 100.00, 1.00, 1.00, 'F', 'fail', '2025-11-09 10:18:54'),
(17, 18, 39, 6, 100.00, 50.00, 50.00, 'D', 'pass', '2025-11-09 10:19:44'),
(18, 19, 39, 7, 20.00, 20.00, 100.00, 'A+', 'pass', '2025-11-09 10:27:07'),
(19, 20, 39, 6, 100.00, 50.00, 50.00, 'D', 'pass', '2025-11-09 11:01:46'),
(20, 22, 39, 6, 100.00, 50.00, 50.00, 'D', 'pass', '2025-11-09 11:02:18'),
(21, 23, 39, 6, 100.00, 50.00, 50.00, 'D', 'pass', '2025-11-09 11:03:00'),
(22, 21, 39, 7, 20.00, 20.00, 100.00, 'A+', 'pass', '2025-11-09 11:03:55'),
(23, 26, 39, 8, 10.00, 10.00, 100.00, 'A+', 'pass', '2025-11-09 13:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  `description` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `description`, `updated_at`) VALUES
(1, 'system_name', 'Web-Based Examination System', 'Name of the application', '2025-11-08 08:42:42'),
(2, 'institution_name', 'WBES University', 'Name of the institution', '2025-11-08 08:42:42'),
(3, 'max_exam_duration', '180', 'Maximum exam duration in minutes', '2025-11-08 08:42:42'),
(4, 'min_password_length', '8', 'Minimum password length for users', '2025-11-08 08:42:42'),
(5, 'allow_registration', '1', 'Whether user registration is allowed', '2025-11-08 08:42:42'),
(6, 'maintenance_mode', '0', 'System maintenance mode flag', '2025-11-08 08:42:42'),
(7, 'max_concurrent_attempts', '2', 'Maximum number of concurrent exam attempts allowed', '2025-11-09 13:00:45'),
(8, 'default_max_attempts', '1', 'Default maximum attempts per exam', '2025-11-09 13:00:45'),
(9, 'default_retake_interval', '30', 'Default minutes between exam retakes', '2025-11-09 13:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `student_answers`
--

CREATE TABLE `student_answers` (
  `id` int(11) NOT NULL,
  `attempt_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `student_answer` text DEFAULT NULL,
  `awarded_marks` decimal(8,2) DEFAULT 0.00,
  `is_correct` tinyint(1) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `graded_by` int(11) DEFAULT NULL,
  `graded_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_answers`
--

INSERT INTO `student_answers` (`id`, `attempt_id`, `question_id`, `student_answer`, `awarded_marks`, `is_correct`, `feedback`, `graded_by`, `graded_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:37', '2025-11-09 11:24:26'),
(2, 1, 2, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:37', '2025-11-09 11:24:26'),
(3, 1, 3, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:37', '2025-11-09 11:24:26'),
(4, 1, 4, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:37', '2025-11-09 11:24:26'),
(5, 1, 7, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:37', '2025-11-09 11:24:26'),
(6, 1, 8, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:37', '2025-11-09 11:24:26'),
(7, 2, 1, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:42', '2025-11-09 11:24:26'),
(8, 2, 2, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:42', '2025-11-09 11:24:26'),
(9, 2, 3, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:42', '2025-11-09 11:24:26'),
(10, 2, 4, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:42', '2025-11-09 11:24:26'),
(11, 2, 7, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:42', '2025-11-09 11:24:26'),
(12, 2, 8, NULL, 0.00, NULL, NULL, NULL, NULL, '2025-11-08 19:27:42', '2025-11-09 11:24:26'),
(13, 6, 9, 'B', 1.00, 1, NULL, NULL, NULL, '2025-11-08 22:10:41', '2025-11-09 11:24:26'),
(14, 6, 9, 'B', 1.00, 1, NULL, NULL, NULL, '2025-11-08 22:10:50', '2025-11-09 11:24:26'),
(15, 6, 10, 'D', 1.00, 1, NULL, NULL, NULL, '2025-11-08 22:10:50', '2025-11-09 11:24:26'),
(16, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:02', '2025-11-09 11:24:26'),
(17, 7, 5, 'A', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:03', '2025-11-09 11:24:26'),
(18, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:07', '2025-11-09 11:24:26'),
(19, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:08', '2025-11-09 11:24:26'),
(20, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:10', '2025-11-09 11:24:26'),
(21, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:19', '2025-11-09 11:24:26'),
(22, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:26', '2025-11-09 11:24:26'),
(23, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:19:56', '2025-11-09 11:24:26'),
(24, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:20:26', '2025-11-09 11:24:26'),
(25, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:20:30', '2025-11-09 11:24:26'),
(26, 7, 6, 'nvnbnbvnbvnbvnbvnbvn', 0.00, NULL, NULL, NULL, NULL, '2025-11-08 22:20:30', '2025-11-09 11:24:26'),
(27, 7, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-08 22:20:34', '2025-11-09 11:24:26'),
(28, 7, 6, 'nvnbnbvnbvnbvnbvnbvn', 0.00, NULL, NULL, NULL, NULL, '2025-11-08 22:20:34', '2025-11-09 11:24:26'),
(29, 8, 11, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 09:33:12', '2025-11-09 11:24:26'),
(30, 8, 11, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 09:33:21', '2025-11-09 11:24:26'),
(31, 8, 12, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 09:33:21', '2025-11-09 11:24:26'),
(32, 9, 11, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 09:34:31', '2025-11-09 11:24:26'),
(33, 9, 11, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 09:34:42', '2025-11-09 11:24:26'),
(34, 9, 12, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 09:34:42', '2025-11-09 11:24:26'),
(45, 11, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-09 09:38:06', '2025-11-09 11:24:26'),
(46, 11, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-09 09:38:16', '2025-11-09 11:24:26'),
(47, 11, 6, 'sdsdfsdfsdfsdfsdfs', 0.00, NULL, NULL, NULL, NULL, '2025-11-09 09:38:16', '2025-11-09 11:24:26'),
(48, 11, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-09 09:38:23', '2025-11-09 11:24:26'),
(49, 11, 6, 'sdsdfsdfsdfsdfsdfs', 0.00, NULL, NULL, NULL, NULL, '2025-11-09 09:38:23', '2025-11-09 11:24:26'),
(50, 12, 5, 'C', 10.00, 1, NULL, NULL, NULL, '2025-11-09 09:38:56', '2025-11-09 11:24:26'),
(51, 12, 5, 'B', 10.00, 1, NULL, NULL, NULL, '2025-11-09 09:45:30', '2025-11-09 11:24:26'),
(69, 13, 5, 'B', 10.00, 1, NULL, NULL, '2025-11-09 10:05:19', '2025-11-09 10:05:18', '2025-11-09 11:24:26'),
(70, 13, 6, 'ghgfgfhgfh', 0.00, NULL, NULL, NULL, '2025-11-09 10:05:19', '2025-11-09 10:05:18', '2025-11-09 11:24:26'),
(91, 10, 11, 'C', 1.00, 1, NULL, NULL, '2025-11-09 10:07:35', '2025-11-09 10:07:29', '2025-11-09 11:24:26'),
(92, 10, 12, 'C', 1.00, 1, NULL, NULL, '2025-11-09 10:07:35', '2025-11-09 10:07:29', '2025-11-09 11:24:26'),
(93, 10, 13, 'C', 1.00, 1, NULL, NULL, '2025-11-09 10:07:35', '2025-11-09 10:07:29', '2025-11-09 11:24:26'),
(94, 10, 14, 'C', 1.00, 1, NULL, NULL, '2025-11-09 10:07:35', '2025-11-09 10:07:29', '2025-11-09 11:24:26'),
(95, 10, 15, 'C', 1.00, 1, NULL, NULL, '2025-11-09 10:07:35', '2025-11-09 10:07:29', '2025-11-09 11:24:26'),
(96, 14, 16, 'C', 1.00, 1, NULL, NULL, '2025-11-09 10:10:07', '2025-11-09 10:10:04', '2025-11-09 11:24:26'),
(97, 15, 16, 'C', 1.00, 1, NULL, NULL, '2025-11-09 10:10:48', '2025-11-09 10:10:45', '2025-11-09 11:24:26'),
(98, 16, 16, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 10:17:53', '2025-11-09 11:24:26'),
(99, 17, 16, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 10:18:28', '2025-11-09 11:24:26'),
(100, 17, 16, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 10:18:38', '2025-11-09 11:24:26'),
(101, 17, 16, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 10:18:39', '2025-11-09 11:24:26'),
(102, 18, 16, 'C', 50.00, 1, NULL, NULL, NULL, '2025-11-09 10:19:41', '2025-11-09 11:24:26'),
(103, 19, 17, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:26:56', '2025-11-09 11:24:26'),
(104, 19, 17, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:26:59', '2025-11-09 11:24:26'),
(105, 19, 19, 'C', 7.00, 1, NULL, NULL, NULL, '2025-11-09 10:26:59', '2025-11-09 11:24:26'),
(106, 19, 17, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:27:02', '2025-11-09 11:24:26'),
(107, 19, 18, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:27:02', '2025-11-09 11:24:26'),
(108, 19, 19, 'C', 7.00, 1, NULL, NULL, NULL, '2025-11-09 10:27:02', '2025-11-09 11:24:26'),
(109, 19, 17, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:27:04', '2025-11-09 11:24:26'),
(110, 19, 18, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:27:04', '2025-11-09 11:24:26'),
(111, 19, 19, 'C', 7.00, 1, NULL, NULL, NULL, '2025-11-09 10:27:04', '2025-11-09 11:24:26'),
(112, 19, 20, 'C', 5.00, 1, NULL, NULL, NULL, '2025-11-09 10:27:04', '2025-11-09 11:24:26'),
(113, 20, 16, 'B', 50.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:12', '2025-11-09 11:24:26'),
(114, 21, 17, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:35', '2025-11-09 11:24:26'),
(115, 21, 17, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:41', '2025-11-09 11:24:26'),
(116, 21, 18, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:41', '2025-11-09 11:24:26'),
(117, 21, 17, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:48', '2025-11-09 11:24:26'),
(118, 21, 18, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:48', '2025-11-09 11:24:26'),
(119, 21, 19, 'C', 7.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:48', '2025-11-09 11:24:26'),
(120, 21, 17, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:51', '2025-11-09 11:24:26'),
(121, 21, 18, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:51', '2025-11-09 11:24:26'),
(122, 21, 19, 'C', 7.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:51', '2025-11-09 11:24:26'),
(123, 21, 20, 'C', 5.00, 1, NULL, NULL, NULL, '2025-11-09 10:28:51', '2025-11-09 11:24:26'),
(124, 20, 16, 'C', 50.00, 1, NULL, NULL, NULL, '2025-11-09 11:01:43', '2025-11-09 11:24:26'),
(125, 22, 16, 'C', 50.00, 1, NULL, NULL, NULL, '2025-11-09 11:02:15', '2025-11-09 11:24:26'),
(126, 23, 16, 'B', 50.00, 1, NULL, NULL, NULL, '2025-11-09 11:02:35', '2025-11-09 11:24:26'),
(127, 23, 16, 'C', 50.00, 1, NULL, NULL, NULL, '2025-11-09 11:02:56', '2025-11-09 11:24:26'),
(128, 24, 16, 'D', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:03:14', '2025-11-09 11:45:26'),
(129, 21, 17, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:40', '2025-11-09 11:24:26'),
(130, 21, 18, 'A', 4.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:40', '2025-11-09 11:24:26'),
(131, 21, 19, 'C', 7.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:40', '2025-11-09 11:24:26'),
(132, 21, 20, 'C', 5.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:40', '2025-11-09 11:24:26'),
(133, 21, 17, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:47', '2025-11-09 11:24:26'),
(134, 21, 18, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:47', '2025-11-09 11:24:26'),
(135, 21, 19, 'C', 7.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:47', '2025-11-09 11:24:26'),
(136, 21, 20, 'C', 5.00, 1, NULL, NULL, NULL, '2025-11-09 11:03:47', '2025-11-09 11:24:26'),
(137, 25, 17, 'C', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:22', '2025-11-09 13:25:28'),
(138, 25, 17, 'C', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:30', '2025-11-09 13:25:28'),
(139, 25, 18, 'D', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:30', '2025-11-09 13:25:28'),
(140, 25, 17, 'C', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:33', '2025-11-09 13:25:28'),
(141, 25, 18, 'D', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:33', '2025-11-09 13:25:28'),
(142, 25, 19, 'C', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:33', '2025-11-09 13:25:28'),
(143, 25, 17, 'C', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:37', '2025-11-09 13:25:28'),
(144, 25, 18, 'D', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:37', '2025-11-09 13:25:28'),
(145, 25, 19, 'C', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:37', '2025-11-09 13:25:28'),
(146, 25, 20, 'B', NULL, NULL, NULL, NULL, NULL, '2025-11-09 11:04:37', '2025-11-09 13:25:28'),
(147, 26, 21, 'C', 5.00, 1, NULL, NULL, NULL, '2025-11-09 13:02:47', '2025-11-09 13:03:28'),
(148, 26, 22, 'C', 1.00, 1, NULL, NULL, NULL, '2025-11-09 13:02:51', '2025-11-09 13:03:28'),
(149, 26, 23, 'C', 4.00, 1, NULL, NULL, NULL, '2025-11-09 13:03:19', '2025-11-09 13:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','instructor','student') NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `university_id` varchar(50) DEFAULT NULL,
  `academic_year` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `role`, `first_name`, `last_name`, `department`, `university_id`, `academic_year`, `phone`, `profile_picture`, `student_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@wbes.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'System', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-11-08 08:42:42', '2025-11-08 08:42:42'),
(2, 'instructor1', 'instructor1@wbes.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'John', 'Smith', 'CS', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-08 08:42:42', '2025-11-09 07:06:57'),
(3, 'student1', 'student1@wbes.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Alice', 'Johnson', 'CS', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-08 08:42:42', '2025-11-09 07:06:57'),
(4, 'dr_smith', 'dr.smith@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'John', 'Smith', 'CS', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(5, 'prof_johnson', 'prof.johnson@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'Sarah', 'Johnson', 'MATH', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(6, 'dr_williams', 'dr.williams@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'Michael', 'Williams', 'PHY', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(7, 'prof_brown', 'prof.brown@university.edu', '$2y$10$2NLaEUBxJm8Xdvstd.wTkOCuTx1rbEJGzfWhWyRP6Kh8nQb6NuMKS', 'instructor', 'Emily', 'Brown', 'CHEM', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:43:12'),
(8, 'dr_davis', 'dr.davis@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'Robert', 'Davis', 'BIO', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(9, 'prof_miller', 'prof.miller@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'Jennifer', 'Miller', 'CS', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(10, 'dr_wilson', 'dr.wilson@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'David', 'Wilson', 'MATH', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(11, 'prof_moore', 'prof.moore@university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'instructor', 'Lisa', 'Moore', 'PHY', NULL, NULL, NULL, NULL, NULL, 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(12, 'alice_johnson', 'alice.johnson@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Alice', 'Johnson', 'CS', 'UNI20230001', '2023-2024', NULL, NULL, 'CS001', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(13, 'bob_smith', 'bob.smith@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Bob', 'Smith', 'CS', 'UNI20230002', '2023-2024', NULL, NULL, 'CS002', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(14, 'carol_davis', 'carol.davis@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Carol', 'Davis', 'CS', 'UNI20230003', '2023-2024', NULL, NULL, 'CS003', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(15, 'david_wilson', 'david.wilson@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'David', 'Wilson', 'CS', 'UNI20230004', '2023-2024', NULL, NULL, 'CS004', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(16, 'eva_brown', 'eva.brown@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Eva', 'Brown', 'CS', 'UNI20230005', '2023-2024', NULL, NULL, 'CS005', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(17, 'frank_miller', 'frank.miller@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Frank', 'Miller', 'CS', 'UNI20240001', '2024-2025', NULL, NULL, 'CS006', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(18, 'grace_taylor', 'grace.taylor@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Grace', 'Taylor', 'CS', 'UNI20240002', '2024-2025', NULL, NULL, 'CS007', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(19, 'henry_anderson', 'henry.anderson@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Henry', 'Anderson', 'CS', 'UNI20240003', '2024-2025', NULL, NULL, 'CS008', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(20, 'ivy_martin', 'ivy.martin@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Ivy', 'Martin', 'MATH', 'UNI20230006', '2023-2024', NULL, NULL, 'MATH001', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(21, 'jack_thomas', 'jack.thomas@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Jack', 'Thomas', 'MATH', 'UNI20230007', '2023-2024', NULL, NULL, 'MATH002', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(22, 'karen_white', 'karen.white@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Karen', 'White', 'MATH', 'UNI20230008', '2023-2024', NULL, NULL, 'MATH003', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(23, 'leo_harris', 'leo.harris@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Leo', 'Harris', 'MATH', 'UNI20240004', '2024-2025', NULL, NULL, 'MATH004', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(24, 'mia_clark', 'mia.clark@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Mia', 'Clark', 'MATH', 'UNI20240005', '2024-2025', NULL, NULL, 'MATH005', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(25, 'noah_lewis', 'noah.lewis@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Noah', 'Lewis', 'PHY', 'UNI20230009', '2023-2024', NULL, NULL, 'PHY001', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(26, 'olivia_robinson', 'olivia.robinson@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Olivia', 'Robinson', 'PHY', 'UNI20230010', '2023-2024', NULL, NULL, 'PHY002', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(27, 'peter_walker', 'peter.walker@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Peter', 'Walker', 'PHY', 'UNI20240006', '2024-2025', NULL, NULL, 'PHY003', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(28, 'quinn_young', 'quinn.young@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Quinn', 'Young', 'PHY', 'UNI20240007', '2024-2025', NULL, NULL, 'PHY004', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(29, 'rachel_king', 'rachel.king@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Rachel', 'King', 'CHEM', 'UNI20230011', '2023-2024', NULL, NULL, 'CHEM001', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(30, 'samuel_scott', 'samuel.scott@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Samuel', 'Scott', 'CHEM', 'UNI20230012', '2023-2024', NULL, NULL, 'CHEM002', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(31, 'tina_green', 'tina.green@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Tina', 'Green', 'CHEM', 'UNI20240008', '2024-2025', NULL, NULL, 'CHEM003', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(32, 'umar_adams', 'umar.adams@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Umar', 'Adams', 'CHEM', 'UNI20240009', '2024-2025', NULL, NULL, 'CHEM004', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(33, 'victoria_nelson', 'victoria.nelson@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Victoria', 'Nelson', 'BIO', 'UNI20230013', '2023-2024', NULL, NULL, 'BIO001', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(34, 'william_carter', 'william.carter@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'William', 'Carter', 'BIO', 'UNI20230014', '2023-2024', NULL, NULL, 'BIO002', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(35, 'xena_mitchell', 'xena.mitchell@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Xena', 'Mitchell', 'BIO', 'UNI20240010', '2024-2025', NULL, NULL, 'BIO003', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(36, 'yousef_perez', 'yousef.perez@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Yousef', 'Perez', 'BIO', 'UNI20240011', '2024-2025', NULL, NULL, 'BIO004', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(37, 'zoe_roberts', 'zoe.roberts@student.university.edu', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'Zoe', 'Roberts', 'BIO', 'UNI20240012', '2024-2025', NULL, NULL, 'BIO005', 1, '2025-11-09 07:12:08', '2025-11-09 07:12:08'),
(38, 'stud', 'sy@gm.com', '$2y$10$7qCZNYzRHwIfRJ8.keQpsux5xCHysp4oE1UCxxntXgMrWVf.Ev20i', 'student', 'Kassa', 'wendimu', 'SWE', 'wcu1407566', '2023-2024', '8768768768767', NULL, '678768768', 1, '2025-11-09 07:21:35', '2025-11-09 07:21:35'),
(39, 'bruk', 'br@gm.com', '$2y$10$AMxc3aMEdbGiLyn.RpxkWuf7YWjmM.Vv1uh00OqQ0novgQZWmhjXG', 'student', 'biruk', 'Manager', 'CHEM', 'wcu1407522', '2023-2024', '+1234567891', NULL, 'CHE25-3604', 1, '2025-11-09 07:41:39', '2025-11-09 07:41:39'),
(40, 'hailu', 'hn@gm.com', '$2y$10$EXdqshVBUbJUv2uM5s3hu.eMva/KlyGBdLY6yBSXQoKmkUbqA57Cy', 'student', 'Hailu', 'Wcu', 'CHEM', 'Wcu1438767', '2023-2024', '0987566735', NULL, 'CHE250002', 1, '2025-11-09 14:54:10', '2025-11-09 14:54:10'),
(41, 'abebelemma', 'abebe.lemma@example.com', '$2y$10$qJHnf5u7iaKCCeC3h09CpeR7Qt5PZvm.B7vWolozu1gExjf9VdWQ2', 'instructor', 'Abebe', 'Lemma', 'Computer Science', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 19:43:15'),
(42, 'alem.tesfaye', 'alem.tesfaye@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Alem', 'Tesfaye', 'Mathematics', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(43, 'bereket.yohannes', 'bereket.yohannes@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Bereket', 'Yohannes', 'Physics', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(44, 'dawit.mengistu', 'dawit.mengistu@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Dawit', 'Mengistu', 'Chemistry', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(45, 'elias.girma', 'elias.girma@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Elias', 'Girma', 'Biology', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(46, 'fikru.tadesse', 'fikru.tadesse@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Fikru', 'Tadesse', 'Engineering', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(47, 'genet.assefa', 'genet.assefa@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Genet', 'Assefa', 'Business', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(48, 'habtamu.kebede', 'habtamu.kebede@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Habtamu', 'Kebede', 'Economics', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(49, 'kidist.solomon', 'kidist.solomon@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Kidist', 'Solomon', 'Law', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(50, 'lemma.alemayehu', 'lemma.alemayehu@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Lemma', 'Alemayehu', 'Medicine', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(51, 'mekonnen.tadesse', 'mekonnen.tadesse@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Mekonnen', 'Tadesse', 'Computer Science', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(52, 'nuru.zenebe', 'nuru.zenebe@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Nuru', 'Zenebe', 'Mathematics', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(53, 'olana.bekele', 'olana.bekele@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Olana', 'Bekele', 'Physics', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(54, 'rediet.mulugeta', 'rediet.mulugeta@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Rediet', 'Mulugeta', 'Chemistry', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(55, 'samuel.kebede', 'samuel.kebede@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Samuel', 'Kebede', 'Biology', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(56, 'tadesse.lemma', 'tadesse.lemma@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Tadesse', 'Lemma', 'Engineering', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(57, 'worku.mulatu', 'worku.mulatu@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Worku', 'Mulatu', 'Business', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(58, 'yohannes.teshome', 'yohannes.teshome@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Yohannes', 'Teshome', 'Economics', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(59, 'zelalem.girma', 'zelalem.girma@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Zelalem', 'Girma', 'Law', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22'),
(60, 'ayantu.mesfin', 'ayantu.mesfin@example.com', '$2y$10$YourHashedPasswordHere', 'instructor', 'Ayantu', 'Mesfin', 'Medicine', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-07 18:15:22', '2025-12-07 18:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `notification_id`, `is_read`, `read_at`, `created_at`) VALUES
(1, 3, 1, 1, '2025-11-09 06:25:25', '2025-11-08 08:42:42'),
(2, 3, 2, 1, '2025-11-08 22:34:50', '2025-11-08 08:42:42'),
(3, 3, 3, 0, NULL, '2025-11-09 16:10:15'),
(4, 12, 3, 0, NULL, '2025-11-09 16:10:15'),
(5, 13, 3, 0, NULL, '2025-11-09 16:10:15'),
(6, 14, 3, 0, NULL, '2025-11-09 16:10:15'),
(7, 15, 3, 0, NULL, '2025-11-09 16:10:15'),
(8, 16, 3, 0, NULL, '2025-11-09 16:10:15'),
(9, 17, 3, 0, NULL, '2025-11-09 16:10:15'),
(10, 18, 3, 0, NULL, '2025-11-09 16:10:15'),
(11, 19, 3, 0, NULL, '2025-11-09 16:10:15'),
(12, 20, 3, 0, NULL, '2025-11-09 16:10:15'),
(13, 21, 3, 0, NULL, '2025-11-09 16:10:15'),
(14, 22, 3, 0, NULL, '2025-11-09 16:10:15'),
(15, 23, 3, 0, NULL, '2025-11-09 16:10:15'),
(16, 24, 3, 0, NULL, '2025-11-09 16:10:15'),
(17, 25, 3, 0, NULL, '2025-11-09 16:10:15'),
(18, 26, 3, 0, NULL, '2025-11-09 16:10:15'),
(19, 27, 3, 0, NULL, '2025-11-09 16:10:15'),
(20, 28, 3, 0, NULL, '2025-11-09 16:10:15'),
(21, 29, 3, 0, NULL, '2025-11-09 16:10:15'),
(22, 30, 3, 0, NULL, '2025-11-09 16:10:15'),
(23, 31, 3, 0, NULL, '2025-11-09 16:10:15'),
(24, 32, 3, 0, NULL, '2025-11-09 16:10:15'),
(25, 33, 3, 0, NULL, '2025-11-09 16:10:15'),
(26, 34, 3, 0, NULL, '2025-11-09 16:10:15'),
(27, 35, 3, 0, NULL, '2025-11-09 16:10:15'),
(28, 36, 3, 0, NULL, '2025-11-09 16:10:15'),
(29, 37, 3, 0, NULL, '2025-11-09 16:10:15'),
(30, 38, 3, 0, NULL, '2025-11-09 16:10:15'),
(31, 39, 3, 1, '2025-11-09 16:11:07', '2025-11-09 16:10:15'),
(32, 40, 3, 0, NULL, '2025-11-09 16:10:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attempt_limits`
--
ALTER TABLE `attempt_limits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_exam_user` (`exam_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `fk_courses_department` (`department`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_code` (`department_code`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_enrollment` (`student_id`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_id` (`instructor_id`),
  ADD KEY `idx_exams_course` (`course_id`),
  ADD KEY `idx_exams_dates` (`start_date`,`end_date`);

--
-- Indexes for table `exam_attempts`
--
ALTER TABLE `exam_attempts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_attempt` (`student_id`,`exam_id`,`started_at`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `idx_attempts_student_exam` (`student_id`,`exam_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `idx_notifications_audience` (`target_audience`),
  ADD KEY `idx_notifications_expires` (`expires_at`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_questions_exam` (`exam_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_result` (`attempt_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `idx_results_student` (`student_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `student_answers`
--
ALTER TABLE `student_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `graded_by` (`graded_by`),
  ADD KEY `idx_answers_attempt` (`attempt_id`),
  ADD KEY `idx_attempt_question` (`attempt_id`,`question_id`),
  ADD KEY `idx_attempt_id` (`attempt_id`),
  ADD KEY `idx_question_id` (`question_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_role` (`role`),
  ADD KEY `idx_users_email` (`email`),
  ADD KEY `idx_users_department` (`department`),
  ADD KEY `idx_users_university_id` (`university_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_notification` (`user_id`,`notification_id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attempt_limits`
--
ALTER TABLE `attempt_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_attempts`
--
ALTER TABLE `exam_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_answers`
--
ALTER TABLE `student_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attempt_limits`
--
ALTER TABLE `attempt_limits`
  ADD CONSTRAINT `attempt_limits_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attempt_limits_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_courses_department` FOREIGN KEY (`department`) REFERENCES `departments` (`department_code`) ON DELETE SET NULL;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_attempts`
--
ALTER TABLE `exam_attempts`
  ADD CONSTRAINT `exam_attempts_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_attempts_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`attempt_id`) REFERENCES `exam_attempts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_ibfk_3` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_answers`
--
ALTER TABLE `student_answers`
  ADD CONSTRAINT `student_answers_ibfk_1` FOREIGN KEY (`attempt_id`) REFERENCES `exam_attempts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_answers_ibfk_3` FOREIGN KEY (`graded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_notifications_ibfk_2` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
