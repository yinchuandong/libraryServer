-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 10 月 10 日 22:21
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=95 ;

--
-- 转存表中的数据 `gw_book`
--

INSERT INTO `gw_book` (`id`, `title`, `author`, `publisher`, `url`, `isbn`, `callNumber`, `cover`, `intro`) VALUES
(1, 'PHP设计模式', '萨莱', '清华大学 ', 'http://book.douban.com/subject/4865086/', '978-7-302-22843-1', 'TP312PH 126', 'http://img5.douban.com/mpic/s6180749.jpg', NULL),
(2, 'PHP Web 2.0开发实战', '泽瓦斯', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3229992/', '978-7-115-18731-4', 'TP312PH 105', 'http://img3.douban.com/mpic/s9114674.jpg', NULL),
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
(26, 'TCP/IP详解 卷2：实现', '史蒂文斯 ', ' 机械工业出版社', 'http://book.douban.com/subject/1087767/', '978-7-111-07567-7', NULL, 'http://img3.douban.com/mpic/s2414170.jpg', NULL),
(42, 'C++习题与解答', '李代平', '冶金工业出版社 ', 'http://book.douban.com/subject/1624674/', '7-5024-3282-5', 'TP312C++ 551-2', 'http://img3.douban.com/mpic/s23685793.jpg', NULL),
(43, '出现频率最高的100种典型题型精解精练', '余雪勇', '清华大学 ', 'http://book.douban.com/subject/2974607/', '978-7-302-16678-8', 'TP312C-44 36', 'http://img3.douban.com/mpic/s5864817.jpg', NULL),
(44, '数据结构课程设计案例精编', '李建学', '清华大学 ', 'http://book.douban.com/subject/2013616/', '978-7-89486-274-7', 'TP311.12 182', 'http://img3.douban.com/mpic/s5752742.jpg', NULL),
(45, '精通SQL', '高守传', '人民邮电出版社 ', 'http://book.douban.com/subject/1086439/', '7-115-09210-9', 'TP392 607', 'http://img3.douban.com/mpic/s1072965.jpg', NULL),
(46, '电子电路基础', '刘宝玲', ' 清华大学出版社 ', 'http://book.douban.com/subject/3171563/', '7-111-03381-7', 'TN7 17', 'http://img3.douban.com/mpic/s5923554.jpg', NULL),
(47, 'JavaScript网页特效范例宝典', '明日科技', '人民邮电 ', 'http://book.douban.com/subject/2208573/', '978-7-89488-678-1', 'TP312JA 910', 'http://img3.douban.com/mpic/s9168755.jpg', NULL),
(48, 'PHP+Ajax Web 2.0编程技术与项目开发大全', '叶新伟', NULL, 'http://book.douban.com/subject/3109224/', '978-7-89485-753-8', 'TP312PH 96', 'http://img3.douban.com/mpic/s6510705.jpg', NULL),
(49, 'JavaScript精彩网页特效实例精粹', '张涛', '人民邮电 ', 'http://book.douban.com/subject/2280546/', '978-7-89488-747-4', 'TP312JA 984', 'http://img5.douban.com/mpic/s10426769.jpg', NULL),
(50, 'PHP深度分析', '沙菲克', NULL, 'http://book.douban.com/subject/4212867/', '978-7-5084-6989-8', 'TP312PH 117', 'http://img3.douban.com/mpic/s4147005.jpg', NULL),
(51, '深入PHP', '赞德斯彻', ' 人民邮电出版社 ', 'http://book.douban.com/subject/4746407/', '978-7-115-22578-8', 'TP312PH 128', 'http://img3.douban.com/mpic/s4261122.jpg', NULL),
(52, '正则表达式必知必会', '福尔塔', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2269648/', '978-7-115-16474-2', 'TP301.2 12', 'http://img3.douban.com/mpic/s2794811.jpg', NULL),
(53, 'C++程序设计与应用', '周仲宁', '清华大学出版社 ', 'http://book.douban.com/subject/1247309/', '7-5053-7829-5', 'TP312C# 23', 'http://img3.douban.com/mpic/s25045940.jpg', NULL),
(54, 'JavaScript实例自学手册', '吴雪', NULL, 'http://book.douban.com/subject/2981955/', '978-7-89485-546-6', 'TP312JA 1012', 'http://img3.douban.com/mpic/s10383927.jpg', NULL),
(55, '英语词汇宝典', '尤克强', '清华大学出版社 ', 'http://book.douban.com/subject/1727024/', '7-302-07118-7', 'H313.1 331', 'http://img3.douban.com/mpic/s24572874.jpg', NULL),
(56, '口笔译高频词汇词典', '王斌华', '武汉大学出版社 ', 'http://book.douban.com/subject/4297128/', '978-7-307-07445-3', 'H313 997', 'http://img3.douban.com/mpic/s4341952.jpg', NULL),
(57, '电子电路基础', '刘宝玲', ' 清华大学出版社 ', 'http://book.douban.com/subject/3171563/', '7-04-005204-0', 'TN7 60-2', 'http://img3.douban.com/mpic/s5923554.jpg', NULL),
(58, '电子技术基础', '康华光,', '高等教育出版社 ', 'http://book.douban.com/subject/1836441/', '', 'TN1-44 7', 'http://img5.douban.com/mpic/s25506649.jpg', NULL),
(59, '计算机软件技术基础', '李淑芬', ' 机械工业出版社 ', 'http://book.douban.com/subject/1052241/', '7-309-01004-3', 'TP31 318', 'http://img3.douban.com/mpic/s1074361.jpg', NULL),
(60, 'C语言详解', '汉利', '人民邮电 ', 'http://book.douban.com/subject/2304405/', '978-7-115-16427-8', 'TP312C 700', 'http://img3.douban.com/mpic/s8886953.jpg', NULL),
(61, 'CSS入门经典', '巴特利特', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2022572/', '978-7-115-15750-8', 'TP393.092 1634', 'http://img3.douban.com/mpic/s5816254.jpg', NULL),
(62, 'CSS & DHTML动态网页教程', '四海工作室', '巴蜀书社 ', 'http://book.douban.com/subject/1240826/', '7-03-010150-2', 'TP393.092 448', 'http://img3.douban.com/mpic/s9762690.jpg', NULL),
(63, 'C++程序设计基础案例教程', '于永彦', NULL, 'http://book.douban.com/subject/3518107/', '978-7-301-14510-4', 'TP312C++ 983', 'http://img3.douban.com/mpic/s5988413.jpg', NULL),
(64, 'C++面向对象程序设计', '萨维茨基', '北京航空航天大学出版社 ', 'http://book.douban.com/subject/1032629/', '7-81012-867-1', 'TP312C++ 199', 'http://img3.douban.com/mpic/s1023534.jpg', NULL),
(65, 'PHP 6与MySQL 5基础教程', '厄尔曼', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3269865/', '978-7-115-18854-0', 'TP312 408', 'http://img5.douban.com/mpic/s3408029.jpg', NULL),
(66, 'PHP网络编程技术与实例', '曹衍龙', '机械工业出版社 ', 'http://book.douban.com/subject/20370984/', '7-89488-014-0', 'TP312PH 60', 'http://img3.douban.com/mpic/s25137367.jpg', NULL),
(67, 'C++语言习题与解析', '李春葆', '清华大学出版社 ', 'http://book.douban.com/subject/1913358/', '7-302-13313-1', 'TP312C++ 784', 'http://img3.douban.com/mpic/s10065214.jpg', NULL),
(68, 'JavaScript完全自学宝典', '陈衍卿', NULL, 'http://book.douban.com/subject/10742073/', '978-7-89474-006-9', 'TP312JA 1010', 'http://img3.douban.com/mpic/s9116935.jpg', NULL),
(69, '精通Java手机游戏与应用程序设计', '陈立伟', ' 中国青年出版社 ', 'http://book.douban.com/subject/1653474/', '7-900162-55-0', 'TP312JA 566', 'http://img3.douban.com/mpic/s1526941.jpg', NULL),
(70, 'SQL Server 2005中文版基础教程', '黄开枝', NULL, 'http://book.douban.com/subject/4835756/', '978-7-89486-478-9', 'TP311.138SQ 303', 'http://img3.douban.com/mpic/s6161827.jpg', NULL),
(71, 'PHP开发典型模块大全', '邹天思', ' 人民邮电 ', 'http://book.douban.com/subject/4835721/', '978-7-89479-997-5', 'TP312PH 129', 'http://img3.douban.com/mpic/s4399181.jpg', NULL),
(72, 'MFC 编程技巧与范例详解', '曾凡锋', '清华大学出版社 ', 'http://book.douban.com/subject/3264493/', '978-7-89474-172-1', 'TP312C 792', 'http://img3.douban.com/mpic/s5952165.jpg', NULL),
(73, 'PHP+MySQL经典案例剖析', '陈军', ' 人民邮电 ', 'http://book.douban.com/subject/2338470/', '978-7-89486-695-0', 'TP312PH 84', 'http://img3.douban.com/mpic/s5772862.jpg', NULL),
(74, '通信原理', '钟晓玲', '国防工业出版社 ', 'http://book.douban.com/subject/1933520/', '7-118-00348-4', 'TN911 67-3', 'http://img4.douban.com/mpic/s24223188.jpg', NULL),
(75, 'Java开发技术大全', '刘新', '清华大学出版社 ', 'http://book.douban.com/subject/3507767/', '978-7-89474-346-6', 'TP312JA 1142', 'http://img3.douban.com/mpic/s5992012.jpg', NULL),
(76, 'jQuery JavaScript与CSS开发入门经典', '约克', NULL, 'http://book.douban.com/subject/5330278/', '978-7-302-23303-9', 'TP312JA 1399', 'http://img3.douban.com/mpic/s6235221.jpg', NULL),
(77, 'MySQL必知必会', '福塔', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3354490/', '978-7-115-19112-0', 'TP311.138SQ 392', 'http://img3.douban.com/mpic/s5968156.jpg', NULL),
(78, '游戏编程All in One', '苏译,', '重庆大学出版社 ', 'http://book.douban.com/subject/1706699/', '7-900676-26-0', 'TP311.5 268', 'http://img3.douban.com/mpic/s5646486.jpg', NULL),
(79, '精通SQL Server 2008', '李', NULL, 'http://book.douban.com/subject/4908226/', '978-7-302-22640-6', 'TP311.138SQ 472', 'http://img3.douban.com/mpic/s6191577.jpg', NULL),
(80, 'SQL Server 2008中文版从入门到精通', '崔群法', NULL, 'http://book.douban.com/subject/3578160/', '978-7-121-08225-2', 'TP311.138SQ 407', 'http://img4.douban.com/mpic/s9350548.jpg', NULL),
(81, 'PHP内容管理系统', '陈红飞', NULL, 'http://book.douban.com/subject/3339178/', '978-7-121-07658-9', 'TP312PH 110', 'http://img3.douban.com/mpic/s3407744.jpg', NULL),
(82, '游戏编程数学和物理基础', '斯塔勒', '徐明亮 ', 'http://book.douban.com/subject/3078955/', '978-7-89482-420-2', 'TP301.6 109', 'http://img3.douban.com/mpic/s24444712.jpg', NULL),
(83, 'Android编程典型实例与项目开发', '吴亚峰', NULL, 'http://book.douban.com/subject/6863195/', '978-7-121-14496-7', 'TN929.53 176', 'http://img3.douban.com/mpic/s8477782.jpg', NULL),
(84, 'Google Android SDK开发实战演练', '何孟翰', '王世江 ', 'http://book.douban.com/subject/10517158/', '978-7-115-27334-5', 'TN929.53 246', 'http://img3.douban.com/mpic/s8883467.jpg', NULL),
(85, 'jQuery Mobile快速入门', '布劳利克', '人民邮电 ', 'http://book.douban.com/subject/10593496/', '978-7-115-27718-3', 'TN929.53 242', 'http://img3.douban.com/mpic/s10345963.jpg', NULL),
(86, '中国哲学概论', '李景林', '北京大学出版社 ', 'http://book.douban.com/subject/1621683/', '7-301-08210-X', 'B2 94', 'http://img3.douban.com/mpic/s5679724.jpg', NULL),
(87, '犀利开发', '朱印宏', '清华大学出版社 ', 'http://book.douban.com/subject/5063431/', '978-7-89444-068-6', 'TP312JA 1366', 'http://img3.douban.com/mpic/s6229096.jpg', NULL),
(88, 'Android应用开发范例精解', '高彩丽', NULL, 'http://book.douban.com/subject/10534310/', '978-7-302-27600-5', 'TN929.53 204', 'http://img3.douban.com/mpic/s10346732.jpg', NULL),
(89, '数据结构', '马利克,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139426/', '7-313-00101-0', 'TP312C 12', 'http://img3.douban.com/mpic/s1106991.jpg', NULL),
(90, 'Struts 2技术详解', '闫术卓', NULL, 'http://book.douban.com/subject/5353188/', '978-7-89485-749-1', 'TP311.56 734', 'http://img3.douban.com/mpic/s6245894.jpg', NULL),
(91, '精通Java EE', '叶健毅', NULL, 'http://book.douban.com/subject/3352876/', '978-7-89488-867-9', 'TP312JA 980', 'http://img3.douban.com/mpic/s10403223.jpg', NULL),
(92, 'JSP项目开发全程实录', '周桓', NULL, 'http://book.douban.com/subject/3076946/', '978-7-89486-924-1', 'TP312JA 1009', 'http://img3.douban.com/mpic/s3280831.jpg', NULL),
(93, 'JSP数据库系统开发案例精选', '王国辉', '人民邮电出版社 ', 'http://book.douban.com/subject/1801278/', '7-89488-078-7', 'TP393.092 1198', 'http://img3.douban.com/mpic/s24436676.jpg', NULL),
(94, '基于Eclipse环境的企业应用开发', '万辉', NULL, 'http://book.douban.com/subject/3248818/', '978-7-302-18417-1', 'TP311.56 732', 'http://img3.douban.com/mpic/s5944011.jpg', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
