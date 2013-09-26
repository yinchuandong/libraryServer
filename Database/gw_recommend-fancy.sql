-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 09 月 26 日 09:21
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `recommendisbn` text COLLATE utf8_unicode_ci NOT NULL,
  `schoolId` int(11) NOT NULL DEFAULT '0',
  `recommendTime` int(20) DEFAULT NULL,
  PRIMARY KEY (`bookId`,`studentNumber`,`schoolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `gw_recommend`
--

INSERT INTO `gw_recommend` (`bookId`, `studentNumber`, `recommendisbn`, `schoolId`, `recommendTime`) VALUES
(0, '20101003608', '', 1, 1380167110),
(0, '20101003852', '', 1, 1380167110),
(0, '20110200959', '', 1, 1380167110),
(0, '20111003443', '', 1, 1380167110),
(0, '20111003444', '7-5024-3282-5:978-7-115-22578-8:978-7-302-22843-1:978-7-5084-6989-8:978-7-115-18731-4:978-7-89485-753-8', 1, 1380167110),
(0, '20111003623', '', 1, 1380167111),
(0, '20111003625', '', 1, 1380167111),
(0, '20111003636', '', 1, 1380167111),
(0, '20111003653', '', 1, 1380167111),
(1, '20111003632', '123455678890cchh', 1, 1380167111);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
