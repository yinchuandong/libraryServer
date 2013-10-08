-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 10 月 08 日 16:54
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
  `intro` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `gw_book`
--

INSERT INTO `gw_book` (`id`, `title`, `author`, `publisher`, `url`, `isbn`, `callNumber`, `cover`, `intro`) VALUES
(1, 'PHP设计模式', '萨莱', '清华大学出版社', 'http://book.douban.com/subject/4865086/', '978-7-302-22843-1', 'TP312PH 126', 'http://img5.douban.com/mpic/s6180749.jpg', NULL),
(2, 'PHP Web 2.0开发实战', '泽瓦斯', '电子工艺出版社', 'http://opac.gdufs.edu.cn:8991/F/7372669D8MLXBLED2TG4QQTMJ9DXHMBGJQP2U4XG34PN5I3L8Q-21729?func=direct&doc_number=000355807&format=999&local_base=GWD01', '978-7-115-18731-4', 'TP312PH 105', 'http://lib.yinchuandong.com/Upload/cover_2.png', NULL),
(9, 'PHP和MySQL Web开发（原书第四版）', 'Luke Welling / Laura Thomson ', '机械工业出版社', 'http://book.douban.com/subject/3549421/', '978-7-111-26281-7', 'TP312PH 105', 'http://img3.douban.com/mpic/s3773304.jpg', NULL),
(10, ' 细说php', '高洛峰', '电子工艺出版社', 'http://book.douban.com/subject/4090200/', '978-7-121-09441-5', NULL, 'http://img4.douban.com/mpic/s6080118.jpg', NULL),
(11, 'Java编程思想', '[美]Bruce Eckel ', '机械工业出版社', 'http://book.douban.com/subject/2130190/', '978-7-111-21382-6', NULL, 'http://img3.douban.com/mpic/s2553047.jpg', NULL),
(12, '深入Java虚拟机', '（美）文纳斯', '机械工业出版社', 'http://book.douban.com/subject/1138768/', '978-7-111-12805-2', NULL, 'http://img4.douban.com/mpic/s9845378.jpg', NULL),
(13, '疯狂Android讲义', ' 李刚 ', '电子工业', 'http://book.douban.com/subject/6515839/', '978-7-121-13576-7', NULL, 'http://img5.douban.com/mpic/s6641009.jpg', NULL),
(14, '深入理解Android', '邓凡平 ', '机械工业出版社', 'http://book.douban.com/subject/6802440/', '978-7-111-35762-9', NULL, 'http://img3.douban.com/mpic/s11171603.jpg', NULL),
(15, 'C程序设计语言', '（美）Brian W. Kernighan / （美）Dennis M. Ritchie ', '机械工业出版社', 'http://book.douban.com/subject/1139336/', ' 978-7-111-12806-9', NULL, 'http://img3.douban.com/mpic/s1106934.jpg', NULL),
(16, 'Windows程序设计', '(美)Jeff Prosise ', '清华大学出版社', 'http://book.douban.com/subject/2115192/', '978-7-302-15042-8', NULL, 'http://img3.douban.com/mpic/s24223223.jpg', NULL),
(17, '深入解析MFC', 'George Shepherd Scot Wingo(美) ', '中国电力出版社', 'http://book.douban.com/subject/1237128/', '978-7-508-31800-4', NULL, 'http://img3.douban.com/mpic/s9846070.jpg', NULL),
(18, 'C++ Primer', ' Stanley B. Lippman / Josée Lajoie / Barbara E. Moo ', 'Addison-Wesley Professional', 'http://book.douban.com/subject/1415354/', '978-0-201-72148-5', NULL, 'http://img3.douban.com/mpic/s4463651.jpg', NULL),
(19, 'C++标准程序库', '[德] Nicolai M. Josuttis ', '华中科技大学出版社', 'http://book.douban.com/subject/1110941/', '978-7-560-92782-4', NULL, 'http://img5.douban.com/mpic/s1092079.jpg', NULL),
(20, 'Python核心编程（第二版）', '[美]Wesley J. Chun（陳仲才） ', '人民邮电出版社', 'http://book.douban.com/subject/3112503/', '978-7-115-17850-3', NULL, 'http://img3.douban.com/mpic/s3140466.jpg', NULL),
(21, 'Python语言入门', '[美] Mark Lutz / David Ascber ', '中国电力出版社', 'http://book.douban.com/subject/1239501/', ' 978-7-508-30580-6', NULL, 'http://img3.douban.com/mpic/s1318070.jpg', NULL),
(22, '可爱的Python', '哲思社区 ', '电子工业出版社', 'http://book.douban.com/subject/3884108/', '978-7-121-08514-7', NULL, 'http://img3.douban.com/mpic/s3901817.jpg', NULL),
(23, 'Linux/Unix设计思想', '甘卡兹 ', '人民邮电', 'http://book.douban.com/subject/7564417/', '978-7-115-26692-7', NULL, 'http://img3.douban.com/mpic/s9022362.jpg', NULL),
(24, '鸟哥的Linux私房菜.基础学习篇（第三版）', '鸟哥 ', '人民邮电出版社', 'http://book.douban.com/subject/4889838/', '978-7-115-22626-6', NULL, 'http://img3.douban.com/mpic/s4399937.jpg', NULL),
(25, 'TCP/IP详解 卷1：协议', ' W.Richard Stevens ', '机械工业出版社', 'http://book.douban.com/subject/1088054/', '978-7-111-07566-0', NULL, 'http://img3.douban.com/mpic/s1543906.jpg', NULL),
(26, 'TCP/IP详解 卷2：实现', '史蒂文斯 ', ' 机械工业出版社', 'http://book.douban.com/subject/1087767/', '978-7-111-07567-7', NULL, 'http://img3.douban.com/mpic/s2414170.jpg', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
