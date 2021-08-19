-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Ağu 2021, 01:36:25
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lacropole`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graecus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `graecus`, `slug`, `image`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aiskhylos', 'Eleusisli', 'Αἰσχύλος', 'aiskhylos', 'aiskhylos.jpg', '<p>Eski Yunan tragedya ozanı</p>', NULL, '2021-07-27 21:20:27', '2021-07-28 14:13:34'),
(2, 'Sophokles', 'Kolonoslu', 'Σοφοκλῆς', 'sophokles', 'sophokles.jpg', NULL, NULL, '2021-07-27 21:20:27', '2021-07-28 11:25:37'),
(3, 'Aristophanes', 'Halimouslu', 'Ἀριστοφάνης', 'aristophanes', 'aristophanes.jpg', NULL, NULL, '2021-07-27 21:20:27', '2021-07-27 21:20:27'),
(5, 'Euripides', 'Kolonoslu', 'Ευριπίδης', 'euripides', 'euripides.jpg', '<p>Eski yunan tragedya ozanı</p>', NULL, '2021-07-28 11:30:26', '2021-07-28 11:30:26'),
(6, 'Homeros', 'Kolonoslu', 'Ὅμηρος', 'homeros', 'homeros.jpg', '<p>Eski Yunan ozanı</p>', NULL, '2021-08-15 19:50:58', '2021-08-15 19:59:40'),
(7, 'Trygaios', NULL, NULL, 'trygaios', 'trygaios.jpg', NULL, NULL, '2021-08-16 00:53:58', '2021-08-16 23:31:08'),
(8, 'Cengiz Yavuz', NULL, NULL, 'cengiz-yavuz', 'cengiz-yavuz.jpg', NULL, NULL, '2021-08-16 23:31:40', '2021-08-17 23:06:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendars`
--

CREATE TABLE `calendars` (
  `id` int(11) NOT NULL,
  `month_order` int(2) NOT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `month_gr` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `day_gr` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fest` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `calendars`
--

INSERT INTO `calendars` (`id`, `month_order`, `month`, `day`, `month_gr`, `day_gr`, `fest`) VALUES
(1, 1, '12', '27', 'Gamelion', 'Noumenia', ''),
(2, 2, '12', '28', 'Gamelion', '2. Histamenou', ''),
(3, 3, '12', '29', 'Gamelion', 'Tritomenis', ''),
(4, 4, '12', '30', 'Gamelion', 'Tetras', ''),
(5, 5, '12', '31', 'Gamelion', '5. Histamenou', ''),
(6, 6, '01', '01', 'Gamelion', '6. Histamenou', ''),
(7, 7, '01', '02', 'Gamelion', '7. Histamenou', ''),
(8, 8, '01', '03', 'Gamelion', '8. Histamenou', ''),
(9, 9, '01', '04', 'Gamelion', '9. Histamenou', ''),
(10, 10, '01', '05', 'Gamelion', '10. Histamenou', ''),
(11, 11, '01', '06', 'Gamelion', '1. Mesountos', ''),
(12, 12, '01', '07', 'Gamelion', '2. Mesountos', 'Lenea'),
(13, 13, '01', '08', 'Gamelion', '3. Mesountos', 'Lenea'),
(14, 14, '01', '09', 'Gamelion', '4. Mesountos', 'Lenea'),
(15, 15, '01', '10', 'Gamelion', 'Dikhomenia', 'Lenea'),
(16, 16, '01', '11', 'Gamelion', '6. Mesountos', ''),
(17, 17, '01', '12', 'Gamelion', '7. Mesountos', ''),
(18, 18, '01', '13', 'Gamelion', '8. Mesountos', ''),
(19, 19, '01', '14', 'Gamelion', '9. Mesountos', ''),
(20, 20, '01', '15', 'Gamelion', '10. Mesountos', ''),
(21, 21, '01', '16', 'Gamelion', '10. Legontos', ''),
(22, 22, '01', '17', 'Gamelion', '9. Legontos', ''),
(23, 23, '01', '18', 'Gamelion', '8. Legontos', ''),
(24, 24, '01', '19', 'Gamelion', '7. Legontos', ''),
(25, 25, '01', '20', 'Gamelion', '6. Legontos', ''),
(26, 26, '01', '21', 'Gamelion', '5. Legontos', ''),
(27, 27, '01', '22', 'Gamelion', '4. Legontos', 'Theogamia'),
(28, 28, '01', '23', 'Gamelion', '3. Legontos', ''),
(29, 29, '01', '24', 'Gamelion', '2. Legontos', ''),
(30, 30, '01', '25', 'Gamelion', '1. Legontos', ''),
(31, 1, '01', '26', 'Anthesterion', 'Noumenia', ''),
(32, 2, '01', '27', 'Anthesterion', '2. Histamenou', ''),
(33, 3, '01', '28', 'Anthesterion', 'Tritomenis', ''),
(34, 4, '01', '29', 'Anthesterion', 'Tetras', ''),
(35, 5, '01', '30', 'Anthesterion', '5. Histamenou', ''),
(36, 6, '01', '31', 'Anthesterion', '6. Histamenou', ''),
(37, 7, '02', '01', 'Anthesterion', '7. Histamenou', ''),
(38, 8, '02', '02', 'Anthesterion', '8. Histamenou', ''),
(39, 9, '02', '03', 'Anthesterion', '9. Histamenou', ''),
(40, 10, '02', '04', 'Anthesterion', '10. Histamenou', ''),
(41, 11, '02', '05', 'Anthesterion', '1. Mesountos', 'Anthesteria'),
(42, 12, '02', '06', 'Anthesterion', '2. Mesountos', 'Anthesteria'),
(43, 13, '02', '07', 'Anthesterion', '3. Mesountos', 'Anthesteria'),
(44, 14, '02', '08', 'Anthesterion', '4. Mesountos', ''),
(45, 15, '02', '09', 'Anthesterion', 'Dikhomenia', ''),
(46, 16, '02', '10', 'Anthesterion', '6. Mesountos', ''),
(47, 17, '02', '11', 'Anthesterion', '7. Mesountos', ''),
(48, 18, '02', '12', 'Anthesterion', '8. Mesountos', ''),
(49, 19, '02', '13', 'Anthesterion', '9. Mesountos', ''),
(50, 20, '02', '14', 'Anthesterion', '10. Mesountos', ''),
(51, 21, '02', '15', 'Anthesterion', '10. Legontos', ''),
(52, 22, '02', '16', 'Anthesterion', '9. Legontos', ''),
(53, 23, '02', '17', 'Anthesterion', '8. Legontos', 'Diasia'),
(54, 24, '02', '18', 'Anthesterion', '7. Legontos', ''),
(55, 25, '02', '19', 'Anthesterion', '6. Legontos', ''),
(56, 26, '02', '20', 'Anthesterion', '5. Legontos', ''),
(57, 27, '02', '21', 'Anthesterion', '4. Legontos', ''),
(58, 28, '02', '22', 'Anthesterion', '3. Legontos', ''),
(59, 29, '02', '23', 'Anthesterion', '2. Legontos', ''),
(60, 1, '02', '24', 'Elaphebolion', 'Noumenia', ''),
(61, 2, '02', '25', 'Elaphebolion', '2. Histamenou', ''),
(62, 3, '02', '26', 'Elaphebolion', 'Tritomenis', ''),
(63, 4, '02', '27', 'Elaphebolion', 'Tetras', ''),
(64, 5, '02', '28', 'Elaphebolion', '5. Histamenou', ''),
(65, 6, '03', '01', 'Elaphebolion', '6. Histamenou', ''),
(66, 7, '03', '02', 'Elaphebolion', '7. Histamenou', ''),
(67, 8, '03', '03', 'Elaphebolion', '8. Histamenou', ''),
(68, 9, '03', '04', 'Elaphebolion', '9. Histamenou', ''),
(69, 10, '03', '05', 'Elaphebolion', '10. Histamenou', 'Kent Dionysia'),
(70, 11, '03', '06', 'Elaphebolion', '1. Mesountos', 'Kent Dionysia'),
(71, 12, '03', '07', 'Elaphebolion', '2. Mesountos', 'Kent Dionysia'),
(72, 13, '03', '08', 'Elaphebolion', '3. Mesountos', 'Kent Dionysia'),
(73, 14, '03', '09', 'Elaphebolion', '4. Mesountos', 'Kent Dionysia'),
(74, 15, '03', '10', 'Elaphebolion', 'Dikhomenia', 'Kent Dionysia'),
(75, 16, '03', '11', 'Elaphebolion', '6. Mesountos', 'Kent Dionysia'),
(76, 17, '03', '12', 'Elaphebolion', '7. Mesountos', 'Kent Dionysia, Pandia'),
(77, 18, '03', '13', 'Elaphebolion', '8. Mesountos', ''),
(78, 19, '03', '14', 'Elaphebolion', '9. Mesountos', ''),
(79, 20, '03', '15', 'Elaphebolion', '10. Mesountos', ''),
(80, 21, '03', '16', 'Elaphebolion', '10. Legontos', ''),
(81, 22, '03', '17', 'Elaphebolion', '9. Legontos', ''),
(82, 23, '03', '18', 'Elaphebolion', '8. Legontos', ''),
(83, 24, '03', '19', 'Elaphebolion', '7. Legontos', ''),
(84, 25, '03', '20', 'Elaphebolion', '6. Legontos', ''),
(85, 26, '03', '21', 'Elaphebolion', '5. Legontos', ''),
(86, 27, '03', '22', 'Elaphebolion', '4. Legontos', ''),
(87, 28, '03', '23', 'Elaphebolion', '3. Legontos', ''),
(88, 29, '03', '24', 'Elaphebolion', '2. Legontos', ''),
(89, 30, '03', '25', 'Elaphebolion', '1. Legontos', ''),
(90, 1, '03', '26', 'Mounykhion', 'Noumenia', ''),
(91, 2, '03', '27', 'Mounykhion', '2. Histamenou', ''),
(92, 3, '03', '28', 'Mounykhion', 'Tritomenis', ''),
(93, 4, '03', '29', 'Mounykhion', 'Tetras', ''),
(94, 5, '03', '30', 'Mounykhion', '5. Histamenou', ''),
(95, 6, '03', '31', 'Mounykhion', '6. Histamenou', ''),
(96, 7, '04', '01', 'Mounykhion', '7. Histamenou', ''),
(97, 8, '04', '02', 'Mounykhion', '8. Histamenou', ''),
(98, 9, '04', '03', 'Mounykhion', '9. Histamenou', ''),
(99, 10, '04', '04', 'Mounykhion', '10. Histamenou', ''),
(100, 11, '04', '05', 'Mounykhion', '1. Mesountos', ''),
(101, 12, '04', '06', 'Mounykhion', '2. Mesountos', ''),
(102, 13, '04', '07', 'Mounykhion', '3. Mesountos', ''),
(103, 14, '04', '08', 'Mounykhion', '4. Mesountos', ''),
(104, 15, '04', '09', 'Mounykhion', 'Dikhomenia', ''),
(105, 16, '04', '10', 'Mounykhion', '6. Mesountos', 'Munikhia'),
(106, 17, '04', '11', 'Mounykhion', '7. Mesountos', ''),
(107, 18, '04', '12', 'Mounykhion', '8. Mesountos', ''),
(108, 19, '04', '13', 'Mounykhion', '9. Mesountos', 'Olympeia'),
(109, 20, '04', '14', 'Mounykhion', '10. Mesountos', ''),
(110, 21, '04', '15', 'Mounykhion', '10. Legontos', ''),
(111, 22, '04', '16', 'Mounykhion', '9. Legontos', ''),
(112, 23, '04', '17', 'Mounykhion', '8. Legontos', ''),
(113, 24, '04', '18', 'Mounykhion', '7. Legontos', ''),
(114, 25, '04', '19', 'Mounykhion', '6. Legontos', ''),
(115, 26, '04', '20', 'Mounykhion', '5. Legontos', ''),
(116, 27, '04', '21', 'Mounykhion', '4. Legontos', ''),
(117, 28, '04', '22', 'Mounykhion', '3. Legontos', ''),
(118, 29, '04', '23', 'Mounykhion', '2. Legontos', ''),
(119, 1, '04', '24', 'Thargelion', 'Noumenia', ''),
(120, 2, '04', '25', 'Thargelion', '2. Histamenou', ''),
(121, 3, '04', '26', 'Thargelion', 'Tritomenis', ''),
(122, 4, '04', '27', 'Thargelion', 'Tetras', ''),
(123, 5, '04', '28', 'Thargelion', '5. Histamenou', ''),
(124, 6, '04', '29', 'Thargelion', '6. Histamenou', ''),
(125, 7, '04', '30', 'Thargelion', '7. Histamenou', 'Thargelia'),
(126, 8, '05', '01', 'Thargelion', '8. Histamenou', ''),
(127, 9, '05', '02', 'Thargelion', '9. Histamenou', ''),
(128, 10, '05', '03', 'Thargelion', '10. Histamenou', ''),
(129, 11, '05', '04', 'Thargelion', '1. Mesountos', ''),
(130, 12, '05', '05', 'Thargelion', '2. Mesountos', ''),
(131, 13, '05', '06', 'Thargelion', '3. Mesountos', ''),
(132, 14, '05', '07', 'Thargelion', '4. Mesountos', ''),
(133, 15, '05', '08', 'Thargelion', 'Dikhomenia', ''),
(134, 16, '05', '09', 'Thargelion', '6. Mesountos', ''),
(135, 17, '05', '10', 'Thargelion', '7. Mesountos', ''),
(136, 18, '05', '11', 'Thargelion', '8. Mesountos', ''),
(137, 19, '05', '12', 'Thargelion', '9. Mesountos', 'Bendideia'),
(138, 20, '05', '13', 'Thargelion', '10. Mesountos', ''),
(139, 21, '05', '14', 'Thargelion', '10. Legontos', ''),
(140, 22, '05', '15', 'Thargelion', '9. Legontos', ''),
(141, 23, '05', '16', 'Thargelion', '8. Legontos', ''),
(142, 24, '05', '17', 'Thargelion', '7. Legontos', 'Kallynteria'),
(143, 25, '05', '18', 'Thargelion', '6. Legontos', 'Plynteria'),
(144, 26, '05', '19', 'Thargelion', '5. Legontos', ''),
(145, 27, '05', '20', 'Thargelion', '4. Legontos', ''),
(146, 28, '05', '21', 'Thargelion', '3. Legontos', ''),
(147, 29, '05', '22', 'Thargelion', '2. Legontos', ''),
(148, 30, '05', '23', 'Thargelion', '1. Legontos', ''),
(149, 1, '05', '24', 'Skirophorion', 'Noumenia', ''),
(150, 2, '05', '25', 'Skirophorion', '2. Histamenou', ''),
(151, 3, '05', '26', 'Skirophorion', 'Tritomenis', 'Arrephoria'),
(152, 4, '05', '27', 'Skirophorion', 'Tetras', ''),
(153, 5, '05', '28', 'Skirophorion', '5. Histamenou', ''),
(154, 6, '05', '29', 'Skirophorion', '6. Histamenou', ''),
(155, 7, '05', '30', 'Skirophorion', '7. Histamenou', ''),
(156, 8, '05', '31', 'Skirophorion', '8. Histamenou', ''),
(157, 9, '06', '01', 'Skirophorion', '9. Histamenou', ''),
(158, 10, '06', '02', 'Skirophorion', '10. Histamenou', ''),
(159, 11, '06', '03', 'Skirophorion', '1. Mesountos', ''),
(160, 12, '06', '04', 'Skirophorion', '2. Mesountos', 'Scira'),
(161, 13, '06', '05', 'Skirophorion', '3. Mesountos', ''),
(162, 14, '06', '06', 'Skirophorion', '4. Mesountos', 'Bouphonia'),
(163, 15, '06', '07', 'Skirophorion', 'Dikhomenia', ''),
(164, 16, '06', '08', 'Skirophorion', '6. Mesountos', ''),
(165, 17, '06', '09', 'Skirophorion', '7. Mesountos', ''),
(166, 18, '06', '10', 'Skirophorion', '8. Mesountos', ''),
(167, 19, '06', '11', 'Skirophorion', '9. Mesountos', ''),
(168, 20, '06', '12', 'Skirophorion', '10. Mesountos', ''),
(169, 21, '06', '13', 'Skirophorion', '10. Legontos', ''),
(170, 22, '06', '14', 'Skirophorion', '9. Legontos', ''),
(171, 23, '06', '15', 'Skirophorion', '8. Legontos', ''),
(172, 24, '06', '16', 'Skirophorion', '7. Legontos', ''),
(173, 25, '06', '17', 'Skirophorion', '6. Legontos', ''),
(174, 26, '06', '18', 'Skirophorion', '5. Legontos', ''),
(175, 27, '06', '19', 'Skirophorion', '4. Legontos', ''),
(176, 28, '06', '20', 'Skirophorion', '3. Legontos', ''),
(177, 29, '06', '21', 'Skirophorion', '2. Legontos', ''),
(178, 1, '06', '22', 'Hekatombaion', 'Noumenia', ''),
(179, 2, '06', '23', 'Hekatombaion', '2. Histamenou', ''),
(180, 3, '06', '24', 'Hekatombaion', 'Tritomenis', ''),
(181, 4, '06', '25', 'Hekatombaion', 'Tetras', ''),
(182, 5, '06', '26', 'Hekatombaion', '5. Histamenou', ''),
(183, 6, '06', '27', 'Hekatombaion', '6. Histamenou', ''),
(184, 7, '06', '28', 'Hekatombaion', '7. Histamenou', ''),
(185, 8, '06', '29', 'Hekatombaion', '8. Histamenou', ''),
(186, 9, '06', '30', 'Hekatombaion', '9. Histamenou', ''),
(187, 10, '07', '01', 'Hekatombaion', '10. Histamenou', ''),
(188, 11, '07', '02', 'Hekatombaion', '1. Mesountos', ''),
(189, 12, '07', '03', 'Hekatombaion', '2. Mesountos', 'Kronia'),
(190, 13, '07', '04', 'Hekatombaion', '3. Mesountos', ''),
(191, 14, '07', '05', 'Hekatombaion', '4. Mesountos', ''),
(192, 15, '07', '06', 'Hekatombaion', 'Dikhomenia', ''),
(193, 16, '07', '07', 'Hekatombaion', '6. Mesountos', 'Synoikia'),
(194, 17, '07', '08', 'Hekatombaion', '7. Mesountos', ''),
(195, 18, '07', '09', 'Hekatombaion', '8. Mesountos', ''),
(196, 19, '07', '10', 'Hekatombaion', '9. Mesountos', ''),
(197, 20, '07', '11', 'Hekatombaion', '10. Mesountos', ''),
(198, 21, '07', '12', 'Hekatombaion', '10. Legontos', ''),
(199, 22, '07', '13', 'Hekatombaion', '9. Legontos', ''),
(200, 23, '07', '14', 'Hekatombaion', '8. Legontos', ''),
(201, 24, '07', '15', 'Hekatombaion', '7. Legontos', ''),
(202, 25, '07', '16', 'Hekatombaion', '6. Legontos', ''),
(203, 26, '07', '17', 'Hekatombaion', '5. Legontos', ''),
(204, 27, '07', '18', 'Hekatombaion', '4. Legontos', ''),
(205, 28, '07', '19', 'Hekatombaion', '3. Legontos', 'Panathenea'),
(206, 29, '07', '20', 'Hekatombaion', '2. Legontos', ''),
(207, 30, '07', '21', 'Hekatombaion', '1. Legontos', ''),
(208, 1, '07', '22', 'Metageitnion', 'Noumenia', ''),
(209, 2, '07', '23', 'Metageitnion', '2. Histamenou', ''),
(210, 3, '07', '24', 'Metageitnion', 'Tritomenis', ''),
(211, 4, '07', '25', 'Metageitnion', 'Tetras', ''),
(212, 5, '07', '26', 'Metageitnion', '5. Histamenou', ''),
(213, 6, '07', '27', 'Metageitnion', '6. Histamenou', ''),
(214, 7, '07', '28', 'Metageitnion', '7. Histamenou', ''),
(215, 8, '07', '29', 'Metageitnion', '8. Histamenou', ''),
(216, 9, '07', '30', 'Metageitnion', '9. Histamenou', ''),
(217, 10, '07', '31', 'Metageitnion', '10. Histamenou', ''),
(218, 11, '08', '01', 'Metageitnion', '1. Mesountos', ''),
(219, 12, '08', '02', 'Metageitnion', '2. Mesountos', ''),
(220, 13, '08', '03', 'Metageitnion', '3. Mesountos', ''),
(221, 14, '08', '04', 'Metageitnion', '4. Mesountos', ''),
(222, 15, '08', '05', 'Hekatombaion', 'Dikhomenia', 'Eleusina'),
(223, 16, '08', '06', 'Metageitnion', '6. Mesountos', 'Eleusina'),
(224, 17, '08', '07', 'Metageitnion', '7. Mesountos', 'Eleusina'),
(225, 18, '08', '08', 'Metageitnion', '8. Mesountos', 'Eleusina'),
(226, 19, '08', '09', 'Metageitnion', '9. Mesountos', ''),
(227, 20, '08', '10', 'Metageitnion', '10. Mesountos', ''),
(228, 21, '08', '11', 'Metageitnion', '10. Legontos', ''),
(229, 22, '08', '12', 'Metageitnion', '9. Legontos', ''),
(230, 23, '08', '13', 'Metageitnion', '8. Legontos', ''),
(231, 24, '08', '14', 'Metageitnion', '7. Legontos', ''),
(232, 25, '08', '15', 'Metageitnion', '6. Legontos', ''),
(233, 26, '08', '16', 'Metageitnion', '5. Legontos', ''),
(234, 27, '08', '17', 'Metageitnion', '4. Legontos', ''),
(235, 28, '08', '18', 'Metageitnion', '3. Legontos', ''),
(236, 29, '08', '19', 'Metageitnion', '2. Legontos', ''),
(237, 1, '08', '20', 'Boedromion', 'Noumenia', ''),
(238, 2, '08', '21', 'Boedromion', '2. Histamenou', ''),
(239, 3, '08', '22', 'Boedromion', 'Tritomenis', ''),
(240, 4, '08', '23', 'Boedromion', 'Tetras', ''),
(241, 5, '08', '24', 'Boedromion', '5. Histamenou', 'Genesia'),
(242, 6, '08', '25', 'Boedromion', '6. Histamenou', ''),
(243, 7, '08', '26', 'Boedromion', '7. Histamenou', ''),
(244, 8, '08', '27', 'Boedromion', '8. Histamenou', ''),
(245, 9, '08', '28', 'Boedromion', '9. Histamenou', ''),
(246, 10, '08', '29', 'Boedromion', '10. Histamenou', ''),
(247, 11, '08', '30', 'Boedromion', '1. Mesountos', ''),
(248, 12, '08', '31', 'Boedromion', '2. Mesountos', 'Demokratia'),
(249, 13, '09', '01', 'Boedromion', '3. Mesountos', ''),
(250, 14, '09', '02', 'Boedromion', '4. Mesountos', ''),
(251, 15, '09', '03', 'Boedromion', 'Dikhomenia', ''),
(252, 16, '09', '04', 'Boedromion', '6. Mesountos', ''),
(253, 17, '09', '05', 'Boedromion', '7. Mesountos', 'Epidauria'),
(254, 18, '09', '06', 'Boedromion', '8. Mesountos', ''),
(255, 19, '09', '07', 'Boedromion', '9. Mesountos', ''),
(256, 20, '09', '08', 'Boedromion', '10. Mesountos', ''),
(257, 21, '09', '09', 'Boedromion', '10. Legontos', ''),
(258, 22, '09', '10', 'Boedromion', '9. Legontos', ''),
(259, 23, '09', '11', 'Boedromion', '8. Legontos', ''),
(260, 24, '09', '12', 'Boedromion', '7. Legontos', ''),
(261, 25, '09', '13', 'Boedromion', '6. Legontos', ''),
(262, 26, '09', '14', 'Boedromion', '5. Legontos', ''),
(263, 27, '09', '15', 'Boedromion', '4. Legontos', ''),
(264, 28, '09', '16', 'Boedromion', '3. Legontos', ''),
(265, 29, '09', '17', 'Boedromion', '2. Legontos', ''),
(266, 30, '09', '18', 'Boedromion', '1. Legontos', ''),
(267, 1, '09', '19', 'Pyanepsion', 'Noumenia', ''),
(268, 2, '09', '20', 'Pyanepsion', '2. Histamenou', ''),
(269, 3, '09', '21', 'Pyanepsion', 'Tritomenis', ''),
(270, 4, '09', '22', 'Pyanepsion', 'Tetras', ''),
(271, 5, '09', '23', 'Pyanepsion', '5. Histamenou', ''),
(272, 6, '09', '24', 'Pyanepsion', '6. Histamenou', 'Proerosia'),
(273, 7, '09', '25', 'Pyanepsion', '7. Histamenou', 'Pyanopsia'),
(274, 8, '09', '26', 'Pyanepsion', '8. Histamenou', 'Theseia, Oskhophoria'),
(275, 9, '09', '27', 'Pyanepsion', '9. Histamenou', 'Stenia'),
(276, 10, '09', '28', 'Pyanepsion', '10. Histamenou', ''),
(277, 11, '09', '29', 'Pyanepsion', '1. Mesountos', 'Thesmophoria'),
(278, 12, '09', '30', 'Pyanepsion', '2. Mesountos', 'Thesmophoria'),
(279, 13, '10', '01', 'Pyanepsion', '3. Mesountos', 'Thesmophoria'),
(280, 14, '10', '02', 'Pyanepsion', '4. Mesountos', ''),
(281, 15, '10', '03', 'Pyanepsion', 'Dikhomenia', ''),
(282, 16, '10', '04', 'Pyanepsion', '6. Mesountos', ''),
(283, 17, '10', '05', 'Pyanepsion', '7. Mesountos', ''),
(284, 18, '10', '06', 'Pyanepsion', '8. Mesountos', ''),
(285, 19, '10', '07', 'Pyanepsion', '9. Mesountos', ''),
(286, 20, '10', '08', 'Pyanepsion', '10. Mesountos', ''),
(287, 21, '10', '09', 'Pyanepsion', '10. Legontos', ''),
(288, 22, '10', '10', 'Pyanepsion', '9. Legontos', ''),
(289, 23, '10', '11', 'Pyanepsion', '8. Legontos', ''),
(290, 24, '10', '12', 'Pyanepsion', '7. Legontos', ''),
(291, 25, '10', '13', 'Pyanepsion', '6. Legontos', ''),
(292, 26, '10', '14', 'Pyanepsion', '5. Legontos', 'Apaturia'),
(293, 27, '10', '15', 'Pyanepsion', '4. Legontos', 'Apaturia'),
(294, 28, '10', '16', 'Pyanepsion', '3. Legontos', 'Apaturia'),
(295, 29, '10', '17', 'Pyanepsion', '2. Legontos', ''),
(296, 1, '10', '18', 'Maimakterion', 'Noumenia', ''),
(297, 2, '10', '19', 'Maimakterion', '2. Histamenou', ''),
(298, 3, '10', '20', 'Maimakterion', 'Tritomenis', ''),
(299, 4, '10', '21', 'Maimakterion', 'Tetras', ''),
(300, 5, '10', '22', 'Maimakterion', '5. Histamenou', ''),
(301, 6, '10', '23', 'Maimakterion', '6. Histamenou', ''),
(302, 7, '10', '24', 'Maimakterion', '7. Histamenou', ''),
(303, 8, '10', '25', 'Maimakterion', '8. Histamenou', ''),
(304, 9, '10', '26', 'Maimakterion', '9. Histamenou', ''),
(305, 10, '10', '27', 'Maimakterion', '10. Histamenou', ''),
(306, 11, '10', '28', 'Maimakterion', '1. Mesountos', ''),
(307, 12, '10', '29', 'Maimakterion', '2. Mesountos', ''),
(308, 13, '10', '30', 'Maimakterion', '3. Mesountos', ''),
(309, 14, '10', '31', 'Maimakterion', '4. Mesountos', ''),
(310, 15, '11', '01', 'Maimakterion', 'Dikhomenia', ''),
(311, 16, '11', '02', 'Maimakterion', '6. Mesountos', ''),
(312, 17, '11', '03', 'Maimakterion', '7. Mesountos', ''),
(313, 18, '11', '04', 'Maimakterion', '8. Mesountos', ''),
(314, 19, '11', '05', 'Maimakterion', '9. Mesountos', ''),
(315, 20, '11', '06', 'Maimakterion', '10. Mesountos', ''),
(316, 21, '11', '07', 'Maimakterion', '10. Legontos', ''),
(317, 22, '11', '08', 'Maimakterion', '9. Legontos', ''),
(318, 23, '11', '09', 'Maimakterion', '8. Legontos', ''),
(319, 24, '11', '10', 'Maimakterion', '7. Legontos', ''),
(320, 25, '11', '11', 'Maimakterion', '6. Legontos', ''),
(321, 26, '11', '12', 'Maimakterion', '5. Legontos', ''),
(322, 27, '11', '13', 'Maimakterion', '4. Legontos', ''),
(323, 28, '11', '14', 'Maimakterion', '3. Legontos', ''),
(324, 29, '11', '15', 'Maimakterion', '2. Legontos', ''),
(325, 30, '11', '16', 'Maimakterion', '2. Legontos', ''),
(326, 1, '11', '17', 'Poseideon', 'Noumenia', ''),
(327, 2, '11', '18', 'Poseideon', '2. Histamenou', ''),
(328, 3, '11', '19', 'Poseideon', 'Tritomenis', ''),
(329, 4, '11', '20', 'Poseideon', 'Tetras', ''),
(330, 5, '11', '21', 'Poseideon', '5. Histamenou', ''),
(331, 6, '11', '22', 'Poseideon', '6. Histamenou', ''),
(332, 7, '11', '23', 'Poseideon', '7. Histamenou', ''),
(333, 8, '11', '24', 'Poseideon', '8. Histamenou', ''),
(334, 9, '11', '25', 'Poseideon', '9. Histamenou', ''),
(335, 10, '11', '26', 'Poseideon', '10. Histamenou', ''),
(336, 11, '11', '27', 'Poseideon', '1. Mesountos', ''),
(337, 12, '11', '28', 'Poseideon', '2. Mesountos', ''),
(338, 13, '11', '29', 'Poseideon', '3. Mesountos', ''),
(339, 14, '11', '30', 'Poseideon', '4. Mesountos', ''),
(340, 15, '12', '01', 'Poseideon', 'Dikhomenia', ''),
(341, 16, '12', '02', 'Poseideon', '6. Mesountos', ''),
(342, 17, '12', '03', 'Poseideon', '7. Mesountos', ''),
(343, 18, '12', '04', 'Poseideon', '8. Mesountos', ''),
(344, 19, '12', '05', 'Poseideon', '9. Mesountos', ''),
(345, 20, '12', '06', 'Poseideon', '10. Mesountos', ''),
(346, 21, '12', '07', 'Poseideon', '10. Legontos', ''),
(347, 22, '12', '08', 'Poseideon', '9. Legontos', ''),
(348, 23, '12', '09', 'Poseideon', '8. Legontos', ''),
(349, 24, '12', '10', 'Poseideon', '7. Legontos', ''),
(350, 25, '12', '11', 'Poseideon', '6. Legontos', ''),
(351, 26, '12', '12', 'Poseideon', '5. Legontos', 'Haloa'),
(352, 27, '12', '13', 'Poseideon', '4. Legontos', ''),
(353, 28, '12', '14', 'Poseideon', '3. Legontos', ''),
(354, 29, '12', '15', 'Poseideon', '2. Legontos', ''),
(355, 1, '12', '16', 'Poseideon B', 'Noumenia', ''),
(356, 2, '12', '17', 'Poseideon B', '2. Histamenou', ''),
(357, 3, '12', '18', 'Poseideon B', 'Tritomenis', ''),
(358, 4, '12', '19', 'Poseideon B', 'Tetras', ''),
(359, 5, '12', '20', 'Poseideon B', '5. Histamenou', ''),
(360, 6, '12', '21', 'Poseideon B', '6. Histamenou', ''),
(361, 7, '12', '22', 'Poseideon B', '7. Histamenou', ''),
(362, 8, '12', '23', 'Poseideon B', '8. Histamenou', ''),
(363, 9, '12', '24', 'Poseideon B', '9. Histamenou', ''),
(364, 10, '12', '25', 'Poseideon B', '10. Histamenou', ''),
(365, 11, '12', '26', 'Poseideon B', '1. Mesountos', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `menu`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Politika', 'politika', 1, 1, NULL, NULL),
(2, 0, 'Dünya', 'dunya', 1, 1, NULL, NULL),
(3, 0, 'Toplum', 'toplum', 1, 1, NULL, NULL),
(4, 0, 'Yaşam', 'yasam', 1, 1, '2021-07-26 13:27:20', '2021-07-26 13:27:20'),
(5, 0, 'Din', 'din', 1, 1, '2021-07-26 13:27:33', '2021-07-26 13:27:33'),
(6, 0, 'Köşe Yazarları', 'kose-yazarlari', 0, 1, '2021-07-26 13:28:07', '2021-07-26 13:28:07'),
(7, 0, 'Sanat', 'sanat', 0, 1, '2021-07-26 13:28:29', '2021-07-26 13:28:29'),
(8, 0, 'Kitap - Edebiyat', 'kitap-edebiyat', 0, 1, '2021-07-26 13:28:51', '2021-07-26 13:28:51'),
(9, 0, 'Agora Life', 'agora-life', 0, 1, '2021-07-26 13:29:16', '2021-07-26 13:29:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Cengiz Yavuz', 'cengiz@yaptiboyadi.com', 'Lorim ipsum', '2021-08-19 00:04:59', '2021-08-19 00:04:59'),
(2, 'Cengiz Yavuz', 'cengiz@yaptiboyadi.com', 'Lorem ipsum dolor sit amet', '2021-08-19 00:30:38', '2021-08-19 00:30:38'),
(3, 'Cengiz Yavuz', 'yazicizi.isleri@yaptiboyadi.com', 'Siteyi inceledem okudum.', '2021-08-19 00:41:38', '2021-08-19 00:41:38'),
(4, 'Abdurrahman Uzunkavak', 'abdurrahman@uzunkavak.com', 'Lorem ipsum dolor sit amet.', '2021-08-19 15:23:11', '2021-08-19 15:23:11'),
(5, 'Cengiz Yavuz', 'cengiz@yaptiboyadi.com', 'The Theoi Project profiles each deity and creature of Greek mythology on a separate page, incorporating an encyclopedia summary, quotations from a wide selection of ancient Greek and Roman texts, and illustrations from ancient art. Analysis of the texts and interpretation of the stories of myth is currently beyond the scope of the project. For such detailed analysis, I would suggest consulting some of the good books available on the subject.', '2021-08-19 22:55:28', '2021-08-19 22:55:28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_07_09_213724_period_table', 1),
(2, '2021_07_09_230804_users_table', 1),
(3, '2021_07_09_232754_category_table', 1),
(4, '2021_07_09_233113_kind_table', 1),
(7, '2021_07_09_233409_post_table', 2),
(9, '2021_07_26_130857_painter_table', 3),
(10, '2021_07_26_204725_author_table', 4),
(11, '2021_08_02_215452_setting_table', 5),
(12, '2021_08_18_030744_contact_table', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `painters`
--

CREATE TABLE `painters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graecus` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `painters`
--

INSERT INTO `painters` (`id`, `name`, `graecus`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Eksekias', 'Ἐξηκίας', NULL, NULL, NULL, NULL),
(2, 'Asteas', 'Ἀστεας', '<p>Eski yunan güney italya kırmızı figür vazo ressamı</p>', NULL, NULL, '2021-07-28 15:05:10'),
(5, 'Dokimasia Ressamı', NULL, NULL, NULL, '2021-07-28 15:24:43', '2021-07-28 15:32:42'),
(6, 'Kleophrades Ressamı', NULL, '<p>Eski yunan vazo ressamı</p>', NULL, '2021-07-28 15:42:56', '2021-07-28 15:42:56'),
(7, 'Euthymides', NULL, NULL, NULL, '2021-07-28 15:45:03', '2021-07-28 15:45:03'),
(8, 'Douris', NULL, '<p>Kırmızı figür vazo ressamı</p>', NULL, '2021-08-19 21:39:09', '2021-08-19 21:39:09'),
(9, 'Makron', NULL, '<p>Atina kırmızı figür vazo ressamı</p>', NULL, '2021-08-19 22:25:34', '2021-08-19 22:25:34'),
(10, 'Anonim', NULL, NULL, NULL, '2021-08-19 22:27:32', '2021-08-19 22:27:32'),
(11, 'Akheloos Ressamı', NULL, '<p>Eski yunan siyah figür vazo ressamı</p>', NULL, '2021-08-19 22:45:25', '2021-08-19 22:45:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `periods`
--

CREATE TABLE `periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `periods`
--

INSERT INTO `periods` (`id`, `issue`, `name`, `slug`, `publish`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kalliope', 'kalliope', 1, 'Destan ve epik şiirlere ilham verir. Mousa\'ların en büyüğü ve zekisidir', NULL, NULL, '2021-07-28 17:21:28'),
(2, 2, 'Kleoi', 'kleoi', 1, 'Tarih perisidir. Tarihi olayları konu alan şiirlere ilham verir', NULL, NULL, '2021-08-18 21:02:30'),
(3, 3, 'Euterpe', 'euterpe', 1, 'Müziğin ve lirik şiirin ilham perisidir', NULL, NULL, '2021-08-19 17:09:42'),
(4, 4, 'Erato', 'erato', 0, 'Romantik ve erotik şiirlere ilham verir.', NULL, NULL, '2021-08-18 00:56:00'),
(5, 5, 'Melpomene', 'melpomene', 0, 'Tragedyanın ilham perisidir', NULL, NULL, '2021-08-18 00:55:59'),
(6, 6, 'Polymnia', 'polymnia', 0, 'Dini şiir, ilahiler, dans ve hitabetin ilham perisi', NULL, NULL, NULL),
(7, 7, 'Terpsikhore', 'terpsikhore', 0, 'Dansın ve koronun ilham perisidir', NULL, NULL, NULL),
(8, 8, 'Thalia', 'thalia', 0, 'Komedi ve pastoral şiirin ilham perisidir', NULL, NULL, NULL),
(9, 9, 'Urania', 'urania', 0, 'Astrolojinin ilham perisidir', NULL, NULL, '2021-08-15 20:44:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue` int(11) NOT NULL,
  `kind` int(11) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 100,
  `headline` int(11) NOT NULL DEFAULT 0,
  `painter` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `issue`, `kind`, `author`, `category`, `title`, `slug`, `spot`, `image`, `image_info`, `hit`, `headline`, `painter`, `status`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 7, 4, 'Gözler İda Dağı\'nda. En güzel kim?', 'gozler-ida-daginda-en-guzel-kim', 'Olympos\'ta yer yerinden oynuyor, şölen ortasına düşen bir elma ile bütün tanrıçalar birbirine girdi.', 'gozler-ida-daginda-en-guzel-kim.jpg', 'Antikensammlung Berlin, Atina Kırmızı Figür, Kyliks, M.Ö. 5.yy', 100, 1, 9, 1, '<p>Olympos\'ta yer yerinden oynuyor, şölen ortasına düşen bir elma ile bütün tanrıçalar birbirine girdi. Hera, Athena ve Aphrodite arasında arbede yaşandı. Elli Nereus Kızları\'ndan Thetis\'in ölümlü Peleus ile evlilik töreni sorunlu başladı. Olympos\'ta düzenlenen şölene Kavga Tanrıça Eris çağrılmadı. Kambersiz düğün olur mu diyerek bu duruma fena halde öfkelenen Eris, üzerinde \"en güzele\" yazılı elmayı şölenin ortasına gizlice atarak oradan uzaklaştı. Elmayı gören ve şölenin en güzeli olmak isteyen Hera, Athena ve Aphrodite arasında tartışma çıktı.Aralarında anlaşamayan tanrıçalar, Zeus\'tan yardım istediler. Ancak Zeus\'un tepkisi üzerine tüm tanrı ve tanrıçalar şaşkına döndü. Bir yanda eşi ve kardeşi Hera, diğer yanda kızları Athena ve Aphrodite olan Zeus, bir aile faciası yaşanmaması için hakemlik görevini İda Dağı\'nda çobanlık yapan Paris\'e verdi. Yıkıcı bir güzellik tutkusu içinde bulunan tanrıçalar, hakemlik görevini üstlenen Paris\'e rüşvet üstüne rüşvet öneriyor. Hera, Küçük Asya krallığını, Athena sonsuz akıl, Aphrodite ise Spartalı Helene\'nin aşkını sunuyor.<br /><br />Olympos\'ta ve insanlar arasında tüm gözler şimdi, dünyanın ilk güzellik yarışmasına tanıklık eden İda Dağı\'na ve oradan gelecek habere çevrildi.<br /><br />Paris, üzerinde \"en güzele\" yazılı elmayı kime verecek? Bu soru, Olympos kulislerinin ve Agora sokaklarının tek sorusu haline geldi. Agora\'nın magazin çevrelerinde ise gündem konusu Aphrodite oldu. Cosmos\'un en güzeli olarak kabul edilen Aphrodite\'nin neden kendine güvenmeyip, \"Spartalı Helene\'nin aşkını\" rüşvet olarak öne sürdüğü ayrıca bir tartışma konusu yarattı.<br /><br />Haberci tanrı Hermes, İda Dağı\'nın çobanı Paris\'in üzerinde \"en güzele\" yazılı elmayı Aphrodite\'ye verdiğini bildirdi. Kimi magazin yazarları zaten bunun olması gerektiğini savunurken, kimi çevreler ise Aphrodite\'nin bu ödülü rüşvetiyle aldığı ve aslında en güzelin Spartalı Helene sayılması gerektiği görüşünü savundu.<br /><br />İnsanlar dünyasında ve Olympos\'ta tartışmalar süredursun, üç tanrıça arasındaki tartışma iyiden iyiye kızıştı. Hera ve Athena söz birliği yapmışcasına; yarışma süreci tamamlanmış olsa da, Paris\'in verdiği bu kararın hem kendisi ve hem de kenti Troya için bir yıkım olduğu söylendi. Böylece Hera ve Athena Troya\'ya olan nefretlerini ve düşmanlıklarını açıkça belli etmiş oldular.<br /><br />Olayların nasıl gelişeceği ise, Troya\'da, Agora\'da ve Olympos\'ta yeni tartışmalar açacağa benziyor.<br /><br />Kimi çevreler bunun, Kader Tanrıçaları Moiraların bir oyunu olduğu görüşünde. Bilindiği üzere Troya için yıllar öncesine ait bir kehanet dilden dile dolaşmaktaydı. Troya Kraliçesi Hekabe, en küçük oğlu Paris\'e hamileyken kötü bir rüya ile uyanmış ve rüyasını yorumlamaları için dönemin isim yapmış bilicilerine başvurmuştu. Biliciler ise bu düşün, Troya yıkımının habercisi saymışlardı. Hekabe rüyasında, karnından alevlerin yükseldiğini ve tüm Troya kentini sardığını görmüştü. Bilicilerin bu yorumları üzerine Priamos ve Hekabe, Paris doğar doğmaz, Troya\'nın bir yıkıma uğramaması için, çocuğu ölüme terketmek üzere İda Dağı\'na bırakması için bir elçiye vermişlerdi. Ancak, dağda çocuğu bir çoban bulmuş ve onu büyütüp yetiştirmişti. Güzellik yarışması ve Paris\'in hakemlik görevini Kader Tanrıçaları Moiraların bir oyunu sayan çevreler, bu yarışmanın Paris\'in tekrar Troya\'ya dönüşü için bir bahane oluşturduğu görüşünde. Yarışma ile kimliği açığa çıkan Paris hem Troya\'ya dönmüş olacak ve hem de Aphrodite\'nin rüşveti olan Spartalı Helene\'yi kaçırmasıyla da Akhalar ile Troyalılar arasında düşmanlığa ve savaşa neden olacağı görüşü ağırlık kazanıyor.<br /><br />Yıllar öncesine ait kehanetin ve bu kehanetin gerçekleştiğini gösteren süreç hem insanlar dünyasında ve hem de Olympos\'ta kaygılı bir bekleyişe yol açıyor.</p>', NULL, '2021-07-26 23:29:14', '2021-08-19 22:25:49'),
(3, 1, 7, 0, 4, 'Amazonlar Kraliçesi Penthesileia öldürüldü.', 'amazonlar-kralicesi-penthesileia-olduruldu', NULL, NULL, NULL, 100, 0, 0, 1, '<p>Kraliçe Penthesileia Troya Savaşı\'nda hayatını kaybetti</p>\r\n<p>Troya savunmasına destek için gelen Amazonlar, kraliçeleri Penthesileia\'yı kaybetti. At üstünde ve lybris denilen baltalarıyla savaşan amazonlar, savaşa katıldıkları ilk anlarda, Akhalıları hayli şaşırttı. Akhilleus ile karşı karşı gelen Kraliçe Penthesileia savaşını kaybetti. Ölürken miğferi düşen Penthesileia\'yı gören Akhilleus, ölmek üzereyken ona aşık olduğu ve cenazesinin yapılabilmesi için ölüsünü Amazonlara verdiği de gelen haberler arasında.</p>', NULL, '2021-07-27 09:45:46', '2021-07-27 16:25:45'),
(4, 1, 1, 3, 1, 'Artık Atina\'da Yönetim Kadınlarda', 'artik-atinada-yonetim-kadinlarda', 'Lysistrata’nın önderliğinde Atinalı kadınlar yönetime el koydu, Atinalı erkekler büsbütün şaşkına döndü.', 'atinada-yonetim-kadinlarda.jpg', NULL, 100, 0, 10, 1, '<p>Lysistrata\'nın önderliğinde Atinalı kadınlar yönetime el koydu, Atinalı erkekler şaşkın.</p>\r\n<p>Atina ile Sparta arasında yıllardır süren Peloponnessos Savaşları kadınları harekete geçirdi. Lysistrata önderliğinde bir araya gelen kadınlar biz yaşamı üretiyoruz, siz hazineyi tüketiyorsunuz diyerek Akropolis\'i ele geçirdi. Eylemde yer alan kadınlar, diğer kentlere ve Peloponnessos Birliğine bağlı kentlere de elçiler göndererek, o kentlerde yaşayan kadınların da kendilerine barış için destek vermesini istedi. Önceleri savaş karşıtlığıyla bilinen Akharnia da dahil olmak üzere kadınların  gelmemesi Lysistrata ve yandaşlarını hayal kırıklığına uğratsa da destek için gelen kadınlar eylemcilerin yüzünü güldürdü.<br /><br />Savaş yerine barışın egemen olmasını isteyen eylemciler adına Lysistrata yaptığı açıklamada amaçlarını dile getirdi;<br /><br /><em>\"Biz kadınlar savaşın ilk günlerinde haddimizi bildik, her yaptığınıza boyun eğdik. Ağız açtırmadınız bize, sustuk. Ama yaptıklarınızı beğeniyor muyduk? Hayır. Olanın bitenin pek ala farkında idik. Çok defa köşemizden öğreniyorduk önemli işler üstüne verdiğiniz kötü kararları. İçimiz kan ağlarken, yine de gülümseyerek sorardık: \"Bugünkü halk toplantısında barış üstüne ne karara vardınız? \" Kocamız \"Sana ne? Sen karışma!.\" der, biz de susardık.<br />Ama ara sıra da ne kötü kararlara varıldığını öğrenir ve sorardık: \"Aman kocacığım, nasıl olur, bu kadar çılgınca bir işe nasıl girersiniz?\" Ama kocamız bize yukardan bakarak: \"Sen elinin hamuruyla erkeklerin işlerine karışma. Cenk işi, erkek işi!\" derdi.<br />Başımızı derde sokuyordunuz, yine de bizim size öğüt vermeye hakkımız yoktu. Ama sonunda siz kendiniz başladınız bağırmaya ulu orta: \"Erkek yok mu bu memlekette?\" diye; erkekler cevap verdi size: \"Yok, erkek yok bu memlekette!\" İşte o zaman biz kadınlar toplandık ve Yunanistan\'ı kurtarmaya karar verdik. Daha bekleyebilir miydik? Söz bizim artık, susmak sırası sizde. Aklınızı başınıza toplar, öğütlerimizi dinlerseniz, işlerinizi biz yoluna koruz.\"</em> dedi. (Lysistrata - Aristophanes)<br /><br />Kadınların kararlılığını gören kimi erkekler toplanıp Akropolis\'i geri almak için saldırıya geçseler de çabaları sonuçsuz kaldı. Bunun üzerine erkekler Probulos\'a şikayetleri üzerine, askerlerine saldırı emri veren Probulos\'un çabası da Akropolis\'i geri almak için  yeterli olamadı.<br /><br />Kadınların eyleminde yer yer çözülmeler yaşansa da Lysistrata kendi aralarındaki birliği sağlamayı başardı.<br /><br />Kadınlar, Atina ve Spartalı delegelerle barış üzerine anlaşma yapılmasını sağlamalarının ardındann eylemlerine son verdi. Eşler komos alaylarıyla Akropolis\'i terkederek evlerine gittiler.</p>\r\n<p> </p>\r\n<p>Kaynakça</p>\r\n<p><span style=\"font-size: 10pt;\">Lysistrata - Aristophanes</span></p>', NULL, '2021-07-27 10:10:41', '2021-08-19 22:27:50'),
(5, 1, 1, 7, 1, 'Kadınlar Tanrıça Athena\'ya Öfkeli', 'kadinlar-tanrica-athenaya-ofkeli', 'Orestes’in Areopagos’ta yargılanması sırasında kurduğu cümle ile Athena, Atinalı kadınları kızdırdı.', 'kadinlar-tanrica-athenaya-ofkeli.jpg', NULL, 100, 0, 10, 1, '<p>Orestes\'in Areopagos\'ta yargılanması sırasında kurduğu cümle ile Athena, Atinalı kadınları kızdırdı. Kadınlar bir açıklama beklerken Akropolis ise sessizliğini korumaya devam ediyor.</p>\r\n<p>Atinalı kadınlar, Tanrıça Athena\'nın sözleri üzerine sokağa döküldü. Anımsanacağı üzere, Mykenai Kralı Agamemnon, Troya Seferi\'ne çıkabilmesi için Tanrıça Artemis\'in dileği olarak biliciler tarafından söyleneni yapmış ve kızı İphigeneia\'yı Aulis\'te tanrıça için kurban etmişti. Ancak savaş sonrası yurduna dönüşünde de Kraliçe Klytaimnestra tarafından öldürülmüştü. Klytaimnestra da bunu kızı İphigeneia öldürüldüğü için yaptığını söylemişti.</p>\r\n<p>Agamemnon ve Klytaimnestra\'nın en küçük çocukları Orestes, yetişkin çağa geldiğinde Mykenai\'a geri dönmüş ve annesi olan Kraliçe Klytaimnestra ve aşığı Aigisthos\'u, Elektra\'nın yardımıyla öldürmüş ve peşine takılan Erinys\'lerden dolayı da oradan oraya sürüklenmişti.</p>\r\n<p>Orestes, Areopagos\'ta yapılan yargılanmanın ardından beraat etmişti. Ancak Athena\'nın mahkeme sırasında söylediği sözler Atinalı kimi kadınları fena öfkelendirdi ve sokağa döktü.</p>\r\n<p>Athena, mahkemede oyların eşit çıkması sonucu, kendi görüşünü açıklayarak dengeleri Orestes\'in lehine değiştirmişti;</p>\r\n<p>\"Bir kadın doğurmadı beni, o yüzden tüm benliğimle erkeğin yanındayım. Hiç de umurumda değildir benim, kocasını öldürdüğü için öldürülen bir kadın \"(Alıntı : Aiskhylos; Oresteia Üçlemesi) demiş ve oyunu Orestes\'in beraati yönünde kullanmıştı. Athena\'nın bu sözleri, kimi Atinalı kadınları ve bazı sivil toplum örgütlerini harekete geçirdi. Peşpeşe yapılan açıklamalarla Athena kınandı ve bir açıklama yaparak tüm Atinalı kadınlardan özür dilemesi isteniyor. Atina\'nın korumacılığını da üstlenmiş bulunan Athena ise mahkeme sonrası sessizliğini koruyor. Tüm gözlerin Athena\'dan gelecek açıklama için çevrildiği Akropolis\'in kapıları sıkı sıkıya kapalı.</p>\r\n<p>Kadın sivil toplum örgütlerinden \"Mor Sütun\", tanrıça Athena açıklama yapana dek konuyu gündemde tutacaklarını ve hem Tanrıça Athena\'nın bir açıklama yapması ve hem de konunun unutulmaması için bir eylem planladıklarını ve tüm Atinalı kadınlar olarak önümüzdeki günlerde Agora Panathenaia yolu üzerinde Akropolis\'e dek yürüyüş yapacaklarını açıkladı.</p>\r\n<p>Anımsanacağı üzere benzer bir durum, Perikles\'in, Peloponnessos savaşlarında ölenler için yapılan cenaze töreninde kurduğu kimi cümleler üzerine de yaşanmış ve bazı kadınların tepkisini çekmişti. Ancak Atina\'nın bir savaş içinde olduğu, birlik beraberliğine en çok gereksinim duydugu zamanlar olduğu gerekçesiyle tepkiler görmezden gelinmiş ve tepkisini sürdüren bazı kadınlar ise Atina\'ya zarar vermekle suçlanmıştı.</p>\r\n<p> </p>', NULL, '2021-07-27 10:21:33', '2021-08-19 22:28:43'),
(6, 1, 1, 1, 1, 'Mykenai Kralı Agamemnon’a Suikast', 'mykenai-krali-agamemnona-suikast', 'Troya seferi dönüşünde bir kahraman gibi karşılanan Agamemnon, sarayında öldürüldü.', 'mykenai-krali-agamemnona-suikast.jpg', NULL, 100, 0, 5, 1, '<p>Troya seferi dönüşünde bir kahraman gibi karşılanan Agamemnon, sarayında öldürüldü. Troya galibi Agamemnon’un merakla beklenen yurdu  Mykenai’a dönüşünde törenlerle karşılandı. Sarayın önünde bizzat Kraliçe Klytaimnestra tarafından karşılandı. Törende hazır bulunan koro tarafından Agamemnon ve Akha ordusunun Troya’daki kahramanlıkları anlatıldı.<br /><br />Ancak ne var ki zafer Agamemnon’a yaramadı. Kral sarayına girer girmez, Agamemnon’un ölüm çığlığı Mykenai’da kulaktan kulağa yayıldı.<br /><br />Saraydan yapılan açıklamayayla Agamemnon’un ölümü doğrulandı. Açıklamada, Kral Agamemnon’un, Kraliçe Klytaimnestra tarafından öldürüldüğü ve bu eylemini de aşığı Aigisthos’un yardımı ile yaptığı bildirildi.<br /><br />Açıklamanın hemen ardından Kraliçe Klytaimnestra sarayın önüne çıkarak eylemini anlattı. Klytaimnestra’nın soğukkanlılığını koruduğu ve bu eylemini çok önceden planlandığı gözlemlendi. Klytaimnestra; <em>… gözleri kamaştıran zengin işlemeli bir bornozla onu sarmaladım… iki defa vurdum, iki defa inledi. Azaları takatten düşüvermişti; hareketsiz yerde yatarken de üçüncü vuruşu indirdim…</em> dedi.<br /><br />Kimliğini açıklamak istemeyen bir saray kölesinin bildirdiğine göre, Agamemnon ve Klytaimnestra’nın kızı Elektra, suikastin hemen ardından küçük kardeşi Orestes’i gizlice saraydan kaçırdığı ve bilinmeyen bir yere gönderdiği öğrenildi. Elektra’nın, henüz çok küçük olan Orestes’in yetişkin çağa geldiğinde babası Agamemnon’un intikamını alacağı düşüncesiyle, Aigisthos tarafından öldürülmesinden korktuğu için kaçırdığı en çok konuşulanlar arasında yer alıyor. Başka bir görüş ise Elektra’nın bununla yetinmeyeceği ve Orestes yetişkin çağa geldiğinde onunla birlikte babasının  intikamını almak için annesi Klytaimnestra ve aşığı Aigisthos’u öldürmeyi planladığı yönünde.<br /><br />Mykenai’ın elit çevresi ise, Agamemnon’un öldürülmesinin yönetimi çok fazla etkilemeyeceği görüşünde. Bu görüşlerini de kralın uzun yıllardır Troya seferinde olduğu için Mykenai’dan uzak oluşuna bağlıyor.</p>\r\n<p> </p>\r\n<p>Kaynakça<br /><span style=\"font-size: 10pt; font-family: helvetica, arial, sans-serif;\">Agamemnon Tragedyası, Aiskhylos</span></p>', NULL, '2021-07-27 12:13:49', '2021-08-19 22:54:36'),
(9, 1, 7, 0, 4, 'Herakles hiç ölmeyecek mi?', 'herakles-hic-olmeyecek-mi', 'Hesperidlerin, insanlara ölümsüzlük veren altın elmalarını koparan Herakles ölümsüzlüğe kavuştu.', 'herakles-hic-olmeyecek-mi.jpg', NULL, 100, 0, 0, 1, '<p>Hesperidlerin, insanlara ölümsüzlük veren altın elmalarını koparan Herakles ölümsüzlüğe kavuştu.</p>\r\n<p>Herakles, Gaia\'nın Hera\'ya evlilik hediyesi olarak verdiği altın elmalardan kopararak ölümsüzlüğe kavuştu. Alınan bilgiye göre bu elmalar dünyanın en batısı olarak kabul edilen yerde bir bahçeye dikilmişlerdi. Bekçi olarak da \"Batı Kızları\" olarak da anılan Hesperidler ile bir ejderha bulunuyordu. Hesperidler bu bahçede kimi zaman şarkı söyleyerek kimi zamansa hora teperek vakit geçirirler ve aynı zamanda da bahçeyi korurlardı. Bu altın elmalardan koparmak ise insanlara ölümsüzlük verirdi.</p>\r\n<p> </p>', NULL, '2021-07-27 17:49:15', '2021-07-28 18:13:03'),
(10, 1, 1, 6, 1, 'Akhilleus’tan Agamemnon’a tehdit', 'akhilleustan-agamemnona-tehdit', 'Troya Savaşı sırasında aralarında kıyasıya  bir anlaşmazlık çıkınca Akhilleus, Agamemnon\'u tehdit etti.', 'akhilleustan-agamemnona-tehdit.jpg', 'Musée du Louvre, Paris, No : Louvre G115, Beazly Arşiv No : 205119,  Kyliks,  M.Ö. 485-480', 100, 0, 8, 1, '<p>Akha komutanı Agamemnon ile Akhilleus arasında ipler gerildi. Aralarındaki gerilim iyiden iyiye artarken Akhilleus, Mykenai Kralı Agamemnon’a saldırarak öldürmeye yeltendi.</p>\r\n<p>Akhilleus ile Agamemnon arasındaki gerginlik gün geçtikçe daha da büyüyor. Troya sahillerinde bekleyen Akha ordusu veba salgını ile karşı karşıya kaldı. Akha askerleri peşpeşe ölmeye başlayınca Agamemnon, Olympos tanrılarından birini kızdırmış olabilecekleri düşüncesi ile çözümü bilicilerde aradı. Apollon’un öfkesinin nedenini bilen Kalkhas, Agamemnon’dan da çekinerek;<br /><br />“Kızdıracağım biliyorum Akha’ların saydığı adamı,<br />o adamın bütün Argos’lulara her yerde sözü geçer.<br />Kral azgın olur kızınca ayak takımından birine,<br />bir zaman öfkesini yenerse de, unutamaz kinini,<br />dışarı vurana dek taşır yüreğinde onu. ” diyerek Tanrı Apollon’un nasıl yatıştırılacağını anlattı.<br />(İl. I, 78 vd.)<br /><br />Kalkhas’a göre, Agamemnon Troya önünde yaptığı savaşlarda, savaş ganimeti olarak aldığı Khryseis’i babası Khryses’in hediye olarak getirdiği kurtulmalıklara karşın iade etmemesiydi. Apollon’un rahibi olan Khryses de tanrıya yalvararak intikamının alınmasını istemiş ve tanrı da bunun üzerine Akhalara veba salgınını göndermişti. Agamemnon ilk başta itiraz etse de çaresiz bilicinin sözlerine uyarak Khryseis’in babasına dönmesine izin verdi ama onun  karşılığında da, Akhilleus’un ganimeti olan Briseis’i aldı. Bu kez de durumu öğrenen Akhilleus öfkelenerek Agamemnon’un üzerine yürüdü.<br /><br />” Ey doymak bilmez adam… Seni gidi edepsiz,<br />çıkarma düşkün yürek… Seni şarap fıçısı,<br />seni it gözlü, seni geyik yürekli…<br />Halkını kemiren bir kralsın sen”;<br />(İl. I, 122, vd.)<br /><br />diyerek kılıcını çekti ve Agamemnon’a doğru hamle yaptı. Ancak o sırada, Akha askerlerinin kendi aralarında tartışmasını istemeyen Tanrıça Athena araya girerek Akhilleus’u tuttu ve öfkesini yatıştırmasını istedi. Akhilleus, Athena’nın sözlerine uyarak Agamemnon’a saldırmaktan vazgeçti. Savaştan da çekilerek gemisine geri döndü.<br /><br />Tanrıça Athena’nın araya girmesiyle Akha ordusu arasında olabilecek olan bölünme önlenmiş oldu. Agamemnon babasına iade ettiği Khryseis’in karşılığında Akhilleus’un ganimeti  olan  Briseis’i almış oldu. Akhilleus ise Agamemnon için savaşmayacağını söyleyerek gemisine döndü ve savaştan çekildi.</p>\r\n<p> </p>\r\n<p>Kaynakça<br /><span style=\"font-size: 10pt;\">İlyada, Homeros</span></p>', NULL, '2021-08-15 20:02:29', '2021-08-19 22:15:35'),
(11, 1, 1, 6, 4, 'Tanrılar bu kez pabucu düz giydi', 'tanrilar-bu-kez-pabucu-duz-giydi', 'Bugüne dek tanrılara pabucu ters giydiren Sisyphos, şimdi kıskıvrak tanrıların elinde.', 'tanrilar-bu-kez-pabucu-duz-giydi.jpg', 'Staatliche Antikensammlungen, Munich, No: Munich J728, Beazley Arşiv No: 30240, Arkaik Dönem, Boyunlu Amphora', 100, 0, 11, 1, '<p>Bugüne dek tanrılara pabucu ters giydiren Sisyphos, şimdi kıskıvrak tanrıların elinde.</p>\r\n<p>Tanrılara pabucu ters giydiren Sisyphos, tanrılar tarafından sonsuz bir cezaya çarptırıldı. Ölümüyle Hades’e giden Sisyphos, bir kayayı tepeye çıkarmakla görevlendirildi. Kaya tepeye çıkarıldığında kendiliğinden tekrar aşağıya yuvarlanıyor ve Sisyphos sil baştan kayayı yeniden yukarı taşıyor. Kısır döngüden oluşan bu ceza Sisyphos’un Hades’teki kaderi oldu.<br /><br />Sisyphos’un cezasına Hades’te tanık olan Odysseus;<br /><br /><em>Sisyphos’u gördüm, korkunç işkenceler çekerken;<br />Yakalamış iki ovucuyla kocaman bir kayayı,<br />ve kollarıyla, bacaklarıyla dayanmıştı kayaya,<br />habire itiyordu onu bir tepeye doğru,<br />işte kaya tepeye vardı, varacak, işte tamam,<br />ama tepeye varmasına tam bir parmak kala,<br />bir güç itiyordu onu tepeden gerisin geri,<br />aşağıya kadar yuvarlanıyordu yeniden baş belası kaya,<br />o da yeniden itiyordu kayayı tekmil kaslarını gere gere,<br />kopan toz toprak habire aşarken başının üstünden,<br />o da habire itiyordu kayayı, kan ter içinde.</em><br />(Odysseia, XII, 593…)<br /><br />dedi. Kurnazlığıyla tanınan Sisyphos, hayatta olduğu sürece tanrıları her zaman kurnazlığıyla kandırmış ve ellerinden kurtulmayı başarmıştı.<br /><br />Bir gün Zeus, Asopos’un kızı Aigina’yı kaçırmış ve yolu da Sisyphos’un kral olduğu Korinthos’tan geçmişti. Asopos kızını aramaya başlayınca, Sisyphos, kentinde bir kaynak fışkırtırsa, kızı Aigina’yı kimin kaçıracağını söylemiş, Asopos’un kabul etmesiyle de Zeus’u elevermişti. Zeus buna çok öfkelenmiş ve hemen Thanatos’u, Sisyphos’un canını almak için göndermişti. Ama baskın çıkan yine Sisyphos olmuştu. Thanatos’u kıskıvrak yakalayıp bağlamıştı. Ömrü biten insanların canını alan Thanatos olduğu için insanlar ölmez olmuştu. Zeus buna da bir çare bulmuş ve Thataso’u kurtarmıştı. İnsanlar yeniden ölümlü olunca, Zeus, Thanatos’a ilk önce Sisyphos’un canını almasını söylemişti. Ama Sisyphos başına gelebilecekleri önceden görmüş ve ölmeden önce karısına ısrarla, ölümü halinde cenaze töreni yapmamasını öğütlemişti. Cenaze töreni yapılmadığı için, ne ölüler ülkesinde ne de yaşayanların yanında olabilmiş ve durumundan yakınarak yeryüzüne çıkıp, eşinden intikam alması gerektiği konusunda tanrıları ikna etmişti. Yeryüzüne çıkınca sözünde durmayarak tanrıları yine kandırmıştı.</p>\r\n<p> </p>\r\n<p>Kaynakça<br /><span style=\"font-size: 10pt;\">Odysseia, Homeros</span></p>', NULL, '2021-08-15 20:17:42', '2021-08-19 22:47:30'),
(12, 1, 1, 6, 4, 'İsmaros’un şarabı Odysseus\'a hayat verdi', 'ismarosun-sarabi-odysseusa-hayat-verdi', 'Troya Savaşı dönüşünde zor anlar yaşayan Odysseus, İsmaros’un şarabı sayesinde hayatta kalmayı başardı.', 'ismarosun-sarabi-hayat-verdi.jpg', NULL, 100, 0, 10, 1, '<p>Troya Savaşı dönüşünde zor anlar yaşayan Odysseus, İsmaros’un şarabı sayesinde hayatta kalmayı başardı.</p>\r\n<p>Askeri kaynaklardan alınan bilgiye göre, Troya seferinden dönen Akha ordusu binbir zorluklar içinde. <br /><br />Onlardan biri de “kurnazlığı” ile tanınan Odysseus. Bir filo halinde dönüş yolculuğuna başlayan Akha ordusu, çıkan fırtına ile dağıldı. Odysseus ve oniki gemisi filodan ayrı kalır ve yolları Trakya’da Kikonların ülkesine düşer. İsmaros’u alan Odysseus ve askerleri tüm halkı öldürür ancak sadece Tanrı Apollon’un rahibi Maron’un hayatını bağışlarlar. Rahip Maron da hediye olarak Odysseus’a İsmaros şarabı verdi.<br /><br />İthake yoluna koyulan Odysseus’un günlerce deniz yolculuğundan sonra bir adaya çıktığı söyleniyor. Bu ada tepegözlerin adasıdır. Adada bir mağaraya sığınan Odysseus ve askerleri gördükleri karşısında çok şaşırlar. Mağara zengin bir mandıradır. Akşam olduğunda ise mağaranın sahibi olan ve Tanrı Poseidon’un oğlu Polyphemos döner. Onları dostça karşılamayan Polyphemos, tümünü esir alır, birkaçını yedikten sonra diğerlerini de sabah kahvaltısı için ayırır. Odysseus dostça davranması için Polyphemos’a yalvarır ama..<br /><br />\"<em>hiç karşılık vermedi bu katı yürek,<br />ellerini açıp atıldı arkadaşlarımın üzerine,<br />yakaladı ikisini, çarptı kafalarını yere enikler gibi,<br />ossaat beyinleri fışkırdı, ıslattı dört bir yanı,<br />ayırdı onları parça parça, hazırladı yemeğini,<br />dağda büyümüş bir aslan gibi, hepsini yedi, bitirdi,<br />ne bağırsak kodu, ne et kodu, ne de ilikli kemik. </em>\"<br /><br />Odysseus, Polyphemos’un yüreğini yumuşatamayınca kurtuluş için çareler arar. O sırada aklına Maron’un verdiği şarap gelir ve onu Polyphemos’a ikram eder ve onunla sohbet etmeye çalışır. Bu sırada Polyphemos, Odysseus’a adını sorduğunda, “Hiçkimse” yanıtını alır. Tepegöz şarapla sarhoş olduğunda Odysseus, askerlerinin da yardımı ile büyük bir ağacın ucunu ateşte kızdırdıktan sonra Polyphemos’un gözüne sokarak onu kör eder.<br /><br /><em>Cızırdayıp tütüyordu gözkapakları ve kirpikleri<br />köklerine dek çatır çatır yanan gözbebeğinin içinde…<br />canavar gibi uludu, yankılandı koca kayalar,<br />girecek delik aradık korkudan hepimiz.<br />Çekti çıkardı gözünden kana bulanmış kazığı,<br />çıldırmış elleriyle fırlattı, attı uzağa,<br />başladı haykıra haykıra komşusu Tepegöz’ü çağırmaya.</em><br /><br />Polyphemos’un komşuları çığlıkları duyar duymaz yardıma koşarlar ve bunu kimin yaptığını sorarlar. Adını “Hiçkimse” olarak bildiği için Polyphemos, “hiçkimse” diye yanıt verdiği için yardım da alamaz. Sabah olduğunda, Odysseus tüm askerlerinden koyunların altına saklanmalarını ve onlarla birlikte mağaranın ağzına doğru yürümelerini ister.. Böylelikle Odysseus ve askerleri Polyphemos’tan kurtulurlar.</p>\r\n<p> </p>\r\n<p>Kaynakça<br /><span style=\"font-size: 10pt; font-family: helvetica, arial, sans-serif;\">Odysseia, Homeros</span></p>', NULL, '2021-08-15 20:21:25', '2021-08-19 22:57:54'),
(13, 1, 8, 8, 7, 'Eski Yunan Vazo Resimciliği', 'eski-yunan-vazo-resimciligi', NULL, NULL, NULL, 100, 0, 0, 1, '<p>Herseyden önce Yunan vazo resimciliği bağımsız bir sanat dalı olmaktan çok bugün bir belge niteliği taşımaktadır. Yapılış yöntemi ve renk dizgesi bakımından bugün anladığımız anlamda bir resim sanatından ayrılsa da vazo resimciliği de kendi içinde bir gelişim göstermiştir.</p>\r\n<p>Gündelik kullanımda önemli bir yer tutan pişmiş toprak ürünlerinin süslemeciliği olarak başladığı serüvenine, insan ve hayvan figürlerini de katarak devam etmiş, kültürel ve toplumsal gelişmelere bağlı olarak iki boyutluluktan üç boyutluluğa doğru yönelim göstermiştir. Anlatım tekniklerini zorlamasıyla, mekanda derinlik arayışıyla her sanat dalında olduğu gibi kendine özgü bir anlatım dili oluşturma çabası içine girmiştir. </p>\r\n<p>Ancak her zaman olduğu gibi \"yeni olan\"ın benimsenmesi zor olmuş ve yerleşmesi zaman almıştır. İ.Ö.550 dolaylarında kendini göstermeye başlayan bu derinlik kavramı, İ.Ö.5. yüzyılın ilk çeyreğinde hayli önem kazanmış, İ.Ö.4. yüzyıl başlarında ise tam anlamıyla çözümlenebilmiştir.</p>\r\n<p>Teknik anlamdaki bu gelişimlerin yanı sıra konuların seçimi ve betimlenmesi de zamana göre değişiklik göstermiştir. Önceleri, ağırlıkta cenaze törenleri olan konular, yerini mitolojik öykülere, gündelik olaylara ve özellikle de Güney İtalya vazolarında olmak üzere tiyatro eserlerinin resimlenmesine bırakmıştır. Betimlemelerde tek figürden, daha karmaşık kompozisyonlara ve öyküsel anlatımlara yönelmişlerdir. </p>\r\n<p>Peki bu insanlar kimlerdi? Sanatçı olarak kabul görürler miydi ya da kendilerini sanatçı olarak tanımlarlar mıydı? Elbette ki bu ressamların, kentin aydın çevrelerinden sayıldıklarını düşünmek fazlaca iyimser bir yaklaşım olacaktır. Eski Yunanca\'da bugün anladığımız anlamda sanat/sanatçı kavramı bulunmamaktadır. \"Yaratmak\" fiilinden yaratıcı anlamında ozan sözcüğü türetilmiştir ve dolayısıyla bugün anladığımıza yakın anlamda sanat/sanatçı düşüncesi, edebiyat ve onun türlerini içermektedir. Yazınsal eserler veren sanatçıların da hemen hemen tamamı kentin aydın ve ekonomik sorunlarını çözmüş varsıl çevrelerdendir. Oysa vazo resimciliği bir sanayi koludur, ressamları da heykelciler gibi, karınlarını doyurabilmek için çalışmak, satmak için üretmek zorundaydılar. Atölyelerde toz toprak içinde sıradan işçiler gibi çalışmaktaydılar. Ürünleri, insanların düşünsel ve entellektüel dünyalarına seslenmekten çok, günlük kullanımda ya da mekansal süslemecilikte kullanılırdı. </p>\r\n<p>Ancak ne var ki atölyelerinde sessiz sedasız çalışan bu sanatçılar, en yeni bulguları eserlerine uygulamışlar ve resimsel anlatım dilini sorgulayarak geliştirmişler, özgün eserler vermişlerdir. Bu eserleriyle de Euthymides\'in vazo üzerindeki bir yazıtında olduğu gibi gurur duymuşlardır.</p>\r\n<p>Bu çalışmanın konusu olan tiyatroya ilişkin vazolara geçmeden önce, kısaca da olsa vazo resimciliğindeki gelişmelerden söz etmekte yarar vardır.</p>\r\n<p>İ.Ö. 10. ve 9. yüzyıllarda kıvrımlı bezemeler, bitkiler ve deniz canlıların betimlemeleri geometrik bezemelere dönüşmüştür. Olgun geometrik dönem de denilen 9. ve 8. yüzyıllarda insan ve hayvan figürlerinin de kullanılmaya başlanmasıyla gösterişli bir yoğunluk elde edilmiştir. Ancak bu insan ve hayvan figürleri doğallıktan uzaktır. Figürler önden ve yandan görünümlerin birleştirilmesiyle oluşturulmuştur. Betimleme anlayışı henüz iki boyutludur ve figürler gölge görüntüler halindedir. Yer yer çevre çizgilere de yer verilmiştir.</p>\r\n<p>Dönemin en göze çarpan vazo şekli, gömüt anıtı olarak da kullanılan ve yüksekliği bir metreyi aşan amphoralardır. En çok sevilen konu ise ölüye ağıttır. Bugün Atina Ulusal Müze\'de korunan bir amphora dönemin özelliklerini yansıtır. Üst üste sıralanmış şerit bezemeler arasında bir cenaze töreni betimi de yer almaktadır. Ölen kişi yüksek bir yerde yatar, çevresinde ise yas tutanlar bulunur. </p>\r\n<p>Kimi vazolarda cenaze töreninin bir parçası olan araba yarışlarına da yer verilir. Cenaze konularının yanı sıra savaş gemileri ile batan gemilere de sıklıkla yer verilmiştir. </p>\r\n<p>Ulaşım olanaklarının gelişmesi diğer ülkelerle olan ilişkileri de artırmış, bu durumun getirdiği kültürel alışveriş vazo üretimini de etkilemiş ve doğu bezemelerin kullanılmasına da yol açmıştır. Farklı özellikler gösteren yöresel biçemler oluşmuştur. Ancak Attika, daha öne çıktığından Korinth ve diğer yapım yerleri ya zamanla silinmiş ya da yöresel atölyeler olarak varlıklarını sürdürmüştür. </p>\r\n<p>Attika vazoları \"siyah figür\" den önce zamandizinsel ve biçem olarak iki gruba ayrılabilir; i.Ö. 720-650 arası dönemi kapsayan İda biçemi ile İ.Ö. 650-600 arası dönemi kapsayan Daidalos biçemi. İda biçeminde, geometrik biçemden yavaş yavaş uzaklaşan bir canlılık göze çarpmaktadır. Daidalos biçeminde ise insan ve hayvan figürlerinde doğallığa doğru bir yönelim görülür. Bu dönem Yunan ana karasında anıtsal heykellerin de ilk kez görülmeye başlandığı dönemdir. </p>\r\n<p><strong>Siyah Figür</strong></p>\r\n<p>Dönem sonuna doğru betimlemede yeni gelişmeler oluşur ve daha sonraki dönemlerde de varlığını sürdürecek olan siyah figür tekniği kullanılmaya başlanır. Bu yöntemde gölge görüntü ve çevre çizgileri bir arada kullanılmazlar, figürler tamamen gölge görüntü ile verilir, ayrıntılar ise kazıma yoluyla yapılmış iç çizgilerle sağlanmaktadır. Betimlemede İ.Ö. 6. yüzyılın ilk çeyreğinde ise mitolojik konular ve günlük yaşamı konu alan anlatıcı biçem iyice yerleşir.</p>\r\n<p>Daha önceki dönemlerde de bu yönteme ilişkin örnekler var olsa da başlangıç dönemine örnek olarak Herakles-Nessos ve Sfenksli amphoraları yapmış olan Nessos Ressamı gösterilebilir.</p>\r\n<p>Bu dönem ressamları arasında Gorgon Ressamı, Sophilos, Lydos, Amasis Ressamı gibi yetkin ressamlar yer alsa da en çok dikkat çeken iki ressamdan söz edebiliriz. İlki Kleitias\'tır. Çömlekçi Ergotimos ile birlikte yetkin eserler vermiştir. En önemli olanı Floransa\'da korunan Françoise vazosudur. Betimlemeler üst üste dizilmiş altı şeritte yer alır ve konuların sayısı iki yüzün üstünderdir. Patroklos\'un cenaze töreni, Peleus ile Thetis\'in düğününe gelen tanrılar, Akhilleus\'un Troilos\'u öldürmesi gibi mitolojik konular yer alır.</p>\r\n<p>Diğer bir ressam da aynı zamanda çömlekçi de olan Eksekias\'tır. En dikkate değer eserleri arasında, iç yüzünde Dionysos\'u Naksos\'a giderken betimleyen bir kyliks ve Aias ile Akhilleus\'u dama oynarken betimleyen bir Panatheneia Amphorası sayılabilir. Vatikan müzelerinde bulunan Aias ile Akhilleus betiminin önemi, figürlerin, hala eski yöntemler kullanılıyor olmakla birlikte, karşı karşıya oturmuş iki insanın gerçekte nasıl göründüklerinin düşlenmiş olmasıdır.</p>\r\n<p><strong>Kırmızı Figür</strong></p>\r\n<p>Kırmızı figür yönteminde figürler gölge görüntüler olarak verilmez. Zemin siyaha boyanır, figürler toprak renginde bırakılır, ayrıntılar ise yine siyah boya ile fırça hareketleriyle oluşturulur. Özellikle saçların çevre çizgileri olmak üzere yer yer kazıma tekniği de kullanılmaktadır.</p>\r\n<p>Bu yöntem tiran Peisistratos yönetiminin son dönemlerinde kullanılmaya başlanır. Peisistratos döneminde Atina yaşamında kimi değişiklikler görülür. Dionysos şenlikleri kente taşınmış, Kent Dionysia Festivalleri düzenlenmeye başlanmıştır. Ticaretin gelişmesiyle sanayi kolu daha fazla önem kazanmaya başlamıştır. </p>\r\n<p>Kleisthenes devrimleriyle Atina\'nın demokratik devlet yönetimi hayli gelişim göstermiştir. Demokrasinin en yüksek düzeyine ulaştığı bu anda, sanatsal ve düşünsel alanda da Eski Yunan, klasizminin doruğuna ulaşmıştır. Tragedya ve komedya\'nın doğuşu, yazınsal ve görsel sanatlardaki gelişmeler adeta insan zekasının, insan yaratıcılığının sınırsızlığını kanıtlar gibidir. </p>\r\n<p>Pers istilasıyla yakılıp yıkılan Atina, Perikles\'le birlikte yeniden doğmuş, Atina Parthenon\'u eşi görülmemiş bir görkemlilikle yeniden yapılmıştır. Eserleri olmasa da adı çağları aşan Fidias da bu yapımda önemli görevler üstlenmiştir.</p>\r\n<p>Yunan vazo resimciliği de bu dönemde kendi klasizmine ulaşmıştır. Euphronios, Euthymides, Douris, Kleophrades, Brygos Ressamı ve daha niceleri yetkin eserler vermişlerdir. Phintias, Akhilleus Ressamı, Phiale, Grup R gibi ressamlar beyaz zeminli vazolar üzerinde çok yeni teknikler uygulamışlardır. Grup R, beyaz zeminli bir lekytos üzerindeki \"mezar başında bir genç\" betimiyle psikolojik ifadeye yer vermiş, Douris, Eos-Memnon betimiyle antik çağın \'pieta\'sını yaparak, Giotto, Boticelli, Tiziano, Michalengelo gibi ressamların pietalarına öncülük etmiştir.</p>\r\n<p>Euthymides, derinlik kavramıyla ilgilenmiş, Aias-Akhilleus betimiyle sadece gördüğünü temel almaya başlayan Eksekias\'ın parçaladığı o eski kuralı n altını daha da deşerek, \"savaşa hazırlanan genç\" betimiyle bir ayağın karşıdan görünümünü, \"şölenciler\" betimiyle de dans eden bir insanın bedeninin, kısaltımlar aracılığıyla, doğal ifadesini vermeye çalışmıştır. </p>\r\n<p>\"<em>... Sanatçılar İ.Ö.500 yılından az önce, tarihte ilk kez, karşıdan görünen bir ayağın resmini çizme cesaretini gösterdiklerinde, sanat tarihinde korkunç bir dönüşüm oldu... bu, sanatçının artık resimdeki her şeyi en iyi ayırdına varılan biçimiyle vermeyi amaçlamadığını, objeyi gözlemlediği açıdaki biçimini hesaba kattığı anlamına geliyor... Yunan sanatının büyük devrimi olan, doğal biçimlerin ve perspektif kısaltımının bulgulanması, insanlık tarihinin kuşkusuz en şaşırtıcı bir döneminde gerçekleşti. Bu çağ, Yunan kentlerinde yaşayan insanların tanrılarla ilgili eski gelenek ve efsaneleri sorguladığı ve cisimlerin doğası üzerinde korkusuzca durulduğu bir çağdır. Bu çağ, bugünkü anlamda bilimin, felsefenin ve Dionysos onuruna yapılan bayramlardan tiyatronun doğduğu çağdır...</em>\"</p>\r\n<p>Yine Gombrich\'in de dile getirdiği gibi kalıplaşmış çizimler yerine ressamlar gözlerini kullanmışlar, tüm yüzyıllar içinde geliştirilmiş insan biçiminin örnek imgesini yıkarak sanatta bir devrim yapmışlardır. Artık olan olmuştur, Yunan resim sanatı dönüşü olmayan bir yola girmiştir. </p>\r\n<p> </p>\r\n<p><strong>Kaynakça;</strong></p>\r\n<p><span style=\"font-size: 10pt;\"><span style=\"font-family: Arial, sans-serif;\">A History of Greek Vase Painting, E.P. Arias,<br /></span><span style=\"font-family: Arial, sans-serif;\">Türkiye’de Sanat Dergisi, 2001, Sayı;50<br /></span><span style=\"font-family: Arial, sans-serif;\">E.H. Gombrich, Sanatın Öyküsü, Remzi Kitabevi</span></span></p>', NULL, '2021-08-16 00:55:49', '2021-08-18 21:00:11'),
(14, 1, 3, 3, 4, 'Trygaios\'un Hikayesi', 'trygaiosun-hikayesi', NULL, NULL, NULL, 100, 0, 0, 1, '<p>Agora sokaklarında anlatılır her zaman, çiftçi Trygaios\'un hikayesi. Aristophanes de Trygaios\'u temel karakteri yaptığı \"Barış\" komedyasını yazmaya koyulmuş. Bitirdiğinde bir de Aristophanes\'in gözünden göreceğiz Trygaios\'u.<br>\r\n  <br>\r\n  Trygaios, şu bir türlü bitmeyen Peloponnessos Savaşları\'ndan öylesine bunalmış ki olur olmadık yöntemlerle gökyüzüne çıkmayı, tanrıları bulmayı ve onlardan hesap sormayı kurmuş kafasında.. Hatta kurmakla da kalmamış yeltenmiş de…</p>\r\n<p>Türlü yöntemler denese de en akılcı yolu bulmuş sonunda… Dün, bugün hatta belki yarın da \"barış\"tan söz etmek, barışı istemek vb kavramlarla yaşamak ya da düşünmek boktan işlerle uğraşmak olarak sayılacağını varsayabiliriz.. Trygaios da bunu görmüş olmalı ki gökyüzüne tanrılara savaşların hesabını sormak için çıkarken, Pegasus\'u kullanmak yerine kendine bir bok böceği bulmuş ve bu yolculuğa onunla çıkmış. Ne de olsa boktan bir iştir yaptığı…</p>\r\n<p>Her zaman ulvi, masalsı gerekçeleri vardır savaşların, yoksa ekonomi politik vs. kimin umurunda… Belki de ilk dünya savaşı denebilecek bir savaş olan Troya Savaşı\'nın dibi de bir hatun meselesi değil mi! Helene, Menelaos\'u bırakıp Paris\'le elele Troya\'ya kaçınca, haber dünya gündemine bomba gibi düştü… Bütün Yunan elleri toplanmışlar, \"gün namus günüdür\" deyip yollara düşmüşler, denizler aşmışlar. Ta Habeş\'ten bile gelenler olmuş Paris ile Helene\'yi savunmak için. Hep böyle anlatırlardı…</p>\r\n<p>Yunan şehirleri peşpeşe gelen Pers saldırılarını öteleyip başlarını kaşıyacak vakit bulabildiklerinde, savaş alışkanlık yapmış olmalı ki birbirleriyle didişmeye başlamışlar. Bugünün Yunan dünyası da çok çocuklu bir aile gibi. Baba da yok başta tabii şöyle evi bir çatı altında tutacak, çekip çevirecek.. Hani çok mu gerekli bilmem ama öyle işte… İki büyük abi başladılar bilek güreşine.. Ben daha güçlüyüm diye.. Bu iki abinin adı da Atina ve Sparta. Bilek güreşinin adı da Peloponnessos. Bu didişme başladığında doğan bir çocuk neredeyse ömrünü bitirecek ama didişme bir türlü bitmedi gitti.. Sıkılmış tabii Trygaios. Ne yapsam ne etsem de bu savaşı bitirsem diye başlamış düşünmeye.. Atinalı ve Spartalıları bulup tek tek konuşsa, savaşmamaya ikna etse uzun iş. E tabii Lysistrata\'da olduğu gibi destekçileri de yok, ne yapsın!. Kısa yoldan tepeden bir çözüm düşmüş aklına. \"Gideyim gökyüzüne de tanrılardan hesabını sorayım savaşın\" demiş.. Türlü yöntemler denemiş yanlarına gidebilmek için. Bakmış olmayacak, boktan işler bunlar demiş ve aklına bok böceği gelmiş… Gitsem gitsem onunla giderim demiş.. Birlikte düşmüşler havaya, gitmiş bulmuş Olympos\'un tanrılarını. Öğrenmiş ki, Savaş, Barış\'ı gökyüzünde bir kuyuya hapsetmiş, başına da bir nöbetçi dikmiş.. Uğraşmış didinmiş Barış\'ı oradan kurtarmış ve yeryüzüne indirmeyi başarmış…</p>\r\n<p>Trygaios, Barış\'ı yeryüzüne indirmiş indirmesine de, yeryüzüne barış gelmiş mi? Yanıtı belli.. Aslında yanıtı çok çok belli.. Azbuçuk Latince\'ye bulaşmış olanlar bilir… \"Belli\", savaş sözcüğünün Latince karşılığı olan \"bellum\" sözcüğünün bir dünya çekiminden biridir…</p>\r\n<p>Trygaios\'un hikayesinin geri kalanını da gelecekte bir gün bir Fransızdan öğreneceğiz.. Aristophanes\'in Barış komedyasının uyarlamasına eklediği bir eklenti ile anlatacak… Trygaios tarafından kurtarılan Barış yeryüzüne indirildiğinde ise, politikacılar, silah tüccarları ve bilimum tüm insanlar tarafından görmediği eziyet kalmamış… Her daim böyle sürüp gidecekmiş. Neyse ki biz yaşamayacağız o zamanlar.</p>\r\n<p>Aisopos\'un masalını bitirirken kullandığı bir ifade vardırdır ya hani; \"… ve bu masal der ki…\" der ve ana fikri baba fikri ne varsa döker ortaya… Adet yerini bulsun ve Aisopos\'a biz de uyalım diyelim ve bu yazı da der ki diye bitirelim.</p>\r\n<p>Bu yazı der ki barış ile uğraşmak, komik ve boktan bir iştir…</p>\r\n<p>Yoksa bir komedyaya konu olmazdı ve Barış\'ı getirmek için Trygaios ile bir bok böceği yollara düşmezdi…</p>\r\n<p>E bu masal da böyle sürer gidermiş…</p>', NULL, '2021-08-16 23:03:06', '2021-08-16 23:03:06'),
(15, 2, 1, 7, 1, 'Kleisthenes reformları doludizgin', 'kleisthenes-reformlari-doludizgin', 'Drakon ile toprağa diktiğimiz taşları Solon ile söktük, Kleisthenes ile baştan sona boyuyoruz.', 'kleisthenes-reformlari-doludizgin.jpg', NULL, 100, 1, 10, 1, '<p>Drakon, Solon derken Atina bütünüyle değişiyor. Drakon yasalarıyla birlikte gücünü baskı ile korumaya çalışan aristokrasi, Solon ile birlikte kimi ödünler vermişti, Kleisthenes ile değişen toplumsal yapı da şekillenmiş oldu. </p>\r\n<p>Yasa karşısında eşitlik (isonomia) ilkesi ile geniş çevrelerin desteğini almayı başaran Kleisthenes\'in reformları ile birlikte, bireyin toplumsal konumu artık soya bağlı olmak yerine yaşadığı bölgeye göre şekillenecek. Bundan böyle mesogeia (kırsal), asty (kent), paralia (sahil) olmak üzere Attika 3 bölgeye ve 10 phyleye ayrılıyor. Herbir phyle de kendi içinde demos\'lara ayrılıyor ve bu demoslar kentin üç bölgesinden de olabileceği için her bir phylenin bu üç bölgede de demosları bulunuyor. Her bir demosta da \"demarkhos\" denilen bir yönetici ile yerel yönetim tarzı benimseniyor. </p>\r\n<p>Eski haliyle 400 kişiden oluşan ve Dörtyüzler meclisi olarak anılan meclis de yeni durumdan etkileniyor. Her bir phyleden gelecek olan 50 temsilci ile meclis 500 kişiye çıkarılarak adı da Beşyüzler meclisi olarak değişiyor. Böylelikle, Attika en küçük birim olarak demoslara ayrılarak yerel yönetim tarzı benimsenirken, phylelerin meclise eş sayıda temsilci göndermesiyle de meclisin yetkisi ve gücü bölgeler arasında paylaşılmış oluyor. Beşyüzler meclisinin yönetimini ise her bir phyle 36 günlük dönemler halinde üstleniyordu. Bu uygulama ile birlikte takvim sisteminde de bir değişikliğe gidilerek bir yıl 36 günlük dönemler halinde aylarla tanımlanacak.</p>\r\n<p>Kleisthenes reformları bununla da kalmıyor. Bundan böyle ostrakon adı verilen çömlek parçalarına isim yazılarak gerçekleşecek olan ostrakismos ile sürgün etme fikri de benimseniyor. Böylelikle altı binden fazla ostrakon üzerinde ismi geçen Atinalı bir yurttaş 10 yıllığına kentten sürgün edilebilecek. Kleisthenes yaptığı açıklamada, tiranlardan çok çeken Atina\'nın bundan böyle tiranlıkla yönetilemeyeceğini, tiranlık amaçları olanların hızlı bir biçimde ostrakismos ile sürgün edilerek Atina\'nın tiranlardan ve tiranlıktan korunacağını söyledi.</p>\r\n<p>Kleisthenes yanlısı kimi Atinalı çevreler bu yasayı olası bir tiranlığın önüne geçilebilmesi amacıyla olumlu bulurken, Kleisthenes\'in politik rakibi İsagoras yanlısı kimi Atinalı çevreler ise bunun, halk Kleisthenes\'in kendi yönetimini güvenceye alması ve rakiplerini politik oyunlarla bertaraf etme aracı olarak değerlendirerek karşı çıkıyor.</p>\r\n<p>Drakon yasaları ile borca dayalı kölelik yaşanırken, Solon ile birlikte kaldırılmış ve \"ortalama\" anlayışı ile kimi reformlara gidilmişti. Kleisthenes reformlarıyla baştan sonra yeniden değişmiş oldu. Ancak kimi Atinalı yurttaşlar ise, bu reformları, kent içi ve kent dışı ticaretin artması ile oluşan yeni toplumsal ve politik grupların aristokrasi ile bir güç savaşı olarak görmesinden dolayı kayıtsızlıkla karşılıyor.</p>', NULL, '2021-08-17 20:06:53', '2021-08-19 23:12:53'),
(16, 2, 1, 6, 3, 'Akhilleus dostuna vefa borcunu ödedi', 'akhilleus-dostuna-vefa-borcunu-odedi', 'Troya Savaşı’nda yakın dostunu kaybeden Akhilleus, dostu Patroklos için cenaze töreni yaptı.', 'akhilleus-vefa-borcunu-odedi.jpg', NULL, 100, 0, 10, 1, '<p>Troya Savaşı\'nda yakın dostunu kaybeden Akhilleus, dostu Patroklos için cenaze töreni yaptı.</p>\r\n<p>Akhilleus aralarında çıkan anlaşmazlıktan dolayı Agamemnon\'un ordusundan ayrılıp savaş dışında kaldı. Bu durum ise Troyalıların işine yaramış ve Akhaları sahile kadar geri püskürtmüştü. Akhaların yenilgisine üzülen Patroklos, savaş dışında kalmaya kararlı olan dostu Akhilleus\'un silahları ve zırhı ile savaşa girdi. Hektor ile karşı karşıya kalan Patroklos hayatını kaybetti.</p>\r\n<p>Patroklos\'un öldüğünü Akhilleus\'a, Nestor\'un oğlu Antilokhos bildirir.</p>\r\n<p>Akhilleus\'u kapkara bir yas bulutu kapladı.<br />İki eliyle aldı ocağın küllerini,<br />döktü başının üstüne, kirletti güzelim yüzünü.<br />Sonra uzandı boylu boyunca tozun, toprağın içine,<br />elleriyle çekip kopardı, kirletti saçlarını.<br />(İl. XVIII, 1)</p>\r\n<p>Patroklos\'un ruhu Akhilleus\'a görünür ve ondan cenaze törenini yapmasını ister, Akhilleus;</p>\r\n<p>Buraya ne geldin, iki gözüm,<br />bütün bunları ne söylersin bana?<br />Bilmiş ol, yapacağım her dediğini,<br />hadi yaklaş bana, sarılalım birbirimize,<br />birancık da olsa ağlayalım doya doya.<br />Böyle dedi, uzattı dost ellerini,<br />ama hiçbir şey tutamadı eliyle,<br />ruh kaçmıştı bir duman gibi<br />yerin altına, ıslık çala çala.<br />(İl. XXIII, 94 vd.)</p>\r\n<p> </p>\r\n<p>Akhilleus annesi Thetis aracılığıyla Tanrı Hephaistos\'un yaptığı silahlarla yeniden savaşa döner ve Patroklos\'u öldüren Hektor\'u öldürür ve ardından da verdiği sözü tutan Akhilleus, dostu Patroklos için büyük bir cenaze töreni ve yarışmalar düzenler.</p>\r\n<p> </p>\r\n<p>Kaynakça<br /><span style=\"font-size: 10pt; font-family: helvetica, arial, sans-serif;\">İlyada, Homeros</span></p>', NULL, '2021-08-17 20:30:26', '2021-08-19 23:19:39'),
(17, 2, 7, 0, 4, 'Bütün tanrılar şölende buluşuyor', 'butun-tanrilar-solende-bulusuyor', 'Olympos\'ta büyük şölen var', NULL, NULL, 100, 0, 0, 1, '<p>Elli Nereus kızlarından Thetis, ölümlü Peleus ile evleniyor. Zeus ve Poseidon\'un da aşık olduğu Thetis, tüm Olympos tanrıların isteği ile bir ölümlü ile evlenmek zorunda kaldı. Kayalıklarda zincire vurulmuş Prometheus\'tan alınan bilgiye göre, Thetis\'in bir Olymposludan olacak çocuğu, babasından çok daha güçlü olacak ve onu devireceği söyleniyor. Bunun üzerine Zeus tahtını koruyabilmek için apar topar Thetis\'i ölümlü Peleus ile evlendirmeye ve böylece de Olympos\'tan uzak tutmaya karar verdi.</p>', NULL, '2021-08-17 20:43:04', '2021-08-17 20:43:04'),
(18, 2, 7, 0, 4, 'Agora\'da sokaklar yine şenlenecek', 'agorada-sokaklar-yine-senlenecek', 'Pyanepsion ayında Agora cıvıl cıvıl olacak. Çevre kentlerden gelen moda tasarımcıları çalışmalarını sergileyecek.', NULL, NULL, 100, 0, 0, 1, '<p>Pyanepsion ayında Agora cıvıl cıvıl olacak. Çevre kentlerden gelen moda tasarımcıları çalışmalarını sergileyecek.</p>\r\n<p>Her yıl sonbahar ayında yapılan Agora Sokak Defileleri bu yıl da Pyanepsion ayı yedinci histamenou\'da tekrarlanacak. Her yıl Atinalıların büyük ilgisini çeken sokak defilelerinin bu yıl da aynı ilgiyi görmesi bekleniyor. Yöresel kıyafetlerin yanısıra moda tasarımcılarının çalışmalarının da yer alacağı defile, Agora\'da Panathenaia Yolu üzerinde gerçekleşecek, Akropolis\'e kadar olan yolda, farklı gruplarda defileler gerçekleştirilecek. Korinthos, Sparta ve Anadolu\'da yer alan kimi kentlerden de izlemek için insanların gelmesi bekleniyor. Bu sonbaharda Agora sokakları yine şenlenecek.</p>', NULL, '2021-08-17 20:45:36', '2021-08-17 20:45:36'),
(19, 3, 7, 0, 4, 'Agathon\'un şöleni', 'agathonun-soleni', NULL, NULL, NULL, 100, 0, 0, 1, '<p>Kent Dionysia\'da yer alan tragedya yarışmalarında birincilik kazanan Agathon, evinde şölen vererek kutladı. Agathon\'un şölenine, Phaidros, Pausanias, Eryksimakhos, Aristophanes, Alkibiades ve Sokrates davetliydi. Şölenin konusu sevgi idi ve konuşmacılar sevgi konusundaki düşüncelerini paylaşarak tartıştılar. Sokrates\'in konuşmaları ise herkesi mutlu etti. Havanın aydınlanmaya başlaması ve içilen şarabın da etkisiyle konuşmacıların uykuya dalmasına karşın, Agathon, Sokrates ve Aristophanes konuşmalarını sürdürdü. Sokrates, bir tragedya ozanının aynı zamanda komedya da yazabilmesi gerektiğini, bir komedya ozanı olan Aristophanes\'e ve bir tragedya ozanı olan Agathon\'a anlatmasıyla şölen son buldu.</p>', NULL, '2021-08-19 23:35:22', '2021-08-19 23:35:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `post_kinds`
--

CREATE TABLE `post_kinds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `post_kinds`
--

INSERT INTO `post_kinds` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Metin Haber', 'metin-haber', NULL, NULL),
(2, 'Video Haber', 'video-haber', NULL, NULL),
(3, 'Köşe Yazısı', 'kose-yazisi', NULL, NULL),
(4, 'Yazı Dizisi', 'yazi-dizisi', NULL, NULL),
(5, 'Not', 'not', NULL, NULL),
(6, 'Gelecek Zaman Olur ki', 'gelecek-zaman-olur-ki', NULL, NULL),
(7, 'Kısa Kısa', 'kisa-kisa', NULL, NULL),
(8, 'Sanat', 'sanat', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `email`, `motto`, `facebook`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'editor@lacropole.net', 'Yönetimle birlikte... Yönetimden yana... Baştan sona yandaş medya....', 'lacropole.net', 'lacropolenet', 'lacropolenet', NULL, NULL, '2021-08-17 19:54:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graecus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gsm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `auth` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `url`, `graecus`, `email`, `web`, `facebook`, `twitter`, `gsm`, `image`, `password`, `status`, `auth`, `created_at`, `updated_at`) VALUES
(1, 'Cengiz', 'Yavuz', 'CengizYavuz', 'cengizyavuz', '', 'cengiz@yaptiboyadi.com', '', '', '', '', '', '$2y$10$.tReXCmwzlsQGuegBg03YueD9pwJO4rR8KbC7KgEyR7tadmMeBVf6', 0, 0, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `painters`
--
ALTER TABLE `painters`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `periods_issue_unique` (`issue`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_issue_foreign` (`issue`);

--
-- Tablo için indeksler `post_kinds`
--
ALTER TABLE `post_kinds`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `painters`
--
ALTER TABLE `painters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `post_kinds`
--
ALTER TABLE `post_kinds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_issue_foreign` FOREIGN KEY (`issue`) REFERENCES `periods` (`issue`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
