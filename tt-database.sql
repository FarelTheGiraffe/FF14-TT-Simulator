-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 02 Paź 2018, 03:02
-- Wersja serwera: 5.6.41-84.1
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `farel_tt`
--
CREATE DATABASE IF NOT EXISTS `farel_tt` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `farel_tt`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_admins`
--

CREATE TABLE `tt_admins` (
  `user_id` int(1) NOT NULL,
  `nick` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(2) NOT NULL DEFAULT '0',
  `user_pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_admins`
--

INSERT INTO `tt_admins` (`user_id`, `nick`, `user_status`, `user_pass`, `user_email`) VALUES
(1, 'FarelTheGecko', 2, 'Polska13', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_attribute`
--

CREATE TABLE `tt_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_attribute`
--

INSERT INTO `tt_attribute` (`id`, `name`) VALUES
(1, 'Beastman'),
(2, 'Garlean'),
(3, 'Scion'),
(4, 'Primal');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_cards`
--

CREATE TABLE `tt_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `p3` int(11) DEFAULT NULL,
  `p4` int(11) DEFAULT NULL,
  `patch` float DEFAULT NULL,
  `ord` int(2) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_cards`
--

INSERT INTO `tt_cards` (`id`, `icon`, `rarity`, `type`, `name`, `p1`, `p2`, `p3`, `p4`, `patch`, `ord`, `deleted`) VALUES
(1, NULL, 2, 0, 'Adamantoise', 5, 7, 4, 4, 3.5, NULL, 0),
(2, NULL, 1, 0, 'Ahriman', 5, 5, 2, 2, 2.51, NULL, 0),
(3, NULL, 3, 4, 'Alexander Prime', 7, 3, 2, 8, 3.4, NULL, 0),
(4, NULL, 4, 0, 'Alphinaud and Alisaie', 9, 3, 3, 9, 2.51, NULL, 0),
(5, NULL, 1, 1, 'Amalj\'aa', 1, 4, 7, 1, 2.51, NULL, 0),
(6, NULL, 2, 1, 'Ananta', 3, 7, 5, 2, 4, NULL, 0),
(7, NULL, 2, 0, 'Ango', 4, 2, 7, 4, 4.2, NULL, 0),
(8, NULL, 1, 0, 'Apkallu', 3, 4, 4, 1, 3.4, NULL, 0),
(9, NULL, 2, 0, 'Archaeornis', 5, 4, 6, 5, 3.1, NULL, 0),
(10, NULL, 5, 0, 'Archbishop Thordan VII', 7, 1, 10, 9, 3.1, NULL, 0),
(11, NULL, 3, 3, 'Arenvald Lentinus', 8, 4, 8, 2, 4.2, NULL, 0),
(12, NULL, 4, 0, 'Argath Thadalfus', 9, 2, 5, 8, 4.1, NULL, 0),
(13, NULL, 4, 2, 'Armored Weapon', 3, 5, 9, 7, 3.5, NULL, 0),
(14, NULL, 3, 0, 'Artoirel de Fortemps', 4, 7, 3, 7, 3.2, NULL, 0),
(15, NULL, 4, 0, 'Aymeric', 1, 5, 9, 9, 3, NULL, 0),
(16, NULL, 2, 0, 'Baderon Tenfingers', 3, 7, 5, 5, 2.51, NULL, 0),
(17, NULL, 5, 0, 'Bahamut', 9, 5, 9, 6, 2.51, NULL, 0),
(18, NULL, 2, 0, 'Bandersnatch', 6, 6, 3, 4, 3.1, NULL, 0),
(19, NULL, 5, 0, 'Bartz Klauser', 4, 4, 10, 10, 2.51, NULL, 0),
(20, NULL, 3, 0, 'Behemoth', 7, 8, 4, 2, 2.51, NULL, 0),
(21, NULL, 3, 0, 'Belladonna', 3, 7, 3, 7, 3.1, NULL, 0),
(22, NULL, 2, 0, 'Biggs and Wedge', 5, 3, 7, 5, 2.51, NULL, 0),
(23, NULL, 4, 4, 'Bismarck', 1, 9, 7, 8, 3, NULL, 0),
(24, NULL, 2, 0, 'Blue Dragon', 2, 2, 7, 7, 2.51, NULL, 0),
(25, NULL, 1, 0, 'Bomb', 3, 4, 3, 3, 2.51, NULL, 0),
(26, NULL, 3, 0, 'Brachiosaur', 8, 4, 5, 4, 3.2, NULL, 0),
(27, NULL, 3, 0, 'Brendt, Brennan, and Bremondt', 4, 7, 6, 5, 3.4, NULL, 0),
(28, NULL, 4, 0, 'Brute Justice', 7, 7, 7, 7, 3.2, NULL, 0),
(29, NULL, 3, 0, 'Byakko', 7, 1, 7, 7, 4.2, NULL, 0),
(30, NULL, 3, 0, 'Byblos', 8, 4, 1, 7, 3, NULL, 0),
(31, NULL, 3, 0, 'Calcabrina', 6, 6, 6, 3, 3.2, NULL, 0),
(32, NULL, 4, 0, 'Calofisteri', 5, 8, 7, 8, 3.3, NULL, 0),
(33, NULL, 2, 0, 'Carvallain de Gorgagne', 2, 7, 7, 2, 3.3, NULL, 0),
(34, NULL, 5, 0, 'Cecil Harvey', 4, 10, 4, 10, 2.51, NULL, 0),
(35, NULL, 2, 0, 'Chapuli', 7, 2, 2, 6, 4.1, NULL, 0),
(36, NULL, 3, 0, 'Charibert', 7, 8, 4, 3, 3.1, NULL, 0),
(37, NULL, 2, 0, 'Chimera', 7, 7, 2, 2, 2.51, NULL, 0),
(38, NULL, 1, 0, 'Chocobo', 3, 7, 2, 1, 2.51, NULL, 0),
(39, NULL, 4, 0, 'Cid Garlond', 5, 9, 9, 2, 2.51, NULL, 0),
(40, NULL, 3, 0, 'Cirina', 3, 5, 6, 8, 4, NULL, 0),
(41, NULL, 5, 0, 'Cloud Strife', 9, 3, 9, 8, 3.2, NULL, 0),
(42, NULL, 5, 0, 'Cloud of Darkness', 7, 10, 7, 6, 2.51, NULL, 0),
(43, NULL, 1, 0, 'Coblyn', 3, 3, 3, 4, 2.51, NULL, 0),
(44, NULL, 1, 0, 'Coeurl', 2, 5, 2, 5, 2.51, NULL, 0),
(45, NULL, 3, 0, 'Coeurlregina', 5, 5, 5, 8, 3.1, NULL, 0),
(46, NULL, 1, 0, 'Colibri', 6, 1, 4, 1, 3.4, NULL, 0),
(47, NULL, 3, 0, 'Count Edmont de Fortemps', 1, 8, 3, 8, 3, NULL, 0),
(48, NULL, 2, 0, 'Crawler', 7, 7, 3, 2, 3.1, NULL, 0),
(49, NULL, 3, 0, 'Curator', 4, 6, 4, 7, 3.3, NULL, 0),
(50, NULL, 3, 0, 'Darkscale', 2, 8, 4, 7, 3.2, NULL, 0),
(51, NULL, 1, 0, 'Deepeye', 1, 3, 7, 2, 3.1, NULL, 0),
(52, NULL, 2, 1, 'Delivery Moogle', 5, 5, 6, 3, 3.4, NULL, 0),
(53, NULL, 2, 0, 'Demon Wall', 6, 7, 2, 3, 2.51, NULL, 0),
(54, NULL, 2, 0, 'Dhalmel', 6, 5, 3, 5, 3.1, NULL, 0),
(55, NULL, 4, 0, 'Diabolos Hollow', 4, 4, 8, 9, 3.5, NULL, 0),
(56, NULL, 1, 0, 'Dodo', 4, 2, 3, 4, 2.51, NULL, 0),
(57, NULL, 3, 0, 'Echidna', 6, 4, 7, 4, 3.1, NULL, 0),
(58, NULL, 3, 0, 'Emmanellain de Fortemps', 7, 4, 7, 3, 3.2, NULL, 0),
(59, NULL, 3, 0, 'Estinien', 8, 8, 2, 3, 3, NULL, 0),
(60, NULL, 4, 3, 'F\'lhaminn', 9, 7, 3, 7, 3.2, NULL, 0),
(61, NULL, 2, 0, 'Fat Chocobo', 5, 5, 5, 5, 3, NULL, 0),
(62, NULL, 3, 0, 'Fenrir', 7, 3, 6, 4, 3.2, NULL, 0),
(63, NULL, 3, 0, 'Ferdiad', 4, 6, 8, 4, 3.2, NULL, 0),
(64, NULL, 5, 0, 'Firion', 10, 5, 10, 1, 2.51, NULL, 0),
(65, NULL, 3, 0, 'Fordola rem Lupis', 5, 8, 6, 3, 4.1, NULL, 0),
(66, NULL, 2, 1, 'Frixio', 6, 2, 6, 6, 2.51, NULL, 0),
(67, NULL, 1, 0, 'Gaelicat', 4, 1, 1, 7, 3, NULL, 0),
(68, NULL, 5, 2, 'Gaius van Baelsar', 4, 10, 5, 9, 2.51, NULL, 0),
(69, NULL, 3, 4, 'Garuda', 7, 6, 1, 7, 2.51, NULL, 0),
(70, NULL, 3, 0, 'Genbu', 7, 7, 1, 7, 4.2, NULL, 0),
(71, NULL, 2, 0, 'Gerolt', 1, 7, 3, 7, 2.51, NULL, 0),
(72, NULL, 2, 0, 'Gibrillont', 2, 6, 3, 6, 3.3, NULL, 0),
(73, NULL, 4, 0, 'Gigi', 6, 8, 4, 7, 3.5, NULL, 0),
(74, NULL, 3, 0, 'Gilgamesh and Enkidu', 8, 3, 7, 3, 2.51, NULL, 0),
(75, NULL, 2, 1, 'Gnath', 6, 3, 7, 3, 3, NULL, 0),
(76, NULL, 3, 0, 'Godbert Manderville', 6, 6, 5, 6, 2.51, NULL, 0),
(77, NULL, 2, 0, 'Gold Saucer Attendant', 4, 7, 1, 6, 3.5, NULL, 0),
(78, NULL, 1, 0, 'Goobbue', 2, 5, 5, 2, 2.51, 0, 0),
(79, NULL, 3, 4, 'Good King Moggle Mog XII', 7, 6, 7, 1, 2.51, NULL, 0),
(80, NULL, 5, 0, 'Gosetsu', 10, 5, 10, 2, 4.3, NULL, 0),
(81, NULL, 3, 0, 'Griffin', 5, 1, 7, 8, 3, NULL, 0),
(82, NULL, 3, 2, 'Grynewaht', 7, 4, 7, 4, 4, NULL, 0),
(83, NULL, 2, 0, 'Guidance Node', 6, 4, 4, 4, 4.2, NULL, 0),
(84, NULL, 4, 0, 'Hancock', 8, 9, 1, 7, 4.2, NULL, 0),
(85, NULL, 2, 0, 'Hatamoto', 2, 7, 5, 6, 4.35, NULL, 0),
(86, NULL, 3, 0, 'Haurchefant', 7, 1, 5, 8, 3, NULL, 0),
(87, NULL, 4, 3, 'Heavensward Thancred', 8, 1, 7, 9, 3.4, NULL, 0),
(88, NULL, 4, 3, 'Heavensward Y\'shtola', 9, 9, 2, 5, 3.4, NULL, 0),
(89, NULL, 5, 0, 'Hien', 2, 10, 5, 10, 4, NULL, 0),
(90, NULL, 3, 0, 'Hilda', 1, 4, 8, 8, 3, NULL, 0),
(91, NULL, 5, 0, 'Hildibrand and Nashu Mhakaracca', 1, 8, 10, 8, 2.51, NULL, 0),
(92, NULL, 3, 0, 'Hiruko', 4, 7, 5, 7, 4.35, NULL, 0),
(93, NULL, 5, 0, 'Hisui and Kurenai', 10, 2, 7, 9, 4.2, NULL, 0),
(94, NULL, 2, 3, 'Hoary Boulder and Coultenet', 2, 7, 2, 7, 3.2, NULL, 0),
(95, NULL, 2, 0, 'Honoroit', 7, 2, 7, 2, 3.2, NULL, 0),
(96, NULL, 5, 0, 'Hraesvelgr', 7, 7, 10, 6, 3.3, NULL, 0),
(97, NULL, 3, 0, 'Hrodric Poisontongue', 2, 7, 6, 7, 4.1, NULL, 0),
(98, NULL, 3, 4, 'Ifrit', 7, 1, 6, 7, 2.51, NULL, 0),
(99, NULL, 1, 1, 'Ixal', 6, 1, 3, 4, 2.51, NULL, 0),
(100, NULL, 3, 0, 'Julyan Manderville', 6, 6, 5, 7, 3.1, NULL, 0),
(101, NULL, 3, 0, 'Kal Myhk', 1, 8, 4, 8, 3.3, NULL, 0),
(102, NULL, 5, 0, 'Kan-E-Senna', 9, 10, 1, 7, 2.51, NULL, 0),
(103, NULL, 1, 1, 'Kobold', 2, 2, 4, 6, 2.51, NULL, 0),
(104, NULL, 1, 0, 'Koja', 3, 2, 1, 6, 4.2, NULL, 0),
(105, NULL, 2, 1, 'Kojin', 4, 5, 5, 4, 4, NULL, 0),
(106, NULL, 2, 0, 'Kotokaze', 5, 6, 2, 6, 4, NULL, 0),
(107, NULL, 3, 0, 'Kraken', 3, 6, 6, 6, 3.2, NULL, 0),
(108, NULL, 4, 3, 'Krile', 2, 8, 8, 7, 4, NULL, 0),
(109, NULL, 3, 0, 'Kuribu', 8, 3, 2, 7, 3.2, NULL, 0),
(110, NULL, 4, 0, 'Lahabrea', 4, 9, 4, 8, 2.51, NULL, 0),
(111, NULL, 3, 4, 'Lakshmi', 3, 7, 7, 5, 4, NULL, 0),
(112, NULL, 2, 0, 'Laniaitte de Haillenarte', 7, 6, 3, 3, 3.3, NULL, 0),
(113, NULL, 3, 0, 'Lava Scorpion', 3, 8, 5, 5, 3.5, NULL, 0),
(114, NULL, 4, 4, 'Leviathan', 8, 8, 8, 1, 2.51, NULL, 0),
(115, NULL, 5, 0, 'Lightning', 9, 1, 7, 10, 2.51, NULL, 0),
(116, NULL, 2, 0, 'Liquid Flame', 4, 3, 6, 6, 3.4, NULL, 0),
(117, NULL, 2, 2, 'Livia sas Junius', 3, 7, 7, 1, 2.51, NULL, 0),
(118, NULL, 2, 0, 'Lolorito Nanarito', 4, 3, 7, 3, 3.3, NULL, 0),
(119, NULL, 2, 0, 'Lost Lamb', 7, 3, 4, 5, 3.4, NULL, 0),
(120, NULL, 4, 0, 'Louisoix Leveilleur', 9, 4, 9, 3, 2.51, NULL, 0),
(121, NULL, 3, 0, 'Lucia goe Junius', 8, 2, 3, 8, 3, NULL, 0),
(122, NULL, 3, 1, 'Lupin', 3, 3, 8, 7, 4.2, NULL, 0),
(123, NULL, 4, 3, 'Lyse', 6, 9, 1, 8, 4, NULL, 0),
(124, NULL, 2, 0, 'M\'naago', 4, 1, 4, 7, 4, NULL, 0),
(125, NULL, 2, 2, 'Magitek Colossus', 6, 3, 6, 3, 3.4, NULL, 0),
(126, NULL, 1, 2, 'Magitek Death Claw', 4, 3, 2, 3, 3.4, NULL, 0),
(127, NULL, 2, 2, 'Magitek Gunship', 3, 5, 5, 5, 3.5, NULL, 0),
(128, NULL, 3, 2, 'Magitek Predator', 5, 7, 4, 5, 3.5, NULL, 0),
(129, NULL, 3, 2, 'Magitek Sky Armor', 6, 2, 6, 7, 3.5, NULL, 0),
(130, NULL, 2, 2, 'Magitek Vanguard', 3, 5, 4, 7, 3.5, NULL, 0),
(131, NULL, 3, 0, 'Magnai', 6, 7, 4, 4, 4, NULL, 0),
(132, NULL, 3, 0, 'Mammoth', 6, 3, 8, 3, 4, NULL, 0),
(133, NULL, 1, 0, 'Mandragora', 4, 2, 5, 3, 2.51, NULL, 0),
(134, NULL, 3, 1, 'Manxome Molaa Ja Ja', 3, 7, 2, 8, 3.2, NULL, 0),
(135, NULL, 3, 0, 'Matoya', 8, 3, 8, 1, 3, NULL, 0),
(136, NULL, 2, 1, 'Memeroon', 6, 6, 6, 2, 2.51, NULL, 0),
(137, NULL, 5, 0, 'Merlwyb Bloefhiswyn', 5, 9, 10, 3, 2.51, NULL, 0),
(138, NULL, 5, 0, 'Midgardsormr', 3, 8, 10, 7, 3, NULL, 0),
(139, NULL, 4, 3, 'Minfilia', 9, 8, 3, 5, 2.51, NULL, 0),
(140, NULL, 3, 0, 'Mistbeard', 5, 6, 7, 6, 3.3, NULL, 0),
(141, NULL, 3, 1, 'Moglin', 8, 5, 4, 5, 3.1, NULL, 0),
(142, NULL, 2, 0, 'Momodi Modi', 7, 5, 5, 3, 2.51, NULL, 0),
(143, NULL, 1, 1, 'Moogle', 2, 1, 3, 7, 2.51, NULL, 0),
(144, NULL, 1, 0, 'Morbol', 5, 2, 5, 2, 2.51, NULL, 0),
(145, NULL, 1, 0, 'Mossling', 5, 2, 5, 1, 4.1, NULL, 0),
(146, NULL, 2, 0, 'Mother Miounne', 5, 5, 3, 7, 2.51, NULL, 0),
(147, NULL, 2, 1, 'Mutamix Bubblypots', 2, 6, 6, 6, 2.51, NULL, 0),
(148, NULL, 4, 2, 'Nael van Darnus', 3, 9, 3, 9, 3.4, NULL, 0),
(149, NULL, 1, 1, 'Namazu', 1, 6, 1, 5, 4, NULL, 0),
(150, NULL, 5, 0, 'Nanamo Ul Namo', 10, 6, 4, 8, 2.51, NULL, 0),
(151, NULL, 3, 2, 'Nero tol Scaeva', 4, 1, 8, 7, 2.51, NULL, 0),
(152, NULL, 5, 0, 'Nidhogg', 10, 7, 3, 8, 3, NULL, 0),
(153, NULL, 4, 4, 'Odin', 8, 8, 1, 8, 2.51, NULL, 0),
(154, NULL, 5, 0, 'Onion Knight', 8, 2, 8, 10, 2.51, NULL, 0),
(155, NULL, 1, 0, 'Opo-opo', 1, 4, 2, 6, 3.5, NULL, 0),
(156, NULL, 2, 0, 'Paissa', 4, 6, 3, 6, 3.1, NULL, 0),
(157, NULL, 3, 3, 'Papalymo and Yda', 3, 7, 8, 2, 2.51, NULL, 0),
(158, NULL, 3, 0, 'Phlegethon', 1, 7, 6, 7, 3.2, NULL, 0),
(159, NULL, 3, 0, 'Phoebad', 8, 8, 3, 1, 4, NULL, 0),
(160, NULL, 3, 0, 'Pipin Tarupin', 6, 5, 6, 6, 3.1, NULL, 0),
(161, NULL, 2, 0, 'Poroggo', 6, 3, 7, 3, 3.1, NULL, 0),
(162, NULL, 3, 0, 'Progenitrix', 6, 6, 3, 6, 3.1, NULL, 0),
(163, NULL, 1, 0, 'Pudding', 2, 4, 3, 5, 2.51, NULL, 0),
(164, NULL, 2, 1, 'Qiqirn Meateater', 1, 5, 7, 5, 4.1, NULL, 0),
(165, NULL, 3, 0, 'Qitian Dasheng', 3, 8, 4, 8, 4.3, NULL, 0),
(166, NULL, 4, 4, 'Ramuh', 8, 1, 8, 8, 2.51, NULL, 0),
(167, NULL, 3, 0, 'Rasho', 4, 7, 8, 2, 4, NULL, 0),
(168, NULL, 5, 0, 'Raubahn Aldynn', 6, 2, 9, 10, 2.51, NULL, 0),
(169, NULL, 5, 0, 'Raubahn and Pipin', 1, 10, 10, 6, 4.1, NULL, 0),
(170, NULL, 4, 4, 'Ravana', 9, 7, 8, 1, 3, NULL, 0),
(171, NULL, 3, 0, 'Raya-O-Senna and A-Ruhn-Senna', 5, 6, 6, 6, 2.51, NULL, 0),
(172, NULL, 5, 2, 'Regula van Hydrus', 8, 8, 6, 8, 3.1, NULL, 0),
(173, NULL, 2, 2, 'Rhitahtyn sas Arvina', 7, 1, 3, 7, 2.51, NULL, 0),
(174, NULL, 2, 0, 'Rhoswen', 5, 6, 4, 6, 3.3, NULL, 0),
(175, NULL, 3, 0, 'Rofocale', 4, 7, 1, 8, 4.1, NULL, 0),
(176, NULL, 3, 0, 'Roland', 2, 7, 8, 3, 3.5, NULL, 0),
(177, NULL, 3, 0, 'Roundrox', 2, 2, 8, 8, 3.1, NULL, 0),
(178, NULL, 1, 0, 'Sabotender', 4, 3, 3, 3, 2.51, NULL, 0),
(179, NULL, 3, 0, 'Sadu', 6, 6, 7, 4, 4, NULL, 0),
(180, NULL, 1, 1, 'Sahagin', 4, 5, 3, 3, 2.51, NULL, 0),
(181, NULL, 2, 1, 'Scarface Bugaal Ja', 6, 6, 2, 6, 2.51, NULL, 0),
(182, NULL, 4, 0, 'Senor Sabotender', 9, 5, 7, 6, 3.1, NULL, 0),
(183, NULL, 4, 4, 'Sephirot', 6, 8, 8, 6, 3.2, NULL, 0),
(184, NULL, 5, 0, 'Shantotto', 4, 9, 7, 9, 2.51, NULL, 0),
(185, NULL, 4, 4, 'Shinryu', 7, 8, 8, 2, 4, NULL, 0),
(186, NULL, 4, 4, 'Shiva', 1, 8, 8, 8, 2.51, NULL, 0),
(187, NULL, 2, 0, 'Siren', 3, 6, 7, 2, 2.51, NULL, 0),
(188, NULL, 5, 4, 'Sophia', 10, 8, 5, 6, 3.4, NULL, 0),
(189, NULL, 1, 0, 'Spriggan', 2, 3, 4, 4, 2.51, NULL, 0),
(190, NULL, 5, 0, 'Squall Leonhart', 6, 10, 10, 1, 2.51, NULL, 0),
(191, NULL, 3, 0, 'Strix', 5, 7, 1, 7, 3.4, NULL, 0),
(192, NULL, 2, 0, 'Succubus', 7, 3, 2, 6, 2.51, NULL, 0),
(193, NULL, 3, 4, 'Susano', 2, 8, 3, 8, 4, NULL, 0),
(194, NULL, 1, 1, 'Sylph', 2, 4, 5, 4, 2.51, NULL, 0),
(195, NULL, 2, 0, 'Tansui', 6, 2, 3, 7, 4.2, NULL, 0),
(196, NULL, 1, 0, 'Tataru Taru', 7, 2, 3, 2, 2.51, NULL, 0),
(197, NULL, 5, 0, 'Terra Branford', 10, 10, 2, 5, 2.51, NULL, 0),
(198, NULL, 3, 3, 'Thancred', 2, 3, 8, 7, 2.51, NULL, 0),
(199, NULL, 3, 0, 'The Griffin', 8, 8, 4, 1, 3.5, NULL, 0),
(200, NULL, 4, 0, 'Tiamat', 9, 6, 5, 6, 3.3, NULL, 0),
(201, NULL, 5, 0, 'Tidus', 10, 7, 1, 9, 2.51, NULL, 0),
(202, NULL, 3, 0, 'Tioman', 1, 5, 8, 7, 3, NULL, 0),
(203, NULL, 3, 0, 'Titan', 1, 7, 7, 6, 2.51, NULL, 0),
(204, NULL, 1, 0, 'Tonberry', 2, 2, 7, 2, 2.51, NULL, 0),
(205, NULL, 3, 1, 'Tozol Huatotl', 7, 6, 6, 2, 3.4, NULL, 0),
(206, NULL, 4, 4, 'Tsukuyomi', 2, 7, 7, 8, 4.3, NULL, 0),
(207, NULL, 4, 2, 'Ultima Weapon', 7, 8, 9, 1, 2.51, NULL, 0),
(208, NULL, 2, 0, 'Ultros and Typhon', 2, 3, 6, 7, 2.51, NULL, 0),
(209, NULL, 4, 0, 'Unei and Doga', 6, 8, 6, 8, 3.3, NULL, 0),
(210, NULL, 3, 3, 'Urianger', 8, 1, 4, 7, 2.51, NULL, 0),
(211, NULL, 5, 0, 'Vaan', 1, 7, 10, 9, 2.51, NULL, 0),
(212, NULL, 2, 1, 'Vanu Vanu', 2, 6, 4, 7, 3, NULL, 0),
(213, NULL, 3, 0, 'Vedrfolnir', 8, 2, 7, 4, 3.1, NULL, 0),
(214, NULL, 3, 0, 'Vicegerent to the Warden', 7, 1, 7, 5, 3.2, NULL, 0),
(215, NULL, 4, 0, 'Vidofnir', 8, 6, 8, 6, 3.2, NULL, 0),
(216, NULL, 1, 0, 'Wanyudo and Katasharin', 6, 1, 1, 5, 4.35, NULL, 0),
(217, NULL, 5, 0, 'Warrior of Light', 10, 2, 5, 10, 2.51, NULL, 0),
(218, NULL, 3, 0, 'Waukkeon', 1, 6, 7, 7, 3.3, NULL, 0),
(219, NULL, 4, 0, 'Xande', 9, 4, 6, 7, 3.2, NULL, 0),
(220, NULL, 3, 3, 'Y\'shtola', 7, 8, 1, 4, 2.51, NULL, 0),
(221, NULL, 5, 0, 'Yiazmat', 7, 6, 10, 7, 4.3, NULL, 0),
(222, NULL, 4, 2, 'Yotsuyu', 9, 2, 8, 6, 4, NULL, 0),
(223, NULL, 3, 0, 'Ysayle', 4, 8, 8, 1, 3, NULL, 0),
(224, NULL, 2, 0, 'Yugiri Mistwalker', 7, 7, 1, 3, 3, NULL, 0),
(225, NULL, 5, 2, 'Zenos yae Galvus', 6, 6, 7, 10, 4, NULL, 0),
(226, NULL, 5, 0, 'Zidane Tribal', 5, 10, 6, 8, 2.51, NULL, 0),
(227, NULL, 5, 4, 'Zurvan', 3, 7, 8, 10, 3.5, NULL, 0),
(243, NULL, 6, 0, 'LittleNorwegians after being edited', 10, 10, 10, 7, 5.1, 0, 1),
(244, NULL, 2, 0, 'Yukinko', 3, 7, 3, 5, 4.3, 0, 0),
(245, NULL, 2, 0, 'Yukinko', 3, 7, 3, 5, 4.36, 0, 0),
(246, NULL, 3, 0, 'Happy Bunny', 3, 8, 7, 3, 4.36, 0, 0),
(247, NULL, 3, 0, 'Louhi', 5, 8, 2, 7, 4.36, 0, 0),
(248, NULL, 2, 0, 'Muud Suud', 3, 7, 1, 7, 4.4, 0, 0),
(249, NULL, 3, 0, 'Tokkapchi', 2, 6, 6, 7, 4.4, 0, 0),
(250, NULL, 3, 0, 'Mist Dragon', 5, 8, 5, 5, 4.4, 0, 0),
(251, NULL, 3, 0, 'Suzaku', 1, 7, 7, 7, 4.4, 0, 0),
(252, NULL, 3, 2, 'Asahi sas Brutus', 8, 4, 1, 8, 4.4, 0, 0),
(253, NULL, 5, 0, 'Omega', 6, 9, 3, 10, 4.4, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_card_npc`
--

CREATE TABLE `tt_card_npc` (
  `id` int(1) NOT NULL,
  `npc_id` int(1) NOT NULL DEFAULT '0',
  `card_id` int(1) DEFAULT NULL,
  `sort` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_card_npc`
--

INSERT INTO `tt_card_npc` (`id`, `npc_id`, `card_id`, `sort`) VALUES
(18, 1, 157, 0),
(19, 1, 150, 0),
(17, 1, 166, 0),
(16, 1, 139, 0),
(15, 1, 102, 0),
(23, 19, 144, 0),
(22, 19, 24, 0),
(20, 1, 79, 0),
(21, 1, 39, 0),
(24, 19, 38, 0),
(25, 19, 99, 0),
(26, 19, 25, 0),
(27, 19, 163, 0),
(28, 20, 136, 0),
(29, 20, 5, 0),
(30, 20, 56, 0),
(31, 20, 78, 0),
(32, 20, 133, 0),
(33, 20, 204, 0),
(34, 20, 187, 0),
(47, 22, 2, 0),
(45, 22, 146, 0),
(42, 21, 20, 0),
(43, 22, 66, 0),
(48, 22, 78, 0),
(46, 22, 142, 0),
(44, 22, 16, 0),
(49, 22, 99, 0),
(50, 21, 24, 0),
(51, 21, 25, 0),
(52, 21, 181, 0),
(53, 21, 38, 0),
(54, 21, 2, 0),
(55, 21, 43, 0),
(56, 23, 16, 0),
(57, 23, 146, 0),
(58, 23, 38, 0),
(59, 23, 198, 0),
(60, 23, 147, 0),
(61, 23, 44, 0),
(62, 24, 76, 0),
(63, 24, 147, 0),
(64, 24, 163, 0),
(65, 24, 5, 0),
(66, 24, 53, 0),
(67, 24, 25, 0),
(68, 24, 37, 0),
(69, 24, 71, 0),
(70, 25, 208, 0),
(71, 25, 142, 0),
(72, 25, 117, 0),
(73, 25, 189, 0),
(74, 25, 43, 0),
(75, 25, 133, 0),
(76, 26, 203, 0),
(77, 26, 220, 0),
(78, 26, 143, 0),
(79, 26, 208, 0),
(80, 26, 71, 0),
(81, 26, 204, 0),
(82, 26, 24, 0),
(83, 27, 20, 0),
(84, 27, 22, 0),
(85, 27, 181, 0),
(86, 27, 4, 0),
(87, 27, 210, 0),
(88, 27, 24, 0),
(89, 27, 69, 0),
(90, 27, 99, 0),
(91, 28, 204, 0),
(92, 28, 2, 0),
(93, 28, 120, 0),
(94, 28, 203, 0),
(95, 28, 208, 0),
(96, 28, 76, 0),
(97, 28, 71, 0),
(98, 28, 181, 0),
(99, 29, 142, 0),
(100, 29, 143, 0),
(101, 29, 196, 0),
(102, 29, 22, 0),
(103, 29, 198, 0),
(104, 29, 168, 0),
(105, 29, 38, 0),
(106, 30, 139, 0),
(107, 30, 142, 0),
(108, 30, 181, 0),
(109, 30, 16, 0),
(110, 30, 220, 0),
(111, 30, 20, 0),
(112, 30, 146, 0),
(113, 31, 114, 0),
(114, 31, 37, 0),
(115, 31, 136, 0),
(116, 31, 22, 0),
(117, 31, 210, 0),
(118, 32, 66, 0),
(119, 32, 139, 0),
(120, 32, 44, 0),
(121, 32, 171, 0),
(122, 32, 5, 0),
(123, 32, 180, 0),
(124, 32, 146, 0),
(125, 32, 192, 0),
(126, 18, 147, 0),
(127, 18, 133, 0),
(128, 18, 44, 0),
(129, 18, 192, 0),
(130, 18, 194, 0),
(131, 18, 43, 0),
(132, 17, 53, 0),
(133, 17, 178, 0),
(134, 17, 189, 0),
(135, 17, 24, 0),
(136, 17, 143, 0),
(137, 17, 99, 0),
(138, 17, 2, 0),
(139, 16, 204, 0),
(140, 16, 133, 0),
(141, 16, 163, 0),
(142, 16, 38, 0),
(143, 16, 189, 0),
(144, 2, 68, 0),
(145, 2, 151, 0),
(146, 2, 117, 0),
(147, 2, 181, 0),
(148, 2, 17, 0),
(149, 2, 69, 0),
(150, 2, 173, 0),
(151, 2, 136, 0),
(152, 3, 76, 0),
(153, 3, 4, 0),
(154, 3, 151, 0),
(155, 3, 139, 0),
(156, 3, 110, 0),
(157, 3, 210, 0),
(158, 3, 39, 0),
(159, 4, 153, 0),
(160, 4, 166, 0),
(161, 4, 69, 0),
(162, 4, 110, 0),
(163, 4, 66, 0),
(164, 4, 171, 0),
(165, 4, 20, 0),
(166, 5, 208, 0),
(167, 5, 120, 0),
(168, 5, 22, 0),
(169, 5, 196, 0),
(170, 5, 142, 0),
(171, 5, 168, 0),
(172, 5, 198, 0),
(173, 5, 4, 0),
(174, 6, 76, 0),
(175, 6, 71, 0),
(176, 6, 178, 0),
(177, 6, 91, 0),
(178, 6, 153, 0),
(179, 6, 168, 0),
(180, 6, 198, 0),
(181, 7, 203, 0),
(182, 7, 98, 0),
(183, 7, 17, 0),
(184, 7, 173, 0),
(185, 7, 153, 0),
(186, 7, 38, 0),
(187, 8, 102, 0),
(188, 8, 153, 0),
(189, 8, 79, 0),
(190, 8, 74, 0),
(191, 8, 157, 0),
(192, 8, 69, 0),
(193, 9, 186, 0),
(194, 9, 207, 0),
(195, 9, 210, 0),
(196, 9, 20, 0),
(197, 9, 22, 0),
(198, 9, 24, 0),
(199, 11, 76, 0),
(200, 11, 71, 0),
(201, 11, 120, 0),
(202, 11, 17, 0),
(203, 11, 151, 0),
(204, 11, 198, 0),
(205, 11, 210, 0),
(206, 11, 16, 0),
(207, 12, 39, 0),
(208, 12, 76, 0),
(209, 12, 207, 0),
(210, 12, 22, 0),
(211, 12, 151, 0),
(212, 12, 20, 0),
(213, 13, 210, 0),
(214, 13, 203, 0),
(215, 13, 137, 0),
(216, 13, 114, 0),
(217, 13, 220, 0),
(218, 13, 146, 0),
(219, 13, 192, 0),
(220, 13, 39, 0),
(221, 14, 150, 0),
(222, 14, 186, 0),
(223, 14, 102, 0),
(224, 14, 139, 0),
(225, 14, 137, 0),
(226, 15, 207, 0),
(227, 15, 192, 0),
(228, 15, 136, 0),
(229, 15, 181, 0),
(230, 15, 143, 0),
(231, 15, 194, 0),
(232, 15, 78, 0),
(233, 10, 203, 0),
(234, 10, 210, 0),
(235, 10, 17, 0),
(236, 10, 220, 0),
(237, 10, 76, 0),
(238, 10, 74, 0),
(239, 10, 91, 0),
(240, 42, 150, 0),
(241, 42, 220, 0),
(242, 42, 142, 0),
(243, 42, 190, 0),
(244, 42, 197, 0),
(245, 42, 121, 0),
(246, 42, 69, 0),
(247, 42, 157, 0),
(248, 41, 212, 0),
(249, 41, 138, 0),
(250, 41, 23, 0),
(251, 41, 170, 0),
(252, 41, 75, 0),
(253, 41, 102, 0),
(254, 41, 79, 0),
(255, 40, 152, 0),
(256, 40, 81, 0),
(257, 40, 220, 0),
(258, 40, 138, 0),
(259, 40, 59, 0),
(260, 40, 170, 0),
(261, 40, 135, 0),
(262, 39, 196, 0),
(263, 39, 210, 0),
(264, 39, 39, 0),
(265, 39, 139, 0),
(266, 39, 59, 0),
(267, 39, 121, 0),
(268, 39, 91, 0),
(269, 38, 5, 0),
(270, 38, 67, 0),
(271, 38, 178, 0),
(272, 38, 186, 0),
(273, 38, 79, 0),
(274, 37, 150, 0),
(275, 37, 81, 0),
(276, 37, 137, 0),
(277, 37, 47, 0),
(278, 37, 15, 0),
(279, 36, 69, 0),
(280, 36, 79, 0),
(281, 36, 66, 0),
(282, 36, 153, 0),
(283, 36, 146, 0),
(284, 36, 67, 0),
(285, 35, 17, 0),
(286, 35, 186, 0),
(287, 35, 67, 0),
(288, 35, 208, 0),
(289, 35, 98, 0),
(290, 35, 198, 0),
(291, 35, 15, 0),
(292, 34, 173, 0),
(293, 34, 68, 0),
(294, 34, 71, 0),
(295, 34, 16, 0),
(296, 34, 186, 0),
(297, 34, 67, 0),
(298, 34, 201, 0),
(299, 34, 224, 0),
(300, 33, 98, 0),
(301, 33, 170, 0),
(302, 33, 75, 0),
(303, 33, 151, 0),
(304, 33, 173, 0),
(305, 33, 135, 0),
(306, 33, 90, 0),
(307, 48, 156, 0),
(308, 48, 23, 0),
(309, 48, 54, 0),
(310, 48, 47, 0),
(311, 48, 39, 0),
(312, 48, 121, 0),
(313, 48, 15, 0),
(314, 47, 177, 0),
(315, 47, 99, 0),
(316, 47, 48, 0),
(317, 47, 161, 0),
(318, 47, 103, 0),
(319, 47, 180, 0),
(320, 47, 5, 0),
(321, 46, 102, 0),
(322, 46, 137, 0),
(323, 46, 90, 0),
(324, 46, 9, 0),
(325, 46, 150, 0),
(326, 46, 168, 0),
(327, 45, 51, 0),
(328, 45, 47, 0),
(329, 45, 15, 0),
(330, 45, 81, 0),
(331, 45, 121, 0),
(332, 45, 20, 0),
(333, 44, 98, 0),
(334, 44, 153, 0),
(335, 44, 197, 0),
(336, 44, 41, 0),
(337, 44, 154, 0),
(338, 44, 69, 0),
(339, 44, 203, 0),
(340, 43, 18, 0),
(341, 43, 223, 0),
(342, 43, 186, 0),
(343, 43, 59, 0),
(344, 43, 170, 0),
(345, 43, 4, 0),
(346, 43, 45, 0),
(347, 53, 28, 0),
(348, 53, 177, 0),
(349, 53, 220, 0),
(350, 53, 161, 0),
(351, 53, 48, 0),
(352, 52, 42, 0),
(353, 52, 158, 0),
(354, 52, 219, 0),
(355, 52, 151, 0),
(356, 52, 22, 0),
(357, 52, 39, 0),
(358, 51, 59, 0),
(359, 51, 223, 0),
(360, 51, 170, 0),
(361, 51, 4, 0),
(362, 51, 75, 0),
(363, 51, 18, 0),
(364, 51, 45, 0),
(365, 50, 23, 0),
(366, 50, 67, 0),
(367, 50, 212, 0),
(368, 50, 26, 0),
(369, 50, 54, 0),
(370, 50, 81, 0),
(371, 50, 156, 0),
(372, 49, 86, 0),
(373, 49, 14, 0),
(374, 49, 58, 0),
(375, 49, 95, 0),
(376, 49, 47, 0),
(377, 54, 174, 0),
(378, 54, 137, 0),
(379, 54, 114, 0),
(380, 54, 78, 0),
(381, 54, 140, 0),
(382, 55, 96, 0),
(383, 55, 152, 0),
(384, 55, 223, 0),
(385, 55, 79, 0),
(386, 55, 143, 0),
(387, 55, 213, 0),
(388, 55, 50, 0),
(389, 56, 137, 0),
(390, 56, 114, 0),
(391, 56, 140, 0),
(392, 56, 33, 0),
(393, 56, 107, 0),
(394, 56, 16, 0),
(395, 56, 133, 0),
(396, 61, 76, 0),
(397, 61, 86, 0),
(398, 61, 81, 0),
(399, 61, 20, 0),
(400, 61, 30, 0),
(401, 61, 148, 0),
(402, 61, 215, 0),
(403, 60, 16, 0),
(404, 60, 156, 0),
(405, 60, 27, 0),
(406, 60, 114, 0),
(407, 60, 162, 0),
(408, 60, 33, 0),
(409, 59, 76, 0),
(410, 59, 119, 0),
(411, 59, 24, 0),
(412, 59, 142, 0),
(413, 59, 212, 0),
(414, 59, 43, 0),
(415, 59, 38, 0),
(416, 58, 197, 0),
(417, 58, 10, 0),
(418, 58, 39, 0),
(419, 58, 4, 0),
(420, 58, 137, 0),
(421, 58, 86, 0),
(422, 57, 38, 0),
(423, 57, 144, 0),
(424, 57, 163, 0),
(425, 57, 146, 0),
(426, 57, 8, 0),
(427, 57, 2, 0),
(428, 57, 66, 0),
(429, 72, 157, 0),
(430, 72, 124, 0),
(431, 72, 1, 0),
(432, 72, 71, 0),
(433, 72, 5, 0),
(434, 72, 163, 0),
(435, 71, 167, 0),
(436, 71, 90, 0),
(437, 71, 37, 0),
(438, 71, 140, 0),
(439, 71, 53, 0),
(440, 71, 95, 0),
(441, 71, 30, 0),
(442, 70, 139, 0),
(443, 70, 23, 0),
(444, 70, 40, 0),
(445, 70, 62, 0),
(446, 70, 191, 0),
(447, 70, 76, 0),
(448, 69, 166, 0),
(449, 69, 39, 0),
(450, 69, 179, 0),
(451, 69, 69, 0),
(452, 69, 121, 0),
(453, 69, 47, 0),
(454, 68, 202, 0),
(455, 68, 106, 0),
(456, 68, 204, 0),
(457, 68, 142, 0),
(458, 68, 16, 0),
(459, 68, 146, 0),
(460, 67, 135, 0),
(461, 67, 118, 0),
(462, 67, 149, 0),
(463, 67, 155, 0),
(464, 67, 103, 0),
(465, 67, 163, 0),
(466, 66, 60, 0),
(467, 66, 6, 0),
(468, 66, 157, 0),
(469, 66, 213, 0),
(470, 66, 33, 0),
(471, 66, 196, 0),
(472, 66, 164, 0),
(473, 65, 110, 0),
(474, 65, 55, 0),
(475, 65, 131, 0),
(476, 65, 177, 0),
(477, 65, 162, 0),
(478, 65, 218, 0),
(479, 64, 102, 0),
(480, 64, 148, 0),
(481, 64, 222, 0),
(482, 64, 13, 0),
(483, 64, 59, 0),
(484, 64, 157, 0),
(485, 64, 65, 0),
(486, 63, 121, 0),
(487, 63, 105, 0),
(488, 63, 20, 0),
(489, 63, 114, 0),
(490, 63, 187, 0),
(491, 63, 180, 0),
(492, 63, 46, 0),
(493, 62, 89, 0),
(494, 62, 96, 0),
(495, 62, 4, 0),
(496, 62, 139, 0),
(497, 62, 135, 0),
(498, 62, 224, 0),
(499, 77, 84, 0),
(500, 77, 215, 0),
(501, 77, 68, 0),
(502, 77, 39, 0),
(503, 77, 63, 0),
(504, 77, 160, 0),
(505, 77, 3, 0),
(506, 76, 11, 0),
(507, 76, 15, 0),
(508, 76, 183, 0),
(509, 76, 45, 0),
(510, 76, 205, 0),
(511, 76, 113, 0),
(512, 75, 122, 0),
(513, 75, 28, 0),
(514, 75, 170, 0),
(515, 75, 104, 0),
(516, 75, 141, 0),
(517, 75, 26, 0),
(518, 74, 93, 0),
(519, 74, 120, 0),
(520, 74, 91, 0),
(521, 74, 7, 0),
(522, 74, 42, 0),
(523, 74, 148, 0),
(524, 74, 200, 0),
(525, 74, 32, 0),
(526, 73, 195, 0),
(527, 73, 167, 0),
(528, 73, 213, 0),
(529, 73, 136, 0),
(530, 73, 173, 0),
(531, 73, 94, 0),
(532, 83, 252, 0),
(533, 83, 82, 0),
(534, 83, 13, 0),
(535, 83, 129, 0),
(536, 83, 128, 0),
(537, 83, 222, 0),
(538, 83, 225, 0),
(539, 83, 126, 0),
(540, 83, 130, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_npcs`
--

CREATE TABLE `tt_npcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patch` float DEFAULT NULL,
  `r1` int(11) DEFAULT '0',
  `r2` int(11) DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_npcs`
--

INSERT INTO `tt_npcs` (`id`, `icon`, `name`, `location`, `patch`, `r1`, `r2`, `deleted`) VALUES
(1, NULL, 'Vorsaile Heuloix', 'New Gridania (9, 11)', 2.51, 17, 1, 0),
(2, NULL, 'Indolent Imperial', 'Mor Dhona (11, 17)', 2.51, 17, 1, 0),
(3, NULL, 'Ruhtwyda of the Three Hearts', 'Gold Saucer (3, 7)', 2.51, 17, 27, 0),
(4, NULL, 'Marcette', 'Central Shroud (15, 18)', 2.51, 18, 1, 0),
(5, NULL, 'Swift', 'Ul\'dah - Steps of Nald (8, 8)', 2.51, 18, 1, 0),
(6, NULL, 'Hab', 'Southern Thanalan (24, 40)', 2.51, 19, 1, 0),
(7, NULL, 'Landenel', 'South Shroud (16, 28)', 2.51, 18, 20, 0),
(8, NULL, 'Buscarron', 'South Shroud (17, 20)', 2.51, 21, 1, 0),
(9, NULL, 'Ourdilic', 'Coerthas Central Highlands (6, 22)', 2.51, 21, 1, 0),
(10, NULL, 'King Elmer III', 'Gold Saucer (3, 7)', 2.51, 22, 1, 0),
(11, NULL, 'Rowena', 'Mor Dhona (21, 5)', 2.51, 25, 25, 0),
(12, NULL, 'Sezul Totoloc', 'North Shroud (24, 23)', 2.51, 22, 26, 0),
(13, NULL, 'R\'ashaht Rhiki', 'Limsa Lominsa Upper Decks (13, 12)', 2.51, 22, 26, 0),
(14, NULL, 'Gegeruju', 'Eastern La Noscea (35, 30)', 2.51, 27, 28, 0),
(15, NULL, 'Aurifort of the Three Clubs', 'Gold Saucer (4, 7)', 2.51, 21, 29, 0),
(16, NULL, 'Triple Triad Master', 'Gold Saucer (4, 7)', 2.51, 16, 1, 0),
(17, NULL, 'Jonas of the Three Spades', 'Gold Saucer (4, 7)', 2.51, 16, 26, 0),
(18, NULL, 'Maisenta', 'New Gridania (11, 11)', 2.51, 16, 1, 0),
(19, NULL, 'Roger', 'Central Thanalan (19, 20)', 2.51, 16, 1, 0),
(20, NULL, 'Memeroon', 'Upper La Noscea (14, 24)', 2.51, 16, 1, 0),
(21, NULL, 'Guhtwint of the Three Diamonds', 'Gold Saucer (4, 7)', 2.51, 22, 29, 0),
(22, NULL, 'Mother Miounne', 'New Gridania (11, 13)', 2.51, 29, 1, 0),
(23, NULL, 'Momodi', 'Ul\'dah - Steps of Nald (11,9)', 2.51, 29, 1, 0),
(24, NULL, 'F\'hobhas', 'Central Thanalan (23, 13)', 2.51, 29, 1, 0),
(25, NULL, 'Wymond', 'Ul\'dah - Steps of Nald (9, 8)', 2.51, 29, 1, 0),
(26, NULL, 'Trachtoum', 'Lower La Noscea (35, 15)', 2.51, 29, 1, 0),
(27, NULL, 'Joellaut', 'Coerthas Central Highlands (13, 15)', 2.51, 29, 1, 0),
(28, NULL, 'Helmhart', 'Eastern Thanalan (20, 21)', 2.51, 29, 1, 0),
(29, NULL, 'Fufulupa', 'Western Thanalan (22, 17)', 2.51, 29, 1, 0),
(30, NULL, 'Baderon', 'Limsa Lominsa Upper Decks (11, 11)', 2.51, 29, 1, 0),
(31, NULL, 'Mimidoa', 'Lower La Noscea (25, 35)', 2.51, 29, 1, 0),
(32, NULL, 'Piralnaut', 'East Shroud (17, 26)', 2.51, 29, 1, 0),
(33, NULL, 'Idle Imperial', 'Azys Lla (28, 31)', 3, 17, 23, 0),
(34, NULL, 'Yellow Moon', 'Ul\'dah - Steps of Thal (14, 13)', 3, 17, 28, 0),
(35, NULL, 'Yayake', 'Ul\'dah - Steps of Nald (7, 12)', 3, 18, 25, 0),
(36, NULL, 'Noes', 'Old Gridania (10, 5)', 3, 19, 22, 0),
(37, NULL, 'Marielle', 'The Sea of Clouds (17, 37)', 3, 21, 1, 0),
(38, NULL, 'Marcechamp', 'The Dravanian Forelands (31, 22)', 3, 22, 24, 0),
(39, NULL, 'Gibrillont', 'Foundation (13-12)', 3, 25, 1, 0),
(40, NULL, 'Midnight Dew', 'Idyllshire (5, 6)', 3, 25, 25, 0),
(41, NULL, 'Mogmill', 'The Churning Mists (28, 35)', 3, 25, 25, 0),
(42, NULL, 'Wawalago', 'Limsa Lominsa Lower Decks (8, 15)', 3, 18, 28, 0),
(43, NULL, 'Voracious Vath', 'The Dravanian Forelands (23, 19)', 3.1, 17, 28, 0),
(44, NULL, 'Lewena', 'Gold Saucer (4, 6)', 3.1, 18, 20, 0),
(45, NULL, 'Dominiac', 'Coerthas Western Highlands (16, 22)', 3.1, 21, 1, 0),
(46, NULL, 'Elaisse', 'The Pillars (7-10)', 3.1, 18, 22, 0),
(47, NULL, 'Seika', 'Idyllshire (6, 7)', 3.1, 18, 24, 0),
(48, NULL, 'Laniaitte', 'The Sea of Clouds (17, 37)', 3.1, 22, 26, 0),
(49, NULL, 'House Fortemps Manservant', 'Fortemps Manor, The Pillars (11, 11)', 3.2, 16, 22, 0),
(50, NULL, 'Linu Vali', 'The Sea of Clouds (6, 14)', 3.2, 18, 24, 0),
(51, NULL, 'Vath Deftarm', 'The Dravanian Forelands (23, 19)', 3.2, 25, 1, 0),
(52, NULL, 'Klynthota', 'Mor Dhona (30, 13)', 3.2, 22, 28, 0),
(53, NULL, 'Tapklix', 'The Dravanian Hinterlands (21, 18)', 3.2, 26, 28, 0),
(54, NULL, 'O\'kalkaya', 'Limsa Lominsa Upper Decks (11, 14)', 3.3, 22, 25, 0),
(55, NULL, 'Master Mogzin', 'The Churning Mists (15, 28)', 3.3, 22, 26, 0),
(56, NULL, 'Mordyn', 'Limsa Lominsa Upper Decks (11, 8)', 3.3, 26, 28, 0),
(57, NULL, 'Wyra \'Greenhands\' Lyehga', 'The Battlehall', 3.4, 16, 26, 0),
(58, NULL, 'Hall Overseer', 'The Battlehall', 3.4, 18, 20, 0),
(59, NULL, 'Prideful Stag', 'The Battlehall', 3.4, 22, 1, 0),
(60, NULL, 'Nell Half-full', 'The Battlehall', 3.4, 22, 26, 0),
(61, NULL, 'Flichoirel The Lordling', 'The Battlehall', 3.4, 1, 1, 0),
(62, NULL, 'Kiuka', 'Doman Enclave (5, 4)', 4, 18, 1, 0),
(63, NULL, 'Tsuzura', 'The Ruby Sea (28, 16)', 4, 18, 25, 0),
(64, NULL, 'Imperial Deserter', 'The Lochs (33, 30)', 4, 20, 1, 0),
(65, NULL, 'Ogodei', 'The Azim Steppe (22, 20)', 4, 20, 22, 0),
(66, NULL, 'Garima', 'The Fringes (28, 20)', 4, 17, 22, 0),
(67, NULL, 'Gyoei', 'Yanxia (15, 31)', 4, 22, 24, 0),
(68, NULL, 'Kotokaze', 'Kugane (10, 10)', 4, 26, 1, 0),
(69, NULL, 'Munglig', 'The Azim Steppe (12, 33)', 4, 18, 26, 0),
(70, NULL, 'Nigen', 'The Azim Steppe (32, 11)', 4, 22, 26, 0),
(71, NULL, 'Kaizan', 'The Ruby Sea (22, 8)', 4, 19, 28, 0),
(72, NULL, 'Ercanbald', 'Rhalgr', 4, 1, 1, 0),
(73, NULL, 'Yusui', 'The Ruby Sea (31.5, 37.1)', 4.2, 22, 1, 0),
(74, NULL, 'Isobe', 'The Ruby Sea (21.3, 19.5)', 4.2, 22, 28, 0),
(75, NULL, 'Masatsuchi', 'Yanxia (29.5, 20.2)', 4.2, 26, 1, 0),
(76, NULL, 'Umber Torrent', 'The Lochs (16.4, 24.6)', 4.2, 22, 26, 0),
(77, NULL, 'Kikimo', 'Kugane (8.6, 14)', 4.2, 20, 28, 0),
(78, NULL, 'Farel after edit', 'dududu', 5.1, 1, 1, 1),
(79, NULL, 'Guy with rules, with them being removed', 'rules rules', 6, 1, 1, 1),
(80, NULL, 'Guy without rules, with the rules being added', 'ruleless', 6.1, 29, 1, 1),
(82, NULL, 'example!', 'werwer \"\"\"  dadaada \'\'\'\'\'\'\'\'\'\'   llalala', 6, 1, 1, 1),
(81, NULL, '123 testing', '', 6, 12, 1, 1),
(83, NULL, 'Hachinan', 'Yanxia (26.5, 12.9)', 4.4, 17, 20, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_rights`
--

CREATE TABLE `tt_rights` (
  `right_id` int(5) NOT NULL DEFAULT '0',
  `user_id` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_rules`
--

CREATE TABLE `tt_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_rules`
--

INSERT INTO `tt_rules` (`id`, `name`) VALUES
(1, ''),
(16, 'All Open'),
(17, 'Ascension'),
(18, 'Chaos'),
(19, 'Descension'),
(20, 'Fallen Ace'),
(21, 'Order'),
(22, 'Plus'),
(23, 'Random'),
(24, 'Reverse'),
(25, 'Roulette'),
(26, 'Same'),
(27, 'Sudden Death'),
(28, 'Swap'),
(29, 'Three Open');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_sections`
--

CREATE TABLE `tt_sections` (
  `right_id` int(5) NOT NULL,
  `right_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `button` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `editform` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` varchar(3) COLLATE utf8_unicode_ci DEFAULT '00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tt_admins`
--
ALTER TABLE `tt_admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `tt_attribute`
--
ALTER TABLE `tt_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_cards`
--
ALTER TABLE `tt_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_card_npc`
--
ALTER TABLE `tt_card_npc`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tt_npcs`
--
ALTER TABLE `tt_npcs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_rights`
--
ALTER TABLE `tt_rights`
  ADD UNIQUE KEY `right_id` (`right_id`,`user_id`);

--
-- Indeksy dla tabeli `tt_rules`
--
ALTER TABLE `tt_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_sections`
--
ALTER TABLE `tt_sections`
  ADD PRIMARY KEY (`right_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tt_admins`
--
ALTER TABLE `tt_admins`
  MODIFY `user_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `tt_attribute`
--
ALTER TABLE `tt_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `tt_cards`
--
ALTER TABLE `tt_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT dla tabeli `tt_card_npc`
--
ALTER TABLE `tt_card_npc`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;

--
-- AUTO_INCREMENT dla tabeli `tt_npcs`
--
ALTER TABLE `tt_npcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT dla tabeli `tt_rules`
--
ALTER TABLE `tt_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `tt_sections`
--
ALTER TABLE `tt_sections`
  MODIFY `right_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- Baza danych: `farel_tt`
--
CREATE DATABASE IF NOT EXISTS `farel_tt` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `farel_tt`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_admins`
--

CREATE TABLE `tt_admins` (
  `user_id` int(1) NOT NULL,
  `nick` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(2) NOT NULL DEFAULT '0',
  `user_pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_admins`
--

INSERT INTO `tt_admins` (`user_id`, `nick`, `user_status`, `user_pass`, `user_email`) VALUES
(1, 'FarelTheGecko', 2, 'Polska13', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_attribute`
--

CREATE TABLE `tt_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_attribute`
--

INSERT INTO `tt_attribute` (`id`, `name`) VALUES
(1, 'Beastman'),
(2, 'Garlean'),
(3, 'Scion'),
(4, 'Primal');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_cards`
--

CREATE TABLE `tt_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `p3` int(11) DEFAULT NULL,
  `p4` int(11) DEFAULT NULL,
  `patch` float DEFAULT NULL,
  `ord` int(2) DEFAULT NULL,
  `deleted` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_cards`
--

INSERT INTO `tt_cards` (`id`, `icon`, `rarity`, `type`, `name`, `p1`, `p2`, `p3`, `p4`, `patch`, `ord`, `deleted`) VALUES
(1, NULL, 2, 0, 'Adamantoise', 5, 7, 4, 4, 3.5, NULL, 0),
(2, NULL, 1, 0, 'Ahriman', 5, 5, 2, 2, 2.51, NULL, 0),
(3, NULL, 3, 4, 'Alexander Prime', 7, 3, 2, 8, 3.4, NULL, 0),
(4, NULL, 4, 0, 'Alphinaud and Alisaie', 9, 3, 3, 9, 2.51, NULL, 0),
(5, NULL, 1, 1, 'Amalj\'aa', 1, 4, 7, 1, 2.51, NULL, 0),
(6, NULL, 2, 1, 'Ananta', 3, 7, 5, 2, 4, NULL, 0),
(7, NULL, 2, 0, 'Ango', 4, 2, 7, 4, 4.2, NULL, 0),
(8, NULL, 1, 0, 'Apkallu', 3, 4, 4, 1, 3.4, NULL, 0),
(9, NULL, 2, 0, 'Archaeornis', 5, 4, 6, 5, 3.1, NULL, 0),
(10, NULL, 5, 0, 'Archbishop Thordan VII', 7, 1, 10, 9, 3.1, NULL, 0),
(11, NULL, 3, 3, 'Arenvald Lentinus', 8, 4, 8, 2, 4.2, NULL, 0),
(12, NULL, 4, 0, 'Argath Thadalfus', 9, 2, 5, 8, 4.1, NULL, 0),
(13, NULL, 4, 2, 'Armored Weapon', 3, 5, 9, 7, 3.5, NULL, 0),
(14, NULL, 3, 0, 'Artoirel de Fortemps', 4, 7, 3, 7, 3.2, NULL, 0),
(15, NULL, 4, 0, 'Aymeric', 1, 5, 9, 9, 3, NULL, 0),
(16, NULL, 2, 0, 'Baderon Tenfingers', 3, 7, 5, 5, 2.51, NULL, 0),
(17, NULL, 5, 0, 'Bahamut', 9, 5, 9, 6, 2.51, NULL, 0),
(18, NULL, 2, 0, 'Bandersnatch', 6, 6, 3, 4, 3.1, NULL, 0),
(19, NULL, 5, 0, 'Bartz Klauser', 4, 4, 10, 10, 2.51, NULL, 0),
(20, NULL, 3, 0, 'Behemoth', 7, 8, 4, 2, 2.51, NULL, 0),
(21, NULL, 3, 0, 'Belladonna', 3, 7, 3, 7, 3.1, NULL, 0),
(22, NULL, 2, 0, 'Biggs and Wedge', 5, 3, 7, 5, 2.51, NULL, 0),
(23, NULL, 4, 4, 'Bismarck', 1, 9, 7, 8, 3, NULL, 0),
(24, NULL, 2, 0, 'Blue Dragon', 2, 2, 7, 7, 2.51, NULL, 0),
(25, NULL, 1, 0, 'Bomb', 3, 4, 3, 3, 2.51, NULL, 0),
(26, NULL, 3, 0, 'Brachiosaur', 8, 4, 5, 4, 3.2, NULL, 0),
(27, NULL, 3, 0, 'Brendt, Brennan, and Bremondt', 4, 7, 6, 5, 3.4, NULL, 0),
(28, NULL, 4, 0, 'Brute Justice', 7, 7, 7, 7, 3.2, NULL, 0),
(29, NULL, 3, 0, 'Byakko', 7, 1, 7, 7, 4.2, NULL, 0),
(30, NULL, 3, 0, 'Byblos', 8, 4, 1, 7, 3, NULL, 0),
(31, NULL, 3, 0, 'Calcabrina', 6, 6, 6, 3, 3.2, NULL, 0),
(32, NULL, 4, 0, 'Calofisteri', 5, 8, 7, 8, 3.3, NULL, 0),
(33, NULL, 2, 0, 'Carvallain de Gorgagne', 2, 7, 7, 2, 3.3, NULL, 0),
(34, NULL, 5, 0, 'Cecil Harvey', 4, 10, 4, 10, 2.51, NULL, 0),
(35, NULL, 2, 0, 'Chapuli', 7, 2, 2, 6, 4.1, NULL, 0),
(36, NULL, 3, 0, 'Charibert', 7, 8, 4, 3, 3.1, NULL, 0),
(37, NULL, 2, 0, 'Chimera', 7, 7, 2, 2, 2.51, NULL, 0),
(38, NULL, 1, 0, 'Chocobo', 3, 7, 2, 1, 2.51, NULL, 0),
(39, NULL, 4, 0, 'Cid Garlond', 5, 9, 9, 2, 2.51, NULL, 0),
(40, NULL, 3, 0, 'Cirina', 3, 5, 6, 8, 4, NULL, 0),
(41, NULL, 5, 0, 'Cloud Strife', 9, 3, 9, 8, 3.2, NULL, 0),
(42, NULL, 5, 0, 'Cloud of Darkness', 7, 10, 7, 6, 2.51, NULL, 0),
(43, NULL, 1, 0, 'Coblyn', 3, 3, 3, 4, 2.51, NULL, 0),
(44, NULL, 1, 0, 'Coeurl', 2, 5, 2, 5, 2.51, NULL, 0),
(45, NULL, 3, 0, 'Coeurlregina', 5, 5, 5, 8, 3.1, NULL, 0),
(46, NULL, 1, 0, 'Colibri', 6, 1, 4, 1, 3.4, NULL, 0),
(47, NULL, 3, 0, 'Count Edmont de Fortemps', 1, 8, 3, 8, 3, NULL, 0),
(48, NULL, 2, 0, 'Crawler', 7, 7, 3, 2, 3.1, NULL, 0),
(49, NULL, 3, 0, 'Curator', 4, 6, 4, 7, 3.3, NULL, 0),
(50, NULL, 3, 0, 'Darkscale', 2, 8, 4, 7, 3.2, NULL, 0),
(51, NULL, 1, 0, 'Deepeye', 1, 3, 7, 2, 3.1, NULL, 0),
(52, NULL, 2, 1, 'Delivery Moogle', 5, 5, 6, 3, 3.4, NULL, 0),
(53, NULL, 2, 0, 'Demon Wall', 6, 7, 2, 3, 2.51, NULL, 0),
(54, NULL, 2, 0, 'Dhalmel', 6, 5, 3, 5, 3.1, NULL, 0),
(55, NULL, 4, 0, 'Diabolos Hollow', 4, 4, 8, 9, 3.5, NULL, 0),
(56, NULL, 1, 0, 'Dodo', 4, 2, 3, 4, 2.51, NULL, 0),
(57, NULL, 3, 0, 'Echidna', 6, 4, 7, 4, 3.1, NULL, 0),
(58, NULL, 3, 0, 'Emmanellain de Fortemps', 7, 4, 7, 3, 3.2, NULL, 0),
(59, NULL, 3, 0, 'Estinien', 8, 8, 2, 3, 3, NULL, 0),
(60, NULL, 4, 3, 'F\'lhaminn', 9, 7, 3, 7, 3.2, NULL, 0),
(61, NULL, 2, 0, 'Fat Chocobo', 5, 5, 5, 5, 3, NULL, 0),
(62, NULL, 3, 0, 'Fenrir', 7, 3, 6, 4, 3.2, NULL, 0),
(63, NULL, 3, 0, 'Ferdiad', 4, 6, 8, 4, 3.2, NULL, 0),
(64, NULL, 5, 0, 'Firion', 10, 5, 10, 1, 2.51, NULL, 0),
(65, NULL, 3, 0, 'Fordola rem Lupis', 5, 8, 6, 3, 4.1, NULL, 0),
(66, NULL, 2, 1, 'Frixio', 6, 2, 6, 6, 2.51, NULL, 0),
(67, NULL, 1, 0, 'Gaelicat', 4, 1, 1, 7, 3, NULL, 0),
(68, NULL, 5, 2, 'Gaius van Baelsar', 4, 10, 5, 9, 2.51, NULL, 0),
(69, NULL, 3, 4, 'Garuda', 7, 6, 1, 7, 2.51, NULL, 0),
(70, NULL, 3, 0, 'Genbu', 7, 7, 1, 7, 4.2, NULL, 0),
(71, NULL, 2, 0, 'Gerolt', 1, 7, 3, 7, 2.51, NULL, 0),
(72, NULL, 2, 0, 'Gibrillont', 2, 6, 3, 6, 3.3, NULL, 0),
(73, NULL, 4, 0, 'Gigi', 6, 8, 4, 7, 3.5, NULL, 0),
(74, NULL, 3, 0, 'Gilgamesh and Enkidu', 8, 3, 7, 3, 2.51, NULL, 0),
(75, NULL, 2, 1, 'Gnath', 6, 3, 7, 3, 3, NULL, 0),
(76, NULL, 3, 0, 'Godbert Manderville', 6, 6, 5, 6, 2.51, NULL, 0),
(77, NULL, 2, 0, 'Gold Saucer Attendant', 4, 7, 1, 6, 3.5, NULL, 0),
(78, NULL, 1, 0, 'Goobbue', 2, 5, 5, 2, 2.51, 0, 0),
(79, NULL, 3, 4, 'Good King Moggle Mog XII', 7, 6, 7, 1, 2.51, NULL, 0),
(80, NULL, 5, 0, 'Gosetsu', 10, 5, 10, 2, 4.3, NULL, 0),
(81, NULL, 3, 0, 'Griffin', 5, 1, 7, 8, 3, NULL, 0),
(82, NULL, 3, 2, 'Grynewaht', 7, 4, 7, 4, 4, NULL, 0),
(83, NULL, 2, 0, 'Guidance Node', 6, 4, 4, 4, 4.2, NULL, 0),
(84, NULL, 4, 0, 'Hancock', 8, 9, 1, 7, 4.2, NULL, 0),
(85, NULL, 2, 0, 'Hatamoto', 2, 7, 5, 6, 4.35, NULL, 0),
(86, NULL, 3, 0, 'Haurchefant', 7, 1, 5, 8, 3, NULL, 0),
(87, NULL, 4, 3, 'Heavensward Thancred', 8, 1, 7, 9, 3.4, NULL, 0),
(88, NULL, 4, 3, 'Heavensward Y\'shtola', 9, 9, 2, 5, 3.4, NULL, 0),
(89, NULL, 5, 0, 'Hien', 2, 10, 5, 10, 4, NULL, 0),
(90, NULL, 3, 0, 'Hilda', 1, 4, 8, 8, 3, NULL, 0),
(91, NULL, 5, 0, 'Hildibrand and Nashu Mhakaracca', 1, 8, 10, 8, 2.51, NULL, 0),
(92, NULL, 3, 0, 'Hiruko', 4, 7, 5, 7, 4.35, NULL, 0),
(93, NULL, 5, 0, 'Hisui and Kurenai', 10, 2, 7, 9, 4.2, NULL, 0),
(94, NULL, 2, 3, 'Hoary Boulder and Coultenet', 2, 7, 2, 7, 3.2, NULL, 0),
(95, NULL, 2, 0, 'Honoroit', 7, 2, 7, 2, 3.2, NULL, 0),
(96, NULL, 5, 0, 'Hraesvelgr', 7, 7, 10, 6, 3.3, NULL, 0),
(97, NULL, 3, 0, 'Hrodric Poisontongue', 2, 7, 6, 7, 4.1, NULL, 0),
(98, NULL, 3, 4, 'Ifrit', 7, 1, 6, 7, 2.51, NULL, 0),
(99, NULL, 1, 1, 'Ixal', 6, 1, 3, 4, 2.51, NULL, 0),
(100, NULL, 3, 0, 'Julyan Manderville', 6, 6, 5, 7, 3.1, NULL, 0),
(101, NULL, 3, 0, 'Kal Myhk', 1, 8, 4, 8, 3.3, NULL, 0),
(102, NULL, 5, 0, 'Kan-E-Senna', 9, 10, 1, 7, 2.51, NULL, 0),
(103, NULL, 1, 1, 'Kobold', 2, 2, 4, 6, 2.51, NULL, 0),
(104, NULL, 1, 0, 'Koja', 3, 2, 1, 6, 4.2, NULL, 0),
(105, NULL, 2, 1, 'Kojin', 4, 5, 5, 4, 4, NULL, 0),
(106, NULL, 2, 0, 'Kotokaze', 5, 6, 2, 6, 4, NULL, 0),
(107, NULL, 3, 0, 'Kraken', 3, 6, 6, 6, 3.2, NULL, 0),
(108, NULL, 4, 3, 'Krile', 2, 8, 8, 7, 4, NULL, 0),
(109, NULL, 3, 0, 'Kuribu', 8, 3, 2, 7, 3.2, NULL, 0),
(110, NULL, 4, 0, 'Lahabrea', 4, 9, 4, 8, 2.51, NULL, 0),
(111, NULL, 3, 4, 'Lakshmi', 3, 7, 7, 5, 4, NULL, 0),
(112, NULL, 2, 0, 'Laniaitte de Haillenarte', 7, 6, 3, 3, 3.3, NULL, 0),
(113, NULL, 3, 0, 'Lava Scorpion', 3, 8, 5, 5, 3.5, NULL, 0),
(114, NULL, 4, 4, 'Leviathan', 8, 8, 8, 1, 2.51, NULL, 0),
(115, NULL, 5, 0, 'Lightning', 9, 1, 7, 10, 2.51, NULL, 0),
(116, NULL, 2, 0, 'Liquid Flame', 4, 3, 6, 6, 3.4, NULL, 0),
(117, NULL, 2, 2, 'Livia sas Junius', 3, 7, 7, 1, 2.51, NULL, 0),
(118, NULL, 2, 0, 'Lolorito Nanarito', 4, 3, 7, 3, 3.3, NULL, 0),
(119, NULL, 2, 0, 'Lost Lamb', 7, 3, 4, 5, 3.4, NULL, 0),
(120, NULL, 4, 0, 'Louisoix Leveilleur', 9, 4, 9, 3, 2.51, NULL, 0),
(121, NULL, 3, 0, 'Lucia goe Junius', 8, 2, 3, 8, 3, NULL, 0),
(122, NULL, 3, 1, 'Lupin', 3, 3, 8, 7, 4.2, NULL, 0),
(123, NULL, 4, 3, 'Lyse', 6, 9, 1, 8, 4, NULL, 0),
(124, NULL, 2, 0, 'M\'naago', 4, 1, 4, 7, 4, NULL, 0),
(125, NULL, 2, 2, 'Magitek Colossus', 6, 3, 6, 3, 3.4, NULL, 0),
(126, NULL, 1, 2, 'Magitek Death Claw', 4, 3, 2, 3, 3.4, NULL, 0),
(127, NULL, 2, 2, 'Magitek Gunship', 3, 5, 5, 5, 3.5, NULL, 0),
(128, NULL, 3, 2, 'Magitek Predator', 5, 7, 4, 5, 3.5, NULL, 0),
(129, NULL, 3, 2, 'Magitek Sky Armor', 6, 2, 6, 7, 3.5, NULL, 0),
(130, NULL, 2, 2, 'Magitek Vanguard', 3, 5, 4, 7, 3.5, NULL, 0),
(131, NULL, 3, 0, 'Magnai', 6, 7, 4, 4, 4, NULL, 0),
(132, NULL, 3, 0, 'Mammoth', 6, 3, 8, 3, 4, NULL, 0),
(133, NULL, 1, 0, 'Mandragora', 4, 2, 5, 3, 2.51, NULL, 0),
(134, NULL, 3, 1, 'Manxome Molaa Ja Ja', 3, 7, 2, 8, 3.2, NULL, 0),
(135, NULL, 3, 0, 'Matoya', 8, 3, 8, 1, 3, NULL, 0),
(136, NULL, 2, 1, 'Memeroon', 6, 6, 6, 2, 2.51, NULL, 0),
(137, NULL, 5, 0, 'Merlwyb Bloefhiswyn', 5, 9, 10, 3, 2.51, NULL, 0),
(138, NULL, 5, 0, 'Midgardsormr', 3, 8, 10, 7, 3, NULL, 0),
(139, NULL, 4, 3, 'Minfilia', 9, 8, 3, 5, 2.51, NULL, 0),
(140, NULL, 3, 0, 'Mistbeard', 5, 6, 7, 6, 3.3, NULL, 0),
(141, NULL, 3, 1, 'Moglin', 8, 5, 4, 5, 3.1, NULL, 0),
(142, NULL, 2, 0, 'Momodi Modi', 7, 5, 5, 3, 2.51, NULL, 0),
(143, NULL, 1, 1, 'Moogle', 2, 1, 3, 7, 2.51, NULL, 0),
(144, NULL, 1, 0, 'Morbol', 5, 2, 5, 2, 2.51, NULL, 0),
(145, NULL, 1, 0, 'Mossling', 5, 2, 5, 1, 4.1, NULL, 0),
(146, NULL, 2, 0, 'Mother Miounne', 5, 5, 3, 7, 2.51, NULL, 0),
(147, NULL, 2, 1, 'Mutamix Bubblypots', 2, 6, 6, 6, 2.51, NULL, 0),
(148, NULL, 4, 2, 'Nael van Darnus', 3, 9, 3, 9, 3.4, NULL, 0),
(149, NULL, 1, 1, 'Namazu', 1, 6, 1, 5, 4, NULL, 0),
(150, NULL, 5, 0, 'Nanamo Ul Namo', 10, 6, 4, 8, 2.51, NULL, 0),
(151, NULL, 3, 2, 'Nero tol Scaeva', 4, 1, 8, 7, 2.51, NULL, 0),
(152, NULL, 5, 0, 'Nidhogg', 10, 7, 3, 8, 3, NULL, 0),
(153, NULL, 4, 4, 'Odin', 8, 8, 1, 8, 2.51, NULL, 0),
(154, NULL, 5, 0, 'Onion Knight', 8, 2, 8, 10, 2.51, NULL, 0),
(155, NULL, 1, 0, 'Opo-opo', 1, 4, 2, 6, 3.5, NULL, 0),
(156, NULL, 2, 0, 'Paissa', 4, 6, 3, 6, 3.1, NULL, 0),
(157, NULL, 3, 3, 'Papalymo and Yda', 3, 7, 8, 2, 2.51, NULL, 0),
(158, NULL, 3, 0, 'Phlegethon', 1, 7, 6, 7, 3.2, NULL, 0),
(159, NULL, 3, 0, 'Phoebad', 8, 8, 3, 1, 4, NULL, 0),
(160, NULL, 3, 0, 'Pipin Tarupin', 6, 5, 6, 6, 3.1, NULL, 0),
(161, NULL, 2, 0, 'Poroggo', 6, 3, 7, 3, 3.1, NULL, 0),
(162, NULL, 3, 0, 'Progenitrix', 6, 6, 3, 6, 3.1, NULL, 0),
(163, NULL, 1, 0, 'Pudding', 2, 4, 3, 5, 2.51, NULL, 0),
(164, NULL, 2, 1, 'Qiqirn Meateater', 1, 5, 7, 5, 4.1, NULL, 0),
(165, NULL, 3, 0, 'Qitian Dasheng', 3, 8, 4, 8, 4.3, NULL, 0),
(166, NULL, 4, 4, 'Ramuh', 8, 1, 8, 8, 2.51, NULL, 0),
(167, NULL, 3, 0, 'Rasho', 4, 7, 8, 2, 4, NULL, 0),
(168, NULL, 5, 0, 'Raubahn Aldynn', 6, 2, 9, 10, 2.51, NULL, 0),
(169, NULL, 5, 0, 'Raubahn and Pipin', 1, 10, 10, 6, 4.1, NULL, 0),
(170, NULL, 4, 4, 'Ravana', 9, 7, 8, 1, 3, NULL, 0),
(171, NULL, 3, 0, 'Raya-O-Senna and A-Ruhn-Senna', 5, 6, 6, 6, 2.51, NULL, 0),
(172, NULL, 5, 2, 'Regula van Hydrus', 8, 8, 6, 8, 3.1, NULL, 0),
(173, NULL, 2, 2, 'Rhitahtyn sas Arvina', 7, 1, 3, 7, 2.51, NULL, 0),
(174, NULL, 2, 0, 'Rhoswen', 5, 6, 4, 6, 3.3, NULL, 0),
(175, NULL, 3, 0, 'Rofocale', 4, 7, 1, 8, 4.1, NULL, 0),
(176, NULL, 3, 0, 'Roland', 2, 7, 8, 3, 3.5, NULL, 0),
(177, NULL, 3, 0, 'Roundrox', 2, 2, 8, 8, 3.1, NULL, 0),
(178, NULL, 1, 0, 'Sabotender', 4, 3, 3, 3, 2.51, NULL, 0),
(179, NULL, 3, 0, 'Sadu', 6, 6, 7, 4, 4, NULL, 0),
(180, NULL, 1, 1, 'Sahagin', 4, 5, 3, 3, 2.51, NULL, 0),
(181, NULL, 2, 1, 'Scarface Bugaal Ja', 6, 6, 2, 6, 2.51, NULL, 0),
(182, NULL, 4, 0, 'Senor Sabotender', 9, 5, 7, 6, 3.1, NULL, 0),
(183, NULL, 4, 4, 'Sephirot', 6, 8, 8, 6, 3.2, NULL, 0),
(184, NULL, 5, 0, 'Shantotto', 4, 9, 7, 9, 2.51, NULL, 0),
(185, NULL, 4, 4, 'Shinryu', 7, 8, 8, 2, 4, NULL, 0),
(186, NULL, 4, 4, 'Shiva', 1, 8, 8, 8, 2.51, NULL, 0),
(187, NULL, 2, 0, 'Siren', 3, 6, 7, 2, 2.51, NULL, 0),
(188, NULL, 5, 4, 'Sophia', 10, 8, 5, 6, 3.4, NULL, 0),
(189, NULL, 1, 0, 'Spriggan', 2, 3, 4, 4, 2.51, NULL, 0),
(190, NULL, 5, 0, 'Squall Leonhart', 6, 10, 10, 1, 2.51, NULL, 0),
(191, NULL, 3, 0, 'Strix', 5, 7, 1, 7, 3.4, NULL, 0),
(192, NULL, 2, 0, 'Succubus', 7, 3, 2, 6, 2.51, NULL, 0),
(193, NULL, 3, 4, 'Susano', 2, 8, 3, 8, 4, NULL, 0),
(194, NULL, 1, 1, 'Sylph', 2, 4, 5, 4, 2.51, NULL, 0),
(195, NULL, 2, 0, 'Tansui', 6, 2, 3, 7, 4.2, NULL, 0),
(196, NULL, 1, 0, 'Tataru Taru', 7, 2, 3, 2, 2.51, NULL, 0),
(197, NULL, 5, 0, 'Terra Branford', 10, 10, 2, 5, 2.51, NULL, 0),
(198, NULL, 3, 3, 'Thancred', 2, 3, 8, 7, 2.51, NULL, 0),
(199, NULL, 3, 0, 'The Griffin', 8, 8, 4, 1, 3.5, NULL, 0),
(200, NULL, 4, 0, 'Tiamat', 9, 6, 5, 6, 3.3, NULL, 0),
(201, NULL, 5, 0, 'Tidus', 10, 7, 1, 9, 2.51, NULL, 0),
(202, NULL, 3, 0, 'Tioman', 1, 5, 8, 7, 3, NULL, 0),
(203, NULL, 3, 0, 'Titan', 1, 7, 7, 6, 2.51, NULL, 0),
(204, NULL, 1, 0, 'Tonberry', 2, 2, 7, 2, 2.51, NULL, 0),
(205, NULL, 3, 1, 'Tozol Huatotl', 7, 6, 6, 2, 3.4, NULL, 0),
(206, NULL, 4, 4, 'Tsukuyomi', 2, 7, 7, 8, 4.3, NULL, 0),
(207, NULL, 4, 2, 'Ultima Weapon', 7, 8, 9, 1, 2.51, NULL, 0),
(208, NULL, 2, 0, 'Ultros and Typhon', 2, 3, 6, 7, 2.51, NULL, 0),
(209, NULL, 4, 0, 'Unei and Doga', 6, 8, 6, 8, 3.3, NULL, 0),
(210, NULL, 3, 3, 'Urianger', 8, 1, 4, 7, 2.51, NULL, 0),
(211, NULL, 5, 0, 'Vaan', 1, 7, 10, 9, 2.51, NULL, 0),
(212, NULL, 2, 1, 'Vanu Vanu', 2, 6, 4, 7, 3, NULL, 0),
(213, NULL, 3, 0, 'Vedrfolnir', 8, 2, 7, 4, 3.1, NULL, 0),
(214, NULL, 3, 0, 'Vicegerent to the Warden', 7, 1, 7, 5, 3.2, NULL, 0),
(215, NULL, 4, 0, 'Vidofnir', 8, 6, 8, 6, 3.2, NULL, 0),
(216, NULL, 1, 0, 'Wanyudo and Katasharin', 6, 1, 1, 5, 4.35, NULL, 0),
(217, NULL, 5, 0, 'Warrior of Light', 10, 2, 5, 10, 2.51, NULL, 0),
(218, NULL, 3, 0, 'Waukkeon', 1, 6, 7, 7, 3.3, NULL, 0),
(219, NULL, 4, 0, 'Xande', 9, 4, 6, 7, 3.2, NULL, 0),
(220, NULL, 3, 3, 'Y\'shtola', 7, 8, 1, 4, 2.51, NULL, 0),
(221, NULL, 5, 0, 'Yiazmat', 7, 6, 10, 7, 4.3, NULL, 0),
(222, NULL, 4, 2, 'Yotsuyu', 9, 2, 8, 6, 4, NULL, 0),
(223, NULL, 3, 0, 'Ysayle', 4, 8, 8, 1, 3, NULL, 0),
(224, NULL, 2, 0, 'Yugiri Mistwalker', 7, 7, 1, 3, 3, NULL, 0),
(225, NULL, 5, 2, 'Zenos yae Galvus', 6, 6, 7, 10, 4, NULL, 0),
(226, NULL, 5, 0, 'Zidane Tribal', 5, 10, 6, 8, 2.51, NULL, 0),
(227, NULL, 5, 4, 'Zurvan', 3, 7, 8, 10, 3.5, NULL, 0),
(243, NULL, 6, 0, 'LittleNorwegians after being edited', 10, 10, 10, 7, 5.1, 0, 1),
(244, NULL, 2, 0, 'Yukinko', 3, 7, 3, 5, 4.3, 0, 0),
(245, NULL, 2, 0, 'Yukinko', 3, 7, 3, 5, 4.36, 0, 0),
(246, NULL, 3, 0, 'Happy Bunny', 3, 8, 7, 3, 4.36, 0, 0),
(247, NULL, 3, 0, 'Louhi', 5, 8, 2, 7, 4.36, 0, 0),
(248, NULL, 2, 0, 'Muud Suud', 3, 7, 1, 7, 4.4, 0, 0),
(249, NULL, 3, 0, 'Tokkapchi', 2, 6, 6, 7, 4.4, 0, 0),
(250, NULL, 3, 0, 'Mist Dragon', 5, 8, 5, 5, 4.4, 0, 0),
(251, NULL, 3, 0, 'Suzaku', 1, 7, 7, 7, 4.4, 0, 0),
(252, NULL, 3, 2, 'Asahi sas Brutus', 8, 4, 1, 8, 4.4, 0, 0),
(253, NULL, 5, 0, 'Omega', 6, 9, 3, 10, 4.4, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_card_npc`
--

CREATE TABLE `tt_card_npc` (
  `id` int(1) NOT NULL,
  `npc_id` int(1) NOT NULL DEFAULT '0',
  `card_id` int(1) DEFAULT NULL,
  `sort` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_card_npc`
--

INSERT INTO `tt_card_npc` (`id`, `npc_id`, `card_id`, `sort`) VALUES
(18, 1, 157, 0),
(19, 1, 150, 0),
(17, 1, 166, 0),
(16, 1, 139, 0),
(15, 1, 102, 0),
(23, 19, 144, 0),
(22, 19, 24, 0),
(20, 1, 79, 0),
(21, 1, 39, 0),
(24, 19, 38, 0),
(25, 19, 99, 0),
(26, 19, 25, 0),
(27, 19, 163, 0),
(28, 20, 136, 0),
(29, 20, 5, 0),
(30, 20, 56, 0),
(31, 20, 78, 0),
(32, 20, 133, 0),
(33, 20, 204, 0),
(34, 20, 187, 0),
(47, 22, 2, 0),
(45, 22, 146, 0),
(42, 21, 20, 0),
(43, 22, 66, 0),
(48, 22, 78, 0),
(46, 22, 142, 0),
(44, 22, 16, 0),
(49, 22, 99, 0),
(50, 21, 24, 0),
(51, 21, 25, 0),
(52, 21, 181, 0),
(53, 21, 38, 0),
(54, 21, 2, 0),
(55, 21, 43, 0),
(56, 23, 16, 0),
(57, 23, 146, 0),
(58, 23, 38, 0),
(59, 23, 198, 0),
(60, 23, 147, 0),
(61, 23, 44, 0),
(62, 24, 76, 0),
(63, 24, 147, 0),
(64, 24, 163, 0),
(65, 24, 5, 0),
(66, 24, 53, 0),
(67, 24, 25, 0),
(68, 24, 37, 0),
(69, 24, 71, 0),
(70, 25, 208, 0),
(71, 25, 142, 0),
(72, 25, 117, 0),
(73, 25, 189, 0),
(74, 25, 43, 0),
(75, 25, 133, 0),
(76, 26, 203, 0),
(77, 26, 220, 0),
(78, 26, 143, 0),
(79, 26, 208, 0),
(80, 26, 71, 0),
(81, 26, 204, 0),
(82, 26, 24, 0),
(83, 27, 20, 0),
(84, 27, 22, 0),
(85, 27, 181, 0),
(86, 27, 4, 0),
(87, 27, 210, 0),
(88, 27, 24, 0),
(89, 27, 69, 0),
(90, 27, 99, 0),
(91, 28, 204, 0),
(92, 28, 2, 0),
(93, 28, 120, 0),
(94, 28, 203, 0),
(95, 28, 208, 0),
(96, 28, 76, 0),
(97, 28, 71, 0),
(98, 28, 181, 0),
(99, 29, 142, 0),
(100, 29, 143, 0),
(101, 29, 196, 0),
(102, 29, 22, 0),
(103, 29, 198, 0),
(104, 29, 168, 0),
(105, 29, 38, 0),
(106, 30, 139, 0),
(107, 30, 142, 0),
(108, 30, 181, 0),
(109, 30, 16, 0),
(110, 30, 220, 0),
(111, 30, 20, 0),
(112, 30, 146, 0),
(113, 31, 114, 0),
(114, 31, 37, 0),
(115, 31, 136, 0),
(116, 31, 22, 0),
(117, 31, 210, 0),
(118, 32, 66, 0),
(119, 32, 139, 0),
(120, 32, 44, 0),
(121, 32, 171, 0),
(122, 32, 5, 0),
(123, 32, 180, 0),
(124, 32, 146, 0),
(125, 32, 192, 0),
(126, 18, 147, 0),
(127, 18, 133, 0),
(128, 18, 44, 0),
(129, 18, 192, 0),
(130, 18, 194, 0),
(131, 18, 43, 0),
(132, 17, 53, 0),
(133, 17, 178, 0),
(134, 17, 189, 0),
(135, 17, 24, 0),
(136, 17, 143, 0),
(137, 17, 99, 0),
(138, 17, 2, 0),
(139, 16, 204, 0),
(140, 16, 133, 0),
(141, 16, 163, 0),
(142, 16, 38, 0),
(143, 16, 189, 0),
(144, 2, 68, 0),
(145, 2, 151, 0),
(146, 2, 117, 0),
(147, 2, 181, 0),
(148, 2, 17, 0),
(149, 2, 69, 0),
(150, 2, 173, 0),
(151, 2, 136, 0),
(152, 3, 76, 0),
(153, 3, 4, 0),
(154, 3, 151, 0),
(155, 3, 139, 0),
(156, 3, 110, 0),
(157, 3, 210, 0),
(158, 3, 39, 0),
(159, 4, 153, 0),
(160, 4, 166, 0),
(161, 4, 69, 0),
(162, 4, 110, 0),
(163, 4, 66, 0),
(164, 4, 171, 0),
(165, 4, 20, 0),
(166, 5, 208, 0),
(167, 5, 120, 0),
(168, 5, 22, 0),
(169, 5, 196, 0),
(170, 5, 142, 0),
(171, 5, 168, 0),
(172, 5, 198, 0),
(173, 5, 4, 0),
(174, 6, 76, 0),
(175, 6, 71, 0),
(176, 6, 178, 0),
(177, 6, 91, 0),
(178, 6, 153, 0),
(179, 6, 168, 0),
(180, 6, 198, 0),
(181, 7, 203, 0),
(182, 7, 98, 0),
(183, 7, 17, 0),
(184, 7, 173, 0),
(185, 7, 153, 0),
(186, 7, 38, 0),
(187, 8, 102, 0),
(188, 8, 153, 0),
(189, 8, 79, 0),
(190, 8, 74, 0),
(191, 8, 157, 0),
(192, 8, 69, 0),
(193, 9, 186, 0),
(194, 9, 207, 0),
(195, 9, 210, 0),
(196, 9, 20, 0),
(197, 9, 22, 0),
(198, 9, 24, 0),
(199, 11, 76, 0),
(200, 11, 71, 0),
(201, 11, 120, 0),
(202, 11, 17, 0),
(203, 11, 151, 0),
(204, 11, 198, 0),
(205, 11, 210, 0),
(206, 11, 16, 0),
(207, 12, 39, 0),
(208, 12, 76, 0),
(209, 12, 207, 0),
(210, 12, 22, 0),
(211, 12, 151, 0),
(212, 12, 20, 0),
(213, 13, 210, 0),
(214, 13, 203, 0),
(215, 13, 137, 0),
(216, 13, 114, 0),
(217, 13, 220, 0),
(218, 13, 146, 0),
(219, 13, 192, 0),
(220, 13, 39, 0),
(221, 14, 150, 0),
(222, 14, 186, 0),
(223, 14, 102, 0),
(224, 14, 139, 0),
(225, 14, 137, 0),
(226, 15, 207, 0),
(227, 15, 192, 0),
(228, 15, 136, 0),
(229, 15, 181, 0),
(230, 15, 143, 0),
(231, 15, 194, 0),
(232, 15, 78, 0),
(233, 10, 203, 0),
(234, 10, 210, 0),
(235, 10, 17, 0),
(236, 10, 220, 0),
(237, 10, 76, 0),
(238, 10, 74, 0),
(239, 10, 91, 0),
(240, 42, 150, 0),
(241, 42, 220, 0),
(242, 42, 142, 0),
(243, 42, 190, 0),
(244, 42, 197, 0),
(245, 42, 121, 0),
(246, 42, 69, 0),
(247, 42, 157, 0),
(248, 41, 212, 0),
(249, 41, 138, 0),
(250, 41, 23, 0),
(251, 41, 170, 0),
(252, 41, 75, 0),
(253, 41, 102, 0),
(254, 41, 79, 0),
(255, 40, 152, 0),
(256, 40, 81, 0),
(257, 40, 220, 0),
(258, 40, 138, 0),
(259, 40, 59, 0),
(260, 40, 170, 0),
(261, 40, 135, 0),
(262, 39, 196, 0),
(263, 39, 210, 0),
(264, 39, 39, 0),
(265, 39, 139, 0),
(266, 39, 59, 0),
(267, 39, 121, 0),
(268, 39, 91, 0),
(269, 38, 5, 0),
(270, 38, 67, 0),
(271, 38, 178, 0),
(272, 38, 186, 0),
(273, 38, 79, 0),
(274, 37, 150, 0),
(275, 37, 81, 0),
(276, 37, 137, 0),
(277, 37, 47, 0),
(278, 37, 15, 0),
(279, 36, 69, 0),
(280, 36, 79, 0),
(281, 36, 66, 0),
(282, 36, 153, 0),
(283, 36, 146, 0),
(284, 36, 67, 0),
(285, 35, 17, 0),
(286, 35, 186, 0),
(287, 35, 67, 0),
(288, 35, 208, 0),
(289, 35, 98, 0),
(290, 35, 198, 0),
(291, 35, 15, 0),
(292, 34, 173, 0),
(293, 34, 68, 0),
(294, 34, 71, 0),
(295, 34, 16, 0),
(296, 34, 186, 0),
(297, 34, 67, 0),
(298, 34, 201, 0),
(299, 34, 224, 0),
(300, 33, 98, 0),
(301, 33, 170, 0),
(302, 33, 75, 0),
(303, 33, 151, 0),
(304, 33, 173, 0),
(305, 33, 135, 0),
(306, 33, 90, 0),
(307, 48, 156, 0),
(308, 48, 23, 0),
(309, 48, 54, 0),
(310, 48, 47, 0),
(311, 48, 39, 0),
(312, 48, 121, 0),
(313, 48, 15, 0),
(314, 47, 177, 0),
(315, 47, 99, 0),
(316, 47, 48, 0),
(317, 47, 161, 0),
(318, 47, 103, 0),
(319, 47, 180, 0),
(320, 47, 5, 0),
(321, 46, 102, 0),
(322, 46, 137, 0),
(323, 46, 90, 0),
(324, 46, 9, 0),
(325, 46, 150, 0),
(326, 46, 168, 0),
(327, 45, 51, 0),
(328, 45, 47, 0),
(329, 45, 15, 0),
(330, 45, 81, 0),
(331, 45, 121, 0),
(332, 45, 20, 0),
(333, 44, 98, 0),
(334, 44, 153, 0),
(335, 44, 197, 0),
(336, 44, 41, 0),
(337, 44, 154, 0),
(338, 44, 69, 0),
(339, 44, 203, 0),
(340, 43, 18, 0),
(341, 43, 223, 0),
(342, 43, 186, 0),
(343, 43, 59, 0),
(344, 43, 170, 0),
(345, 43, 4, 0),
(346, 43, 45, 0),
(347, 53, 28, 0),
(348, 53, 177, 0),
(349, 53, 220, 0),
(350, 53, 161, 0),
(351, 53, 48, 0),
(352, 52, 42, 0),
(353, 52, 158, 0),
(354, 52, 219, 0),
(355, 52, 151, 0),
(356, 52, 22, 0),
(357, 52, 39, 0),
(358, 51, 59, 0),
(359, 51, 223, 0),
(360, 51, 170, 0),
(361, 51, 4, 0),
(362, 51, 75, 0),
(363, 51, 18, 0),
(364, 51, 45, 0),
(365, 50, 23, 0),
(366, 50, 67, 0),
(367, 50, 212, 0),
(368, 50, 26, 0),
(369, 50, 54, 0),
(370, 50, 81, 0),
(371, 50, 156, 0),
(372, 49, 86, 0),
(373, 49, 14, 0),
(374, 49, 58, 0),
(375, 49, 95, 0),
(376, 49, 47, 0),
(377, 54, 174, 0),
(378, 54, 137, 0),
(379, 54, 114, 0),
(380, 54, 78, 0),
(381, 54, 140, 0),
(382, 55, 96, 0),
(383, 55, 152, 0),
(384, 55, 223, 0),
(385, 55, 79, 0),
(386, 55, 143, 0),
(387, 55, 213, 0),
(388, 55, 50, 0),
(389, 56, 137, 0),
(390, 56, 114, 0),
(391, 56, 140, 0),
(392, 56, 33, 0),
(393, 56, 107, 0),
(394, 56, 16, 0),
(395, 56, 133, 0),
(396, 61, 76, 0),
(397, 61, 86, 0),
(398, 61, 81, 0),
(399, 61, 20, 0),
(400, 61, 30, 0),
(401, 61, 148, 0),
(402, 61, 215, 0),
(403, 60, 16, 0),
(404, 60, 156, 0),
(405, 60, 27, 0),
(406, 60, 114, 0),
(407, 60, 162, 0),
(408, 60, 33, 0),
(409, 59, 76, 0),
(410, 59, 119, 0),
(411, 59, 24, 0),
(412, 59, 142, 0),
(413, 59, 212, 0),
(414, 59, 43, 0),
(415, 59, 38, 0),
(416, 58, 197, 0),
(417, 58, 10, 0),
(418, 58, 39, 0),
(419, 58, 4, 0),
(420, 58, 137, 0),
(421, 58, 86, 0),
(422, 57, 38, 0),
(423, 57, 144, 0),
(424, 57, 163, 0),
(425, 57, 146, 0),
(426, 57, 8, 0),
(427, 57, 2, 0),
(428, 57, 66, 0),
(429, 72, 157, 0),
(430, 72, 124, 0),
(431, 72, 1, 0),
(432, 72, 71, 0),
(433, 72, 5, 0),
(434, 72, 163, 0),
(435, 71, 167, 0),
(436, 71, 90, 0),
(437, 71, 37, 0),
(438, 71, 140, 0),
(439, 71, 53, 0),
(440, 71, 95, 0),
(441, 71, 30, 0),
(442, 70, 139, 0),
(443, 70, 23, 0),
(444, 70, 40, 0),
(445, 70, 62, 0),
(446, 70, 191, 0),
(447, 70, 76, 0),
(448, 69, 166, 0),
(449, 69, 39, 0),
(450, 69, 179, 0),
(451, 69, 69, 0),
(452, 69, 121, 0),
(453, 69, 47, 0),
(454, 68, 202, 0),
(455, 68, 106, 0),
(456, 68, 204, 0),
(457, 68, 142, 0),
(458, 68, 16, 0),
(459, 68, 146, 0),
(460, 67, 135, 0),
(461, 67, 118, 0),
(462, 67, 149, 0),
(463, 67, 155, 0),
(464, 67, 103, 0),
(465, 67, 163, 0),
(466, 66, 60, 0),
(467, 66, 6, 0),
(468, 66, 157, 0),
(469, 66, 213, 0),
(470, 66, 33, 0),
(471, 66, 196, 0),
(472, 66, 164, 0),
(473, 65, 110, 0),
(474, 65, 55, 0),
(475, 65, 131, 0),
(476, 65, 177, 0),
(477, 65, 162, 0),
(478, 65, 218, 0),
(479, 64, 102, 0),
(480, 64, 148, 0),
(481, 64, 222, 0),
(482, 64, 13, 0),
(483, 64, 59, 0),
(484, 64, 157, 0),
(485, 64, 65, 0),
(486, 63, 121, 0),
(487, 63, 105, 0),
(488, 63, 20, 0),
(489, 63, 114, 0),
(490, 63, 187, 0),
(491, 63, 180, 0),
(492, 63, 46, 0),
(493, 62, 89, 0),
(494, 62, 96, 0),
(495, 62, 4, 0),
(496, 62, 139, 0),
(497, 62, 135, 0),
(498, 62, 224, 0),
(499, 77, 84, 0),
(500, 77, 215, 0),
(501, 77, 68, 0),
(502, 77, 39, 0),
(503, 77, 63, 0),
(504, 77, 160, 0),
(505, 77, 3, 0),
(506, 76, 11, 0),
(507, 76, 15, 0),
(508, 76, 183, 0),
(509, 76, 45, 0),
(510, 76, 205, 0),
(511, 76, 113, 0),
(512, 75, 122, 0),
(513, 75, 28, 0),
(514, 75, 170, 0),
(515, 75, 104, 0),
(516, 75, 141, 0),
(517, 75, 26, 0),
(518, 74, 93, 0),
(519, 74, 120, 0),
(520, 74, 91, 0),
(521, 74, 7, 0),
(522, 74, 42, 0),
(523, 74, 148, 0),
(524, 74, 200, 0),
(525, 74, 32, 0),
(526, 73, 195, 0),
(527, 73, 167, 0),
(528, 73, 213, 0),
(529, 73, 136, 0),
(530, 73, 173, 0),
(531, 73, 94, 0),
(532, 83, 252, 0),
(533, 83, 82, 0),
(534, 83, 13, 0),
(535, 83, 129, 0),
(536, 83, 128, 0),
(537, 83, 222, 0),
(538, 83, 225, 0),
(539, 83, 126, 0),
(540, 83, 130, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_npcs`
--

CREATE TABLE `tt_npcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patch` float DEFAULT NULL,
  `r1` int(11) DEFAULT '0',
  `r2` int(11) DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_npcs`
--

INSERT INTO `tt_npcs` (`id`, `icon`, `name`, `location`, `patch`, `r1`, `r2`, `deleted`) VALUES
(1, NULL, 'Vorsaile Heuloix', 'New Gridania (9, 11)', 2.51, 17, 1, 0),
(2, NULL, 'Indolent Imperial', 'Mor Dhona (11, 17)', 2.51, 17, 1, 0),
(3, NULL, 'Ruhtwyda of the Three Hearts', 'Gold Saucer (3, 7)', 2.51, 17, 27, 0),
(4, NULL, 'Marcette', 'Central Shroud (15, 18)', 2.51, 18, 1, 0),
(5, NULL, 'Swift', 'Ul\'dah - Steps of Nald (8, 8)', 2.51, 18, 1, 0),
(6, NULL, 'Hab', 'Southern Thanalan (24, 40)', 2.51, 19, 1, 0),
(7, NULL, 'Landenel', 'South Shroud (16, 28)', 2.51, 18, 20, 0),
(8, NULL, 'Buscarron', 'South Shroud (17, 20)', 2.51, 21, 1, 0),
(9, NULL, 'Ourdilic', 'Coerthas Central Highlands (6, 22)', 2.51, 21, 1, 0),
(10, NULL, 'King Elmer III', 'Gold Saucer (3, 7)', 2.51, 22, 1, 0),
(11, NULL, 'Rowena', 'Mor Dhona (21, 5)', 2.51, 25, 25, 0),
(12, NULL, 'Sezul Totoloc', 'North Shroud (24, 23)', 2.51, 22, 26, 0),
(13, NULL, 'R\'ashaht Rhiki', 'Limsa Lominsa Upper Decks (13, 12)', 2.51, 22, 26, 0),
(14, NULL, 'Gegeruju', 'Eastern La Noscea (35, 30)', 2.51, 27, 28, 0),
(15, NULL, 'Aurifort of the Three Clubs', 'Gold Saucer (4, 7)', 2.51, 21, 29, 0),
(16, NULL, 'Triple Triad Master', 'Gold Saucer (4, 7)', 2.51, 16, 1, 0),
(17, NULL, 'Jonas of the Three Spades', 'Gold Saucer (4, 7)', 2.51, 16, 26, 0),
(18, NULL, 'Maisenta', 'New Gridania (11, 11)', 2.51, 16, 1, 0),
(19, NULL, 'Roger', 'Central Thanalan (19, 20)', 2.51, 16, 1, 0),
(20, NULL, 'Memeroon', 'Upper La Noscea (14, 24)', 2.51, 16, 1, 0),
(21, NULL, 'Guhtwint of the Three Diamonds', 'Gold Saucer (4, 7)', 2.51, 22, 29, 0),
(22, NULL, 'Mother Miounne', 'New Gridania (11, 13)', 2.51, 29, 1, 0),
(23, NULL, 'Momodi', 'Ul\'dah - Steps of Nald (11,9)', 2.51, 29, 1, 0),
(24, NULL, 'F\'hobhas', 'Central Thanalan (23, 13)', 2.51, 29, 1, 0),
(25, NULL, 'Wymond', 'Ul\'dah - Steps of Nald (9, 8)', 2.51, 29, 1, 0),
(26, NULL, 'Trachtoum', 'Lower La Noscea (35, 15)', 2.51, 29, 1, 0),
(27, NULL, 'Joellaut', 'Coerthas Central Highlands (13, 15)', 2.51, 29, 1, 0),
(28, NULL, 'Helmhart', 'Eastern Thanalan (20, 21)', 2.51, 29, 1, 0),
(29, NULL, 'Fufulupa', 'Western Thanalan (22, 17)', 2.51, 29, 1, 0),
(30, NULL, 'Baderon', 'Limsa Lominsa Upper Decks (11, 11)', 2.51, 29, 1, 0),
(31, NULL, 'Mimidoa', 'Lower La Noscea (25, 35)', 2.51, 29, 1, 0),
(32, NULL, 'Piralnaut', 'East Shroud (17, 26)', 2.51, 29, 1, 0),
(33, NULL, 'Idle Imperial', 'Azys Lla (28, 31)', 3, 17, 23, 0),
(34, NULL, 'Yellow Moon', 'Ul\'dah - Steps of Thal (14, 13)', 3, 17, 28, 0),
(35, NULL, 'Yayake', 'Ul\'dah - Steps of Nald (7, 12)', 3, 18, 25, 0),
(36, NULL, 'Noes', 'Old Gridania (10, 5)', 3, 19, 22, 0),
(37, NULL, 'Marielle', 'The Sea of Clouds (17, 37)', 3, 21, 1, 0),
(38, NULL, 'Marcechamp', 'The Dravanian Forelands (31, 22)', 3, 22, 24, 0),
(39, NULL, 'Gibrillont', 'Foundation (13-12)', 3, 25, 1, 0),
(40, NULL, 'Midnight Dew', 'Idyllshire (5, 6)', 3, 25, 25, 0),
(41, NULL, 'Mogmill', 'The Churning Mists (28, 35)', 3, 25, 25, 0),
(42, NULL, 'Wawalago', 'Limsa Lominsa Lower Decks (8, 15)', 3, 18, 28, 0),
(43, NULL, 'Voracious Vath', 'The Dravanian Forelands (23, 19)', 3.1, 17, 28, 0),
(44, NULL, 'Lewena', 'Gold Saucer (4, 6)', 3.1, 18, 20, 0),
(45, NULL, 'Dominiac', 'Coerthas Western Highlands (16, 22)', 3.1, 21, 1, 0),
(46, NULL, 'Elaisse', 'The Pillars (7-10)', 3.1, 18, 22, 0),
(47, NULL, 'Seika', 'Idyllshire (6, 7)', 3.1, 18, 24, 0),
(48, NULL, 'Laniaitte', 'The Sea of Clouds (17, 37)', 3.1, 22, 26, 0),
(49, NULL, 'House Fortemps Manservant', 'Fortemps Manor, The Pillars (11, 11)', 3.2, 16, 22, 0),
(50, NULL, 'Linu Vali', 'The Sea of Clouds (6, 14)', 3.2, 18, 24, 0),
(51, NULL, 'Vath Deftarm', 'The Dravanian Forelands (23, 19)', 3.2, 25, 1, 0),
(52, NULL, 'Klynthota', 'Mor Dhona (30, 13)', 3.2, 22, 28, 0),
(53, NULL, 'Tapklix', 'The Dravanian Hinterlands (21, 18)', 3.2, 26, 28, 0),
(54, NULL, 'O\'kalkaya', 'Limsa Lominsa Upper Decks (11, 14)', 3.3, 22, 25, 0),
(55, NULL, 'Master Mogzin', 'The Churning Mists (15, 28)', 3.3, 22, 26, 0),
(56, NULL, 'Mordyn', 'Limsa Lominsa Upper Decks (11, 8)', 3.3, 26, 28, 0),
(57, NULL, 'Wyra \'Greenhands\' Lyehga', 'The Battlehall', 3.4, 16, 26, 0),
(58, NULL, 'Hall Overseer', 'The Battlehall', 3.4, 18, 20, 0),
(59, NULL, 'Prideful Stag', 'The Battlehall', 3.4, 22, 1, 0),
(60, NULL, 'Nell Half-full', 'The Battlehall', 3.4, 22, 26, 0),
(61, NULL, 'Flichoirel The Lordling', 'The Battlehall', 3.4, 1, 1, 0),
(62, NULL, 'Kiuka', 'Doman Enclave (5, 4)', 4, 18, 1, 0),
(63, NULL, 'Tsuzura', 'The Ruby Sea (28, 16)', 4, 18, 25, 0),
(64, NULL, 'Imperial Deserter', 'The Lochs (33, 30)', 4, 20, 1, 0),
(65, NULL, 'Ogodei', 'The Azim Steppe (22, 20)', 4, 20, 22, 0),
(66, NULL, 'Garima', 'The Fringes (28, 20)', 4, 17, 22, 0),
(67, NULL, 'Gyoei', 'Yanxia (15, 31)', 4, 22, 24, 0),
(68, NULL, 'Kotokaze', 'Kugane (10, 10)', 4, 26, 1, 0),
(69, NULL, 'Munglig', 'The Azim Steppe (12, 33)', 4, 18, 26, 0),
(70, NULL, 'Nigen', 'The Azim Steppe (32, 11)', 4, 22, 26, 0),
(71, NULL, 'Kaizan', 'The Ruby Sea (22, 8)', 4, 19, 28, 0),
(72, NULL, 'Ercanbald', 'Rhalgr', 4, 1, 1, 0),
(73, NULL, 'Yusui', 'The Ruby Sea (31.5, 37.1)', 4.2, 22, 1, 0),
(74, NULL, 'Isobe', 'The Ruby Sea (21.3, 19.5)', 4.2, 22, 28, 0),
(75, NULL, 'Masatsuchi', 'Yanxia (29.5, 20.2)', 4.2, 26, 1, 0),
(76, NULL, 'Umber Torrent', 'The Lochs (16.4, 24.6)', 4.2, 22, 26, 0),
(77, NULL, 'Kikimo', 'Kugane (8.6, 14)', 4.2, 20, 28, 0),
(78, NULL, 'Farel after edit', 'dududu', 5.1, 1, 1, 1),
(79, NULL, 'Guy with rules, with them being removed', 'rules rules', 6, 1, 1, 1),
(80, NULL, 'Guy without rules, with the rules being added', 'ruleless', 6.1, 29, 1, 1),
(82, NULL, 'example!', 'werwer \"\"\"  dadaada \'\'\'\'\'\'\'\'\'\'   llalala', 6, 1, 1, 1),
(81, NULL, '123 testing', '', 6, 12, 1, 1),
(83, NULL, 'Hachinan', 'Yanxia (26.5, 12.9)', 4.4, 17, 20, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_rights`
--

CREATE TABLE `tt_rights` (
  `right_id` int(5) NOT NULL DEFAULT '0',
  `user_id` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_rules`
--

CREATE TABLE `tt_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tt_rules`
--

INSERT INTO `tt_rules` (`id`, `name`) VALUES
(1, ''),
(16, 'All Open'),
(17, 'Ascension'),
(18, 'Chaos'),
(19, 'Descension'),
(20, 'Fallen Ace'),
(21, 'Order'),
(22, 'Plus'),
(23, 'Random'),
(24, 'Reverse'),
(25, 'Roulette'),
(26, 'Same'),
(27, 'Sudden Death'),
(28, 'Swap'),
(29, 'Three Open');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tt_sections`
--

CREATE TABLE `tt_sections` (
  `right_id` int(5) NOT NULL,
  `right_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `button` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `editform` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` varchar(3) COLLATE utf8_unicode_ci DEFAULT '00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tt_admins`
--
ALTER TABLE `tt_admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `tt_attribute`
--
ALTER TABLE `tt_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_cards`
--
ALTER TABLE `tt_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_card_npc`
--
ALTER TABLE `tt_card_npc`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tt_npcs`
--
ALTER TABLE `tt_npcs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_rights`
--
ALTER TABLE `tt_rights`
  ADD UNIQUE KEY `right_id` (`right_id`,`user_id`);

--
-- Indeksy dla tabeli `tt_rules`
--
ALTER TABLE `tt_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `tt_sections`
--
ALTER TABLE `tt_sections`
  ADD PRIMARY KEY (`right_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tt_admins`
--
ALTER TABLE `tt_admins`
  MODIFY `user_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `tt_attribute`
--
ALTER TABLE `tt_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `tt_cards`
--
ALTER TABLE `tt_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT dla tabeli `tt_card_npc`
--
ALTER TABLE `tt_card_npc`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;

--
-- AUTO_INCREMENT dla tabeli `tt_npcs`
--
ALTER TABLE `tt_npcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT dla tabeli `tt_rules`
--
ALTER TABLE `tt_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `tt_sections`
--
ALTER TABLE `tt_sections`
  MODIFY `right_id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
