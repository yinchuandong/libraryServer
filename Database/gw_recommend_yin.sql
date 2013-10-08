-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 10 月 08 日 16:56
-- 服务器版本: 5.5.32-0ubuntu0.13.04.1
-- PHP 版本: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `gw_library`
--

-- --------------------------------------------------------

--
-- 表的结构 `gw_recommend`
--

CREATE TABLE IF NOT EXISTS `gw_recommend` (
  `bookId` int(11) NOT NULL DEFAULT '0',
  `studentNumber` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `schoolId` int(11) NOT NULL DEFAULT '0',
  `recommendTime` datetime DEFAULT NULL,
  PRIMARY KEY (`bookId`,`studentNumber`,`schoolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `gw_recommend`
--

INSERT INTO `gw_recommend` (`bookId`, `studentNumber`, `schoolId`, `recommendTime`) VALUES
(1, '20111003632', 1, '2013-09-25 16:26:09'),
(1, '20111003635', 1, '2013-09-29 00:00:00'),
(2, '20111003632', 1, '2013-09-25 16:26:24'),
(9, '20111003632', 1, '2013-09-25 21:30:35'),
(9, '20111003635', 1, '2013-09-28 15:55:43'),
(9, 'D1130581400', 2, '2013-09-28 21:12:42'),
(10, '20111003632', 1, '2013-09-25 21:40:31'),
(10, '20111003635', 1, '2013-09-28 15:54:40'),
(10, 'D1130581400', 2, '2013-09-28 21:12:46'),
(11, '20111003632', 1, '2013-09-25 21:40:34'),
(11, '20111003635', 1, '2013-09-28 15:55:45'),
(12, '20111003632', 1, '2013-09-25 21:40:38'),
(13, '20111003635', 1, '2013-09-28 15:55:49'),
(13, 'D1130581400', 2, '2013-09-28 21:11:19'),
(14, '20111003635', 1, '2013-09-28 15:55:00'),
(16, 'D1130581400', 2, '2013-09-28 21:10:09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
