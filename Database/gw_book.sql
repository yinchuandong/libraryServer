-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 09 月 25 日 17:16
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
-- 表的结构 `gw_book`
--

CREATE TABLE IF NOT EXISTS `gw_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `callNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gw_book`
--

INSERT INTO `gw_book` (`id`, `title`, `author`, `publisher`, `url`, `isbn`, `callNumber`, `cover`) VALUES
(1, 'PHP设计模式', '萨莱', '清华大学出版社', 'http://opac.gdufs.edu.cn:8991/F/7372669D8MLXBLED2TG4QQTMJ9DXHMBGJQP2U4XG34PN5I3L8Q-21723?func=direct&doc_number=000408695&format=999&local_base=GWD01', '978-7-302-22843-1', 'TP312PH 126', 'cover_1.png'),
(2, 'PHP Web 2.0开发实战', '泽瓦斯', '电子工艺出版社', 'http://opac.gdufs.edu.cn:8991/F/7372669D8MLXBLED2TG4QQTMJ9DXHMBGJQP2U4XG34PN5I3L8Q-21729?func=direct&doc_number=000355807&format=999&local_base=GWD01', '978-7-115-18731-4', 'TP312PH 105', 'cover_2.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
