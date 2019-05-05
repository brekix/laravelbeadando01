-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2019 at 10:10 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelbeadando01`
--
CREATE DATABASE IF NOT EXISTS `laravelbeadando01` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravelbeadando01`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `MaxNumberOfPeople` int(11) NOT NULL,
  `StartTravel` date DEFAULT NULL,
  `EndTravel` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `MaxNumberOfPeople`, `StartTravel`, `EndTravel`) VALUES
(8, 'Hawaii', 'Unod a hétköznapi szürke életet?\r\nKapcsolódj ki és szerezz felejthetetlen élmény itt Hawaii-n\r\n60.000ft', '/storage/8aghC0MaJtDFp4OpOecaJ4MfrH9mOdQT2x8Z2APS.jpeg', '2019-05-05 19:50:58', '2019-05-05 19:57:12', 30, '2019-04-22', '2019-04-28'),
(11, 'Feki Webstudio', 'Ha érdekel a Laravel, egy kitűnő választás.', '/storage/HaOGiikMxBmOxhGSmDRz2yTq74WRtK7KEDGqt2Zd.png', '2019-05-05 20:02:46', '2019-05-05 20:02:46', 10, '2019-03-08', '2019-03-09'),
(9, 'New York', 'Ha azt hiszed, hogy Budapest egy nyüzsgő nagyváros. Utazz ide!\r\n50.000ft', '/storage/uhk3Lg321ueEQGpGuVxCWKi8PSCThCRjJ3uKJYV3.png', '2019-05-05 19:53:34', '2019-05-05 19:56:52', 50, '2019-04-29', '2019-05-05'),
(10, 'Kína', 'Történelem kedvelőknek\r\n20.000ft', '/storage/H48LyunqQeAZNkk3v0SwZJeBDllIHIHjNeJxxfQ7.jpeg', '2019-05-05 19:56:35', '2019-05-05 19:56:35', 3, '2019-08-26', '2019-08-30'),
(12, 'Stonehenge', 'Az eső és történelem kedvelők számára.\r\n30.000ft', '/storage/t6HZGAQp7sjlYeObPF6NOWiSYLp8NzFs0oEY8TJQ.jpeg', '2019-05-05 20:04:14', '2019-05-05 20:04:14', 100, '2019-05-20', '2019-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_05_104223_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `TravelID` int(11) NOT NULL,
  `MobileNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `TravelID`, `MobileNumber`) VALUES
(4, 'a', 'a@a.hu', NULL, '$2y$10$GwbH2gstxbiHEKmgO5TKgOSK6zWnIU9lA5so.NoSsTPs2wulypHya', NULL, '2019-04-27 11:50:45', '2019-05-05 20:07:21', 10, '0123456+799'),
(5, 'c', 'c@c.hu', NULL, '$2y$10$v7xTiIG7MNOtexxwWU6P4ufrO9dC7wSgqLaikZGL68NW7EwsH/ucm', NULL, '2019-04-27 11:56:33', '2019-05-05 20:08:13', 10, 'djskdjidjiwsjd'),
(3, 'b', 'b@b.hu', NULL, '$2y$10$CD9PxDrMdHR4SVnGbJtYKeNkGTzCLxMdIWLV6aTiQwxH0LHm/Jki2', NULL, '2019-04-27 11:09:34', '2019-05-05 20:07:48', 11, '06-20-123-4567'),
(6, 'd', 'd@d.hu', NULL, '$2y$10$ayz3VnlohYaBVZcOLTVd1.et5d0JeKUvJRRcD6S1b0Z3lH2ykoF4G', NULL, '2019-05-05 20:09:12', '2019-05-05 20:09:16', 10, '06-20-147-2583');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
