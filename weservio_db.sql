-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2025 at 10:53 AM
-- Server version: 10.4.34-MariaDB-log
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weservio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` double(20,17) NOT NULL DEFAULT 0.00000000000000000,
  `longitude` double(20,17) NOT NULL DEFAULT 0.00000000000000000,
  `default` tinyint(1) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `default`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Work', '8420 Harris Station\nAlexhaven, WY 85502-8871', 50.35498932000000000, 11.35090071000000000, 0, 3, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(4, 'Building', '655 Esteban Fall\nJazmynechester, CO 39002-5988', 51.53547182000000000, 10.92948953000000000, 0, 5, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(5, 'Work', '15553 Grady Ranch Suite 000\nSouth Elizabethborough, IL 79764-6330', 50.08615437000000000, 10.99958905000000000, 0, 3, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(6, 'Building', '2838 Keeling Pike\nAbagailfort, WA 51791', 51.59899544000000000, 11.86117594000000000, 0, 5, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(7, 'Building', '113 Alessandra Extensions Apt. 216\nAllyville, AK 05392', 51.08666922000000000, 10.66794661000000000, 0, 4, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(8, 'Building', '13776 Alexie Dam\nNew Jaedenland, TN 32765-3169', 50.23078831000000000, 9.54013698000000000, 0, 2, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(9, 'Home', '11781 Ondricka Mount\nEast Lane, IL 16482-9283', 51.82035091000000000, 10.48326262000000000, 0, 8, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(10, 'Office', '965 Koch Brook Apt. 495\nBurniceberg, AZ 71479', 51.10544812000000000, 11.64595072000000000, 0, 3, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(11, 'Office', '29214 Kristin Wells\nNorth Pabloton, SC 65306-9419', 51.67626685000000000, 11.87418183000000000, 0, 4, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(12, 'Work', '279 Xander Shoals Suite 879\nPort Bertburgh, MI 78976-9100', 51.56128352000000000, 10.98848087000000000, 0, 6, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(13, 'Home', '353 Savanna Forks\nNew Shirleyville, NJ 14524', 51.07774195000000000, 11.88446716000000000, 0, 6, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(14, 'Office', '700 O\'Kon Land\nHeaneyfort, VA 00254', 50.27599852000000000, 11.92679512000000000, 0, 6, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(15, 'Home', '5864 Jovany Branch Suite 476\nMajorburgh, NH 76141', 51.75926453000000000, 10.91868880000000000, 0, 8, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(16, 'Home', '63441 Selena Vista Apt. 295\nLake Lewisberg, RI 50010', 51.48306487000000000, 10.17574961000000000, 0, 2, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(17, 'Office', '9857 Fadel Light Apt. 137\nNew Zita, UT 52845-1811', 50.40240283000000000, 10.84096169000000000, 0, 3, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(18, 'Hotel', '548 Aurore Junctions Apt. 739\nEast Fermin, FL 21687', 50.41315004000000000, 11.20283990000000000, 0, 2, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(19, 'Building', '760 Adelia Track\nDemarcusborough, WA 97826-5700', 50.30870488000000000, 11.54376910000000000, 0, 3, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(20, 'Office', '933 Chance Pine Suite 416\nOctaviachester, MT 47569', 50.92500356000000000, 10.85409395000000000, 0, 3, '2022-03-22 16:41:56', '2022-03-22 16:41:56'),
(21, 'work', 'zagazig-ElSharqiah', 30.63658848989700000, 31.54036200475500000, 0, 10, '2022-05-09 02:30:16', '2022-05-10 14:56:40'),
(22, 'home', 'مجاوره 72، الظهير الصحراوى العاشر من رمضان، محافظة القاهرة‬، Egypt', 30.31841490000000000, 31.72595820000000000, 0, 10, '2022-06-02 02:17:02', '2022-06-02 02:17:02'),
(23, 'my home 2', 'Shoutoul Shop, VFHV+QX2، طريق صائب سلام،، بيروت،، Lebanon', 33.87895001441600000, 35.49510402751700000, 0, 17, '2022-06-02 04:14:28', '2023-05-03 06:37:45'),
(25, 'Work', 'Sparks Marina Park, 300 Howard Dr, Sparks, NV 89434, USA', 85.05112880000000000, -180.00000000000000000, 0, 12, '2022-07-02 15:52:49', '2022-07-02 16:43:50'),
(26, 'test', 'العاشر من رمضان، El-Salam Sharkeya, Al Salam First, Egypt', 30.18130240000000000, 31.42504460000000000, 1, 12, '2022-07-03 03:10:03', '2022-07-03 03:10:03'),
(27, 'fun', 'شركة WindoStyle لأنظمة الأبواب والنوافذ Upvc, 8P9H+77, 10th of Rammadan Desert, Ash Sharqia Governorate 44635, Egypt', 30.31821180000000000, 31.72823780000000000, 0, 12, '2022-07-18 02:33:37', '2022-07-29 03:14:06'),
(28, 'My Office', 'Cornish al mazraa , riviera center 9th floor', 33.87980700000000000, 35.49496700000000000, 0, 1, '2023-03-28 02:00:00', '2023-03-28 02:00:00'),
(29, 'street,diabNegm ,Ash', 'street,diabNegm ,Ash Sharqia Governorate', 30.75640252671700000, 31.46664641006500000, 0, 20, '2023-04-10 02:57:16', '2023-04-14 02:45:02'),
(31, 'El-Qady Street, El-Q', 'El-Qady Street, El-Qady St, Mosque, Zagazig 2, Ash Sharqia Governorate, Egypt', 30.58608570018600000, 31.50364395046400000, 0, 33, '2023-05-15 01:03:15', '2023-05-15 01:03:15'),
(35, 'el nasr street , dia', 'el nasr street , diarb negm', 30.05930194096900000, 31.22803848987800000, 0, 33, '2023-05-22 02:35:10', '2023-06-23 01:53:52'),
(40, 'Beirut', 'Beirut, Lebanon', 33.89379130000000000, 35.50177670000000000, 1, 1, '2023-06-26 01:31:26', '2023-06-26 01:31:26'),
(42, 'desc', 'Beirut, Lebanon', 33.89379130000000000, 35.50177670000000000, 0, 1, '2023-06-26 01:45:13', '2023-06-26 01:45:13'),
(48, 'Beirut', 'Beirut Governorate', 33.89379130000000000, 35.50177670000000000, NULL, 171, '2023-08-03 03:02:20', '2023-08-03 03:02:20'),
(64, 'S F Human Rights Commission', 'SF', 37.77562880000000000, -122.41996040000000000, NULL, 202, '2024-04-03 03:43:47', '2024-04-03 03:43:47'),
(73, 'work', 'VFJR+3F9, Beirut, Lebanon', 33.88017160000000000, 35.49123780000000000, NULL, 252, '2024-10-23 06:08:28', '2024-10-23 06:08:28'),
(74, 'beirut', 'Abdallah El Yafi, Bayrut, Lebanon', 33.88000000000000000, 35.51000000000000000, 0, 253, '2024-11-14 06:36:14', '2025-02-25 03:45:26'),
(80, 'cairo', 'asmaaaa', 0.00000000000000000, 0.00000000000000000, 0, NULL, '2025-02-18 08:09:36', '2025-02-18 08:09:36'),
(83, 'fdgfgfd', 'ffgfdgdg', 0.00000000000000000, 0.00000000000000000, 0, NULL, '2025-02-18 08:16:16', '2025-02-18 08:16:16'),
(84, 'sdfdsfsf', 'dsdsfdsf', 0.00000000000000000, 0.00000000000000000, 0, NULL, '2025-02-18 08:18:23', '2025-02-18 08:18:23'),
(117, 't', '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 04:49:31', '2025-02-24 04:49:31'),
(118, NULL, '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 05:06:56', '2025-02-24 05:06:56'),
(119, NULL, '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 05:13:17', '2025-02-24 05:13:17'),
(120, NULL, '10908 Vía Sorrento, Cupertino, CA 95014, USA', 37.33609860000000000, -122.02939280000000000, NULL, NULL, '2025-02-24 05:13:55', '2025-02-24 05:13:55'),
(121, NULL, '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 05:14:58', '2025-02-24 05:14:58'),
(122, NULL, '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 05:15:51', '2025-02-24 05:15:51'),
(123, 'test', '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 05:18:14', '2025-02-24 05:18:14'),
(124, NULL, '20368 Vía Volante, Cupertino, CA 95014, USA', 37.33709030000000000, -122.03035190000000000, NULL, NULL, '2025-02-24 05:19:08', '2025-02-24 05:19:08'),
(125, NULL, 'McC, Campus Dr, Cupertino, CA 95014, USA', 37.32110260000000000, -122.04374700000000000, NULL, NULL, '2025-02-24 05:19:59', '2025-02-24 05:19:59'),
(126, NULL, '1499 Revelstoke Way, Sunnyvale, CA 94087, USA', 37.34475120000000000, -122.03779720000000000, NULL, NULL, '2025-02-24 05:23:23', '2025-02-24 05:23:23'),
(127, NULL, '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 05:24:02', '2025-02-24 05:24:02'),
(128, 'test', '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, NULL, '2025-02-24 05:24:59', '2025-02-24 05:24:59'),
(151, NULL, 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 1, '2025-02-24 06:09:12', '2025-02-24 06:09:12'),
(152, 'descriptiondescription', 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 2, '2025-02-24 06:09:22', '2025-02-24 06:09:22'),
(153, 'asmaacairo', 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 291, '2025-02-24 06:12:37', '2025-02-24 06:12:37'),
(160, 'egypt', 'Salzach-Apotheke, Goethestraße 29, 83410 Laufen, Germany', 85.05112880000000000, -180.00000000000000000, 0, 291, '2025-02-24 06:17:35', '2025-02-24 06:17:35'),
(161, 'descriptiondescription', 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 3, '2025-02-24 06:19:13', '2025-02-24 06:19:13'),
(163, 'yyyyyyyyyy', 'Salzach-Apotheke, Goethestraße 29, 83410 Laufen, Germany', 85.05112880000000000, -180.00000000000000000, 0, 291, '2025-02-24 06:33:27', '2025-02-24 06:33:27'),
(173, 'this is caroor', 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 1, '2025-02-24 07:37:27', '2025-02-24 07:37:27'),
(174, 'this is caroor', 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 1, '2025-02-24 07:37:35', '2025-02-24 07:37:35'),
(175, 'this is caroor', 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 1, '2025-02-24 07:37:38', '2025-02-24 07:37:38'),
(176, 'this is caroor', 'cairo', 0.00000000000000000, 0.00000000000000000, 0, 1, '2025-02-24 07:38:07', '2025-02-24 07:38:07'),
(178, 'vvvvvv', 'Salzach-Apotheke, Goethestraße 29, 83410 Laufen, Germany', 85.05112880000000000, -180.00000000000000000, 0, 291, '2025-02-24 07:47:11', '2025-02-24 07:47:11'),
(181, NULL, '4 Infinite Loop, Cupertino, CA 95014, USA', 37.33257410000000000, -122.03078900000000000, NULL, 280, '2025-02-24 08:20:39', '2025-02-24 08:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'We Servio'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.gmail.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'support@optimalsolutions.it'),
(24, 'mail_password', 'Q1w2e3r4t5123456'),
(25, 'mail_encryption', 'tls'),
(26, 'mail_from_address', 'support@optimalsolutions.it'),
(27, 'mail_from_name', 'We Servio'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '6dfb2958-889a-4e41-acb2-e97fda4a0cf9'),
(35, 'nav_color', 'navbar-dark navbar-navy'),
(38, 'logo_bg_color', 'text-light  navbar-navy'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '0'),
(78, 'enable_facebook', '0'),
(93, 'enable_stripe', '0'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '1'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-ngsbu19404542@business.example.com'),
(113, 'paypal_password', '\"Ws%m5rJ'),
(114, 'paypal_secret', 'EAA4RaixfxhtBhvqkggjzu-BrDErIN77oycyAAVn_dUXOEbqFSFbyLC2bmWT9y9nfgpKuarmDzi4AiL4'),
(115, 'enable_paypal', '0'),
(116, 'main_color', '#F8B905'),
(117, 'main_dark_color', '#F8B905'),
(118, 'second_color', '#08143A'),
(119, 'second_dark_color', '#CCCCDD'),
(120, 'accent_color', '#8C9DA8'),
(121, 'accent_dark_color', '#9999AA'),
(122, 'scaffold_dark_color', '#2C2C2C'),
(123, 'scaffold_color', '#FAFAFA'),
(124, 'google_maps_key', 'AIzaSyCHtGunOu09o5kbWGxjtywbksjooxT9GYQ'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '1.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '1'),
(129, 'default_currency_code', 'USD'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '1'),
(133, 'distance_unit', 'km'),
(134, 'default_theme', 'light'),
(135, 'enable_paystack', '0'),
(136, 'paystack_key', 'pk_test_d754715fa3fa9048c9ab2832c440fb183d7c91f5'),
(137, 'paystack_secret', 'sk_test_66f87edaac94f8adcb28fdf7452f12ccc63d068d'),
(138, 'enable_flutterwave', '0'),
(139, 'flutterwave_key', 'FLWPUBK_TEST-d465ba7e4f6b86325cb9881835726402-X'),
(140, 'flutterwave_secret', 'FLWSECK_TEST-d3f8801da31fc093fb1207ea34e68fbb-X'),
(141, 'enable_stripe_fpx', '0'),
(142, 'stripe_fpx_key', 'pk_test_51IQ0zvB0wbAJesyPLo3x4LRgOjM65IkoO5hZLHOMsnO2RaF0NlH7HNOfpCkjuLSohvdAp30U5P1wKeH98KnwXkOD00mMDavaFX'),
(143, 'stripe_fpx_secret', 'sk_test_51IQ0zvB0wbAJesyPUtR7yGdyOR7aGbMQAX5Es9P56EDUEsvEQAC0NBj7JPqFuJEYXrvSCm5OPRmGaUQBswjkRxVB00mz8xhkFX'),
(144, 'enable_paymongo', '0'),
(145, 'paymongo_key', 'pk_test_iD6aYYm4yFuvkuisyU2PGSYH'),
(146, 'paymongo_secret', 'sk_test_oxD79bMKxb8sA47ZNyYPXwf3'),
(147, 'provider_app_name', 'Service Provider'),
(148, 'default_country_code', 'LB'),
(149, 'paypal_mode', '0'),
(151, 'enable_cash', '1'),
(152, 'razorpay_key', ''),
(153, 'razorpay_secret', ''),
(154, 'enable_razorpay', '0'),
(155, 'enable_wallet', '0'),
(156, 'enable_twitter', '0'),
(157, 'paypal_app_id', 'AeUpQkbG-iy1x3O6y1Ih7mkx0BfarFcp-q1PsaDsABSN-2QANi5MRLGdUQSzUm_PwqAtPyezLguhYvDK'),
(158, 'enable_email_notifications', '1');

-- --------------------------------------------------------

--
-- Table structure for table `availability_hours`
--

CREATE TABLE `availability_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(16) NOT NULL DEFAULT 'monday',
  `start_at` varchar(16) DEFAULT NULL,
  `end_at` varchar(16) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availability_hours`
--

INSERT INTO `availability_hours` (`id`, `day`, `start_at`, `end_at`, `data`, `e_provider_id`) VALUES
(51, 'sunday', '18:25', '22:25', '{\"en\":\"kmlkl\"}', 24),
(52, 'monday', '04:36', '18:36', '{\"en\":\"data\"}', 26),
(53, 'tuesday', '07:36', '21:36', '{\"en\":\"ddd\"}', 29),
(54, 'monday', '06:00', '17:00', '{\"en\":null}', 25),
(56, 'monday', '06:00', '17:00', '{\"en\":null}', 27),
(57, 'monday', '06:00', '17:00', '{\"en\":null}', 28),
(58, 'monday', '06:00', '17:00', '{\"en\":null}', 30),
(59, 'sunday', '06:00', '17:00', '{\"en\":null}', 31),
(60, 'monday', '06:00', '17:00', '{\"en\":null}', 32),
(61, 'monday', '06:00', '17:00', '{\"en\":null}', 33),
(62, 'thursday', '23:05', '23:32', '{\"en\":\"menna\"}', 26),
(63, 'thursday', '23:05', '23:32', '{\"en\":\"menna\"}', 26),
(64, 'sunday', '05:04', '08:45', '{\"en\":\"kmlkl\"}', 35),
(68, 'sunday', '09:13', '21:13', '{\"en\":null}', 37),
(69, 'monday', '10:00', '11:00', NULL, 102),
(70, 'sunday', '10:00', '11:00', NULL, 102),
(71, 'monday', '10:00', '11:00', '{\"en\":\"note\"}', 102),
(72, 'sunday', '10:00', '11:00', '{\"en\":\"note\"}', 102),
(73, 'friday', '10:00', '11:00', '{\"en\":\"note\"}', 102),
(74, 'monday', '10:00', '11:00', '{\"en\":\"note\"}', 104),
(75, 'sunday', '10:00', '11:00', '{\"en\":\"note\"}', 104),
(76, 'friday', '10:00', '11:00', '{\"en\":\"note\"}', 104),
(77, 'sunday', '10:00', '11:00', '{\"en\":\"true\"}', 106),
(78, 'monday', '10:00', '11:00', '{\"en\":\"true\"}', 106),
(79, 'friday', '10:00', '11:00', '{\"en\":\"true\"}', 106),
(80, 'sunday', '10:00', '11:00', '{\"en\":\"true\"}', 107),
(81, 'monday', '10:00', '11:00', '{\"en\":\"true\"}', 107),
(82, 'friday', '10:00', '11:00', '{\"en\":\"true\"}', 107),
(83, 'sunday', '10:00', '11:00', '{\"en\":\"true\"}', 108),
(84, 'monday', '10:00', '11:00', '{\"en\":\"true\"}', 108),
(85, 'friday', '10:00', '11:00', '{\"en\":\"true\"}', 108),
(86, 'sunday', '10:00', '11:00', '{\"en\":\"true\"}', 109),
(87, 'monday', '10:00', '11:00', '{\"en\":\"true\"}', 109),
(88, 'friday', '10:00', '11:00', '{\"en\":\"true\"}', 109),
(89, 'tuesday', '14:29', '15:29', NULL, 110),
(90, 'wednesday', '14:29', '15:29', NULL, 110),
(91, 'thursday', '14:29', '15:29', NULL, 110),
(95, 'monday', '15:43', '16:42', NULL, 112),
(96, 'tuesday', '15:43', '16:42', NULL, 112),
(106, 'monday', '08:44', '17:44', NULL, 164),
(107, 'tuesday', '08:44', '17:44', NULL, 164),
(108, 'wednesday', '08:44', '17:44', NULL, 164),
(109, 'thursday', '08:44', '17:44', NULL, 164),
(113, 'monday', '12:23', '14:23', NULL, 175),
(114, 'tuesday', '12:23', '14:23', NULL, 175),
(115, 'wednesday', '12:23', '14:23', NULL, 175),
(116, 'thursday', '12:23', '14:23', NULL, 175),
(117, 'friday', '12:23', '14:23', NULL, 175),
(132, 'monday', '10:37', '12:00', '{\"en\":null}', 177),
(133, 'tuesday', '10:37', '12:00', '{\"en\":null}', 177),
(134, 'wednesday', '10:37', '12:00', '{\"en\":null}', 177),
(135, 'monday', '10:20', '18:20', '{\"en\":\"test note\"}', 179),
(136, 'tuesday', '10:20', '18:20', '{\"en\":\"test note\"}', 179),
(137, 'wednesday', '10:20', '18:20', '{\"en\":\"test note\"}', 179),
(143, 'monday', '10:50', '13:50', '{\"en\":\"note\"}', 180),
(144, 'tuesday', '10:50', '13:50', '{\"en\":\"note\"}', 180),
(145, 'wednesday', '10:50', '13:50', '{\"en\":\"note\"}', 180),
(146, 'thursday', '10:50', '13:50', '{\"en\":\"note\"}', 180),
(147, 'friday', '10:50', '13:50', '{\"en\":\"note\"}', 180),
(205, 'monday', '09:21', '17:21', '{\"en\":null}', 232),
(206, 'tuesday', '09:21', '17:21', '{\"en\":null}', 232),
(207, 'thursday', '09:21', '17:21', '{\"en\":null}', 232),
(208, 'friday', '09:21', '17:21', '{\"en\":null}', 232),
(209, 'monday', '09:24', '17:24', '{\"en\":\"j3u3u\"}', 233),
(210, 'friday', '09:24', '17:24', '{\"en\":\"j3u3u\"}', 233),
(211, 'wednesday', '09:24', '17:24', '{\"en\":\"j3u3u\"}', 233),
(212, 'sunday', '09:24', '17:24', '{\"en\":\"j3u3u\"}', 233),
(213, 'monday', '09:53', '09:53', '{\"en\":null}', 236),
(225, 'monday', '12:34', '20:34', '{\"en\":null}', 241),
(226, 'tuesday', '12:34', '20:34', '{\"en\":null}', 241),
(227, 'wednesday', '12:34', '20:34', '{\"en\":null}', 241),
(228, 'thursday', '12:34', '20:34', '{\"en\":null}', 241),
(229, 'friday', '12:34', '20:34', '{\"en\":null}', 241),
(230, 'monday', '08:00', '17:00', '{\"en\":null}', 245),
(231, 'tuesday', '08:00', '17:00', '{\"en\":null}', 245),
(232, 'wednesday', '08:00', '17:00', '{\"en\":null}', 245),
(233, 'thursday', '08:00', '17:00', '{\"en\":null}', 245),
(234, 'friday', '08:00', '17:00', '{\"en\":null}', 245),
(235, 'monday', '16:13', '22:13', '{\"en\":\"test\"}', 246),
(236, 'tuesday', '16:13', '22:13', '{\"en\":\"test\"}', 246),
(237, 'tuesday', '16:21', '12:21', '{\"en\":\"1\"}', 247),
(238, 'monday', '16:21', '12:21', '{\"en\":\"1\"}', 247),
(239, 'monday', '14: 11', '17: 11', '{\"en\":\"test\"}', 252),
(240, 'tuesday', '14: 11', '17: 11', '{\"en\":\"test\"}', 252),
(241, 'wednesday', '14: 11', '17: 11', '{\"en\":\"test\"}', 252),
(242, 'thursday', '14: 11', '17: 11', '{\"en\":\"test\"}', 252),
(243, 'friday', '14: 11', '17: 11', '{\"en\":\"test\"}', 252),
(244, 'monday', '08:00', '17:00', '{\"en\":null}', 255),
(245, 'tuesday', '08:00', '17:00', '{\"en\":null}', 255),
(246, 'wednesday', '08:00', '17:00', '{\"en\":null}', 255),
(247, 'thursday', '08:00', '17:00', '{\"en\":null}', 255),
(248, 'friday', '08:00', '17:00', '{\"en\":null}', 255),
(249, 'monday', '03:32', '15:32', '{\"en\":null}', 256),
(250, 'tuesday', '03:32', '15:32', '{\"en\":null}', 256),
(251, 'wednesday', '03:32', '15:32', '{\"en\":null}', 256),
(252, 'thursday', '03:32', '15:32', '{\"en\":null}', 256),
(253, 'friday', '03:32', '15:32', '{\"en\":null}', 256);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider` longtext NOT NULL,
  `e_service` longtext NOT NULL,
  `options` longtext DEFAULT NULL,
  `quantity` smallint(6) DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_status_id` int(10) UNSIGNED DEFAULT NULL,
  `address` longtext NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `coupon` longtext DEFAULT NULL,
  `taxes` longtext DEFAULT NULL,
  `booking_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `hint` text DEFAULT NULL,
  `cancel` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `e_provider`, `e_service`, `options`, `quantity`, `user_id`, `booking_status_id`, `address`, `payment_id`, `coupon`, `taxes`, `booking_at`, `start_at`, `ends_at`, `hint`, `cancel`, `created_at`, `updated_at`) VALUES
(1, '{\"id\":23,\"name\":\"test\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":42,\"name\":\"amira ibrahim\",\"price\":55,\"discount_price\":15,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 1, 5, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-05-10 11:30:00', NULL, NULL, NULL, 0, '2022-05-09 02:30:16', '2022-06-03 04:53:23'),
(2, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.636588489897096820868682698346674442291259765625,\"longitude\":31.5403620047546411342409555800259113311767578125}', NULL, NULL, '[]', '2022-05-10 11:30:01', NULL, NULL, NULL, 0, '2022-05-09 03:43:42', '2022-05-09 03:43:42'),
(3, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.636588489897096820868682698346674442291259765625,\"longitude\":31.5403620047546411342409555800259113311767578125}', NULL, NULL, '[]', '2022-05-10 11:30:01', NULL, NULL, NULL, 0, '2022-05-09 05:07:40', '2022-05-09 05:07:40'),
(4, '{\"id\":24,\"name\":\"Saleh Lighting & Electrical Supplies\",\"phone_number\":\"961 1 459 300\",\"mobile_number\":null}', '{\"id\":46,\"name\":\"Exhaust fan installations\",\"price\":75,\"discount_price\":15,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 1, 4, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-05-10 14:17:00', NULL, NULL, NULL, 0, '2022-05-09 05:18:29', '2022-05-09 07:25:26'),
(5, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 1, 7, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 1, '2022-05-09 07:39:54', '2022-07-31 13:23:40'),
(6, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-05-11 08:44:17', NULL, NULL, NULL, 0, '2022-05-09 23:44:55', '2022-05-09 23:44:55'),
(7, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2022-05-09 23:46:15', '2022-05-09 23:46:15'),
(8, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2022-05-09 23:53:31', '2022-05-09 23:53:31'),
(9, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2022-05-09 23:54:33', '2022-05-09 23:54:33'),
(10, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2022-05-10 05:12:11', '2022-05-10 05:12:11'),
(11, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2022-05-10 05:39:04', '2022-05-10 05:39:04'),
(12, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2022-05-10 05:39:04', '2022-05-10 05:39:04'),
(13, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 7, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 1, '2022-05-10 05:39:05', '2022-08-03 07:09:47'),
(14, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 10, 6, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:00', NULL, NULL, NULL, 0, '2022-05-10 14:56:40', '2022-07-20 00:07:20'),
(15, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 10, 3, '{\"id\":21,\"description\":\"work\",\"address\":\"zagazig-ElSharqiah\",\"latitude\":30.63658848989700089759935508482158184051513671875,\"longitude\":31.540362004754999958322514430619776248931884765625}', NULL, NULL, '[]', '2022-04-21 05:33:00', NULL, NULL, NULL, 0, '2022-05-10 14:56:42', '2022-06-03 04:54:42'),
(16, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 10, 6, '{\"id\":22,\"description\":\"home\",\"address\":\"\\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 72\\u060c \\u0627\\u0644\\u0638\\u0647\\u064a\\u0631 \\u0627\\u0644\\u0635\\u062d\\u0631\\u0627\\u0648\\u0649 \\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\\u060c \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u202c\\u060c Egypt\",\"latitude\":30.31841490000000050031303544528782367706298828125,\"longitude\":31.72595820000000088612068793736398220062255859375}', 2, NULL, '[]', '2022-04-21 05:33:00', NULL, NULL, NULL, 0, '2022-06-02 02:17:02', '2022-07-18 06:59:35'),
(17, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 10, 6, '{\"id\":22,\"description\":\"home\",\"address\":\"\\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 72\\u060c \\u0627\\u0644\\u0638\\u0647\\u064a\\u0631 \\u0627\\u0644\\u0635\\u062d\\u0631\\u0627\\u0648\\u0649 \\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\\u060c \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u202c\\u060c Egypt\",\"latitude\":30.31841490000000050031303544528782367706298828125,\"longitude\":31.72595820000000088612068793736398220062255859375}', 3, NULL, '[]', '2022-04-21 05:33:00', NULL, '2022-07-18 10:01:48', NULL, 0, '2022-06-02 02:17:04', '2022-07-18 14:47:56'),
(18, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"ACs\",\"price\":130,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, NULL, 4, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-06-23 14:14:00', NULL, NULL, NULL, 0, '2022-06-02 04:14:28', '2022-06-03 04:52:48'),
(19, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 6, '{\"id\":24,\"description\":\"my office\",\"address\":\"Salim Salam, Bayrut, Lebanon\",\"latitude\":33.87883610000000089712557382881641387939453125,\"longitude\":35.495110499996002317857346497476100921630859375}', NULL, NULL, '[]', '2022-06-30 13:05:00', NULL, NULL, 'i need you to fix our door', 0, '2022-06-28 00:07:04', '2022-06-28 00:11:09'),
(20, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 2, 12, 6, '{\"id\":25,\"description\":\"Home\",\"address\":\"Sparks Marina Park, 300 Howard Dr, Sparks, NV 89434, USA\",\"latitude\":85.0511288000000007514245226047933101654052734375,\"longitude\":-180}', 1, NULL, '[]', '2022-07-12 00:51:00', NULL, NULL, NULL, 0, '2022-07-02 15:52:49', '2022-07-02 16:33:45'),
(21, '{\"id\":23,\"name\":\"test\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":61,\"name\":\"fix\",\"price\":15,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"01:07\",\"enable_booking\":true}', '[]', 1, 12, 6, '{\"id\":25,\"description\":\"Work\",\"address\":\"Sparks Marina Park, 300 Howard Dr, Sparks, NV 89434, USA\",\"latitude\":85.0511288000000007514245226047933101654052734375,\"longitude\":-180}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-07-03 01:43:00', NULL, NULL, NULL, 0, '2022-07-02 16:43:50', '2022-07-03 02:34:26'),
(22, '{\"id\":29,\"name\":\"JIHAN\",\"phone_number\":null,\"mobile_number\":\"961 3 282 222\"}', '{\"id\":49,\"name\":\"Massage\",\"price\":20,\"discount_price\":5,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 12, 6, '{\"id\":27,\"description\":\"fun\",\"address\":\"\\u0634\\u0631\\u0643\\u0629 WindoStyle \\u0644\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0628\\u0648\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0646\\u0648\\u0627\\u0641\\u0630 Upvc, 8P9H+77, 10th of Rammadan Desert, Ash Sharqia Governorate 44635, Egypt\",\"latitude\":30.318211800000000266663846559822559356689453125,\"longitude\":31.728237799999998713929016957990825176239013671875}', NULL, NULL, '[]', '2022-07-19 11:33:00', NULL, NULL, NULL, 0, '2022-07-18 02:33:37', '2022-07-18 02:34:15'),
(23, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 10, 6, '{\"id\":22,\"description\":\"home\",\"address\":\"\\u0645\\u062c\\u0627\\u0648\\u0631\\u0647 72\\u060c \\u0627\\u0644\\u0638\\u0647\\u064a\\u0631 \\u0627\\u0644\\u0635\\u062d\\u0631\\u0627\\u0648\\u0649 \\u0627\\u0644\\u0639\\u0627\\u0634\\u0631 \\u0645\\u0646 \\u0631\\u0645\\u0636\\u0627\\u0646\\u060c \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\\u202c\\u060c Egypt\",\"latitude\":30.31841490000000050031303544528782367706298828125,\"longitude\":31.72595820000000088612068793736398220062255859375}', 4, NULL, '[]', '2022-07-28 23:48:00', NULL, NULL, NULL, 0, '2022-07-18 14:48:40', '2022-07-19 23:54:34'),
(24, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":10,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 10, 6, '{\"id\":27,\"description\":\"fun\",\"address\":\"\\u0634\\u0631\\u0643\\u0629 WindoStyle \\u0644\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0628\\u0648\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0646\\u0648\\u0627\\u0641\\u0630 Upvc, 8P9H+77, 10th of Rammadan Desert, Ash Sharqia Governorate 44635, Egypt\",\"latitude\":30.318211800000000266663846559822559356689453125,\"longitude\":31.728237799999998713929016957990825176239013671875}', NULL, NULL, '[]', '2022-07-20 14:37:00', NULL, NULL, NULL, 0, '2022-07-19 05:38:14', '2022-07-20 00:06:52'),
(25, '{\"id\":34,\"name\":\"Meroty\",\"phone_number\":\"01015414979\",\"mobile_number\":\"01015414979\"}', '{\"id\":63,\"name\":\"test service\",\"price\":15,\"discount_price\":15,\"price_unit\":\"hourly\",\"quantity_unit\":\"4\",\"duration\":\"09:08\",\"enable_booking\":true}', '[]', 1, 12, 6, '{\"id\":27,\"description\":\"fun\",\"address\":\"\\u0634\\u0631\\u0643\\u0629 WindoStyle \\u0644\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0628\\u0648\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0646\\u0648\\u0627\\u0641\\u0630 Upvc, 8P9H+77, 10th of Rammadan Desert, Ash Sharqia Governorate 44635, Egypt\",\"latitude\":30.318211800000000266663846559822559356689453125,\"longitude\":31.728237799999998713929016957990825176239013671875}', 5, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2022-07-30 12:13:54', '2022-07-29 06:56:37', '2022-07-29 06:56:58', NULL, 0, '2022-07-29 03:14:06', '2022-07-29 03:57:19'),
(26, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":28,\"description\":\"My Office\",\"address\":\"Cornish al mazraa , riviera center 9th floor\",\"latitude\":33.879806999999999561623553745448589324951171875,\"longitude\":35.494967000000002599335857667028903961181640625}', NULL, NULL, '[]', '2023-04-28 03:59:44', NULL, NULL, NULL, 0, '2023-04-04 19:00:20', '2023-04-04 19:00:20'),
(27, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":28,\"description\":\"My Office\",\"address\":\"Cornish al mazraa , riviera center 9th floor\",\"latitude\":33.879806999999999561623553745448589324951171875,\"longitude\":35.494967000000002599335857667028903961181640625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-05 04:35:56', '2023-04-05 04:35:56'),
(28, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":28,\"description\":\"My Office\",\"address\":\"Cornish al mazraa , riviera center 9th floor\",\"latitude\":33.879806999999999561623553745448589324951171875,\"longitude\":35.494967000000002599335857667028903961181640625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-05 05:48:07', '2023-04-05 05:48:07'),
(29, '{\"id\":24,\"name\":\"Saleh Lighting & Electrical Supplies\",\"phone_number\":\"961 1 459 300\",\"mobile_number\":null}', '{\"id\":46,\"name\":\"Exhaust fan installations\",\"price\":75,\"discount_price\":15,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 1, 1, '{\"id\":28,\"description\":\"My Office\",\"address\":\"Cornish al mazraa , riviera center 9th floor\",\"latitude\":33.879806999999999561623553745448589324951171875,\"longitude\":35.494967000000002599335857667028903961181640625}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-06 05:27:06', '2023-04-06 05:27:06'),
(30, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-11 11:53:20', NULL, NULL, NULL, 0, '2023-04-10 02:57:16', '2023-04-10 02:57:16'),
(31, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:29:39', '2023-04-10 17:29:39'),
(32, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:31:58', '2023-04-10 17:31:58'),
(33, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:34:58', '2023-04-10 17:34:58'),
(34, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-10 17:38:56', '2023-04-10 17:38:56'),
(35, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-10 17:40:12', '2023-04-10 17:40:12'),
(36, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:42:54', '2023-04-10 17:42:54'),
(37, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:47:43', '2023-04-10 17:47:43'),
(38, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:47:48', '2023-04-10 17:47:48'),
(39, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:48:16', '2023-04-10 17:48:16'),
(40, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 17:52:28', '2023-04-10 17:52:28'),
(41, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 18:00:56', '2023-04-10 18:00:56'),
(42, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 18:05:41', '2023-04-10 18:05:41'),
(43, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-10 18:09:51', '2023-04-10 18:09:51'),
(44, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":66,\"name\":\"Test service2\",\"price\":10,\"discount_price\":2,\"price_unit\":\"hourly\",\"quantity_unit\":\"test\",\"duration\":\"03:00\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-19 09:54:53', NULL, NULL, NULL, 0, '2023-04-11 00:55:15', '2023-04-11 00:55:15'),
(45, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":67,\"name\":\"test\",\"price\":13,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"10:51\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-22 09:54:53', NULL, NULL, NULL, 0, '2023-04-11 01:16:01', '2023-04-11 01:16:01'),
(46, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-12 21:22:17', NULL, NULL, NULL, 0, '2023-04-11 12:22:46', '2023-04-11 12:22:46'),
(47, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-12 21:22:17', NULL, NULL, NULL, 0, '2023-04-11 12:28:42', '2023-04-11 12:28:42'),
(48, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-12 21:22:17', NULL, NULL, NULL, 0, '2023-04-11 12:31:20', '2023-04-11 12:31:20'),
(49, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-12 21:22:17', NULL, NULL, NULL, 0, '2023-04-11 12:34:23', '2023-04-11 12:34:23'),
(50, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-12 21:22:17', NULL, NULL, NULL, 0, '2023-04-11 12:35:08', '2023-04-11 12:35:08'),
(51, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-12 21:22:17', NULL, NULL, NULL, 0, '2023-04-11 13:40:14', '2023-04-11 13:40:14'),
(52, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-13 21:22:17', NULL, NULL, NULL, 0, '2023-04-11 13:42:19', '2023-04-11 13:42:19'),
(53, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-13 10:27:43', NULL, NULL, NULL, 0, '2023-04-12 01:27:57', '2023-04-12 01:27:57'),
(54, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-20 10:38:21', NULL, NULL, NULL, 0, '2023-04-12 01:38:38', '2023-04-12 01:38:38'),
(55, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":62,\"name\":\"tets\",\"price\":25,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-20 10:38:21', NULL, NULL, NULL, 0, '2023-04-12 01:43:52', '2023-04-12 01:43:52'),
(56, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":67,\"name\":\"test\",\"price\":13,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"10:51\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526717000256439860095269978046417236328125,\"longitude\":31.466646410064999628275472787208855152130126953125}', NULL, NULL, '[]', '2023-04-19 21:33:23', NULL, NULL, NULL, 0, '2023-04-12 12:33:54', '2023-04-12 12:33:54'),
(57, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":67,\"name\":\"test\",\"price\":13,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"10:51\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526717000256439860095269978046417236328125,\"longitude\":31.466646410064999628275472787208855152130126953125}', NULL, NULL, '[]', '2023-04-21 21:33:23', NULL, NULL, NULL, 0, '2023-04-12 12:50:49', '2023-04-12 12:50:49'),
(58, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":67,\"name\":\"test\",\"price\":13,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"10:51\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526717000256439860095269978046417236328125,\"longitude\":31.466646410064999628275472787208855152130126953125}', NULL, NULL, '[]', '2023-04-21 21:33:23', NULL, NULL, NULL, 0, '2023-04-12 12:51:30', '2023-04-12 12:51:30'),
(59, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":67,\"name\":\"test\",\"price\":13,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"10:51\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526717000256439860095269978046417236328125,\"longitude\":31.466646410064999628275472787208855152130126953125}', NULL, NULL, '[]', '2023-04-21 21:33:23', NULL, NULL, NULL, 0, '2023-04-12 12:52:02', '2023-04-12 12:52:02'),
(60, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":67,\"name\":\"test\",\"price\":13,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"10:51\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526717000256439860095269978046417236328125,\"longitude\":31.466646410064999628275472787208855152130126953125}', NULL, NULL, '[]', '2023-04-21 21:33:23', NULL, NULL, NULL, 0, '2023-04-12 13:08:34', '2023-04-12 13:08:34'),
(61, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":67,\"name\":\"test\",\"price\":13,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"10:51\",\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526717000256439860095269978046417236328125,\"longitude\":31.466646410064999628275472787208855152130126953125}', NULL, NULL, '[]', '2023-04-27 21:33:23', NULL, NULL, NULL, 0, '2023-04-12 13:16:30', '2023-04-12 13:16:30'),
(62, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:14:54', '2023-04-13 00:14:54'),
(63, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:19:32', '2023-04-13 00:19:32'),
(64, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:20:01', '2023-04-13 00:20:01'),
(65, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:25:31', '2023-04-13 00:25:31'),
(66, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:26:43', '2023-04-13 00:26:43'),
(67, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:27:18', '2023-04-13 00:27:18'),
(68, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 00:27:46', '2023-04-13 00:27:46'),
(69, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 00:27:50', '2023-04-13 00:27:50');
INSERT INTO `bookings` (`id`, `e_provider`, `e_service`, `options`, `quantity`, `user_id`, `booking_status_id`, `address`, `payment_id`, `coupon`, `taxes`, `booking_at`, `start_at`, `ends_at`, `hint`, `cancel`, `created_at`, `updated_at`) VALUES
(70, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:49:01', '2023-04-13 00:49:01'),
(71, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 00:51:43', '2023-04-13 00:51:43'),
(72, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-27 09:51:44', NULL, NULL, NULL, 0, '2023-04-13 00:52:37', '2023-04-13 00:52:37'),
(73, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-27 09:51:44', NULL, NULL, NULL, 0, '2023-04-13 00:52:37', '2023-04-13 00:52:37'),
(74, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 00:55:02', '2023-04-13 00:55:02'),
(75, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-27 09:54:54', NULL, NULL, NULL, 0, '2023-04-13 00:55:06', '2023-04-13 00:55:06'),
(76, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:56:09', '2023-04-13 00:56:09'),
(77, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 00:56:17', '2023-04-13 00:56:17'),
(78, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-27 09:54:54', NULL, NULL, NULL, 0, '2023-04-13 01:02:25', '2023-04-13 01:02:25'),
(79, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-27 09:54:54', NULL, NULL, NULL, 0, '2023-04-13 01:03:39', '2023-04-13 01:03:39'),
(80, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 01:05:10', '2023-04-13 01:05:10'),
(81, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 01:06:26', '2023-04-13 01:06:26'),
(82, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 01:11:17', '2023-04-13 01:11:17'),
(83, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 01:15:55', '2023-04-13 01:15:55'),
(84, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-27 09:54:54', NULL, NULL, NULL, 0, '2023-04-13 01:19:56', '2023-04-13 01:19:56'),
(85, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 01:46:51', '2023-04-13 01:46:51'),
(86, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 01:54:45', '2023-04-13 01:54:45'),
(87, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 02:10:35', '2023-04-13 02:10:35'),
(88, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 02:14:28', '2023-04-13 02:14:28'),
(89, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-27 09:54:54', NULL, NULL, NULL, 0, '2023-04-13 02:19:59', '2023-04-13 02:19:59'),
(90, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 02:31:14', '2023-04-13 02:31:14'),
(91, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 02:31:16', '2023-04-13 02:31:16'),
(92, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-04-13 02:31:33', '2023-04-13 02:31:33'),
(93, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-29 11:41:11', NULL, NULL, NULL, 0, '2023-04-13 02:41:25', '2023-04-13 02:41:25'),
(94, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 03:41:50', '2023-04-13 03:41:50'),
(95, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 03:41:53', '2023-04-13 03:41:53'),
(96, '{\"id\":30,\"name\":\"Naggiar Service Center\",\"phone_number\":\"961 1 449 224\",\"mobile_number\":null}', '{\"id\":48,\"name\":\"Stainless Steel Plate\",\"price\":150,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, NULL, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-04-21 05:33:18', NULL, NULL, NULL, 0, '2023-04-13 03:42:08', '2023-04-13 03:42:08'),
(97, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-19 14:21:55', NULL, NULL, NULL, 0, '2023-04-13 05:22:14', '2023-04-13 05:22:14'),
(98, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[]', '2023-04-19 14:21:55', NULL, NULL, NULL, 0, '2023-04-13 05:24:09', '2023-04-13 05:24:09'),
(99, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":64,\"name\":\"best Carpenter in Town\",\"price\":20,\"discount_price\":18,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-28 14:21:55', NULL, NULL, NULL, 0, '2023-04-14 02:32:48', '2023-04-14 02:32:48'),
(100, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":64,\"name\":\"best Carpenter in Town\",\"price\":20,\"discount_price\":18,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-28 14:21:55', NULL, NULL, NULL, 0, '2023-04-14 02:34:17', '2023-04-14 02:34:17'),
(101, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":64,\"name\":\"best Carpenter in Town\",\"price\":20,\"discount_price\":18,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-28 14:21:55', NULL, NULL, NULL, 0, '2023-04-14 02:40:02', '2023-04-14 02:40:02'),
(102, '{\"id\":23,\"name\":\"Toufic Yasmine\",\"phone_number\":\"444444444445222\",\"mobile_number\":\"01015414979\"}', '{\"id\":64,\"name\":\"best Carpenter in Town\",\"price\":20,\"discount_price\":18,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 20, 1, '{\"id\":29,\"description\":\"street,diabNegm ,Ash\",\"address\":\"street,diabNegm ,Ash Sharqia Governorate\",\"latitude\":30.756402526716893675029496080242097377777099609375,\"longitude\":31.46664641006469764761277474462985992431640625}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-04-28 14:21:55', NULL, NULL, NULL, 0, '2023-04-14 02:45:03', '2023-04-14 02:45:03'),
(103, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 17, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-05-03 06:37:45', '2023-05-03 06:37:45'),
(104, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 17, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-05-03 06:37:47', '2023-05-03 06:37:47'),
(105, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 17, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
(106, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 17, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
(107, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 17, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
(108, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 17, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-05-03 06:37:49', '2023-05-03 06:37:49'),
(109, '{\"id\":31,\"name\":\"Shehab Satellite\",\"phone_number\":\"961 1 666 768\",\"mobile_number\":null}', '{\"id\":45,\"name\":\"GPS & Navigation\",\"price\":50,\"discount_price\":11,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 17, 1, '{\"id\":23,\"description\":\"my home 2\",\"address\":\"Shoutoul Shop, VFHV+QX2\\u060c \\u0637\\u0631\\u064a\\u0642 \\u0635\\u0627\\u0626\\u0628 \\u0633\\u0644\\u0627\\u0645\\u060c\\u060c \\u0628\\u064a\\u0631\\u0648\\u062a\\u060c\\u060c Lebanon\",\"latitude\":33.87895001441599873714949353598058223724365234375,\"longitude\":35.4951040275170015547701041214168071746826171875}', NULL, NULL, '[]', '2022-05-10 16:06:10', NULL, NULL, NULL, 0, '2023-05-03 06:38:30', '2023-05-03 06:38:30'),
(110, '{\"id\":61,\"name\":\"Toufic Yasmine\",\"phone_number\":\"03755614\",\"mobile_number\":\"03755614\"}', '{\"id\":69,\"name\":\"best Carpenter in Town\",\"price\":10,\"discount_price\":8,\"price_unit\":\"fixed\",\"quantity_unit\":\"Per Visit\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 33, 1, '{\"id\":31,\"description\":\"El-Qady Street, El-Q\",\"address\":\"El-Qady Street, El-Qady St, Mosque, Zagazig 2, Ash Sharqia Governorate, Egypt\",\"latitude\":30.586085700186270486256034928373992443084716796875,\"longitude\":31.503643950463651179916269029490649700164794921875}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-05-23 11:02:37', NULL, NULL, NULL, 0, '2023-05-15 01:03:15', '2023-05-15 01:03:15'),
(111, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"ACs\",\"price\":130,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, NULL, 7, '{\"id\":32,\"description\":\"96F8+46\",\"address\":\"Al Qalyubia Governorate\",\"latitude\":30.3727513845326058117279899306595325469970703125,\"longitude\":31.215597800910472869873046875}', NULL, NULL, '[]', '2023-05-16 05:52:45', NULL, NULL, NULL, 1, '2023-05-16 02:55:34', '2023-05-16 02:57:10'),
(112, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"ACs\",\"price\":130,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":33,\"description\":\"9652+53P\",\"address\":\"Al Qalyubia Governorate\",\"latitude\":30.35790490000000119152900879271328449249267578125,\"longitude\":31.200362299999998327848516055382788181304931640625}', NULL, NULL, '[]', '2023-05-16 08:45:54', NULL, NULL, NULL, 0, '2023-05-16 05:46:15', '2023-05-16 05:46:15'),
(113, '{\"id\":75,\"name\":\"OptimalSolutions\",\"phone_number\":\"+201278664809\",\"mobile_number\":\"+201278664809\"}', '{\"id\":71,\"name\":\"test service\",\"price\":50,\"discount_price\":40,\"price_unit\":\"fixed\",\"quantity_unit\":\"usd\",\"duration\":\"02\",\"enable_booking\":true}', NULL, 1, NULL, 1, '{\"id\":34,\"description\":\"F57H+MRV\",\"address\":\"Al Qalyubia Governorate\",\"latitude\":30.464121429459279255524961627088487148284912109375,\"longitude\":31.179483197629451751708984375}', NULL, NULL, '[]', '2023-05-18 06:10:41', NULL, NULL, 'test', 0, '2023-05-18 03:11:24', '2023-05-18 03:11:24'),
(114, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 33, 1, '{\"id\":35,\"description\":\"el nasr street , dia\",\"address\":\"el nasr street , diarb negm\",\"latitude\":30.059301940968641275730988127179443836212158203125,\"longitude\":31.22803848987754093968760571442544460296630859375}', NULL, NULL, '[]', '2023-05-24 12:32:01', NULL, NULL, NULL, 0, '2023-05-22 02:35:10', '2023-05-22 02:35:10'),
(115, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":65,\"name\":\"Test service1\",\"price\":12,\"discount_price\":null,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 33, 1, '{\"id\":35,\"description\":\"el nasr street , dia\",\"address\":\"el nasr street , diarb negm\",\"latitude\":30.059301940968641275730988127179443836212158203125,\"longitude\":31.22803848987754093968760571442544460296630859375}', NULL, NULL, '[]', '2023-05-24 12:32:01', NULL, NULL, NULL, 0, '2023-05-22 02:37:20', '2023-05-22 02:37:20'),
(116, '{\"id\":35,\"name\":\"provider\",\"phone_number\":\"01015414979\",\"mobile_number\":\"01015414979\"}', '{\"id\":76,\"name\":\"TEST service\",\"price\":3000,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"11:23\",\"enable_booking\":false}', '[]', 1, 33, 1, '{\"id\":35,\"description\":\"el nasr street , dia\",\"address\":\"el nasr street , diarb negm\",\"latitude\":30.059301940968641275730988127179443836212158203125,\"longitude\":31.22803848987754093968760571442544460296630859375}', NULL, NULL, '[{\"id\":2,\"name\":\"Tax 10\",\"value\":10,\"type\":\"percent\"}]', '2023-05-27 14:12:02', NULL, NULL, NULL, 0, '2023-05-26 04:12:15', '2023-05-26 04:12:15'),
(117, '{\"id\":25,\"name\":\"Invelops S.A.R.L\",\"phone_number\":null,\"mobile_number\":\"961 71 344471\"}', '{\"id\":43,\"name\":\"Doors\",\"price\":100,\"discount_price\":20,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":false}', '[]', 1, 33, 1, '{\"id\":35,\"description\":\"el nasr street , dia\",\"address\":\"el nasr street , diarb negm\",\"latitude\":30.059301940968641275730988127179443836212158203125,\"longitude\":31.22803848987754093968760571442544460296630859375}', NULL, NULL, '[]', '2023-06-06 10:26:21', NULL, NULL, NULL, 0, '2023-06-23 00:26:46', '2023-06-23 00:26:46'),
(118, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"ACs\",\"price\":130,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":null,\"enable_booking\":true}', '[]', 1, 33, 6, '{\"id\":35,\"description\":\"el nasr street , dia\",\"address\":\"el nasr street , diarb negm\",\"latitude\":30.059301940968641275730988127179443836212158203125,\"longitude\":31.22803848987754093968760571442544460296630859375}', NULL, NULL, '[]', '2023-06-06 10:26:21', '2023-06-23 05:50:50', '2023-06-23 05:51:04', NULL, 0, '2023-06-23 01:53:52', '2023-06-23 02:51:04'),
(119, '{\"id\":37,\"name\":\"Test Provider\",\"phone_number\":\"01098887654\",\"mobile_number\":\"01098887654\"}', '{\"id\":66,\"name\":\"Test service2\",\"price\":10,\"discount_price\":2,\"price_unit\":\"hourly\",\"quantity_unit\":\"test\",\"duration\":\"03:00\",\"enable_booking\":true}', NULL, 1, 171, 1, '{\"id\":48,\"description\":\"Beirut\",\"address\":\"Beirut Governorate\",\"latitude\":33.89379129999999662459231331013143062591552734375,\"longitude\":35.50177670000000063055267673917114734649658203125}', NULL, NULL, '[]', '2023-08-03 06:00:59', NULL, NULL, 'test service', 0, '2023-08-03 03:02:20', '2023-08-03 03:02:20'),
(120, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"AC level\",\"price\":130,\"discount_price\":0,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":null,\"enable_booking\":true}', NULL, 1, 202, 1, '{\"id\":64,\"description\":\"S F Human Rights Commission\",\"address\":\"SF\",\"latitude\":37.77562879999999978508640197105705738067626953125,\"longitude\":-122.4199603999999936831954983063042163848876953125}', NULL, NULL, '[]', '2024-04-03 06:42:39', NULL, NULL, NULL, 0, '2024-04-03 03:43:47', '2024-04-03 03:43:47'),
(121, '{\"id\":241,\"name\":\"OMar Fayez\",\"phone_number\":\"81627366\",\"mobile_number\":\"81627366\"}', '{\"id\":110,\"name\":\"Test 1\",\"price\":33,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"14:29\",\"enable_booking\":true}', '[]', 1, NULL, 1, '{\"id\":72,\"description\":\"Ahmad Takkey El Dein\",\"address\":\"Ahmad Takkey El Dein, Bayrut, Lebanon\",\"latitude\":33.8797801195468792911924538202583789825439453125,\"longitude\":35.4910987388542906728616799227893352508544921875}', NULL, NULL, '[]', '2024-05-24 10:23:44', NULL, NULL, NULL, 0, '2024-05-17 00:23:54', '2024-05-17 00:23:54'),
(122, '{\"id\":241,\"name\":\"OMar Fayez\",\"phone_number\":\"81627366\",\"mobile_number\":\"81627366\"}', '{\"id\":110,\"name\":\"Test 1\",\"price\":33,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"14:29\",\"enable_booking\":true}', '[]', 1, NULL, 1, '{\"id\":72,\"description\":\"Ahmad Takkey El Dein\",\"address\":\"Ahmad Takkey El Dein, Bayrut, Lebanon\",\"latitude\":33.8797801195468792911924538202583789825439453125,\"longitude\":35.4910987388542906728616799227893352508544921875}', NULL, NULL, '[]', '2024-05-24 10:23:44', NULL, NULL, NULL, 0, '2024-05-17 00:23:56', '2024-05-17 00:23:56'),
(123, '{\"id\":245,\"name\":\"Alaa provider\",\"phone_number\":\"+96181661906\",\"mobile_number\":\"+96181661906\"}', '{\"id\":113,\"name\":\"Cleaningg\",\"price\":40,\"discount_price\":20,\"price_unit\":\"fixed\",\"quantity_unit\":\"14\",\"duration\":\"04:00\",\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":40,\"description\":\"Beirut\",\"address\":\"Beirut, Lebanon\",\"latitude\":33.8937913,\"longitude\":35.5017767}', NULL, NULL, '[{\"id\":3,\"name\":\"Maintenance\",\"value\":2,\"type\":\"fixed\"},{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2024-11-05 12:47:27', NULL, NULL, 'rr', 0, '2024-11-14 06:07:27', '2024-11-14 06:07:27'),
(124, '{\"id\":245,\"name\":\"Alaa provider\",\"phone_number\":\"+96181661906\",\"mobile_number\":\"+96181661906\"}', '{\"id\":113,\"name\":\"Cleaningg\",\"price\":40,\"discount_price\":20,\"price_unit\":\"fixed\",\"quantity_unit\":\"14\",\"duration\":\"04:00\",\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":40,\"description\":\"Beirut\",\"address\":\"Beirut, Lebanon\",\"latitude\":33.8937913,\"longitude\":35.5017767}', NULL, NULL, '[{\"id\":3,\"name\":\"Maintenance\",\"value\":2,\"type\":\"fixed\"},{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2024-11-05 12:47:27', NULL, NULL, 'rr', 0, '2024-11-14 06:07:40', '2024-11-14 06:07:40'),
(125, '{\"id\":245,\"name\":\"Alaa provider\",\"phone_number\":\"+96181661906\",\"mobile_number\":\"+96181661906\"}', '{\"id\":113,\"name\":\"Cleaningg\",\"price\":40,\"discount_price\":20,\"price_unit\":\"fixed\",\"quantity_unit\":\"14\",\"duration\":\"04:00\",\"enable_booking\":true}', '[]', 1, 1, 1, '{\"id\":40,\"description\":\"Beirut\",\"address\":\"Beirut, Lebanon\",\"latitude\":33.8937913,\"longitude\":35.5017767}', NULL, NULL, '[{\"id\":3,\"name\":\"Maintenance\",\"value\":2,\"type\":\"fixed\"},{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2024-11-05 12:47:27', NULL, NULL, 'rr', 0, '2024-11-14 06:10:48', '2024-11-14 06:10:48'),
(126, '{\"id\":245,\"name\":\"Alaa provider\",\"phone_number\":\"+96181661906\",\"mobile_number\":\"+96181661906\"}', '{\"id\":113,\"name\":\"Cleaningg\",\"price\":40,\"discount_price\":20,\"price_unit\":\"fixed\",\"quantity_unit\":\"14\",\"duration\":\"04:00\",\"enable_booking\":true}', '[]', 1, 253, 1, '{\"id\":74,\"description\":\"beirut\",\"address\":\"Abdallah El Yafi, Bayrut, Lebanon\",\"latitude\":33.87875435851602,\"longitude\":35.51374244760736}', NULL, NULL, '[{\"id\":3,\"name\":\"Maintenance\",\"value\":2,\"type\":\"fixed\"},{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2024-11-15 13:35:23', NULL, NULL, 'test test', 0, '2024-11-14 06:36:15', '2024-11-14 06:36:15'),
(127, '{\"id\":215,\"name\":\"ahmed ali\",\"phone_number\":\"01000992387\",\"mobile_number\":\"01000992387\"}', '{\"id\":90,\"name\":\"DOORS\",\"price\":200,\"discount_price\":null,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"13:01\",\"enable_booking\":true}', '[]', 1, 253, 1, '{\"id\":74,\"description\":\"beirut\",\"address\":\"Abdallah El Yafi, Bayrut, Lebanon\",\"latitude\":33.87875435851602,\"longitude\":35.51374244760736}', NULL, NULL, '[]', '2024-11-20 12:52:14', NULL, NULL, 'test', 0, '2024-11-19 05:52:26', '2024-11-19 05:52:26'),
(128, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"AC level\",\"price\":130,\"discount_price\":0,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":null,\"enable_booking\":true}', '[]', 1, NULL, 4, '{\"id\":75,\"description\":\"new address 2\",\"address\":\"Corniche AlMazraa Beirut\\u060c Bayrut, Lebanon\",\"latitude\":33.878771611321,\"longitude\":35.492496258475}', NULL, NULL, '[]', '2025-02-12 12:41:00', NULL, NULL, 'please come as early as possible', 0, '2025-02-10 05:42:20', '2025-02-10 05:44:38'),
(129, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"AC level\",\"price\":130,\"discount_price\":0,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":null,\"enable_booking\":true}', '[]', 1, NULL, 2, '{\"id\":76,\"description\":\"asasa\",\"address\":\"cairo, cairo\",\"latitude\":null,\"longitude\":null}', NULL, NULL, '[]', '2025-02-04 12:00:29', NULL, NULL, 'asmaa abozied eldekly', 0, '2025-02-12 03:59:43', '2025-02-12 03:59:43'),
(130, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"AC level\",\"price\":130,\"discount_price\":0,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":null,\"enable_booking\":true}', '[]', 1, NULL, 1, '{\"id\":77,\"description\":\"sadda\",\"address\":\"sadsadsa\",\"latitude\":null,\"longitude\":null}', NULL, NULL, '[]', '2025-02-04 10:40:11', NULL, NULL, 'dsfdsfs', 0, '2025-02-12 05:06:40', '2025-02-12 05:06:40'),
(131, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"AC level\",\"price\":130,\"discount_price\":0,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":null,\"enable_booking\":true}', '[]', 1, NULL, 1, '{\"id\":78,\"description\":\"My Office\",\"address\":\"Columbia Center, Block A, 11th floor Route Motanabbi Corniche AlMazraa Beirut\\u060cLebanon\",\"latitude\":33.8798435,\"longitude\":35.4912198}', NULL, NULL, '[]', '2025-02-27 13:09:45', NULL, NULL, 'please come on time when possible', 0, '2025-02-17 06:10:45', '2025-02-17 06:10:45'),
(132, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"AC level\",\"price\":130,\"discount_price\":0,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":null,\"enable_booking\":true}', '[]', 1, NULL, 6, '{\"id\":79,\"description\":\"cairo\",\"address\":\"Salzach-Apotheke, Goethestra\\u00dfe 29, 83410 Laufen, Germany\",\"latitude\":85.0511288,\"longitude\":-180}', NULL, NULL, '[]', '2025-02-16 14:00:48', NULL, NULL, '4545', 0, '2025-02-17 07:01:03', '2025-02-17 07:01:03'),
(133, '{\"id\":27,\"name\":\"GENEC General Engineering Company\",\"phone_number\":\"961 1 751 510\",\"mobile_number\":null}', '{\"id\":50,\"name\":\"AC level\",\"price\":130,\"discount_price\":0,\"price_unit\":\"fixed\",\"quantity_unit\":\"1\",\"duration\":null,\"enable_booking\":true}', '[]', 1, NULL, 4, '{\"id\":79,\"description\":\"cairo\",\"address\":\"Salzach-Apotheke, Goethestra\\u00dfe 29, 83410 Laufen, Germany\",\"latitude\":85.0511288,\"longitude\":-180}', NULL, NULL, '[]', '2025-02-16 14:00:48', NULL, NULL, '4545', 0, '2025-02-17 07:01:03', '2025-02-17 07:01:03'),
(134, '{\"id\":245,\"name\":\"Alaa provider\",\"phone_number\":\"+96181661906\",\"mobile_number\":\"+96181661906\"}', '{\"id\":113,\"name\":\"Cleaningg\",\"price\":40,\"discount_price\":20,\"price_unit\":\"fixed\",\"quantity_unit\":\"14\",\"duration\":\"04:00\",\"enable_booking\":true}', NULL, 1, 280, 1, '{\"id\":116,\"description\":\"4, Infinite Loop\",\"address\":\"Cupertino\",\"latitude\":37.33233141,\"longitude\":-122.0312186}', NULL, NULL, '[{\"id\":3,\"name\":\"Maintenance\",\"value\":2,\"type\":\"fixed\"},{\"id\":4,\"name\":\"Tools Fee\",\"value\":5,\"type\":\"fixed\"}]', '2025-02-24 04:31:26', NULL, NULL, 'test', 0, '2025-02-24 03:32:48', '2025-02-24 03:32:48'),
(135, '{\"id\":257,\"name\":\"touficy\",\"phone_number\":\"+9613755614\",\"mobile_number\":\"+9613755614\"}', '{\"id\":117,\"name\":\"cleaning\",\"price\":10,\"discount_price\":0,\"price_unit\":\"hourly\",\"quantity_unit\":\"hour\",\"duration\":\"13:10\",\"enable_booking\":true}', NULL, 1, 280, 1, '{\"id\":116,\"description\":\"BYU Analytics\",\"address\":\"Cupertino\",\"latitude\":37.33185979999999,\"longitude\":-122.0302485}', NULL, NULL, '[]', '2025-02-24 05:33:54', NULL, NULL, NULL, 0, '2025-02-24 04:38:36', '2025-02-24 04:38:36'),
(136, '{\"id\":252,\"name\":\"test\",\"phone_number\":\"+9611234567\",\"mobile_number\":\"+9611234567\"}', '{\"id\":120,\"name\":\"Car Wash\",\"price\":20,\"discount_price\":2,\"price_unit\":\"hourly\",\"quantity_unit\":\"\",\"duration\":\"14:00\",\"enable_booking\":true}', NULL, 1, 253, 1, '{\"id\":74,\"description\":\"beirut\",\"address\":\"Abdallah El Yafi, Bayrut, Lebanon\",\"latitude\":33.88,\"longitude\":35.51}', NULL, NULL, '[]', '2025-02-27 04:44:00', NULL, NULL, 'test test', 0, '2025-02-25 03:45:26', '2025-02-25 03:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `booking_statuses`
--

CREATE TABLE `booking_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext DEFAULT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_statuses`
--

INSERT INTO `booking_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Received\",\"ar\":\"استقبلت\"}', 1, '2021-01-25 17:25:46', '2021-01-29 15:56:35'),
(2, '\r\n{\"en\":\"In Progress\",\"ar\":\"فى تقدم\"}', 40, '2021-01-25 17:26:02', '2021-02-16 19:56:52'),
(3, '\r\n{\"en\":\"On the Way\",\"ar\":\"فى الطريق\"}', 20, '2021-01-28 05:47:23', '2021-02-16 10:10:13'),
(4, '\r\n{\"en\":\"Accepted\",\"ar\":\"مقبول \"}', 10, '2021-02-16 10:09:29', '2021-02-16 10:10:06'),
(5, '\r\n{\"en\":\"Ready\",\"ar\":\"جاهز \"}', 30, '2021-02-16 10:11:50', '2021-02-16 19:56:42'),
(6, '\r\n{\"en\":\"Done\",\"ar\":\"تم \"}', 50, '2021-02-16 19:57:02', '2021-02-16 19:57:02'),
(7, '{\"en\":\"Failed\",\"ar\":\"فشل \"}', 60, '2021-02-16 19:58:36', '2021-02-16 19:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `color` varchar(36) NOT NULL,
  `description` longtext NOT NULL DEFAULT 'desc',
  `order` int(11) DEFAULT 0,
  `featured` tinyint(1) DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `description`, `order`, `featured`, `parent_id`, `created_at`, `updated_at`) VALUES
(78, '{\"en\":\"Heating and cooling\"}', '#FFFFFF', '{\"en\":\"desc\"}', 1, 1, NULL, '2022-04-21 03:59:06', '2022-08-04 08:55:17'),
(79, '{\"en\":\"Aluminum\"}', '#FFFFFF', '{\"en\":\"<p>Desc<\\/p>\"}', 2, 1, NULL, '2022-04-21 03:59:37', '2023-03-30 03:57:59'),
(80, '{\"en\":\"Carpentry\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 3, 1, NULL, '2022-04-21 04:00:08', '2022-08-04 08:52:58'),
(81, '{\"en\":\"Cleaning\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 4, 0, NULL, '2022-04-21 04:00:34', '2022-08-04 08:52:42'),
(82, '{\"en\":\"Curtains\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 5, 0, NULL, '2022-04-21 04:01:41', '2022-08-04 08:52:31'),
(83, '{\"en\":\"Electrical\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 6, 0, NULL, '2022-04-21 04:02:11', '2022-08-04 08:52:20'),
(84, '{\"en\":\"Electronics\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 7, 0, NULL, '2022-04-21 04:02:42', '2022-07-27 05:47:46'),
(85, '{\"en\":\"Gypsum\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 8, 0, NULL, '2022-04-21 04:03:08', '2022-07-27 05:48:01'),
(87, '{\"en\":\"Painting\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 9, 0, NULL, '2022-04-21 04:04:14', '2022-07-27 05:48:13'),
(88, '{\"en\":\"Pest-control\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 10, 0, NULL, '2022-04-21 04:04:45', '2022-07-27 05:48:28'),
(89, '{\"en\":\"Plumbing\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 11, 0, NULL, '2022-04-21 04:05:17', '2024-11-06 06:36:39'),
(90, '{\"en\":\"Tiling\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 12, 0, NULL, '2022-04-21 04:05:44', '2022-07-27 05:48:54'),
(91, '{\"en\":\"Satellite\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 13, 0, NULL, '2022-04-21 04:06:20', '2022-07-27 05:49:06'),
(92, '{\"en\":\"Beauty\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 14, 0, NULL, '2022-04-21 04:06:49', '2022-07-27 05:49:16'),
(93, '{\"en\":\"Metal\"}', '#FFFFFF', '{\"en\":\"<p>desc<\\/p>\"}', 15, 0, NULL, '2022-04-21 05:24:05', '2022-07-27 05:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) NOT NULL DEFAULT 'percent',
  `description` longtext DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `discount_type`, `description`, `expires_at`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'omar1', 100.00, 'percent', '{\"en\":null}', '2024-04-06 10:24:00', 1, '2024-03-29 01:24:24', '2024-03-29 01:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `symbol` longtext DEFAULT NULL,
  `code` longtext DEFAULT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2020-10-22 13:50:48', '2020-10-22 13:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) NOT NULL,
  `type` varchar(56) NOT NULL,
  `values` varchar(191) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 19:43:58', '2019-09-06 19:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 19:49:22', '2019-09-06 19:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext DEFAULT NULL,
  `view` longtext DEFAULT NULL,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(30, 'Explicabo. Eum provi. ', 'Explicabo. Eum provi. ', 5, 'App\\Models\\User', 2, '2019-09-06 19:52:30', '2022-06-27 23:52:29'),
(31, 'Modi est libero qui', 'Modi est libero qui', 6, 'App\\Models\\User', 2, '2019-09-06 19:52:30', '2021-02-02 09:32:57'),
(33, 'test bio', 'test bio', 5, 'App\\Models\\User', 1, '2019-09-06 19:53:58', '2024-11-19 14:30:35'),
(34, 'test address', 'test address', 6, 'App\\Models\\User', 1, '2019-09-06 19:53:58', '2024-11-19 14:20:14'),
(36, 'Dolor optio, error e', 'Dolor optio, error e', 5, 'App\\Models\\User', 3, '2019-10-15 15:21:32', '2021-02-02 09:33:23'),
(37, 'Voluptatibus ad ipsu', 'Voluptatibus ad ipsu', 6, 'App\\Models\\User', 3, '2019-10-15 15:21:32', '2021-02-02 09:33:23'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 17:31:46', '2019-10-16 17:31:46'),
(40, 'Sequi molestiae ipsa1', 'Sequi molestiae ipsa1', 6, 'App\\Models\\User', 4, '2019-10-16 17:31:46', '2021-02-21 21:32:10'),
(42, 'Omnis fugiat et cons.', 'Omnis fugiat et cons.', 5, 'App\\Models\\User', 5, '2019-12-15 16:49:44', '2021-02-02 09:29:47'),
(43, 'Consequatur delenit', 'Consequatur delenit', 6, 'App\\Models\\User', 5, '2019-12-15 16:49:44', '2021-02-02 09:29:47'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 15:28:05', '2020-03-29 15:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 15:28:05', '2020-03-29 15:28:05'),
(48, 'Voluptatem. Omnis op.', 'Voluptatem. Omnis op.', 5, 'App\\Models\\User', 7, '2021-01-17 14:13:24', '2021-02-02 09:31:36'),
(49, 'Perspiciatis aut ei', 'Perspiciatis aut ei', 6, 'App\\Models\\User', 7, '2021-01-17 14:13:24', '2021-02-02 09:31:36'),
(51, 'sdfsdf56', 'sdfsdf56', 5, 'App\\Models\\User', 8, '2021-02-10 09:31:12', '2021-02-19 12:09:37'),
(52, 'Adressttt', 'Adressttt', 6, 'App\\Models\\User', 8, '2021-02-10 09:31:12', '2021-02-19 11:57:27'),
(53, 'Managing partner at optimal solutions and work as project manager', 'Managing partner at optimal solutions and work as project manager', 5, 'App\\Models\\User', 9, '2022-03-31 06:27:59', '2023-04-04 02:23:49'),
(54, 'riviera  center', 'riviera  center', 6, 'App\\Models\\User', 9, '2022-03-31 06:27:59', '2022-03-31 06:27:59'),
(55, NULL, '', 5, 'App\\Models\\User', 10, '2022-05-10 14:55:58', '2022-07-02 14:42:16'),
(56, NULL, NULL, 6, 'App\\Models\\User', 10, '2022-05-10 14:55:58', '2022-07-02 15:44:34'),
(57, NULL, '', 5, 'App\\Models\\User', 11, '2022-06-28 00:02:25', '2022-06-28 00:02:25'),
(58, NULL, NULL, 6, 'App\\Models\\User', 11, '2022-06-28 00:02:25', '2022-06-28 00:02:25'),
(59, NULL, '', 5, 'App\\Models\\User', 12, '2022-07-02 15:50:58', '2022-07-02 15:50:58'),
(60, NULL, NULL, 6, 'App\\Models\\User', 12, '2022-07-02 15:50:58', '2022-07-02 15:50:58'),
(61, NULL, '', 5, 'App\\Models\\User', 13, '2022-07-26 07:10:11', '2022-07-26 07:10:11'),
(62, NULL, NULL, 6, 'App\\Models\\User', 13, '2022-07-26 07:10:11', '2022-07-26 07:10:11'),
(63, NULL, '', 5, 'App\\Models\\User', 15, '2022-07-27 00:32:19', '2022-07-27 00:32:19'),
(64, 'gfcgg', 'gfcgg', 6, 'App\\Models\\User', 15, '2022-07-27 00:32:19', '2022-07-29 02:56:53'),
(65, NULL, '', 5, 'App\\Models\\User', 18, '2022-08-03 01:02:38', '2022-08-03 01:02:38'),
(66, NULL, NULL, 6, 'App\\Models\\User', 18, '2022-08-03 01:02:38', '2022-08-03 01:02:38'),
(67, NULL, '', 5, 'App\\Models\\User', 19, '2023-03-31 03:17:02', '2023-03-31 03:17:02'),
(68, NULL, NULL, 6, 'App\\Models\\User', 19, '2023-03-31 03:17:02', '2023-03-31 03:17:02'),
(69, NULL, '', 5, 'App\\Models\\User', 20, '2023-04-05 04:14:02', '2023-04-05 04:14:02'),
(70, NULL, NULL, 6, 'App\\Models\\User', 20, '2023-04-05 04:14:02', '2023-04-05 04:14:02'),
(71, NULL, '', 5, 'App\\Models\\User', 21, '2023-04-12 13:07:41', '2023-04-12 13:07:41'),
(72, NULL, NULL, 6, 'App\\Models\\User', 21, '2023-04-12 13:07:41', '2023-04-12 13:07:41'),
(73, NULL, '', 5, 'App\\Models\\User', 22, '2023-04-13 05:11:15', '2023-04-13 05:11:15'),
(74, NULL, NULL, 6, 'App\\Models\\User', 22, '2023-04-13 05:11:15', '2023-04-13 05:11:15'),
(75, NULL, '', 5, 'App\\Models\\User', 23, '2023-04-14 02:56:08', '2023-04-14 02:56:08'),
(76, NULL, NULL, 6, 'App\\Models\\User', 23, '2023-04-14 02:56:08', '2023-04-14 02:56:08'),
(77, NULL, '', 5, 'App\\Models\\User', 24, '2023-04-14 03:56:50', '2023-04-14 03:56:50'),
(78, NULL, NULL, 6, 'App\\Models\\User', 24, '2023-04-14 03:56:50', '2023-04-14 03:56:50'),
(79, NULL, '', 5, 'App\\Models\\User', 25, '2023-04-14 03:59:55', '2023-04-14 03:59:55'),
(80, NULL, NULL, 6, 'App\\Models\\User', 25, '2023-04-14 03:59:55', '2023-04-14 03:59:55'),
(81, NULL, '', 5, 'App\\Models\\User', 26, '2023-04-14 04:14:53', '2023-04-14 04:14:53'),
(82, NULL, NULL, 6, 'App\\Models\\User', 26, '2023-04-14 04:14:53', '2023-04-14 04:14:53'),
(83, NULL, '', 5, 'App\\Models\\User', 27, '2023-04-14 04:23:18', '2023-04-14 04:23:18'),
(84, NULL, NULL, 6, 'App\\Models\\User', 27, '2023-04-14 04:23:18', '2023-04-14 04:23:18'),
(85, NULL, '', 5, 'App\\Models\\User', 28, '2023-04-14 04:28:49', '2023-04-14 04:28:49'),
(86, NULL, NULL, 6, 'App\\Models\\User', 28, '2023-04-14 04:28:49', '2023-04-14 04:28:49'),
(87, NULL, '', 5, 'App\\Models\\User', 29, '2023-04-14 04:40:17', '2023-04-14 04:40:17'),
(88, NULL, NULL, 6, 'App\\Models\\User', 29, '2023-04-14 04:40:17', '2023-04-14 04:40:17'),
(89, NULL, '', 5, 'App\\Models\\User', 30, '2023-04-14 05:04:07', '2023-04-14 05:04:07'),
(90, NULL, NULL, 6, 'App\\Models\\User', 30, '2023-04-14 05:04:07', '2023-04-14 05:04:07'),
(91, NULL, '', 5, 'App\\Models\\User', 31, '2023-04-14 05:06:38', '2023-04-14 05:06:38'),
(92, NULL, NULL, 6, 'App\\Models\\User', 31, '2023-04-14 05:06:38', '2023-04-14 05:06:38'),
(93, NULL, '', 5, 'App\\Models\\User', 32, '2023-04-14 05:21:36', '2023-04-14 05:21:36'),
(94, NULL, NULL, 6, 'App\\Models\\User', 32, '2023-04-14 05:21:36', '2023-04-14 05:21:36'),
(95, NULL, '', 5, 'App\\Models\\User', 33, '2023-04-14 05:28:23', '2023-04-14 05:28:23'),
(96, NULL, NULL, 6, 'App\\Models\\User', 33, '2023-04-14 05:28:23', '2023-04-14 05:28:23'),
(97, NULL, '', 5, 'App\\Models\\User', 34, '2023-04-25 05:19:22', '2023-04-25 05:19:22'),
(98, NULL, NULL, 6, 'App\\Models\\User', 34, '2023-04-25 05:19:22', '2023-04-25 05:19:22'),
(99, NULL, '', 5, 'App\\Models\\User', 35, '2023-04-25 05:27:16', '2023-04-25 05:27:16'),
(100, NULL, NULL, 6, 'App\\Models\\User', 35, '2023-04-25 05:27:16', '2023-04-25 05:27:16'),
(107, NULL, '', 5, 'App\\Models\\User', 39, '2023-04-25 06:00:54', '2023-04-25 06:00:54'),
(108, NULL, NULL, 6, 'App\\Models\\User', 39, '2023-04-25 06:00:54', '2023-04-25 06:00:54'),
(111, NULL, '', 5, 'App\\Models\\User', 41, '2023-04-25 06:07:58', '2023-04-25 06:07:58'),
(112, NULL, NULL, 6, 'App\\Models\\User', 41, '2023-04-25 06:07:58', '2023-04-25 06:07:58'),
(123, NULL, '', 5, 'App\\Models\\User', 47, '2023-04-25 08:50:51', '2023-04-25 08:50:51'),
(124, NULL, NULL, 6, 'App\\Models\\User', 47, '2023-04-25 08:50:51', '2023-04-25 08:50:51'),
(125, NULL, '', 5, 'App\\Models\\User', 48, '2023-04-25 08:55:55', '2023-04-25 08:55:55'),
(126, NULL, NULL, 6, 'App\\Models\\User', 48, '2023-04-25 08:55:55', '2023-04-25 08:55:55'),
(127, NULL, '', 5, 'App\\Models\\User', 49, '2023-04-26 01:15:48', '2023-04-26 01:15:48'),
(128, NULL, NULL, 6, 'App\\Models\\User', 49, '2023-04-26 01:15:48', '2023-04-26 01:15:48'),
(135, NULL, '', 5, 'App\\Models\\User', 53, '2023-04-26 01:27:48', '2023-04-26 01:27:48'),
(136, NULL, NULL, 6, 'App\\Models\\User', 53, '2023-04-26 01:27:48', '2023-04-26 01:27:48'),
(137, NULL, '', 5, 'App\\Models\\User', 54, '2023-04-27 01:00:09', '2023-04-27 01:00:09'),
(138, NULL, NULL, 6, 'App\\Models\\User', 54, '2023-04-27 01:00:09', '2023-04-27 01:00:09'),
(139, NULL, '', 5, 'App\\Models\\User', 55, '2023-04-27 01:34:31', '2023-04-27 01:34:31'),
(140, NULL, NULL, 6, 'App\\Models\\User', 55, '2023-04-27 01:34:31', '2023-04-27 01:34:31'),
(141, NULL, '', 5, 'App\\Models\\User', 56, '2023-04-27 02:24:11', '2023-04-27 02:24:11'),
(142, NULL, NULL, 6, 'App\\Models\\User', 56, '2023-04-27 02:24:11', '2023-04-27 02:24:11'),
(143, NULL, '', 5, 'App\\Models\\User', 57, '2023-05-01 00:32:12', '2023-05-01 00:32:12'),
(144, NULL, NULL, 6, 'App\\Models\\User', 57, '2023-05-01 00:32:12', '2023-05-01 00:32:12'),
(145, NULL, '', 5, 'App\\Models\\User', 58, '2023-05-03 06:53:49', '2023-05-03 06:53:49'),
(146, NULL, NULL, 6, 'App\\Models\\User', 58, '2023-05-03 06:53:49', '2023-05-03 06:53:49'),
(147, NULL, '', 5, 'App\\Models\\User', 59, '2023-05-03 07:02:54', '2023-05-03 07:02:54'),
(148, NULL, NULL, 6, 'App\\Models\\User', 59, '2023-05-03 07:02:54', '2023-05-03 07:02:54'),
(149, NULL, '', 5, 'App\\Models\\User', 60, '2023-05-03 07:11:16', '2023-05-03 07:11:16'),
(150, NULL, NULL, 6, 'App\\Models\\User', 60, '2023-05-03 07:11:16', '2023-05-03 07:11:16'),
(151, '<p>this is my short biography</p>', 'this is my short biography', 5, 'App\\Models\\User', 61, '2023-05-05 00:14:07', '2023-05-05 00:24:31'),
(152, 'Beirut lebanon cornish almazraa', 'Beirut lebanon cornish almazraa', 6, 'App\\Models\\User', 61, '2023-05-05 00:14:07', '2023-05-05 00:24:31'),
(153, NULL, '', 5, 'App\\Models\\User', 62, '2023-05-05 01:22:21', '2023-05-05 01:22:21'),
(154, NULL, NULL, 6, 'App\\Models\\User', 62, '2023-05-05 01:22:21', '2023-05-05 01:22:21'),
(155, NULL, '', 5, 'App\\Models\\User', 63, '2023-05-05 01:24:59', '2023-05-05 01:24:59'),
(156, NULL, NULL, 6, 'App\\Models\\User', 63, '2023-05-05 01:24:59', '2023-05-05 01:24:59'),
(163, NULL, '', 5, 'App\\Models\\User', 67, '2023-05-08 01:06:42', '2023-05-08 01:06:42'),
(164, NULL, NULL, 6, 'App\\Models\\User', 67, '2023-05-08 01:06:42', '2023-05-08 01:06:42'),
(165, NULL, '', 5, 'App\\Models\\User', 68, '2023-05-08 01:08:58', '2023-05-08 01:08:58'),
(166, NULL, NULL, 6, 'App\\Models\\User', 68, '2023-05-08 01:08:58', '2023-05-08 01:08:58'),
(167, NULL, '', 5, 'App\\Models\\User', 69, '2023-05-08 01:10:59', '2023-05-08 01:10:59'),
(168, NULL, NULL, 6, 'App\\Models\\User', 69, '2023-05-08 01:10:59', '2023-05-08 01:10:59'),
(169, NULL, '', 5, 'App\\Models\\User', 70, '2023-05-08 02:30:20', '2023-05-08 02:30:20'),
(170, NULL, NULL, 6, 'App\\Models\\User', 70, '2023-05-08 02:30:20', '2023-05-08 02:30:20'),
(171, NULL, '', 5, 'App\\Models\\User', 72, '2023-05-11 04:06:46', '2023-05-11 04:06:46'),
(172, NULL, NULL, 6, 'App\\Models\\User', 72, '2023-05-11 04:06:46', '2023-05-11 04:06:46'),
(173, NULL, '', 5, 'App\\Models\\User', 73, '2023-05-15 06:41:15', '2023-05-15 06:41:15'),
(174, NULL, NULL, 6, 'App\\Models\\User', 73, '2023-05-15 06:41:15', '2023-05-15 06:41:15'),
(175, NULL, '', 5, 'App\\Models\\User', 74, '2023-05-15 06:42:32', '2023-05-15 06:42:32'),
(176, NULL, NULL, 6, 'App\\Models\\User', 74, '2023-05-15 06:42:32', '2023-05-15 06:42:32'),
(177, NULL, '', 5, 'App\\Models\\User', 75, '2023-05-15 06:47:54', '2023-05-15 06:47:54'),
(178, 'test', 'test', 6, 'App\\Models\\User', 75, '2023-05-15 06:47:54', '2023-05-16 00:14:01'),
(179, NULL, '', 5, 'App\\Models\\User', 76, '2023-05-16 00:32:47', '2023-05-16 00:32:47'),
(180, NULL, NULL, 6, 'App\\Models\\User', 76, '2023-05-16 00:32:47', '2023-05-16 00:32:47'),
(181, NULL, '', 5, 'App\\Models\\User', 77, '2023-05-16 00:34:33', '2023-05-16 00:34:33'),
(182, NULL, NULL, 6, 'App\\Models\\User', 77, '2023-05-16 00:34:33', '2023-05-16 00:34:33'),
(183, NULL, '', 5, 'App\\Models\\User', 78, '2023-05-16 00:35:33', '2023-05-16 00:35:33'),
(184, NULL, NULL, 6, 'App\\Models\\User', 78, '2023-05-16 00:35:33', '2023-05-16 00:35:33'),
(185, NULL, '', 5, 'App\\Models\\User', 79, '2023-05-16 00:36:44', '2023-05-16 00:36:44'),
(186, NULL, NULL, 6, 'App\\Models\\User', 79, '2023-05-16 00:36:44', '2023-05-16 00:36:44'),
(187, NULL, '', 5, 'App\\Models\\User', 80, '2023-05-16 01:23:58', '2023-05-16 01:23:58'),
(188, 'test', 'test', 6, 'App\\Models\\User', 80, '2023-05-16 01:23:58', '2023-05-16 01:32:30'),
(189, NULL, '', 5, 'App\\Models\\User', 81, '2023-05-16 02:30:27', '2023-05-16 02:30:27'),
(190, 'test', 'test', 6, 'App\\Models\\User', 81, '2023-05-16 02:30:27', '2023-05-16 02:38:07'),
(191, NULL, '', 5, 'App\\Models\\User', 82, '2023-05-16 02:39:18', '2023-05-16 02:39:18'),
(192, NULL, NULL, 6, 'App\\Models\\User', 82, '2023-05-16 02:39:18', '2023-05-16 02:39:18'),
(193, NULL, '', 5, 'App\\Models\\User', 83, '2023-05-16 02:41:07', '2023-05-16 02:41:07'),
(194, 'test', 'test', 6, 'App\\Models\\User', 83, '2023-05-16 02:41:07', '2023-05-16 02:46:42'),
(195, NULL, '', 5, 'App\\Models\\User', 84, '2023-05-16 04:03:53', '2023-05-16 04:03:53'),
(196, NULL, NULL, 6, 'App\\Models\\User', 84, '2023-05-16 04:03:53', '2023-05-16 04:03:53'),
(197, NULL, '', 5, 'App\\Models\\User', 85, '2023-05-16 04:48:08', '2023-05-16 04:48:08'),
(198, 'test', 'test', 6, 'App\\Models\\User', 85, '2023-05-16 04:48:08', '2023-05-16 04:59:04'),
(199, NULL, '', 5, 'App\\Models\\User', 96, '2023-05-17 05:02:49', '2023-05-17 05:02:49'),
(200, 'test', 'test', 6, 'App\\Models\\User', 96, '2023-05-17 05:02:49', '2023-05-17 05:02:49'),
(201, NULL, '', 5, 'App\\Models\\User', 97, '2023-05-18 03:09:23', '2023-05-18 03:09:23'),
(202, NULL, NULL, 6, 'App\\Models\\User', 97, '2023-05-18 03:09:23', '2023-05-18 03:09:23'),
(203, NULL, '', 5, 'App\\Models\\User', 106, '2023-05-25 01:12:54', '2023-05-25 01:12:54'),
(204, 'test', 'test', 6, 'App\\Models\\User', 106, '2023-05-25 01:12:54', '2023-05-25 01:15:28'),
(205, NULL, '', 5, 'App\\Models\\User', 113, '2023-05-29 05:42:00', '2023-05-29 05:42:00'),
(206, NULL, NULL, 6, 'App\\Models\\User', 113, '2023-05-29 05:42:00', '2023-05-29 05:42:00'),
(207, NULL, '', 5, 'App\\Models\\User', 134, '2023-06-12 03:56:09', '2023-06-12 03:56:09'),
(208, '123', '123', 6, 'App\\Models\\User', 134, '2023-06-12 03:56:09', '2023-06-12 03:56:09'),
(209, NULL, '', 5, 'App\\Models\\User', 138, '2023-06-12 05:08:59', '2023-06-12 05:08:59'),
(210, NULL, NULL, 6, 'App\\Models\\User', 138, '2023-06-12 05:08:59', '2023-06-12 05:08:59'),
(211, NULL, '', 5, 'App\\Models\\User', 141, '2023-06-20 03:14:55', '2023-06-20 03:14:55'),
(212, 'address 1', 'address 1', 6, 'App\\Models\\User', 141, '2023-06-20 03:14:55', '2023-06-20 03:14:55'),
(213, NULL, '', 5, 'App\\Models\\User', 142, '2023-06-26 01:00:19', '2023-06-26 01:00:19'),
(214, 'beirut', 'beirut', 6, 'App\\Models\\User', 142, '2023-06-26 01:00:19', '2023-06-26 01:00:19'),
(215, NULL, '', 5, 'App\\Models\\User', 143, '2023-06-26 01:21:15', '2023-06-26 01:21:15'),
(216, 'beirut', 'beirut', 6, 'App\\Models\\User', 143, '2023-06-26 01:21:15', '2023-06-26 01:21:15'),
(217, NULL, '', 5, 'App\\Models\\User', 144, '2023-06-26 03:26:34', '2023-06-26 03:26:34'),
(218, '12345', '12345', 6, 'App\\Models\\User', 144, '2023-06-26 03:26:34', '2023-06-26 03:27:05'),
(219, '<p>bio test</p>', 'bio test', 5, 'App\\Models\\User', 146, '2023-07-03 02:52:14', '2023-07-03 02:52:14'),
(220, 'test,address', 'test,address', 6, 'App\\Models\\User', 146, '2023-07-03 02:52:14', '2023-07-03 02:52:14'),
(221, '<p>bio updated</p>', 'bio updated', 5, 'App\\Models\\User', 147, '2023-07-03 03:06:10', '2023-07-03 03:07:15'),
(222, 'test,address', 'test,address', 6, 'App\\Models\\User', 147, '2023-07-03 03:06:10', '2023-07-03 03:06:10'),
(223, NULL, '', 5, 'App\\Models\\User', 148, '2023-07-04 01:50:09', '2023-07-04 01:50:09'),
(224, NULL, NULL, 6, 'App\\Models\\User', 148, '2023-07-04 01:50:09', '2023-07-04 01:50:09'),
(225, NULL, '', 5, 'App\\Models\\User', 149, '2023-07-04 02:08:56', '2023-07-04 02:08:56'),
(226, NULL, NULL, 6, 'App\\Models\\User', 149, '2023-07-04 02:08:56', '2023-07-04 02:08:56'),
(227, NULL, '', 5, 'App\\Models\\User', 151, '2023-07-10 01:31:59', '2023-07-10 01:31:59'),
(228, 'beirut Cornish al mazraa', 'beirut Cornish al mazraa', 6, 'App\\Models\\User', 151, '2023-07-10 01:31:59', '2023-07-10 01:34:13'),
(229, NULL, '', 5, 'App\\Models\\User', 161, '2023-07-11 03:07:52', '2023-07-11 03:07:52'),
(230, NULL, NULL, 6, 'App\\Models\\User', 161, '2023-07-11 03:07:52', '2023-07-11 03:07:52'),
(231, NULL, '', 5, 'App\\Models\\User', 162, '2023-07-11 03:56:04', '2023-07-11 03:56:04'),
(232, NULL, NULL, 6, 'App\\Models\\User', 162, '2023-07-11 03:56:04', '2023-07-11 03:56:04'),
(233, NULL, '', 5, 'App\\Models\\User', 163, '2023-07-11 04:10:07', '2023-07-11 04:10:07'),
(234, NULL, NULL, 6, 'App\\Models\\User', 163, '2023-07-11 04:10:07', '2023-07-11 04:10:07'),
(235, NULL, '', 5, 'App\\Models\\User', 165, '2023-07-12 01:25:45', '2023-07-12 01:25:45'),
(236, NULL, NULL, 6, 'App\\Models\\User', 165, '2023-07-12 01:25:45', '2023-07-12 01:25:45'),
(237, NULL, '', 5, 'App\\Models\\User', 166, '2023-07-12 03:31:20', '2023-07-12 03:31:20'),
(238, NULL, NULL, 6, 'App\\Models\\User', 166, '2023-07-12 03:31:20', '2023-07-12 03:31:20'),
(239, NULL, '', 5, 'App\\Models\\User', 167, '2023-07-12 03:58:48', '2023-07-12 03:58:48'),
(240, NULL, NULL, 6, 'App\\Models\\User', 167, '2023-07-12 03:58:48', '2023-07-12 03:58:48'),
(241, NULL, '', 5, 'App\\Models\\User', 168, '2023-07-17 04:33:38', '2023-07-17 04:33:38'),
(242, NULL, NULL, 6, 'App\\Models\\User', 168, '2023-07-17 04:33:38', '2023-07-17 04:33:38'),
(243, NULL, '', 5, 'App\\Models\\User', 169, '2023-07-17 04:38:33', '2023-07-17 04:38:33'),
(244, NULL, NULL, 6, 'App\\Models\\User', 169, '2023-07-17 04:38:33', '2023-07-17 04:38:33'),
(245, NULL, '', 5, 'App\\Models\\User', 170, '2023-07-18 01:03:27', '2023-07-18 01:03:27'),
(246, NULL, NULL, 6, 'App\\Models\\User', 170, '2023-07-18 01:03:27', '2023-07-18 01:03:27'),
(247, NULL, '', 5, 'App\\Models\\User', 171, '2023-08-03 02:59:45', '2023-08-03 02:59:45'),
(248, 'address', 'address', 6, 'App\\Models\\User', 171, '2023-08-03 02:59:45', '2023-08-03 03:04:22'),
(249, NULL, '', 5, 'App\\Models\\User', 173, '2024-03-22 04:03:41', '2024-03-22 04:03:41'),
(250, NULL, NULL, 6, 'App\\Models\\User', 173, '2024-03-22 04:03:41', '2024-03-22 04:03:41'),
(251, NULL, '', 5, 'App\\Models\\User', 174, '2024-03-25 01:15:04', '2024-03-25 01:15:04'),
(252, NULL, NULL, 6, 'App\\Models\\User', 174, '2024-03-25 01:15:04', '2024-03-25 01:15:04'),
(253, '<p>dfdffd</p>', 'dfdffd', 5, 'App\\Models\\User', 176, '2024-03-28 06:18:21', '2024-03-28 06:18:21'),
(254, 'addrees', 'addrees', 6, 'App\\Models\\User', 176, '2024-03-28 06:18:21', '2024-03-28 06:18:21'),
(255, NULL, '', 5, 'App\\Models\\User', 198, '2024-04-02 05:13:04', '2024-04-02 05:13:04'),
(256, NULL, NULL, 6, 'App\\Models\\User', 198, '2024-04-02 05:13:04', '2024-04-02 05:13:04'),
(257, NULL, '', 5, 'App\\Models\\User', 199, '2024-04-03 02:30:49', '2024-04-03 02:30:49'),
(258, NULL, NULL, 6, 'App\\Models\\User', 199, '2024-04-03 02:30:49', '2024-04-03 02:30:49'),
(259, NULL, '', 5, 'App\\Models\\User', 200, '2024-04-03 03:00:08', '2024-04-03 03:00:08'),
(260, NULL, NULL, 6, 'App\\Models\\User', 200, '2024-04-03 03:00:08', '2024-04-03 03:00:08'),
(261, NULL, '', 5, 'App\\Models\\User', 201, '2024-04-03 03:26:08', '2024-04-03 03:26:08'),
(262, NULL, NULL, 6, 'App\\Models\\User', 201, '2024-04-03 03:26:08', '2024-04-03 03:26:08'),
(263, NULL, '', 5, 'App\\Models\\User', 202, '2024-04-03 03:41:06', '2024-04-03 03:41:06'),
(264, NULL, NULL, 6, 'App\\Models\\User', 202, '2024-04-03 03:41:06', '2024-04-03 03:41:06'),
(265, NULL, '', 5, 'App\\Models\\User', 203, '2024-04-03 03:50:27', '2024-04-03 03:50:27'),
(266, NULL, NULL, 6, 'App\\Models\\User', 203, '2024-04-03 03:50:27', '2024-04-03 03:50:27'),
(267, NULL, '', 5, 'App\\Models\\User', 204, '2024-04-03 03:55:53', '2024-04-03 03:55:53'),
(268, NULL, NULL, 6, 'App\\Models\\User', 204, '2024-04-03 03:55:53', '2024-04-03 03:55:53'),
(269, NULL, '', 5, 'App\\Models\\User', 207, '2024-04-03 23:56:43', '2024-04-03 23:56:43'),
(270, NULL, NULL, 6, 'App\\Models\\User', 207, '2024-04-03 23:56:43', '2024-04-03 23:56:43'),
(271, NULL, '', 5, 'App\\Models\\User', 208, '2024-04-03 23:57:23', '2024-04-03 23:57:23'),
(272, NULL, NULL, 6, 'App\\Models\\User', 208, '2024-04-03 23:57:23', '2024-04-03 23:57:23'),
(273, 'heheheh', 'heheheh', 5, 'App\\Models\\User', 210, '2024-05-08 03:23:26', '2024-05-08 03:23:26'),
(274, 'beirut', 'beirut', 6, 'App\\Models\\User', 210, '2024-05-08 03:23:26', '2024-05-08 03:23:26'),
(275, NULL, '', 5, 'App\\Models\\User', 211, '2024-05-08 03:37:07', '2024-05-08 03:37:07'),
(276, NULL, NULL, 6, 'App\\Models\\User', 211, '2024-05-08 03:37:07', '2024-05-08 03:37:07'),
(277, NULL, '', 5, 'App\\Models\\User', 212, '2024-05-08 03:45:50', '2024-05-08 03:45:50'),
(278, NULL, NULL, 6, 'App\\Models\\User', 212, '2024-05-08 03:45:50', '2024-05-08 03:45:50'),
(279, NULL, '', 5, 'App\\Models\\User', 213, '2024-05-08 04:11:58', '2024-05-08 04:11:58'),
(280, NULL, NULL, 6, 'App\\Models\\User', 213, '2024-05-08 04:11:58', '2024-05-08 04:11:58'),
(281, NULL, '', 5, 'App\\Models\\User', 215, '2024-05-08 14:04:02', '2024-05-08 14:04:02'),
(282, NULL, NULL, 6, 'App\\Models\\User', 215, '2024-05-08 14:04:02', '2024-05-08 14:04:02'),
(283, NULL, '', 5, 'App\\Models\\User', 216, '2024-05-09 00:30:52', '2024-05-09 00:30:52'),
(284, NULL, NULL, 6, 'App\\Models\\User', 216, '2024-05-09 00:30:52', '2024-05-09 00:30:52'),
(285, NULL, '', 5, 'App\\Models\\User', 217, '2024-05-09 00:38:49', '2024-05-09 00:38:49'),
(286, NULL, NULL, 6, 'App\\Models\\User', 217, '2024-05-09 00:38:49', '2024-05-09 00:38:49'),
(287, NULL, '', 5, 'App\\Models\\User', 218, '2024-05-09 00:43:22', '2024-05-09 00:43:22'),
(288, NULL, NULL, 6, 'App\\Models\\User', 218, '2024-05-09 00:43:22', '2024-05-09 00:43:22'),
(289, NULL, '', 5, 'App\\Models\\User', 219, '2024-05-09 02:00:39', '2024-05-09 02:00:39'),
(290, NULL, NULL, 6, 'App\\Models\\User', 219, '2024-05-09 02:00:39', '2024-05-09 02:00:39'),
(291, NULL, '', 5, 'App\\Models\\User', 220, '2024-05-09 03:27:24', '2024-05-09 03:27:24'),
(292, NULL, NULL, 6, 'App\\Models\\User', 220, '2024-05-09 03:27:24', '2024-05-09 03:27:24'),
(293, NULL, '', 5, 'App\\Models\\User', 221, '2024-05-09 04:50:32', '2024-05-09 04:50:32'),
(294, 'test', 'test', 6, 'App\\Models\\User', 221, '2024-05-09 04:50:32', '2024-05-12 10:44:18'),
(295, NULL, '', 5, 'App\\Models\\User', 222, '2024-05-09 05:07:47', '2024-05-09 05:07:47'),
(296, 'test', 'test', 6, 'App\\Models\\User', 222, '2024-05-09 05:07:47', '2024-05-10 07:10:52'),
(297, NULL, '', 5, 'App\\Models\\User', 224, '2024-05-13 01:47:27', '2024-05-13 01:47:27'),
(298, NULL, NULL, 6, 'App\\Models\\User', 224, '2024-05-13 01:47:27', '2024-05-13 01:47:27'),
(299, NULL, '', 5, 'App\\Models\\User', 225, '2024-05-13 01:57:40', '2024-05-13 01:57:40'),
(300, NULL, NULL, 6, 'App\\Models\\User', 225, '2024-05-13 01:57:40', '2024-05-13 01:57:40'),
(301, NULL, '', 5, 'App\\Models\\User', 226, '2024-05-13 06:49:10', '2024-05-13 06:49:10'),
(302, NULL, NULL, 6, 'App\\Models\\User', 226, '2024-05-13 06:49:10', '2024-05-13 06:49:10'),
(303, NULL, '', 5, 'App\\Models\\User', 227, '2024-05-13 23:40:54', '2024-05-13 23:40:54'),
(304, 'test', 'test', 6, 'App\\Models\\User', 227, '2024-05-13 23:40:54', '2024-05-14 03:20:20'),
(305, NULL, '', 5, 'App\\Models\\User', 228, '2024-05-14 00:21:19', '2024-05-14 00:21:19'),
(306, NULL, NULL, 6, 'App\\Models\\User', 228, '2024-05-14 00:21:19', '2024-05-14 00:21:19'),
(307, NULL, '', 5, 'App\\Models\\User', 230, '2024-05-14 00:53:57', '2024-05-14 00:53:57'),
(308, NULL, NULL, 6, 'App\\Models\\User', 230, '2024-05-14 00:53:57', '2024-05-14 00:53:57'),
(309, NULL, '', 5, 'App\\Models\\User', 231, '2024-05-14 03:09:43', '2024-05-14 03:09:43'),
(310, NULL, NULL, 6, 'App\\Models\\User', 231, '2024-05-14 03:09:43', '2024-05-14 03:09:43'),
(311, NULL, '', 5, 'App\\Models\\User', 232, '2024-05-14 03:45:40', '2024-05-14 03:45:40'),
(312, 'test', 'test', 6, 'App\\Models\\User', 232, '2024-05-14 03:45:40', '2024-05-18 09:34:50'),
(313, NULL, '', 5, 'App\\Models\\User', 233, '2024-05-14 04:39:20', '2024-05-14 04:39:20'),
(314, NULL, NULL, 6, 'App\\Models\\User', 233, '2024-05-14 04:39:20', '2024-05-14 04:39:20'),
(315, NULL, '', 5, 'App\\Models\\User', 234, '2024-05-14 05:16:14', '2024-05-14 05:16:14'),
(316, NULL, NULL, 6, 'App\\Models\\User', 234, '2024-05-14 05:16:14', '2024-05-14 05:16:14'),
(317, NULL, '', 5, 'App\\Models\\User', 235, '2024-05-14 05:20:06', '2024-05-14 05:20:06'),
(318, NULL, NULL, 6, 'App\\Models\\User', 235, '2024-05-14 05:20:06', '2024-05-14 05:20:06'),
(319, NULL, '', 5, 'App\\Models\\User', 236, '2024-05-14 05:25:52', '2024-05-14 05:25:52'),
(320, NULL, NULL, 6, 'App\\Models\\User', 236, '2024-05-14 05:25:52', '2024-05-14 05:25:52'),
(321, NULL, '', 5, 'App\\Models\\User', 237, '2024-05-14 05:27:51', '2024-05-14 05:27:51'),
(322, NULL, NULL, 6, 'App\\Models\\User', 237, '2024-05-14 05:27:51', '2024-05-14 05:27:51'),
(323, NULL, '', 5, 'App\\Models\\User', 238, '2024-05-14 05:29:41', '2024-05-14 05:29:41'),
(324, NULL, NULL, 6, 'App\\Models\\User', 238, '2024-05-14 05:29:41', '2024-05-14 05:29:41'),
(325, NULL, '', 5, 'App\\Models\\User', 239, '2024-05-14 05:41:32', '2024-05-14 05:41:32'),
(326, NULL, NULL, 6, 'App\\Models\\User', 239, '2024-05-14 05:41:32', '2024-05-14 05:41:32'),
(327, NULL, '', 5, 'App\\Models\\User', 240, '2024-05-14 05:57:25', '2024-05-14 05:57:25'),
(328, NULL, NULL, 6, 'App\\Models\\User', 240, '2024-05-14 05:57:25', '2024-05-14 05:57:25'),
(329, NULL, '', 5, 'App\\Models\\User', 241, '2024-05-14 10:22:47', '2024-05-14 10:22:47'),
(330, NULL, NULL, 6, 'App\\Models\\User', 241, '2024-05-14 10:22:47', '2024-05-14 10:22:47'),
(331, NULL, '', 5, 'App\\Models\\User', 242, '2024-05-14 23:45:28', '2024-05-14 23:45:28'),
(332, 'test', 'test', 6, 'App\\Models\\User', 242, '2024-05-14 23:45:28', '2024-05-15 00:40:37'),
(333, NULL, '', 5, 'App\\Models\\User', 243, '2024-05-15 15:57:34', '2024-05-15 15:57:34'),
(334, 'test', 'test', 6, 'App\\Models\\User', 243, '2024-05-15 15:57:34', '2024-05-15 16:05:39'),
(335, NULL, '', 5, 'App\\Models\\User', 244, '2024-05-16 00:44:43', '2024-05-16 00:44:43'),
(336, NULL, NULL, 6, 'App\\Models\\User', 244, '2024-05-16 00:44:43', '2024-05-16 00:44:43'),
(337, NULL, '', 5, 'App\\Models\\User', 245, '2024-05-16 00:56:16', '2024-05-16 00:56:16'),
(338, NULL, NULL, 6, 'App\\Models\\User', 245, '2024-05-16 00:56:16', '2024-05-16 00:56:16'),
(339, NULL, '', 5, 'App\\Models\\User', 246, '2024-05-16 04:19:25', '2024-05-16 04:19:25'),
(340, NULL, NULL, 6, 'App\\Models\\User', 246, '2024-05-16 04:19:25', '2024-05-16 04:19:25'),
(341, NULL, '', 5, 'App\\Models\\User', 249, '2024-05-20 23:21:20', '2024-05-20 23:21:20'),
(342, 'test', 'test', 6, 'App\\Models\\User', 249, '2024-05-20 23:21:20', '2024-05-20 23:21:20'),
(343, NULL, '', 5, 'App\\Models\\User', 250, '2024-10-22 01:53:49', '2024-10-22 01:53:49'),
(344, NULL, NULL, 6, 'App\\Models\\User', 250, '2024-10-22 01:53:49', '2024-10-22 01:53:49'),
(345, NULL, '', 5, 'App\\Models\\User', 251, '2024-10-23 04:01:05', '2024-10-23 04:01:05'),
(346, NULL, NULL, 6, 'App\\Models\\User', 251, '2024-10-23 04:01:05', '2024-10-23 04:01:05'),
(347, NULL, '', 5, 'App\\Models\\User', 252, '2024-10-23 04:09:40', '2024-10-23 04:09:40'),
(348, 'Beirut, Lebanon', 'Beirut, Lebanon', 6, 'App\\Models\\User', 252, '2024-10-23 04:09:40', '2024-10-23 04:09:40'),
(349, NULL, '', 5, 'App\\Models\\User', 253, '2024-10-23 05:58:32', '2024-10-23 05:58:32'),
(350, 'lebanon beirut', 'lebanon beirut', 6, 'App\\Models\\User', 253, '2024-10-23 05:58:32', '2024-10-23 05:58:32'),
(351, '<p>TESTTTT</p>', 'TESTTTT', 5, 'App\\Models\\User', 260, '2024-11-14 06:48:21', '2024-11-14 06:48:21'),
(352, NULL, NULL, 6, 'App\\Models\\User', 260, '2024-11-14 06:48:21', '2024-11-14 06:48:21'),
(353, NULL, '', 5, 'App\\Models\\User', 261, '2024-11-19 03:26:06', '2024-11-19 03:26:06'),
(354, NULL, NULL, 6, 'App\\Models\\User', 261, '2024-11-19 03:26:06', '2024-11-19 03:26:06'),
(355, NULL, '', 5, 'App\\Models\\User', 262, '2024-11-19 03:57:01', '2024-11-19 03:57:01'),
(356, NULL, NULL, 6, 'App\\Models\\User', 262, '2024-11-19 03:57:01', '2024-11-19 03:57:01'),
(357, NULL, '', 5, 'App\\Models\\User', 263, '2024-11-19 03:59:37', '2024-11-19 03:59:37'),
(358, NULL, NULL, 6, 'App\\Models\\User', 263, '2024-11-19 03:59:37', '2024-11-19 03:59:37'),
(359, NULL, '', 5, 'App\\Models\\User', 264, '2024-11-19 04:04:57', '2024-11-19 04:04:57'),
(360, NULL, NULL, 6, 'App\\Models\\User', 264, '2024-11-19 04:04:57', '2024-11-19 04:04:57'),
(361, NULL, '', 5, 'App\\Models\\User', 265, '2024-11-19 04:08:32', '2024-11-19 04:08:32'),
(362, NULL, NULL, 6, 'App\\Models\\User', 265, '2024-11-19 04:08:32', '2024-11-19 04:08:32'),
(363, NULL, '', 5, 'App\\Models\\User', 266, '2024-11-19 04:31:29', '2024-11-19 04:31:29'),
(364, NULL, NULL, 6, 'App\\Models\\User', 266, '2024-11-19 04:31:29', '2024-11-19 04:31:29'),
(365, NULL, '', 5, 'App\\Models\\User', 268, '2024-11-19 15:29:58', '2024-11-19 15:29:58'),
(366, NULL, NULL, 6, 'App\\Models\\User', 268, '2024-11-19 15:29:58', '2024-11-19 15:29:58'),
(367, NULL, '', 5, 'App\\Models\\User', 269, '2024-11-19 15:56:37', '2024-11-19 15:56:37'),
(368, NULL, NULL, 6, 'App\\Models\\User', 269, '2024-11-19 15:56:37', '2024-11-19 15:56:37'),
(369, NULL, '', 5, 'App\\Models\\User', 270, '2024-11-20 03:26:24', '2024-11-20 03:26:24'),
(370, NULL, NULL, 6, 'App\\Models\\User', 270, '2024-11-20 03:26:24', '2024-11-20 03:26:24'),
(371, NULL, '', 5, 'App\\Models\\User', 271, '2024-11-20 04:04:50', '2024-11-20 04:04:50'),
(372, NULL, NULL, 6, 'App\\Models\\User', 271, '2024-11-20 04:04:50', '2024-11-20 04:04:50'),
(373, NULL, '', 5, 'App\\Models\\User', 272, '2024-11-20 05:37:11', '2024-11-20 05:37:11'),
(374, NULL, NULL, 6, 'App\\Models\\User', 272, '2024-11-20 05:37:11', '2024-11-20 05:37:11'),
(375, NULL, '', 5, 'App\\Models\\User', 273, '2024-11-20 05:37:45', '2024-11-20 05:37:45'),
(376, NULL, NULL, 6, 'App\\Models\\User', 273, '2024-11-20 05:37:45', '2024-11-20 05:37:45'),
(377, NULL, '', 5, 'App\\Models\\User', 274, '2025-02-10 05:33:15', '2025-02-10 05:33:15'),
(378, NULL, NULL, 6, 'App\\Models\\User', 274, '2025-02-10 05:33:15', '2025-02-10 05:33:15'),
(379, NULL, '', 5, 'App\\Models\\User', 275, '2025-02-10 06:12:39', '2025-02-10 06:12:39'),
(380, NULL, NULL, 6, 'App\\Models\\User', 275, '2025-02-10 06:12:39', '2025-02-10 06:12:39'),
(381, 'this is egypt4444', 'this is egypt4444', 5, 'App\\Models\\User', 276, '2025-02-12 03:27:17', '2025-02-17 07:00:23'),
(382, 'cairo, cairo444', 'cairo, cairo444', 6, 'App\\Models\\User', 276, '2025-02-12 03:27:18', '2025-02-17 07:00:23'),
(383, NULL, '', 5, 'App\\Models\\User', 277, '2025-02-12 10:50:10', '2025-02-12 10:50:10'),
(384, NULL, NULL, 6, 'App\\Models\\User', 277, '2025-02-12 10:50:10', '2025-02-12 10:50:10'),
(385, NULL, '', 5, 'App\\Models\\User', 278, '2025-02-17 05:58:12', '2025-02-17 06:00:45'),
(386, 'toufic address', 'toufic address', 6, 'App\\Models\\User', 278, '2025-02-17 05:58:12', '2025-02-17 06:03:35'),
(387, 'test', 'test', 5, 'App\\Models\\User', 279, '2025-02-24 03:11:37', '2025-02-24 03:11:37'),
(388, 'test', 'test', 6, 'App\\Models\\User', 279, '2025-02-24 03:11:37', '2025-02-24 03:11:37'),
(389, 'test', 'test', 5, 'App\\Models\\User', 280, '2025-02-24 03:26:12', '2025-02-24 03:28:26'),
(390, 'test address', 'test address', 6, 'App\\Models\\User', 280, '2025-02-24 03:26:12', '2025-02-24 03:28:26'),
(391, NULL, '', 5, 'App\\Models\\User', 281, '2025-02-24 04:21:56', '2025-02-24 04:21:56'),
(392, NULL, NULL, 6, 'App\\Models\\User', 281, '2025-02-24 04:21:56', '2025-02-24 04:21:56'),
(393, NULL, '', 5, 'App\\Models\\User', 292, '2025-02-25 02:20:46', '2025-02-25 02:20:46'),
(394, NULL, NULL, 6, 'App\\Models\\User', 292, '2025-02-25 02:20:46', '2025-02-25 02:20:46'),
(395, NULL, '', 5, 'App\\Models\\User', 293, '2025-02-25 02:29:07', '2025-02-25 02:29:07'),
(396, NULL, NULL, 6, 'App\\Models\\User', 293, '2025-02-25 02:29:07', '2025-02-25 02:29:07'),
(397, NULL, '', 5, 'App\\Models\\User', 294, '2025-02-26 06:10:30', '2025-02-26 06:10:30'),
(398, NULL, NULL, 6, 'App\\Models\\User', 294, '2025-02-26 06:10:30', '2025-02-26 06:10:30'),
(399, NULL, '', 5, 'App\\Models\\User', 296, '2025-02-26 10:29:50', '2025-02-26 10:29:50'),
(400, NULL, NULL, 6, 'App\\Models\\User', 296, '2025-02-26 10:29:50', '2025-02-26 10:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `web` tinyint(1) NOT NULL DEFAULT 0,
  `mobile` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `content`, `published`, `web`, `mobile`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Privacy and Policy\"}', '{\"en\":\"<h1 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:24pt;margin-bottom:0pt;padding:0pt 0pt 6pt 0pt;\\\"><span style=\\\"font-size: 16pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Privacy Policy<\\/font><\\/span><\\/h1><h1><b style=\\\"font-weight:normal;\\\" id=\\\"docs-internal-guid-cecf2b06-7fff-c969-8a2f-696442be3ac5\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:6pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 11pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Last updated: November 20, 2024<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. <\\/span><\\/p><\\/font><\\/b><\\/h1><h2 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:6pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Collecting and Using Your Personal Data<\\/font><\\/span><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:10pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Types of Data Collected<\\/font><\\/span><\\/h3><h4 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 2pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Personal Data<\\/font><\\/span><\\/h4><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;padding:10pt 0pt 0pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">While using Our Website\\/App, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include :<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Email address<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">First name and last name<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Phone number<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Address, State, Province, ZIP\\/Postal code, City<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Usage Data<\\/span><\\/p><\\/li><\\/ul><\\/font><\\/b><\\/h1><h4 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;padding:0pt 0pt 2pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Usage Data<\\/font><\\/span><\\/h4><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:10pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Usage Data is collected automatically when using our Website\\/App.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">When You access We Servio by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.<\\/span><\\/p><\\/font><\\/b><\\/h1><h4 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 2pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Information Collected while Using We Servio<\\/font><\\/span><\\/h4><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;padding:10pt 0pt 0pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">While using Our Application, in order to provide features of Our Website\\/App, We may collect, with Your prior permission:<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Information regarding your location<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Pictures and other information from your Device\'s camera and photo library<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We use this information to provide features of Our Website\\/App , to improve and customize your profile. The information may be uploaded to the Company\'s servers and\\/or a Service Provider\'s server or it may be simply stored on Your device.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">You can enable or disable access to this information at any time, through Your Device settings.<\\/span><\\/p><\\/font><\\/b><\\/h1><h4 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 2pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Tracking Technologies and Cookies<\\/font><\\/span><\\/h4><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;padding:10pt 0pt 0pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Cookies or Browser Cookies.<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Cookies can be \\\"Persistent\\\" or \\\"Session\\\" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. You can learn more about cookies on TermsFeed website article.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We use both Session and Persistent Cookies for the purposes set out below:<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Necessary \\/ Essential Cookies<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Type: Session Cookies<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Administered by: Us<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Cookies Policy \\/ Notice Acceptance Cookies<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Type: Persistent Cookies<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Administered by: Us<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Purpose: These Cookies identify if users have accepted the use of cookies on the Website.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Functionality Cookies<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Type: Persistent Cookies<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Administered by: Us<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><br><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.<\\/span><\\/p><\\/font><\\/b><\\/h1><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:2pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 17pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Use of Your Personal Data<\\/font><\\/span><\\/h3><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;padding:8pt 0pt 0pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">The Company may use Personal Data for the following purposes:<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">To provide and maintain our Service<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">, including to monitor the usage of our Service.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">To manage Your Account:<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">To contact You:<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">To provide You<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">To manage Your requests:<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> To attend and manage Your requests.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">For other purposes<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:12pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We may share Your personal information in the following situations:<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">With Service Providers:<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">With Affiliates:<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">With business partners:<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"> We may share Your information with Our business partners to offer You certain products, services or promotions.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">With Your consent<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: We may disclose Your personal information for any other purpose with Your consent.<\\/span><\\/p><\\/li><\\/ul><\\/font><\\/b><\\/h1><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:14pt;margin-bottom:0pt;padding:0pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 17pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Retention of Your Personal Data<\\/font><\\/span><\\/h3><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.<\\/span><\\/p><\\/font><\\/b><\\/h1><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:2pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 17pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Transfer of Your Personal Data<\\/font><\\/span><\\/h3><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.<\\/span><\\/p><\\/font><\\/b><\\/h1><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:2pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 17pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Delete Your Personal Data<\\/font><\\/span><\\/h3><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Our Service may give You the ability to delete certain information about You from within the Service.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.<\\/span><\\/p><\\/font><\\/b><\\/h1><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:2pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 17pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Disclosure of Your Personal Data<\\/font><\\/span><\\/h3><h4 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 2pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Business Transactions<\\/font><\\/span><\\/h4><h1><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:10pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.<\\/font><\\/span><\\/p><\\/b><\\/h1><h4 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 2pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Law enforcement<\\/font><\\/span><\\/h4><h1><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:10pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).<\\/font><\\/span><\\/p><\\/b><\\/h1><h4 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 2pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Other legal requirements<\\/font><\\/span><\\/h4><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;padding:10pt 0pt 0pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:12pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Comply with a legal obligation<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Protect and defend the rights or property of the Company<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Prevent or investigate possible wrongdoing in connection with the Service<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Protect the personal safety of Users of the Service or the public<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Protect against legal liability<\\/span><\\/p><\\/li><\\/ul><\\/font><\\/b><\\/h1><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:14pt;margin-bottom:0pt;padding:0pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 17pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Security of Your Personal Data<\\/font><\\/span><\\/h3><h1><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.<\\/font><\\/span><\\/p><\\/b><\\/h1><h2 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:6pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Children\'s Privacy<\\/font><\\/span><\\/h2><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.<\\/span><\\/p><\\/font><\\/b><\\/h1><h2 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:6pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Changes to this Privacy Policy<\\/font><\\/span><\\/h2><h1><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:8pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">We will let You know via email and\\/or a prominent notice on Our Service, prior to the change becoming effective and update the \\\"Last updated\\\" date at the top of this Privacy Policy.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.<\\/span><\\/p><\\/font><\\/b><\\/h1><h2 dir=\\\"ltr\\\" style=\\\"line-height:1.2;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:6pt 0pt 4pt 0pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins, sans-serif; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Contact Us<\\/font><\\/span><\\/h2><h1><p dir=\\\"ltr\\\" style=\\\"line-height: 1.2; margin-top: 0pt; margin-bottom: 12pt; padding: 8pt 0pt 0pt;\\\"><span style=\\\"font-size: 13pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\\\"><font color=\\\"#08143a\\\">If you have any questions about this Privacy Policy, You can contact us:<\\/font><\\/span><\\/p><ul style=\\\"margin-bottom: 0px; padding-inline-start: 48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height: 1.2; margin-top: 12pt; margin-bottom: 12pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\\\"><font color=\\\"#08143a\\\">By email: info@weservio.com or support@weservio.com<\\/font><\\/span><\\/p><\\/li><\\/ul><\\/h1>\"}', 1, 1, 1, '2021-02-24 09:53:21', '2024-11-20 04:23:30');
INSERT INTO `custom_pages` (`id`, `title`, `content`, `published`, `web`, `mobile`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"Terms & Conditions\"}', '{\"en\":\"<h2 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 17pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Terms and Conditions for We Servio<\\/font><\\/span><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Introduction<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\" id=\\\"docs-internal-guid-3bb0e986-7fff-51d1-12a3-b929e5fe00b1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Welcome to We Servio. These Terms and Conditions (\\\"Terms\\\") govern your use of our services provided through our applications and websites designed for both service providers and customers. By accessing or using our services, you agree to comply with and be bound by these Terms.<\\/font><\\/span><\\/p><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">1. Scope of Services<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">We Servio offers a platform that connects service providers with customers. Customers can search for, book, and pay for services such as cleaning and maintenance through our applications and websites.<\\/font><\\/span><\\/p><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">2. User Accounts<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><font color=\\\"#08143a\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Registration<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Users must create an account to use our services. Service providers and customers must provide accurate and complete information during registration.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:13pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Account Security<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Users are responsible for maintaining the confidentiality of their account credentials. We Servio is not liable for any unauthorized access to your account.<\\/span><\\/p><\\/li><\\/font><\\/ul><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">3. Booking and Payments<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><font color=\\\"#08143a\\\"><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Booking<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Customers can book services through our platform. Once a booking is confirmed, the customer will receive a confirmation message.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Payments<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Payments for services are made directly between the customer and the service provider in cash. We Servio does not handle any payment transactions.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:13pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Cancellations<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Customers can cancel bookings according to our cancellation policy outlined on our platform.&nbsp;<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">4. Service Providers<\\/span><\\/p><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Listings<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Service providers must provide accurate details of the services they offer. Any false or misleading information may result in the suspension or termination of the provider’s account.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:13pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Service Quality<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Service providers are expected to deliver services as described in their listings and maintain high standards of quality and professionalism.<\\/span><\\/p><\\/li><\\/ul><\\/font><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">5. User Conduct<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><font color=\\\"#08143a\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Prohibited Activities<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Users must not engage in any activity that violates these Terms, including but not limited to fraud, harassment, or any illegal activities.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:13pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Compliance with Laws<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Users must comply with all applicable laws and regulations while using our services.<\\/span><\\/p><\\/li><\\/font><\\/ul><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">6. Confidentiality<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Both parties agree to keep all confidential information shared during the use of our services private and not disclose it to any third party without prior consent.<\\/font><\\/span><\\/p><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">7. Liability<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><font color=\\\"#08143a\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Limitation of Liability<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: We Servio is not liable for any direct, indirect, incidental, or consequential damages arising out of or related to the use of our services.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:13pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">Indemnification<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Users agree to indemnify and hold We Servio harmless from any claims, damages, or expenses arising from their use of the services.<\\/span><\\/p><\\/li><\\/font><\\/ul><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">8. Termination<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><ul style=\\\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\\\"><font color=\\\"#08143a\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:0pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">By User<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: Users can terminate their account at any time by following the account termination process on our platform.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: disc; font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:13pt;\\\" role=\\\"presentation\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">By We Servio<\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\">: We Servio reserves the right to terminate or suspend any user account at its sole discretion, without prior notice, for conduct that it believes violates these Terms or is harmful to other users or the business interests of We Servio.<\\/span><\\/p><\\/li><\\/font><\\/ul><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">9. Dispute Resolution<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">Any disputes arising out of or related to these Terms or the use of our services shall be resolved through binding arbitration in accordance with the rules of the applicable arbitration body.<\\/font><\\/span><\\/p><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">10. Governing Law<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">These Terms are governed by and construed in accordance with the laws of the jurisdiction in which We Servio operates.<\\/font><\\/span><\\/p><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">11. Changes to Terms<\\/font><\\/span><\\/h3><h2><b style=\\\"font-weight:normal;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">We Servio reserves the right to modify these Terms at any time. Users will be notified of any significant changes, and continued use of the services constitutes acceptance of the revised Terms.<\\/font><\\/span><\\/p><\\/b><\\/h2><h3 dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\\\"><span style=\\\"font-size: 14pt; font-family: Poppins; background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\\\"><font color=\\\"#08143a\\\">12. Contact Information<\\/font><\\/span><\\/h3><h2><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:13pt;margin-bottom:13pt;\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\\\"><font color=\\\"#08143a\\\">For any questions or concerns regarding these Terms, please contact us at<\\/font><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\\\"> <\\/span><a href=\\\"mailto:info@weservio.com\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; color: rgb(17, 85, 204); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\\\">info@weservio.com<\\/span><\\/a><span style=\\\"font-size: 13pt; font-family: Poppins; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\\\"> <\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\\\"><font color=\\\"#08143a\\\">or<\\/font><\\/span><span style=\\\"font-size: 13pt; font-family: Poppins; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\\\"> <\\/span><a href=\\\"mailto:support@weservio.com\\\"><span style=\\\"font-size: 13pt; font-family: Poppins; color: rgb(17, 85, 204); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\\\">support@weservio.com<\\/span><\\/a><span style=\\\"font-size: 13pt; font-family: Poppins; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\\\">&nbsp;.<\\/span><\\/p><\\/h2>\"}', 1, 1, 1, '2021-02-24 11:20:06', '2024-11-19 07:46:53'),
(3, '{\"en\":\"EProvider Registration\"}', '{\"en\":\"<h2>Please press <a href=\\\"https:\\/\\/weservio.app\\/admin\\/public\\/eprovider\\/register\\\" target=\\\"_blank\\\" style=\\\"\\\"><font color=\\\"#0000ff\\\">here<\\/font><\\/a> to register as an EProvider.<\\/h2>\"}', 0, 0, 0, '2023-07-17 04:19:36', '2023-07-25 02:42:44'),
(4, '{\"en\":\"Provider After Registration\"}', '{\"en\":\"<p>Thank you for registering on We servio platform<\\/p>\"}', 0, 0, 0, '2025-02-25 02:23:21', '2025-02-25 02:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discountables`
--

INSERT INTO `discountables` (`id`, `coupon_id`, `discountable_type`, `discountable_id`) VALUES
(2, 1, 'App\\Models\\EService', 82);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `total_bookings` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `admin_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `e_provider_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `taxes` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `e_provider_id`, `total_bookings`, `total_earning`, `admin_earning`, `e_provider_earning`, `taxes`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-23 03:39:02', '2022-03-23 03:39:02'),
(2, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-23 17:52:12', '2022-03-23 17:52:12'),
(3, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-23 17:54:20', '2022-03-23 17:54:20'),
(4, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-03-23 17:55:23', '2022-03-23 17:55:23'),
(5, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-18 22:10:42', '2022-04-18 22:10:42'),
(6, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-18 22:13:37', '2022-04-18 22:13:37'),
(7, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-20 20:40:48', '2022-04-20 20:40:48'),
(8, 24, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-21 05:32:33', '2022-04-21 05:32:33'),
(9, 25, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-21 05:45:58', '2022-04-21 05:45:58'),
(10, 26, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-21 05:52:56', '2022-04-21 05:52:56'),
(11, 27, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-21 05:58:54', '2022-04-21 05:58:54'),
(12, 28, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-21 06:02:41', '2022-04-21 06:02:41'),
(13, 29, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-22 00:18:20', '2022-04-22 00:18:20'),
(14, 30, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-22 00:21:10', '2022-04-22 00:21:10'),
(15, 31, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-22 00:29:13', '2022-04-22 00:29:13'),
(16, 32, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-22 00:34:56', '2022-04-22 00:34:56'),
(17, 33, 0, 0.00, 0.00, 0.00, 0.00, '2022-04-22 00:40:04', '2022-04-22 00:40:04'),
(18, 34, 1, 0.15, 0.08, 0.08, 0.02, '2022-07-28 00:04:12', '2022-07-29 04:08:26'),
(19, 35, 0, 0.00, 0.00, 0.00, 0.00, '2022-07-29 04:24:46', '2022-07-29 04:24:46'),
(20, 36, 0, 0.00, 0.00, 0.00, 0.00, '2022-07-30 02:02:34', '2022-07-30 02:02:34'),
(21, 37, 0, 0.00, 0.00, 0.00, 0.00, '2023-04-10 00:58:10', '2023-04-10 00:58:10'),
(22, 38, 0, 0.00, 0.00, 0.00, 0.00, '2023-04-10 02:40:06', '2023-04-10 02:40:06'),
(23, 39, 0, 0.00, 0.00, 0.00, 0.00, '2023-04-25 03:52:10', '2023-04-25 03:52:10'),
(24, 43, 0, 0.00, 0.00, 0.00, 0.00, '2023-04-25 06:12:34', '2023-04-25 06:12:34'),
(25, 50, 0, 0.00, 0.00, 0.00, 0.00, '2023-04-25 08:58:28', '2023-04-25 08:58:28'),
(26, 51, 0, 0.00, 0.00, 0.00, 0.00, '2023-04-26 01:12:02', '2023-04-26 01:12:02'),
(27, 52, 0, 0.00, 0.00, 0.00, 0.00, '2023-04-26 01:37:05', '2023-04-26 01:37:05'),
(28, 49, 0, 0.00, 0.00, 0.00, 0.00, '2023-05-03 03:42:15', '2023-05-03 03:42:15'),
(29, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-05-05 00:22:59', '2023-05-05 00:22:59'),
(30, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-05-08 02:17:54', '2023-05-08 02:17:54'),
(31, 70, 0, 0.00, 0.00, 0.00, 0.00, '2023-05-08 02:35:26', '2023-05-08 02:35:26'),
(32, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-05-21 06:10:24', '2023-05-21 06:10:24'),
(33, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-05-25 03:01:28', '2023-05-25 03:01:28'),
(34, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-05-25 03:32:27', '2023-05-25 03:32:27'),
(35, 143, 0, 0.00, 0.00, 0.00, 0.00, '2023-06-26 03:47:54', '2023-06-26 03:47:54'),
(36, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-06-26 03:56:36', '2023-06-26 03:56:36'),
(37, 144, 0, 0.00, 0.00, 0.00, 0.00, '2023-06-26 04:12:11', '2023-06-26 04:12:11'),
(38, 145, 0, 0.00, 0.00, 0.00, 0.00, '2023-06-26 04:27:51', '2023-06-26 04:27:51'),
(39, 146, 0, 0.00, 0.00, 0.00, 0.00, '2023-06-26 04:28:37', '2023-06-26 04:28:37'),
(40, 147, 0, 0.00, 0.00, 0.00, 0.00, '2023-06-26 04:41:12', '2023-06-26 04:41:12'),
(41, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-06-26 07:02:22', '2023-06-26 07:02:22'),
(42, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2023-07-04 02:02:42', '2023-07-04 02:02:42'),
(43, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2024-03-25 01:31:26', '2024-03-25 01:31:26'),
(44, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2024-03-29 05:28:58', '2024-03-29 05:28:58'),
(45, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2024-03-29 05:30:26', '2024-03-29 05:30:26'),
(46, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2024-03-31 23:47:22', '2024-03-31 23:47:22'),
(47, 215, 0, 0.00, 0.00, 0.00, 0.00, '2024-04-01 03:56:43', '2024-04-01 03:56:43'),
(48, 230, 0, 0.00, 0.00, 0.00, 0.00, '2024-05-08 05:49:11', '2024-05-08 05:49:11'),
(49, 231, 0, 0.00, 0.00, 0.00, 0.00, '2024-05-08 14:40:13', '2024-05-08 14:40:13'),
(50, 236, 0, 0.00, 0.00, 0.00, 0.00, '2024-05-09 01:21:44', '2024-05-09 01:21:44'),
(51, 238, 0, 0.00, 0.00, 0.00, 0.00, '2024-05-10 02:49:35', '2024-05-10 02:49:35'),
(52, 241, 0, 0.00, 0.00, 0.00, 0.00, '2024-05-16 04:47:26', '2024-05-16 04:47:26'),
(53, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2024-10-23 04:00:11', '2024-10-23 04:00:11'),
(54, 245, 0, 0.00, 0.00, 0.00, 0.00, '2024-10-23 06:52:49', '2024-10-23 06:52:49'),
(55, 243, 0, 0.00, 0.00, 0.00, 0.00, '2024-11-04 07:38:10', '2024-11-04 07:38:10'),
(56, 235, 0, 0.00, 0.00, 0.00, 0.00, '2024-11-04 07:39:19', '2024-11-04 07:39:19'),
(57, 248, 0, 0.00, 0.00, 0.00, 0.00, '2024-11-13 07:48:06', '2024-11-13 07:48:06'),
(58, 249, 0, 0.00, 0.00, 0.00, 0.00, '2024-11-13 07:48:07', '2024-11-13 07:48:07'),
(59, 254, 0, 0.00, 0.00, 0.00, 0.00, '2024-11-14 06:18:18', '2024-11-14 06:18:18'),
(60, 251, 0, 0.00, 0.00, 0.00, 0.00, '2024-11-14 06:32:52', '2024-11-14 06:32:52'),
(61, 256, 0, 0.00, 0.00, 0.00, 0.00, '2025-02-21 08:34:32', '2025-02-21 08:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(51, '{\"en\":\"Plumbing\"}', '{\"en\":\"<p>Plumbing<br><\\/p>\"}', 28, '2022-04-22 00:53:33', '2022-04-22 00:53:33'),
(52, '{\"en\":\"Satellite\"}', '{\"en\":\"<p>Satellite<br><\\/p>\"}', 31, '2022-04-22 00:56:34', '2022-04-22 00:56:34'),
(53, '{\"en\":\"Electrical\"}', '{\"en\":\"<p>Electrical<br><\\/p>\"}', 24, '2022-04-22 00:57:19', '2022-04-22 00:57:19'),
(55, '{\"en\":\"10 years experience\"}', '{\"en\":\"<p>10 years experience&nbsp;<\\/p>\"}', 245, '2024-10-23 07:06:03', '2024-10-23 07:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `e_providers`
--

CREATE TABLE `e_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `spoken_languages` longtext NOT NULL,
  `e_provider_type_id` int(10) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `availability_range` double(9,2) DEFAULT 0.00,
  `available` tinyint(1) DEFAULT 1,
  `featured` tinyint(1) DEFAULT 0,
  `accepted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_providers`
--

INSERT INTO `e_providers` (`id`, `name`, `email`, `gender`, `video`, `spoken_languages`, `e_provider_type_id`, `description`, `phone_number`, `mobile_number`, `availability_range`, `available`, `featured`, `accepted`, `created_at`, `updated_at`) VALUES
(24, '{\"en\":\"Saleh Lighting & Electrical Supplies\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Electrical<br><\\/p>\"}', '961 1 459 300', NULL, 10.00, 1, 1, 1, '2022-04-21 05:32:33', '2022-06-30 13:47:18'),
(25, '{\"en\":\"Invelops S.A.R.L\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Aluminum<br><\\/p>\"}', NULL, '961 71 344471', 10.00, 0, 0, 1, '2022-04-21 05:45:57', '2023-07-18 01:31:41'),
(26, '{\"en\":\"Beirut Curtains & Textiles\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Curtains<br><\\/p>\"}', '961 1 309 606', NULL, 10.00, 1, 0, 1, '2022-04-21 05:52:56', '2022-04-22 00:11:55'),
(27, '{\"en\":\"GENEC General Engineering Company\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Heating and cooling<br><\\/p>\"}', '961 1 751 510', NULL, 10.00, 1, 0, 1, '2022-04-21 05:58:54', '2023-04-17 05:24:47'),
(28, '{\"en\":\"Wrench Inst.\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Plumbing<br><\\/p>\"}', '961 1 661 566', NULL, 10.00, 0, 0, 1, '2022-04-21 06:02:41', '2022-07-04 04:25:18'),
(29, '{\"en\":\"JIHAN\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Beauty<br><\\/p>\"}', NULL, '961 3 282 222', 10.00, 0, 0, 1, '2022-04-22 00:18:20', '2022-04-22 00:18:20'),
(30, '{\"en\":\"Naggiar Service Center\"}', 'amira95ibrahim@gmail.com', '0', NULL, '', 2, '{\"en\":\"<p>Metal<br><\\/p>\"}', '961 1 449 224', NULL, 10.00, 1, 0, 1, '2022-04-22 00:21:10', '2022-04-22 00:30:13'),
(31, '{\"en\":\"Shehab Satellite\"}', '', '0', NULL, '', 3, '{\"en\":\"<p>Satellite<br><\\/p>\"}', '961 1 666 768', NULL, 10.00, 0, 0, 1, '2022-04-22 00:29:13', '2023-03-28 01:56:23'),
(32, '{\"en\":\"Entreprises Kourany\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Cleaning<br><\\/p>\"}', NULL, '961 3 418 848', 10.00, 0, 0, 1, '2022-04-22 00:34:56', '2022-04-22 00:34:56'),
(33, '{\"en\":\"Pest Plus\"}', '', '0', NULL, '', 2, '{\"en\":\"<p>Pest-control<br><\\/p>\"}', NULL, '961 71 343 456', 10.00, 1, 0, 1, '2022-04-22 00:40:03', '2022-07-03 19:06:56'),
(34, '{\"en\":\"Meroty\"}', '', '1', NULL, '', 3, '{\"en\":\"1\"}', '01015414979', '01015414979', 14.00, 0, 1, 1, '2022-07-28 00:04:12', '2022-07-28 00:23:38'),
(35, '{\"en\":\"provider\"}', '', '0', NULL, '', 2, '{\"en\":\"0\"}', '01015414979', '01015414979', 45.00, 1, 1, 1, '2022-07-29 04:24:46', '2022-07-29 22:53:54'),
(36, '{\"en\":\"test requests\"}', '', '0', NULL, '', 2, '{\"en\":\"0\"}', '01015414979', '01015414979', 78.00, 1, 1, 0, '2022-07-30 02:02:33', '2022-07-30 02:02:33'),
(37, '{\"en\":\"Test Provider\"}', 'fatmaelarbawy2021@gmail.com', '0', NULL, '', 2, '{\"en\":null}', '01098887654', '01098887654', 100.00, 0, 0, 1, '2023-04-10 00:58:09', '2023-04-13 02:36:10'),
(38, '{\"en\":\"test\"}', '', '0', NULL, '', 2, '{\"en\":\"0\"}', '01098687654', '01098687654', 45.00, 0, 0, 1, '2023-04-10 02:40:06', '2023-04-19 06:18:43'),
(39, '{\"en\":\"TEST\"}', '', '0', NULL, '', 2, '{\"en\":\"1\"}', '01239998765', '01239998765', 7.00, 0, 0, 0, '2023-04-25 03:52:10', '2023-04-25 06:22:43'),
(42, '{\"en\":\"first registration\"}', '', '0', NULL, '', 2, NULL, '01089996543', NULL, 0.00, 1, 0, 0, '2023-04-25 06:00:54', '2023-04-25 06:00:54'),
(43, '{\"en\":\"provider from web\"}', '', '1', NULL, '', 3, '{\"en\":\"4\"}', '01088706543', NULL, 0.00, 0, 0, 0, '2023-04-25 06:07:58', '2023-05-03 02:38:00'),
(49, '{\"en\":\"Test Account provider\"}', '', '0', NULL, '', 2, '{\"en\":null}', '01089906543', NULL, 0.00, 0, 0, 1, '2023-04-25 08:50:51', '2023-05-03 03:42:15'),
(50, '{\"en\":\"lang Test\"}', '', '0', NULL, '[\"3\"]', 2, '{\"en\":\"4\"}', '01085006543', NULL, 0.00, 0, 0, 0, '2023-04-25 08:55:55', '2023-04-25 08:58:28'),
(51, '{\"en\":\"provider from admin\"}', '', '0', NULL, '', 2, '{\"en\":\"4\"}', '01080776543', NULL, 2.00, 0, 0, 0, '2023-04-26 01:12:02', '2023-04-26 01:12:02'),
(52, '{\"en\":\"provider2 from web\"}', '', '0', NULL, '[\"0\",\"5\"]', 2, '{\"en\":null}', '01080956543', NULL, 0.00, 0, 0, 0, '2023-04-26 01:15:48', '2023-04-26 01:37:04'),
(53, '{\"en\":\"the first registration\"}', '', '0', NULL, '[\"3\",\"4\"]', 2, NULL, '01090256543', NULL, 0.00, 1, 0, 0, '2023-04-26 01:27:48', '2023-04-26 01:27:48'),
(55, '{\"en\":\"Test test\"}', '', '0', NULL, '[\"4\"]', 2, NULL, '01087766543', NULL, 0.00, 1, 0, 0, '2023-04-27 01:34:31', '2023-04-27 01:34:31'),
(56, '{\"en\":\"Test provider Account\"}', '', '0', NULL, '[\"2\",\"4\"]', 2, NULL, '01080106543', '01080106543', 0.00, 1, 0, 0, '2023-04-27 02:24:11', '2023-04-27 02:24:11'),
(57, '{\"en\":\"provider registratin\"}', '', '0', NULL, '[\"4\"]', 2, NULL, '01087976543', '01087976543', 0.00, 1, 0, 1, '2023-05-01 00:32:12', '2023-05-01 00:32:12'),
(58, '{\"en\":\"first redirect\"}', '', '0', NULL, '[\"4\"]', 2, NULL, '01088976543', '01088976543', 0.00, 1, 0, 0, '2023-05-03 06:53:49', '2023-05-03 06:53:49'),
(59, '{\"en\":\"Test redirect\"}', '', '0', NULL, '[\"4\"]', 3, NULL, '010887906543', '010887906543', 0.00, 1, 0, 0, '2023-05-03 07:02:54', '2023-05-03 07:02:54'),
(60, '{\"en\":\"Test redirect32\"}', '', '0', NULL, '[\"4\"]', 3, NULL, '010887106543', '010887106543', 0.00, 1, 0, 0, '2023-05-03 07:11:16', '2023-05-03 07:11:16'),
(70, '{\"en\":\"fatma ali\"}', '', '0', NULL, 'null', 3, '{\"en\":null}', '01085056543', '01085056543', 0.00, 0, 0, 1, '2023-05-08 02:30:20', '2023-05-08 02:35:26'),
(72, '{\"en\":\"testProviderApp\"}', '', '', NULL, 'null', 2, NULL, '01098887653', '01098887653', 0.00, 1, 0, 0, '2023-05-17 03:45:01', '2023-05-17 03:45:01'),
(74, '{\"en\":\"testProviderApp12\"}', '', '', NULL, 'null', 2, NULL, '01098887650', '01098887650', 0.00, 1, 0, 0, '2023-05-17 03:47:34', '2023-05-17 03:47:34'),
(84, '{\"en\":\"test\"}', '', '', NULL, '', 2, '{\"en\":\"description\"}', '+20123456789', '+20123456789', 10.00, 1, 0, 0, '2023-05-23 01:13:51', '2023-05-23 01:13:51'),
(87, '{\"en\":\"last test\"}', '', '', NULL, '', 3, '{\"en\":\"description\"}', '+20123456789', '+20123456789', 15.00, 1, 0, 0, '2023-05-23 02:35:06', '2023-05-23 02:35:06'),
(98, '{\"en\":\"testProviderApp\"}', '', '', NULL, 'null', 2, NULL, '01098887650', '01098887650', 0.00, 1, 0, 0, '2023-05-26 02:59:33', '2023-05-26 02:59:33'),
(99, '{\"en\":\"testProviderApp\"}', '', '', NULL, 'null', 2, NULL, '01098807650', '01098807650', 0.00, 1, 0, 0, '2023-05-26 04:09:25', '2023-05-26 04:09:25'),
(100, '{\"en\":\"testProviderApp\"}', '', '', NULL, 'null', 2, NULL, '01098807050', '01098807050', 0.00, 1, 0, 1, '2023-05-26 04:10:05', '2023-05-26 04:10:05'),
(101, '{\"en\":\"TESTApp\"}', '', '', NULL, '[\"3\",\"0\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 04:20:56', '2023-05-26 04:20:56'),
(102, '{\"en\":\"TESTApp123\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 04:24:26', '2023-05-26 04:24:26'),
(103, '{\"en\":\"TESTApp12345\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 04:26:52', '2023-05-26 04:26:52'),
(104, '{\"en\":\"TESTApp123454\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 04:29:27', '2023-05-26 04:29:27'),
(105, '{\"en\":\"TESTApp123454\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 05:51:23', '2023-05-26 05:51:23'),
(106, '{\"en\":\"TESTApp123454\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 05:52:12', '2023-05-26 05:52:12'),
(107, '{\"en\":\"TESTAPP\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 05:58:50', '2023-05-26 05:58:50'),
(108, '{\"en\":\"TESTAPP 34\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 06:06:42', '2023-05-26 06:06:42'),
(109, '{\"en\":\"TESTAPP New\"}', '', '', NULL, '[\"3\",\"2\"]', 2, NULL, NULL, NULL, 343.00, 1, 0, 0, '2023-05-26 06:08:45', '2023-05-26 06:08:45'),
(110, '{\"en\":\"test1\"}', '', '', NULL, 'null', 2, '{\"en\":\"desc1\"}', '+49', '+49', 10.00, 0, 0, 0, '2023-05-28 01:52:05', '2023-05-28 01:54:19'),
(112, '{\"en\":\"tset provideer 1\"}', '', '', NULL, '[\"0\",\"1\"]', 2, '{\"en\":\"description\"}', '+49', '+49', 10.00, 0, 0, 0, '2023-05-28 03:05:27', '2023-05-29 04:56:17'),
(113, '{\"en\":\"Test email\"}', '', '0', NULL, '[\"4\"]', 3, NULL, '01080026543', '01080026543', 0.00, 1, 0, 0, '2023-05-29 05:42:00', '2023-05-29 05:42:00'),
(115, '{\"en\":\"ethan west\"}', '', '', NULL, '', 3, NULL, '+49', '+49', 0.00, 1, 0, 0, '2023-06-08 10:30:03', '2023-06-08 10:30:03'),
(135, '{\"en\":\"xyz\"}', '', '', NULL, '', 2, NULL, '+9613333333', '+9613333333', 0.00, 1, 0, 0, '2023-06-12 04:28:35', '2023-06-12 04:28:35'),
(136, '{\"en\":\"tete\"}', '', '', NULL, '', 2, NULL, '+4923232323', '+4923232323', 0.00, 1, 0, 0, '2023-06-12 04:40:02', '2023-06-12 04:40:02'),
(137, '{\"en\":\"tete\"}', '', '', NULL, '', 2, NULL, '+4923232323', '+4923232323', 0.00, 1, 0, 0, '2023-06-12 04:41:01', '2023-06-12 04:41:01'),
(138, '{\"en\":\"Samir\"}', '', '', NULL, '', 3, NULL, '+966', '+966', 0.00, 1, 0, 0, '2023-06-15 02:38:40', '2023-06-15 02:38:40'),
(143, '{\"en\":\"TESTprovider\"}', '', '0', NULL, '[\"0\",\"1\"]', 2, '{\"en\":\"<p>desc<\\/p>\"}', NULL, NULL, 6.00, 0, 0, 0, '2023-06-26 03:47:54', '2023-06-26 03:52:59'),
(144, '{\"en\":\"TESTPRO\"}', '', '0', NULL, '[\"0\"]', 2, '{\"en\":null}', NULL, NULL, 5.00, 0, 0, 0, '2023-06-26 04:12:11', '2023-06-26 04:13:07'),
(145, '{\"en\":\"Test Account\"}', '', '0', NULL, '[\"0\",\"1\"]', 2, '{\"en\":null}', NULL, NULL, 5.00, 0, 0, 0, '2023-06-26 04:27:51', '2023-06-26 04:27:51'),
(146, '{\"en\":\"Test Account pro\"}', '', '0', NULL, '[\"4\"]', 2, '{\"en\":null}', NULL, NULL, 4.00, 0, 0, 0, '2023-06-26 04:28:37', '2023-06-26 04:29:09'),
(147, '{\"en\":\"TESTPROvider2\"}', '', '0', NULL, '3', 2, '{\"en\":null}', NULL, NULL, 3.00, 0, 0, 0, '2023-06-26 04:41:12', '2023-07-03 04:05:28'),
(148, '{\"en\":\"APP PROVIDER\"}', '', '', NULL, '[\"null\"]', 2, NULL, NULL, NULL, 5.00, 1, 0, 0, '2023-06-26 04:57:15', '2023-06-26 04:57:15'),
(164, '{\"en\":\"toufic sp\"}', '', '', NULL, '[\"0\",\"1\",\"4\"]', 2, '{\"en\":\"description\"}', '+9611234567', '+9611234567', 5.00, 1, 0, 0, '2023-07-10 01:44:32', '2023-07-10 01:44:32'),
(175, '{\"en\":\"test\"}', '', '', NULL, '[\"0\",\"1\",\"4\"]', 2, '{\"en\":\"description\"}', '+9611234567', '+9611234567', 5.00, 0, 0, 0, '2023-07-12 02:23:49', '2023-07-12 03:04:22'),
(176, '{\"en\":\"info\"}', '', '', NULL, '', 2, NULL, '+201278664809', '+201278664809', 0.00, 1, 0, 0, '2023-07-12 03:21:35', '2023-07-12 03:21:35'),
(177, '{\"en\":\"info1234\"}', '', '', NULL, '[\"0\",\"1\",\"4\"]', 2, '{\"en\":\"description\"}', '+201278664809', '+201278664809', 5.00, 0, 0, 0, '2023-07-12 03:47:27', '2023-07-12 03:59:54'),
(179, '{\"en\":\"name\"}', '', '', NULL, '[\"0\",\"1\"]', 2, '{\"en\":\"description\"}', '+9611234567', '+9611234567', 5.00, 0, 0, 0, '2023-07-12 04:20:19', '2023-07-13 00:33:32'),
(180, '{\"en\":\"last one\"}', '', '', NULL, '[\"0\",\"1\",\"4\"]', 2, '{\"en\":\"description\"}', '+9611234567', '+9611234567', 5.00, 0, 0, 0, '2023-07-13 00:50:20', '2023-07-13 00:55:25'),
(182, '{\"en\":\"TEST provider Now\"}', '', '0', NULL, '[\"4\"]', 2, NULL, '01983337654', '01983337654', 0.00, 1, 0, 0, '2023-07-17 04:38:33', '2023-07-17 04:38:33'),
(184, '{\"en\":\"Adekunle Ridwan\"}', '', '', NULL, '', 2, NULL, '+2347015198030', '+2347015198030', 0.00, 1, 0, 0, '2024-02-06 03:44:02', '2024-02-06 03:44:02'),
(215, '{\"en\":\"ahmed ali\"}', '', '0', NULL, '', 3, '{\"en\":null}', '01000992387', '01000992387', 0.00, 1, 0, 1, '2024-04-01 03:50:34', '2024-04-01 03:56:43'),
(217, '{\"en\":\"Mariam Albarghouti\"}', '', '', NULL, '', 3, NULL, '+2001033764055', '+2001033764055', 0.00, 1, 0, 0, '2024-04-01 04:21:52', '2024-04-01 04:21:52'),
(218, '{\"en\":\"Mariam Albarghouti\"}', '', '', NULL, '', 2, NULL, '+2001033764055', '+2001033764055', 0.00, 1, 0, 0, '2024-04-01 05:02:53', '2024-04-01 05:02:53'),
(219, '{\"en\":\"Mariam Albarghouti\"}', '', '', NULL, '', 2, NULL, '+2001033764055', '+2001033764055', 0.00, 1, 0, 0, '2024-04-01 05:41:58', '2024-04-01 05:41:58'),
(220, '{\"en\":\"Mariam Albarghouti\"}', '', '', NULL, '', 2, NULL, '+2001033764055', '+2001033764055', 0.00, 1, 0, 0, '2024-04-01 05:51:33', '2024-04-01 05:51:33'),
(221, '{\"en\":\"Mariam Albarghouti\"}', '', '', NULL, '', 2, NULL, '+201551300715', '+201551300715', 0.00, 1, 0, 0, '2024-04-01 06:30:01', '2024-04-01 06:30:01'),
(222, '{\"en\":\"Mariam Albarghouti\"}', '', '', NULL, '', 3, NULL, '+2001033764055', '+2001033764055', 0.00, 1, 0, 0, '2024-04-01 06:31:26', '2024-04-01 06:31:26'),
(224, '{\"en\":\"ali\"}', '', '', NULL, '', 3, NULL, '01022992387', '01022992387', 0.00, 1, 0, 1, '2024-04-03 04:35:25', '2024-04-03 04:35:25'),
(225, '{\"en\":\"ali\"}', '', '', NULL, '', 3, NULL, '01069994385', '01069994385', 0.00, 1, 0, 0, '2024-04-03 04:47:14', '2024-04-03 04:47:14'),
(230, '{\"en\":\"Omar fayez\"}', '', '0', NULL, '', 2, '{\"en\":null}', '+96181627366', '+96181627366', 0.00, 0, 0, 0, '2024-05-08 05:10:44', '2024-05-08 05:49:11'),
(231, '{\"en\":\"test\"}', '', '0', NULL, '[]', 2, '{\"en\":null}', NULL, NULL, 13.00, 0, 0, 0, '2024-05-08 14:40:12', '2024-05-08 14:40:12'),
(232, '{\"en\":\"testtt\"}', '', '', NULL, '[\"1\"]', 2, '{\"en\":\"testt\"}', '+96103733173', '+96103733173', 11.00, 1, 0, 0, '2024-05-08 23:21:45', '2024-05-08 23:21:45'),
(233, '{\"en\":\"tetsttt\"}', '', '', NULL, '[\"2\",\"1\",\"0\"]', 2, '{\"en\":\"ueeu\"}', '+961', '+961', 33.00, 1, 0, 0, '2024-05-08 23:25:03', '2024-05-08 23:25:03'),
(234, '{\"en\":\"test\"}', '', '', NULL, 'null', 2, '{\"en\":\"test\"}', '+961', '+961', 5.00, 1, 0, 0, '2024-05-08 23:53:17', '2024-05-08 23:53:17'),
(235, '{\"en\":\"test\"}', '', '0', NULL, '1', 2, '{\"en\":\"test\"}', '+961123456', '+961123456', 5.00, 0, 0, 0, '2024-05-08 23:53:28', '2024-11-04 07:40:31'),
(236, '{\"en\":\"test\"}', '', '0', NULL, 'null', 2, '{\"en\":\"test\"}', '+961', '+961', 5.00, 0, 0, 0, '2024-05-08 23:53:42', '2024-05-09 01:21:44'),
(238, '{\"en\":\"ali\"}', 'fatmamohamed@gmail.com', '0', NULL, '', 3, '{\"en\":null}', '01069994385', '01069994385', 0.00, 0, 0, 0, '2024-05-10 01:19:44', '2024-05-10 02:50:12'),
(239, '{\"en\":\"omarfayez\"}', 'omarf@optimalsolutions.it', '', NULL, '', 3, NULL, '+96181627366', '+96181627366', 0.00, 1, 0, NULL, '2024-05-14 00:51:32', '2024-05-14 00:51:32'),
(240, '{\"en\":\"Omar Fayez\"}', 'omarf@optimalsolutions.it', '0', NULL, '[\"0\",\"1\"]', 3, NULL, '81627366', '81627366', 0.00, 1, 0, 0, '2024-05-16 00:44:43', '2024-05-16 00:44:43'),
(241, '{\"en\":\"OMar Fayez\"}', 'omarf@optimalsolutions.it', '0', NULL, '1', 3, '{\"en\":null}', '81627366', '81627366', 0.00, 1, 0, 1, '2024-05-16 00:56:16', '2024-05-16 04:47:26'),
(242, '{\"en\":\"test\"}', 'solutions@gmail.com', '', NULL, '', 2, NULL, '+2001551300715', '+2001551300715', 0.00, 1, 0, NULL, '2024-05-20 11:45:47', '2024-05-20 11:45:47'),
(243, '{\"en\":\"testt\"}', 'demo5@gmail.com', '0', NULL, '', 2, '{\"en\":null}', '+2001015239341', '+2001015239341', 0.00, 0, 0, 0, '2024-05-20 16:05:23', '2024-11-04 07:38:10'),
(245, '{\"en\":\"Alaa provider\"}', '', '1', NULL, '1', 3, '{\"en\":\"Test\"}', '+96181661906', '+96181661906', 10.00, 1, 1, 1, '2024-10-23 06:10:57', '2024-11-13 08:13:05'),
(246, '{\"en\":\"test\"}', '', '', NULL, '[\"0\"]', 2, '{\"en\":\"description\"}', '+9611234567', '+9611234567', 10.00, 1, 0, 0, '2024-11-05 09:15:58', '2024-11-05 09:15:58'),
(247, '{\"en\":\"122\"}', '', '', NULL, '[\"1\"]', 2, '{\"en\":\"qqq\"}', '+961111111', '+961111111', 11.00, 1, 0, 0, '2024-11-05 09:22:25', '2024-11-05 09:22:25'),
(248, '{\"en\":\"ahmed\"}', '', '0', NULL, '[]', 3, '{\"en\":null}', '01038882938', '01038882938', 6.00, 1, 0, 1, '2024-11-13 07:48:06', '2024-11-13 07:48:06'),
(249, '{\"en\":\"ahmed\"}', '', '0', NULL, '[]', 3, '{\"en\":null}', '01038882938', '01038882938', 6.00, 1, 0, 1, '2024-11-13 07:48:07', '2024-11-13 07:48:07'),
(250, '{\"en\":\"pro from app\"}', 'fatma816@gmail.com', '', NULL, '', 2, NULL, '01023339876', '01023339876', 0.00, 1, 0, 0, '2024-11-13 09:06:24', '2024-11-13 09:06:24'),
(251, '{\"en\":\"ali ahmed\"}', 'ali816@gmail.com', '0', NULL, '', 2, '{\"en\":null}', '01023339888', '01023339888', 0.00, 0, 0, 0, '2024-11-13 09:17:24', '2024-11-14 06:32:52'),
(252, '{\"en\":\"test\"}', '', '', NULL, '[0,1]', 3, '{\"en\":\"description\"}', '+9611234567', '+9611234567', 20.00, 1, 0, 0, '2024-11-14 02:36:29', '2024-11-14 02:36:29'),
(253, '{\"en\":\"teee\"}', 'aliTr816@gmail.com', '', NULL, '', 2, NULL, '01023339333', '01023339333', 0.00, 1, 0, 0, '2024-11-14 03:14:27', '2024-11-14 03:14:27'),
(254, '{\"en\":\"test pro\"}', '', '0', NULL, '[]', 2, '{\"en\":null}', NULL, NULL, 12.00, 1, 0, 1, '2024-11-14 06:18:18', '2024-11-14 06:18:18'),
(255, '{\"en\":\"test group\"}', '', '', NULL, '[\"4\",\"0\",\"1\"]', 3, '{\"en\":\"test\"}', '+96100000000000000', '+96100000000000000', 50.00, 1, 0, 0, '2024-11-14 07:19:36', '2024-11-14 07:19:36'),
(256, '{\"en\":\"testing 12\"}', '', '0', NULL, 'null', 3, '{\"en\":\"test test test\"}', '+96180088088', '+96180088088', 50.00, 1, 1, 1, '2025-02-21 08:33:02', '2025-02-21 08:34:32'),
(265, '{\"en\":\"asmaa abozied\"}', 'asmaaabozied907@gmail.com', '', NULL, '', NULL, NULL, '0109087766413', '0109087766413', 0.00, 1, 0, 0, '2025-02-24 04:51:08', '2025-02-24 04:51:08'),
(266, '{\"en\":\"register as eprovider\"}', 'toufic_y@hotmail.com', '0', NULL, '[\"0\"]', 3, NULL, '9613755614', '9613755614', 0.00, 1, 0, 0, '2025-02-25 02:29:07', '2025-02-25 02:29:07'),
(267, '{\"en\":\"asmaa abozied\"}', 'asmaaabozied907@gmail.com7', '', NULL, '', NULL, NULL, '01090877878413', '01090877878413', 0.00, 1, 0, 0, '2025-02-26 10:15:30', '2025-02-26 10:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_addresses`
--

CREATE TABLE `e_provider_addresses` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_addresses`
--

INSERT INTO `e_provider_addresses` (`e_provider_id`, `address_id`) VALUES
(143, 40),
(235, 3),
(245, 73),
(246, 8),
(247, 16),
(248, 22),
(249, 22),
(252, 73),
(255, 73),
(256, 80);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_payouts`
--

CREATE TABLE `e_provider_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_taxes`
--

CREATE TABLE `e_provider_taxes` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_taxes`
--

INSERT INTO `e_provider_taxes` (`e_provider_id`, `tax_id`) VALUES
(34, 2),
(35, 2),
(36, 3),
(143, 1),
(235, 2),
(245, 3),
(245, 4);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_types`
--

CREATE TABLE `e_provider_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `commission` double(5,2) NOT NULL DEFAULT 0.00,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_types`
--

INSERT INTO `e_provider_types` (`id`, `name`, `commission`, `disabled`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"Company\"}', 5.00, 0, '2021-01-13 16:05:35', '2023-03-28 01:54:00'),
(3, '{\"en\":\"Freelancer\"}', 1.00, 0, '2021-01-17 17:27:18', '2023-03-28 01:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_users`
--

CREATE TABLE `e_provider_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_users`
--

INSERT INTO `e_provider_users` (`user_id`, `e_provider_id`) VALUES
(2, 25),
(2, 246),
(2, 247),
(3, 31),
(3, 144),
(4, 146),
(5, 31),
(6, 27),
(6, 147),
(15, 34),
(15, 35),
(15, 36),
(15, 145),
(16, 143),
(16, 148),
(17, 37),
(19, 235),
(41, 43),
(47, 49),
(48, 50),
(49, 52),
(53, 53),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(70, 70),
(91, 72),
(110, 98),
(111, 99),
(113, 113),
(139, 138),
(169, 182),
(172, 184),
(187, 215),
(205, 224),
(206, 225),
(247, 242),
(249, 243),
(252, 245),
(252, 252),
(252, 254),
(252, 255),
(252, 256),
(257, 250),
(258, 251),
(259, 253),
(291, 265),
(293, 266),
(295, 267);

-- --------------------------------------------------------

--
-- Table structure for table `e_services`
--

CREATE TABLE `e_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_price` double(10,2) DEFAULT 0.00,
  `price_unit` enum('hourly','fixed') NOT NULL,
  `quantity_unit` longtext DEFAULT NULL,
  `duration` varchar(16) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `enable_booking` tinyint(1) DEFAULT 1,
  `available` tinyint(1) DEFAULT 1,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_services`
--

INSERT INTO `e_services` (`id`, `name`, `price`, `discount_price`, `price_unit`, `quantity_unit`, `duration`, `description`, `featured`, `enable_booking`, `available`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(43, '{\"en\":\"Doors\",\"ar\":\"Doors\"}', 100.00, 20.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><font color=\\\"#000000\\\" face=\\\"Google Sans, Roboto, Arial, sans-serif\\\"><span style=\\\"font-size: 14px; letter-spacing: 0.249999px; white-space: nowrap;\\\">Silver Aluminum Door Frame, Rs 200 \\/square feet Kuber Aluminum & Glass Works<\\/span><\\/font><br><\\/p>\",\"ar\":\"<p><font color=\\\"#000000\\\" face=\\\"Google Sans, Roboto, Arial, sans-serif\\\"><span style=\\\"font-size: 14px; letter-spacing: 0.249999px; white-space: nowrap;\\\">Silver Aluminum Door Frame, Rs 200 \\/square feet Kuber Aluminum & Glass Works<\\/span><\\/font><\\/p><p><font color=\\\"#000000\\\" face=\\\"Google Sans, Roboto, Arial, sans-serif\\\"><span style=\\\"font-size: 14px; letter-spacing: 0.249999px; white-space: nowrap;\\\">تست للغه العربيه<br><\\/span><\\/font><br><\\/p>\"}', 0, 1, 1, 215, '2022-04-25 02:45:37', '2024-04-01 03:03:30'),
(45, '{\"en\":\"GPS & Navigation\",\"ar\":\"GPS & Navigation\"}', 50.00, 11.00, 'fixed', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 1rem;\\\">Sygic GPS Navigation review: Should you pay for navigation apps? | NextPit<\\/span><br><\\/p>\",\"ar\":\"<p><span style=\\\"font-size: 1rem;\\\">Sygic GPS Navigation review: Should you pay for navigation apps? | NextPit&nbsp;&nbsp;<\\/span><br><\\/p>\"}', 0, 1, 1, 31, '2022-04-25 02:57:44', '2023-03-29 02:59:30'),
(46, '{\"en\":\"Exhaust fan installations\"}', 75.00, 15.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 1rem;\\\">Exhaust Fan Installation Service, डक्ट इंस्टॉलेशन सर्विस in Sukhrali, Gurgaon , S. K. Electrical<\\/span><br><\\/p>\"}', 1, 0, 1, 24, '2022-04-25 03:06:59', '2022-04-25 03:07:16'),
(47, '{\"en\":\"Pests and Rodents control\"}', 40.00, 5.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 1rem;\\\">Pest control service banner template detecting Vector Image<\\/span><br><\\/p>\"}', 1, 1, 1, 33, '2022-04-25 03:12:43', '2022-06-03 07:49:49'),
(48, '{\"en\":\"Stainless Steel Plate\"}', 150.00, 20.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 1rem;\\\">3mm stainless steel plate sheet cutting up to 1000x1000mm<\\/span><br><\\/p>\"}', 1, 0, 1, 30, '2022-04-25 03:18:05', '2022-04-25 03:18:05'),
(49, '{\"en\":\"Massage\"}', 20.00, 5.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 14px; letter-spacing: 0.249999px; font-family: \\\"Google Sans\\\", Roboto, Arial, sans-serif; background-color: rgb(255, 255, 255);\\\"><font color=\\\"#000000\\\">Vector Illustration Concept of Massage Body Relax Symbol Icon On White Background Stock Vector - Illustration of icon, cosmetology: 140584490<\\/font><\\/span><br><\\/p>\"}', 1, 1, 1, 29, '2022-04-25 03:23:10', '2022-05-06 09:37:35'),
(50, '{\"en\":\"AC level\"}', 130.00, 0.00, 'fixed', '{\"en\":\"1\"}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 1rem;\\\">Jacobs Heating & Air Conditioning: HVAC Portland • Vancouver<\\/span><br><\\/p>\"}', 0, 1, 1, 27, '2022-04-25 03:26:12', '2023-06-25 03:51:03'),
(51, '{\"en\":\"House Cleaning\"}', 20.00, 0.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 1rem;\\\">House cleaning service infographic charts Vector Image<\\/span><br><\\/p>\"}', 1, 1, 1, 32, '2022-04-25 03:30:43', '2024-11-06 06:50:18'),
(52, '{\"en\":\"Fixing Curtains\"}', 50.00, 10.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p><span style=\\\"font-size: 1rem;\\\">Curtain Sewing and Alteration Linear Icon Stock Vector - Illustration of custom, seam<\\/span><br><\\/p>\"}', 0, 0, 1, 26, '2022-04-25 03:40:37', '2022-05-07 08:51:16'),
(63, '{\"en\":\"test service\"}', 15.00, 15.00, 'hourly', '{\"en\":\"4\"}', '09:08', '{\"en\":\"<p>desc<\\/p>\"}', 1, 1, 1, 34, '2022-07-28 00:08:47', '2022-07-28 00:08:47'),
(65, '{\"en\":\"Test service1\"}', 12.00, NULL, 'fixed', '{\"en\":null}', '13:49', '{\"en\":\"<p>test<br><\\/p>\"}', 1, 1, 1, 245, '2023-04-10 01:11:17', '2024-11-07 05:53:11'),
(66, '{\"en\":\"Test service2\"}', 10.00, 2.00, 'hourly', '{\"en\":\"test\"}', '03:00', '{\"en\":\"<p>test<br><\\/p>\"}', 1, 1, 1, 37, '2023-04-10 01:32:23', '2023-04-10 01:58:37'),
(67, '{\"en\":\"test\"}', 13.00, NULL, 'hourly', '{\"en\":null}', '10:51', '{\"en\":\"<p>test<br><\\/p>\"}', 0, 1, 1, 37, '2023-04-10 01:53:07', '2023-04-10 01:58:59'),
(68, '{\"en\":\"Test\"}', 5.00, NULL, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"<p>test<br><\\/p>\"}', 0, 1, 1, 38, '2023-04-10 02:46:28', '2023-04-10 02:46:29'),
(76, '{\"en\":\"TEST service\"}', 3000.00, NULL, 'hourly', '{\"en\":null}', '11:23', '{\"en\":\"<p>test<\\/p>\"}', 0, 0, 1, 35, '2023-05-24 01:23:41', '2023-05-24 01:23:41'),
(86, '{\"en\":\"testing\"}', 255.00, 5.00, 'hourly', '{\"en\":\"34\"}', '11:56', '{\"en\":\"test\"}', 0, 1, 1, 215, '2024-04-01 02:56:44', '2024-04-03 04:09:36'),
(88, '{\"en\":\"test\"}', 34.00, 2.00, 'hourly', '{\"en\":\"12\"}', '12:06', '{\"en\":\"testing\"}', 0, 1, 1, 37, '2024-04-01 03:08:13', '2024-11-06 06:52:18'),
(89, '{\"en\":\"CLEANING\"}', 300.00, NULL, 'hourly', '{\"en\":null}', '12:53', '{\"en\":\"<p>Test Desc<\\/p>\"}', 1, 1, 1, 215, '2024-04-01 03:58:57', '2024-11-06 06:38:17'),
(90, '{\"en\":\"DOORS\"}', 200.00, NULL, 'hourly', '{\"en\":null}', '13:01', '{\"en\":\"<p>TEST<\\/p>\"}', 0, 1, 1, 215, '2024-04-01 04:01:11', '2024-04-01 04:01:11'),
(97, '{\"en\":\"test\"}', 30.00, 21.00, 'hourly', '{\"en\":\"212\"}', '14:12', '{\"en\":\"test\"}', 1, 1, 1, 230, '2024-05-08 05:13:03', '2024-05-08 05:13:04'),
(98, '{\"en\":\"testing\"}', 21.00, 3.00, 'hourly', '{\"en\":null}', '14:16', '{\"en\":\"test\"}', 1, 1, 1, 230, '2024-05-08 05:16:46', '2024-05-08 05:16:46'),
(99, '{\"en\":\"testt\"}', 55.00, 0.00, 'hourly', '{\"en\":null}', '15:18', '{\"en\":\"testt\"}', 0, 1, 1, 230, '2024-05-08 05:19:04', '2024-05-08 05:19:04'),
(100, '{\"en\":\"ueuru\"}', 50.00, 0.00, 'hourly', '{\"en\":null}', '15:49', '{\"en\":\"hjj56\"}', 1, 1, 1, 230, '2024-05-08 05:49:54', '2024-05-08 05:49:55'),
(101, '{\"en\":\"yhh\"}', 80.00, 0.00, 'hourly', '{\"en\":\"2\"}', '15:50', '{\"en\":\"hhh8\"}', 1, 1, 1, 230, '2024-05-08 05:51:02', '2024-05-08 05:51:03'),
(102, '{\"en\":\"uuewu\"}', 55.00, 0.00, 'hourly', '{\"en\":\"33\"}', '15:56', '{\"en\":\"ddddd\"}', 0, 0, 1, 230, '2024-05-08 05:57:01', '2024-05-08 23:17:47'),
(103, '{\"en\":\"uuewu\"}', 55.00, 0.00, 'hourly', '{\"en\":\"33\"}', '15:56', '{\"en\":\"ddddd\"}', 1, 1, 1, 230, '2024-05-08 05:57:02', '2024-05-08 05:57:02'),
(104, '{\"en\":\"test\"}', 32.00, 1.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"test\"}', 0, 1, 1, 230, '2024-05-08 06:47:50', '2024-05-08 06:47:51'),
(105, '{\"en\":\"test\"}', 43.00, 0.00, 'hourly', '{\"en\":\"21\"}', '12:50', '{\"en\":\"test\"}', 0, 1, 1, 236, '2024-05-09 02:51:08', '2024-05-09 02:51:08'),
(106, '{\"en\":\"tester\"}', 3223.00, 1.00, 'hourly', '{\"en\":null}', '12:57', '{\"en\":\"test\"}', 1, 1, 1, 230, '2024-05-09 02:57:30', '2024-05-09 02:57:30'),
(107, '{\"en\":\"test\"}', 32.00, 1.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"test\"}', 0, 1, 1, 230, '2024-05-09 02:58:25', '2024-05-09 02:58:25'),
(108, '{\"en\":\"test\"}', 43.00, 3.00, 'hourly', '{\"en\":null}', '13:05', '{\"en\":\"test\"}', 1, 1, 1, 230, '2024-05-09 03:05:15', '2024-05-09 03:05:15'),
(109, '{\"en\":\"Test 2\"}', 54.00, NULL, 'hourly', '{\"en\":\"2\"}', '14:17', '{\"en\":\"<p>querier<\\/p>\"}', 0, 1, 1, 241, '2024-05-16 04:17:41', '2024-05-16 04:33:22'),
(110, '{\"en\":\"Test 1\"}', 33.00, NULL, 'hourly', '{\"en\":null}', '14:29', '{\"en\":\"<p>2r2<\\/p>\"}', 0, 1, 1, 241, '2024-05-16 04:30:05', '2024-05-16 04:50:30'),
(111, '{\"en\":\"ee\"}', 33.00, 30.00, 'fixed', '{\"en\":null}', NULL, '{\"en\":\"<p>d2d2d2d<\\/p>\"}', 0, 0, 0, 241, '2024-05-20 02:06:39', '2024-05-20 02:06:39'),
(113, '{\"en\":\"Cleaningg\"}', 40.00, 20.00, 'fixed', '{\"en\":\"14\"}', '04:00', '{\"en\":\"<p>cleaning cleaningg<\\/p>\"}', 1, 1, 1, 245, '2024-10-29 03:15:15', '2024-11-04 07:43:42'),
(114, '{\"en\":\"new 0ne\"}', 10.00, 1.00, 'hourly', '{\"en\":\"4\"}', '14:26', '{\"en\":\"description\"}', 1, 1, 1, 255, '2024-11-14 07:27:01', '2024-11-14 07:27:01'),
(115, '{\"en\":\"test\"}', 22.00, 2.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"test\"}', 1, 1, 1, 255, '2024-11-14 07:28:36', '2024-11-14 07:28:36'),
(116, '{\"en\":\"tttt\"}', 22.00, 0.00, 'hourly', '{\"en\":null}', NULL, '{\"en\":\"ttrt\"}', 1, 1, 1, 255, '2024-11-14 07:38:14', '2024-11-14 07:38:14'),
(118, '{\"en\":\"Car Wash\"}', 20.00, 2.00, 'hourly', '{\"en\":null}', '14:00', '{\"en\":\"description\"}', 1, 1, 1, 252, '2025-02-25 03:10:23', '2025-02-25 03:10:23'),
(119, '{\"en\":\"Car Wash\"}', 20.00, 2.00, 'hourly', '{\"en\":null}', '14:00', '{\"en\":\"description\"}', 1, 1, 1, 252, '2025-02-25 03:10:25', '2025-02-25 03:10:25'),
(120, '{\"en\":\"Car Wash\"}', 20.00, 2.00, 'hourly', '{\"en\":null}', '14:00', '{\"en\":\"description\"}', 1, 1, 1, 252, '2025-02-25 03:10:38', '2025-02-25 03:10:39'),
(121, '{\"en\":\"Car Washing 2\"}', 40.00, 0.00, 'hourly', '{\"en\":\"peice\"}', NULL, '{\"en\":\"test\"}', 1, 1, 1, 252, '2025-02-25 04:45:12', '2025-02-25 04:45:12'),
(122, '{\"en\":\"Car Washing 2\"}', 40.00, 0.00, 'hourly', '{\"en\":\"peice\"}', NULL, '{\"en\":\"test\"}', 1, 1, 1, 252, '2025-02-25 04:46:40', '2025-02-25 04:46:40'),
(123, '{\"en\":\"cleaning\"}', 10.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"description\"}', 1, 1, 1, 255, '2025-02-26 04:56:04', '2025-02-26 04:56:04'),
(124, '{\"en\":\"cleaning\"}', 10.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"description\"}', 1, 1, 1, 255, '2025-02-26 05:06:15', '2025-02-26 05:06:15'),
(125, '{\"en\":\"cleaning\"}', 10.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"description\"}', 1, 1, 1, 255, '2025-02-26 05:35:34', '2025-02-26 05:35:34'),
(126, '{\"en\":\"cleaning\"}', 122.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescriptiondescriptiondescription\"}', 0, 0, 1, 255, '2025-02-26 06:15:43', '2025-02-26 06:15:43'),
(127, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 06:50:12', '2025-02-26 06:50:12'),
(128, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 06:51:12', '2025-02-26 06:51:12'),
(129, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:02:41', '2025-02-26 07:02:41'),
(130, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:06:00', '2025-02-26 07:06:00'),
(131, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:07:17', '2025-02-26 07:07:17'),
(132, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:07:29', '2025-02-26 07:07:29'),
(133, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:07:41', '2025-02-26 07:07:41'),
(134, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:08:25', '2025-02-26 07:08:25'),
(135, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:08:42', '2025-02-26 07:08:42'),
(136, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:09:57', '2025-02-26 07:09:57'),
(137, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:10:49', '2025-02-26 07:10:50'),
(138, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:11:17', '2025-02-26 07:11:17'),
(139, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:12:02', '2025-02-26 07:12:02'),
(140, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:12:51', '2025-02-26 07:12:51'),
(141, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:16:38', '2025-02-26 07:16:39'),
(142, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:20:23', '2025-02-26 07:20:24'),
(143, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:21:09', '2025-02-26 07:21:09'),
(144, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:21:47', '2025-02-26 07:21:47'),
(145, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:22:41', '2025-02-26 07:22:41'),
(146, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:23:13', '2025-02-26 07:23:13'),
(147, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:23:34', '2025-02-26 07:23:34'),
(148, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:24:35', '2025-02-26 07:24:35'),
(149, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:26:01', '2025-02-26 07:26:01'),
(150, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:29:03', '2025-02-26 07:29:03'),
(151, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:31:28', '2025-02-26 07:31:28'),
(152, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:32:14', '2025-02-26 07:32:14'),
(153, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:32:39', '2025-02-26 07:32:39'),
(154, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:33:09', '2025-02-26 07:33:09'),
(155, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:33:40', '2025-02-26 07:33:40'),
(156, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 07:34:29', '2025-02-26 07:34:29'),
(157, '{\"en\":\"clean11\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription11\"}', 1, 1, 1, 255, '2025-02-26 08:14:31', '2025-02-26 10:42:43'),
(158, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 10:16:34', '2025-02-26 10:16:34'),
(159, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 10:19:23', '2025-02-26 10:19:23'),
(160, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 10:41:17', '2025-02-26 10:41:17'),
(161, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 10:41:54', '2025-02-26 10:41:54'),
(162, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:07:11', '2025-02-26 11:07:11'),
(163, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:07:38', '2025-02-26 11:07:38'),
(164, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:12:00', '2025-02-26 11:12:00'),
(165, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:13:34', '2025-02-26 11:13:34'),
(166, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:14:04', '2025-02-26 11:14:04'),
(167, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:24:05', '2025-02-26 11:24:05'),
(168, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:26:15', '2025-02-26 11:26:15'),
(169, '{\"en\":\"clean11\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription11\"}', 1, 1, 1, 255, '2025-02-26 11:27:11', '2025-02-26 11:28:56'),
(170, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:41:51', '2025-02-26 11:41:51'),
(171, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-26 11:42:24', '2025-02-26 11:42:24'),
(172, '{\"en\":\"Office Cleaning\"}', 50.00, 0.00, 'fixed', '{\"en\":\"days\"}', '09:39', '{\"en\":\"cleaning office 2 days per week\"}', 1, 1, 1, 254, '2025-02-27 02:39:19', '2025-02-27 02:39:19'),
(173, '{\"en\":\"test clean\"}', 22.00, 1.00, 'hourly', '{\"en\":\"hour\"}', '09:49', '{\"en\":\"description\"}', 1, 1, 1, 252, '2025-02-27 02:49:48', '2025-02-27 02:49:48'),
(174, '{\"en\":\"test clean\"}', 22.00, 1.00, 'hourly', '{\"en\":\"hour\"}', '09:49', '{\"en\":\"description\"}', 1, 1, 1, 252, '2025-02-27 02:50:34', '2025-02-27 02:50:34'),
(175, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-27 03:26:16', '2025-02-27 03:26:16'),
(176, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-27 03:26:36', '2025-02-27 03:26:36'),
(177, '{\"en\":\"test555\"}', 100.00, 4.00, 'fixed', '{\"en\":\"hour\"}', '10:45', '{\"en\":\"description 12345\"}', 1, 1, 1, 254, '2025-02-27 03:45:51', '2025-02-27 04:09:23'),
(178, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-27 04:04:33', '2025-02-27 04:04:33'),
(179, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-27 04:04:45', '2025-02-27 04:04:45'),
(180, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescriptiondescription\"}', 1, 1, 1, 255, '2025-02-27 04:06:36', '2025-02-27 04:06:36'),
(181, '{\"en\":\"clean\"}', 12.00, 0.00, 'fixed', '{\"en\":\"hour\"}', '11:55', '{\"en\":\"descriptiondescription\"}', 1, 1, 1, 255, '2025-02-27 04:08:27', '2025-02-27 05:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `e_service_categories`
--

CREATE TABLE `e_service_categories` (
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_categories`
--

INSERT INTO `e_service_categories` (`e_service_id`, `category_id`) VALUES
(43, 79),
(45, 91),
(46, 83),
(47, 88),
(48, 93),
(49, 92),
(50, 78),
(51, 81),
(52, 82),
(63, 81),
(65, 81),
(66, 80),
(67, 92),
(68, 80),
(76, 79),
(86, 79),
(86, 83),
(86, 84),
(88, 81),
(89, 81),
(90, 79),
(97, 81),
(98, 81),
(99, 81),
(99, 90),
(100, 82),
(101, 78),
(102, 83),
(103, 83),
(104, 81),
(109, 79),
(110, 80),
(111, 79),
(113, 81),
(114, 80),
(115, 78),
(116, 85),
(118, 81),
(119, 81),
(120, 81),
(121, 81),
(122, 81),
(123, 81),
(124, 81),
(125, 81),
(126, 81),
(127, 81),
(128, 81),
(129, 81),
(130, 81),
(131, 81),
(132, 81),
(133, 81),
(134, 81),
(135, 81),
(136, 81),
(137, 81),
(138, 81),
(139, 81),
(140, 81),
(141, 81),
(142, 81),
(143, 81),
(144, 81),
(145, 81),
(157, 81),
(163, 81),
(164, 81),
(165, 81),
(166, 81),
(167, 81),
(168, 81),
(169, 81),
(170, 81),
(171, 81),
(172, 81),
(173, 81),
(174, 81),
(175, 81),
(176, 81),
(177, 80),
(178, 81),
(179, 81),
(180, 81),
(181, 81);

-- --------------------------------------------------------

--
-- Table structure for table `e_service_reviews`
--

CREATE TABLE `e_service_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `rate` decimal(3,2) NOT NULL DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_reviews`
--

INSERT INTO `e_service_reviews` (`id`, `review`, `rate`, `user_id`, `e_service_id`, `created_at`, `updated_at`) VALUES
(101, 'This is a great service I really encarge anyone to deal with this service', '1.00', 12, 45, '2022-07-03 03:01:56', '2022-07-03 03:01:56'),
(102, 'good job man', '2.00', 12, 63, '2022-07-29 03:57:51', '2022-07-29 03:59:40'),
(103, 'very good', '4.00', 1, 63, '2022-08-03 07:14:03', '2022-08-03 07:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(31, '{\"en\":\"<p><p data-start=\\\"187\\\" data-end=\\\"335\\\"><\\/p><\\/p><h3 data-start=\\\"134\\\" data-end=\\\"186\\\"><strong data-start=\\\"138\\\" data-end=\\\"184\\\">1. How do I create an account on WeServio?<\\/strong><\\/h3>\"}', '{\"en\":\"<p><h3 data-start=\\\"337\\\" data-end=\\\"374\\\"><\\/h3><\\/p><p data-start=\\\"187\\\" data-end=\\\"335\\\">To create an account, click on <strong data-start=\\\"218\\\" data-end=\\\"231\\\">\\\"Sign Up\\\"<\\/strong>, enter your details, and verify your email. Once completed, you can start booking services instantly.<\\/p>\"}', 7, '2025-02-25 04:05:48', '2025-02-25 04:05:48'),
(32, '{\"en\":\"<p><p data-start=\\\"375\\\" data-end=\\\"527\\\"><\\/p><\\/p><h3 data-start=\\\"337\\\" data-end=\\\"374\\\"><strong data-start=\\\"341\\\" data-end=\\\"372\\\">2. How do I book a service?<\\/strong><\\/h3>\"}', '{\"en\":\"<p><h3 data-start=\\\"529\\\" data-end=\\\"580\\\"><\\/h3><\\/p><p data-start=\\\"375\\\" data-end=\\\"527\\\">Simply browse through the available services, select the one you need, choose your preferred provider, pick a date and time, and confirm your booking.<\\/p>\"}', 7, '2025-02-25 04:06:06', '2025-02-25 04:06:06'),
(33, '{\"en\":\"<p><p data-start=\\\"581\\\" data-end=\\\"742\\\"><\\/p><\\/p><h3 data-start=\\\"529\\\" data-end=\\\"580\\\"><strong data-start=\\\"533\\\" data-end=\\\"578\\\">3. Can I reschedule or cancel my booking?<\\/strong><\\/h3>\"}', '{\"en\":\"<p><h3 data-start=\\\"744\\\" data-end=\\\"783\\\"><\\/h3><\\/p><p data-start=\\\"581\\\" data-end=\\\"742\\\">Yes, you can reschedule or cancel your booking from the <strong data-start=\\\"637\\\" data-end=\\\"654\\\">\\\"My Bookings\\\"<\\/strong> section. Make sure to check the provider’s cancellation policy before making changes.<\\/p>\"}', 7, '2025-02-25 04:06:23', '2025-02-25 04:06:23'),
(34, '{\"en\":\"<p><p data-start=\\\"784\\\" data-end=\\\"916\\\"><\\/p><\\/p><h3 data-start=\\\"744\\\" data-end=\\\"783\\\"><strong data-start=\\\"748\\\" data-end=\\\"781\\\">4. How do I pay for services?<\\/strong><\\/h3>\"}', '{\"en\":\"<p><h3 data-start=\\\"918\\\" data-end=\\\"974\\\"><\\/h3><\\/p><p data-start=\\\"784\\\" data-end=\\\"916\\\">All payments are made <strong data-start=\\\"806\\\" data-end=\\\"850\\\">in cash directly to the service provider<\\/strong> once the service is completed. No online payments are required.<\\/p>\"}', 7, '2025-02-25 04:06:35', '2025-02-25 04:06:35'),
(35, '{\"en\":\"<p><p data-start=\\\"975\\\" data-end=\\\"1123\\\"><\\/p><\\/p><h3 data-start=\\\"918\\\" data-end=\\\"974\\\"><strong data-start=\\\"922\\\" data-end=\\\"972\\\">5. What happens if a provider doesn’t show up?<\\/strong><\\/h3>\"}', '{\"en\":\"<p><h3 data-start=\\\"1125\\\" data-end=\\\"1177\\\"><\\/h3><\\/p><p data-start=\\\"975\\\" data-end=\\\"1123\\\">If your provider doesn’t arrive at the scheduled time, you can report the issue through the <strong data-start=\\\"1067\\\" data-end=\\\"1082\\\">Help Center<\\/strong>, and our support team will assist you.<\\/p>\"}', 7, '2025-02-25 04:06:47', '2025-02-25 04:06:47'),
(36, '{\"en\":\"<p><p data-start=\\\"1178\\\" data-end=\\\"1288\\\"><\\/p><\\/p><h3 data-start=\\\"1125\\\" data-end=\\\"1177\\\"><strong data-start=\\\"1129\\\" data-end=\\\"1175\\\">6. How do I leave a review for a provider?<\\/strong><\\/h3>\"}', '{\"en\":\"<p><h3 data-start=\\\"1290\\\" data-end=\\\"1349\\\"><\\/h3><\\/p><p data-start=\\\"1178\\\" data-end=\\\"1288\\\">After the service is completed, you can rate and review the provider to help others make informed decisions.<\\/p>\"}', 7, '2025-02-25 04:06:59', '2025-02-25 04:06:59'),
(37, '{\"en\":\"<p><p data-start=\\\"1350\\\" data-end=\\\"1429\\\"><\\/p><\\/p><h3 data-start=\\\"1290\\\" data-end=\\\"1349\\\"><strong data-start=\\\"1294\\\" data-end=\\\"1347\\\">7. Is my personal information secure on WeServio?<\\/strong><\\/h3>\"}', '{\"en\":\"<p data-start=\\\"1350\\\" data-end=\\\"1429\\\">Yes, WeServio uses advanced security protocols to protect your personal data.<\\/p>\"}', 7, '2025-02-25 04:07:14', '2025-02-25 04:07:14'),
(38, '{\"en\":\"<h3 data-start=\\\"1472\\\" data-end=\\\"1525\\\"><strong data-start=\\\"1476\\\" data-end=\\\"1523\\\">1. How do I register as a service provider?<\\/strong><\\/h3><p><h3 data-start=\\\"1683\\\" data-end=\\\"1722\\\"><\\/h3><\\/p><p data-start=\\\"1526\\\" data-end=\\\"1681\\\"><br><\\/p>\"}', '{\"en\":\"<p>To join as a provider, click on&nbsp;<span data-start=\\\"1558\\\" data-end=\\\"1571\\\" style=\\\"font-weight: bolder;\\\">\\\"Sign Up\\\"<\\/span>, select&nbsp;<span data-start=\\\"1580\\\" data-end=\\\"1603\\\" style=\\\"font-weight: bolder;\\\">\\\"Become a Provider\\\"<\\/span>, complete your profile, and submit the required documents for verification.<\\/p>\"}', 8, '2025-02-25 04:08:54', '2025-02-25 04:08:54'),
(39, '{\"en\":\"<h3 data-start=\\\"1683\\\" data-end=\\\"1722\\\"><strong data-start=\\\"1687\\\" data-end=\\\"1720\\\">2. How do I list my services?<\\/strong><\\/h3><p><h3 data-start=\\\"1859\\\" data-end=\\\"1907\\\"><\\/h3><\\/p><p data-start=\\\"1723\\\" data-end=\\\"1857\\\"><br><\\/p>\"}', '{\"en\":\"<p>Go to&nbsp;<span data-start=\\\"1729\\\" data-end=\\\"1746\\\" style=\\\"font-weight: bolder;\\\">\\\"My Services\\\"<\\/span>, click&nbsp;<span data-start=\\\"1754\\\" data-end=\\\"1771\\\" style=\\\"font-weight: bolder;\\\">\\\"Add Service\\\"<\\/span>, enter the details (name, pricing, description, and images), and save your listing.<\\/p>\"}', 8, '2025-02-25 04:09:09', '2025-02-25 04:09:09'),
(40, '{\"en\":\"<h3 data-start=\\\"1859\\\" data-end=\\\"1907\\\"><strong data-start=\\\"1863\\\" data-end=\\\"1905\\\">3. What are Options and Option Groups?<\\/strong><\\/h3>\"}', '{\"en\":\"<ul data-start=\\\"1908\\\" data-end=\\\"2082\\\"><li data-start=\\\"1908\\\" data-end=\\\"1982\\\"><span data-start=\\\"1910\\\" data-end=\\\"1927\\\" style=\\\"font-weight: bolder;\\\">Option Groups<\\/span>&nbsp;are categories of add-ons (e.g., \\\"Cleaning Extras\\\").<\\/li><li data-start=\\\"1983\\\" data-end=\\\"2082\\\"><span data-start=\\\"1985\\\" data-end=\\\"1996\\\" style=\\\"font-weight: bolder;\\\">Options<\\/span>&nbsp;are the specific add-ons within a group (e.g., \\\"Deep Cleaning\\\", \\\"Fragrance Spray\\\").<\\/li><\\/ul><p><\\/p><h3 data-start=\\\"2155\\\" data-end=\\\"2196\\\"><\\/h3><p><\\/p><p data-start=\\\"2084\\\" data-end=\\\"2153\\\">This helps you offer additional features customers can choose from.<\\/p>\"}', 8, '2025-02-25 04:09:28', '2025-02-25 04:09:28'),
(41, '{\"en\":\"<h3 data-start=\\\"2155\\\" data-end=\\\"2196\\\"><strong data-start=\\\"2159\\\" data-end=\\\"2194\\\">4. How do I manage my bookings?<\\/strong><\\/h3><p><h3 data-start=\\\"2335\\\" data-end=\\\"2382\\\"><\\/h3><\\/p><p data-start=\\\"2197\\\" data-end=\\\"2333\\\"><br><\\/p>\"}', '{\"en\":\"<p>You can view and manage all bookings in the&nbsp;<span data-start=\\\"2241\\\" data-end=\\\"2258\\\" style=\\\"font-weight: bolder;\\\">\\\"My Bookings\\\"<\\/span>&nbsp;section. From there, you can accept, reschedule, or cancel appointments.<\\/p>\"}', 8, '2025-02-25 04:09:40', '2025-02-25 04:09:40'),
(42, '{\"en\":\"<h3 data-start=\\\"2335\\\" data-end=\\\"2382\\\"><strong data-start=\\\"2339\\\" data-end=\\\"2380\\\">5. How do I get paid for my services?<\\/strong><\\/h3><p><h3 data-start=\\\"2518\\\" data-end=\\\"2576\\\"><\\/h3><\\/p><p data-start=\\\"2383\\\" data-end=\\\"2516\\\"><br><\\/p>\"}', '{\"en\":\"<p>All payments are made&nbsp;<span data-start=\\\"2405\\\" data-end=\\\"2432\\\" style=\\\"font-weight: bolder;\\\">in cash by the customer<\\/span>&nbsp;once the service is completed. There are no online transactions through WeServio.<\\/p>\"}', 8, '2025-02-25 04:09:52', '2025-02-25 04:09:52'),
(43, '{\"en\":\"<h3 data-start=\\\"2518\\\" data-end=\\\"2576\\\"><strong data-start=\\\"2522\\\" data-end=\\\"2574\\\">6. What happens if a customer cancels a booking?<\\/strong><\\/h3><p><h3 data-start=\\\"2757\\\" data-end=\\\"2814\\\"><\\/h3><\\/p><p data-start=\\\"2577\\\" data-end=\\\"2755\\\"><br><\\/p>\"}', '{\"en\":\"<p>If a customer cancels within the allowed time, no issue. However, if they cancel late, they may still be required to pay a cancellation fee, depending on the platform’s policy.<\\/p>\"}', 8, '2025-02-25 04:10:04', '2025-02-25 04:10:04'),
(44, '{\"en\":\"<h3 data-start=\\\"2757\\\" data-end=\\\"2814\\\"><strong data-start=\\\"2761\\\" data-end=\\\"2812\\\">7. How can I improve my visibility on WeServio?<\\/strong><\\/h3><p data-start=\\\"2815\\\" data-end=\\\"2971\\\"><br><\\/p>\"}', '{\"en\":\"<p>Maintain a high rating by delivering quality service, responding quickly to bookings, and keeping your profile updated with clear descriptions and images.<\\/p>\"}', 8, '2025-02-25 04:10:19', '2025-02-25 04:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `show`, `created_at`, `updated_at`) VALUES
(7, '{\"en\":\"Customers FAQ 🛒\"}', 1, '2025-02-25 04:03:13', '2025-02-25 04:35:54'),
(8, '{\"en\":\"Providers FAQ 🛠️\"}', 1, '2025-02-25 04:03:56', '2025-02-25 04:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `e_service_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 46, 1, '2022-05-06 10:53:21', '2022-05-06 10:53:21'),
(3, 43, 1, '2022-06-28 13:10:18', '2022-06-28 13:10:18'),
(6, 43, 10, '2022-06-28 13:39:34', '2022-06-28 13:39:34'),
(7, 46, 10, '2022-06-28 15:05:29', '2022-06-28 15:05:29'),
(8, 49, 1, '2022-06-29 12:44:05', '2022-06-29 12:44:05'),
(9, 43, 12, '2022-07-03 03:06:42', '2022-07-03 03:06:42'),
(10, 46, 12, '2022-07-03 03:07:07', '2022-07-03 03:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(24, '{\"en\":\"<p>Test <br><\\/p>\"}', 24, '2022-05-11 03:14:23', '2023-03-31 03:40:25'),
(31, '{\"en\":\"<p>desc<br><\\/p>\"}', 36, '2023-04-04 01:02:35', '2023-04-04 01:02:35'),
(34, '{\"en\":\"<p>TESTT&nbsp;<\\/p>\"}', 245, '2024-10-23 07:03:17', '2024-10-23 07:03:17'),
(35, '{\"en\":\"<p>TESTT&nbsp;<\\/p>\"}', 245, '2024-10-23 07:05:25', '2024-10-23 07:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text NOT NULL,
  `custom_properties` text NOT NULL,
  `responsive_images` text NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\PaymentMethod', 2, 'logo', 'razorpay', 'razorpay.png', 'image/png', 'public', 13026, '[]', '{\"uuid\":\"13e62475-6b5f-4812-b484-2b94cc52b715\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2021-05-07 16:03:38', '2021-05-07 16:03:38'),
(5, 'App\\Models\\PaymentMethod', 5, 'logo', 'paypal', 'paypal.png', 'image/png', 'public', 15819, '[]', '{\"uuid\":\"2b8bd9b8-5c37-4464-a5c7-623496d7655f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 5, '2021-05-07 16:03:49', '2021-05-07 16:03:49'),
(7, 'App\\Models\\PaymentMethod', 6, 'logo', 'pay_pickup', 'pay_pickup.png', 'image/png', 'public', 11712, '[]', '{\"uuid\":\"5e06e7ca-ac33-413c-9ab0-6fd4e3083cc1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2021-05-07 16:03:58', '2021-05-07 16:03:58'),
(9, 'App\\Models\\PaymentMethod', 7, 'logo', 'stripe-logo', 'stripe-logo.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd448a36-8a5e-4c85-8d6e-c356843429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2021-05-07 16:04:23', '2021-05-07 16:04:23'),
(10, 'App\\Models\\PaymentMethod', 9, 'logo', 'flutterwave', 'flutterwave.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a96-8a5e-4a85-8d6e-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2021-05-07 16:04:23', '2021-05-07 16:04:23'),
(11, 'App\\Models\\PaymentMethod', 8, 'logo', 'paystack', 'paystack.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd448a96-8a5e-4c85-8d6e-c356648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-05-07 16:04:23', '2021-05-07 16:04:23'),
(12, 'App\\Models\\PaymentMethod', 10, 'logo', 'fpx', 'fpx.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 16:04:23', '2021-05-07 16:04:23'),
(13, 'App\\Models\\PaymentMethod', 11, 'logo', 'wallet', 'wallet.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 16:04:23', '2021-05-07 16:04:23'),
(14, 'App\\Models\\PaymentMethod', 12, 'logo', 'paymongo', 'paymongo.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-05-07 16:04:23', '2021-05-07 16:04:23'),
(16, 'App\\Models\\Gallery', 21, 'image', '22', '22.png', 'image/png', 'public', 67391, '[]', '{\"uuid\":\"39a8b348-4fb2-4485-a753-c4f0d25452a6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 14, '2022-03-23 02:23:34', '2022-03-23 02:23:34'),
(18, 'App\\Models\\Gallery', 22, 'image', '22', '22.png', 'image/png', 'public', 67391, '[]', '{\"uuid\":\"1aa6cd28-40ee-48a8-8f79-75ba9d316895\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2022-03-23 02:42:39', '2022-03-23 02:42:39'),
(24, 'App\\Models\\EProvider', 20, 'image', 'asset', 'asset.png', 'image/png', 'public', 331339, '[]', '{\"uuid\":\"181560a5-52d2-4891-810d-3d8e0b6b8726\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 21, '2022-03-23 17:52:12', '2022-03-23 17:52:12'),
(27, 'App\\Models\\EProvider', 21, 'image', '22', '22.png', 'image/png', 'public', 67391, '[]', '{\"uuid\":\"8d808924-7770-4c90-9d81-3be38b3b2fca\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2022-03-23 17:54:20', '2022-03-23 17:54:20'),
(29, 'App\\Models\\EProvider', 22, 'image', '22', '22.png', 'image/png', 'public', 67391, '[]', '{\"uuid\":\"7ebc5a31-071b-4856-be92-0eeb07301157\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2022-03-23 17:55:23', '2022-03-23 17:55:23'),
(32, 'App\\Models\\Upload', 13, 'app_logo', '2', '2.png', 'image/png', 'public', 21258, '[]', '{\"uuid\":\"13ca26b7-f3d9-4fee-a211-48e18f136f1b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2022-04-03 03:59:30', '2022-04-03 03:59:31'),
(34, 'App\\Models\\Upload', 15, 'app_logo', '2', '2.svg', 'image/svg+xml', 'public', 4263, '[]', '{\"uuid\":\"7efae5d8-d509-4a43-9efc-5ce480df32c9\",\"user_id\":1}', '[]', 31, '2022-04-03 21:53:23', '2022-04-03 21:53:23'),
(35, 'App\\Models\\Upload', 16, 'app_logo', 'logo_default', 'logo_default.png', 'image/png', 'public', 78387, '[]', '{\"uuid\":\"efa698ca-1b64-4eea-b58b-b4d94347ce1f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2022-04-03 21:53:56', '2022-04-03 21:53:57'),
(36, 'App\\Models\\Upload', 17, 'app_logo', '3croped', '3croped.png', 'image/png', 'public', 6001, '[]', '{\"uuid\":\"aa85a395-8099-447b-b81d-5b98e006c3d1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2022-04-03 22:04:29', '2022-04-03 22:04:29'),
(37, 'App\\Models\\Upload', 18, 'image', 'logo_default', 'logo_default.png', 'image/png', 'public', 78387, '[]', '{\"uuid\":\"e3efa97f-4b9f-4161-8e61-eaf747ec1cf1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2022-04-03 22:05:35', '2022-04-03 22:05:35'),
(38, 'App\\Models\\Upload', 19, 'app_logo', '1croped', '1croped.png', 'image/png', 'public', 5962, '[]', '{\"uuid\":\"cb5edabc-5a63-4e34-8332-7782b7e204e6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2022-04-03 22:32:39', '2022-04-03 22:32:39'),
(39, 'App\\Models\\Upload', 20, 'app_logo', 'Asset 1', 'Asset-1.svg', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"320d2bc0-eac6-49e6-ae25-c244af5f8483\",\"user_id\":1}', '[]', 36, '2022-04-07 19:05:45', '2022-04-07 19:05:45'),
(45, 'App\\Models\\Upload', 24, 'app_logo', 'Asset 1', 'Asset-1.svg', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"e31a8975-bc28-464e-b84c-e0ffb7820521\",\"user_id\":1}', '[]', 42, '2022-04-15 07:23:42', '2022-04-15 07:23:42'),
(47, 'App\\Models\\Upload', 26, 'app_logo', 'Asset 1', 'Asset-1.svg', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"842ee81b-e34e-489b-8739-c364dfba87a6\",\"user_id\":1}', '[]', 44, '2022-04-16 18:51:20', '2022-04-16 18:51:20'),
(48, 'App\\Models\\Upload', 27, 'app_logo', 'shacelogo', 'shacelogo.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"b11b22dc-8f07-4b8a-a8c1-11de41d16176\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 45, '2022-04-16 18:52:48', '2022-04-16 18:52:49'),
(49, 'App\\Models\\Upload', 28, 'app_logo', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"d2078951-d87d-4117-a11b-91b05abea37e\",\"user_id\":1}', '[]', 46, '2022-04-16 18:57:34', '2022-04-16 18:57:34'),
(50, 'App\\Models\\Upload', 29, 'image', 'slide0001', 'slide0001.jpg', 'image/jpeg', 'public', 87868, '[]', '{\"uuid\":\"f9b59294-2c8e-4976-a16a-afef00dadd82\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 47, '2022-04-16 19:14:11', '2022-04-16 19:14:12'),
(51, 'App\\Models\\Slide', 1, 'image', 'slide0001', 'slide0001.jpg', 'image/jpeg', 'public', 87868, '[]', '{\"uuid\":\"f9b59294-2c8e-4976-a16a-afef00dadd82\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 48, '2022-04-16 19:14:14', '2022-04-16 19:14:14'),
(52, 'App\\Models\\Upload', 30, 'image', 'slide02', 'slide02.jpg', 'image/jpeg', 'public', 70504, '[]', '{\"uuid\":\"eba0fa05-e257-432c-8549-6a6ad3ad124c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 49, '2022-04-16 19:14:34', '2022-04-16 19:14:34'),
(53, 'App\\Models\\Slide', 2, 'image', 'slide02', 'slide02.jpg', 'image/jpeg', 'public', 70504, '[]', '{\"uuid\":\"eba0fa05-e257-432c-8549-6a6ad3ad124c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 50, '2022-04-16 19:14:35', '2022-04-16 19:14:35'),
(54, 'App\\Models\\Upload', 31, 'image', 'slide03', 'slide03.jpg', 'image/jpeg', 'public', 97717, '[]', '{\"uuid\":\"edd64aa1-53d6-44b7-9d68-1ab0dcd1ce52\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 51, '2022-04-16 19:14:48', '2022-04-16 19:14:48'),
(55, 'App\\Models\\Slide', 3, 'image', 'slide03', 'slide03.jpg', 'image/jpeg', 'public', 97717, '[]', '{\"uuid\":\"edd64aa1-53d6-44b7-9d68-1ab0dcd1ce52\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 52, '2022-04-16 19:14:50', '2022-04-16 19:14:50'),
(56, 'App\\Models\\Upload', 32, 'image', 'housekeeper-cleaning-hotel-room_93675-40676', 'housekeeper-cleaning-hotel-room_93675-40676.jpg', 'image/jpeg', 'public', 43794, '[]', '{\"uuid\":\"d091364e-5357-4c04-9549-ea355dbcfc62\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 53, '2022-04-16 19:16:16', '2022-04-16 19:16:16'),
(57, 'App\\Models\\EService', 1, 'image', 'housekeeper-cleaning-hotel-room_93675-40676', 'housekeeper-cleaning-hotel-room_93675-40676.jpg', 'image/jpeg', 'public', 43794, '[]', '{\"uuid\":\"d091364e-5357-4c04-9549-ea355dbcfc62\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 54, '2022-04-16 19:16:19', '2022-04-16 19:16:19'),
(58, 'App\\Models\\Upload', 33, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"32af0057-225a-4616-b00a-cf940c29ff44\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 55, '2022-04-16 19:17:16', '2022-04-16 19:17:16'),
(59, 'App\\Models\\EService', 2, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"32af0057-225a-4616-b00a-cf940c29ff44\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 56, '2022-04-16 19:17:18', '2022-04-16 19:17:18'),
(60, 'App\\Models\\Upload', 34, 'image', 'housekeeper-cleaning-hotel-room_93675-40676', 'housekeeper-cleaning-hotel-room_93675-40676.jpg', 'image/jpeg', 'public', 43794, '[]', '{\"uuid\":\"da895d4e-b598-49c4-9cd6-999324749e05\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 57, '2022-04-16 19:17:30', '2022-04-16 19:17:30'),
(61, 'App\\Models\\EService', 3, 'image', 'housekeeper-cleaning-hotel-room_93675-40676', 'housekeeper-cleaning-hotel-room_93675-40676.jpg', 'image/jpeg', 'public', 43794, '[]', '{\"uuid\":\"da895d4e-b598-49c4-9cd6-999324749e05\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 58, '2022-04-16 19:17:33', '2022-04-16 19:17:33'),
(62, 'App\\Models\\Upload', 35, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"bc10d75f-9658-47bf-bd4a-d47141acbf4d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 59, '2022-04-16 19:17:47', '2022-04-16 19:17:47'),
(63, 'App\\Models\\EService', 4, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"bc10d75f-9658-47bf-bd4a-d47141acbf4d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 60, '2022-04-16 19:17:48', '2022-04-16 19:17:48'),
(64, 'App\\Models\\Upload', 36, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"cde9a15c-f001-4ae2-896e-00f53456f5e1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 61, '2022-04-16 19:18:35', '2022-04-16 19:18:35'),
(65, 'App\\Models\\EService', 6, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"cde9a15c-f001-4ae2-896e-00f53456f5e1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 62, '2022-04-16 19:18:38', '2022-04-16 19:18:38'),
(66, 'App\\Models\\Upload', 37, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"b4084275-31f0-4f1e-8b96-a718a1c609a4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 63, '2022-04-16 19:18:51', '2022-04-16 19:18:51'),
(67, 'App\\Models\\EService', 9, 'image', 'modern-automobile-mechanic-composition_23-2147881108', 'modern-automobile-mechanic-composition_23-2147881108.jpg', 'image/jpeg', 'public', 89243, '[]', '{\"uuid\":\"b4084275-31f0-4f1e-8b96-a718a1c609a4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 64, '2022-04-16 19:18:53', '2022-04-16 19:18:53'),
(68, 'App\\Models\\Upload', 38, 'app_logo', 'we servio', 'we-servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"16f4e8c5-84ee-444f-8498-2f1f34e73d75\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 65, '2022-04-17 20:27:18', '2022-04-17 20:27:18'),
(69, 'App\\Models\\Upload', 39, 'app_logo', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"3ebe175e-0155-4c96-a891-17666fe37bf5\",\"user_id\":1}', '[]', 66, '2022-04-17 20:29:49', '2022-04-17 20:29:49'),
(70, 'App\\Models\\Upload', 40, 'app_logo', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"6dfb2958-889a-4e41-acb2-e97fda4a0cf9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 67, '2022-04-17 20:31:13', '2022-04-17 20:31:14'),
(71, 'App\\Models\\Upload', 41, 'avatar', 'Default-avatar', 'Default-avatar.jpg', 'image/jpeg', 'public', 19252, '[]', '{\"uuid\":\"ae4837a6-c6c3-49eb-8c3f-c4521ba903bf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 68, '2022-04-18 00:40:17', '2022-04-18 00:40:17'),
(75, 'App\\Models\\Upload', 43, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"cc61ed98-0e60-4a65-bead-ad9a3e321624\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 70, '2022-04-20 20:40:39', '2022-04-20 20:40:39'),
(77, 'App\\Models\\Upload', 44, 'image', '865c505e4dae4e3_services', '865c505e4dae4e3_services.png', 'image/png', 'public', 1046, '[]', '{\"uuid\":\"c74362fc-8e31-4ed0-a8e6-57c315edd7a5\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 72, '2022-04-21 05:05:48', '2022-04-21 05:05:48'),
(78, 'App\\Models\\Category', 86, 'image', '865c505e4dae4e3_services', '865c505e4dae4e3_services.png', 'image/png', 'public', 1046, '[]', '{\"uuid\":\"c74362fc-8e31-4ed0-a8e6-57c315edd7a5\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 73, '2022-04-21 05:05:51', '2022-04-21 05:05:51'),
(79, 'App\\Models\\Upload', 45, 'image', '735c5058f552232_services', '735c5058f552232_services.png', 'image/png', 'public', 969, '[]', '{\"uuid\":\"b3e61c2a-2ba3-4248-97b6-efcd56031fd5\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 74, '2022-04-21 05:12:04', '2022-04-21 05:12:04'),
(80, 'App\\Models\\Category', 92, 'image', '735c5058f552232_services', '735c5058f552232_services.png', 'image/png', 'public', 969, '[]', '{\"uuid\":\"b3e61c2a-2ba3-4248-97b6-efcd56031fd5\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 75, '2022-04-21 05:12:10', '2022-04-21 05:12:10'),
(81, 'App\\Models\\Upload', 46, 'image', '815c505c2c1bf31_services', '815c505c2c1bf31_services.png', 'image/png', 'public', 1595, '[]', '{\"uuid\":\"e755fe6c-2fa1-4392-8763-e8028bef15de\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 76, '2022-04-21 05:13:23', '2022-04-21 05:13:23'),
(82, 'App\\Models\\Category', 91, 'image', '815c505c2c1bf31_services', '815c505c2c1bf31_services.png', 'image/png', 'public', 1595, '[]', '{\"uuid\":\"e755fe6c-2fa1-4392-8763-e8028bef15de\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 77, '2022-04-21 05:13:24', '2022-04-21 05:13:24'),
(83, 'App\\Models\\Upload', 47, 'image', '835c505d6b3bbbc_services', '835c505d6b3bbbc_services.png', 'image/png', 'public', 1234, '[]', '{\"uuid\":\"6efcb793-3bb1-438f-be88-7b0274d3c140\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 78, '2022-04-21 05:13:36', '2022-04-21 05:13:36'),
(84, 'App\\Models\\Category', 90, 'image', '835c505d6b3bbbc_services', '835c505d6b3bbbc_services.png', 'image/png', 'public', 1234, '[]', '{\"uuid\":\"6efcb793-3bb1-438f-be88-7b0274d3c140\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 79, '2022-04-21 05:13:49', '2022-04-21 05:13:49'),
(85, 'App\\Models\\Upload', 48, 'image', '845c505e007a211_services', '845c505e007a211_services.png', 'image/png', 'public', 832, '[]', '{\"uuid\":\"a54197ff-5897-4c59-a759-d9b8214c91b7\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 80, '2022-04-21 05:15:23', '2022-04-21 05:15:23'),
(86, 'App\\Models\\Category', 89, 'image', '845c505e007a211_services', '845c505e007a211_services.png', 'image/png', 'public', 832, '[]', '{\"uuid\":\"a54197ff-5897-4c59-a759-d9b8214c91b7\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 81, '2022-04-21 05:15:24', '2022-04-21 05:15:24'),
(87, 'App\\Models\\Upload', 49, 'image', '805c505ba2a0595_services', '805c505ba2a0595_services.png', 'image/png', 'public', 1866, '[]', '{\"uuid\":\"0fbeba36-774e-4120-98f9-31f55be057da\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 82, '2022-04-21 05:16:01', '2022-04-21 05:16:01'),
(88, 'App\\Models\\Category', 88, 'image', '805c505ba2a0595_services', '805c505ba2a0595_services.png', 'image/png', 'public', 1866, '[]', '{\"uuid\":\"0fbeba36-774e-4120-98f9-31f55be057da\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 83, '2022-04-21 05:16:04', '2022-04-21 05:16:04'),
(89, 'App\\Models\\Upload', 50, 'image', '795c505b6f5d446_services', '795c505b6f5d446_services.png', 'image/png', 'public', 1460, '[]', '{\"uuid\":\"87e54e41-aaf1-4092-9b86-b49f76a2f1db\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 84, '2022-04-21 05:16:32', '2022-04-21 05:16:32'),
(90, 'App\\Models\\Category', 87, 'image', '795c505b6f5d446_services', '795c505b6f5d446_services.png', 'image/png', 'public', 1460, '[]', '{\"uuid\":\"87e54e41-aaf1-4092-9b86-b49f76a2f1db\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 85, '2022-04-21 05:16:42', '2022-04-21 05:16:42'),
(91, 'App\\Models\\Upload', 51, 'image', '785c505b0527c64_services', '785c505b0527c64_services.png', 'image/png', 'public', 892, '[]', '{\"uuid\":\"f99e6175-ca1c-4ac7-ada3-7219ea6d51ad\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 86, '2022-04-21 05:17:47', '2022-04-21 05:17:47'),
(92, 'App\\Models\\Category', 85, 'image', '785c505b0527c64_services', '785c505b0527c64_services.png', 'image/png', 'public', 892, '[]', '{\"uuid\":\"f99e6175-ca1c-4ac7-ada3-7219ea6d51ad\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 87, '2022-04-21 05:17:48', '2022-04-21 05:17:48'),
(93, 'App\\Models\\Upload', 52, 'image', '775c505add9cba5_services', '775c505add9cba5_services.png', 'image/png', 'public', 1371, '[]', '{\"uuid\":\"71bc9d74-2b40-4a27-b74c-794054f17aab\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 88, '2022-04-21 05:18:10', '2022-04-21 05:18:10'),
(94, 'App\\Models\\Category', 84, 'image', '775c505add9cba5_services', '775c505add9cba5_services.png', 'image/png', 'public', 1371, '[]', '{\"uuid\":\"71bc9d74-2b40-4a27-b74c-794054f17aab\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 89, '2022-04-21 05:18:17', '2022-04-21 05:18:17'),
(95, 'App\\Models\\Upload', 53, 'image', '765c505a9a2a426_services', '765c505a9a2a426_services.png', 'image/png', 'public', 1381, '[]', '{\"uuid\":\"ad3ae14a-2a63-4c7f-a290-0bbf3f0c312b\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 90, '2022-04-21 05:18:49', '2022-04-21 05:18:49'),
(96, 'App\\Models\\Category', 83, 'image', '765c505a9a2a426_services', '765c505a9a2a426_services.png', 'image/png', 'public', 1381, '[]', '{\"uuid\":\"ad3ae14a-2a63-4c7f-a290-0bbf3f0c312b\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 91, '2022-04-21 05:18:50', '2022-04-21 05:18:50'),
(97, 'App\\Models\\Upload', 54, 'image', '855c505e2bb97fb_services', '855c505e2bb97fb_services.png', 'image/png', 'public', 746, '[]', '{\"uuid\":\"a5392e5a-281c-42b4-985b-c25f8352b225\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 92, '2022-04-21 05:19:11', '2022-04-21 05:19:11'),
(98, 'App\\Models\\Category', 82, 'image', '855c505e2bb97fb_services', '855c505e2bb97fb_services.png', 'image/png', 'public', 746, '[]', '{\"uuid\":\"a5392e5a-281c-42b4-985b-c25f8352b225\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 93, '2022-04-21 05:19:17', '2022-04-21 05:19:17'),
(99, 'App\\Models\\Upload', 55, 'image', '755c505a132fce1_services', '755c505a132fce1_services.png', 'image/png', 'public', 1725, '[]', '{\"uuid\":\"3147e171-dd5e-4c4f-86fa-411e57121d14\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 94, '2022-04-21 05:19:47', '2022-04-21 05:19:47'),
(100, 'App\\Models\\Category', 81, 'image', '755c505a132fce1_services', '755c505a132fce1_services.png', 'image/png', 'public', 1725, '[]', '{\"uuid\":\"3147e171-dd5e-4c4f-86fa-411e57121d14\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 95, '2022-04-21 05:19:48', '2022-04-21 05:19:48'),
(101, 'App\\Models\\Upload', 56, 'image', '745c5059d35f8fd_services', '745c5059d35f8fd_services.png', 'image/png', 'public', 1261, '[]', '{\"uuid\":\"5a06a695-a14f-464c-9ddd-b8c0a7dc7579\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 96, '2022-04-21 05:20:18', '2022-04-21 05:20:18'),
(102, 'App\\Models\\Category', 80, 'image', '745c5059d35f8fd_services', '745c5059d35f8fd_services.png', 'image/png', 'public', 1261, '[]', '{\"uuid\":\"5a06a695-a14f-464c-9ddd-b8c0a7dc7579\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 97, '2022-04-21 05:20:20', '2022-04-21 05:20:20'),
(103, 'App\\Models\\Upload', 57, 'image', '725c505838def6b_services', '725c505838def6b_services.png', 'image/png', 'public', 607, '[]', '{\"uuid\":\"627af75a-bd98-4395-8831-d39a79f83dd8\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 98, '2022-04-21 05:20:46', '2022-04-21 05:20:47'),
(105, 'App\\Models\\Upload', 58, 'image', '825c505cbd19097_services', '825c505cbd19097_services.png', 'image/png', 'public', 912, '[]', '{\"uuid\":\"9992fffa-ad69-4081-8ac2-daeaf79d393d\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 100, '2022-04-21 05:21:27', '2022-04-21 05:21:27'),
(106, 'App\\Models\\Category', 78, 'image', '825c505cbd19097_services', '825c505cbd19097_services.png', 'image/png', 'public', 912, '[]', '{\"uuid\":\"9992fffa-ad69-4081-8ac2-daeaf79d393d\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 101, '2022-04-21 05:21:29', '2022-04-21 05:21:29'),
(107, 'App\\Models\\Upload', 59, 'image', '865c505e4dae4e3_services', '865c505e4dae4e3_services.png', 'image/png', 'public', 1046, '[]', '{\"uuid\":\"b6e2adda-d041-40dc-b6c2-f22bfb1ef9b8\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 102, '2022-04-21 05:23:58', '2022-04-21 05:23:58'),
(108, 'App\\Models\\Category', 93, 'image', '865c505e4dae4e3_services', '865c505e4dae4e3_services.png', 'image/png', 'public', 1046, '[]', '{\"uuid\":\"b6e2adda-d041-40dc-b6c2-f22bfb1ef9b8\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 103, '2022-04-21 05:24:05', '2022-04-21 05:24:05'),
(109, 'App\\Models\\Upload', 60, 'image', '21320190425120253_providers', '21320190425120253_providers.jpg', 'image/jpeg', 'public', 20453, '[]', '{\"uuid\":\"8059f8db-7a90-491a-acbe-63deef2e4d5e\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 104, '2022-04-21 05:34:38', '2022-04-21 05:34:38'),
(110, 'App\\Models\\EProvider', 24, 'image', '21320190425120253_providers', '21320190425120253_providers.jpg', 'image/jpeg', 'public', 20453, '[]', '{\"uuid\":\"8059f8db-7a90-491a-acbe-63deef2e4d5e\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 105, '2022-04-21 05:34:42', '2022-04-21 05:34:42'),
(111, 'App\\Models\\Upload', 61, 'image', '16620190424082907_providers', '16620190424082907_providers.png', 'image/png', 'public', 60432, '[]', '{\"uuid\":\"693da7ba-3f2d-4145-bb7b-ae2e1322742d\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 106, '2022-04-21 05:45:55', '2022-04-21 05:45:55'),
(112, 'App\\Models\\EProvider', 25, 'image', '16620190424082907_providers', '16620190424082907_providers.png', 'image/png', 'public', 60432, '[]', '{\"uuid\":\"693da7ba-3f2d-4145-bb7b-ae2e1322742d\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 107, '2022-04-21 05:45:57', '2022-04-21 05:45:57'),
(113, 'App\\Models\\Upload', 62, 'image', '17620190424094101_providers', '17620190424094101_providers.jpg', 'image/jpeg', 'public', 128307, '[]', '{\"uuid\":\"d751d320-f3b9-479e-938e-83d6ac395f9c\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 108, '2022-04-21 05:52:49', '2022-04-21 05:52:50'),
(114, 'App\\Models\\EProvider', 26, 'image', '17620190424094101_providers', '17620190424094101_providers.jpg', 'image/jpeg', 'public', 128307, '[]', '{\"uuid\":\"d751d320-f3b9-479e-938e-83d6ac395f9c\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 109, '2022-04-21 05:52:56', '2022-04-21 05:52:56'),
(115, 'App\\Models\\Upload', 63, 'image', '18620190424105258_providers', '18620190424105258_providers.png', 'image/png', 'public', 9275, '[]', '{\"uuid\":\"4cccd533-4cc2-4dc9-94cb-0880a9086b65\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 110, '2022-04-21 05:58:48', '2022-04-21 05:58:48'),
(116, 'App\\Models\\EProvider', 27, 'image', '18620190424105258_providers', '18620190424105258_providers.png', 'image/png', 'public', 9275, '[]', '{\"uuid\":\"4cccd533-4cc2-4dc9-94cb-0880a9086b65\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 111, '2022-04-21 05:58:54', '2022-04-21 05:58:54'),
(117, 'App\\Models\\Upload', 64, 'image', '19320190424123740_providers', '19320190424123740_providers.jpg', 'image/jpeg', 'public', 140542, '[]', '{\"uuid\":\"e3932e34-493e-47cb-a3ce-26ac56b1cb7f\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 112, '2022-04-21 06:02:02', '2022-04-21 06:02:02'),
(118, 'App\\Models\\Upload', 65, 'image', '19320190424123740_providers', '19320190424123740_providers.jpg', 'image/jpeg', 'public', 140542, '[]', '{\"uuid\":\"9dd94986-96ff-4a89-9f16-253627e3b4e2\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 113, '2022-04-21 06:02:40', '2022-04-21 06:02:40'),
(120, 'App\\Models\\Upload', 66, 'image', '19920190424015157_providers', '19920190424015157_providers.jpg', 'image/jpeg', 'public', 13996, '[]', '{\"uuid\":\"36ef996e-2f9f-47e8-9fce-ef3fffeb0edf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 115, '2022-04-22 00:18:16', '2022-04-22 00:18:17'),
(121, 'App\\Models\\EProvider', 29, 'image', '19920190424015157_providers', '19920190424015157_providers.jpg', 'image/jpeg', 'public', 13996, '[]', '{\"uuid\":\"36ef996e-2f9f-47e8-9fce-ef3fffeb0edf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 116, '2022-04-22 00:18:20', '2022-04-22 00:18:20'),
(122, 'App\\Models\\Upload', 67, 'image', '21920190425124557_providers', '21920190425124557_providers.png', 'image/png', 'public', 6294, '[]', '{\"uuid\":\"f501c47d-4dfb-4f99-b754-24639e32449f\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 117, '2022-04-22 00:21:07', '2022-04-22 00:21:07'),
(124, 'App\\Models\\Upload', 68, 'image', '22520190425013504_providers', '22520190425013504_providers.png', 'image/png', 'public', 53467, '[]', '{\"uuid\":\"652cb95b-81df-4172-9723-d064581417c0\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 119, '2022-04-22 00:26:24', '2022-04-22 00:26:24'),
(126, 'App\\Models\\Upload', 69, 'image', '26120190429080641_providers', '26120190429080641_providers.jpg', 'image/jpeg', 'public', 8432, '[]', '{\"uuid\":\"dcb90186-0547-4f3e-b6bf-07a6ce16c91d\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 121, '2022-04-22 00:34:51', '2022-04-22 00:34:52'),
(127, 'App\\Models\\EProvider', 32, 'image', '26120190429080641_providers', '26120190429080641_providers.jpg', 'image/jpeg', 'public', 8432, '[]', '{\"uuid\":\"dcb90186-0547-4f3e-b6bf-07a6ce16c91d\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 122, '2022-04-22 00:34:56', '2022-04-22 00:34:56'),
(128, 'App\\Models\\Upload', 70, 'image', '26420190429083940_providers', '26420190429083940_providers.jpg', 'image/jpeg', 'public', 32053, '[]', '{\"uuid\":\"6ee3302c-d80a-402f-9a72-4814c3cd94ed\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 123, '2022-04-22 00:39:52', '2022-04-22 00:39:53'),
(130, 'App\\Models\\Upload', 71, 'image', 'aluminium-door-frame-500x500', 'aluminium-door-frame-500x500.jpg', 'image/jpeg', 'public', 13291, '[]', '{\"uuid\":\"8d374f07-f6df-4d7d-bc43-3fc138f2e60c\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 125, '2022-04-25 02:40:01', '2022-04-25 02:40:02'),
(132, 'App\\Models\\Upload', 72, 'image', 'aluminium-door-frame-500x500', 'aluminium-door-frame-500x500.jpg', 'image/jpeg', 'public', 13291, '[]', '{\"uuid\":\"4f2cf6b3-077c-4f5f-8647-e8fd76de46aa\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 126, '2022-04-25 02:42:19', '2022-04-25 02:42:20'),
(134, 'App\\Models\\Upload', 73, 'image', 'new-garbage-disposal', 'new-garbage-disposal.jpg', 'image/jpeg', 'public', 81775, '[]', '{\"uuid\":\"29b98ca7-aead-4169-b43a-a71633826af3\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 128, '2022-04-25 02:50:20', '2022-04-25 02:50:20'),
(136, 'App\\Models\\Upload', 74, 'image', 'download', 'download.jfif', 'image/jpeg', 'public', 124637, '[]', '{\"uuid\":\"a5e50632-9048-4180-aa27-a04e66a45418\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 130, '2022-04-25 02:57:03', '2022-04-25 02:57:04'),
(138, 'App\\Models\\Upload', 75, 'image', 'Sygic_Hero-Pic_01-w1400h1050', 'Sygic_Hero-Pic_01-w1400h1050.jpg', 'image/jpeg', 'public', 138983, '[]', '{\"uuid\":\"3daa4be7-792c-469f-b19a-d2505fc9d2da\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 131, '2022-04-25 02:59:47', '2022-04-25 02:59:48'),
(140, 'App\\Models\\Upload', 76, 'image', 'exhaust-fan-installation-service-500x500', 'exhaust-fan-installation-service-500x500.jpg', 'image/jpeg', 'public', 41044, '[]', '{\"uuid\":\"723f14d9-c843-4e23-80f1-c16823f78174\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 133, '2022-04-25 03:06:17', '2022-04-25 03:06:18'),
(141, 'App\\Models\\EService', 46, 'image', 'exhaust-fan-installation-service-500x500', 'exhaust-fan-installation-service-500x500.jpg', 'image/jpeg', 'public', 41044, '[]', '{\"uuid\":\"723f14d9-c843-4e23-80f1-c16823f78174\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 134, '2022-04-25 03:06:59', '2022-04-25 03:06:59'),
(142, 'App\\Models\\Upload', 77, 'image', 'pest-control-service-banner-template-detecting-vector-32581131', 'pest-control-service-banner-template-detecting-vector-32581131.jpg', 'image/jpeg', 'public', 257365, '[]', '{\"uuid\":\"c41413c7-5015-4990-b145-2239bbdea05a\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 135, '2022-04-25 03:12:00', '2022-04-25 03:12:00'),
(143, 'App\\Models\\EService', 47, 'image', 'pest-control-service-banner-template-detecting-vector-32581131', 'pest-control-service-banner-template-detecting-vector-32581131.jpg', 'image/jpeg', 'public', 257365, '[]', '{\"uuid\":\"c41413c7-5015-4990-b145-2239bbdea05a\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 136, '2022-04-25 03:12:43', '2022-04-25 03:12:43'),
(144, 'App\\Models\\Upload', 78, 'image', '3mm-stainless-steel-plate-sheet-cutting-up-to-1000x1000mm-', '3mm-stainless-steel-plate-sheet-cutting-up-to-1000x1000mm-.jpg', 'image/jpeg', 'public', 28156, '[]', '{\"uuid\":\"169d5307-09af-4b2b-913d-aa80649e971a\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 137, '2022-04-25 03:17:57', '2022-04-25 03:17:57'),
(145, 'App\\Models\\EService', 48, 'image', '3mm-stainless-steel-plate-sheet-cutting-up-to-1000x1000mm-', '3mm-stainless-steel-plate-sheet-cutting-up-to-1000x1000mm-.jpg', 'image/jpeg', 'public', 28156, '[]', '{\"uuid\":\"169d5307-09af-4b2b-913d-aa80649e971a\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 138, '2022-04-25 03:18:05', '2022-04-25 03:18:05'),
(146, 'App\\Models\\Upload', 79, 'image', 'vector-illustration-concept-massage-body-relax-symbol-icon-vector-illustration-concept-massage-body-relax-symbol-icon-140584490', 'vector-illustration-concept-massage-body-relax-symbol-icon-vector-illustration-concept-massage-body-relax-symbol-icon-140584490.jpg', 'image/jpeg', 'public', 80952, '[]', '{\"uuid\":\"dd7bb7a8-abb1-4dc4-bd8b-513b22c7bbdb\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 139, '2022-04-25 03:22:49', '2022-04-25 03:22:49'),
(148, 'App\\Models\\Upload', 80, 'image', 'Jacobs-Heating-Furnace-and-AC-repair-Team-2-629x461', 'Jacobs-Heating-Furnace-and-AC-repair-Team-2-629x461.jpg', 'image/jpeg', 'public', 40508, '[]', '{\"uuid\":\"161d2ee5-bde9-4f2c-bc12-5d602c1d4637\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 141, '2022-04-25 03:26:08', '2022-04-25 03:26:08'),
(150, 'App\\Models\\Upload', 81, 'image', 'house-cleaning-service-infographic-charts-vector-23996644', 'house-cleaning-service-infographic-charts-vector-23996644.jpg', 'image/jpeg', 'public', 310296, '[]', '{\"uuid\":\"b946b05e-2f05-463c-ac17-b8470363a221\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 143, '2022-04-25 03:30:36', '2022-04-25 03:30:36'),
(151, 'App\\Models\\EService', 51, 'image', 'house-cleaning-service-infographic-charts-vector-23996644', 'house-cleaning-service-infographic-charts-vector-23996644.jpg', 'image/jpeg', 'public', 310296, '[]', '{\"uuid\":\"b946b05e-2f05-463c-ac17-b8470363a221\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 144, '2022-04-25 03:30:43', '2022-04-25 03:30:43'),
(152, 'App\\Models\\Upload', 82, 'image', 'curtain-sewing-alteration-linear-icon-professional-upholstery-household-items-fix-thin-line-customizable-illustration-contour-213350871', 'curtain-sewing-alteration-linear-icon-professional-upholstery-household-items-fix-thin-line-customizable-illustration-contour-213350871.jpg', 'image/jpeg', 'public', 31177, '[]', '{\"uuid\":\"5ae6e638-fc0e-4b90-bc0f-7a853d8669ad\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 145, '2022-04-25 03:40:29', '2022-04-25 03:40:29'),
(153, 'App\\Models\\EService', 52, 'image', 'curtain-sewing-alteration-linear-icon-professional-upholstery-household-items-fix-thin-line-customizable-illustration-contour-213350871', 'curtain-sewing-alteration-linear-icon-professional-upholstery-household-items-fix-thin-line-customizable-illustration-contour-213350871.jpg', 'image/jpeg', 'public', 31177, '[]', '{\"uuid\":\"5ae6e638-fc0e-4b90-bc0f-7a853d8669ad\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 146, '2022-04-25 03:40:37', '2022-04-25 03:40:37'),
(154, 'App\\Models\\Upload', 83, 'image', 'aluminium-door-hotspots', 'aluminium-door-hotspots.jpg', 'image/jpeg', 'public', 32425, '[]', '{\"uuid\":\"1be4d4d0-4b20-4178-b810-46de489ebc41\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 147, '2022-05-11 01:32:30', '2022-05-11 01:32:31'),
(155, 'App\\Models\\Upload', 84, 'image', 'aluminium-door-hotspots', 'aluminium-door-hotspots.jpg', 'image/jpeg', 'public', 32425, '[]', '{\"uuid\":\"0ca4f9fe-2660-4dd8-9cb3-2a8052428af4\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 148, '2022-05-11 01:32:58', '2022-05-11 01:32:58'),
(156, 'App\\Models\\Upload', 85, 'image', 'aluminium-door-hotspots', 'aluminium-door-hotspots.jpg', 'image/jpeg', 'public', 32425, '[]', '{\"uuid\":\"6b67520e-d107-42d9-b396-b264feb6e19b\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 149, '2022-05-11 01:33:52', '2022-05-11 01:33:53'),
(158, 'App\\Models\\Upload', 86, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"6813c186-423f-4b4b-9e43-85b2dbd65c2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 151, '2022-05-11 02:30:07', '2022-05-11 02:30:07'),
(159, 'App\\Models\\EService', 47, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"6813c186-423f-4b4b-9e43-85b2dbd65c2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 152, '2022-05-11 02:30:11', '2022-05-11 02:30:11'),
(160, 'App\\Models\\Upload', 87, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"f132b82f-bc95-4a5a-8482-b84a5e64151b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 153, '2022-05-11 02:33:34', '2022-05-11 02:33:34'),
(162, 'App\\Models\\Upload', 88, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"459bfd2a-920c-40d3-8f38-5cab93e0367a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 155, '2022-05-11 02:37:00', '2022-05-11 02:37:00'),
(163, 'App\\Models\\Upload', 89, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"938aacab-c7ed-4e71-ae52-9eb7227b8547\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 156, '2022-05-11 02:40:35', '2022-05-11 02:40:36'),
(164, 'App\\Models\\Upload', 90, 'image', '725c505838def6b_services', '725c505838def6b_services.png', 'image/png', 'public', 607, '[]', '{\"uuid\":\"8b6c4c00-cf3f-49d7-b4d5-c8ab130f6708\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 157, '2022-05-11 03:14:00', '2022-05-11 03:14:00'),
(165, 'App\\Models\\Upload', 91, 'image', '805c505ba2a0595_services', '805c505ba2a0595_services.png', 'image/png', 'public', 1866, '[]', '{\"uuid\":\"64ead77c-bd97-4b82-ace1-5980bd442af8\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 158, '2022-05-11 03:14:07', '2022-05-11 03:14:08'),
(166, 'App\\Models\\Gallery', 24, 'image', '805c505ba2a0595_services', '805c505ba2a0595_services.png', 'image/png', 'public', 1866, '[]', '{\"uuid\":\"64ead77c-bd97-4b82-ace1-5980bd442af8\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 159, '2022-05-11 03:14:23', '2022-05-11 03:14:23'),
(167, 'App\\Models\\Upload', 92, 'image', 'middle', 'middle.gif', 'image/gif', 'public', 110540, '[]', '{\"uuid\":\"943df8e3-3e0e-490b-97be-e3f3fcdbea41\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 160, '2022-06-02 04:09:36', '2022-06-02 04:09:36'),
(168, 'App\\Models\\Upload', 93, 'image', 'Permian (1)', 'Permian-(1).jpg', 'image/jpeg', 'public', 665364, '[]', '{\"uuid\":\"2a798e15-e659-4f5c-a7f2-8e63178078be\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 161, '2022-06-02 04:09:36', '2022-06-02 04:09:37'),
(169, 'App\\Models\\EService', 50, 'image', 'Permian (1)', 'Permian-(1).jpg', 'image/jpeg', 'public', 665364, '[]', '{\"uuid\":\"2a798e15-e659-4f5c-a7f2-8e63178078be\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 162, '2022-06-02 04:09:41', '2022-06-02 04:09:41'),
(170, 'App\\Models\\EService', 50, 'image', 'middle', 'middle.gif', 'image/gif', 'public', 110540, '[]', '{\"uuid\":\"943df8e3-3e0e-490b-97be-e3f3fcdbea41\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 163, '2022-06-02 04:09:42', '2022-06-02 04:09:42'),
(171, 'App\\Models\\Upload', 94, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"dc4d1bc8-fc26-4009-8258-305ecaa9f766\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 164, '2022-06-03 07:50:15', '2022-06-03 07:50:16'),
(172, 'App\\Models\\Upload', 95, 'image', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"8aacef8b-cb3c-469d-b49c-860627c862ce\",\"user_id\":1}', '[]', 165, '2022-06-03 07:50:24', '2022-06-03 07:50:24'),
(173, 'App\\Models\\Upload', 96, 'image', 'shacelogo', 'shacelogo.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"967c494a-8304-4f9e-918d-7b3dfda722e8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 166, '2022-06-03 07:50:29', '2022-06-03 07:50:29'),
(176, 'App\\Models\\Upload', 97, 'image', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"5e30d49b-7d70-4c87-b320-3744d36d7ca7\",\"user_id\":1}', '[]', 169, '2022-06-03 07:50:58', '2022-06-03 07:50:58'),
(177, 'App\\Models\\EService', 49, 'image', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"5e30d49b-7d70-4c87-b320-3744d36d7ca7\",\"user_id\":1}', '[]', 170, '2022-06-03 07:51:00', '2022-06-03 07:51:00'),
(178, 'App\\Models\\Upload', 98, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"cbdaf490-e63d-42d8-852c-c3ed9453a9f0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 171, '2022-06-03 07:51:10', '2022-06-03 07:51:11'),
(179, 'App\\Models\\Upload', 99, 'image', 'shacelogo', 'shacelogo.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"d12b946c-a7b6-4045-b096-78521f1e848d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 172, '2022-06-03 07:51:14', '2022-06-03 07:51:14'),
(180, 'App\\Models\\EService', 49, 'image', 'shacelogo', 'shacelogo.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"d12b946c-a7b6-4045-b096-78521f1e848d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 173, '2022-06-03 07:51:17', '2022-06-03 07:51:17'),
(181, 'App\\Models\\EService', 49, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"cbdaf490-e63d-42d8-852c-c3ed9453a9f0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 174, '2022-06-03 07:51:17', '2022-06-03 07:51:17'),
(182, 'App\\Models\\Upload', 100, 'image', '2', '2.png', 'image/png', 'public', 53205, '[]', '{\"uuid\":\"54d05785-efb0-46ec-9565-00017c496c53\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 175, '2022-06-05 06:29:23', '2022-06-05 06:29:23'),
(184, 'App\\Models\\Upload', 101, 'avatar', 'logo', 'logo.jpg', 'image/jpeg', 'public', 37876, '[]', '{\"uuid\":\"a133584e-aade-4864-9791-e42b0b4425d6\",\"user_id\":11,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 177, '2022-06-28 00:03:14', '2022-06-28 00:03:14'),
(185, 'App\\Models\\Upload', 102, 'avatar', 'icons', 'icons.png', 'image/png', 'public', 159360, '[]', '{\"uuid\":\"63cda298-0067-4850-b0fc-3a4480917976\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 178, '2022-06-28 06:28:22', '2022-06-28 06:28:23'),
(187, 'App\\Models\\Upload', 103, 'avatar', 'mypic', 'mypic.jpeg', 'image/jpeg', 'public', 69492, '[]', '{\"uuid\":\"3a7fd983-ec6f-4015-9768-a864ab24dd9d\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 180, '2022-06-28 15:06:43', '2022-06-28 15:06:44'),
(188, 'App\\Models\\User', 10, 'avatar', 'mypic', 'mypic.jpeg', 'image/jpeg', 'public', 69492, '[]', '{\"uuid\":\"3a7fd983-ec6f-4015-9768-a864ab24dd9d\",\"user_id\":10,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 181, '2022-06-28 15:06:54', '2022-06-28 15:06:54'),
(189, 'App\\Models\\Upload', 104, 'avatar', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"d61f910b-086d-437b-8c42-048328ba2de7\",\"user_id\":1}', '[]', 182, '2022-06-29 12:04:16', '2022-06-29 12:04:16'),
(190, 'App\\Models\\Upload', 105, 'avatar', 'mypic', 'mypic.jpeg', 'image/jpeg', 'public', 69492, '[]', '{\"uuid\":\"5d0273cb-3a02-43a7-b186-44edc1128068\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 183, '2022-06-30 05:11:11', '2022-06-30 05:11:12'),
(192, 'App\\Models\\Upload', 106, 'avatar', '', 'قرءان.jpeg', 'image/jpeg', 'public', 4740, '[]', '{\"uuid\":\"7e71ce08-32b2-4d36-b5aa-82de358ad5aa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 185, '2022-06-30 05:12:16', '2022-06-30 05:12:16'),
(193, 'App\\Models\\User', 2, 'avatar', '', '.jpeg', 'image/jpeg', 'public', 4740, '[]', '{\"uuid\":\"7e71ce08-32b2-4d36-b5aa-82de358ad5aa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 186, '2022-06-30 05:12:20', '2022-06-30 05:12:20'),
(194, 'App\\Models\\Upload', 107, 'avatar', 'shacelogo', 'shacelogo.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"97734753-0b7d-4d67-a609-9dc74628a369\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 187, '2022-06-30 05:22:20', '2022-06-30 05:22:20'),
(195, 'App\\Models\\Upload', 108, 'avatar', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"f8ab9528-df7a-409a-8e11-50b4fafc3cd8\",\"user_id\":1}', '[]', 188, '2022-06-30 05:22:37', '2022-06-30 05:22:37'),
(196, 'App\\Models\\User', 8, 'avatar', 'Default-avatar', 'Default-avatar.jpg', 'image/jpeg', 'public', 19252, '[]', '{\"uuid\":\"ae4837a6-c6c3-49eb-8c3f-c4521ba903bf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 189, '2022-06-30 07:27:03', '2022-06-30 07:27:03'),
(197, 'App\\Models\\User', 6, 'avatar', 'Default-avatar', 'Default-avatar.jpg', 'image/jpeg', 'public', 19252, '[]', '{\"uuid\":\"ae4837a6-c6c3-49eb-8c3f-c4521ba903bf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 190, '2022-06-30 07:28:08', '2022-06-30 07:28:08'),
(198, 'App\\Models\\User', 7, 'avatar', 'Default-avatar', 'Default-avatar.jpg', 'image/jpeg', 'public', 19252, '[]', '{\"uuid\":\"ae4837a6-c6c3-49eb-8c3f-c4521ba903bf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 191, '2022-06-30 07:28:35', '2022-06-30 07:28:35'),
(199, 'App\\Models\\User', 3, 'avatar', 'Default-avatar', 'Default-avatar.jpg', 'image/jpeg', 'public', 19252, '[]', '{\"uuid\":\"ae4837a6-c6c3-49eb-8c3f-c4521ba903bf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 192, '2022-06-30 07:29:09', '2022-06-30 07:29:09'),
(200, 'App\\Models\\User', 4, 'avatar', 'Default-avatar', 'Default-avatar.jpg', 'image/jpeg', 'public', 19252, '[]', '{\"uuid\":\"ae4837a6-c6c3-49eb-8c3f-c4521ba903bf\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 193, '2022-06-30 07:29:32', '2022-06-30 07:29:32'),
(201, 'App\\Models\\Upload', 109, 'avatar', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"5381a231-acae-4747-be2f-82d54a15d9e0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 194, '2022-06-30 07:30:13', '2022-06-30 07:30:13'),
(202, 'App\\Models\\User', 5, 'avatar', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"5381a231-acae-4747-be2f-82d54a15d9e0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 195, '2022-06-30 07:30:18', '2022-06-30 07:30:18'),
(204, 'App\\Models\\Upload', 110, 'image', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"ecf2d5df-ca72-4aba-9716-d33deac8dacb\",\"user_id\":1}', '[]', 197, '2022-06-30 08:34:43', '2022-06-30 08:34:43'),
(205, 'App\\Models\\Upload', 111, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"afa489d3-6b58-4340-9648-06fefafe2670\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 198, '2022-06-30 14:07:30', '2022-06-30 14:07:30'),
(206, 'App\\Models\\Upload', 112, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"f63f2c49-5adb-4205-853d-0c3f551f0c04\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 199, '2022-06-30 14:08:48', '2022-06-30 14:08:48'),
(208, 'App\\Models\\Upload', 113, 'default', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"a9046b03-07bd-48d7-98f6-d38bb19bdfdd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 201, '2022-06-30 14:16:43', '2022-06-30 14:16:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(209, 'App\\Models\\Upload', 114, 'image', 'shacelogo', 'shacelogo.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"4a68f097-799e-440e-956a-e7ec1af29ab5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 202, '2022-07-02 16:41:15', '2022-07-02 16:41:16'),
(210, 'App\\Models\\EService', 61, 'image', 'shacelogo', 'shacelogo.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"4a68f097-799e-440e-956a-e7ec1af29ab5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 203, '2022-07-02 16:41:30', '2022-07-02 16:41:30'),
(212, 'App\\Models\\Upload', 116, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"4575ee9b-7d0f-4af5-8fc8-ff9915213341\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 204, '2022-07-03 19:30:22', '2022-07-03 19:30:22'),
(213, 'App\\Models\\Upload', 117, 'image', 'marker', 'marker.png', 'image/png', 'public', 1327, '[]', '{\"uuid\":\"cc6dcae9-5962-41df-b199-04711699b963\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 205, '2022-07-03 19:43:18', '2022-07-03 19:43:18'),
(214, 'App\\Models\\Upload', 118, 'image', '1croped', '1croped.png', 'image/png', 'public', 5962, '[]', '{\"uuid\":\"95f61db2-6706-470b-a9a6-f15c4441918b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 206, '2022-07-03 19:43:25', '2022-07-03 19:43:25'),
(215, 'App\\Models\\Upload', 119, 'image', 'image_default', 'image_default.png', 'image/png', 'public', 6432, '[]', '{\"uuid\":\"428bbc73-0186-465e-b9c9-32e994193965\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 207, '2022-07-03 19:43:33', '2022-07-03 19:43:34'),
(216, 'App\\Models\\Upload', 120, 'image', 'avatar_default', 'avatar_default.png', 'image/png', 'public', 2011, '[]', '{\"uuid\":\"6103b7a3-1923-44e8-8c73-b6d560c53c00\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 208, '2022-07-03 19:43:40', '2022-07-03 19:43:41'),
(217, 'App\\Models\\Upload', 121, 'image', '1', '1.png', 'image/png', 'public', 29477, '[]', '{\"uuid\":\"24eec7d3-6620-4716-8210-3ba53e3c6790\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 209, '2022-07-04 04:29:42', '2022-07-04 04:29:43'),
(219, 'App\\Models\\Upload', 122, 'image', '1', '1.png', 'image/png', 'public', 29477, '[]', '{\"uuid\":\"63866ded-b224-4934-942e-01b32ac86467\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 210, '2022-07-06 04:39:52', '2022-07-06 04:39:52'),
(221, 'App\\Models\\Upload', 123, 'image', '', 'لوجو.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"13d51336-2f18-43de-a76e-734c3881bed5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 212, '2022-07-06 04:48:11', '2022-07-06 04:48:11'),
(222, 'App\\Models\\EService', 45, 'image', '', '.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"13d51336-2f18-43de-a76e-734c3881bed5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 213, '2022-07-06 04:48:16', '2022-07-06 04:48:16'),
(223, 'App\\Models\\Upload', 124, 'image', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"6b141dd4-c599-4c3a-9e0d-32e36d7454ef\",\"user_id\":1}', '[]', 214, '2022-07-12 06:08:22', '2022-07-12 06:08:22'),
(224, 'App\\Models\\Upload', 125, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"b860ee5e-f647-4028-92e1-88f5c4744612\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 215, '2022-07-12 06:08:35', '2022-07-12 06:08:35'),
(225, 'App\\Models\\Upload', 126, 'image', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"e456b04d-7db5-458e-9f23-9f57f2e5eebf\",\"user_id\":1}', '[]', 216, '2022-07-12 06:12:07', '2022-07-12 06:12:07'),
(226, 'App\\Models\\Upload', 127, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"a9e57714-b4ed-437d-811e-57b64065c920\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 217, '2022-07-12 06:12:24', '2022-07-12 06:12:25'),
(227, 'App\\Models\\Upload', 128, 'image', 'weServio', 'weServio.png', 'image/svg', 'public', 8272, '[]', '{\"uuid\":\"45092865-6ffd-4b83-93a8-b0a21e59eaed\",\"user_id\":1}', '[]', 218, '2022-07-12 06:43:36', '2022-07-12 06:43:36'),
(228, 'App\\Models\\Upload', 129, 'image', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"a9918eed-891e-4a90-b191-bf0a57a75c3c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 219, '2022-07-12 06:46:22', '2022-07-12 06:46:23'),
(229, 'App\\Models\\Upload', 130, 'image', 'mail', 'mail.png', 'image/png', 'public', 243405, '[]', '{\"uuid\":\"658bb75b-d0d6-4b7b-9cd1-3d08e3b6fea9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 220, '2022-07-12 06:46:44', '2022-07-12 06:46:45'),
(233, 'App\\Models\\Upload', 131, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"812343d7-96cb-4692-9097-61f6118a2435\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 224, '2022-07-12 06:47:33', '2022-07-12 06:47:34'),
(235, 'App\\Models\\Upload', 132, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"7a73b2e5-ba26-4b1e-bfa2-8c2491b1a48f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 226, '2022-07-12 23:35:08', '2022-07-12 23:35:09'),
(236, 'App\\Models\\Upload', 133, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"86063c69-952b-42fd-bf06-730d2cb4e37a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 227, '2022-07-13 05:07:48', '2022-07-13 05:07:48'),
(237, 'App\\Models\\Upload', 134, 'image', 'mail', 'mail.png', 'image/png', 'public', 243405, '[]', '{\"uuid\":\"2dfc0bb9-7a08-4d07-ad33-49f8a55cd25f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 228, '2022-07-16 13:56:02', '2022-07-16 13:56:03'),
(238, 'App\\Models\\Upload', 135, 'default', '', 'لوجو.png', 'image/png', 'public', 5599, '[]', '{\"uuid\":\"cc24dd1d-72aa-485d-aec2-0e728e8ed3e7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 229, '2022-07-17 14:50:55', '2022-07-17 14:50:55'),
(239, 'App\\Models\\Upload', 136, 'logo', 'servio', 'servio.png', 'image/png', 'public', 52539, '[]', '{\"uuid\":\"5db7c11b-00dd-4c60-99be-88e3e8b77ff2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 230, '2022-07-18 02:28:07', '2022-07-18 02:28:07'),
(241, 'App\\Models\\Upload', 137, 'logo', '3a9d216f-cc30-478d-a219-78015aa17ad0', '3a9d216f-cc30-478d-a219-78015aa17ad0.jpeg', 'image/jpeg', 'public', 6155, '[]', '{\"uuid\":\"edaf035c-711f-4428-8a27-9ea40c6528d4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 232, '2022-07-19 00:01:45', '2022-07-19 00:01:45'),
(243, 'App\\Models\\Upload', 138, 'logo', '3a9d216f-cc30-478d-a219-78015aa17ad0', '3a9d216f-cc30-478d-a219-78015aa17ad0.jpeg', 'image/jpeg', 'public', 6155, '[]', '{\"uuid\":\"e425fa4d-413e-40e4-a8e9-b3021dec0ca0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 234, '2022-07-19 00:02:24', '2022-07-19 00:02:24'),
(245, 'App\\Models\\Upload', 139, 'logo', '3a9d216f-cc30-478d-a219-78015aa17ad0', '3a9d216f-cc30-478d-a219-78015aa17ad0.jpeg', 'image/jpeg', 'public', 6155, '[]', '{\"uuid\":\"6e895418-6e46-4bce-a665-aa679441e76d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 236, '2022-07-19 09:43:57', '2022-07-19 09:43:57'),
(246, 'App\\Models\\PaymentMethod', 14, 'logo', '3a9d216f-cc30-478d-a219-78015aa17ad0', '3a9d216f-cc30-478d-a219-78015aa17ad0.jpeg', 'image/jpeg', 'public', 6155, '[]', '{\"uuid\":\"6e895418-6e46-4bce-a665-aa679441e76d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 237, '2022-07-19 09:45:43', '2022-07-19 09:45:43'),
(247, 'App\\Models\\Upload', 140, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"adf6507b-1693-4581-92fa-2dad279c3a1a\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 238, '2022-07-28 00:02:24', '2022-07-28 00:02:24'),
(248, 'App\\Models\\Upload', 141, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"f244a81c-cb78-4f0e-b92c-a45c3758d714\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 239, '2022-07-28 00:03:53', '2022-07-28 00:03:53'),
(249, 'App\\Models\\Upload', 142, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"01d5c112-b3dd-44ff-a620-a7cd38c18d99\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 240, '2022-07-28 00:04:24', '2022-07-28 00:04:24'),
(250, 'App\\Models\\EProvider', 34, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"01d5c112-b3dd-44ff-a620-a7cd38c18d99\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 241, '2022-07-28 00:04:30', '2022-07-28 00:04:30'),
(251, 'App\\Models\\Upload', 143, 'image', '2751261315fafadbeff55f833136d4e2', '2751261315fafadbeff55f833136d4e2.jpg', 'image/jpeg', 'public', 30759, '[]', '{\"uuid\":\"cb3bbec0-99b3-4f6f-a018-7adf02d2657a\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 242, '2022-07-28 00:08:22', '2022-07-28 00:08:22'),
(252, 'App\\Models\\Upload', 144, 'image', '2751261315fafadbeff55f833136d4e2', '2751261315fafadbeff55f833136d4e2.jpg', 'image/jpeg', 'public', 30759, '[]', '{\"uuid\":\"469997de-7851-46de-80e3-c5e4c565389c\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 243, '2022-07-28 00:08:46', '2022-07-28 00:08:46'),
(253, 'App\\Models\\EService', 63, 'image', '2751261315fafadbeff55f833136d4e2', '2751261315fafadbeff55f833136d4e2.jpg', 'image/jpeg', 'public', 30759, '[]', '{\"uuid\":\"469997de-7851-46de-80e3-c5e4c565389c\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 244, '2022-07-28 00:08:47', '2022-07-28 00:08:47'),
(254, 'App\\Models\\Upload', 145, 'avatar', 'scaled_image_picker4661446181734336238', 'scaled_image_picker4661446181734336238.jpg', 'image/jpeg', 'public', 36072, '[]', '{\"uuid\":\"e5172fa4-8a64-44f4-ae8c-4eecac19af27\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 245, '2022-07-29 02:55:47', '2022-07-29 02:55:47'),
(255, 'App\\Models\\User', 15, 'avatar', 'scaled_image_picker4661446181734336238', 'scaled_image_picker4661446181734336238.jpg', 'image/jpeg', 'public', 36072, '[]', '{\"uuid\":\"e5172fa4-8a64-44f4-ae8c-4eecac19af27\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 246, '2022-07-29 02:56:52', '2022-07-29 02:56:52'),
(256, 'App\\Models\\Upload', 146, 'image', 'scaled_image_picker1270891660830902819', 'scaled_image_picker1270891660830902819.jpg', 'image/jpeg', 'public', 484398, '[]', '{\"uuid\":\"4910740f-fad5-455b-9bda-e0efc2830173\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 247, '2022-07-29 03:16:49', '2022-07-29 03:16:51'),
(257, 'App\\Models\\Option', 101, 'image', 'scaled_image_picker1270891660830902819', 'scaled_image_picker1270891660830902819.jpg', 'image/jpeg', 'public', 484398, '[]', '{\"uuid\":\"4910740f-fad5-455b-9bda-e0efc2830173\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 248, '2022-07-29 03:17:25', '2022-07-29 03:17:25'),
(258, 'App\\Models\\Option', 102, 'image', 'scaled_image_picker1270891660830902819', 'scaled_image_picker1270891660830902819.jpg', 'image/jpeg', 'public', 484398, '[]', '{\"uuid\":\"4910740f-fad5-455b-9bda-e0efc2830173\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 249, '2022-07-29 03:17:27', '2022-07-29 03:17:27'),
(259, 'App\\Models\\Upload', 147, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"8a3ff836-3af2-41f1-bc81-f8e2e726b906\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 250, '2022-07-30 02:02:25', '2022-07-30 02:02:25'),
(260, 'App\\Models\\EProvider', 36, 'image', '5dc01d000adf14af0e50e2374a3e29fb', '5dc01d000adf14af0e50e2374a3e29fb.jpg', 'image/jpeg', 'public', 83058, '[]', '{\"uuid\":\"8a3ff836-3af2-41f1-bc81-f8e2e726b906\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 251, '2022-07-30 02:02:33', '2022-07-30 02:02:33'),
(261, 'App\\Models\\Upload', 148, 'image', 'scaled_image_picker2431137668320827958', 'scaled_image_picker2431137668320827958.jpg', 'image/jpeg', 'public', 127860, '[]', '{\"uuid\":\"4fb9d75d-115e-4268-8876-bc6996e31e91\",\"user_id\":15,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 252, '2022-07-30 02:46:11', '2022-07-30 02:46:12'),
(263, 'App\\Models\\Upload', 150, 'avatar', 'scaled_image_picker8598411201704151627', 'scaled_image_picker8598411201704151627.jpg', 'image/jpeg', 'public', 146195, '[]', '{\"uuid\":\"2addabc2-52f2-46b1-a410-b91e17877ec9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 253, '2022-08-03 10:56:46', '2022-08-03 10:56:47'),
(264, 'App\\Models\\Upload', 151, 'avatar', 'scaled_image_picker4812895243474668072', 'scaled_image_picker4812895243474668072.jpg', 'image/jpeg', 'public', 149819, '[]', '{\"uuid\":\"3a99c873-0c4a-4f7c-8c93-fca400cdc3da\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 254, '2022-08-03 10:58:09', '2022-08-03 10:58:10'),
(265, 'App\\Models\\Upload', 152, 'avatar', 'scaled_image_picker7440036063864628683', 'scaled_image_picker7440036063864628683.jpg', 'image/jpeg', 'public', 149819, '[]', '{\"uuid\":\"7bf8d3b3-102a-46e0-b862-3b40dcce35ec\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 255, '2022-08-03 10:58:51', '2022-08-03 10:58:52'),
(266, 'App\\Models\\Upload', 153, 'avatar', 'scaled_image_picker2345668984380189451', 'scaled_image_picker2345668984380189451.jpg', 'image/jpeg', 'public', 149819, '[]', '{\"uuid\":\"181d8bbb-3f67-4c15-8e6c-3ff3e4c5ac3f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 256, '2022-08-03 11:30:26', '2022-08-03 11:30:27'),
(267, 'App\\Models\\Upload', 154, 'image', 'BID-NOW', 'BID-NOW.png', 'image/png', 'public', 1060750, '[]', '{\"uuid\":\"d8d4b38c-0f6c-455d-b8ab-4a53ab4804f4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 257, '2023-03-28 02:01:29', '2023-03-28 02:01:30'),
(269, 'App\\Models\\Upload', 155, 'image', 'header-square', 'header-square.png', 'image/png', 'public', 109451, '[]', '{\"uuid\":\"4bfce7d8-fd35-48f1-97a0-51d89be64755\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 259, '2023-03-28 02:03:44', '2023-03-28 02:03:44'),
(270, 'App\\Models\\Upload', 156, 'image', 'header-landscape', 'header-landscape.png', 'image/png', 'public', 593141, '[]', '{\"uuid\":\"d337cba3-7252-4bda-aa19-755dc0492eac\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 260, '2023-03-28 02:03:44', '2023-03-28 02:03:45'),
(271, 'App\\Models\\EService', 64, 'image', 'header-square', 'header-square.png', 'image/png', 'public', 109451, '[]', '{\"uuid\":\"4bfce7d8-fd35-48f1-97a0-51d89be64755\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 261, '2023-03-28 02:04:10', '2023-03-28 02:04:10'),
(272, 'App\\Models\\EService', 64, 'image', 'header-landscape', 'header-landscape.png', 'image/png', 'public', 593141, '[]', '{\"uuid\":\"d337cba3-7252-4bda-aa19-755dc0492eac\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 262, '2023-03-28 02:04:10', '2023-03-28 02:04:10'),
(273, 'App\\Models\\Upload', 157, 'image', 'property1', 'property1.png', 'image/png', 'public', 1706, '[]', '{\"uuid\":\"c9388646-971c-4601-b93f-81e37d9cf485\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 263, '2023-03-29 02:59:26', '2023-03-29 02:59:26'),
(274, 'App\\Models\\EService', 45, 'image', 'property1', 'property1.png', 'image/png', 'public', 1706, '[]', '{\"uuid\":\"c9388646-971c-4601-b93f-81e37d9cf485\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 264, '2023-03-29 02:59:30', '2023-03-29 02:59:30'),
(275, 'App\\Models\\Upload', 158, 'image', 'prperty2', 'prperty2.png', 'image/png', 'public', 6055, '[]', '{\"uuid\":\"1676c051-7aeb-41db-960d-60c7a989bb8d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 265, '2023-03-30 03:47:04', '2023-03-30 03:47:04'),
(277, 'App\\Models\\Upload', 159, 'image', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"421d1e91-1619-428b-966b-5dc73687a3bc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 267, '2023-03-30 03:54:47', '2023-03-30 03:54:47'),
(278, 'App\\Models\\Category', 79, 'image', '785c505b0527c64_services', '785c505b0527c64_services.png', 'image/png', 'public', 892, '[]', '{\"uuid\":\"f99e6175-ca1c-4ac7-ada3-7219ea6d51ad\",\"user_id\":9,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 268, '2023-03-30 03:56:34', '2023-03-30 03:56:34'),
(279, 'App\\Models\\Upload', 160, 'image', 'property', 'property.jpg', 'image/jpeg', 'public', 9183, '[]', '{\"uuid\":\"8edadea4-a3e4-4176-bb90-7bb5e943c90a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 269, '2023-03-30 04:07:19', '2023-03-30 04:07:19'),
(280, 'App\\Models\\EService', 43, 'image', 'property', 'property.jpg', 'image/jpeg', 'public', 9183, '[]', '{\"uuid\":\"8edadea4-a3e4-4176-bb90-7bb5e943c90a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 270, '2023-03-30 04:07:24', '2023-03-30 04:07:24'),
(281, 'App\\Models\\Upload', 161, 'image', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"df063240-4f66-462a-b682-51ebc766eacf\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 271, '2023-03-30 04:56:29', '2023-03-30 04:56:29'),
(282, 'App\\Models\\Upload', 162, 'image', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"e7052dad-efd9-4550-9cbd-db3af6d34460\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 272, '2023-03-30 04:56:46', '2023-03-30 04:56:46'),
(284, 'App\\Models\\Upload', 163, 'image', 'customers', 'customers.png', 'image/png', 'public', 3568, '[]', '{\"uuid\":\"55ef7115-5fec-494e-b371-f570209e12fb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 273, '2023-03-30 04:57:44', '2023-03-30 04:57:44'),
(286, 'App\\Models\\Upload', 164, 'image', 'villa', 'villa.jfif', 'image/jpeg', 'public', 7593, '[]', '{\"uuid\":\"d223a1d6-1bcc-47c4-b94c-d8baff45424b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 274, '2023-03-30 05:12:27', '2023-03-30 05:12:27'),
(288, 'App\\Models\\Upload', 165, 'avatar', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"6d2517af-eafb-48ac-93b9-fa0f5606b388\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 276, '2023-03-31 03:16:58', '2023-03-31 03:16:58'),
(289, 'App\\Models\\User', 19, 'avatar', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"6d2517af-eafb-48ac-93b9-fa0f5606b388\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 277, '2023-03-31 03:17:02', '2023-03-31 03:17:02'),
(290, 'App\\Models\\Upload', 166, 'image', 'customers', 'customers.png', 'image/png', 'public', 3568, '[]', '{\"uuid\":\"26abeff3-4f92-43dc-9a10-f3b18532030a\",\"user_id\":19,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 278, '2023-03-31 03:18:42', '2023-03-31 03:18:42'),
(291, 'App\\Models\\Upload', 167, 'image', 'prperty2', 'prperty2.png', 'image/png', 'public', 6055, '[]', '{\"uuid\":\"88fc25f7-783b-453c-8521-d2b042853be7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 279, '2023-03-31 03:34:49', '2023-03-31 03:34:49'),
(292, 'App\\Models\\Upload', 168, 'image', 'customers', 'customers.png', 'image/png', 'public', 3568, '[]', '{\"uuid\":\"ed8ed53b-efa5-4993-ba8f-f82ce131ecdb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 280, '2023-03-31 03:34:55', '2023-03-31 03:34:55'),
(294, 'App\\Models\\Upload', 169, 'image', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"8e4eeb25-eac6-4807-9add-2af233c73334\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 281, '2023-03-31 03:41:01', '2023-03-31 03:41:02'),
(295, 'App\\Models\\Upload', 170, 'image', 'customers', 'customers.png', 'image/png', 'public', 3568, '[]', '{\"uuid\":\"aee1aa8d-c361-4832-8997-274941a82da9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 282, '2023-03-31 03:41:09', '2023-03-31 03:41:09'),
(296, 'App\\Models\\Upload', 171, 'image', 'agent2', 'agent2.png', 'image/png', 'public', 3989, '[]', '{\"uuid\":\"233cacd4-4d94-40ba-9214-d6a9d3f1da67\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 283, '2023-03-31 03:41:15', '2023-03-31 03:41:15'),
(298, 'App\\Models\\Upload', 172, 'image', 'customers', 'customers.png', 'image/png', 'public', 3568, '[]', '{\"uuid\":\"3b78a9ff-df6a-4701-b5b1-b7c70251848f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 284, '2023-04-03 05:02:01', '2023-04-03 05:02:01'),
(299, 'App\\Models\\Gallery', 30, 'image', 'customers', 'customers.png', 'image/png', 'public', 3568, '[]', '{\"uuid\":\"3b78a9ff-df6a-4701-b5b1-b7c70251848f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 285, '2023-04-03 05:02:04', '2023-04-03 05:02:04'),
(300, 'App\\Models\\Upload', 173, 'image', 'prperty2', 'prperty2.png', 'image/png', 'public', 6055, '[]', '{\"uuid\":\"cca51944-1685-4784-ad8e-e1b220f0b4f1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 286, '2023-04-04 01:02:19', '2023-04-04 01:02:19'),
(301, 'App\\Models\\Gallery', 31, 'image', 'prperty2', 'prperty2.png', 'image/png', 'public', 6055, '[]', '{\"uuid\":\"cca51944-1685-4784-ad8e-e1b220f0b4f1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 287, '2023-04-04 01:02:35', '2023-04-04 01:02:35'),
(302, 'App\\Models\\Upload', 174, 'image', 'property1', 'property1.png', 'image/png', 'public', 1706, '[]', '{\"uuid\":\"6601ebf1-92e7-4972-ab01-bdf532424317\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 288, '2023-04-10 00:57:52', '2023-04-10 00:57:52'),
(303, 'App\\Models\\EProvider', 37, 'image', 'property1', 'property1.png', 'image/png', 'public', 1706, '[]', '{\"uuid\":\"6601ebf1-92e7-4972-ab01-bdf532424317\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 289, '2023-04-10 00:58:09', '2023-04-10 00:58:09'),
(304, 'App\\Models\\Upload', 175, 'image', 'cleaning', 'cleaning.jpg', 'image/jpeg', 'public', 5574, '[]', '{\"uuid\":\"82dd42a0-b71b-4d89-84cb-7fc09254ebf7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 290, '2023-04-10 01:01:55', '2023-04-10 01:01:55'),
(305, 'App\\Models\\EService', 65, 'image', 'cleaning', 'cleaning.jpg', 'image/jpeg', 'public', 5574, '[]', '{\"uuid\":\"82dd42a0-b71b-4d89-84cb-7fc09254ebf7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 291, '2023-04-10 01:11:17', '2023-04-10 01:11:17'),
(306, 'App\\Models\\Upload', 176, 'image', 'carpenter', 'carpenter.jpg', 'image/jpeg', 'public', 9584, '[]', '{\"uuid\":\"763b9ee4-f34d-48f4-81a5-812d0124b247\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 292, '2023-04-10 01:18:33', '2023-04-10 01:18:33'),
(307, 'App\\Models\\Upload', 177, 'image', 'carpenter', 'carpenter.jpg', 'image/jpeg', 'public', 9584, '[]', '{\"uuid\":\"c9f5d964-50f1-4082-ac2c-f669e11f8be3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 293, '2023-04-10 01:24:58', '2023-04-10 01:24:59'),
(308, 'App\\Models\\EService', 66, 'image', 'carpenter', 'carpenter.jpg', 'image/jpeg', 'public', 9584, '[]', '{\"uuid\":\"c9f5d964-50f1-4082-ac2c-f669e11f8be3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 294, '2023-04-10 01:32:23', '2023-04-10 01:32:23'),
(309, 'App\\Models\\Upload', 178, 'image', 'buety', 'buety.jpg', 'image/jpeg', 'public', 8938, '[]', '{\"uuid\":\"0b239ce0-8d34-4cef-89c4-5ee767f6befe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 295, '2023-04-10 01:52:56', '2023-04-10 01:52:57'),
(310, 'App\\Models\\EService', 67, 'image', 'buety', 'buety.jpg', 'image/jpeg', 'public', 8938, '[]', '{\"uuid\":\"0b239ce0-8d34-4cef-89c4-5ee767f6befe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 296, '2023-04-10 01:53:07', '2023-04-10 01:53:07'),
(311, 'App\\Models\\Upload', 179, 'image', 'carpenter', 'carpenter.jpg', 'image/jpeg', 'public', 9584, '[]', '{\"uuid\":\"44071ad5-8c34-4006-92f2-9f0f8707e797\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 297, '2023-04-10 02:40:49', '2023-04-10 02:40:49'),
(312, 'App\\Models\\Upload', 180, 'image', 'buety', 'buety.jpg', 'image/jpeg', 'public', 8938, '[]', '{\"uuid\":\"4c243e45-4cfd-4a7d-9d10-6b694a8041d3\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 298, '2023-05-03 04:14:28', '2023-05-03 04:14:28'),
(313, 'App\\Models\\Gallery', 32, 'image', 'buety', 'buety.jpg', 'image/jpeg', 'public', 8938, '[]', '{\"uuid\":\"4c243e45-4cfd-4a7d-9d10-6b694a8041d3\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 299, '2023-05-03 04:14:36', '2023-05-03 04:14:36'),
(314, 'App\\Models\\Upload', 181, 'avatar', 'Screenshot 2023-05-04 at 9.27.32 PM', 'Screenshot-2023-05-04-at-9.27.32-PM.png', 'image/png', 'public', 9442, '[]', '{\"uuid\":\"31257c82-9c6c-4c5d-974c-1cb7e2b1e954\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 300, '2023-05-05 00:24:26', '2023-05-05 00:24:26'),
(316, 'App\\Models\\Upload', 182, 'image', 'Screenshot 2023-04-20 at 1.30.44 PM', 'Screenshot-2023-04-20-at-1.30.44-PM.png', 'image/png', 'public', 95333, '[]', '{\"uuid\":\"079ab976-ef41-4ae1-9bdb-b834c7795edb\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 302, '2023-05-05 00:30:15', '2023-05-05 00:30:16'),
(317, 'App\\Models\\Upload', 183, 'image', 'Screenshot 2023-04-13 at 2.54.09 PM (2)', 'Screenshot-2023-04-13-at-2.54.09-PM-(2).png', 'image/png', 'public', 7238735, '[]', '{\"uuid\":\"67dc7cf4-68b5-4153-83b8-47ff4ddc6e5e\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 303, '2023-05-05 00:30:26', '2023-05-05 00:30:28'),
(320, 'App\\Models\\Upload', 184, 'image', 'Screenshot 2023-05-04 at 9.25.45 PM', 'Screenshot-2023-05-04-at-9.25.45-PM.png', 'image/png', 'public', 23125, '[]', '{\"uuid\":\"d9c8cc17-1f59-4364-8f54-21e56d2b05dd\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 306, '2023-05-05 00:32:12', '2023-05-05 00:32:12'),
(321, 'App\\Models\\Upload', 185, 'image', 'Screenshot 2023-05-04 at 9.26.51 PM', 'Screenshot-2023-05-04-at-9.26.51-PM.png', 'image/png', 'public', 21657, '[]', '{\"uuid\":\"2d7d8221-5c4b-4276-b491-cb5cd005039c\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 307, '2023-05-05 00:32:12', '2023-05-05 00:32:12'),
(322, 'App\\Models\\EService', 69, 'image', 'Screenshot 2023-05-04 at 9.25.45 PM', 'Screenshot-2023-05-04-at-9.25.45-PM.png', 'image/png', 'public', 23125, '[]', '{\"uuid\":\"d9c8cc17-1f59-4364-8f54-21e56d2b05dd\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 308, '2023-05-05 00:32:27', '2023-05-05 00:32:27'),
(323, 'App\\Models\\EService', 69, 'image', 'Screenshot 2023-05-04 at 9.26.51 PM', 'Screenshot-2023-05-04-at-9.26.51-PM.png', 'image/png', 'public', 21657, '[]', '{\"uuid\":\"2d7d8221-5c4b-4276-b491-cb5cd005039c\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 309, '2023-05-05 00:32:28', '2023-05-05 00:32:28'),
(324, 'App\\Models\\Upload', 186, 'image', 'Screenshot 2023-04-20 at 1.30.44 PM', 'Screenshot-2023-04-20-at-1.30.44-PM.png', 'image/png', 'public', 95333, '[]', '{\"uuid\":\"720c5700-90af-496a-b628-87f2dde240a1\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 310, '2023-05-05 00:33:34', '2023-05-05 00:33:34'),
(325, 'App\\Models\\Gallery', 33, 'image', 'Screenshot 2023-04-20 at 1.30.44 PM', 'Screenshot-2023-04-20-at-1.30.44-PM.png', 'image/png', 'public', 95333, '[]', '{\"uuid\":\"720c5700-90af-496a-b628-87f2dde240a1\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 311, '2023-05-05 00:33:36', '2023-05-05 00:33:36'),
(326, 'App\\Models\\Upload', 187, 'avatar', 'scaled_IMG-20230515-WA0007', 'scaled_IMG-20230515-WA0007.jpg', 'image/jpeg', 'public', 101353, '[]', '{\"uuid\":\"8608e088-4b8b-4ed3-8258-c0793301daa9\",\"user_id\":75,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 312, '2023-05-16 00:11:05', '2023-05-16 00:11:05'),
(327, 'App\\Models\\Upload', 188, 'avatar', 'scaled_IMG-20230515-WA0007', 'scaled_IMG-20230515-WA0007.jpg', 'image/jpeg', 'public', 101353, '[]', '{\"uuid\":\"cd76d6d4-b369-4772-b281-bee0bbdd0c5e\",\"user_id\":75,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 313, '2023-05-16 00:13:27', '2023-05-16 00:13:27'),
(329, 'App\\Models\\Upload', 189, 'image', 'scaled_tree-gf9ba261f8_1280', 'scaled_tree-gf9ba261f8_1280.jpg', 'image/jpeg', 'public', 111432, '[]', '{\"uuid\":\"e8de6fb6-2528-4a27-9b84-ab073966327b\",\"user_id\":103,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 314, '2023-05-23 02:00:53', '2023-05-23 02:00:53'),
(330, 'App\\Models\\Upload', 190, 'image', 'scaled_tree-gf9ba261f8_1280', 'scaled_tree-gf9ba261f8_1280.jpg', 'image/jpeg', 'public', 111432, '[]', '{\"uuid\":\"5cc8c872-4532-401c-8802-b98ceb8deb39\",\"user_id\":103,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 315, '2023-05-23 02:02:56', '2023-05-23 02:02:56'),
(331, 'App\\Models\\Upload', 191, 'image', 'scaled_tree-gf9ba261f8_1280', 'scaled_tree-gf9ba261f8_1280.jpg', 'image/jpeg', 'public', 111432, '[]', '{\"uuid\":\"d052d82d-fd7b-437a-8012-7f986e8e4c89\",\"user_id\":103,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 316, '2023-05-23 02:33:56', '2023-05-23 02:33:56'),
(332, 'App\\Models\\EProvider', 87, 'image', 'scaled_tree-gf9ba261f8_1280', 'scaled_tree-gf9ba261f8_1280.jpg', 'image/jpeg', 'public', 111432, '[]', '{\"uuid\":\"d052d82d-fd7b-437a-8012-7f986e8e4c89\",\"user_id\":103,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 317, '2023-05-23 02:35:06', '2023-05-23 02:35:06'),
(333, 'App\\Models\\Upload', 192, 'image', 'scaled_tree-gf9ba261f8_1280', 'scaled_tree-gf9ba261f8_1280.jpg', 'image/jpeg', 'public', 111432, '[]', '{\"uuid\":\"8e973d6c-c1f5-4c7f-ba1d-a33bdc698f63\",\"user_id\":103,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 318, '2023-05-23 03:40:54', '2023-05-23 03:40:55'),
(335, 'App\\Models\\Upload', 193, 'image', 'scaled_tree-gf9ba261f8_1280', 'scaled_tree-gf9ba261f8_1280.jpg', 'image/jpeg', 'public', 111432, '[]', '{\"uuid\":\"3e14d6ff-c7f0-4a21-a66f-4df5acc8f667\",\"user_id\":104,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 319, '2023-05-23 06:49:10', '2023-05-23 06:49:10'),
(336, 'App\\Models\\Upload', 194, 'image', 'scaled_tree-gf9ba261f8_1280', 'scaled_tree-gf9ba261f8_1280.jpg', 'image/jpeg', 'public', 111432, '[]', '{\"uuid\":\"daea6a7f-5a6e-4be4-9000-3a6b2bd8b019\",\"user_id\":104,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 320, '2023-05-23 06:51:12', '2023-05-23 06:51:12'),
(338, 'App\\Models\\Upload', 195, 'image', 'scaled_whatsapp cover', 'scaled_whatsapp-cover.png', 'image/png', 'public', 518033, '[]', '{\"uuid\":\"baaa0697-b7ed-47ee-a7c3-003f5deacb7f\",\"user_id\":109,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 321, '2023-05-25 03:03:35', '2023-05-25 03:03:35'),
(340, 'App\\Models\\Upload', 196, 'image', 'scaled_hope-Ar', 'scaled_hope-Ar.png', 'image/png', 'public', 4715, '[]', '{\"uuid\":\"c320b49a-519a-4d13-9357-f71e2413ae97\",\"user_id\":109,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 323, '2023-05-25 03:33:30', '2023-05-25 03:33:31'),
(341, 'App\\Models\\EService', 77, 'image', 'scaled_hope-Ar', 'scaled_hope-Ar.png', 'image/png', 'public', 4715, '[]', '{\"uuid\":\"c320b49a-519a-4d13-9357-f71e2413ae97\",\"user_id\":109,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 324, '2023-05-25 03:36:00', '2023-05-25 03:36:00'),
(342, 'App\\Models\\Upload', 197, 'avatar', 'scaled_app icon', 'scaled_app-icon.png', 'image/png', 'public', 17058, '[]', '{\"uuid\":\"b6062671-7841-4e20-9102-0ad2e910eaa5\",\"user_id\":141,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 325, '2023-06-20 03:14:33', '2023-06-20 03:14:33'),
(344, 'App\\Models\\Upload', 198, 'avatar', 'image_picker_2B9E1A2E-22AD-4A4B-9D85-143E906413EB-6485-0000030B119F742D', 'image_picker_2B9E1A2E-22AD-4A4B-9D85-143E906413EB-6485-0000030B119F742D.jpg', 'image/jpeg', 'public', 250061, '[]', '{\"uuid\":\"db1cb76e-fe31-4493-9d02-94084c11c9b5\",\"user_id\":142,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 326, '2023-06-26 00:57:52', '2023-06-26 00:57:52'),
(345, 'App\\Models\\Upload', 199, 'image', 'scaled_IMG-20230626-WA0000', 'scaled_IMG-20230626-WA0000.jpg', 'image/jpeg', 'public', 52729, '[]', '{\"uuid\":\"b45ea3ce-0f01-4427-b1ed-5be20286667c\",\"user_id\":143,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 327, '2023-06-26 01:36:12', '2023-06-26 01:36:12'),
(346, 'App\\Models\\Upload', 200, 'image', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"8e9b4fff-270e-4d6d-9ae3-54b81bb80705\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 328, '2023-06-26 01:46:23', '2023-06-26 01:46:23'),
(347, 'App\\Models\\Upload', 201, 'image', 'scaled_IMG-20230626-WA0000', 'scaled_IMG-20230626-WA0000.jpg', 'image/jpeg', 'public', 52729, '[]', '{\"uuid\":\"54096882-9f36-452c-ab95-8ac3315bae00\",\"user_id\":143,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 329, '2023-06-26 01:49:25', '2023-06-26 01:49:26'),
(348, 'App\\Models\\Upload', 202, 'image', 'scaled_IMG-20230626-WA0000', 'scaled_IMG-20230626-WA0000.jpg', 'image/jpeg', 'public', 52729, '[]', '{\"uuid\":\"c61fcd1d-130a-4d6f-be9c-9c099ae8d98e\",\"user_id\":143,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 330, '2023-06-26 02:48:19', '2023-06-26 02:48:19'),
(349, 'App\\Models\\Upload', 203, 'image', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"35f16e79-9882-4da6-bb0d-4231e3f41a28\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 331, '2023-06-26 02:54:21', '2023-06-26 02:54:21'),
(350, 'App\\Models\\Upload', 204, 'image', 'cleaning', 'cleaning.jpg', 'image/jpeg', 'public', 5574, '[]', '{\"uuid\":\"e5e7666e-cdc6-40e9-8503-af5da344dffd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 332, '2023-06-26 03:04:27', '2023-06-26 03:04:27'),
(352, 'App\\Models\\Upload', 205, 'avatar', 'user', 'user.png', 'image/png', 'public', 3545, '[]', '{\"uuid\":\"ad17f88a-973d-4d54-ad33-d09c9a8babc3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 333, '2023-07-03 02:02:09', '2023-07-03 02:02:09'),
(353, 'App\\Models\\Upload', 206, 'avatar', 'user', 'user.png', 'image/png', 'public', 3545, '[]', '{\"uuid\":\"29cc255f-f163-4fe7-bc49-4e5886cc6cc9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 334, '2023-07-03 02:09:35', '2023-07-03 02:09:35'),
(354, 'App\\Models\\Upload', 207, 'avatar', 'user', 'user.png', 'image/png', 'public', 3545, '[]', '{\"uuid\":\"726baf29-58fb-4004-b328-6ac3d35d7271\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 335, '2023-07-03 02:10:17', '2023-07-03 02:10:18'),
(355, 'App\\Models\\User', 55, 'avatar', 'user', 'user.png', 'image/png', 'public', 3545, '[]', '{\"uuid\":\"726baf29-58fb-4004-b328-6ac3d35d7271\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 336, '2023-07-03 02:10:20', '2023-07-03 02:10:20'),
(356, 'App\\Models\\Upload', 208, 'avatar', 'customer', 'customer.png', 'image/png', 'public', 869, '[]', '{\"uuid\":\"1f58a7b6-4751-4e95-8714-d89f5971f036\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 337, '2023-07-03 02:51:27', '2023-07-03 02:51:27'),
(357, 'App\\Models\\Upload', 209, 'avatar', 'customer', 'customer.png', 'image/png', 'public', 869, '[]', '{\"uuid\":\"35fe3655-9f7b-447e-b994-91f2b9d0d806\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 338, '2023-07-03 02:52:12', '2023-07-03 02:52:12'),
(359, 'App\\Models\\Upload', 210, 'avatar', 'customer', 'customer.png', 'image/png', 'public', 869, '[]', '{\"uuid\":\"a6769743-682c-4540-a0cf-51f96fd812b0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 339, '2023-07-03 03:03:01', '2023-07-03 03:03:01'),
(361, 'App\\Models\\Upload', 211, 'avatar', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"7d6f39be-f0de-44a9-a6e3-ac175b9cf6fe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 340, '2023-07-04 01:49:38', '2023-07-04 01:49:38'),
(362, 'App\\Models\\Upload', 212, 'avatar', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"4b47bfa0-88da-42c3-a9ac-a1d37af2c858\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 341, '2023-07-04 01:50:02', '2023-07-04 01:50:02'),
(364, 'App\\Models\\Upload', 213, 'image', 'image_picker_C79B10A4-7D1D-4C57-8BD0-BCB8223A47A5-9371-0000066071B942D6', 'image_picker_C79B10A4-7D1D-4C57-8BD0-BCB8223A47A5-9371-0000066071B942D6.jpg', 'image/jpeg', 'public', 683605, '[]', '{\"uuid\":\"0f11b4e3-c5d1-4d4d-9962-5fbc1702c859\",\"user_id\":151,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 342, '2023-07-10 01:35:48', '2023-07-10 01:35:50'),
(366, 'App\\Models\\Upload', 214, 'image', 'scaled_IMG-20230709-WA0002', 'scaled_IMG-20230709-WA0002.jpg', 'image/jpeg', 'public', 114082, '[]', '{\"uuid\":\"79edab37-168e-47fd-9254-df6a507dc20a\",\"user_id\":151,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 344, '2023-07-10 01:43:41', '2023-07-10 01:43:41'),
(367, 'App\\Models\\EProvider', 164, 'image', 'scaled_IMG-20230709-WA0002', 'scaled_IMG-20230709-WA0002.jpg', 'image/jpeg', 'public', 114082, '[]', '{\"uuid\":\"79edab37-168e-47fd-9254-df6a507dc20a\",\"user_id\":151,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 345, '2023-07-10 01:44:33', '2023-07-10 01:44:33'),
(368, 'App\\Models\\Upload', 215, 'image', 'image_picker_09543583-C3DA-4DC2-BB98-CC28431BC098-12269-000008AAF73BACF7', 'image_picker_09543583-C3DA-4DC2-BB98-CC28431BC098-12269-000008AAF73BACF7.jpg', 'image/jpeg', 'public', 281881, '[]', '{\"uuid\":\"dc1c2581-d3d9-4103-afe3-e97aee997dbc\",\"user_id\":165,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 346, '2023-07-12 01:26:36', '2023-07-12 01:26:37'),
(369, 'App\\Models\\Upload', 216, 'image', 'image_picker_47327101-8AB5-4C63-9FC5-8BC9FFBD0C9C-12269-000008AAFE7698A3', 'image_picker_47327101-8AB5-4C63-9FC5-8BC9FFBD0C9C-12269-000008AAFE7698A3.jpg', 'image/jpeg', 'public', 231365, '[]', '{\"uuid\":\"36c813e7-680b-42c6-bc55-a65614d86407\",\"user_id\":165,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 347, '2023-07-12 01:26:42', '2023-07-12 01:26:42'),
(372, 'App\\Models\\Upload', 217, 'image', 'scaled_Screenshot_20230712_120926_Chrome', 'scaled_Screenshot_20230712_120926_Chrome.jpg', 'image/jpeg', 'public', 222800, '[]', '{\"uuid\":\"4377d4c4-aeca-4fe3-8add-340db39eb009\",\"user_id\":165,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 350, '2023-07-12 02:26:58', '2023-07-12 02:26:59'),
(373, 'App\\Models\\Upload', 218, 'image', 'Screen Shot 2024-03-25 at 9.59.10 AM', 'Screen-Shot-2024-03-25-at-9.59.10-AM.png', 'image/png', 'public', 56345, '[]', '{\"uuid\":\"35932eeb-dd56-4073-992a-3bdcd894fc52\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 351, '2024-03-25 01:27:45', '2024-03-25 01:27:46'),
(374, 'App\\Models\\EService', 82, 'image', 'Screen Shot 2024-03-25 at 9.59.10 AM', 'Screen-Shot-2024-03-25-at-9.59.10-AM.png', 'image/png', 'public', 56345, '[]', '{\"uuid\":\"35932eeb-dd56-4073-992a-3bdcd894fc52\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 352, '2024-03-25 01:28:01', '2024-03-25 01:28:01'),
(375, 'App\\Models\\User', 176, 'avatar', 'agent', 'agent.png', 'image/png', 'public', 4749, '[]', '{\"uuid\":\"7d6f39be-f0de-44a9-a6e3-ac175b9cf6fe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 353, '2024-03-28 06:18:21', '2024-03-28 06:18:21'),
(376, 'App\\Models\\Upload', 219, 'image', 'scaled_1000107218', 'scaled_1000107218.jpg', 'image/jpeg', 'public', 1004213, '[]', '{\"uuid\":\"b8c172ff-65a7-4c73-97f6-94f6e23e1574\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 354, '2024-03-29 01:07:55', '2024-03-29 01:07:58'),
(377, 'App\\Models\\Upload', 220, 'image', 'scaled_1000107337', 'scaled_1000107337.jpg', 'image/jpeg', 'public', 2033060, '[]', '{\"uuid\":\"b7a39951-c75f-44b9-ae13-1a6cc04e53c2\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 355, '2024-03-29 01:08:11', '2024-03-29 01:08:14'),
(378, 'App\\Models\\Upload', 221, 'image', 'scaled_1000022136', 'scaled_1000022136.jpg', 'image/jpeg', 'public', 70615, '[]', '{\"uuid\":\"fb2a4d59-0eba-4693-98fd-c59e2a691bef\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 356, '2024-03-29 01:17:41', '2024-03-29 01:17:42'),
(380, 'App\\Models\\Upload', 222, 'image', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"07b26c70-5bb3-4018-8cd1-778d992f81de\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 358, '2024-03-29 05:25:08', '2024-03-29 05:25:08'),
(383, 'App\\Models\\Upload', 224, 'avatar', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"47a5590a-8449-44e4-956b-8abbacd1fe4a\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 360, '2024-03-29 05:36:24', '2024-03-29 05:36:24'),
(384, 'App\\Models\\Upload', 225, 'avatar', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"472c5e64-26e6-4553-a30e-7c5f857bcc57\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 361, '2024-03-29 05:37:21', '2024-03-29 05:37:21'),
(386, 'App\\Models\\Upload', 226, 'image', 'scaled_1000036301', 'scaled_1000036301.jpg', 'image/jpeg', 'public', 41569, '[]', '{\"uuid\":\"7db2cb3a-c11b-412a-a1ad-628620adf44d\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 363, '2024-03-29 11:14:43', '2024-03-29 11:14:44'),
(387, 'App\\Models\\Upload', 227, 'image', 'scaled_1000035091', 'scaled_1000035091.jpg', 'image/jpeg', 'public', 19785, '[]', '{\"uuid\":\"12dc4bc1-08b1-4e78-9b9b-5e7fc3b3ebd2\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 364, '2024-03-29 12:15:42', '2024-03-29 12:15:42'),
(388, 'App\\Models\\Upload', 228, 'image', 'scaled_1000035091', 'scaled_1000035091.jpg', 'image/jpeg', 'public', 19785, '[]', '{\"uuid\":\"6be7f43f-876a-491d-8028-6eef628a43ae\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 365, '2024-03-29 12:16:10', '2024-03-29 12:16:10'),
(389, 'App\\Models\\Upload', 229, 'image', 'scaled_1000023784', 'scaled_1000023784.jpg', 'image/jpeg', 'public', 49525, '[]', '{\"uuid\":\"4b3680a1-0cbe-4c35-8fba-d0c6497fb264\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 366, '2024-03-29 12:38:17', '2024-03-29 12:38:17'),
(390, 'App\\Models\\Upload', 230, 'image', 'scaled_1000023784', 'scaled_1000023784.jpg', 'image/jpeg', 'public', 49525, '[]', '{\"uuid\":\"44a2ab18-72c1-4736-9628-49c45f83075a\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 367, '2024-03-29 12:39:26', '2024-03-29 12:39:26'),
(393, 'App\\Models\\Upload', 231, 'image', 'scaled_1000030600', 'scaled_1000030600.jpg', 'image/jpeg', 'public', 1287004, '[]', '{\"uuid\":\"82e96077-5a1f-47ba-8754-8b4f743c9bfb\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 370, '2024-03-29 13:06:11', '2024-03-29 13:06:12'),
(395, 'App\\Models\\Upload', 232, 'image', 'scaled_1000035091', 'scaled_1000035091.jpg', 'image/jpeg', 'public', 19785, '[]', '{\"uuid\":\"0c2f3b0d-72c7-40f8-a243-056364c873ea\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 371, '2024-03-29 13:14:28', '2024-03-29 13:14:28'),
(397, 'App\\Models\\Upload', 233, 'image', 'scaled_1000107335', 'scaled_1000107335.jpg', 'image/jpeg', 'public', 4049, '[]', '{\"uuid\":\"5882d96b-c024-4141-9ccc-91dd29ec5d60\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 372, '2024-03-30 01:50:10', '2024-03-30 01:50:10'),
(399, 'App\\Models\\Upload', 234, 'image', 'scaled_1000107337', 'scaled_1000107337.jpg', 'image/jpeg', 'public', 2033060, '[]', '{\"uuid\":\"f432f502-5d62-49da-a97a-6373c28a7f7b\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 374, '2024-03-31 23:41:54', '2024-03-31 23:41:56'),
(402, 'App\\Models\\EService', 85, 'image', 'scaled_1000107337', 'scaled_1000107337.jpg', 'image/jpeg', 'public', 2033060, '[]', '{\"uuid\":\"f432f502-5d62-49da-a97a-6373c28a7f7b\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 377, '2024-03-31 23:43:20', '2024-03-31 23:43:20'),
(403, 'App\\Models\\Upload', 235, 'image', 'scaled_1000107119', 'scaled_1000107119.jpg', 'image/jpeg', 'public', 157083, '[]', '{\"uuid\":\"cda55e97-1aab-4dd4-8bf2-676e9ce5d288\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 378, '2024-03-31 23:45:09', '2024-03-31 23:45:09'),
(406, 'App\\Models\\Upload', 236, 'image', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"73fd7e00-242e-4e54-8ec1-7ca6c9228f8a\",\"user_id\":184,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 379, '2024-04-01 03:09:03', '2024-04-01 03:09:03'),
(407, 'App\\Models\\Option', 109, 'image', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"73fd7e00-242e-4e54-8ec1-7ca6c9228f8a\",\"user_id\":184,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 380, '2024-04-01 03:09:21', '2024-04-01 03:09:21'),
(408, 'App\\Models\\Upload', 237, 'image', 'property2', 'property2.jpeg', 'image/jpeg', 'public', 11815, '[]', '{\"uuid\":\"042401d2-7430-4d2e-a0ab-d815c58e42a3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 381, '2024-04-01 04:00:50', '2024-04-01 04:00:50'),
(409, 'App\\Models\\EService', 90, 'image', 'property2', 'property2.jpeg', 'image/jpeg', 'public', 11815, '[]', '{\"uuid\":\"042401d2-7430-4d2e-a0ab-d815c58e42a3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 382, '2024-04-01 04:01:11', '2024-04-01 04:01:11'),
(410, 'App\\Models\\Upload', 238, 'image', 'scaled_1000108588', 'scaled_1000108588.jpg', 'image/jpeg', 'public', 204364, '[]', '{\"uuid\":\"7efa208c-eb2e-4434-99cf-25dca9063dbe\",\"user_id\":209,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 383, '2024-04-08 01:13:38', '2024-04-08 01:13:39'),
(411, 'App\\Models\\EService', 91, 'image', 'scaled_1000108588', 'scaled_1000108588.jpg', 'image/jpeg', 'public', 204364, '[]', '{\"uuid\":\"7efa208c-eb2e-4434-99cf-25dca9063dbe\",\"user_id\":209,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 384, '2024-04-08 01:14:16', '2024-04-08 01:14:16'),
(412, 'App\\Models\\Upload', 239, 'image', 'scaled_1000108630', 'scaled_1000108630.jpg', 'image/jpeg', 'public', 71181, '[]', '{\"uuid\":\"8fc17b09-d10e-46a9-8150-b7e47a2803a6\",\"user_id\":209,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 385, '2024-04-08 01:14:37', '2024-04-08 01:14:38'),
(413, 'App\\Models\\EService', 92, 'image', 'scaled_1000108630', 'scaled_1000108630.jpg', 'image/jpeg', 'public', 71181, '[]', '{\"uuid\":\"8fc17b09-d10e-46a9-8150-b7e47a2803a6\",\"user_id\":209,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 386, '2024-04-08 01:15:01', '2024-04-08 01:15:01');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(414, 'App\\Models\\Upload', 240, 'image', 'scaled_1000115740', 'scaled_1000115740.jpg', 'image/jpeg', 'public', 72610, '[]', '{\"uuid\":\"24dfe176-f235-4d7e-b653-9fb208b7ab22\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 387, '2024-05-08 02:55:32', '2024-05-08 02:55:32'),
(417, 'App\\Models\\Upload', 241, 'image', 'scaled_1000115752', 'scaled_1000115752.jpg', 'image/jpeg', 'public', 44113, '[]', '{\"uuid\":\"770d97d7-0267-4311-b57b-7684e533a6ca\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 390, '2024-05-08 03:00:54', '2024-05-08 03:00:54'),
(418, 'App\\Models\\EService', 93, 'image', 'scaled_1000115752', 'scaled_1000115752.jpg', 'image/jpeg', 'public', 44113, '[]', '{\"uuid\":\"770d97d7-0267-4311-b57b-7684e533a6ca\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 391, '2024-05-08 03:02:10', '2024-05-08 03:02:10'),
(419, 'App\\Models\\Upload', 242, 'image', 'scaled_1000115722', 'scaled_1000115722.jpg', 'image/jpeg', 'public', 51912, '[]', '{\"uuid\":\"70298d39-5ec8-42d4-ad91-f9d67460c2fc\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 392, '2024-05-08 03:03:10', '2024-05-08 03:03:10'),
(421, 'App\\Models\\Upload', 243, 'image', 'scaled_1000114858', 'scaled_1000114858.jpg', 'image/jpeg', 'public', 178322, '[]', '{\"uuid\":\"fd31b79f-d2c7-49d4-83b0-41975a208858\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 394, '2024-05-08 03:06:21', '2024-05-08 03:06:21'),
(423, 'App\\Models\\Upload', 244, 'image', 'scaled_1000113825', 'scaled_1000113825.jpg', 'image/jpeg', 'public', 182087, '[]', '{\"uuid\":\"1a5cbd99-2f35-479a-b026-9f67affe9843\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 396, '2024-05-08 03:08:01', '2024-05-08 03:08:02'),
(424, 'App\\Models\\EService', 94, 'image', 'scaled_1000113825', 'scaled_1000113825.jpg', 'image/jpeg', 'public', 182087, '[]', '{\"uuid\":\"1a5cbd99-2f35-479a-b026-9f67affe9843\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 397, '2024-05-08 03:08:45', '2024-05-08 03:08:45'),
(425, 'App\\Models\\Upload', 245, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"92b8921a-062c-4c3e-89d7-aee95a07a0ab\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 398, '2024-05-08 03:10:03', '2024-05-08 03:10:03'),
(426, 'App\\Models\\EService', 95, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"92b8921a-062c-4c3e-89d7-aee95a07a0ab\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 399, '2024-05-08 03:10:34', '2024-05-08 03:10:34'),
(427, 'App\\Models\\EService', 96, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"92b8921a-062c-4c3e-89d7-aee95a07a0ab\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 400, '2024-05-08 03:10:35', '2024-05-08 03:10:35'),
(428, 'App\\Models\\Upload', 246, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"35729a42-b732-4c9f-af80-8fe4f6e8a471\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 401, '2024-05-08 03:10:47', '2024-05-08 03:10:48'),
(429, 'App\\Models\\Option', 110, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"35729a42-b732-4c9f-af80-8fe4f6e8a471\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 402, '2024-05-08 03:11:04', '2024-05-08 03:11:04'),
(430, 'App\\Models\\Upload', 247, 'avatar', 'scaled_1000113507', 'scaled_1000113507.jpg', 'image/jpeg', 'public', 2254, '[]', '{\"uuid\":\"e9a60790-5bf4-45be-97c6-c2b66e42afcd\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 403, '2024-05-08 03:23:09', '2024-05-08 03:23:09'),
(432, 'App\\Models\\Upload', 248, 'image', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"a07b2b6e-b95c-4818-b1a6-6bc9caca37fa\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 404, '2024-05-08 05:12:13', '2024-05-08 05:12:13'),
(433, 'App\\Models\\EService', 97, 'image', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"a07b2b6e-b95c-4818-b1a6-6bc9caca37fa\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 405, '2024-05-08 05:13:04', '2024-05-08 05:13:04'),
(434, 'App\\Models\\Upload', 249, 'image', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"7df79042-38bb-4528-92dc-dd25a43ee192\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 406, '2024-05-08 05:16:10', '2024-05-08 05:16:10'),
(435, 'App\\Models\\EService', 98, 'image', 'scaled_download', 'scaled_download.png', 'image/jpeg', 'public', 7224, '[]', '{\"uuid\":\"7df79042-38bb-4528-92dc-dd25a43ee192\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 407, '2024-05-08 05:16:46', '2024-05-08 05:16:46'),
(436, 'App\\Models\\Upload', 250, 'image', 'scaled_1000115891', 'scaled_1000115891.jpg', 'image/jpeg', 'public', 45048, '[]', '{\"uuid\":\"28724436-f570-4a45-8abc-c05c47e17843\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 408, '2024-05-08 05:18:40', '2024-05-08 05:18:40'),
(437, 'App\\Models\\EService', 99, 'image', 'scaled_1000115891', 'scaled_1000115891.jpg', 'image/jpeg', 'public', 45048, '[]', '{\"uuid\":\"28724436-f570-4a45-8abc-c05c47e17843\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 409, '2024-05-08 05:19:04', '2024-05-08 05:19:04'),
(438, 'App\\Models\\Upload', 251, 'image', 'scaled_1000115945', 'scaled_1000115945.jpg', 'image/jpeg', 'public', 66845, '[]', '{\"uuid\":\"ff01a121-1a23-45b8-a42e-4036647ce99f\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 410, '2024-05-08 05:49:32', '2024-05-08 05:49:32'),
(439, 'App\\Models\\EService', 100, 'image', 'scaled_1000115945', 'scaled_1000115945.jpg', 'image/jpeg', 'public', 66845, '[]', '{\"uuid\":\"ff01a121-1a23-45b8-a42e-4036647ce99f\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 411, '2024-05-08 05:49:55', '2024-05-08 05:49:55'),
(440, 'App\\Models\\Upload', 252, 'image', 'scaled_1000115740', 'scaled_1000115740.jpg', 'image/jpeg', 'public', 72610, '[]', '{\"uuid\":\"19eda376-6dd7-473b-a8e7-c279246727ef\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 412, '2024-05-08 05:50:32', '2024-05-08 05:50:32'),
(441, 'App\\Models\\EService', 101, 'image', 'scaled_1000115740', 'scaled_1000115740.jpg', 'image/jpeg', 'public', 72610, '[]', '{\"uuid\":\"19eda376-6dd7-473b-a8e7-c279246727ef\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 413, '2024-05-08 05:51:03', '2024-05-08 05:51:03'),
(442, 'App\\Models\\Upload', 253, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"4f10136a-c923-4f65-8c79-22e768770480\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 414, '2024-05-08 05:56:40', '2024-05-08 05:56:40'),
(443, 'App\\Models\\EService', 102, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"4f10136a-c923-4f65-8c79-22e768770480\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 415, '2024-05-08 05:57:01', '2024-05-08 05:57:01'),
(444, 'App\\Models\\EService', 103, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"4f10136a-c923-4f65-8c79-22e768770480\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 416, '2024-05-08 05:57:02', '2024-05-08 05:57:02'),
(445, 'App\\Models\\Upload', 254, 'image', 'scaled_6abc157c-e9bc-40ea-9390-b2e3a6bba829-1_all_15226', 'scaled_6abc157c-e9bc-40ea-9390-b2e3a6bba829-1_all_15226.jpg', 'image/jpeg', 'public', 66624, '[]', '{\"uuid\":\"e2cb734b-4dfe-4a39-b65a-1ef7dce4e435\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 417, '2024-05-08 05:58:15', '2024-05-08 05:58:15'),
(446, 'App\\Models\\Upload', 255, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"f303d624-b3cb-4968-affe-4f891033bdde\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 418, '2024-05-08 23:20:58', '2024-05-08 23:20:58'),
(447, 'App\\Models\\EProvider', 232, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"f303d624-b3cb-4968-affe-4f891033bdde\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 419, '2024-05-08 23:21:45', '2024-05-08 23:21:45'),
(448, 'App\\Models\\Upload', 256, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"140be70a-198a-4c45-81d6-504035b14357\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 420, '2024-05-08 23:24:28', '2024-05-08 23:24:28'),
(449, 'App\\Models\\EProvider', 233, 'image', 'scaled_1000115724', 'scaled_1000115724.jpg', 'image/jpeg', 'public', 61217, '[]', '{\"uuid\":\"140be70a-198a-4c45-81d6-504035b14357\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 421, '2024-05-08 23:25:03', '2024-05-08 23:25:03'),
(450, 'App\\Models\\Upload', 257, 'image', 'scaled_1000041382', 'scaled_1000041382.png', 'image/png', 'public', 25555, '[]', '{\"uuid\":\"69be0572-713d-4e88-8835-7dec03536e59\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 422, '2024-05-08 23:53:01', '2024-05-08 23:53:01'),
(451, 'App\\Models\\EProvider', 234, 'image', 'scaled_1000041382', 'scaled_1000041382.png', 'image/png', 'public', 25555, '[]', '{\"uuid\":\"69be0572-713d-4e88-8835-7dec03536e59\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 423, '2024-05-08 23:53:17', '2024-05-08 23:53:17'),
(452, 'App\\Models\\EProvider', 235, 'image', 'scaled_1000041382', 'scaled_1000041382.png', 'image/png', 'public', 25555, '[]', '{\"uuid\":\"69be0572-713d-4e88-8835-7dec03536e59\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 424, '2024-05-08 23:53:28', '2024-05-08 23:53:28'),
(453, 'App\\Models\\EProvider', 236, 'image', 'scaled_1000041382', 'scaled_1000041382.png', 'image/png', 'public', 25555, '[]', '{\"uuid\":\"69be0572-713d-4e88-8835-7dec03536e59\",\"user_id\":214,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 425, '2024-05-08 23:53:42', '2024-05-08 23:53:42'),
(454, 'App\\Models\\Upload', 258, 'image', 'image_picker_26E58557-796A-4892-ADEC-4722F52CC39C-9610-00000180F60F6170', 'image_picker_26E58557-796A-4892-ADEC-4722F52CC39C-9610-00000180F60F6170.jpg', 'image/jpeg', 'public', 2095377, '[]', '{\"uuid\":\"1b09941a-5b3e-452e-b73c-b9137e586ff6\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 426, '2024-10-23 06:09:04', '2024-10-23 06:09:05'),
(456, 'App\\Models\\Upload', 259, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 9367, '[]', '{\"uuid\":\"f987f167-71ca-47a2-b46d-3de3c27f9880\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 428, '2024-10-23 07:02:28', '2024-10-23 07:02:28'),
(457, 'App\\Models\\Upload', 260, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 9748, '[]', '{\"uuid\":\"01acd17f-a65c-4ad0-a077-ddb366a63ef2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 429, '2024-10-23 07:02:45', '2024-10-23 07:02:45'),
(458, 'App\\Models\\Upload', 261, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 9367, '[]', '{\"uuid\":\"14f3c2fd-a2ab-439c-a767-444074d5c23e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 430, '2024-10-23 07:03:11', '2024-10-23 07:03:11'),
(459, 'App\\Models\\Gallery', 34, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 9367, '[]', '{\"uuid\":\"14f3c2fd-a2ab-439c-a767-444074d5c23e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 431, '2024-10-23 07:03:17', '2024-10-23 07:03:17'),
(460, 'App\\Models\\Upload', 262, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 9748, '[]', '{\"uuid\":\"aa8b679b-1eae-409c-b974-706e01f35fba\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 432, '2024-10-23 07:04:13', '2024-10-23 07:04:13'),
(461, 'App\\Models\\EService', 112, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 9748, '[]', '{\"uuid\":\"aa8b679b-1eae-409c-b974-706e01f35fba\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 433, '2024-10-23 07:04:18', '2024-10-23 07:04:18'),
(462, 'App\\Models\\Upload', 263, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 6716, '[]', '{\"uuid\":\"beb07c37-30ee-4366-bd4d-c365ce341fc6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 434, '2024-10-23 07:05:22', '2024-10-23 07:05:22'),
(463, 'App\\Models\\Gallery', 35, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 6716, '[]', '{\"uuid\":\"beb07c37-30ee-4366-bd4d-c365ce341fc6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 435, '2024-10-23 07:05:25', '2024-10-23 07:05:25'),
(464, 'App\\Models\\Upload', 264, 'avatar', 's-l1200', 's-l1200.jpg', 'image/jpeg', 'public', 324925, '[]', '{\"uuid\":\"6a4cbbae-0bc8-4a0c-a659-9a9d438b1b16\",\"user_id\":253,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 436, '2024-10-25 05:24:54', '2024-10-25 05:24:54'),
(465, 'App\\Models\\User', 253, 'avatar', 's-l1200', 's-l1200.jpg', 'image/jpeg', 'public', 324925, '[]', '{\"uuid\":\"6a4cbbae-0bc8-4a0c-a659-9a9d438b1b16\",\"user_id\":253,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 437, '2024-10-25 05:24:56', '2024-10-25 05:24:56'),
(466, 'App\\Models\\Upload', 265, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 9293, '[]', '{\"uuid\":\"09367d65-9ced-40d5-803a-7f826a12292b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 438, '2024-10-29 03:14:51', '2024-10-29 03:14:51'),
(467, 'App\\Models\\Upload', 266, 'image', 'jewelary', 'jewelary.png', 'image/png', 'public', 12307, '[]', '{\"uuid\":\"79821753-1aec-41b3-a30f-68d52ff576fd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 439, '2024-11-04 07:42:54', '2024-11-04 07:42:54'),
(469, 'App\\Models\\Upload', 267, 'image', 'image_picker_02714F08-3CFD-46F8-937C-4A17452AB141-50704-00000B07A5B32111', 'image_picker_02714F08-3CFD-46F8-937C-4A17452AB141-50704-00000B07A5B32111.png', 'image/png', 'public', 175645, '[]', '{\"uuid\":\"8752a2a0-45e3-4a9a-bb26-6eaf7971a213\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 441, '2024-11-06 06:07:18', '2024-11-06 06:07:18'),
(470, 'App\\Models\\Upload', 268, 'image', 'image_picker_47F30136-E085-442A-8232-37099A62A9CC-50704-00000B07FB7D336E', 'image_picker_47F30136-E085-442A-8232-37099A62A9CC-50704-00000B07FB7D336E.png', 'image/png', 'public', 175645, '[]', '{\"uuid\":\"644b2f17-c5f5-41f8-9764-01e8951b7577\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 442, '2024-11-06 06:08:18', '2024-11-06 06:08:18'),
(471, 'App\\Models\\Upload', 269, 'image', 'image_picker_40C89876-D1C5-45F7-820B-16D9BD642D74-10993-0000000DFA667E60', 'image_picker_40C89876-D1C5-45F7-820B-16D9BD642D74-10993-0000000DFA667E60.png', 'image/png', 'public', 140114, '[]', '{\"uuid\":\"55324599-da9b-43a2-a1b5-006b59db73dd\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 443, '2024-11-06 06:11:23', '2024-11-06 06:11:23'),
(472, 'App\\Models\\Upload', 270, 'image', 'freelancer-logo', 'freelancer-logo.png', 'image/png', 'public', 107456, '[]', '{\"uuid\":\"a33ebbb8-9e25-4544-8e7b-92b313ab85d5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 444, '2024-11-07 05:31:03', '2024-11-07 05:31:04'),
(474, 'App\\Models\\Upload', 271, 'image', 'image_picker_F3FC3A4E-A078-4311-A323-CFD818E82181-76718-00000C363C688166', 'image_picker_F3FC3A4E-A078-4311-A323-CFD818E82181-76718-00000C363C688166.jpg', 'image/jpeg', 'public', 44446, '[]', '{\"uuid\":\"d964b7ac-cbe2-48b0-8665-e6e82413b1fb\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 445, '2024-11-07 05:42:26', '2024-11-07 05:42:26'),
(475, 'App\\Models\\Upload', 272, 'image', '0bb07337ad1d8655ae913fa3cca9de19', '0bb07337ad1d8655ae913fa3cca9de19.jpg', 'image/jpeg', 'public', 48842, '[]', '{\"uuid\":\"e580244a-13b9-4c78-9427-73177a27fd4e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 446, '2024-11-07 05:46:40', '2024-11-07 05:46:40'),
(476, 'App\\Models\\EService', 113, 'image', '0bb07337ad1d8655ae913fa3cca9de19', '0bb07337ad1d8655ae913fa3cca9de19.jpg', 'image/jpeg', 'public', 48842, '[]', '{\"uuid\":\"e580244a-13b9-4c78-9427-73177a27fd4e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 447, '2024-11-07 05:46:46', '2024-11-07 05:46:46'),
(477, 'App\\Models\\Upload', 273, 'image', 'image_picker_E1A4C176-54F3-40DB-8455-D7CBC2EB03BC-82558-00000D3FB54FE66F', 'image_picker_E1A4C176-54F3-40DB-8455-D7CBC2EB03BC-82558-00000D3FB54FE66F.png', 'image/png', 'public', 115755, '[]', '{\"uuid\":\"1c7dac10-c961-4f28-b0e3-da8947e41d28\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 448, '2024-11-08 07:05:54', '2024-11-08 07:05:55'),
(478, 'App\\Models\\Upload', 274, 'image', 'image_picker_4BEAE41E-8024-48AE-ABEC-176B0AA0D8F4-82558-00000D3FE8AE517E', 'image_picker_4BEAE41E-8024-48AE-ABEC-176B0AA0D8F4-82558-00000D3FE8AE517E.jpg', 'image/jpeg', 'public', 44446, '[]', '{\"uuid\":\"bd3e1707-4c30-4422-81bf-551c81b2fca7\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 449, '2024-11-08 07:06:30', '2024-11-08 07:06:30'),
(479, 'App\\Models\\Upload', 275, 'image', 'fidelity (1)', 'fidelity-(1).png', 'image/png', 'public', 8249, '[]', '{\"uuid\":\"78455f93-d4fb-4fef-8467-cc9ef7c84b5f\",\"user_id\":258,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 450, '2024-11-14 06:32:40', '2024-11-14 06:32:40'),
(480, 'App\\Models\\EProvider', 251, 'image', 'fidelity (1)', 'fidelity-(1).png', 'image/png', 'public', 8249, '[]', '{\"uuid\":\"78455f93-d4fb-4fef-8467-cc9ef7c84b5f\",\"user_id\":258,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 451, '2024-11-14 06:32:52', '2024-11-14 06:32:52'),
(481, 'App\\Models\\Upload', 276, 'image', 'image_picker_EFD28A8F-0C04-4E23-87F1-36D4AE1D3BD2-2269-0000004F17269C5B', 'image_picker_EFD28A8F-0C04-4E23-87F1-36D4AE1D3BD2-2269-0000004F17269C5B.png', 'image/png', 'public', 415579, '[]', '{\"uuid\":\"3a343b57-c57f-4b81-9ed6-d000b6245d32\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 452, '2024-11-14 07:02:08', '2024-11-14 07:02:08'),
(482, 'App\\Models\\Upload', 277, 'image', 'image_picker_016761A4-FFD9-4453-B5E0-FC583E82BCAA-2269-00000054779C8536', 'image_picker_016761A4-FFD9-4453-B5E0-FC583E82BCAA-2269-00000054779C8536.png', 'image/png', 'public', 415579, '[]', '{\"uuid\":\"2fbb92f5-6965-4190-8dd0-943365ccbe89\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 453, '2024-11-14 07:18:33', '2024-11-14 07:18:34'),
(483, 'App\\Models\\EProvider', 255, 'image', 'image_picker_016761A4-FFD9-4453-B5E0-FC583E82BCAA-2269-00000054779C8536', 'image_picker_016761A4-FFD9-4453-B5E0-FC583E82BCAA-2269-00000054779C8536.png', 'image/png', 'public', 415579, '[]', '{\"uuid\":\"2fbb92f5-6965-4190-8dd0-943365ccbe89\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 454, '2024-11-14 07:19:36', '2024-11-14 07:19:36'),
(484, 'App\\Models\\Upload', 278, 'avatar', 'Asus-Zenbookmain', 'Asus-Zenbookmain.png', 'image/png', 'public', 181930, '[]', '{\"uuid\":\"e96cbb28-c8b6-4042-a660-16395dfc2a8d\",\"user_id\":261,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 455, '2024-11-19 03:30:28', '2024-11-19 03:30:28'),
(485, 'App\\Models\\Upload', 279, 'avatar', 'Asus-Zenbookmain', 'Asus-Zenbookmain.png', 'image/png', 'public', 181930, '[]', '{\"uuid\":\"b6ed8958-09a7-4ecf-8152-67a4c8161c6d\",\"user_id\":261,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 456, '2024-11-19 03:31:57', '2024-11-19 03:31:57'),
(486, 'App\\Models\\Upload', 280, 'avatar', 'fidelity', 'fidelity.png', 'image/png', 'public', 8249, '[]', '{\"uuid\":\"133e5595-be29-43ef-93c9-8aec95848224\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 457, '2024-11-19 14:19:57', '2024-11-19 14:19:58'),
(489, 'App\\Models\\Upload', 281, 'avatar', 'background', 'background.png', 'image/png', 'public', 30517, '[]', '{\"uuid\":\"4ed44135-4424-4285-8978-3802a51402af\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 459, '2024-11-19 14:30:17', '2024-11-19 14:30:17'),
(492, 'App\\Models\\Upload', 282, 'avatar', 'download', 'download.jpeg', 'image/jpeg', 'public', 2864, '[]', '{\"uuid\":\"ada9dd2a-2eb7-4bd2-9561-f18250559c2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 461, '2024-11-19 14:33:00', '2024-11-19 14:33:00'),
(494, 'App\\Models\\Upload', 283, 'avatar', 'user', 'user.png', 'image/png', 'public', 3630, '[]', '{\"uuid\":\"bea0f012-09d7-4481-971b-519815be1603\",\"user_id\":268,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 463, '2024-11-19 15:30:23', '2024-11-19 15:30:24'),
(495, 'App\\Models\\Upload', 284, 'avatar', 'user', 'user.png', 'image/png', 'public', 3630, '[]', '{\"uuid\":\"9d6dd90a-3e49-49fc-9c2e-8174ad50bb54\",\"user_id\":268,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 464, '2024-11-19 15:31:03', '2024-11-19 15:31:03'),
(496, 'App\\Models\\User', 268, 'avatar', 'user', 'user.png', 'image/png', 'public', 3630, '[]', '{\"uuid\":\"9d6dd90a-3e49-49fc-9c2e-8174ad50bb54\",\"user_id\":268,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 465, '2024-11-19 15:33:58', '2024-11-19 15:33:58'),
(497, 'App\\Models\\Upload', 285, 'avatar', 'download', 'download.jpeg', 'image/jpeg', 'public', 2864, '[]', '{\"uuid\":\"cb679e27-5074-4006-b5f0-9740f6c92106\",\"user_id\":269,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 466, '2024-11-19 15:56:59', '2024-11-19 15:56:59'),
(498, 'App\\Models\\Upload', 286, 'avatar', 'user', 'user.png', 'image/png', 'public', 3630, '[]', '{\"uuid\":\"0c40ae29-0083-4ec3-84e8-ed07cc950983\",\"user_id\":270,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 467, '2024-11-20 03:26:38', '2024-11-20 03:26:39'),
(499, 'App\\Models\\Upload', 287, 'avatar', '', 'اسنان.jpeg', 'image/jpeg', 'public', 4303, '[]', '{\"uuid\":\"b9a48d1a-c882-4970-b789-e1a2659e800d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 468, '2024-11-20 06:07:02', '2024-11-20 06:07:02'),
(500, 'App\\Models\\User', 1, 'avatar', '', '.jpeg', 'image/jpeg', 'public', 4303, '[]', '{\"uuid\":\"b9a48d1a-c882-4970-b789-e1a2659e800d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 469, '2024-11-20 06:08:22', '2024-11-20 06:08:22'),
(501, 'App\\Models\\Upload', 288, 'avatar', 'download', 'download.jpeg', 'image/jpeg', 'public', 2864, '[]', '{\"uuid\":\"55268771-d343-4cf2-950e-fd0ce686dfd5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 470, '2024-11-21 04:22:04', '2024-11-21 04:22:04'),
(502, 'App\\Models\\Upload', 289, 'avatar', 'download', 'download.jpeg', 'image/jpeg', 'public', 2864, '[]', '{\"uuid\":\"95547e7b-898d-4e9f-845c-773e6065d912\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 471, '2024-11-21 05:24:57', '2024-11-21 05:24:58'),
(503, 'App\\Models\\Upload', 290, 'avatar', 'user', 'user.png', 'image/png', 'public', 3630, '[]', '{\"uuid\":\"82f7f3fc-7675-4dfa-9064-d91916ec3793\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 472, '2024-11-25 03:45:25', '2024-11-25 03:45:25'),
(504, 'App\\Models\\User', 22, 'avatar', 'user', 'user.png', 'image/png', 'public', 3630, '[]', '{\"uuid\":\"82f7f3fc-7675-4dfa-9064-d91916ec3793\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 473, '2024-11-25 03:46:35', '2024-11-25 03:46:35'),
(505, 'App\\Models\\Upload', 291, 'avatar', '4 - Dynamic fields section', '4---Dynamic-fields-section.jpg', 'image/jpeg', 'public', 231988, '[]', '{\"uuid\":\"e68123a0-d506-4e3f-842b-8d102a74638f\",\"user_id\":274,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 474, '2025-02-10 05:35:42', '2025-02-10 05:35:44'),
(506, 'App\\Models\\Upload', 292, 'avatar', 'error', 'error.PNG', 'image/png', 'public', 101462, '[]', '{\"uuid\":\"b072a1e8-d3c9-480d-85f6-e39cd09ac613\",\"user_id\":276,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 475, '2025-02-12 03:32:03', '2025-02-12 03:32:04'),
(507, 'App\\Models\\User', 276, 'avatar', 'error', 'error.PNG', 'image/png', 'public', 101462, '[]', '{\"uuid\":\"b072a1e8-d3c9-480d-85f6-e39cd09ac613\",\"user_id\":276,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 476, '2025-02-12 03:32:18', '2025-02-12 03:32:18'),
(508, 'App\\Models\\Upload', 293, 'avatar', '4 - Dynamic fields section', '4---Dynamic-fields-section.jpg', 'image/jpeg', 'public', 231988, '[]', '{\"uuid\":\"363a3340-5d8a-49e5-84a6-91de752bf22a\",\"user_id\":278,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 477, '2025-02-17 05:59:56', '2025-02-17 05:59:56'),
(510, 'App\\Models\\Upload', 294, 'image', 'image_picker_C853C609-B77F-41CC-A21E-664EC2E658CD-20839-00000363EA7DAA34', 'image_picker_C853C609-B77F-41CC-A21E-664EC2E658CD-20839-00000363EA7DAA34.png', 'image/png', 'public', 231843, '[]', '{\"uuid\":\"974f4f60-686f-4ef2-a684-61ae6de42ad6\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 479, '2025-02-21 08:32:05', '2025-02-21 08:32:07'),
(511, 'App\\Models\\EProvider', 256, 'image', 'image_picker_C853C609-B77F-41CC-A21E-664EC2E658CD-20839-00000363EA7DAA34', 'image_picker_C853C609-B77F-41CC-A21E-664EC2E658CD-20839-00000363EA7DAA34.png', 'image/png', 'public', 231843, '[]', '{\"uuid\":\"974f4f60-686f-4ef2-a684-61ae6de42ad6\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 480, '2025-02-21 08:33:02', '2025-02-21 08:33:02'),
(512, 'App\\Models\\Upload', 295, 'avatar', 'image_picker_3D661B74-3096-4889-97C7-EBBB85E9BEA1-10354-0000000687E389C8', 'image_picker_3D661B74-3096-4889-97C7-EBBB85E9BEA1-10354-0000000687E389C8.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"d6383cc0-3b9c-44bb-83c2-e234a1e36b80\",\"user_id\":279,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 481, '2025-02-24 03:09:56', '2025-02-24 03:09:57'),
(514, 'App\\Models\\Upload', 296, 'image', 'image_picker_B6F6E39C-B677-4838-8004-1840A30DC14B-10354-0000000873D12DA8', 'image_picker_B6F6E39C-B677-4838-8004-1840A30DC14B-10354-0000000873D12DA8.png', 'image/png', 'public', 632401, '[]', '{\"uuid\":\"61be5e5d-3414-4631-95f8-b3793c2f75e6\",\"user_id\":279,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 483, '2025-02-24 03:15:40', '2025-02-24 03:15:40'),
(515, 'App\\Models\\EService', 117, 'image', 'image_picker_B6F6E39C-B677-4838-8004-1840A30DC14B-10354-0000000873D12DA8', 'image_picker_B6F6E39C-B677-4838-8004-1840A30DC14B-10354-0000000873D12DA8.png', 'image/png', 'public', 632401, '[]', '{\"uuid\":\"61be5e5d-3414-4631-95f8-b3793c2f75e6\",\"user_id\":279,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 484, '2025-02-24 03:18:43', '2025-02-24 03:18:43'),
(516, 'App\\Models\\Upload', 297, 'image', 'image_picker_610A10F2-B469-4F88-ADCC-1788C7E70477-10354-00000009975DBA5E', 'image_picker_610A10F2-B469-4F88-ADCC-1788C7E70477-10354-00000009975DBA5E.png', 'image/png', 'public', 351700, '[]', '{\"uuid\":\"a78d7d8d-4005-43bf-9ca3-7ded8577462e\",\"user_id\":279,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 485, '2025-02-24 03:19:02', '2025-02-24 03:19:03'),
(517, 'App\\Models\\Option', 115, 'image', 'image_picker_610A10F2-B469-4F88-ADCC-1788C7E70477-10354-00000009975DBA5E', 'image_picker_610A10F2-B469-4F88-ADCC-1788C7E70477-10354-00000009975DBA5E.png', 'image/png', 'public', 351700, '[]', '{\"uuid\":\"a78d7d8d-4005-43bf-9ca3-7ded8577462e\",\"user_id\":279,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 486, '2025-02-24 03:19:52', '2025-02-24 03:19:52'),
(518, 'App\\Models\\Upload', 298, 'avatar', 'image_picker_A1E8EBA0-F73D-4300-94D3-784E314A9E60-14147-0000000C7BE4AB70', 'image_picker_A1E8EBA0-F73D-4300-94D3-784E314A9E60-14147-0000000C7BE4AB70.png', 'image/png', 'public', 464619, '[]', '{\"uuid\":\"430a50cf-0a9b-4255-aa91-382a8235abee\",\"user_id\":280,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 487, '2025-02-24 03:27:42', '2025-02-24 03:27:42'),
(519, 'App\\Models\\User', 280, 'avatar', 'image_picker_A1E8EBA0-F73D-4300-94D3-784E314A9E60-14147-0000000C7BE4AB70', 'image_picker_A1E8EBA0-F73D-4300-94D3-784E314A9E60-14147-0000000C7BE4AB70.png', 'image/png', 'public', 464619, '[]', '{\"uuid\":\"430a50cf-0a9b-4255-aa91-382a8235abee\",\"user_id\":280,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 488, '2025-02-24 03:28:25', '2025-02-24 03:28:25'),
(520, 'App\\Models\\Upload', 299, 'avatar', 'change password', 'change-password.PNG', 'image/png', 'public', 118509, '[]', '{\"uuid\":\"ab8cb6dd-2f38-48dd-a51a-7019f9c0a591\",\"user_id\":291,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 489, '2025-02-25 02:42:26', '2025-02-25 02:42:26'),
(521, 'App\\Models\\Upload', 300, 'image', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716.jpg', 'image/jpeg', 'public', 1006963, '[]', '{\"uuid\":\"ffd112b3-759f-45ec-88fa-70a9029605d6\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 490, '2025-02-25 03:06:38', '2025-02-25 03:06:39'),
(522, 'App\\Models\\EService', 118, 'image', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716.jpg', 'image/jpeg', 'public', 1006963, '[]', '{\"uuid\":\"ffd112b3-759f-45ec-88fa-70a9029605d6\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 491, '2025-02-25 03:10:23', '2025-02-25 03:10:23'),
(523, 'App\\Models\\EService', 119, 'image', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716.jpg', 'image/jpeg', 'public', 1006963, '[]', '{\"uuid\":\"ffd112b3-759f-45ec-88fa-70a9029605d6\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 492, '2025-02-25 03:10:25', '2025-02-25 03:10:25'),
(524, 'App\\Models\\EService', 120, 'image', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716', 'image_picker_3C07D073-8B0E-40F5-80FA-88E38D03DA2E-3840-000000B99282E716.jpg', 'image/jpeg', 'public', 1006963, '[]', '{\"uuid\":\"ffd112b3-759f-45ec-88fa-70a9029605d6\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 493, '2025-02-25 03:10:39', '2025-02-25 03:10:39'),
(525, 'App\\Models\\Upload', 301, 'image', 'c4ab78a1419a38dead253bbcec8a3927', 'c4ab78a1419a38dead253bbcec8a3927.jpg', 'image/jpeg', 'public', 41514, '[]', '{\"uuid\":\"9f7aa72b-559d-40d8-84b8-475024f0e27b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 494, '2025-02-25 03:26:36', '2025-02-25 03:26:37'),
(526, 'App\\Models\\Upload', 302, 'image', 'image_picker_E8A9598F-608E-4F26-B149-1032C3478C7D-4926-000000CE2CB009D5', 'image_picker_E8A9598F-608E-4F26-B149-1032C3478C7D-4926-000000CE2CB009D5.jpg', 'image/jpeg', 'public', 598886, '[]', '{\"uuid\":\"6c719373-23e7-4828-b397-b6801a33116d\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 495, '2025-02-25 04:43:38', '2025-02-25 04:43:39'),
(527, 'App\\Models\\EService', 121, 'image', 'image_picker_E8A9598F-608E-4F26-B149-1032C3478C7D-4926-000000CE2CB009D5', 'image_picker_E8A9598F-608E-4F26-B149-1032C3478C7D-4926-000000CE2CB009D5.jpg', 'image/jpeg', 'public', 598886, '[]', '{\"uuid\":\"6c719373-23e7-4828-b397-b6801a33116d\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 496, '2025-02-25 04:45:12', '2025-02-25 04:45:12'),
(528, 'App\\Models\\EService', 122, 'image', 'image_picker_E8A9598F-608E-4F26-B149-1032C3478C7D-4926-000000CE2CB009D5', 'image_picker_E8A9598F-608E-4F26-B149-1032C3478C7D-4926-000000CE2CB009D5.jpg', 'image/jpeg', 'public', 598886, '[]', '{\"uuid\":\"6c719373-23e7-4828-b397-b6801a33116d\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 497, '2025-02-25 04:46:40', '2025-02-25 04:46:40'),
(529, 'App\\Models\\Upload', 303, 'image', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"fa52a471-6480-430d-b0b3-8225eb9bc2bd\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 498, '2025-02-26 04:55:05', '2025-02-26 04:55:07'),
(530, 'App\\Models\\EService', 123, 'image', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"fa52a471-6480-430d-b0b3-8225eb9bc2bd\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 499, '2025-02-26 04:56:04', '2025-02-26 04:56:04'),
(531, 'App\\Models\\EService', 124, 'image', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"fa52a471-6480-430d-b0b3-8225eb9bc2bd\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 500, '2025-02-26 05:06:15', '2025-02-26 05:06:15'),
(532, 'App\\Models\\EService', 125, 'image', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055', 'image_picker_EE54EBE3-7EB5-4733-8095-5FC040136C03-43664-00000142BC061055.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"fa52a471-6480-430d-b0b3-8225eb9bc2bd\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 501, '2025-02-26 05:35:34', '2025-02-26 05:35:34'),
(534, 'App\\Models\\Upload', 304, 'image', 'image_picker_77B003B0-D11C-415D-AA4E-87750C756960-43664-00000180B4EA61C1', 'image_picker_77B003B0-D11C-415D-AA4E-87750C756960-43664-00000180B4EA61C1.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"e9e9932c-0501-469d-a06b-df1313557463\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 503, '2025-02-26 08:14:56', '2025-02-26 08:14:56'),
(535, 'App\\Models\\Option', 118, 'image', 'image_picker_77B003B0-D11C-415D-AA4E-87750C756960-43664-00000180B4EA61C1', 'image_picker_77B003B0-D11C-415D-AA4E-87750C756960-43664-00000180B4EA61C1.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"e9e9932c-0501-469d-a06b-df1313557463\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 504, '2025-02-26 08:15:31', '2025-02-26 08:15:31'),
(536, 'App\\Models\\EService', 168, 'images', 'show', 'show.PNG', 'image/png', 'public', 155583, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 505, '2025-02-26 11:26:15', '2025-02-26 11:26:16'),
(547, 'App\\Models\\EService', 169, 'images', 'detailsaddress', 'detailsaddress.PNG', 'image/png', 'public', 163371, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 506, '2025-02-26 11:41:19', '2025-02-26 11:41:19'),
(548, 'App\\Models\\EService', 169, 'images', 'show adddrss', 'show-adddrss.PNG', 'image/png', 'public', 156440, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 507, '2025-02-26 11:41:19', '2025-02-26 11:41:20'),
(549, 'App\\Models\\EService', 169, 'images', 'add address userid', 'add-address-userid.PNG', 'image/png', 'public', 138889, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 508, '2025-02-26 11:41:20', '2025-02-26 11:41:20'),
(550, 'App\\Models\\EService', 171, 'images', 'providerrr edit', 'providerrr-edit.PNG', 'image/png', 'public', 170384, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 509, '2025-02-26 11:42:24', '2025-02-26 11:42:24'),
(551, 'App\\Models\\EService', 171, 'images', 'footregister', 'footregister.PNG', 'image/png', 'public', 151443, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 510, '2025-02-26 11:42:24', '2025-02-26 11:42:25'),
(552, 'App\\Models\\Upload', 305, 'image', 'image_picker_31C96227-C955-44E2-A481-B7922F7383B5-12313-0000025FE2B7A1C7', 'image_picker_31C96227-C955-44E2-A481-B7922F7383B5-12313-0000025FE2B7A1C7.jpg', 'image/jpeg', 'public', 28243, '[]', '{\"uuid\":\"db5b7a59-faab-420d-a15d-791ff769a197\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 511, '2025-02-27 02:32:49', '2025-02-27 02:32:50'),
(553, 'App\\Models\\Upload', 306, 'image', 'image_picker_43FCAA68-2DF8-42A3-9E47-2F5E70455998-12313-00000261B9A863CB', 'image_picker_43FCAA68-2DF8-42A3-9E47-2F5E70455998-12313-00000261B9A863CB.jpg', 'image/jpeg', 'public', 60403, '[]', '{\"uuid\":\"ff8cf301-de58-4f34-ab49-4cf1249a3546\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 512, '2025-02-27 02:38:19', '2025-02-27 02:38:19'),
(554, 'App\\Models\\Upload', 307, 'image', 'image_picker_CC159BDA-4F7C-4214-8864-9D71274A4531-43664-000001AD810FFC35', 'image_picker_CC159BDA-4F7C-4214-8864-9D71274A4531-43664-000001AD810FFC35.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"0d52346d-ae17-486f-a9e9-988b001fe81f\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 513, '2025-02-27 02:47:24', '2025-02-27 02:47:25'),
(555, 'App\\Models\\Upload', 308, 'image', 'image_picker_875AB26E-F0AD-470B-8C4C-946BA5FC7F21-43664-000001AE8B56684A', 'image_picker_875AB26E-F0AD-470B-8C4C-946BA5FC7F21-43664-000001AE8B56684A.png', 'image/png', 'public', 632401, '[]', '{\"uuid\":\"b3889b62-fda4-423f-b54d-6d83a8f35c76\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 514, '2025-02-27 02:50:28', '2025-02-27 02:50:29'),
(556, 'App\\Models\\EService', 176, 'images', 'add services', 'add-services.PNG', 'image/png', 'public', 182554, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 515, '2025-02-27 03:26:36', '2025-02-27 03:26:37'),
(557, 'App\\Models\\Upload', 314, 'image', 'image_picker_30A75F34-9770-4ADE-A81C-B3933E671E1A-41261-000001BF20DBEC45', 'image_picker_30A75F34-9770-4ADE-A81C-B3933E671E1A-41261-000001BF20DBEC45.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"f4f8dd16-6b99-486d-8c39-f186b1bb7d4c\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 516, '2025-02-27 03:39:56', '2025-02-27 03:39:56'),
(558, 'App\\Models\\EService', 177, 'image', 'image_picker_30A75F34-9770-4ADE-A81C-B3933E671E1A-41261-000001BF20DBEC45', 'image_picker_30A75F34-9770-4ADE-A81C-B3933E671E1A-41261-000001BF20DBEC45.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"f4f8dd16-6b99-486d-8c39-f186b1bb7d4c\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 517, '2025-02-27 03:45:51', '2025-02-27 03:45:51'),
(559, 'App\\Models\\Upload', 315, 'image', 'image_picker_980E4E92-438E-42A9-AD7A-30EAD2609461-41261-000001C15873FB42', 'image_picker_980E4E92-438E-42A9-AD7A-30EAD2609461-41261-000001C15873FB42.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"8679022b-f037-4dd9-b7cc-1034f6073646\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 518, '2025-02-27 03:46:34', '2025-02-27 03:46:35'),
(560, 'App\\Models\\Option', 119, 'image', 'image_picker_980E4E92-438E-42A9-AD7A-30EAD2609461-41261-000001C15873FB42', 'image_picker_980E4E92-438E-42A9-AD7A-30EAD2609461-41261-000001C15873FB42.png', 'image/png', 'public', 738921, '[]', '{\"uuid\":\"8679022b-f037-4dd9-b7cc-1034f6073646\",\"user_id\":252,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 519, '2025-02-27 03:46:45', '2025-02-27 03:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_08_29_213829_create_faq_categories_table', 1),
(11, '2019_08_29_213926_create_faqs_table', 1),
(12, '2019_10_22_144652_create_currencies_table', 1),
(13, '2021_01_07_162658_create_payment_methods_table', 1),
(14, '2021_01_07_164755_create_payment_statuses_table', 1),
(15, '2021_01_07_165422_create_payments_table', 1),
(16, '2021_01_13_105605_create_e_provider_types_table', 1),
(17, '2021_01_13_111155_create_e_providers_table', 1),
(18, '2021_01_13_111622_create_experiences_table', 1),
(19, '2021_01_13_111730_create_awards_table', 1),
(20, '2021_01_13_114302_create_taxes_table', 1),
(21, '2021_01_13_200249_create_addresses_table', 1),
(22, '2021_01_15_115239_create_e_provider_addresses_table', 1),
(23, '2021_01_15_115747_create_e_provider_users_table', 1),
(24, '2021_01_15_115850_create_e_provider_taxes_table', 1),
(25, '2021_01_16_160838_create_availability_hours_table', 1),
(26, '2021_01_19_135951_create_e_services_table', 1),
(27, '2021_01_19_140427_create_categories_table', 1),
(28, '2021_01_19_171553_create_e_service_categories_table', 1),
(29, '2021_01_22_194514_create_option_groups_table', 1),
(30, '2021_01_22_200807_create_options_table', 1),
(31, '2021_01_22_205819_create_favorites_table', 1),
(32, '2021_01_22_205944_create_favorite_options_table', 1),
(33, '2021_01_23_125641_create_e_service_reviews_table', 1),
(34, '2021_01_23_201533_create_galleries_table', 1),
(35, '2021_01_25_105421_create_slides_table', 1),
(36, '2021_01_25_162055_create_notifications_table', 1),
(37, '2021_01_25_170522_create_coupons_table', 1),
(38, '2021_01_25_170529_create_discountables_table', 1),
(39, '2021_01_25_191833_create_booking_statuses_table', 1),
(40, '2021_01_25_212252_create_bookings_table', 1),
(41, '2021_01_30_111717_create_e_provider_payouts_table', 1),
(42, '2021_01_30_135356_create_earnings_table', 1),
(43, '2021_02_24_102838_create_custom_pages_table', 1),
(44, '2021_06_26_110636_create_json_extract_function', 1),
(45, '2021_08_08_134136_create_wallets_table', 1),
(46, '2021_08_08_155732_create_wallet_transactions_table', 1),
(47, '2022_03_23_173154_create_videos_table', 2),
(48, '2022_03_17_090930_update_to_v127', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 110),
(3, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 139),
(3, 'App\\Models\\User', 168),
(3, 'App\\Models\\User', 169),
(3, 'App\\Models\\User', 172),
(3, 'App\\Models\\User', 176),
(3, 'App\\Models\\User', 179),
(3, 'App\\Models\\User', 184),
(3, 'App\\Models\\User', 185),
(3, 'App\\Models\\User', 186),
(3, 'App\\Models\\User', 187),
(3, 'App\\Models\\User', 189),
(3, 'App\\Models\\User', 190),
(3, 'App\\Models\\User', 191),
(3, 'App\\Models\\User', 192),
(3, 'App\\Models\\User', 193),
(3, 'App\\Models\\User', 194),
(3, 'App\\Models\\User', 204),
(3, 'App\\Models\\User', 205),
(3, 'App\\Models\\User', 206),
(3, 'App\\Models\\User', 207),
(3, 'App\\Models\\User', 208),
(3, 'App\\Models\\User', 247),
(3, 'App\\Models\\User', 249),
(3, 'App\\Models\\User', 250),
(3, 'App\\Models\\User', 252),
(3, 'App\\Models\\User', 257),
(3, 'App\\Models\\User', 258),
(3, 'App\\Models\\User', 259),
(3, 'App\\Models\\User', 284),
(3, 'App\\Models\\User', 285),
(3, 'App\\Models\\User', 286),
(3, 'App\\Models\\User', 287),
(3, 'App\\Models\\User', 288),
(3, 'App\\Models\\User', 289),
(3, 'App\\Models\\User', 290),
(3, 'App\\Models\\User', 291),
(3, 'App\\Models\\User', 293),
(3, 'App\\Models\\User', 294),
(3, 'App\\Models\\User', 295),
(3, 'App\\Models\\User', 296),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 31),
(4, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(4, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 48),
(4, 'App\\Models\\User', 49),
(4, 'App\\Models\\User', 53),
(4, 'App\\Models\\User', 55),
(4, 'App\\Models\\User', 71),
(4, 'App\\Models\\User', 171),
(4, 'App\\Models\\User', 202),
(4, 'App\\Models\\User', 215),
(4, 'App\\Models\\User', 216),
(4, 'App\\Models\\User', 218),
(4, 'App\\Models\\User', 228),
(4, 'App\\Models\\User', 230),
(4, 'App\\Models\\User', 232),
(4, 'App\\Models\\User', 241),
(4, 'App\\Models\\User', 243),
(4, 'App\\Models\\User', 253),
(4, 'App\\Models\\User', 262),
(4, 'App\\Models\\User', 263),
(4, 'App\\Models\\User', 264),
(4, 'App\\Models\\User', 265),
(4, 'App\\Models\\User', 266),
(4, 'App\\Models\\User', 268),
(4, 'App\\Models\\User', 270),
(4, 'App\\Models\\User', 271),
(4, 'App\\Models\\User', 275),
(4, 'App\\Models\\User', 276),
(4, 'App\\Models\\User', 277),
(4, 'App\\Models\\User', 280),
(4, 'App\\Models\\User', 281),
(4, 'App\\Models\\User', 294),
(4, 'App\\Models\\User', 296),
(5, 'App\\Models\\User', 22);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0281f157-6836-4a6b-b907-eecf190753e8', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 13, '{\"from\":\"john doe\",\"message_id\":\"[#93133]\"}', NULL, '2022-07-29 03:55:51', '2022-07-29 03:55:51'),
('04c9fd1c-34b0-4606-a208-720f55acc4d1', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 10, '{\"booking_id\":16}', NULL, '2022-07-28 00:43:01', '2022-07-28 00:43:01'),
('04d3e4e1-2f02-4496-8059-7a1793b47291', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 17, '{\"booking_id\":93}', '2023-04-13 04:30:32', '2023-04-13 02:41:25', '2023-04-13 04:30:32'),
('053bfe20-938e-415a-946e-661ce35fdc2b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":118}', NULL, '2023-06-23 01:53:52', '2023-06-23 01:53:52'),
('073de994-eb39-45c7-9bf2-f2f2dec7081f', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 17, '{\"booking_id\":115}', NULL, '2023-05-22 02:37:20', '2023-05-22 02:37:20'),
('0c08da6f-75d0-422f-b0c5-17e3ede83470', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 97, '{\"from\":\"OptimalSolutions\",\"message_id\":\"[#399e7]\"}', NULL, '2023-05-18 04:01:01', '2023-05-18 04:01:01'),
('0fae0424-f840-4fe9-b819-4eeadf48166d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":38}', NULL, '2023-04-10 17:47:48', '2023-04-10 17:47:48'),
('1554b048-4679-4fc5-a973-017e4181e655', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 14, '{\"from\":\"john doe\",\"message_id\":\"[#93133]\"}', NULL, '2022-07-29 03:55:40', '2022-07-29 03:55:40'),
('156ec0be-b3ec-4f98-93cc-f265684051c4', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":43}', NULL, '2023-04-10 18:09:51', '2023-04-10 18:09:51'),
('179b36bd-d07a-47c5-b005-2bd6a7fc17dd', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":105}', NULL, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
('18be5e92-b6d6-478c-90cb-c56eee25081b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":117}', NULL, '2023-06-23 00:26:46', '2023-06-23 00:26:46'),
('1dc7d303-ac84-4e78-b58b-0178b9c29b94', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 97, '{\"from\":\"OptimalSolutions\",\"message_id\":\"[#1d2be]\"}', NULL, '2023-05-18 03:13:25', '2023-05-18 03:13:25'),
('1f9be1e1-c0f2-45ba-842d-4c776364b750', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":109}', NULL, '2023-05-03 06:38:30', '2023-05-03 06:38:30'),
('22ca033e-3a95-43a1-b3d5-621c1c8f4b2a', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":111}', NULL, '2023-05-16 02:55:36', '2023-05-16 02:55:36'),
('263d3c32-6cb5-4e75-ac7d-c1a61724f9ff', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":102}', NULL, '2023-04-14 02:45:03', '2023-04-14 02:45:03'),
('26fcc76e-e287-4cdf-83a9-40c43ce4e8a8', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 13, '{\"booking_id\":25}', NULL, '2022-07-29 03:56:38', '2022-07-29 03:56:38'),
('282ba382-d5a5-4c87-aab8-3f0554d079c5', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":107}', NULL, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
('2873d689-3405-4c00-a84b-d6dc40d0b5e4', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":102}', NULL, '2023-04-14 02:45:04', '2023-04-14 02:45:04'),
('2d2bf375-880b-4e44-a25e-7d921d69a53b', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 14, '{\"booking_id\":25}', NULL, '2022-07-29 03:57:19', '2022-07-29 03:57:19'),
('2d612fbd-5893-4019-8999-7fdfb05b5621', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 12, '{\"from\":\"john doe\",\"message_id\":\"[#93133]\"}', NULL, '2022-07-29 03:55:40', '2022-07-29 03:55:40'),
('2ef252c2-154d-4a55-8ac9-af918d5db589', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 15, '{\"booking_id\":116}', NULL, '2023-05-26 04:12:15', '2023-05-26 04:12:15'),
('2f593460-4b86-4de4-a637-8061807a93b1', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 245, '{\"booking_id\":121}', NULL, '2024-05-17 00:23:54', '2024-05-17 00:23:54'),
('33a91923-d690-48bb-a936-e73a699450b1', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":42}', NULL, '2023-04-10 18:05:41', '2023-04-10 18:05:41'),
('340d8dc4-f3cd-4705-a51b-089bc9d11017', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 12, '{\"booking_id\":25}', NULL, '2022-07-29 03:54:44', '2022-07-29 03:54:44'),
('35361136-14fa-40c6-8a28-47c4a0f3c419', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":99}', NULL, '2023-04-14 02:32:48', '2023-04-14 02:32:48'),
('3696514c-166c-4aac-b66a-f2b22cfac085', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":49}', NULL, '2023-04-11 12:34:23', '2023-04-11 12:34:23'),
('3c41045a-7d91-4bca-bdda-f063a2e321e8', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 15, '{\"booking_id\":25}', '2022-07-29 03:52:56', '2022-07-29 03:14:06', '2022-07-29 03:52:56'),
('3d2c3cbf-8ed5-4488-8ae2-83c225fbb127', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 15, '{\"booking_id\":25}', '2022-07-29 04:28:00', '2022-07-29 03:56:38', '2022-07-29 04:28:00'),
('3f2f94a9-a4ea-4bef-8201-fb9bee2dd15d', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":5}', NULL, '2022-07-31 13:23:40', '2022-07-31 13:23:40'),
('41770c71-91ef-4ec0-a629-6703cc8a5993', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 33, '{\"booking_id\":118}', NULL, '2023-06-23 02:01:06', '2023-06-23 02:01:06'),
('43bc66e3-00c0-49c0-827c-02311a032a98', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 15, '{\"booking_id\":25}', '2022-07-29 04:27:56', '2022-07-29 03:56:59', '2022-07-29 04:27:56'),
('44c15ec4-a8b9-44db-8ede-47fae896f163', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":121}', NULL, '2024-05-17 00:23:55', '2024-05-17 00:23:55'),
('48ed9264-272c-4f45-a912-50a35185052b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":36}', NULL, '2023-04-10 17:42:54', '2023-04-10 17:42:54'),
('4922c43c-2234-40b6-af4f-c8bbde00ae0b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":103}', NULL, '2023-05-03 06:37:47', '2023-05-03 06:37:47'),
('495a64fb-274b-4dd1-a4d2-7b43c1db2c2b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":40}', NULL, '2023-04-10 17:52:28', '2023-04-10 17:52:28'),
('4f54eb5a-2b25-45ca-a65b-27dacf3109a1', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":106}', NULL, '2023-05-03 06:37:52', '2023-05-03 06:37:52'),
('52b44ad9-68c6-4530-a309-e13a0cdf0217', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":37}', NULL, '2023-04-10 17:47:43', '2023-04-10 17:47:43'),
('52bc85c5-67de-4999-9726-18d07713dab8', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 6, '{\"booking_id\":111}', NULL, '2023-05-16 02:57:10', '2023-05-16 02:57:10'),
('531618f3-b551-42a0-89a2-8ebd27bc0554', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":105}', NULL, '2023-05-03 06:37:51', '2023-05-03 06:37:51'),
('531db2b7-fc65-48b6-8896-8af9e52cac56', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":48}', NULL, '2023-04-11 12:31:20', '2023-04-11 12:31:20'),
('5336a1c0-a27e-4c3e-aa76-b70342f38647', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":107}', NULL, '2023-05-03 06:37:50', '2023-05-03 06:37:50'),
('542693b7-d637-4442-87a4-48248d7585ad', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":25}', NULL, '2022-07-29 03:14:06', '2022-07-29 03:14:06'),
('5e38fac7-3602-4901-b3ee-0fa774c5381d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":120}', NULL, '2024-04-03 03:43:47', '2024-04-03 03:43:47'),
('61035d22-a2d5-4614-9b5e-fff31ea63b9f', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":106}', NULL, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
('62ef4e04-a87c-429f-86d9-466bbe40c08f', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 12, '{\"from\":\"john doe\",\"message_id\":\"[#93133]\"}', NULL, '2022-07-29 03:55:51', '2022-07-29 03:55:51'),
('645bf807-f127-4b73-9df5-32d766c8eaee', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 2, '{\"booking_id\":16}', NULL, '2022-07-18 06:59:35', '2022-07-18 06:59:35'),
('652751d6-e57c-42c8-8178-7c6c19df8c70', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 1, '{\"booking_id\":5}', '2023-04-13 06:02:52', '2022-07-31 13:23:32', '2023-04-13 06:02:52'),
('67bc4024-216f-4e6e-af8b-dec1736c48ed', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 96, '{\"from\":\"test user\",\"message_id\":\"[#2f3cd]\"}', NULL, '2023-05-18 03:52:33', '2023-05-18 03:52:33'),
('69df9996-f848-4266-8a5d-191d1e581306', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":26}', NULL, '2023-04-04 19:00:20', '2023-04-04 19:00:20'),
('6b8947b5-b418-49fd-96f5-67f089802f26', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":39}', NULL, '2023-04-10 17:48:16', '2023-04-10 17:48:16'),
('6f969099-3ee3-4699-83f2-e0036b285a72', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 12, '{\"booking_id\":25}', NULL, '2022-07-29 03:18:08', '2022-07-29 03:18:08'),
('6fdbfbd9-97dc-4562-bfe5-99e5b2143d5f', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 17, '{\"booking_id\":114}', NULL, '2023-05-22 02:35:10', '2023-05-22 02:35:10'),
('7195beb9-17d0-468f-bcc0-58c28030f08d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":28}', NULL, '2023-04-05 05:48:07', '2023-04-05 05:48:07'),
('73f55960-7f28-4f58-880e-19bd3958eb47', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":114}', NULL, '2023-05-22 02:35:12', '2023-05-22 02:35:12'),
('7739b989-8c8e-4b8d-8c70-9e6edbd63b17', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 2, '{\"booking_id\":17}', NULL, '2022-07-18 14:47:56', '2022-07-18 14:47:56'),
('7b8b1e61-f764-4b74-8ed2-91fa61fe1dbe', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 17, '{\"booking_id\":97}', NULL, '2023-04-13 05:22:14', '2023-04-13 05:22:14'),
('7bb9edef-34c1-4f23-b824-f66638dae9fc', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":17}', NULL, '2022-07-18 07:01:50', '2022-07-18 07:01:50'),
('7bc8ec20-46b6-4b67-97c8-ed972c7e41ae', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":110}', NULL, '2023-05-15 01:03:15', '2023-05-15 01:03:15'),
('7c470044-44b1-4d36-b326-cdfdbae16623', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 274, '{\"booking_id\":128}', NULL, '2025-02-10 05:44:38', '2025-02-10 05:44:38'),
('7da1dd55-dd7f-440b-a1ab-0b48ee009179', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":104}', NULL, '2023-05-03 06:37:47', '2023-05-03 06:37:47'),
('80db60ce-ece8-4aaf-84da-d528297e545a', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":51}', NULL, '2023-04-11 13:40:14', '2023-04-11 13:40:14'),
('82e15096-9265-40e7-9ef4-0ffa6ef87df6', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":115}', NULL, '2023-05-22 02:37:22', '2023-05-22 02:37:22'),
('83ca4e92-bbdd-4136-9508-fd8294468189', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":21}', NULL, '2022-07-03 02:34:26', '2022-07-03 02:34:26'),
('842b5bc0-1da0-4bea-ad32-b8148e1ab6bd', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 33, '{\"booking_id\":118}', NULL, '2023-06-23 02:00:46', '2023-06-23 02:00:46'),
('88d83dcb-6a02-45e9-8f9d-0c071bf4589e', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":41}', NULL, '2023-04-10 18:00:56', '2023-04-10 18:00:56'),
('8af6134f-7ee2-4c81-9841-e26d078b5ab0', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 96, '{\"booking_id\":113}', NULL, '2023-05-18 03:11:24', '2023-05-18 03:11:24'),
('8afbab8e-70a8-4d72-887b-ae6a7498b495', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":107}', NULL, '2023-05-03 06:37:52', '2023-05-03 06:37:52'),
('8c0ec233-3191-46ed-b362-25558e4778e0', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 17, '{\"booking_id\":98}', NULL, '2023-04-13 05:24:09', '2023-04-13 05:24:09'),
('8f8134fb-37cb-49bf-852c-2f1bba77694c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":109}', NULL, '2023-05-03 06:38:33', '2023-05-03 06:38:33'),
('902b14fa-1751-4512-94fe-bb09d0960095', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":106}', NULL, '2023-05-03 06:37:50', '2023-05-03 06:37:50'),
('909ee759-13b8-447b-a5cf-31c2acddf6b6', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":28}', NULL, '2023-04-05 05:48:07', '2023-04-05 05:48:07'),
('90cf0d45-d0e7-40ca-a266-14abf4099891', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 97, '{\"from\":\"OptimalSolutions\",\"message_id\":\"[#399e7]\"}', NULL, '2023-05-18 04:00:40', '2023-05-18 04:00:40'),
('94b09a52-4d69-4525-9f18-fa2a9b4d0fe9', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":118}', NULL, '2023-06-23 01:53:54', '2023-06-23 01:53:54'),
('96d0e92f-e9b1-481c-8dda-929ff7845871', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":101}', NULL, '2023-04-14 02:40:02', '2023-04-14 02:40:02'),
('981eca4e-4ce3-41d5-b03c-c54c7a967edd', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":108}', NULL, '2023-05-03 06:37:49', '2023-05-03 06:37:49'),
('98749f48-35e5-48dc-a799-28430897ceaa', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":112}', NULL, '2023-05-16 05:46:15', '2023-05-16 05:46:15'),
('98b79ce6-36cc-44ea-9565-55cb636014f8', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":27}', NULL, '2023-04-05 04:35:56', '2023-04-05 04:35:56'),
('9add781e-d14b-4dea-b47f-984e8ed38873', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 17, '{\"booking_id\":119}', NULL, '2023-08-03 03:02:20', '2023-08-03 03:02:20'),
('9c14ddc9-3298-48e8-9530-f6dd4665eeea', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 13, '{\"booking_id\":25}', NULL, '2022-07-29 03:56:59', '2022-07-29 03:56:59'),
('9d96a7f1-3789-4c41-ae07-a5babee17cf3', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 13, '{\"from\":\"john doe\",\"message_id\":\"[#93133]\"}', NULL, '2022-07-29 03:55:40', '2022-07-29 03:55:40'),
('9f43fd6e-e7bd-452c-9943-a5ba1e78dc40', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":47}', NULL, '2023-04-11 12:28:42', '2023-04-11 12:28:42'),
('a2039b11-ba28-4e7c-ae91-3032bb25fc59', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 96, '{\"from\":\"test user\",\"message_id\":\"[#399e7]\"}', NULL, '2023-05-18 03:59:00', '2023-05-18 03:59:00'),
('a2490755-ac2b-4c5a-bcc5-adb91c318e7a', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 11, '{\"booking_id\":19}', NULL, '2022-06-28 00:09:47', '2022-06-28 00:09:47'),
('a50856a8-18c8-422e-802f-faa271d369e6', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":55}', NULL, '2023-04-12 01:43:52', '2023-04-12 01:43:52'),
('a5207aa2-d70d-4ad8-b69b-f9456741c0e2', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 10, '{\"booking_id\":15}', '2022-06-05 03:48:01', '2022-06-03 04:54:42', '2022-06-05 03:48:01'),
('a8f1f0b5-0201-409f-a747-049d54c69ca3', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 1, '{\"booking_id\":4}', '2023-04-13 04:08:30', '2022-05-09 07:25:26', '2023-04-13 04:08:30'),
('a9d41256-2f0d-48c5-877a-443164de970a', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":26}', NULL, '2023-04-04 19:00:20', '2023-04-04 19:00:20'),
('aa1b4bb2-a8d7-44de-8882-0d867f931c01', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":104}', NULL, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
('aa480e5a-c61f-463a-9719-a14579898e7b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 252, '{\"booking_id\":124}', NULL, '2024-11-14 06:07:40', '2024-11-14 06:07:40'),
('abd4013d-b6d0-4e53-8ee5-e1ae0e3dbae7', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 12, '{\"booking_id\":25}', NULL, '2022-07-29 04:08:26', '2022-07-29 04:08:26'),
('ac3f0f47-6dc5-45d1-b030-4749109aeceb', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":103}', NULL, '2023-05-03 06:37:48', '2023-05-03 06:37:48'),
('b01242d1-bdc0-481b-93e7-4aaa0d8e4aaf', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":50}', NULL, '2023-04-11 12:35:08', '2023-04-11 12:35:08'),
('b6676012-8375-4632-a7e8-45991576b307', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 245, '{\"booking_id\":122}', NULL, '2024-05-17 00:23:56', '2024-05-17 00:23:56'),
('b8a78fd6-9051-44d4-b423-2b0154e63408', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":116}', NULL, '2023-05-26 04:12:16', '2023-05-26 04:12:16'),
('b9bd4248-0858-4e10-b916-4b9b6276179b', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 3, '{\"booking_id\":103}', NULL, '2023-05-03 06:37:45', '2023-05-03 06:37:45'),
('bcca5fab-7f53-48ca-bea0-66f56d862733', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 6, '{\"booking_id\":118}', NULL, '2023-06-23 02:50:51', '2023-06-23 02:50:51'),
('bcfbb772-f302-4113-8328-6cdec2753732', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":46}', NULL, '2023-04-11 12:22:46', '2023-04-11 12:22:46'),
('bd4590cc-fbb3-4bae-ba51-6d9397b062d3', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":21}', NULL, '2022-07-02 16:43:50', '2022-07-02 16:43:50'),
('bd8d32ff-30a8-44fd-8d4a-62aaf36472dd', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":33}', NULL, '2023-04-10 17:34:58', '2023-04-10 17:34:58'),
('beec0b3e-cfb7-4163-81f7-e760e21a6907', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 12, '{\"booking_id\":25}', NULL, '2022-07-29 03:54:56', '2022-07-29 03:54:56'),
('c03fe3b2-835c-4103-a6de-6f37beb7d852', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":14}', '2022-07-27 00:10:10', '2022-07-20 00:07:20', '2022-07-27 00:10:10'),
('c87cdf4d-e0a7-4ee6-8adf-f8d27d50e62a', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":119}', NULL, '2023-08-03 03:02:21', '2023-08-03 03:02:21'),
('cab1102a-82aa-4b98-94fd-d82be48c6b52', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 96, '{\"from\":\"test user\",\"message_id\":\"[#399e7]\"}', NULL, '2023-05-18 04:01:10', '2023-05-18 04:01:10'),
('cd79f9de-a62d-42ac-9f84-a46f81d5b032', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":108}', NULL, '2023-05-03 06:37:50', '2023-05-03 06:37:50'),
('cf31df52-0b5a-43e1-8ef1-a47a4582e7bb', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":109}', NULL, '2023-05-03 06:38:31', '2023-05-03 06:38:31'),
('d2947cf1-ed18-401d-822d-c221698566ad', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 14, '{\"from\":\"john doe\",\"message_id\":\"[#93133]\"}', NULL, '2022-07-29 03:55:51', '2022-07-29 03:55:51'),
('d31b1b34-155c-470b-a06d-c1dc8fc81876', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":35}', NULL, '2023-04-10 17:40:12', '2023-04-10 17:40:12'),
('d4b2381f-bcfb-4485-9106-00c7897f26ef', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 6, '{\"booking_id\":118}', NULL, '2023-06-23 02:51:05', '2023-06-23 02:51:05'),
('d572ccab-7ece-45d9-a3e8-01fd04101f5e', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":113}', NULL, '2023-05-18 03:11:25', '2023-05-18 03:11:25'),
('d59fe510-6dc5-42ce-b040-e8ecee2875c7', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":32}', NULL, '2023-04-10 17:31:58', '2023-04-10 17:31:58'),
('d94d0570-4d55-4e2b-83f2-a06925e13628', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 1, '{\"booking_id\":1}', '2022-07-21 07:16:44', '2022-06-03 04:53:23', '2022-07-21 07:16:44'),
('db496338-a358-481a-9c88-b13b649e44c9', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 14, '{\"booking_id\":25}', NULL, '2022-07-29 03:56:38', '2022-07-29 03:56:38'),
('dbd84e66-5829-4019-97bc-ecfbd162315c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":98}', '2023-04-13 05:41:48', '2023-04-13 05:24:10', '2023-04-13 05:41:48'),
('dbd9b8f3-d8d7-47b0-88e2-b0602ef74dcf', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 33, '{\"booking_id\":118}', NULL, '2023-06-23 02:01:15', '2023-06-23 02:01:15'),
('de55c16b-8cf8-4b3e-a98d-5ffe7550143d', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 96, '{\"from\":\"test user\",\"message_id\":\"[#7f972]\"}', NULL, '2023-05-18 03:48:24', '2023-05-18 03:48:24'),
('e2701624-41d3-4302-94ba-8027f27140eb', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 9, '{\"booking_id\":18}', '2023-04-13 03:40:17', '2022-06-03 04:52:48', '2023-04-13 03:40:17'),
('e2829fc3-98c1-4233-9db6-5831d0c7fe2d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":100}', NULL, '2023-04-14 02:34:17', '2023-04-14 02:34:17'),
('e4c27f6e-aee7-4fa8-ac86-046ffd11e17e', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":105}', NULL, '2023-05-03 06:37:49', '2023-05-03 06:37:49'),
('e5855f16-31c1-469d-b567-5908e8039073', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":112}', NULL, '2023-05-16 05:46:17', '2023-05-16 05:46:17'),
('e5d93b38-b35c-4032-aac0-0270480d72b1', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":120}', NULL, '2024-04-03 03:43:49', '2024-04-03 03:43:49'),
('e7b1cce5-bb6f-4e2d-9f6f-53f133e23520', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 14, '{\"booking_id\":25}', NULL, '2022-07-29 03:56:59', '2022-07-29 03:56:59'),
('e8702f27-1ed3-4067-b69c-0b8f66202f5f', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 6, '{\"booking_id\":111}', NULL, '2023-05-16 02:55:34', '2023-05-16 02:55:34'),
('ea616619-5188-482b-8ee8-d907f45d9214', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 13, '{\"booking_id\":25}', NULL, '2022-07-29 03:57:19', '2022-07-29 03:57:19'),
('ebbcc980-f7fb-46cc-b16e-2efe6717b4da', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":31}', NULL, '2023-04-10 17:29:40', '2023-04-10 17:29:40'),
('ebc2d460-12e8-49a0-854b-497a6fdf3763', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 15, '{\"booking_id\":25}', '2022-07-29 04:07:34', '2022-07-29 03:57:19', '2022-07-29 04:07:34'),
('efb34d67-796a-4291-9ec4-000ad5f33318', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 5, '{\"booking_id\":27}', NULL, '2023-04-05 04:35:56', '2023-04-05 04:35:56'),
('f0571bec-0622-4053-b481-5a6d8ed430eb', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":108}', NULL, '2023-05-03 06:37:53', '2023-05-03 06:37:53'),
('f0c96338-e7e7-4a19-a5cd-395924ecd167', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 252, '{\"booking_id\":123}', NULL, '2024-11-14 06:07:27', '2024-11-14 06:07:27'),
('f0dc0eff-24ba-406e-88dd-007d926fc965', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":117}', NULL, '2023-06-23 00:26:48', '2023-06-23 00:26:48'),
('f678b7f9-1c68-4c89-a9f0-8f4fcb07bc61', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":53}', NULL, '2023-04-12 01:27:57', '2023-04-12 01:27:57'),
('f7e41c8b-3aa6-40f0-8759-95768ad3ba3a', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 96, '{\"from\":\"test user\",\"message_id\":\"[#399e7]\"}', NULL, '2023-05-18 03:59:00', '2023-05-18 03:59:00'),
('fc874aa6-29be-49fa-b0a7-22ef6b3284dc', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":54}', NULL, '2023-04-12 01:38:38', '2023-04-12 01:38:38'),
('fcb77735-f567-496e-8736-c9a705f91079', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":122}', NULL, '2024-05-17 00:23:57', '2024-05-17 00:23:57'),
('fd9812cc-5df5-492e-a39e-71e84270af51', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":34}', NULL, '2023-04-10 17:38:56', '2023-04-10 17:38:56'),
('fdf02b1c-0c44-4d4b-8286-5cf2ee622d45', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 14, '{\"booking_id\":25}', NULL, '2022-07-29 03:14:06', '2022-07-29 03:14:06'),
('ffd3c201-8ee8-4a16-ae9d-61a8b2fd58a5', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 22, '{\"booking_id\":104}', NULL, '2023-05-03 06:37:50', '2023-05-03 06:37:50'),
('fff92aca-41da-4139-ad12-23610161cf38', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":19}', NULL, '2022-06-28 00:11:09', '2022-06-28 00:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `e_service_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(101, '{\"en\":\"print images\"}', '{\"en\":\"for babies\"}', 30.00, 63, 2, '2022-07-29 03:17:25', '2022-07-29 03:17:25'),
(102, '{\"en\":\"print images\"}', '{\"en\":\"for babies\"}', 30.00, 63, 2, '2022-07-29 03:17:27', '2022-07-29 03:17:27'),
(107, '{\"en\":\"name\"}', '{\"en\":\"test\"}', 23323.00, 86, 2, '2024-04-01 02:57:47', '2024-04-01 02:57:47'),
(108, '{\"en\":\"tester\"}', '{\"en\":\"test\"}', 32.00, 88, 2, '2024-04-01 03:08:43', '2024-04-01 03:08:43'),
(109, '{\"en\":\"testert\"}', '{\"en\":\"ester\"}', 434.00, 88, 2, '2024-04-01 03:09:21', '2024-04-01 03:09:21'),
(111, '{\"en\":\"tester\"}', '{\"en\":\"tester\"}', 23.00, 97, 2, '2024-05-08 05:13:30', '2024-05-08 05:13:30'),
(112, '{\"en\":\"test\"}', '{\"en\":\"test\"}', 23.00, 97, 2, '2024-05-08 05:13:51', '2024-05-08 05:13:51'),
(113, '{\"en\":\"test\"}', '{\"en\":\"test\"}', 3232.00, 107, 2, '2024-05-09 03:04:27', '2024-05-09 03:04:27'),
(114, '{\"en\":\"test\"}', '{\"en\":\"test\"}', 42.00, 108, 2, '2024-05-09 03:05:31', '2024-05-09 03:05:31'),
(116, '{\"en\":\"Interior Cleaning\"}', '{\"en\":\"<p>test test<\\/p>\"}', 20.00, 118, 4, '2025-02-25 03:16:19', '2025-02-25 03:16:19'),
(118, '{\"en\":\"t\"}', '{\"en\":\"description\"}', 10.00, 157, 4, '2025-02-26 08:15:31', '2025-02-26 08:15:31'),
(119, '{\"en\":\"tt\"}', '{\"en\":\"description\"}', 100.00, 177, 4, '2025-02-27 03:46:45', '2025-02-27 03:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `allow_multiple`, `created_at`, `updated_at`) VALUES
(1, 'Size', 1, '2021-01-22 17:49:15', '2021-02-07 18:30:19'),
(2, 'Area', 1, '2021-01-22 18:46:28', '2021-01-22 18:46:28'),
(3, 'Surface', 0, '2021-01-22 18:46:47', '2021-01-22 18:46:47'),
(4, '{\"en\":\"Extra Add-ons\"}', 1, '2025-02-25 03:14:42', '2025-02-25 03:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('provider@demo.com', '$2y$10$fucqWOaGHmrexJhvlX7MNOz0XSwA1bBXdEFM6h5EpdXudwi2ybz3e', '2022-07-26 06:05:34'),
('amira95ibrahim@gmail.com', '$2y$10$fxiJwPK7XaYoelhUGgBTSOBC6y34rsb99hihKOjgMK09l1RxcFKdu', '2022-08-03 04:56:17'),
('mariamalbarghouti@gmail.com', '$2y$10$u.0W5vRF4/6awHZXKqOaQ.C6aQXRICFkS4XiuGV6OSy5cT.mFgmKO', '2022-08-06 05:36:07'),
('admin@demo.com', '$2y$10$sYYs7AsKW/T6s2P6pm49aurmCxqJUWTi4d1zGt89MWwHHEFHNScbG', '2022-08-08 01:54:29'),
('alaa.kassem816@gmail.com', '$2y$10$2mKy6KebMQY6pBIyAH0pB.2bCLASTJzftp1wEAb/Cjc.rLRwbUT1S', '2025-02-21 08:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `payment_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `description`, `user_id`, `payment_method_id`, `payment_status_id`, `created_at`, `updated_at`) VALUES
(1, 20.00, 'Transaction for Booking #20', 12, 6, 1, '2022-07-02 16:33:45', '2022-07-02 16:33:45'),
(2, 0.00, 'Transaction for Booking #16', 10, 6, 1, '2022-07-18 06:59:35', '2022-07-18 06:59:35'),
(3, 0.00, 'Transaction for Booking #17', 10, 6, 1, '2022-07-18 14:47:55', '2022-07-18 14:47:55'),
(4, 10.00, 'Transaction for Booking #23', 10, 6, 1, '2022-07-19 23:54:34', '2022-07-19 23:54:34'),
(5, 0.16, 'Transaction for Booking #25', 12, 6, 2, '2022-07-29 03:57:19', '2022-07-29 04:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `route` varchar(127) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `route`, `order`, `default`, `enabled`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"RazorPay\"}', '{\"en\":\"Click to pay with RazorPay gateway\"}', '/RazorPay', 0, 0, 0, '2021-01-17 12:33:49', '2022-06-28 04:02:03'),
(5, '{\"en\":\"PayPal\"}', '{\"en\":\"Click to pay with your PayPal account\"}', '/PayPal', 1, 0, 0, '2021-01-17 13:46:06', '2023-06-23 00:20:27'),
(6, '{\"en\":\"Cash\"}', '{\"en\":\"Click to pay cash when finish\"}', '/Cash', 2, 1, 1, '2021-02-17 20:38:42', '2022-07-19 13:12:30'),
(7, '{\"en\":\"Credit Card (Stripe)\"}', '{\"en\":\"Click to pay with your Credit Card\"}', '/Stripe', 3, 0, 0, '2021-02-17 20:38:42', '2023-06-23 00:20:38'),
(8, '{\"en\":\"PayStack\"}', '{\"en\":\"Click to pay with PayStack gateway\"}', '/PayStack', 5, 0, 0, '2021-07-23 20:38:42', '2022-06-28 04:03:11'),
(9, '{\"en\":\"FlutterWave\"}', '{\"en\":\"Click to pay with FlutterWave gateway\"}', '/FlutterWave', 6, 0, 0, '2021-07-23 20:38:42', '2022-06-28 04:03:28'),
(10, '{\"en\":\"Malaysian Stripe FPX\"}', '{\"en\":\"Click to pay with Stripe FPX gateway\"}', '/StripeFPX', 7, 0, 0, '2021-07-24 20:38:42', '2022-06-28 04:04:00'),
(11, '{\"en\":\"Wallet\"}', '{\"en\":\"Click to pay with Wallet\"}', '/Wallet', 0, 0, 0, '2021-08-08 20:38:42', '2022-06-28 04:03:46'),
(12, '{\"en\":\"PayMongo\"}', '{\"en\":\"Click to pay with PayMongo\"}', '/PayMongo', 0, 0, 0, '2021-10-08 20:38:42', '2022-06-28 04:02:23'),
(14, '{\"en\":\"Whish Money\"}', '{\"en\":\"click to pay with whish money\"}', 'wishmoney', 4, 0, 1, '2022-07-19 09:45:43', '2022-07-19 23:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

CREATE TABLE `payment_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_statuses`
--

INSERT INTO `payment_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2021-01-17 13:28:28', '2021-02-17 19:55:15'),
(2, 'Paid', 10, '2021-01-11 21:19:49', '2021-02-17 19:55:53'),
(3, 'Failed', 20, '2021-01-17 12:05:04', '2021-02-17 19:56:32'),
(4, 'Refunded', 40, '2021-02-17 19:58:14', '2021-02-17 19:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2021-01-07 11:17:34', '2021-01-07 11:17:34'),
(2, 'medias.create', 'web', '2021-01-07 11:17:35', '2021-01-07 11:17:35'),
(3, 'users.profile', 'web', '2021-01-07 11:17:35', '2021-01-07 11:17:35'),
(4, 'users.index', 'web', '2021-01-07 11:17:35', '2021-01-07 11:17:35'),
(5, 'users.create', 'web', '2021-01-07 11:17:35', '2021-01-07 11:17:35'),
(6, 'users.store', 'web', '2021-01-07 11:17:35', '2021-01-07 11:17:35'),
(7, 'users.show', 'web', '2021-01-07 11:17:35', '2021-01-07 11:17:35'),
(8, 'users.edit', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(9, 'users.update', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(10, 'users.destroy', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(11, 'medias.delete', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(12, 'medias', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(13, 'permissions.index', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(14, 'permissions.create', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(15, 'permissions.store', 'web', '2021-01-07 11:17:36', '2021-01-07 11:17:36'),
(16, 'permissions.show', 'web', '2021-01-07 11:17:37', '2021-01-07 11:17:37'),
(17, 'permissions.edit', 'web', '2021-01-07 11:17:37', '2021-01-07 11:17:37'),
(18, 'permissions.update', 'web', '2021-01-07 11:17:37', '2021-01-07 11:17:37'),
(19, 'permissions.destroy', 'web', '2021-01-07 11:17:37', '2021-01-07 11:17:37'),
(20, 'roles.index', 'web', '2021-01-07 11:17:37', '2021-01-07 11:17:37'),
(21, 'roles.create', 'web', '2021-01-07 11:17:37', '2021-01-07 11:17:37'),
(22, 'roles.store', 'web', '2021-01-07 11:17:37', '2021-01-07 11:17:37'),
(23, 'roles.show', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(24, 'roles.edit', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(25, 'roles.update', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(26, 'roles.destroy', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(27, 'customFields.index', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(28, 'customFields.create', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(29, 'customFields.store', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(30, 'customFields.show', 'web', '2021-01-07 11:17:38', '2021-01-07 11:17:38'),
(31, 'customFields.edit', 'web', '2021-01-07 11:17:39', '2021-01-07 11:17:39'),
(32, 'customFields.update', 'web', '2021-01-07 11:17:39', '2021-01-07 11:17:39'),
(33, 'customFields.destroy', 'web', '2021-01-07 11:17:39', '2021-01-07 11:17:39'),
(34, 'currencies.index', 'web', '2021-01-07 11:17:39', '2021-01-07 11:17:39'),
(35, 'currencies.create', 'web', '2021-01-07 11:17:39', '2021-01-07 11:17:39'),
(36, 'currencies.store', 'web', '2021-01-07 11:17:39', '2021-01-07 11:17:39'),
(37, 'currencies.edit', 'web', '2021-01-07 11:17:39', '2021-01-07 11:17:39'),
(38, 'currencies.update', 'web', '2021-01-07 11:17:40', '2021-01-07 11:17:40'),
(39, 'currencies.destroy', 'web', '2021-01-07 11:17:40', '2021-01-07 11:17:40'),
(40, 'users.login-as-user', 'web', '2021-01-07 11:17:40', '2021-01-07 11:17:40'),
(41, 'app-settings', 'web', '2021-01-07 11:17:40', '2021-01-07 11:17:40'),
(42, 'faqCategories.index', 'web', '2021-01-07 11:17:40', '2021-01-07 11:17:40'),
(43, 'faqCategories.create', 'web', '2021-01-07 11:17:40', '2021-01-07 11:17:40'),
(44, 'faqCategories.store', 'web', '2021-01-07 11:17:40', '2021-01-07 11:17:40'),
(45, 'faqCategories.edit', 'web', '2021-01-07 11:17:41', '2021-01-07 11:17:41'),
(46, 'faqCategories.update', 'web', '2021-01-07 11:17:41', '2021-01-07 11:17:41'),
(47, 'faqCategories.destroy', 'web', '2021-01-07 11:17:41', '2021-01-07 11:17:41'),
(48, 'faqs.index', 'web', '2021-01-07 11:17:41', '2021-01-07 11:17:41'),
(49, 'faqs.create', 'web', '2021-01-07 11:17:41', '2021-01-07 11:17:41'),
(50, 'faqs.store', 'web', '2021-01-07 11:17:41', '2021-01-07 11:17:41'),
(51, 'faqs.edit', 'web', '2021-01-07 11:17:41', '2021-01-07 11:17:41'),
(52, 'faqs.update', 'web', '2021-01-07 11:17:42', '2021-01-07 11:17:42'),
(53, 'faqs.destroy', 'web', '2021-01-07 11:17:42', '2021-01-07 11:17:42'),
(54, 'payments.index', 'web', '2021-01-10 22:04:33', '2021-01-10 22:04:33'),
(55, 'payments.show', 'web', '2021-01-10 22:04:33', '2021-01-10 22:04:33'),
(56, 'payments.update', 'web', '2021-01-10 22:04:33', '2021-01-10 22:04:33'),
(57, 'paymentMethods.index', 'web', '2021-01-10 22:04:33', '2021-01-10 22:04:33'),
(58, 'paymentMethods.create', 'web', '2021-01-10 22:04:34', '2021-01-10 22:04:34'),
(59, 'paymentMethods.store', 'web', '2021-01-10 22:04:34', '2021-01-10 22:04:34'),
(60, 'paymentMethods.edit', 'web', '2021-01-10 22:04:34', '2021-01-10 22:04:34'),
(61, 'paymentMethods.update', 'web', '2021-01-10 22:04:34', '2021-01-10 22:04:34'),
(62, 'paymentMethods.destroy', 'web', '2021-01-10 22:04:34', '2021-01-10 22:04:34'),
(63, 'paymentStatuses.index', 'web', '2021-01-10 22:04:34', '2021-01-10 22:04:34'),
(64, 'paymentStatuses.create', 'web', '2021-01-10 22:04:34', '2021-01-10 22:04:34'),
(65, 'paymentStatuses.store', 'web', '2021-01-10 22:04:35', '2021-01-10 22:04:35'),
(66, 'paymentStatuses.edit', 'web', '2021-01-10 22:04:35', '2021-01-10 22:04:35'),
(67, 'paymentStatuses.update', 'web', '2021-01-10 22:04:35', '2021-01-10 22:04:35'),
(68, 'paymentStatuses.destroy', 'web', '2021-01-10 22:04:35', '2021-01-10 22:04:35'),
(69, 'verification.notice', 'web', '2021-01-12 08:19:50', '2021-01-12 08:19:50'),
(70, 'verification.verify', 'web', '2021-01-12 08:19:50', '2021-01-12 08:19:50'),
(71, 'verification.resend', 'web', '2021-01-12 08:19:51', '2021-01-12 08:19:51'),
(72, 'awards.index', 'web', '2021-01-12 08:19:51', '2021-01-12 08:19:51'),
(73, 'awards.create', 'web', '2021-01-12 08:19:52', '2021-01-12 08:19:52'),
(74, 'awards.store', 'web', '2021-01-12 08:19:52', '2021-01-12 08:19:52'),
(75, 'awards.show', 'web', '2021-01-12 08:19:52', '2021-01-12 08:19:52'),
(76, 'awards.edit', 'web', '2021-01-12 08:19:52', '2021-01-12 08:19:52'),
(77, 'awards.update', 'web', '2021-01-12 08:19:52', '2021-01-12 08:19:52'),
(78, 'awards.destroy', 'web', '2021-01-12 08:19:52', '2021-01-12 08:19:52'),
(79, 'experiences.index', 'web', '2021-01-12 09:20:29', '2021-01-12 09:20:29'),
(80, 'experiences.create', 'web', '2021-01-12 09:20:29', '2021-01-12 09:20:29'),
(81, 'experiences.store', 'web', '2021-01-12 09:20:30', '2021-01-12 09:20:30'),
(82, 'experiences.show', 'web', '2021-01-12 09:20:30', '2021-01-12 09:20:30'),
(83, 'experiences.edit', 'web', '2021-01-12 09:20:30', '2021-01-12 09:20:30'),
(84, 'experiences.update', 'web', '2021-01-12 09:20:30', '2021-01-12 09:20:30'),
(85, 'experiences.destroy', 'web', '2021-01-12 09:20:30', '2021-01-12 09:20:30'),
(92, 'eProviderTypes.index', 'web', '2021-01-13 09:31:08', '2021-01-13 09:31:08'),
(93, 'eProviderTypes.create', 'web', '2021-01-13 09:31:09', '2021-01-13 09:31:09'),
(94, 'eProviderTypes.store', 'web', '2021-01-13 09:31:09', '2021-01-13 09:31:09'),
(95, 'eProviderTypes.edit', 'web', '2021-01-13 09:31:09', '2021-01-13 09:31:09'),
(96, 'eProviderTypes.update', 'web', '2021-01-13 09:31:09', '2021-01-13 09:31:09'),
(97, 'eProviderTypes.destroy', 'web', '2021-01-13 09:31:09', '2021-01-13 09:31:09'),
(98, 'eProviders.index', 'web', '2021-01-13 09:48:55', '2021-01-13 09:48:55'),
(99, 'eProviders.create', 'web', '2021-01-13 09:48:56', '2021-01-13 09:48:56'),
(100, 'eProviders.store', 'web', '2021-01-13 09:48:56', '2021-01-13 09:48:56'),
(101, 'eProviders.edit', 'web', '2021-01-13 09:48:56', '2021-01-13 09:48:56'),
(102, 'eProviders.update', 'web', '2021-01-13 09:48:56', '2021-01-13 09:48:56'),
(103, 'eProviders.destroy', 'web', '2021-01-13 09:48:56', '2021-01-13 09:48:56'),
(104, 'addresses.index', 'web', '2021-01-13 09:48:56', '2021-01-13 09:48:56'),
(105, 'addresses.create', 'web', '2021-01-13 09:48:57', '2021-01-13 09:48:57'),
(106, 'addresses.store', 'web', '2021-01-13 09:48:57', '2021-01-13 09:48:57'),
(107, 'addresses.edit', 'web', '2021-01-13 09:48:57', '2021-01-13 09:48:57'),
(108, 'addresses.update', 'web', '2021-01-13 09:48:57', '2021-01-13 09:48:57'),
(109, 'addresses.destroy', 'web', '2021-01-13 09:48:57', '2021-01-13 09:48:57'),
(110, 'taxes.index', 'web', '2021-01-13 09:48:57', '2021-01-13 09:48:57'),
(111, 'taxes.create', 'web', '2021-01-13 09:48:57', '2021-01-13 09:48:57'),
(112, 'taxes.store', 'web', '2021-01-13 09:48:58', '2021-01-13 09:48:58'),
(113, 'taxes.edit', 'web', '2021-01-13 09:48:58', '2021-01-13 09:48:58'),
(114, 'taxes.update', 'web', '2021-01-13 09:48:58', '2021-01-13 09:48:58'),
(115, 'taxes.destroy', 'web', '2021-01-13 09:48:58', '2021-01-13 09:48:58'),
(116, 'availabilityHours.index', 'web', '2021-01-16 14:14:21', '2021-01-16 14:14:21'),
(117, 'availabilityHours.create', 'web', '2021-01-16 14:14:21', '2021-01-16 14:14:21'),
(118, 'availabilityHours.store', 'web', '2021-01-16 14:14:21', '2021-01-16 14:14:21'),
(119, 'availabilityHours.edit', 'web', '2021-01-16 14:14:21', '2021-01-16 14:14:21'),
(120, 'availabilityHours.update', 'web', '2021-01-16 14:14:22', '2021-01-16 14:14:22'),
(121, 'availabilityHours.destroy', 'web', '2021-01-16 14:14:22', '2021-01-16 14:14:22'),
(122, 'eServices.index', 'web', '2021-01-19 12:03:00', '2021-01-19 12:03:00'),
(123, 'eServices.create', 'web', '2021-01-19 12:03:00', '2021-01-19 12:03:00'),
(124, 'eServices.store', 'web', '2021-01-19 12:03:00', '2021-01-19 12:03:00'),
(126, 'eServices.edit', 'web', '2021-01-19 12:03:01', '2021-01-19 12:03:01'),
(127, 'eServices.update', 'web', '2021-01-19 12:03:01', '2021-01-19 12:03:01'),
(128, 'eServices.destroy', 'web', '2021-01-19 12:03:01', '2021-01-19 12:03:01'),
(129, 'categories.index', 'web', '2021-01-19 12:08:55', '2021-01-19 12:08:55'),
(130, 'categories.create', 'web', '2021-01-19 12:08:55', '2021-01-19 12:08:55'),
(131, 'categories.store', 'web', '2021-01-19 12:08:55', '2021-01-19 12:08:55'),
(132, 'categories.edit', 'web', '2021-01-19 12:08:55', '2021-01-19 12:08:55'),
(133, 'categories.update', 'web', '2021-01-19 12:08:56', '2021-01-19 12:08:56'),
(134, 'categories.destroy', 'web', '2021-01-19 12:08:56', '2021-01-19 12:08:56'),
(135, 'optionGroups.index', 'web', '2021-01-22 17:48:32', '2021-01-22 17:48:32'),
(136, 'optionGroups.create', 'web', '2021-01-22 17:48:32', '2021-01-22 17:48:32'),
(137, 'optionGroups.store', 'web', '2021-01-22 17:48:32', '2021-01-22 17:48:32'),
(138, 'optionGroups.edit', 'web', '2021-01-22 17:48:32', '2021-01-22 17:48:32'),
(139, 'optionGroups.update', 'web', '2021-01-22 17:48:32', '2021-01-22 17:48:32'),
(140, 'optionGroups.destroy', 'web', '2021-01-22 17:48:32', '2021-01-22 17:48:32'),
(141, 'options.index', 'web', '2021-01-22 18:10:51', '2021-01-22 18:10:51'),
(142, 'options.create', 'web', '2021-01-22 18:10:51', '2021-01-22 18:10:51'),
(143, 'options.store', 'web', '2021-01-22 18:10:52', '2021-01-22 18:10:52'),
(144, 'options.edit', 'web', '2021-01-22 18:10:52', '2021-01-22 18:10:52'),
(145, 'options.update', 'web', '2021-01-22 18:10:52', '2021-01-22 18:10:52'),
(146, 'options.destroy', 'web', '2021-01-22 18:10:52', '2021-01-22 18:10:52'),
(147, 'favorites.index', 'web', '2021-01-22 19:01:13', '2021-01-22 19:01:13'),
(148, 'favorites.create', 'web', '2021-01-22 19:01:13', '2021-01-22 19:01:13'),
(149, 'favorites.store', 'web', '2021-01-22 19:01:13', '2021-01-22 19:01:13'),
(150, 'favorites.edit', 'web', '2021-01-22 19:01:13', '2021-01-22 19:01:13'),
(151, 'favorites.update', 'web', '2021-01-22 19:01:13', '2021-01-22 19:01:13'),
(152, 'favorites.destroy', 'web', '2021-01-22 19:01:13', '2021-01-22 19:01:13'),
(153, 'eServiceReviews.index', 'web', '2021-01-23 17:42:57', '2021-01-23 17:42:57'),
(154, 'eServiceReviews.create', 'web', '2021-01-23 17:42:58', '2021-01-23 17:42:58'),
(155, 'eServiceReviews.store', 'web', '2021-01-23 17:42:58', '2021-01-23 17:42:58'),
(156, 'eServiceReviews.edit', 'web', '2021-01-23 17:42:58', '2021-01-23 17:42:58'),
(157, 'eServiceReviews.update', 'web', '2021-01-23 17:42:58', '2021-01-23 17:42:58'),
(158, 'eServiceReviews.destroy', 'web', '2021-01-23 17:42:58', '2021-01-23 17:42:58'),
(160, 'galleries.index', 'web', '2021-01-23 18:17:46', '2021-01-23 18:17:46'),
(161, 'galleries.create', 'web', '2021-01-23 18:17:47', '2021-01-23 18:17:47'),
(162, 'galleries.store', 'web', '2021-01-23 18:17:47', '2021-01-23 18:17:47'),
(163, 'galleries.edit', 'web', '2021-01-23 18:17:47', '2021-01-23 18:17:47'),
(164, 'galleries.update', 'web', '2021-01-23 18:17:47', '2021-01-23 18:17:47'),
(165, 'galleries.destroy', 'web', '2021-01-23 18:17:47', '2021-01-23 18:17:47'),
(166, 'requestedEProviders.index', 'web', '2021-01-25 07:53:17', '2021-01-25 07:53:17'),
(167, 'slides.index', 'web', '2021-01-25 09:01:20', '2021-01-25 09:01:20'),
(168, 'slides.create', 'web', '2021-01-25 09:01:20', '2021-01-25 09:01:20'),
(169, 'slides.store', 'web', '2021-01-25 09:01:20', '2021-01-25 09:01:20'),
(170, 'slides.edit', 'web', '2021-01-25 09:01:20', '2021-01-25 09:01:20'),
(171, 'slides.update', 'web', '2021-01-25 09:01:20', '2021-01-25 09:01:20'),
(172, 'slides.destroy', 'web', '2021-01-25 09:01:20', '2021-01-25 09:01:20'),
(173, 'notifications.index', 'web', '2021-01-25 13:42:33', '2021-01-25 13:42:33'),
(174, 'notifications.show', 'web', '2021-01-25 13:42:34', '2021-01-25 13:42:34'),
(175, 'notifications.destroy', 'web', '2021-01-25 13:42:34', '2021-01-25 13:42:34'),
(176, 'coupons.index', 'web', '2021-01-25 14:11:55', '2021-01-25 14:11:55'),
(177, 'coupons.create', 'web', '2021-01-25 14:11:55', '2021-01-25 14:11:55'),
(178, 'coupons.store', 'web', '2021-01-25 14:11:55', '2021-01-25 14:11:55'),
(179, 'coupons.edit', 'web', '2021-01-25 14:11:55', '2021-01-25 14:11:55'),
(180, 'coupons.update', 'web', '2021-01-25 14:11:55', '2021-01-25 14:11:55'),
(181, 'coupons.destroy', 'web', '2021-01-25 14:11:55', '2021-01-25 14:11:55'),
(182, 'bookingStatuses.index', 'web', '2021-01-25 17:21:01', '2021-01-25 17:21:01'),
(183, 'bookingStatuses.create', 'web', '2021-01-25 17:21:01', '2021-01-25 17:21:01'),
(184, 'bookingStatuses.store', 'web', '2021-01-25 17:21:01', '2021-01-25 17:21:01'),
(185, 'bookingStatuses.edit', 'web', '2021-01-25 17:21:01', '2021-01-25 17:21:01'),
(186, 'bookingStatuses.update', 'web', '2021-01-25 17:21:01', '2021-01-25 17:21:01'),
(187, 'bookingStatuses.destroy', 'web', '2021-01-25 17:21:01', '2021-01-25 17:21:01'),
(188, 'bookings.index', 'web', '2021-01-25 19:27:09', '2021-01-25 19:27:09'),
(189, 'bookings.create', 'web', '2021-01-25 19:27:09', '2021-01-25 19:27:09'),
(190, 'bookings.store', 'web', '2021-01-25 19:27:09', '2021-01-25 19:27:09'),
(191, 'bookings.show', 'web', '2021-01-25 19:27:09', '2021-01-25 19:27:09'),
(192, 'bookings.edit', 'web', '2021-01-25 19:27:09', '2021-01-25 19:27:09'),
(193, 'bookings.update', 'web', '2021-01-25 19:27:09', '2021-01-25 19:27:09'),
(194, 'bookings.destroy', 'web', '2021-01-25 19:27:09', '2021-01-25 19:27:09'),
(195, 'eProviderPayouts.index', 'web', '2021-01-30 09:23:08', '2021-01-30 09:23:08'),
(196, 'eProviderPayouts.create', 'web', '2021-01-30 09:23:08', '2021-01-30 09:23:08'),
(197, 'eProviderPayouts.store', 'web', '2021-01-30 09:23:08', '2021-01-30 09:23:08'),
(198, 'eProviderPayouts.destroy', 'web', '2021-01-30 09:23:09', '2021-01-30 09:23:09'),
(199, 'earnings.index', 'web', '2021-01-30 11:57:57', '2021-01-30 11:57:57'),
(200, 'earnings.create', 'web', '2021-01-30 11:57:57', '2021-01-30 11:57:57'),
(201, 'earnings.store', 'web', '2021-01-30 11:57:57', '2021-01-30 11:57:57'),
(202, 'earnings.destroy', 'web', '2021-01-30 11:57:57', '2021-01-30 11:57:57'),
(203, 'customPages.index', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(204, 'customPages.create', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(205, 'customPages.store', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(206, 'customPages.show', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(207, 'customPages.edit', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(208, 'customPages.update', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(209, 'customPages.destroy', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(210, 'wallets.index', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(211, 'wallets.create', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(212, 'wallets.store', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(213, 'wallets.update', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(214, 'wallets.edit', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(215, 'wallets.destroy', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(216, 'walletTransactions.index', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(217, 'walletTransactions.create', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(218, 'walletTransactions.store', 'web', '2021-02-24 09:37:44', '2021-02-24 09:37:44'),
(219, 'videos', 'web', '2022-03-23 07:01:52', '2022-03-23 07:01:52'),
(220, 'videos.index', 'web', '2022-03-23 07:04:07', '2022-03-23 07:04:07'),
(221, 'videos.edit', 'web', '2022-03-31 06:22:08', '2022-03-31 06:22:08'),
(223, 'eProvider.edit-gallery', 'web', '2022-04-19 01:33:14', '2022-04-19 01:33:14'),
(224, 'eProvider.edit-hour', 'web', '2022-04-19 01:33:39', '2022-04-19 01:33:39'),
(225, 'eProvider.edit-award', 'web', '2022-04-19 01:34:00', '2022-04-19 01:34:00'),
(226, 'eProvider.edit-exp', 'web', '2022-04-19 01:34:19', '2022-04-19 01:34:19'),
(227, 'eProvider.edit-service', 'web', '2022-04-25 22:59:51', '2022-04-25 22:59:51'),
(228, 'user.changePassword', 'api', '2022-06-29 09:15:15', '2022-06-29 09:24:47'),
(229, 'wishmoney.checkout', 'web', '2022-07-18 14:04:02', '2022-07-18 14:04:02'),
(230, 'roles.store', 'web', '2023-04-13 05:00:23', '2023-04-13 05:01:14'),
(231, 'customers.index', 'web', '2023-06-23 05:25:35', '2023-06-23 05:25:35'),
(232, 'customers.edit', 'web', '2023-07-03 01:27:47', '2023-07-03 01:28:22'),
(233, 'customers.update', 'web', '2023-07-03 01:59:40', '2023-07-03 01:59:40'),
(234, 'customers.store', 'web', '2023-07-03 02:00:29', '2023-07-03 02:00:29'),
(235, 'customers.create', 'web', '2023-07-03 02:34:12', '2023-07-03 02:34:12'),
(236, 'customers.destroy', 'web', '2023-07-03 02:58:20', '2023-07-03 02:58:20'),
(237, 'e_ProviderAdmins.create', 'web', '2023-07-04 01:28:53', '2023-07-04 01:44:46'),
(238, 'e_ProviderAdmins.store', 'web', '2023-07-04 01:29:12', '2023-07-04 01:44:08'),
(239, 'e_ProviderAdmins.edit', 'web', '2023-07-04 01:29:28', '2023-07-04 01:44:20'),
(240, 'e_ProviderAdmins.index', 'web', '2023-07-04 01:29:54', '2023-07-04 01:42:08'),
(241, 'e_ProviderAdmins.update', 'web', '2023-07-04 01:30:06', '2023-07-04 01:43:54'),
(242, 'e_ProviderAdmins.destroy', 'web', '2023-07-04 01:30:43', '2023-07-04 01:44:31'),
(243, 'employees.index', 'web', '2024-05-10 04:49:34', '2024-05-10 04:49:34'),
(244, 'Allusers', 'web', '2025-02-25 07:16:22', '2025-02-25 07:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', 0, NULL, NULL),
(3, 'provider', 'web', 1, NULL, NULL),
(4, 'customer', 'web', 1, NULL, NULL),
(5, 'super admin', 'web', 0, '2023-04-13 05:01:36', '2023-04-13 05:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 5),
(5, 2),
(5, 5),
(6, 2),
(6, 5),
(7, 2),
(7, 5),
(8, 2),
(8, 5),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(10, 2),
(10, 5),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(12, 2),
(12, 3),
(12, 5),
(13, 2),
(13, 5),
(14, 2),
(14, 5),
(15, 2),
(15, 5),
(16, 2),
(16, 5),
(17, 2),
(17, 5),
(18, 2),
(18, 5),
(19, 2),
(19, 5),
(20, 2),
(20, 5),
(21, 5),
(22, 5),
(23, 2),
(23, 5),
(24, 2),
(24, 5),
(25, 5),
(26, 2),
(26, 5),
(27, 2),
(27, 5),
(28, 2),
(28, 5),
(29, 2),
(29, 5),
(30, 2),
(30, 5),
(31, 2),
(31, 5),
(32, 2),
(32, 5),
(33, 2),
(33, 5),
(34, 2),
(34, 5),
(35, 2),
(35, 5),
(36, 2),
(36, 5),
(37, 2),
(37, 5),
(38, 2),
(38, 5),
(39, 2),
(39, 5),
(40, 2),
(40, 5),
(41, 2),
(41, 5),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(43, 2),
(43, 5),
(44, 2),
(44, 5),
(45, 2),
(45, 5),
(46, 2),
(46, 5),
(47, 2),
(47, 5),
(48, 2),
(48, 3),
(48, 4),
(48, 5),
(49, 2),
(49, 5),
(50, 2),
(50, 5),
(51, 2),
(51, 5),
(52, 2),
(52, 5),
(53, 2),
(53, 5),
(54, 2),
(54, 3),
(54, 4),
(54, 5),
(55, 2),
(55, 5),
(56, 2),
(56, 5),
(57, 2),
(57, 3),
(57, 5),
(58, 2),
(58, 5),
(59, 2),
(59, 5),
(60, 2),
(60, 5),
(61, 2),
(61, 5),
(62, 2),
(62, 5),
(63, 2),
(63, 5),
(64, 2),
(64, 5),
(65, 2),
(65, 5),
(66, 2),
(66, 5),
(67, 2),
(67, 5),
(68, 2),
(68, 5),
(69, 2),
(69, 5),
(70, 2),
(70, 5),
(71, 2),
(71, 5),
(72, 2),
(72, 3),
(72, 5),
(73, 2),
(73, 3),
(73, 5),
(74, 2),
(74, 3),
(74, 5),
(75, 2),
(75, 3),
(75, 5),
(76, 2),
(76, 3),
(76, 5),
(77, 2),
(77, 3),
(77, 5),
(78, 2),
(78, 3),
(78, 5),
(79, 2),
(79, 3),
(79, 5),
(80, 2),
(80, 3),
(80, 5),
(81, 2),
(81, 3),
(81, 5),
(82, 2),
(82, 3),
(82, 5),
(83, 2),
(83, 3),
(83, 5),
(84, 2),
(84, 3),
(84, 5),
(85, 2),
(85, 3),
(85, 5),
(92, 2),
(92, 3),
(92, 5),
(93, 2),
(93, 5),
(94, 2),
(94, 5),
(95, 2),
(95, 5),
(96, 2),
(96, 5),
(97, 2),
(97, 5),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(99, 2),
(99, 3),
(99, 4),
(99, 5),
(100, 2),
(100, 3),
(100, 4),
(100, 5),
(101, 2),
(101, 3),
(101, 5),
(102, 2),
(102, 3),
(102, 5),
(103, 2),
(103, 5),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(105, 2),
(105, 3),
(105, 4),
(105, 5),
(106, 2),
(106, 3),
(106, 4),
(106, 5),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(108, 4),
(108, 5),
(109, 2),
(109, 3),
(109, 4),
(109, 5),
(110, 2),
(110, 5),
(111, 2),
(111, 5),
(112, 2),
(112, 5),
(113, 2),
(113, 5),
(114, 2),
(114, 5),
(115, 2),
(115, 5),
(116, 2),
(116, 3),
(116, 5),
(117, 2),
(117, 3),
(117, 5),
(118, 2),
(118, 3),
(118, 5),
(119, 2),
(119, 3),
(119, 5),
(120, 2),
(120, 3),
(120, 5),
(121, 2),
(121, 3),
(121, 5),
(122, 2),
(122, 3),
(122, 4),
(122, 5),
(123, 2),
(123, 3),
(123, 5),
(124, 2),
(124, 3),
(124, 5),
(126, 2),
(126, 3),
(126, 5),
(127, 2),
(127, 3),
(127, 5),
(128, 2),
(128, 3),
(128, 5),
(129, 2),
(129, 3),
(129, 4),
(129, 5),
(130, 2),
(130, 5),
(131, 2),
(131, 5),
(132, 2),
(132, 5),
(133, 2),
(133, 5),
(134, 2),
(134, 5),
(135, 2),
(135, 3),
(135, 5),
(136, 2),
(136, 3),
(136, 5),
(137, 2),
(137, 3),
(137, 5),
(138, 2),
(138, 5),
(139, 2),
(139, 5),
(140, 2),
(140, 5),
(141, 2),
(141, 3),
(141, 5),
(142, 2),
(142, 3),
(142, 5),
(143, 2),
(143, 3),
(143, 5),
(144, 2),
(144, 3),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(147, 2),
(147, 3),
(147, 4),
(147, 5),
(148, 2),
(148, 5),
(149, 2),
(149, 3),
(149, 5),
(150, 2),
(150, 5),
(151, 2),
(151, 3),
(151, 5),
(152, 2),
(152, 5),
(153, 2),
(153, 3),
(153, 4),
(153, 5),
(154, 5),
(155, 5),
(156, 2),
(156, 3),
(156, 4),
(156, 5),
(157, 2),
(157, 3),
(157, 4),
(157, 5),
(158, 2),
(158, 5),
(160, 2),
(160, 3),
(160, 5),
(161, 2),
(161, 3),
(161, 5),
(162, 2),
(162, 3),
(162, 5),
(163, 2),
(163, 3),
(163, 5),
(164, 2),
(164, 3),
(164, 5),
(165, 2),
(165, 3),
(165, 5),
(166, 2),
(166, 3),
(166, 4),
(166, 5),
(167, 2),
(167, 5),
(168, 2),
(168, 5),
(169, 2),
(169, 5),
(170, 2),
(170, 5),
(171, 2),
(171, 5),
(172, 2),
(172, 5),
(173, 2),
(173, 3),
(173, 4),
(173, 5),
(174, 2),
(174, 5),
(175, 2),
(175, 3),
(175, 4),
(175, 5),
(176, 2),
(176, 3),
(176, 5),
(177, 2),
(178, 2),
(178, 5),
(179, 2),
(179, 3),
(179, 5),
(180, 2),
(180, 3),
(180, 5),
(181, 2),
(182, 2),
(182, 3),
(182, 5),
(183, 5),
(184, 5),
(185, 2),
(185, 5),
(186, 2),
(186, 5),
(187, 5),
(188, 2),
(188, 3),
(188, 4),
(188, 5),
(189, 5),
(190, 5),
(191, 2),
(191, 3),
(191, 4),
(191, 5),
(192, 2),
(192, 3),
(192, 5),
(193, 2),
(193, 3),
(193, 5),
(194, 2),
(194, 3),
(194, 5),
(195, 2),
(195, 3),
(195, 5),
(196, 2),
(196, 3),
(196, 5),
(197, 2),
(197, 3),
(197, 5),
(198, 5),
(199, 2),
(199, 3),
(199, 5),
(200, 2),
(200, 3),
(200, 5),
(201, 5),
(202, 5),
(203, 2),
(203, 3),
(203, 4),
(203, 5),
(204, 2),
(204, 5),
(205, 2),
(205, 5),
(206, 2),
(206, 5),
(207, 2),
(207, 5),
(208, 2),
(208, 5),
(209, 2),
(209, 5),
(210, 2),
(210, 3),
(210, 4),
(210, 5),
(211, 2),
(211, 5),
(212, 2),
(212, 5),
(213, 2),
(213, 5),
(214, 2),
(214, 5),
(215, 2),
(215, 5),
(216, 2),
(216, 3),
(216, 4),
(216, 5),
(217, 2),
(217, 5),
(218, 2),
(218, 5),
(219, 2),
(219, 3),
(219, 5),
(220, 2),
(220, 3),
(220, 5),
(221, 2),
(221, 5),
(223, 2),
(223, 3),
(223, 5),
(224, 2),
(224, 3),
(224, 5),
(225, 2),
(225, 3),
(225, 5),
(226, 2),
(226, 3),
(226, 5),
(227, 2),
(227, 3),
(227, 5),
(228, 2),
(228, 3),
(228, 4),
(229, 2),
(229, 3),
(229, 4),
(229, 5),
(231, 2),
(231, 5),
(232, 2),
(232, 5),
(233, 2),
(233, 5),
(234, 2),
(234, 5),
(235, 2),
(235, 5),
(236, 2),
(236, 5),
(237, 2),
(237, 5),
(238, 2),
(238, 5),
(239, 2),
(239, 5),
(240, 2),
(240, 5),
(241, 2),
(241, 5),
(242, 2),
(242, 5),
(243, 2),
(243, 5),
(244, 2),
(244, 5);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT 0,
  `text` longtext DEFAULT NULL,
  `button` longtext DEFAULT NULL,
  `text_position` varchar(50) DEFAULT 'start',
  `text_color` varchar(36) DEFAULT NULL,
  `button_color` varchar(36) DEFAULT NULL,
  `background_color` varchar(36) DEFAULT NULL,
  `indicator_color` varchar(36) DEFAULT NULL,
  `image_fit` varchar(50) DEFAULT 'cover',
  `e_service_id` int(10) UNSIGNED DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `e_service_id`, `e_provider_id`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"en\":\"Assign a Handyman at Work to Fix the Household\"}', '{\"en\":\"Discover It\"}', 'bottom_start', '#333333', '#009E6A', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-25 09:51:45', '2023-05-16 00:09:28'),
(2, 2, '{\"en\":\"Fix the Broken Stuff by Asking for the Technicians\"}', '{\"en\":\"Repair\"}', 'bottom_start', '#333333', '#F4841F', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-25 12:23:49', '2022-04-16 19:14:35'),
(3, 3, '{\"en\":\"Add Hands to Your Cleaning Chores\"}', '{\"en\":\"Book Now\"}', 'bottom_start', '#333333', '#1FA3F4', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-31 09:04:36', '2022-05-09 01:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `value` double(10,2) NOT NULL DEFAULT 0.00,
  `type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tax 20', 20.00, 'percent', '2021-01-15 09:12:13', '2021-02-01 19:23:01'),
(2, 'Tax 10', 10.00, 'percent', '2021-01-15 09:19:30', '2021-01-15 09:19:30'),
(3, 'Maintenance', 2.00, 'fixed', '2021-01-18 18:48:29', '2021-02-01 19:25:13'),
(4, 'Tools Fee', 5.00, 'fixed', '2021-02-01 19:24:12', '2021-02-01 19:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(13, '13ca26b7-f3d9-4fee-a211-48e18f136f1b', '2022-04-03 03:59:30', '2022-04-03 03:59:30'),
(15, '7efae5d8-d509-4a43-9efc-5ce480df32c9', '2022-04-03 21:53:23', '2022-04-03 21:53:23'),
(16, 'efa698ca-1b64-4eea-b58b-b4d94347ce1f', '2022-04-03 21:53:56', '2022-04-03 21:53:56'),
(17, 'aa85a395-8099-447b-b81d-5b98e006c3d1', '2022-04-03 22:04:29', '2022-04-03 22:04:29'),
(18, 'e3efa97f-4b9f-4161-8e61-eaf747ec1cf1', '2022-04-03 22:05:35', '2022-04-03 22:05:35'),
(19, 'cb5edabc-5a63-4e34-8332-7782b7e204e6', '2022-04-03 22:32:39', '2022-04-03 22:32:39'),
(20, '320d2bc0-eac6-49e6-ae25-c244af5f8483', '2022-04-07 19:05:45', '2022-04-07 19:05:45'),
(24, 'e31a8975-bc28-464e-b84c-e0ffb7820521', '2022-04-15 07:23:42', '2022-04-15 07:23:42'),
(26, '842ee81b-e34e-489b-8739-c364dfba87a6', '2022-04-16 18:51:20', '2022-04-16 18:51:20'),
(27, 'b11b22dc-8f07-4b8a-a8c1-11de41d16176', '2022-04-16 18:52:48', '2022-04-16 18:52:48'),
(28, 'd2078951-d87d-4117-a11b-91b05abea37e', '2022-04-16 18:57:34', '2022-04-16 18:57:34'),
(29, 'f9b59294-2c8e-4976-a16a-afef00dadd82', '2022-04-16 19:14:11', '2022-04-16 19:14:11'),
(30, 'eba0fa05-e257-432c-8549-6a6ad3ad124c', '2022-04-16 19:14:34', '2022-04-16 19:14:34'),
(31, 'edd64aa1-53d6-44b7-9d68-1ab0dcd1ce52', '2022-04-16 19:14:48', '2022-04-16 19:14:48'),
(32, 'd091364e-5357-4c04-9549-ea355dbcfc62', '2022-04-16 19:16:16', '2022-04-16 19:16:16'),
(33, '32af0057-225a-4616-b00a-cf940c29ff44', '2022-04-16 19:17:16', '2022-04-16 19:17:16'),
(34, 'da895d4e-b598-49c4-9cd6-999324749e05', '2022-04-16 19:17:30', '2022-04-16 19:17:30'),
(35, 'bc10d75f-9658-47bf-bd4a-d47141acbf4d', '2022-04-16 19:17:47', '2022-04-16 19:17:47'),
(36, 'cde9a15c-f001-4ae2-896e-00f53456f5e1', '2022-04-16 19:18:35', '2022-04-16 19:18:35'),
(37, 'b4084275-31f0-4f1e-8b96-a718a1c609a4', '2022-04-16 19:18:51', '2022-04-16 19:18:51'),
(38, '16f4e8c5-84ee-444f-8498-2f1f34e73d75', '2022-04-17 20:27:18', '2022-04-17 20:27:18'),
(39, '3ebe175e-0155-4c96-a891-17666fe37bf5', '2022-04-17 20:29:49', '2022-04-17 20:29:49'),
(40, '6dfb2958-889a-4e41-acb2-e97fda4a0cf9', '2022-04-17 20:31:13', '2022-04-17 20:31:13'),
(41, 'ae4837a6-c6c3-49eb-8c3f-c4521ba903bf', '2022-04-18 00:40:17', '2022-04-18 00:40:17'),
(43, 'cc61ed98-0e60-4a65-bead-ad9a3e321624', '2022-04-20 20:40:39', '2022-04-20 20:40:39'),
(44, 'c74362fc-8e31-4ed0-a8e6-57c315edd7a5', '2022-04-21 05:05:48', '2022-04-21 05:05:48'),
(45, 'b3e61c2a-2ba3-4248-97b6-efcd56031fd5', '2022-04-21 05:12:04', '2022-04-21 05:12:04'),
(46, 'e755fe6c-2fa1-4392-8763-e8028bef15de', '2022-04-21 05:13:23', '2022-04-21 05:13:23'),
(47, '6efcb793-3bb1-438f-be88-7b0274d3c140', '2022-04-21 05:13:36', '2022-04-21 05:13:36'),
(48, 'a54197ff-5897-4c59-a759-d9b8214c91b7', '2022-04-21 05:15:23', '2022-04-21 05:15:23'),
(49, '0fbeba36-774e-4120-98f9-31f55be057da', '2022-04-21 05:16:01', '2022-04-21 05:16:01'),
(50, '87e54e41-aaf1-4092-9b86-b49f76a2f1db', '2022-04-21 05:16:32', '2022-04-21 05:16:32'),
(51, 'f99e6175-ca1c-4ac7-ada3-7219ea6d51ad', '2022-04-21 05:17:47', '2022-04-21 05:17:47'),
(52, '71bc9d74-2b40-4a27-b74c-794054f17aab', '2022-04-21 05:18:10', '2022-04-21 05:18:10'),
(53, 'ad3ae14a-2a63-4c7f-a290-0bbf3f0c312b', '2022-04-21 05:18:49', '2022-04-21 05:18:49'),
(54, 'a5392e5a-281c-42b4-985b-c25f8352b225', '2022-04-21 05:19:11', '2022-04-21 05:19:11'),
(55, '3147e171-dd5e-4c4f-86fa-411e57121d14', '2022-04-21 05:19:47', '2022-04-21 05:19:47'),
(56, '5a06a695-a14f-464c-9ddd-b8c0a7dc7579', '2022-04-21 05:20:18', '2022-04-21 05:20:18'),
(57, '627af75a-bd98-4395-8831-d39a79f83dd8', '2022-04-21 05:20:46', '2022-04-21 05:20:46'),
(58, '9992fffa-ad69-4081-8ac2-daeaf79d393d', '2022-04-21 05:21:27', '2022-04-21 05:21:27'),
(59, 'b6e2adda-d041-40dc-b6c2-f22bfb1ef9b8', '2022-04-21 05:23:58', '2022-04-21 05:23:58'),
(60, '8059f8db-7a90-491a-acbe-63deef2e4d5e', '2022-04-21 05:34:38', '2022-04-21 05:34:38'),
(61, '693da7ba-3f2d-4145-bb7b-ae2e1322742d', '2022-04-21 05:45:55', '2022-04-21 05:45:55'),
(62, 'd751d320-f3b9-479e-938e-83d6ac395f9c', '2022-04-21 05:52:49', '2022-04-21 05:52:49'),
(63, '4cccd533-4cc2-4dc9-94cb-0880a9086b65', '2022-04-21 05:58:48', '2022-04-21 05:58:48'),
(64, 'e3932e34-493e-47cb-a3ce-26ac56b1cb7f', '2022-04-21 06:02:02', '2022-04-21 06:02:02'),
(65, '9dd94986-96ff-4a89-9f16-253627e3b4e2', '2022-04-21 06:02:40', '2022-04-21 06:02:40'),
(66, '36ef996e-2f9f-47e8-9fce-ef3fffeb0edf', '2022-04-22 00:18:16', '2022-04-22 00:18:16'),
(67, 'f501c47d-4dfb-4f99-b754-24639e32449f', '2022-04-22 00:21:07', '2022-04-22 00:21:07'),
(68, '652cb95b-81df-4172-9723-d064581417c0', '2022-04-22 00:26:24', '2022-04-22 00:26:24'),
(69, 'dcb90186-0547-4f3e-b6bf-07a6ce16c91d', '2022-04-22 00:34:51', '2022-04-22 00:34:51'),
(70, '6ee3302c-d80a-402f-9a72-4814c3cd94ed', '2022-04-22 00:39:52', '2022-04-22 00:39:52'),
(71, '8d374f07-f6df-4d7d-bc43-3fc138f2e60c', '2022-04-25 02:40:01', '2022-04-25 02:40:01'),
(72, '4f2cf6b3-077c-4f5f-8647-e8fd76de46aa', '2022-04-25 02:42:19', '2022-04-25 02:42:19'),
(73, '29b98ca7-aead-4169-b43a-a71633826af3', '2022-04-25 02:50:20', '2022-04-25 02:50:20'),
(74, 'a5e50632-9048-4180-aa27-a04e66a45418', '2022-04-25 02:57:03', '2022-04-25 02:57:03'),
(75, '3daa4be7-792c-469f-b19a-d2505fc9d2da', '2022-04-25 02:59:47', '2022-04-25 02:59:47'),
(76, '723f14d9-c843-4e23-80f1-c16823f78174', '2022-04-25 03:06:17', '2022-04-25 03:06:17'),
(77, 'c41413c7-5015-4990-b145-2239bbdea05a', '2022-04-25 03:12:00', '2022-04-25 03:12:00'),
(78, '169d5307-09af-4b2b-913d-aa80649e971a', '2022-04-25 03:17:57', '2022-04-25 03:17:57'),
(79, 'dd7bb7a8-abb1-4dc4-bd8b-513b22c7bbdb', '2022-04-25 03:22:49', '2022-04-25 03:22:49'),
(80, '161d2ee5-bde9-4f2c-bc12-5d602c1d4637', '2022-04-25 03:26:08', '2022-04-25 03:26:08'),
(81, 'b946b05e-2f05-463c-ac17-b8470363a221', '2022-04-25 03:30:36', '2022-04-25 03:30:36'),
(82, '5ae6e638-fc0e-4b90-bc0f-7a853d8669ad', '2022-04-25 03:40:29', '2022-04-25 03:40:29'),
(83, '1be4d4d0-4b20-4178-b810-46de489ebc41', '2022-05-11 01:32:30', '2022-05-11 01:32:30'),
(84, '0ca4f9fe-2660-4dd8-9cb3-2a8052428af4', '2022-05-11 01:32:58', '2022-05-11 01:32:58'),
(85, '6b67520e-d107-42d9-b396-b264feb6e19b', '2022-05-11 01:33:52', '2022-05-11 01:33:52'),
(86, '6813c186-423f-4b4b-9e43-85b2dbd65c2f', '2022-05-11 02:30:07', '2022-05-11 02:30:07'),
(87, 'f132b82f-bc95-4a5a-8482-b84a5e64151b', '2022-05-11 02:33:34', '2022-05-11 02:33:34'),
(88, '459bfd2a-920c-40d3-8f38-5cab93e0367a', '2022-05-11 02:37:00', '2022-05-11 02:37:00'),
(89, '938aacab-c7ed-4e71-ae52-9eb7227b8547', '2022-05-11 02:40:35', '2022-05-11 02:40:35'),
(90, '8b6c4c00-cf3f-49d7-b4d5-c8ab130f6708', '2022-05-11 03:14:00', '2022-05-11 03:14:00'),
(91, '64ead77c-bd97-4b82-ace1-5980bd442af8', '2022-05-11 03:14:07', '2022-05-11 03:14:07'),
(92, '943df8e3-3e0e-490b-97be-e3f3fcdbea41', '2022-06-02 04:09:36', '2022-06-02 04:09:36'),
(93, '2a798e15-e659-4f5c-a7f2-8e63178078be', '2022-06-02 04:09:36', '2022-06-02 04:09:36'),
(94, 'dc4d1bc8-fc26-4009-8258-305ecaa9f766', '2022-06-03 07:50:15', '2022-06-03 07:50:15'),
(95, '8aacef8b-cb3c-469d-b49c-860627c862ce', '2022-06-03 07:50:24', '2022-06-03 07:50:24'),
(96, '967c494a-8304-4f9e-918d-7b3dfda722e8', '2022-06-03 07:50:29', '2022-06-03 07:50:29'),
(97, '5e30d49b-7d70-4c87-b320-3744d36d7ca7', '2022-06-03 07:50:58', '2022-06-03 07:50:58'),
(98, 'cbdaf490-e63d-42d8-852c-c3ed9453a9f0', '2022-06-03 07:51:10', '2022-06-03 07:51:10'),
(99, 'd12b946c-a7b6-4045-b096-78521f1e848d', '2022-06-03 07:51:14', '2022-06-03 07:51:14'),
(100, '54d05785-efb0-46ec-9565-00017c496c53', '2022-06-05 06:29:23', '2022-06-05 06:29:23'),
(101, 'a133584e-aade-4864-9791-e42b0b4425d6', '2022-06-28 00:03:13', '2022-06-28 00:03:13'),
(102, '63cda298-0067-4850-b0fc-3a4480917976', '2022-06-28 06:28:22', '2022-06-28 06:28:22'),
(103, '3a7fd983-ec6f-4015-9768-a864ab24dd9d', '2022-06-28 15:06:43', '2022-06-28 15:06:43'),
(104, 'd61f910b-086d-437b-8c42-048328ba2de7', '2022-06-29 12:04:16', '2022-06-29 12:04:16'),
(105, '5d0273cb-3a02-43a7-b186-44edc1128068', '2022-06-30 05:11:11', '2022-06-30 05:11:11'),
(106, '7e71ce08-32b2-4d36-b5aa-82de358ad5aa', '2022-06-30 05:12:16', '2022-06-30 05:12:16'),
(107, '97734753-0b7d-4d67-a609-9dc74628a369', '2022-06-30 05:22:20', '2022-06-30 05:22:20'),
(108, 'f8ab9528-df7a-409a-8e11-50b4fafc3cd8', '2022-06-30 05:22:37', '2022-06-30 05:22:37'),
(109, '5381a231-acae-4747-be2f-82d54a15d9e0', '2022-06-30 07:30:13', '2022-06-30 07:30:13'),
(110, 'ecf2d5df-ca72-4aba-9716-d33deac8dacb', '2022-06-30 08:34:43', '2022-06-30 08:34:43'),
(111, 'afa489d3-6b58-4340-9648-06fefafe2670', '2022-06-30 14:07:29', '2022-06-30 14:07:29'),
(112, 'f63f2c49-5adb-4205-853d-0c3f551f0c04', '2022-06-30 14:08:48', '2022-06-30 14:08:48'),
(113, 'a9046b03-07bd-48d7-98f6-d38bb19bdfdd', '2022-06-30 14:16:43', '2022-06-30 14:16:43'),
(114, '4a68f097-799e-440e-956a-e7ec1af29ab5', '2022-07-02 16:41:15', '2022-07-02 16:41:15'),
(116, '4575ee9b-7d0f-4af5-8fc8-ff9915213341', '2022-07-03 19:30:22', '2022-07-03 19:30:22'),
(117, 'cc6dcae9-5962-41df-b199-04711699b963', '2022-07-03 19:43:17', '2022-07-03 19:43:17'),
(118, '95f61db2-6706-470b-a9a6-f15c4441918b', '2022-07-03 19:43:25', '2022-07-03 19:43:25'),
(119, '428bbc73-0186-465e-b9c9-32e994193965', '2022-07-03 19:43:33', '2022-07-03 19:43:33'),
(120, '6103b7a3-1923-44e8-8c73-b6d560c53c00', '2022-07-03 19:43:40', '2022-07-03 19:43:40'),
(121, '24eec7d3-6620-4716-8210-3ba53e3c6790', '2022-07-04 04:29:42', '2022-07-04 04:29:42'),
(122, '63866ded-b224-4934-942e-01b32ac86467', '2022-07-06 04:39:52', '2022-07-06 04:39:52'),
(123, '13d51336-2f18-43de-a76e-734c3881bed5', '2022-07-06 04:48:11', '2022-07-06 04:48:11'),
(124, '6b141dd4-c599-4c3a-9e0d-32e36d7454ef', '2022-07-12 06:08:22', '2022-07-12 06:08:22'),
(125, 'b860ee5e-f647-4028-92e1-88f5c4744612', '2022-07-12 06:08:35', '2022-07-12 06:08:35'),
(126, 'e456b04d-7db5-458e-9f23-9f57f2e5eebf', '2022-07-12 06:12:07', '2022-07-12 06:12:07'),
(127, 'a9e57714-b4ed-437d-811e-57b64065c920', '2022-07-12 06:12:24', '2022-07-12 06:12:24'),
(128, '45092865-6ffd-4b83-93a8-b0a21e59eaed', '2022-07-12 06:43:36', '2022-07-12 06:43:36'),
(129, 'a9918eed-891e-4a90-b191-bf0a57a75c3c', '2022-07-12 06:46:22', '2022-07-12 06:46:22'),
(130, '658bb75b-d0d6-4b7b-9cd1-3d08e3b6fea9', '2022-07-12 06:46:44', '2022-07-12 06:46:44'),
(131, '812343d7-96cb-4692-9097-61f6118a2435', '2022-07-12 06:47:33', '2022-07-12 06:47:33'),
(132, '7a73b2e5-ba26-4b1e-bfa2-8c2491b1a48f', '2022-07-12 23:35:08', '2022-07-12 23:35:08'),
(133, '86063c69-952b-42fd-bf06-730d2cb4e37a', '2022-07-13 05:07:48', '2022-07-13 05:07:48'),
(134, '2dfc0bb9-7a08-4d07-ad33-49f8a55cd25f', '2022-07-16 13:56:02', '2022-07-16 13:56:02'),
(135, 'cc24dd1d-72aa-485d-aec2-0e728e8ed3e7', '2022-07-17 14:50:55', '2022-07-17 14:50:55'),
(136, '5db7c11b-00dd-4c60-99be-88e3e8b77ff2', '2022-07-18 02:28:07', '2022-07-18 02:28:07'),
(137, 'edaf035c-711f-4428-8a27-9ea40c6528d4', '2022-07-19 00:01:45', '2022-07-19 00:01:45'),
(138, 'e425fa4d-413e-40e4-a8e9-b3021dec0ca0', '2022-07-19 00:02:24', '2022-07-19 00:02:24'),
(139, '6e895418-6e46-4bce-a665-aa679441e76d', '2022-07-19 09:43:57', '2022-07-19 09:43:57'),
(140, 'adf6507b-1693-4581-92fa-2dad279c3a1a', '2022-07-28 00:02:24', '2022-07-28 00:02:24'),
(141, 'f244a81c-cb78-4f0e-b92c-a45c3758d714', '2022-07-28 00:03:53', '2022-07-28 00:03:53'),
(142, '01d5c112-b3dd-44ff-a620-a7cd38c18d99', '2022-07-28 00:04:24', '2022-07-28 00:04:24'),
(143, 'cb3bbec0-99b3-4f6f-a018-7adf02d2657a', '2022-07-28 00:08:22', '2022-07-28 00:08:22'),
(144, '469997de-7851-46de-80e3-c5e4c565389c', '2022-07-28 00:08:46', '2022-07-28 00:08:46'),
(145, 'e5172fa4-8a64-44f4-ae8c-4eecac19af27', '2022-07-29 02:55:47', '2022-07-29 02:55:47'),
(146, '4910740f-fad5-455b-9bda-e0efc2830173', '2022-07-29 03:16:49', '2022-07-29 03:16:49'),
(147, '8a3ff836-3af2-41f1-bc81-f8e2e726b906', '2022-07-30 02:02:24', '2022-07-30 02:02:24'),
(148, '4fb9d75d-115e-4268-8876-bc6996e31e91', '2022-07-30 02:46:11', '2022-07-30 02:46:11'),
(150, '2addabc2-52f2-46b1-a410-b91e17877ec9', '2022-08-03 10:56:46', '2022-08-03 10:56:46'),
(151, '3a99c873-0c4a-4f7c-8c93-fca400cdc3da', '2022-08-03 10:58:09', '2022-08-03 10:58:09'),
(152, '7bf8d3b3-102a-46e0-b862-3b40dcce35ec', '2022-08-03 10:58:51', '2022-08-03 10:58:51'),
(153, '181d8bbb-3f67-4c15-8e6c-3ff3e4c5ac3f', '2022-08-03 11:30:26', '2022-08-03 11:30:26'),
(154, 'd8d4b38c-0f6c-455d-b8ab-4a53ab4804f4', '2023-03-28 02:01:29', '2023-03-28 02:01:29'),
(155, '4bfce7d8-fd35-48f1-97a0-51d89be64755', '2023-03-28 02:03:44', '2023-03-28 02:03:44'),
(156, 'd337cba3-7252-4bda-aa19-755dc0492eac', '2023-03-28 02:03:44', '2023-03-28 02:03:44'),
(157, 'c9388646-971c-4601-b93f-81e37d9cf485', '2023-03-29 02:59:26', '2023-03-29 02:59:26'),
(158, '1676c051-7aeb-41db-960d-60c7a989bb8d', '2023-03-30 03:47:04', '2023-03-30 03:47:04'),
(159, '421d1e91-1619-428b-966b-5dc73687a3bc', '2023-03-30 03:54:47', '2023-03-30 03:54:47'),
(160, '8edadea4-a3e4-4176-bb90-7bb5e943c90a', '2023-03-30 04:07:19', '2023-03-30 04:07:19'),
(161, 'df063240-4f66-462a-b682-51ebc766eacf', '2023-03-30 04:56:29', '2023-03-30 04:56:29'),
(162, 'e7052dad-efd9-4550-9cbd-db3af6d34460', '2023-03-30 04:56:46', '2023-03-30 04:56:46'),
(163, '55ef7115-5fec-494e-b371-f570209e12fb', '2023-03-30 04:57:43', '2023-03-30 04:57:43'),
(164, 'd223a1d6-1bcc-47c4-b94c-d8baff45424b', '2023-03-30 05:12:27', '2023-03-30 05:12:27'),
(165, '6d2517af-eafb-48ac-93b9-fa0f5606b388', '2023-03-31 03:16:58', '2023-03-31 03:16:58'),
(166, '26abeff3-4f92-43dc-9a10-f3b18532030a', '2023-03-31 03:18:42', '2023-03-31 03:18:42'),
(167, '88fc25f7-783b-453c-8521-d2b042853be7', '2023-03-31 03:34:49', '2023-03-31 03:34:49'),
(168, 'ed8ed53b-efa5-4993-ba8f-f82ce131ecdb', '2023-03-31 03:34:55', '2023-03-31 03:34:55'),
(169, '8e4eeb25-eac6-4807-9add-2af233c73334', '2023-03-31 03:41:01', '2023-03-31 03:41:01'),
(170, 'aee1aa8d-c361-4832-8997-274941a82da9', '2023-03-31 03:41:09', '2023-03-31 03:41:09'),
(171, '233cacd4-4d94-40ba-9214-d6a9d3f1da67', '2023-03-31 03:41:15', '2023-03-31 03:41:15'),
(172, '3b78a9ff-df6a-4701-b5b1-b7c70251848f', '2023-04-03 05:02:01', '2023-04-03 05:02:01'),
(173, 'cca51944-1685-4784-ad8e-e1b220f0b4f1', '2023-04-04 01:02:19', '2023-04-04 01:02:19'),
(174, '6601ebf1-92e7-4972-ab01-bdf532424317', '2023-04-10 00:57:52', '2023-04-10 00:57:52'),
(175, '82dd42a0-b71b-4d89-84cb-7fc09254ebf7', '2023-04-10 01:01:55', '2023-04-10 01:01:55'),
(176, '763b9ee4-f34d-48f4-81a5-812d0124b247', '2023-04-10 01:18:33', '2023-04-10 01:18:33'),
(177, 'c9f5d964-50f1-4082-ac2c-f669e11f8be3', '2023-04-10 01:24:58', '2023-04-10 01:24:58'),
(178, '0b239ce0-8d34-4cef-89c4-5ee767f6befe', '2023-04-10 01:52:56', '2023-04-10 01:52:56'),
(179, '44071ad5-8c34-4006-92f2-9f0f8707e797', '2023-04-10 02:40:49', '2023-04-10 02:40:49'),
(180, '4c243e45-4cfd-4a7d-9d10-6b694a8041d3', '2023-05-03 04:14:28', '2023-05-03 04:14:28'),
(181, '31257c82-9c6c-4c5d-974c-1cb7e2b1e954', '2023-05-05 00:24:26', '2023-05-05 00:24:26'),
(182, '079ab976-ef41-4ae1-9bdb-b834c7795edb', '2023-05-05 00:30:15', '2023-05-05 00:30:15'),
(183, '67dc7cf4-68b5-4153-83b8-47ff4ddc6e5e', '2023-05-05 00:30:26', '2023-05-05 00:30:26'),
(184, 'd9c8cc17-1f59-4364-8f54-21e56d2b05dd', '2023-05-05 00:32:12', '2023-05-05 00:32:12'),
(185, '2d7d8221-5c4b-4276-b491-cb5cd005039c', '2023-05-05 00:32:12', '2023-05-05 00:32:12'),
(186, '720c5700-90af-496a-b628-87f2dde240a1', '2023-05-05 00:33:34', '2023-05-05 00:33:34'),
(187, '8608e088-4b8b-4ed3-8258-c0793301daa9', '2023-05-16 00:11:05', '2023-05-16 00:11:05'),
(188, 'cd76d6d4-b369-4772-b281-bee0bbdd0c5e', '2023-05-16 00:13:27', '2023-05-16 00:13:27'),
(189, 'e8de6fb6-2528-4a27-9b84-ab073966327b', '2023-05-23 02:00:53', '2023-05-23 02:00:53'),
(190, '5cc8c872-4532-401c-8802-b98ceb8deb39', '2023-05-23 02:02:56', '2023-05-23 02:02:56'),
(191, 'd052d82d-fd7b-437a-8012-7f986e8e4c89', '2023-05-23 02:33:56', '2023-05-23 02:33:56'),
(192, '8e973d6c-c1f5-4c7f-ba1d-a33bdc698f63', '2023-05-23 03:40:54', '2023-05-23 03:40:54'),
(193, '3e14d6ff-c7f0-4a21-a66f-4df5acc8f667', '2023-05-23 06:49:10', '2023-05-23 06:49:10'),
(194, 'daea6a7f-5a6e-4be4-9000-3a6b2bd8b019', '2023-05-23 06:51:12', '2023-05-23 06:51:12'),
(195, 'baaa0697-b7ed-47ee-a7c3-003f5deacb7f', '2023-05-25 03:03:35', '2023-05-25 03:03:35'),
(196, 'c320b49a-519a-4d13-9357-f71e2413ae97', '2023-05-25 03:33:30', '2023-05-25 03:33:30'),
(197, 'b6062671-7841-4e20-9102-0ad2e910eaa5', '2023-06-20 03:14:33', '2023-06-20 03:14:33'),
(198, 'db1cb76e-fe31-4493-9d02-94084c11c9b5', '2023-06-26 00:57:52', '2023-06-26 00:57:52'),
(199, 'b45ea3ce-0f01-4427-b1ed-5be20286667c', '2023-06-26 01:36:12', '2023-06-26 01:36:12'),
(200, '8e9b4fff-270e-4d6d-9ae3-54b81bb80705', '2023-06-26 01:46:23', '2023-06-26 01:46:23'),
(201, '54096882-9f36-452c-ab95-8ac3315bae00', '2023-06-26 01:49:25', '2023-06-26 01:49:25'),
(202, 'c61fcd1d-130a-4d6f-be9c-9c099ae8d98e', '2023-06-26 02:48:19', '2023-06-26 02:48:19'),
(203, '35f16e79-9882-4da6-bb0d-4231e3f41a28', '2023-06-26 02:54:21', '2023-06-26 02:54:21'),
(204, 'e5e7666e-cdc6-40e9-8503-af5da344dffd', '2023-06-26 03:04:27', '2023-06-26 03:04:27'),
(205, 'ad17f88a-973d-4d54-ad33-d09c9a8babc3', '2023-07-03 02:02:09', '2023-07-03 02:02:09'),
(206, '29cc255f-f163-4fe7-bc49-4e5886cc6cc9', '2023-07-03 02:09:35', '2023-07-03 02:09:35'),
(207, '726baf29-58fb-4004-b328-6ac3d35d7271', '2023-07-03 02:10:17', '2023-07-03 02:10:17'),
(208, '1f58a7b6-4751-4e95-8714-d89f5971f036', '2023-07-03 02:51:27', '2023-07-03 02:51:27'),
(209, '35fe3655-9f7b-447e-b994-91f2b9d0d806', '2023-07-03 02:52:12', '2023-07-03 02:52:12'),
(210, 'a6769743-682c-4540-a0cf-51f96fd812b0', '2023-07-03 03:03:01', '2023-07-03 03:03:01'),
(211, '7d6f39be-f0de-44a9-a6e3-ac175b9cf6fe', '2023-07-04 01:49:38', '2023-07-04 01:49:38'),
(212, '4b47bfa0-88da-42c3-a9ac-a1d37af2c858', '2023-07-04 01:50:02', '2023-07-04 01:50:02'),
(213, '0f11b4e3-c5d1-4d4d-9962-5fbc1702c859', '2023-07-10 01:35:48', '2023-07-10 01:35:48'),
(214, '79edab37-168e-47fd-9254-df6a507dc20a', '2023-07-10 01:43:41', '2023-07-10 01:43:41'),
(215, 'dc1c2581-d3d9-4103-afe3-e97aee997dbc', '2023-07-12 01:26:36', '2023-07-12 01:26:36'),
(216, '36c813e7-680b-42c6-bc55-a65614d86407', '2023-07-12 01:26:42', '2023-07-12 01:26:42'),
(217, '4377d4c4-aeca-4fe3-8add-340db39eb009', '2023-07-12 02:26:58', '2023-07-12 02:26:58'),
(218, '35932eeb-dd56-4073-992a-3bdcd894fc52', '2024-03-25 01:27:45', '2024-03-25 01:27:45'),
(220, 'b7a39951-c75f-44b9-ae13-1a6cc04e53c2', '2024-03-29 01:08:11', '2024-03-29 01:08:11'),
(221, 'fb2a4d59-0eba-4693-98fd-c59e2a691bef', '2024-03-29 01:17:41', '2024-03-29 01:17:41'),
(222, '07b26c70-5bb3-4018-8cd1-778d992f81de', '2024-03-29 05:25:08', '2024-03-29 05:25:08'),
(224, '47a5590a-8449-44e4-956b-8abbacd1fe4a', '2024-03-29 05:36:24', '2024-03-29 05:36:24'),
(225, '472c5e64-26e6-4553-a30e-7c5f857bcc57', '2024-03-29 05:37:21', '2024-03-29 05:37:21'),
(227, '12dc4bc1-08b1-4e78-9b9b-5e7fc3b3ebd2', '2024-03-29 12:15:42', '2024-03-29 12:15:42'),
(228, '6be7f43f-876a-491d-8028-6eef628a43ae', '2024-03-29 12:16:10', '2024-03-29 12:16:10'),
(229, '4b3680a1-0cbe-4c35-8fba-d0c6497fb264', '2024-03-29 12:38:17', '2024-03-29 12:38:17'),
(230, '44a2ab18-72c1-4736-9628-49c45f83075a', '2024-03-29 12:39:26', '2024-03-29 12:39:26'),
(231, '82e96077-5a1f-47ba-8754-8b4f743c9bfb', '2024-03-29 13:06:11', '2024-03-29 13:06:11'),
(232, '0c2f3b0d-72c7-40f8-a243-056364c873ea', '2024-03-29 13:14:28', '2024-03-29 13:14:28'),
(233, '5882d96b-c024-4141-9ccc-91dd29ec5d60', '2024-03-30 01:50:10', '2024-03-30 01:50:10'),
(234, 'f432f502-5d62-49da-a97a-6373c28a7f7b', '2024-03-31 23:41:54', '2024-03-31 23:41:54'),
(235, 'cda55e97-1aab-4dd4-8bf2-676e9ce5d288', '2024-03-31 23:45:09', '2024-03-31 23:45:09'),
(236, '73fd7e00-242e-4e54-8ec1-7ca6c9228f8a', '2024-04-01 03:09:03', '2024-04-01 03:09:03'),
(237, '042401d2-7430-4d2e-a0ab-d815c58e42a3', '2024-04-01 04:00:50', '2024-04-01 04:00:50'),
(238, '7efa208c-eb2e-4434-99cf-25dca9063dbe', '2024-04-08 01:13:38', '2024-04-08 01:13:38'),
(239, '8fc17b09-d10e-46a9-8150-b7e47a2803a6', '2024-04-08 01:14:37', '2024-04-08 01:14:37'),
(240, '24dfe176-f235-4d7e-b653-9fb208b7ab22', '2024-05-08 02:55:32', '2024-05-08 02:55:32'),
(241, '770d97d7-0267-4311-b57b-7684e533a6ca', '2024-05-08 03:00:54', '2024-05-08 03:00:54'),
(242, '70298d39-5ec8-42d4-ad91-f9d67460c2fc', '2024-05-08 03:03:10', '2024-05-08 03:03:10'),
(243, 'fd31b79f-d2c7-49d4-83b0-41975a208858', '2024-05-08 03:06:21', '2024-05-08 03:06:21'),
(244, '1a5cbd99-2f35-479a-b026-9f67affe9843', '2024-05-08 03:08:01', '2024-05-08 03:08:01'),
(245, '92b8921a-062c-4c3e-89d7-aee95a07a0ab', '2024-05-08 03:10:02', '2024-05-08 03:10:02'),
(246, '35729a42-b732-4c9f-af80-8fe4f6e8a471', '2024-05-08 03:10:47', '2024-05-08 03:10:47'),
(247, 'e9a60790-5bf4-45be-97c6-c2b66e42afcd', '2024-05-08 03:23:09', '2024-05-08 03:23:09'),
(248, 'a07b2b6e-b95c-4818-b1a6-6bc9caca37fa', '2024-05-08 05:12:13', '2024-05-08 05:12:13'),
(249, '7df79042-38bb-4528-92dc-dd25a43ee192', '2024-05-08 05:16:10', '2024-05-08 05:16:10'),
(250, '28724436-f570-4a45-8abc-c05c47e17843', '2024-05-08 05:18:40', '2024-05-08 05:18:40'),
(251, 'ff01a121-1a23-45b8-a42e-4036647ce99f', '2024-05-08 05:49:32', '2024-05-08 05:49:32'),
(252, '19eda376-6dd7-473b-a8e7-c279246727ef', '2024-05-08 05:50:32', '2024-05-08 05:50:32'),
(253, '4f10136a-c923-4f65-8c79-22e768770480', '2024-05-08 05:56:40', '2024-05-08 05:56:40'),
(255, 'f303d624-b3cb-4968-affe-4f891033bdde', '2024-05-08 23:20:58', '2024-05-08 23:20:58'),
(256, '140be70a-198a-4c45-81d6-504035b14357', '2024-05-08 23:24:28', '2024-05-08 23:24:28'),
(257, '69be0572-713d-4e88-8835-7dec03536e59', '2024-05-08 23:53:01', '2024-05-08 23:53:01'),
(258, '1b09941a-5b3e-452e-b73c-b9137e586ff6', '2024-10-23 06:09:04', '2024-10-23 06:09:04'),
(259, 'f987f167-71ca-47a2-b46d-3de3c27f9880', '2024-10-23 07:02:28', '2024-10-23 07:02:28'),
(260, '01acd17f-a65c-4ad0-a077-ddb366a63ef2', '2024-10-23 07:02:45', '2024-10-23 07:02:45'),
(261, '14f3c2fd-a2ab-439c-a767-444074d5c23e', '2024-10-23 07:03:11', '2024-10-23 07:03:11'),
(262, 'aa8b679b-1eae-409c-b974-706e01f35fba', '2024-10-23 07:04:13', '2024-10-23 07:04:13'),
(263, 'beb07c37-30ee-4366-bd4d-c365ce341fc6', '2024-10-23 07:05:22', '2024-10-23 07:05:22'),
(264, '6a4cbbae-0bc8-4a0c-a659-9a9d438b1b16', '2024-10-25 05:24:54', '2024-10-25 05:24:54'),
(265, '09367d65-9ced-40d5-803a-7f826a12292b', '2024-10-29 03:14:51', '2024-10-29 03:14:51'),
(266, '79821753-1aec-41b3-a30f-68d52ff576fd', '2024-11-04 07:42:54', '2024-11-04 07:42:54'),
(269, '55324599-da9b-43a2-a1b5-006b59db73dd', '2024-11-06 06:11:23', '2024-11-06 06:11:23'),
(270, 'a33ebbb8-9e25-4544-8e7b-92b313ab85d5', '2024-11-07 05:31:03', '2024-11-07 05:31:03'),
(271, 'd964b7ac-cbe2-48b0-8665-e6e82413b1fb', '2024-11-07 05:42:26', '2024-11-07 05:42:26'),
(272, 'e580244a-13b9-4c78-9427-73177a27fd4e', '2024-11-07 05:46:40', '2024-11-07 05:46:40'),
(273, '1c7dac10-c961-4f28-b0e3-da8947e41d28', '2024-11-08 07:05:54', '2024-11-08 07:05:54'),
(274, 'bd3e1707-4c30-4422-81bf-551c81b2fca7', '2024-11-08 07:06:30', '2024-11-08 07:06:30'),
(275, '78455f93-d4fb-4fef-8467-cc9ef7c84b5f', '2024-11-14 06:32:39', '2024-11-14 06:32:39'),
(276, '3a343b57-c57f-4b81-9ed6-d000b6245d32', '2024-11-14 07:02:08', '2024-11-14 07:02:08'),
(277, '2fbb92f5-6965-4190-8dd0-943365ccbe89', '2024-11-14 07:18:33', '2024-11-14 07:18:33'),
(278, 'e96cbb28-c8b6-4042-a660-16395dfc2a8d', '2024-11-19 03:30:28', '2024-11-19 03:30:28'),
(279, 'b6ed8958-09a7-4ecf-8152-67a4c8161c6d', '2024-11-19 03:31:57', '2024-11-19 03:31:57'),
(280, '133e5595-be29-43ef-93c9-8aec95848224', '2024-11-19 14:19:57', '2024-11-19 14:19:57'),
(281, '4ed44135-4424-4285-8978-3802a51402af', '2024-11-19 14:30:17', '2024-11-19 14:30:17'),
(282, 'ada9dd2a-2eb7-4bd2-9561-f18250559c2f', '2024-11-19 14:33:00', '2024-11-19 14:33:00'),
(283, 'bea0f012-09d7-4481-971b-519815be1603', '2024-11-19 15:30:23', '2024-11-19 15:30:23'),
(284, '9d6dd90a-3e49-49fc-9c2e-8174ad50bb54', '2024-11-19 15:31:03', '2024-11-19 15:31:03'),
(285, 'cb679e27-5074-4006-b5f0-9740f6c92106', '2024-11-19 15:56:59', '2024-11-19 15:56:59'),
(286, '0c40ae29-0083-4ec3-84e8-ed07cc950983', '2024-11-20 03:26:38', '2024-11-20 03:26:38'),
(287, 'b9a48d1a-c882-4970-b789-e1a2659e800d', '2024-11-20 06:07:02', '2024-11-20 06:07:02'),
(288, '55268771-d343-4cf2-950e-fd0ce686dfd5', '2024-11-21 04:22:04', '2024-11-21 04:22:04'),
(289, '95547e7b-898d-4e9f-845c-773e6065d912', '2024-11-21 05:24:57', '2024-11-21 05:24:57'),
(290, '82f7f3fc-7675-4dfa-9064-d91916ec3793', '2024-11-25 03:45:25', '2024-11-25 03:45:25'),
(291, 'e68123a0-d506-4e3f-842b-8d102a74638f', '2025-02-10 05:35:41', '2025-02-10 05:35:41'),
(292, 'b072a1e8-d3c9-480d-85f6-e39cd09ac613', '2025-02-12 03:32:03', '2025-02-12 03:32:03'),
(293, '363a3340-5d8a-49e5-84a6-91de752bf22a', '2025-02-17 05:59:56', '2025-02-17 05:59:56'),
(294, '974f4f60-686f-4ef2-a684-61ae6de42ad6', '2025-02-21 08:32:05', '2025-02-21 08:32:05'),
(295, 'd6383cc0-3b9c-44bb-83c2-e234a1e36b80', '2025-02-24 03:09:56', '2025-02-24 03:09:56'),
(296, '61be5e5d-3414-4631-95f8-b3793c2f75e6', '2025-02-24 03:15:40', '2025-02-24 03:15:40'),
(297, 'a78d7d8d-4005-43bf-9ca3-7ded8577462e', '2025-02-24 03:19:02', '2025-02-24 03:19:02'),
(298, '430a50cf-0a9b-4255-aa91-382a8235abee', '2025-02-24 03:27:41', '2025-02-24 03:27:41'),
(299, 'ab8cb6dd-2f38-48dd-a51a-7019f9c0a591', '2025-02-25 02:42:25', '2025-02-25 02:42:25'),
(300, 'ffd112b3-759f-45ec-88fa-70a9029605d6', '2025-02-25 03:06:37', '2025-02-25 03:06:37'),
(301, '9f7aa72b-559d-40d8-84b8-475024f0e27b', '2025-02-25 03:26:36', '2025-02-25 03:26:36'),
(302, '6c719373-23e7-4828-b397-b6801a33116d', '2025-02-25 04:43:38', '2025-02-25 04:43:38'),
(303, 'fa52a471-6480-430d-b0b3-8225eb9bc2bd', '2025-02-26 04:55:05', '2025-02-26 04:55:05'),
(304, 'e9e9932c-0501-469d-a06b-df1313557463', '2025-02-26 08:14:56', '2025-02-26 08:14:56'),
(305, 'db5b7a59-faab-420d-a15d-791ff769a197', '2025-02-27 02:32:49', '2025-02-27 02:32:49'),
(306, 'ff8cf301-de58-4f34-ab49-4cf1249a3546', '2025-02-27 02:38:19', '2025-02-27 02:38:19'),
(307, '0d52346d-ae17-486f-a9e9-988b001fe81f', '2025-02-27 02:47:24', '2025-02-27 02:47:24'),
(308, 'b3889b62-fda4-423f-b54d-6d83a8f35c76', '2025-02-27 02:50:28', '2025-02-27 02:50:28'),
(309, '', '2025-02-27 03:24:20', '2025-02-27 03:24:20'),
(310, '', '2025-02-27 03:27:06', '2025-02-27 03:27:06'),
(311, '', '2025-02-27 03:27:25', '2025-02-27 03:27:25'),
(312, '', '2025-02-27 03:36:48', '2025-02-27 03:36:48'),
(313, '', '2025-02-27 03:36:54', '2025-02-27 03:36:54'),
(314, 'f4f8dd16-6b99-486d-8c39-f186b1bb7d4c', '2025-02-27 03:39:56', '2025-02-27 03:39:56'),
(315, '8679022b-f037-4dd9-b7cc-1034f6073646', '2025-02-27 03:46:34', '2025-02-27 03:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(24) DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `api_token` char(60) DEFAULT NULL,
  `device_token` varchar(191) DEFAULT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `card_brand` varchar(191) DEFAULT NULL,
  `card_last_four` varchar(191) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paypal_email` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `phone_verified_at`, `email_verified_at`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `paypal_email`, `remember_token`, `created_at`, `updated_at`, `address`, `about`, `bio`) VALUES
(1, 'menna mohamed', 'admin@demo.com', '+1 234 8996 321', '2021-01-11 22:22:10', '2021-01-10 15:22:10', '$2y$10$FViRJXFOBtKCmQFtpDG.keKg9eIfkevJPAN1xlIPHz7Sk02m4c6ta', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', '', NULL, NULL, NULL, NULL, NULL, 'zaHRTAtd8xVdtXAtglZa7kIDdsAkmLpAiIRQDpdlTlC9INbbuW7hQ47SE5k1', NULL, '2025-02-26 10:33:37', 'test address', NULL, 'test bio'),
(2, 'Jennifer Paul', 'provider@demo.com', '+1 234 8996 322', '2021-01-10 15:22:10', '2021-01-10 15:22:10', '$2y$10$0UrLliiWEVFufV2XBbyeG.b5MXf91.E4U89/JqNXpI/YayFe0uhTK', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', NULL, NULL, NULL, NULL, NULL, 'lV5NTTo050NDNMVU2PVpBTI9LeuVFODBQPHP0265AMi0o6X9ODdIjZF6VjAk', NULL, '2025-02-21 07:23:58', NULL, NULL, NULL),
(3, 'Germaine Guzman', 'customer@demo.com', '+1 234 8996 323', '2021-01-10 15:22:10', '2021-01-10 15:22:10', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', '', NULL, NULL, NULL, NULL, NULL, 'aeP6uWZzuDoMbBNhMPL98gMDLfbqlIjsnKm9dYkKtUx8A7C7mkUnafslo0Ky', NULL, '2021-02-24 19:52:57', NULL, NULL, NULL),
(4, 'Aimee Mcgee', 'provider1@demo.com', '+1 234 8996 324', '2021-01-10 15:22:10', '2021-01-10 15:22:10', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', '', NULL, NULL, NULL, NULL, NULL, 'yCzPqDP1oczySU57q6G71SxTIJSiZUBE4vYdXbXCqzpzC2iN09igcs3jzSQK', NULL, '2021-02-21 12:50:29', NULL, NULL, NULL),
(5, 'Josephine Harding', 'customer3@demo.com', '00000000000', NULL, NULL, '$2y$10$n/06hZG121ZGp3tSwDQS3uhsQKxEYspjKrn7kGlLxRinUZKiulrEm', 'gkEWScQHIol9EIRhP3m5m7JqnK5UvcGdEsKQJo7YeBcQawYFq3JAJ6SX9UKy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-11 08:55:52', '2022-06-30 07:30:18', NULL, NULL, NULL),
(6, 'Nicolette Christiansen', 'provider2@demo.com', '444444444445222', NULL, '2021-01-10 22:00:00', '$2y$10$.jTns59q3U69AKW5p191O.iJniA/OjdWRL/WRLD8W.gSijpAInGyy', 'TKArYDDFHNiEI33sfExaBEhxHCs5kFaWP7EO6aNlUZfnqHrvsMCwsYeAk9s2', 'eFB6ZVoCJk9xvWsxX3XxVA:APA91bFUKnf8D64OudjwMZFn8nWYS_bLXF10H71U20OyPcAYaCSEDkO3LKEMipU9W_kg30Of9zYcaHlL0pUkQP8cx9haNW4p494-bn_nKw7vC-ogeicHG5ddmEeubZkv8F5-J1J4ArxJ', NULL, NULL, NULL, NULL, NULL, 'YUewoZBdOhvx1cl0oXnV8G3Sk1IYpHguwscb69GJIU89rrnlQiyuOdOIV4EK', '2021-01-11 09:33:59', '2023-06-23 02:00:36', NULL, NULL, NULL),
(7, 'Rose Bauer', 'customer2@demo.com', '123456', NULL, NULL, '$2y$10$3GhoIShzRdSXevYAh1NF/.67J3OshX9D2.sqY50o8kxh7EXPw7tuC', 'w6QJYqZyllY24AIR3nSsKqgj5eMSZevmgpSywwxJxUS9nwULcuriRLBxEXZC', '', NULL, NULL, NULL, NULL, NULL, 'WxYP9zjTBy9SYF5OWjcFbMt2Ob9r0bahBKzPDOtw9OrAJ89JqaMxkN5aqu8J', '2021-01-17 14:13:24', '2022-06-30 07:28:35', NULL, NULL, NULL),
(8, 'smarter8', 'smartersvision@gmail.com', '+12645595482', NULL, NULL, '$2y$10$MqPMTfg6RUNxxEH6aLdqnOYZUBsT7xtxkglD74pDgThV52.HJrLba', 'WivbG2oAEbEGl51EBeBuHaZeCqyfBnCVGo18nSaj2FwwiDjux2ZOAZWUoddK', '', NULL, NULL, NULL, NULL, NULL, 'SdstZCaeYW0pjqZn832HMzBD7WPGJ5m9hwWG28nhbIrzSS0etj33rbTRJ6kD', '2021-02-10 09:31:12', '2021-02-23 18:41:50', NULL, NULL, NULL),
(10, 'leena', 'leen@demo.com', '0101541497955', NULL, NULL, '$2y$10$6Izhj4v6oJZhmUJiZ0zs/OzTftthblILrn5piYmd6qQrg7Jp1nvxy', 'HMvKfKSqRKn0Al7pxXAIq7rjymyqaUqIInSsdT4tKjOiwh9fwlkrqbkkhDvS', '', NULL, NULL, NULL, NULL, NULL, '9t9kqi5yKwpwG1b0WoR4uVwKt7qis3tUk04OQVxRmsa3lIycXOmx1lgS918d', '2022-05-10 14:55:58', '2022-07-02 15:44:34', NULL, NULL, NULL),
(12, 'Carpenter', 'carp@demo.com', '12345678', NULL, NULL, '$2y$10$iqEbZlPlq2Y5c4njVciutuxxSo597kgETIx9pKJbTLms9MYWQkUc6', 'tuiFwurczEWx4dFazGdQhgvccY9dQ9C66d7ptmAAh0kYlwtcfL82sAyBdZRJ', '', NULL, NULL, NULL, NULL, NULL, '4tcZY1kgYQLL45uq0QS7YrDH88SkqrnskTcQiTtZvN0gt7xQFhmlhavVryTO', '2022-07-02 15:50:58', '2022-07-02 15:50:58', NULL, NULL, NULL),
(15, 'john doe', 'john@yahoo.com', '+244228369254', NULL, NULL, '$2y$10$cw1G/i7GdvkDUy41umhEJu3SNZIC6mNFvRZKy1N5w1xkmPE/.iQJS', 'u1g62ju4EkAXeAtZyHV9AIezGeTqBGADFA1Q2pkhVxbmTpVnp8teNfkSmFP1', '', NULL, NULL, NULL, NULL, NULL, 'Be4aSVs8s4DIYJNjv0xWgy596Gysb19tmJg3MD8Jeo6uPjSf0wxZjFwqeFWt', '2022-07-27 00:31:11', '2022-08-04 13:05:44', NULL, NULL, NULL),
(16, 'amira', 'providertest@demo.com', '01015414979', NULL, NULL, '$2y$10$QvIDGA.1L7UWG1XUMwu9XutquCQlTkCGcf5oVG/JFVsrFve7J88/y', 'sEbKCbbHbE9UbrQeE843EzgVvDVXqIH4LSKXw2touzRj8xvML5CTEUVkWUqm', 'dDpUBO_IRS-6u8r2LjDOIF:APA91bF9vSOuT3FkT7WIOQfE4Ohkh3kZBmpmzsWEhK1FOOvKsqM0zPnW_QC94zAS6giI-HHurqa009D772N8l5u5z5VHuxTHCOAiNtIbzjBsufoVX_jFF8MDqbI9wBZDzZxlAOp5Vnhe', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-27 05:24:14', '2022-07-27 06:04:27', NULL, NULL, NULL),
(17, 'amira', 'amira95ibrahim@gmail.com', '01015414974', NULL, NULL, '$2y$10$gJyE9GrmuKdDijRC.of9Hu05V1tuyTK9Hljl6qIjujAfjr.5UbanG', '3ha8Y1sOrG15C12IX9CO3ryne9DM5OwL4MFZCX0f1vqBmbXFiw1vwa01kO1D', '', NULL, NULL, NULL, NULL, NULL, '8Fl5smSAfXW9KmjuiyzzBQ7oIGMqMD7T7110q5fOkiffM2JdK4dbdIvphzli', '2022-07-27 06:27:32', '2022-07-27 06:27:32', NULL, NULL, NULL),
(19, 'Test', 'Test@demo.com', '01038884653', NULL, NULL, '$2y$10$7LxJCKWMOsE7LHePqXElKemAxB54NQzRrjJ7fz64RplWSRzgzXJFa', '0QEomflAjG8uzhwvqj57NAjthDelXKjznJydVOTx5ps9O39kJO8lHBMnw5QB', 'fX0Mmn3rwkzqgPTVCv4bvi:APA91bGq_z_-7IDSIMMMtFTWKRT6NnHeCGArsHTxdzmYTyk1Ux1jf4dyXnctA-WnW-T55OV7Ei_vtIKCKUfJH7iEF7PX6pdXp-yCuJbGw-vgOfuKeAEBIV02WKq9mSLf4QtjSz5ZSaob', NULL, NULL, NULL, NULL, NULL, 'bxStjtvymZeOJQYq2CZNf4WQcWyGsP4eJzdVWcvzrI6WMNN5DWtBp8lLPq06', '2023-03-31 03:17:02', '2024-10-23 07:35:23', NULL, NULL, NULL),
(20, 'fatma ali', 'fatmaali11711998@gmail.com', '01087776543', NULL, NULL, '$2y$10$nCfntYHBcgLCG4LLxG.EvO5rW5bS/ln4/60mGyF6QHFyvMl/JJqCm', 'mKi6oTSS2AttOnS7dsOOgOCMb16ChTtCqW4zt652hZwJgWHwgy9hoJtb150n', '', NULL, NULL, NULL, NULL, NULL, '5puPsIFnprawREE9Yob4vRhjDqEgdDzMs1V74jWVJPH42j20YcyzqflEGiXZ', '2023-04-05 04:14:02', '2023-04-05 04:14:02', NULL, NULL, NULL),
(22, 'toufic', 'touficy@optimalsolutions.it', '+9613755614111', NULL, NULL, '$2y$10$stu4pIwTf5vYtefMYPUybOAHvj2SgJD3H.F/06K17jpFkygezdBTi', 'FeEoFVOyVSTFUsRIdqm63hfxl9ZuDGB24HqGE7fTDeeGqRfhaVosmDLw8vOi', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13 05:11:15', '2024-11-20 03:28:15', NULL, NULL, NULL),
(23, 'fatma provider', 'fatmaelarbawy@gmail.com', '01088776543', NULL, NULL, '$2y$10$bPvw8/4CblDSnu7tMW/ZoO3mgGRA/3v9lEkPeM1UswLa2j6ICHTZC', 'k5lh2G9P4YSGLCY5cVC1X25gNEA0zXLpPHujzXOdMgpvUpLXzqy7MMPm2vQB', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14 02:56:08', '2023-04-14 02:56:43', NULL, NULL, NULL),
(29, 'Test Account', 'testuser@demo.com', '01134668753', NULL, NULL, '$2y$10$1t6lub85MprEAcD5b3MjXuBGlc2tUMebzgj2tsjE4QQAhWV7oi876', 'JSKtBgkuoy8PKg5LEdo9XcPFEIfiG0AWm58hh9VC5oMGC8SAyZo2ySuUF9Os', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14 04:40:17', '2023-04-14 04:40:17', NULL, NULL, NULL),
(30, 'Test Account3', 'me333@demo.com', '01987772635', NULL, NULL, '$2y$10$6Nwf1JA8meJvHExfcAvkQO5l5wQKdtddZmel3ZhKaaFLk7sXdgiN2', '6pHk0f28C7WEgFGN8WkRmB3jY4md7pVIDbpbk8rC7vPxN3oRFqGPxbhlUx8C', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14 05:04:07', '2023-04-14 05:04:07', NULL, NULL, NULL),
(31, 'Test Account4', 'super23@demo.com', '01128883920', NULL, NULL, '$2y$10$clxGbvktrF.FvnegePrO.eUT50m9cAVg4ePSPhtDEUGEKtcYpMIsW', 'NGW8GXZNiLZbINKfHY3muR2POim7H5md1kDh3KikqwT279EKIselZiPkQt2S', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14 05:06:38', '2023-04-14 05:06:38', NULL, NULL, NULL),
(32, 'ali mohamed', 'ali454@demo.com', '033877763542', NULL, NULL, '$2y$10$fEJ.l3fDnQxmaoyrtawQKudjqgIj6F/OVjo8af8RLOe1Uxbh5xDzi', 'rCHGExRyZEzLGewM404rXFFFPl1tWMv00FaofQAc3JiuwH6jHw4IMp5TFRcX', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14 05:21:36', '2023-04-14 05:21:36', NULL, NULL, NULL),
(33, 'ali mohamed', 'alimohamed2311@demo.com', '01069994300', '2023-06-23 09:42:36', NULL, '$2y$10$uWiFtxfW3Q00.Zzy963sMu6S5MpvE91fVdgl8YaiixO.ytZPdxiWi', 'I4TtAv9NY6gVet4YX8NcsG0KJe8QKUFZnnzb1n90poKJI4xZ2RBkbcxm1mRt', '', NULL, NULL, NULL, NULL, NULL, 'R2SmjCUM7v6LZ5cnpTfEGbZp42qnDOZaL5tMWUWf2VNtQVXJ5suysYXYTWcy', '2023-04-14 05:28:23', '2023-06-23 02:50:18', NULL, NULL, NULL),
(41, 'provider from web', 'Test@web.com', '01088706543', NULL, NULL, '$2y$10$45R9FrImjBJZCcD.Y9eAyupiOjDv10701AeLsC1NEKR9fEbrgH3LS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 06:07:58', '2023-04-25 06:07:58', NULL, NULL, NULL),
(47, 'Test Account provider', 'Admin@test.com', '01089906543', NULL, NULL, '$2y$10$zpJE8CxdG/wx3Ladojy0lOv56xARBlFZ.OK316FyVNoQuxlpqgLCm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 08:50:51', '2023-04-25 08:50:51', NULL, NULL, NULL),
(48, 'lang Test', 'Test@lang.com', '01085006543', NULL, NULL, '$2y$10$Sd4UsiTAVn1CwlpBkl9w4eZFscsBfvyDODV/uF4H1N4uFa50PKA.i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 08:55:55', '2023-04-25 08:55:55', NULL, NULL, NULL),
(49, 'provider2 from web', 'info3@optimalsolutions.it', '01080956543', NULL, NULL, '$2y$10$bQaJldyKcrG92ulOoMybFOtfgkwgnE3pyUcu.gRBQXEVgxOEZcuMC', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-26 01:15:48', '2023-06-23 00:24:13', NULL, NULL, NULL),
(53, 'the first registration', 'Test@re.com', '01090256543', NULL, NULL, '$2y$10$zAc28hhurzUevcbrb0d5w.g82lSoNEYZVJUYLfmsV5HjyhdBvV/.u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-26 01:27:48', '2023-04-26 01:27:48', NULL, NULL, NULL),
(55, 'Test TEST', 'Test@demopro12.com', '01087766543', NULL, NULL, '$2y$10$6I6t5hE4KgIXQHZsZelXIeMvsVMPmppUv7myEWROJ3INcbU/ad5o6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-27 01:34:31', '2023-07-03 02:10:20', NULL, NULL, NULL),
(56, 'Test provider Account', 'Test@provideraccount.com', '01080106543', NULL, NULL, '$2y$10$CiPb.1gSlunTLSqehQR/G.3tkbK5U92iUHNpHDWWLlbcN2V73OEae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-27 02:24:11', '2023-04-27 02:24:11', NULL, NULL, NULL),
(57, 'provider registratin', 'registratinTest@provider.com', '01087976543', NULL, NULL, '$2y$10$V.KuM/tAlpKysFSbnOYSqebA8Sc5gUJi8NRtZm.6f1OoB5Ns3gwia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 00:32:12', '2023-05-01 00:32:12', NULL, NULL, NULL),
(58, 'first redirect', 'firstredirect@yahoo.com', '01088976543', NULL, NULL, '$2y$10$ELNwaeUpOP8GLgqaP7vvvesWHFWFPryKlCpCzd4sw8QNP3DBuJUc.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 06:53:49', '2023-05-03 06:54:44', NULL, NULL, NULL),
(59, 'Test redirect', 'Test@redirect.com', '010887906543', NULL, NULL, '$2y$10$baZepZK.HeVkBAAcEqRYf.tFdE1SfZvTalNlZ6Mmo7iReD7z1N35C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 07:02:54', '2023-05-03 07:02:54', NULL, NULL, NULL),
(60, 'Test redirect32', 'Test@redirect23.com', '010887106543', NULL, NULL, '$2y$10$xM9.5fsT3meIBk4SECa2J.umDPaalep/2IKbrw6atN8hIeHzZiGW.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 07:11:16', '2023-05-03 07:11:16', NULL, NULL, NULL),
(62, 'Test Account', 'test@example.com', '01135558764', NULL, NULL, '$2y$10$M5qnjoAZQehA0JSm7.DxNO3T7MSI6r3C6PKR/YqJXKieTHN828CsS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05 01:22:21', '2023-05-05 01:22:21', NULL, NULL, NULL),
(70, 'fatma ali', 'fatmaali1711998@gmail.com', '01085056543', '2023-05-16 02:16:21', NULL, '$2y$10$10s1c4k//HzQrhUVC7.oke4MCNNcafgXv6dNfmHH.FfBshcwRWkY6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08 02:30:20', '2023-05-16 02:16:21', NULL, NULL, NULL),
(91, 'testProviderApp', 'testProviderApp@test.com', '01098887653', NULL, NULL, '$2y$10$uHXzvnR.6rrpunPYK/C6weEEk0wR3M7EoT5xM1zC5QqUe.ox5cvPy', '4l1wKa6ujcCc5I1z0wXKW9H5YbdaHTwF9g9M3pRVBN7yyIIFhp2l0TirTgHB', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-17 03:45:01', '2023-05-17 03:45:01', NULL, NULL, NULL),
(110, 'testProviderApp', 'testProviderApp12@test.com', '01098887650', NULL, NULL, '$2y$10$w2Bempwb9eQkd64y34I/XOrodFc2BqSh2fDbkDQSEOdSoKVevSkda', '0aSbmIt7SpNSm2D7FT3EixoBcJC29ttwtVBMVfdKInGfPfeXEzEnH4yAPetd', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 02:59:33', '2023-05-26 02:59:33', NULL, NULL, NULL),
(111, 'testProviderApp', 'testProviderApp120@test.com', '01098807650', NULL, NULL, '$2y$10$u0XTFTYiG.Nno500C1oE2eek1TxOkfMgaF7.ZoM5tUsDK9m/7CNxS', 'aiXeU5DQ6wkDAD9PsWoulUjni17igfR51fL7Ugs17oDMC2TIU6ZvS8t3VIwp', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26 04:09:25', '2023-05-26 04:09:25', NULL, NULL, NULL),
(113, 'Test email', 'Test@mail.com', '01080026543', NULL, NULL, '$2y$10$Wge6KjxOazq1Uj4T/Aqwaeg8.Y.kmTzHuR7/IdzioeknbqGIVPEB.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-29 05:42:00', '2023-05-29 05:42:00', NULL, NULL, NULL),
(139, 'Samir', 'Ahmed.samir222@outlook.com', '+966', NULL, NULL, '$2y$10$sHtBx0yy4KewzrSFyiHNEeLGPjOYfGg/VTgWXHHA/1LFx9MlQ0Eu6', 'uCyw9zAi4WV9DB7EOQaW8QCQQXvu33bAAdYFsn2Dc5Ih0IWH8RpDAYAe1h5N', 'dn1ghjb0Sji7aCFv4Jy-Jw:APA91bGhDOgsFQUL2befFj1qwfYzhLW4z0z6NGLEWPeIqnKiKT-GEgWHvJsTEaxcCAsHBID5gCuW_JoHs2F5nELgLsF9aGTTWsIHbw_nSbBUFFtizJmD_uKHrh9uL4guRtuM4jpf6gJe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-15 02:38:40', '2023-06-15 02:38:40', NULL, NULL, NULL),
(168, 'TEST provider now', 'Testnow@demopro12.com', '01038997624', NULL, NULL, '$2y$10$bcTicTOj8QCpuTIECgEMpebP0xj.hy.b3D.Q7YiCfHQxSTHeg5NJm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-17 04:33:38', '2023-07-17 04:33:38', NULL, NULL, NULL),
(169, 'TEST provider Now', 'test@proNow.com', '01983337654', NULL, NULL, '$2y$10$ZpIyuRw8w.bmaBtEkQR7su04mp7T4a7gaicVj69SF5LdI8UjtuZRi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-17 04:38:33', '2023-07-17 04:38:33', NULL, NULL, NULL),
(171, 'test user', 'support@optimalsolutions.it', '+201278664809', '2023-08-03 10:04:20', NULL, '$2y$10$vItliMTuGj4qiQVZA2f9buK1IDsgk83PhRNa7VgSA3STCzZVblG0a', 'LelwBAAk86NVvpk2ZyudIZjdKJcRiy3S3tDq3V6RHuCo77cnNSOYEbrWuAj9', 'fMcIJVonQauCri61H9TU-f:APA91bEyu4-z80dDhwECOUJyxjFwKFjcKxa9OWn6ozv75SX_AsoPR6Og3pulkF37ZvCEdHJw9IVPI0QjvkMMpv63FvpjEmGpnMVn4oHHSxMDSWGEIOXbyrusmuYMJgP5TAsWPukhyXRK', NULL, NULL, NULL, NULL, NULL, 'srS8bviVPgEUZzFTcAK88aM8HgK6VoDFEOLGgLlqAdvWMK7lB8z8EvYQCIyk', '2023-08-03 02:59:45', '2023-08-03 03:04:22', NULL, NULL, NULL),
(172, 'Adekunle Ridwan', 'ridwan@atechelectricalengr.com', '+2347015198030', NULL, NULL, '$2y$10$UDRYFSh8UEZ/i0cWeGkMPutHISCDNGap6Ruv262kcsVfiXszwC/3O', 'a6hcKHxGoGKSkDhTRh4NvRAdIhxOpEWs4zgZCOcKUy5Vq76TAT7QPRQ6Ik3t', 'dKiHNDhP2kkPugWdPao_l0:APA91bFPALmb7xepboWOERiFkvlEngfXvDxI9CFpCGzFzPTJOQIXcRSoXJp6XjNm05VucMHJ-Gb4JCix0kJOD6MoMrhLXIglj6Jpwm4wYMC3v3qa7k1LDNO2gZC8Vwwbi0ARZArJmiSw', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-06 03:44:02', '2024-02-06 15:36:08', NULL, NULL, NULL),
(176, 'test', 'fatmaali1718@gmail.com', '01092299765', '2024-03-28 06:18:48', NULL, '$2y$10$wk1SpUixhJICJlHBywSZo.gzqZoJbxOy5uvCloO7stn6IMwiUpCjm', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 06:18:21', '2024-03-28 06:20:26', NULL, NULL, NULL),
(179, 'tester', 'tester@gmail.com', '+2001033764050', NULL, NULL, '$2y$10$Js0eAw1dQOOMV9Zor5bEE.8j4V./7TtP.zFpRXOCDbQS4l481e3TC', '07Dp3qOnBkaRX7FAj9P7BOXSiZIIsStun4Nl4yukRVXd0blzWfAoFAFQIM7n', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-01 00:12:05', '2024-04-01 00:12:05', NULL, NULL, NULL),
(186, 'ahmed ali', 'ahmed@gmail.com', '01039992387', NULL, NULL, '$2y$10$R2YGgPx08GMWIE96l4.nVOLYMadw2taZgFvOwAxIaFJaBNLVtjJHq', '8gSSoluEHKjCRVpIvrEIBreHSiV1elKq7ltrwXaWYkrkM3zh9L37D3hhIE13', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-01 03:50:08', '2024-04-01 03:50:08', NULL, NULL, NULL),
(187, 'ahmed ali', 'ahmed345@gmail.com', '01000992387', '2024-04-01 09:57:06', NULL, '$2y$10$inkEojg3wf46L3zI3p6v1eZPKMxKu9FYGOOwXQ6kxFv28xKtRekDe', 'X3aTfu3RFgSWMuLe7yFZ3mPWLcsPgiWC8elqdRU3idexudw1JNxBZVO5UdZU', 'cxlXIZ6A2UCnj4CbP8Swmk:APA91bGaWVd3EkfIguJzOPJtjaJreSInuiGbDmIs65XvZsHN3D3lWrQ6Glr2zpmhl9Sned3U8NW1TVhI7hDHELTRPVIjnyfYxPdRs_G20vwUGlMuPAJ89rDWAUC2jYVRJzZwNk9osY1I', NULL, NULL, NULL, NULL, NULL, '7pLASFVr6bF64TkjLvgyyAWSv80WuZRVR2mnhZdVI0woJxlJJeDiopXUQLBv', '2024-04-01 03:50:34', '2024-10-23 08:10:35', NULL, NULL, NULL),
(202, 'Tara', 'yaraaiskan10@gmail.com', '+201278664805', NULL, NULL, '$2y$10$FeVBRnR9/Nu87DaUoEiQHu9EPZDrV8PAjF58Kf94VrIP9ThuePVRW', 'Dbxi04ZTgnELcoj3IdMS1gHQlWO773Q8uNspW4yzkQLlLd4uJuLJxcGoOsPb', 'cdFLwg8EbE1OsT_NitZ50G:APA91bEbIBQ21btazc4bbtreknOYRXa2GXqjptK-jJOuMtiB4d93VCkzGSrLiHj9J2bGSHrA1oPv7LEFHMqJqPzB_Ie-Rcs5OCUM08QC-SjGLhkp4ipvJpn1NspY0WQ4v3gCB4TLXcGA', NULL, NULL, NULL, NULL, NULL, 'ABpp19v5xhapiYeHWo3ku2cfUZk3VuDmmzRWlfCrhwdO7NItbu8EmA2U2qiz', '2024-04-03 03:41:06', '2024-04-03 03:41:06', NULL, NULL, NULL),
(205, 'ali', 'alimohamed@gmail.com', '01022992387', '2024-04-03 10:35:49', NULL, '$2y$10$PSg690P1EbiSUucEHjMjyuwDwQwm0iSV5MRBf5wzeRmVNOehHX3hS', 'mXU02Nlq8lnmhdrUFpPXM74AaMyUxHS4iT0vlaDGm87kDTyR8XhAvEjDsve7', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 04:35:25', '2024-04-03 04:35:25', NULL, NULL, NULL),
(206, 'ali', 'fatmaalimohamed@gmail.com', '+201069994385', NULL, NULL, '$2y$10$KBw2VytUVoRwRHfzi7WLNeQB.5L12oHWRYDrji6G7dT4uiuw/btw.', 'up4fUjmS11fiEb8Wjj46Uc74AJZm9i3kPnkdA50JVdpJs371gtq8BAWUh48n', 'cfrceDRnTkyYsE5xhPQjGE:APA91bGA7jQadzxZ296-17-onkbGQfJlrnxCGQi-uAbRaFaD7YS81QnsHdHJ0tYVK8xNTbHPBBHIB8G3xJf1YgIuKaWnTsKVSE5v1YQRHyhYUCVFBDUnX4_xmBgSYRWugMkoCw8mNk4F', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 04:47:14', '2024-04-03 04:48:02', NULL, NULL, NULL),
(228, 'ester', 'test_optimalsolutions@gmail.com', '+9613755613', NULL, NULL, '$2y$10$yx6WcYa2zJWT6bw1veojPeXPFCbIR4eVF1HKex982kMJQvU2fgUy.', 'GCBtVQuSMCGknj3g67aloXwqXpDXIrvmsaMlA6gMU4wDfqPtJ8QI7JXxsdlI', 'fvJDbkAFRGSCUOtxGZlXb-:APA91bGjGqAVw4yaTJkWlJKDHmk1xhrEf7EQizN26qObrQO5uP7vtnUi7Zo_4QMHXRrwv_9zPZLT9GlizsLs2IkEnkMUVr1I2ZFU2VYLcrLg-mgr5aZO9-CZ7awtwdHe5yaGUCB-W1Jp', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 00:21:19', '2024-05-14 00:21:19', NULL, NULL, NULL),
(230, 'nour', 'nour4olabi@gmail.com', '+96171267162', '2024-05-14 00:56:20', NULL, '$2y$10$/PfJL/dZmhNw0hNeVWyNpO6ipx/rY4ZUHZJ4BJ1vOpY.sNzEjUbHC', '10nbdZpqeBpDU0kuiFyNChFZKrPbKSSzXFT8wsCRMSmQdsNf8aCHFqAeH8I3', 'cBybXM4eT8io27Ucrfol4A:APA91bFHW47o-V2j1v0r2OOK49dsWc68WjRptkoSVY-0M7ESHCYWSGkLvNXT2uSxCrMzF-OV8bxJ9L28vxwmRnrQbKHBrEnCLRu6RYeQ4_PTENPKiZLXB0avaIbyW32ZAz_P1hO4UN4r', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 00:53:57', '2024-05-14 00:56:20', NULL, NULL, NULL),
(232, 'Test', 'optimal@gmail.com', '+201033764055', '2024-06-10 10:42:58', NULL, '$2y$10$qgGrj13sBa3In397jkdGs.MNLTQF/.ZyJ3.00b3H0qxe8FDK7D7VC', 'yJcWVpgP1P5P2h4mv12xRLKlu4WuTEqDWdaRBmpWbcgiRa94gCvE000dQgEx', 'dFPqKUBKS7e4kHyXD38_jE:APA91bGzZOmxMC3fYXqK9eVFqvCVecTCBgVb64fWnAk31rT3FSInWmc1FFA8_YM9Do2bQ2BBlOda9ucA-KhcQ1j45mRI6Sg3cjW8EuVR2VGqqs4iEYg45CaIW2LgmJdbhJrsoFbgQoE7', NULL, NULL, NULL, NULL, NULL, 'VRJzPkXv1H5DhTsa73c7bdT01WFKF43p4Keo21vafXDdQf61OjKqr6io8FeL', '2024-05-14 03:45:40', '2024-06-10 03:43:14', NULL, NULL, NULL),
(241, 'Mariam Albarghouti', 'mariamalbarghouti@gmail.com', '+201551300715', NULL, NULL, '$2y$10$mlx92yrlgz1sX10EOqQZVewzxWm4qZMOCRjy.O/CKyoi.dPwA7CVu', 'xedt4pRPMMXvjNtYTu9IChXIlolhOYrw8iLru8a3sMyi0cDHkQDVobgjDocj', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 10:22:47', '2024-10-26 07:01:30', NULL, NULL, NULL),
(243, 'mariam', 'mariamb@gmail.com', '+2001033764055', '2024-05-16 13:19:25', NULL, '$2y$10$y8uVS6xVw635bSRYrS.p7OOSDjQT7F2quZqrqvuAjOWpFyXLNMclG', '0m7p5rNr9g782B6t6p4igfq2lB3pRjIcS5BrMdXqFO82S2NiMeH4h2Rl9nwx', 'exXRRP-hRLKR_CzumOZN31:APA91bHV7GxtoXJxCg57DkFwCJ9BWTDudrZBj3Yix0NK4BtaE7RVxcDrk_fvhhS_pzdEtv_Mw-uYHs0dySB6pr8cfQzFH74DksABaUrlZTA6hHzrwpuZkYOY1t0sULXYB_8ykXkDaWHj', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-15 15:57:34', '2024-05-16 15:08:16', NULL, NULL, NULL),
(247, 'test', 'solutions@gmail.com', '+2001551300715', '2024-05-20 17:45:44', NULL, '$2y$10$cGaGGYUOfpjMIXT5XOZshe.ToxV3OpUeqfNSvc0uspzi3iRWAJoaG', 'KNDtxvQBW4QeEheqThVU1IKXyZTGQpTyMFutKC1yocGpo4F7Gvkgz36lk4Yp', 'elmedbTLR1-bCGJS4bv3Wq:APA91bFaNA4CYStjmaftG5SCZSQXVf4R4hwcsHhrnJ0854yuyDkwUlgohizwdqYab1QcOgZO53EnCMmv52GAerKotX3G0e3JGGFimQ0au30CSxdLA5Qq50HxNqRgaBfeCzSC3y1Rvh2t', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-20 11:45:47', '2024-05-20 11:45:47', NULL, NULL, NULL),
(249, 'test', 'demo5@gmail.com', '+2001015239341', '2024-05-21 06:21:18', NULL, '$2y$10$.uVdWYqxd.Z0VVIWCt76ieii7F63f/G4QEOaSnuOLkDys7hszed8a', 'sHWN2fqksSgiPExYfznJarQhw56dBEi6GLbPSJjVIbP9En7DJArOV5zcxduU', 'dNmaFwdXTqeVD6dWnOaq5i:APA91bHU2jLKqC9R7RdmWPQQ1s6SA8S7M5de2JHUzY4VyvHcgotw0XLHyV-OGakZHs7wWmE2ULZbQZJjqZ7WMGGXNVrHFVW9MskyX5c_23l9j7bYpRWMhEs_h5IxiKyTLt9AGDA5Xmr_', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-20 16:05:23', '2024-05-20 23:21:20', NULL, NULL, NULL),
(250, 'fatma', 'fatmaali171@gmail.com', '01230004343', NULL, NULL, '$2y$10$2jU1J9sp8Qmt7oTlEjRfSe.y9Wu2lEvgRbxSHA3SMtjLVZ.ImtRz.', '7qK0GSVWwty8qDNjD8et87QYRVcsvpXrNckHhL9nNF1bzk95pk6wT5jRNUq1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-22 01:53:49', '2024-10-22 01:53:49', NULL, NULL, NULL),
(252, 'Alaa 1', 'alaa.kassem816@gmail.com', '81661906', NULL, NULL, '$2y$10$ir/V.AJpuODNirfsc.TMlu/yGE26JI9FzqCbu1oMs1wuGH3.nI6au', 'HxsPxN1ypskuKuje4lnAp3OCJvpnTA0JanNvQels9un98Xilp2NYB4UJ0X9g', '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', NULL, NULL, NULL, NULL, NULL, 'wT3fwoziLPWH7l1UeD8R8oUzrHaxZHNW82sHO8gOApOreTx4jg6IXAnLU4kb', '2024-10-23 04:09:40', '2025-02-21 09:03:59', 'Beirut, Lebanon', NULL, NULL),
(253, 'Alaa', 'alaa.kassem@gmail.com', '+96181661906', '2025-02-21 08:23:42', NULL, '$2y$10$SwirZddQy6kuA2pjEwl5H.8s9WFzJnJg9zASpoUcMpisDZA4xgcem', '0MRCiYaIt738K6VxnhsZgnCcqVQyhQ4AA0HnfcFKZpeK6o4iVwVlCFJhpPD7', '', NULL, NULL, NULL, NULL, NULL, 'I70xWx9UsvjNcKahNnXsHVeFF2dOFKzZF1kZjLpEYEuIDGJ2e6fCTQBUc9wc', '2024-10-23 05:58:32', '2025-02-21 08:23:42', 'lebanon beirut', NULL, NULL),
(257, 'pro from app', 'fatma816@gmail.com', '01023339876', NULL, NULL, '$2y$10$EXzRJlVDjrTHSfKrN9E0ueageouIP2MRh2qvS2Pzn3P6rEIW6aDJO', 'AHpFKCMvdlh4G7MqtIlRTDMI9pCmP7scOKoT36dN7VJWsEbu6IPW27yUPGNY', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-13 09:06:24', '2024-11-13 09:06:24', NULL, NULL, NULL),
(258, 'ali ahmed', 'ali816@gmail.com', '01023339888', NULL, NULL, '$2y$10$UVT7fJQnjoHm2qoRJdCAfu1rQkAU7MUnP7ok6uxTe3Kk5hn/eqV0W', 'nrQQK2nUr7HwGzD8vPfBTvE9fIR01KALpfLv3RwdQsw0BYx4AEvzydn159Jm', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-13 09:17:24', '2024-11-13 09:17:24', NULL, NULL, NULL),
(259, 'teee', 'aliTr816@gmail.com', '01023339333', NULL, NULL, '$2y$10$C17Q2kcObN2f1XJRS/SZ2uDbvsOlVm3MfKom9Ysf1rlLudU/nYBoG', 'DpBWgIBVBDMomd9spndeqjHabhqGqcjzfPXrKmKaWFDfOPT8DLIeTvcD4VFA', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-14 03:14:27', '2024-11-14 03:14:27', NULL, NULL, NULL),
(260, 'TESTING USER', 'TESTINGUSER@GMAIL.COM', '00000000000000', NULL, NULL, '$2y$10$yrFM0a7J4vK5i08ieJVY0uQ8phvcLOraipZ1zEhOuiW8xAxk5Hlpq', 'Z5HSrZvwAXf4EW6rSflO0rmJIOIwVXNcWxvoAlkcZGS7qPFCNAKTVag8KBJA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-14 06:48:21', '2024-11-14 06:48:21', NULL, NULL, NULL),
(262, 'ttt', 'testt666@gmail.com', '+9611234567', NULL, NULL, '$2y$10$nrJldms5piHDdCOXK6AuN.UB6AeYk3Qq.5tOtQZqnNzNrlPPu0m7K', 'zf7q1BLWDwOj0cHTcKLFp7g9caENQdh0vLks33NnYR41kv175raChQzmTjaU', '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-19 03:57:01', '2024-11-19 03:57:01', NULL, NULL, NULL),
(263, 'tttt', 'wwewe@ss.dd', '+961123456', NULL, NULL, '$2y$10$C.VtGNhqmpoXx21S99Ddsuo2oOY2bvYogimBLp0JCSj9qbOfY9QU2', '0GrVUbyu6PngGUBAgJRlAyA9xs3qbOE2h9FFQ7Pc6GNGgDPGnXAc9Vs8C7V1', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-19 03:59:37', '2024-11-19 03:59:37', NULL, NULL, NULL),
(264, 'asff', 'aaa@aa.ss', '+9611234444', NULL, NULL, '$2y$10$V7lko1bG/QeT6c6wBbx5F.ZjJpLj0Spni6M7qbfVywtIzMOimpl6u', '8CoKs1xG8xpqzEJQ62D5OOydeFDWskXO4CMBqcbqtGZaqlc5FH5jpBgPmHoo', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-19 04:04:57', '2024-11-19 04:04:57', NULL, NULL, NULL),
(265, 'asff', 'aaa@aa.sswww', '+9611234422', NULL, NULL, '$2y$10$qp1MpjrJyPAn5v3YgozAteQ3PkEkYatqB/2rdKW3Yjjkid8NDWpEG', 'YjU7vYCDtNXhFPh8Ef2PMptZBkXuoEBoXyNmiPly3gduXf0BYZzxMWdkfJbz', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-19 04:08:32', '2024-11-19 04:08:32', NULL, NULL, NULL),
(266, 'testtt', 'test232@gmail.com', '+96112341234', NULL, NULL, '$2y$10$8BWDHHHi5RgaVuUYlv1Xv..0UXFai0Fd.pz943OBSJNMA9/sQB56K', '5wJKw0flQSnZJK6Pcp0L3AcuwVNfyswWSNq9olOFgnnkBJm7L3fPxyUsW5VE', '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', NULL, NULL, NULL, NULL, NULL, 'emunHVOKn2bs7oxNphMyHRMKbIa6pYwwdIm8RUUp9seleNwlaQzxwM4oIf37', '2024-11-19 04:31:29', '2024-11-19 04:33:33', NULL, NULL, NULL),
(277, 'sdsds', 'dsds@sadas.com', '01090877664', NULL, NULL, '$2y$10$400iqI74/TvPw3yKSPH5y.o8fPErrQWQsGOEoDurEtBPGYO6fJdHu', 'N2jFNWqn4QilEGoMEf1MD3YFGRXdMHRnNuHAf6S4IRoHkS6ORs20uuT8YKmL', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-12 10:50:10', '2025-02-17 06:46:10', NULL, NULL, NULL),
(280, 'Toufic yasmin', 'info@optimalsolutions.it', '+201090766553', NULL, NULL, '$2y$10$5bXe6iOkMWGcmHMlRuVigufkmzmnfJmAko8xAVzdyepzduOKSYr2a', 'rMcLM9LFd0LXRUtRfOqIpqRk6sUIVQYmIbeyHej2THHnfWMEsN1K92dX0RnS', '', NULL, NULL, NULL, NULL, NULL, 'MFBdEnX3OaL5MNH0S7rCKjHLaBesWQTZD1j06qfBBFHh9ZyOzgkK5NqZul1g', '2025-02-24 03:26:12', '2025-02-24 03:28:26', 'test address', NULL, 'test'),
(281, 'sdsds', 'dsds@sadas.com22', '010908776641', NULL, NULL, '$2y$10$A6z2RQL8OkabiG3rqj00euPy1XSSTsCjALi05DlXGxkdlisZ9BIJy', 'WSE6PmfC2JoiD1HiBdFFmOXodryIiPFSZITsqKEiAgb9qPlPfEtAcwcjnCPf', '', NULL, NULL, NULL, NULL, NULL, 'a20hP2rUl9sg1JJgqLOqSmNeIUgTMGHXcnVJNZr29BX6ZuhxR8ZgrwO2207H', '2025-02-24 04:21:56', '2025-02-24 04:21:56', NULL, NULL, NULL),
(291, 'asmaa abozied', 'asmaaabozied907@gmail.com', '0109087766413', NULL, NULL, '$2y$10$aTvKXsamYgF30bqa8LRcA.abaByyTAXhDuWa.Uc4EUW1NvyFAt62u', 'suUdBYXieNrH6HNB76SpNHslSvWI70LIMXSn2bg57rqqN4UQnztiA41CoQMg', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-24 04:51:08', '2025-02-24 04:51:08', NULL, NULL, NULL),
(293, 'register as eprovider', 'toufic_y@hotmail.com', '9613755614', NULL, NULL, '$2y$10$PDi5vNypVrDWLDM5Kf53N.MprU8XSjKvEbfoJIhJRAQWGEIo7O81.', NULL, '66616B652D61706E732D746F6B656E2D666F722D73696D756C61746F72', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-25 02:29:07', '2025-02-26 04:15:39', NULL, NULL, NULL),
(294, 'sdsds', 'dsds@sadas.com1', '01090877436641', NULL, NULL, '$2y$10$JAQkyHgdVkVNreF6uKMtu.cm0HSgpnqG3E6lt9eiGpwO0MPPjRnmu', 'WchVJge5ycV23i7wvj4KPDBgK5HaWv5gKTHYf8ofDQ52Xq3rdeA4ccEiJlgJ', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 06:10:29', '2025-02-26 06:10:29', NULL, NULL, NULL),
(295, 'asmaa abozied', 'asmaaabozied907@gmail.com7', '01090877878413', NULL, NULL, '$2y$10$e9LbHsepq0SeWmrKdk9PB.RX.lbe4AY5YYRpwj3hkAeDlwlOxgD4y', 'sBxrz94BULo58TqXdUr3CRTV4tVt1wOqBtOgoqSj1mXmYU7hjkrkq00xmbJy', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 10:15:30', '2025-02-26 10:15:30', NULL, NULL, NULL),
(296, 'sdsds', 'dsds@sadas.com14', '010908774366414', NULL, NULL, '$2y$10$8Cpgoapv23nU1v6QAbqRc.fZCVIfYfv4saQK7MdA2p0vmy/ILUN2W', '8KwuOzwfGUWoaavTVqsLe9gOVOCsoA2kjAzEOkawUPqqNESOZ2z9w2HtNeMi', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-26 10:29:50', '2025-02-26 10:29:50', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `balance` double(16,2) NOT NULL DEFAULT 0.00,
  `currency` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `name`, `balance`, `currency`, `user_id`, `enabled`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 'My USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 1, 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 'Home USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 2, 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 'Work USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 3, 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 'Dummy USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 4, 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 'Old USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 5, 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 'New USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 6, 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 'USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 7, 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('1514167a-4ee9-423f-8fab-192ddea88cc1', 'test', 0.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 2, 1, '2022-07-27 02:25:32', '2022-07-27 02:25:32'),
('4083fffc-eeec-4113-8290-03cda2546224', 'test', 0.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 1, 1, '2024-04-03 05:00:02', '2024-04-03 05:00:02'),
('7598e882-87e5-4baf-b297-a909b6d49320', 'test', 0.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 230, 1, '2024-05-14 00:57:05', '2024-05-14 00:57:05'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 'Dollar Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 8, 1, '2021-01-07 11:17:34', '2021-01-07 11:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` char(36) NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) DEFAULT NULL,
  `action` enum('credit','debit') NOT NULL,
  `wallet_id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `amount`, `description`, `action`, `wallet_id`, `user_id`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '01194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '02194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '03194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '04194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '05194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '06194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '07194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '8d194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 11:17:34', '2021-08-07 11:17:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `availability_hours`
--
ALTER TABLE `availability_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `availability_hours_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_booking_status_id_foreign` (`booking_status_id`),
  ADD KEY `bookings_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_providers`
--
ALTER TABLE `e_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_providers_e_provider_type_id_foreign` (`e_provider_type_id`);

--
-- Indexes for table `e_provider_addresses`
--
ALTER TABLE `e_provider_addresses`
  ADD PRIMARY KEY (`e_provider_id`,`address_id`),
  ADD KEY `e_provider_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_provider_payouts_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_provider_taxes`
--
ALTER TABLE `e_provider_taxes`
  ADD PRIMARY KEY (`e_provider_id`,`tax_id`),
  ADD KEY `e_provider_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_provider_users`
--
ALTER TABLE `e_provider_users`
  ADD PRIMARY KEY (`user_id`,`e_provider_id`),
  ADD KEY `e_provider_users_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_services`
--
ALTER TABLE `e_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_services_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_service_categories`
--
ALTER TABLE `e_service_categories`
  ADD PRIMARY KEY (`e_service_id`,`category_id`),
  ADD KEY `e_service_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_service_reviews_user_id_foreign` (`user_id`),
  ADD KEY `e_service_reviews_e_service_id_foreign` (`e_service_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_e_service_id_foreign` (`e_service_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_e_service_id_foreign` (`e_service_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payments_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_e_service_id_foreign` (`e_service_id`),
  ADD KEY `slides_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_wallet_id_foreign` (`wallet_id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `availability_hours`
--
ALTER TABLE `availability_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `e_providers`
--
ALTER TABLE `e_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `e_services`
--
ALTER TABLE `e_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `availability_hours`
--
ALTER TABLE `availability_hours`
  ADD CONSTRAINT `availability_hours_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_booking_status_id_foreign` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_statuses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_providers`
--
ALTER TABLE `e_providers`
  ADD CONSTRAINT `e_providers_e_provider_type_id_foreign` FOREIGN KEY (`e_provider_type_id`) REFERENCES `e_provider_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_addresses`
--
ALTER TABLE `e_provider_addresses`
  ADD CONSTRAINT `e_provider_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_addresses_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  ADD CONSTRAINT `e_provider_payouts_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_taxes`
--
ALTER TABLE `e_provider_taxes`
  ADD CONSTRAINT `e_provider_taxes_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_users`
--
ALTER TABLE `e_provider_users`
  ADD CONSTRAINT `e_provider_users_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_services`
--
ALTER TABLE `e_services`
  ADD CONSTRAINT `e_services_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_service_categories`
--
ALTER TABLE `e_service_categories`
  ADD CONSTRAINT `e_service_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_service_categories_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  ADD CONSTRAINT `e_service_reviews_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_service_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wallet_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
