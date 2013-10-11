-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 10 月 10 日 22:39
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

-- --------------------------------------------------------

--
-- 表的结构 `gw_history`
--

CREATE TABLE IF NOT EXISTS `gw_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '学号',
  `schoolId` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '书名',
  `author` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者',
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '对应书的链接',
  `isbn` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '索书号',
  `ordered` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13925 ;

--
-- 转存表中的数据 `gw_history`
--

INSERT INTO `gw_history` (`id`, `studentNumber`, `schoolId`, `title`, `author`, `url`, `isbn`, `callNumber`, `ordered`) VALUES
(13654, '20111003632', 1, 'C++程序设计教程实验指导及习题解答', '刘慧宁', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51071?func=direct&doc_number=000361894&format=999&local_base=GWD01', NULL, NULL, 22),
(13655, '20111003632', 1, 'C++习题与解答', '李代平', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51068?func=direct&doc_number=000332982&format=999&local_base=GWD01', '7-5024-3282-5', 'TP312C++ 551-2', 21),
(13656, '20111003632', 1, '出现频率最高的100种典型题型精解精练', '余雪勇', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51065?func=direct&doc_number=000305472&format=999&local_base=GWD01', '978-7-302-16678-8', 'TP312C-44 36', 20),
(13657, '20111003632', 1, '对联入门', '谷向阳,', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51062?func=direct&doc_number=000262728&format=999&local_base=GWD01', NULL, NULL, 19),
(13658, '20111003632', 1, '数据结构课程设计案例精编', '李建学', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51059?func=direct&doc_number=000311230&format=999&local_base=GWD01', '978-7-89486-274-7', 'TP311.12 182', 18),
(13659, '20111003632', 1, '精通SQL', '高守传', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51056?func=direct&doc_number=000276254&format=999&local_base=GWD01', '7-115-09210-9', 'TP392 607', 17),
(13660, '20111003632', 1, 'PHP Web 2.0开发实战', '泽瓦斯', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51035?func=direct&doc_number=000355807&format=999&local_base=GWD01', '978-7-115-18731-4', 'TP312PH 105', 10),
(13661, '20111003632', 1, '电子电路基础', '刘宝玲', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51050?func=direct&doc_number=000275528&format=999&local_base=GWD01', '7-04-005204-0', 'TN7 60-2', 15),
(13662, '20111003632', 1, '电子技术基础', '康华光,', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51047?func=direct&doc_number=000115316&format=999&local_base=GWD01', '7-111-03381-7', 'TN1-44 7', 14),
(13663, '20111003632', 1, 'JavaScript网页特效范例宝典', '明日科技', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51044?func=direct&doc_number=000275777&format=999&local_base=GWD01', '978-7-89488-678-1', 'TP312JA 910', 13),
(13664, '20111003632', 1, 'PHP+Ajax Web 2.0编程技术与项目开发大全', '叶新伟', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51041?func=direct&doc_number=000304626&format=999&local_base=GWD01', '978-7-89485-753-8', 'TP312PH 96', 12),
(13665, '20111003632', 1, 'JavaScript精彩网页特效实例精粹', '张涛', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51038?func=direct&doc_number=000276011&format=999&local_base=GWD01', '978-7-89488-747-4', 'TP312JA 984', 11),
(13666, '20111003632', 1, 'PHP深度分析', '沙菲克', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51032?func=direct&doc_number=000432649&format=999&local_base=GWD01', '978-7-5084-6989-8', 'TP312PH 117', 9),
(13667, '20111003632', 1, 'PHP设计模式', '萨莱', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51029?func=direct&doc_number=000408695&format=999&local_base=GWD01', '978-7-302-22843-1', 'TP312PH 126', 8),
(13668, '20111003632', 1, '深入PHP', '赞德斯彻', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51014?func=direct&doc_number=000412473&format=999&local_base=GWD01', '978-7-115-22578-8', 'TP312PH 128', 3),
(13669, '20111003632', 1, '正则表达式必知必会', '福尔塔', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51023?func=direct&doc_number=000289121&format=999&local_base=GWD01', '978-7-115-16474-2', 'TP301.2 12', 6),
(13670, '20111003632', 1, 'C++程序设计与应用', '周仲宁', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51020?func=direct&doc_number=000361895&format=999&local_base=GWD01', '7-5053-7829-5', 'TP312C# 23', 5),
(13671, '20111003632', 1, 'JavaScript实例自学手册', '吴雪', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51017?func=direct&doc_number=000283030&format=999&local_base=GWD01', '978-7-89485-546-6', 'TP312JA 1012', 4),
(13672, '20111003632', 1, '英语词汇宝典', '尤克强', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51011?func=direct&doc_number=000223988&format=999&local_base=GWD01', '7-302-07118-7', 'H313.1 331', 2),
(13673, '20111003632', 1, '口笔译高频词汇词典', '王斌华', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51008?func=direct&doc_number=000395358&format=999&local_base=GWD01', '978-7-307-07445-3', 'H313 997', 1),
(13674, '20111003632', 1, '高等学校英语专业全程通用词汇表', '《高等学校英语专业英语教学大纲》词汇表工作组', 'http://opac.gdufs.edu.cn:8991/F/6SH8NQMC1H5Y2H9CL2NKAKF7SJYMF5UYA4LLQQFXH57SA2LHXK-51005?func=direct&doc_number=000176609&format=999&local_base=GWD01', NULL, NULL, 0),
(13675, '20111003635', 1, '计算机软件技术基础', '李淑芬', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28279?func=direct&doc_number=000369079&format=999&local_base=GWD01', '7-309-01004-3', 'TP31 318', 40),
(13676, '20111003635', 1, 'C语言详解', '汉利', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28276?func=direct&doc_number=000276072&format=999&local_base=GWD01', '978-7-115-16427-8', 'TP312C 700', 39),
(13677, '20111003635', 1, 'CSS入门经典', '巴特利特', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28273?func=direct&doc_number=000276047&format=999&local_base=GWD01', '978-7-115-15750-8', 'TP393.092 1634', 38),
(13678, '20111003635', 1, 'CSS & DHTML动态网页教程', '四海工作室', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28270?func=direct&doc_number=000334683&format=999&local_base=GWD01', '7-03-010150-2', 'TP393.092 448', 37),
(13679, '20111003635', 1, 'C++程序设计基础案例教程', '于永彦', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28267?func=direct&doc_number=000362194&format=999&local_base=GWD01', '978-7-301-14510-4', 'TP312C++ 983', 36),
(13680, '20111003635', 1, 'C++面向对象程序设计', '萨维茨基', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28264?func=direct&doc_number=000271109&format=999&local_base=GWD01', '7-81012-867-1', 'TP312C++ 199', 35),
(13681, '20111003635', 1, 'PHP 6与MySQL 5基础教程', '厄尔曼', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28261?func=direct&doc_number=000355855&format=999&local_base=GWD01', '978-7-115-18854-0', 'TP312 408', 34),
(13682, '20111003635', 1, 'PHP网络编程技术与实例', '曹衍龙', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28258?func=direct&doc_number=000225375&format=999&local_base=GWD01', '7-89488-014-0', 'TP312PH 60', 33),
(13683, '20111003635', 1, 'C++语言习题与解析', '李春葆', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28255?func=direct&doc_number=000332973&format=999&local_base=GWD01', '7-302-13313-1', 'TP312C++ 784', 32),
(13684, '20111003635', 1, 'PHP数据库系统开发完全手册', '邹天思', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28252?func=direct&doc_number=000276146&format=999&local_base=GWD01', NULL, NULL, 31),
(13685, '20111003635', 1, '数据结构', '马利克,', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28249?func=direct&doc_number=000331656&format=999&local_base=GWD01', '7-313-00101-0', 'TP312C 12', 30),
(13686, '20111003635', 1, 'JavaScript完全自学宝典', '陈衍卿', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28246?func=direct&doc_number=000356375&format=999&local_base=GWD01', '978-7-89474-006-9', 'TP312JA 1010', 29),
(13687, '20111003635', 1, '数据结构', '刘大有', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28243?func=direct&doc_number=000079377&format=999&local_base=GWD01', '7-313-00101-0', 'TP312C 12', 28),
(13688, '20111003635', 1, '精通Java手机游戏与应用程序设计', '陈立伟', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28240?func=direct&doc_number=000217235&format=999&local_base=GWD01', '7-900162-55-0', 'TP312JA 566', 27),
(13689, '20111003635', 1, 'SQL Server 2005中文版基础教程', '黄开枝', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28237?func=direct&doc_number=000311293&format=999&local_base=GWD01', '978-7-89486-478-9', 'TP311.138SQ 303', 26),
(13690, '20111003635', 1, 'Visual C++开发典型模块大全', '刘锐宁', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28234?func=direct&doc_number=000355993&format=999&local_base=GWD01', NULL, NULL, 25),
(13691, '20111003635', 1, '电子技术基础', '康华光,', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28231?func=direct&doc_number=000115316&format=999&local_base=GWD01', '7-111-03381-7', 'TN1-44 7', 24),
(13692, '20111003635', 1, 'PHP开发典型模块大全', '邹天思', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28228?func=direct&doc_number=000355298&format=999&local_base=GWD01', '978-7-89479-997-5', 'TP312PH 129', 23),
(13693, '20111003635', 1, 'MFC 编程技巧与范例详解', '曾凡锋', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28225?func=direct&doc_number=000432846&format=999&local_base=GWD01', '978-7-89474-172-1', 'TP312C 792', 22),
(13694, '20111003635', 1, 'PHP+MySQL经典案例剖析', '陈军', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28222?func=direct&doc_number=000284231&format=999&local_base=GWD01', '978-7-89486-695-0', 'TP312PH 84', 21),
(13695, '20111003635', 1, '通信原理', '钟晓玲', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28219?func=direct&doc_number=000357333&format=999&local_base=GWD01', '7-118-00348-4', 'TN911 67-3', 20),
(13696, '20111003635', 1, 'Java开发技术大全', '刘新', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28216?func=direct&doc_number=000356423&format=999&local_base=GWD01', '978-7-89474-346-6', 'TP312JA 1142', 19),
(13697, '20111003635', 1, 'Java开发典型模块大全', '李钟蔚', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28213?func=direct&doc_number=000355373&format=999&local_base=GWD01', NULL, NULL, 18),
(13698, '20111003635', 1, 'jQuery JavaScript与CSS开发入门经典', '约克', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28210?func=direct&doc_number=000472189&format=999&local_base=GWD01', '978-7-302-23303-9', 'TP312JA 1399', 17),
(13699, '20111003635', 1, 'MySQL必知必会', '福塔', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28207?func=direct&doc_number=000355979&format=999&local_base=GWD01', '978-7-115-19112-0', 'TP311.138SQ 392', 16),
(13700, '20111003635', 1, '游戏编程All in One', '苏译,', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28204?func=direct&doc_number=000216834&format=999&local_base=GWD01', '7-900676-26-0', 'TP311.5 268', 15),
(13701, '20111003635', 1, '精通SQL Server 2008', '李', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28201?func=direct&doc_number=000408693&format=999&local_base=GWD01', '978-7-302-22640-6', 'TP311.138SQ 472', 14),
(13702, '20111003635', 1, 'SQL Server 2008中文版从入门到精通', '崔群法', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28198?func=direct&doc_number=000355708&format=999&local_base=GWD01', '978-7-121-08225-2', 'TP311.138SQ 407', 13),
(13703, '20111003635', 1, 'PHP内容管理系统', '陈红飞', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28195?func=direct&doc_number=000355620&format=999&local_base=GWD01', '978-7-121-07658-9', 'TP312PH 110', 12),
(13704, '20111003635', 1, '游戏编程数学和物理基础', '斯塔勒', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28192?func=direct&doc_number=000355788&format=999&local_base=GWD01', '978-7-89482-420-2', 'TP301.6 109', 11),
(13705, '20111003635', 1, 'Android编程典型实例与项目开发', '吴亚峰', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28189?func=direct&doc_number=000465463&format=999&local_base=GWD01', '978-7-121-14496-7', 'TN929.53 176', 10),
(13706, '20111003635', 1, 'Google Android SDK开发实战演练', '何孟翰', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28186?func=direct&doc_number=000475031&format=999&local_base=GWD01', '978-7-115-27334-5', 'TN929.53 246', 9),
(13707, '20111003635', 1, 'jQuery Mobile快速入门', '布劳利克', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28183?func=direct&doc_number=000490143&format=999&local_base=GWD01', '978-7-115-27718-3', 'TN929.53 242', 8),
(13708, '20111003635', 1, '中国哲学概论', '李景林', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28180?func=direct&doc_number=000400054&format=999&local_base=GWD01', '7-301-08210-X', 'B2 94', 7),
(13709, '20111003635', 1, '犀利开发', '朱印宏', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28177?func=direct&doc_number=000413500&format=999&local_base=GWD01', '978-7-89444-068-6', 'TP312JA 1366', 6),
(13710, '20111003635', 1, 'Android应用开发范例精解', '高彩丽', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28174?func=direct&doc_number=000483460&format=999&local_base=GWD01', '978-7-302-27600-5', 'TN929.53 204', 5),
(13711, '20111003625', 1, '清代文学研究集刊', '曹虹', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28475?func=direct&doc_number=000340806&format=999&local_base=GWD01', NULL, NULL, 152),
(13712, '20111003625', 1, '明清词研究史', '陈水云,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28472?func=direct&doc_number=000249332&format=999&local_base=GWD01', '7-307-05113-3', 'I207.23 82', 151),
(13713, '20111003625', 1, '中国文学史', '郑振铎,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28451?func=direct&doc_number=000385016&format=999&local_base=GWD01', '', 'K825.6 12', 144),
(13714, '20111003625', 1, 'Michael Jackson :', 'Taraborrelli, J. Randy.', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28466?func=direct&doc_number=000099500&format=999&local_base=GWD09', '978-7-5001-2477-1', 'K837.125.76=6 2', 149),
(13715, '20111003625', 1, '文言小说选', '李正民', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28463?func=direct&doc_number=000363822&format=999&local_base=GWD01', NULL, NULL, 148),
(13716, '20111003625', 1, '唐宋词在明末清初的传播与接受', '陈水云,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28460?func=direct&doc_number=000421469&format=999&local_base=GWD01', NULL, NULL, 147),
(13717, '20111003625', 1, '从零开始', '孙海侠', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28457?func=direct&doc_number=000332990&format=999&local_base=GWD01', '7-5431-0000-2', 'K825.4 23', 146),
(13718, '20111003625', 1, '史铁生作品精编', '史铁生', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28454?func=direct&doc_number=000278087&format=999&local_base=GWD01', NULL, NULL, 145),
(13719, '20111003625', 1, '辛德勒名单', '基尼利', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28448?func=direct&doc_number=000363058&format=999&local_base=GWD01', '978-7-5327-4719-1', 'I611.5 3-2', 143),
(13720, '20111003625', 1, '《人间词话》《人间词》注评', '陈鸿祥', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28223?func=direct&doc_number=000087666&format=999&local_base=GWD01', NULL, NULL, 68),
(13721, '20111003625', 1, '李煜', '檀作文,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28442?func=direct&doc_number=000247982&format=999&local_base=GWD01', '7-80665-603-0', 'I222.8 18', 141),
(13722, '20111003625', 1, '纳兰词典评', '苏樱,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28439?func=direct&doc_number=000300882&format=999&local_base=GWD01', '978-7-5613-4130-8', 'I207.23 125', 140),
(13723, '20111003625', 1, '纳兰词集', '纳兰性德', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28436?func=direct&doc_number=000368196&format=999&local_base=GWD01', NULL, NULL, 139),
(13724, '20111003625', 1, '爱上咖啡', '林莹', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28433?func=direct&doc_number=000248801&format=999&local_base=GWD01', '978-7-5117-0024-7', 'TS273 8', 138),
(13725, '20111003625', 1, '资治通鉴', '司马光', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28430?func=direct&doc_number=000108145&format=999&local_base=GWD01', '', 'K204.3 5', 137),
(13726, '20111003625', 1, '网页设计与制作教程', '熊前兴', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28427?func=direct&doc_number=000334769&format=999&local_base=GWD01', '7-111-08832-8', 'TP393.092 332', 136),
(13727, '20111003625', 1, 'C++类和数据结构', '蔡尔兹', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28424?func=direct&doc_number=000340406&format=999&local_base=GWD01', '978-7-302-19179-7', 'TP312C++ 976', 135),
(13728, '20111003625', 1, '敬畏历史', '虞云国,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28421?func=direct&doc_number=000436391&format=999&local_base=GWD01', '978-7-309-08088-9', 'I267.1 1157', 134),
(13729, '20111003625', 1, '古文观止鉴赏辞典', '傅德岷', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28418?func=direct&doc_number=000306810&format=999&local_base=GWD01', '978-7-80708-449-5', 'I207.62 28', 133),
(13730, '20111003625', 1, '陳維崧集', '陈维崧,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28415?func=direct&doc_number=000428232&format=999&local_base=GWD01', NULL, NULL, 132),
(13731, '20111003625', 1, '左传', '左丘明', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28412?func=direct&doc_number=000341192&format=999&local_base=GWD01', '', 'K225.04 3', 131),
(13732, '20111003625', 1, 'PHP网络开发实用工程案例', '叶子青', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28313?func=direct&doc_number=000304143&format=999&local_base=GWD01', '978-7-89479-041-5', 'TP312PH 97', 98),
(13733, '20111003625', 1, '蕙风词话', '况周颐', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28406?func=direct&doc_number=000366274&format=999&local_base=GWD01', '7-02-002665-6', 'I207.23 67', 129),
(13734, '20111003625', 1, 'C++程序设计与应用', '周仲宁', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28403?func=direct&doc_number=000361895&format=999&local_base=GWD01', '7-5053-7829-5', 'TP312C# 23', 128),
(13735, '20111003625', 1, 'Visual C++ 6.0入门与提高', '徐晓刚', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28400?func=direct&doc_number=000333504&format=999&local_base=GWD01', '7-302-03508-3', 'TP312C++ 184', 127),
(13736, '20111003625', 1, '图解天文学', '宣焕灿', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28397?func=direct&doc_number=000383249&format=999&local_base=GWD01', '978-7-305-06722-8', 'P1 15', 126),
(13737, '20111003625', 1, '从哈勃看宇宙', '彼特森,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28394?func=direct&doc_number=000109783&format=999&local_base=GWD01', '7-5443-0710-7', 'P159-49 8', 125),
(13738, '20111003625', 1, 'PHP 6与MySQL 5基础教程', '厄尔曼', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28370?func=direct&doc_number=000355855&format=999&local_base=GWD01', '978-7-115-18854-0', 'TP312 408', 117),
(13739, '20111003625', 1, 'PHP+MySQL完全学习手册', '黄桂金', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28388?func=direct&doc_number=000305395&format=999&local_base=GWD01', '978-7-89486-838-1', 'TP312PH 88', 123),
(13740, '20111003625', 1, 'JavaScript完全自学手册', '胡添', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28385?func=direct&doc_number=000344559&format=999&local_base=GWD01', '978-7-89482-800-2', 'TP312JA-62 12', 122),
(13741, '20111003625', 1, '清稗类钞', '徐珂', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28382?func=direct&doc_number=000143345&format=999&local_base=GWD01', '', 'K295.8 9/V.161', 121),
(13742, '20111003625', 1, 'MFC程序开发参考大全', '宋坤', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28379?func=direct&doc_number=000276181&format=999&local_base=GWD01', '978-7-89488-648-4', 'TP312C 699', 120),
(13743, '20111003625', 1, '晏几道词新释辑评', '王双启', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28376?func=direct&doc_number=000288109&format=999&local_base=GWD01', NULL, NULL, 119),
(13744, '20111003625', 1, 'C# 3.0学习指南', '利伯蒂', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28373?func=direct&doc_number=000414451&format=999&local_base=GWD01', '978-7-115-21619-9', 'TP312C# 336', 118),
(13745, '20111003625', 1, 'Visual C++实效编程百例', '肖宏伟', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28367?func=direct&doc_number=000333487&format=999&local_base=GWD01', '7-89497-423-4', 'TP312C++ 322-2', 116),
(13746, '20111003625', 1, '务虚笔记', '史铁生,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28364?func=direct&doc_number=000389671&format=999&local_base=GWD01', '978-7-5008-4355-9', 'I247.59 164', 115),
(13747, '20111003625', 1, '中国历代爱情诗萃', '郑在瀛', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28361?func=direct&doc_number=000098121&format=999&local_base=GWD01', NULL, NULL, 114),
(13748, '20111003625', 1, 'Visual C++程序设计', '徐晓梅', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28358?func=direct&doc_number=000333512&format=999&local_base=GWD01', '7-03-004690-0', 'TP312C++ 91', 113),
(13749, '20111003625', 1, '法语300句', '陈伟', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28355?func=direct&doc_number=000244939&format=999&local_base=GWD01', NULL, NULL, 112),
(13750, '20111003625', 1, 'Visual C++程序设计与应用教程', '马石安', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28352?func=direct&doc_number=000295570&format=999&local_base=GWD01', '978-7-302-15502-7', 'TP312C++ 868', 111),
(13751, '20111003625', 1, 'PHP网络编程从入门到精通', '陈营辉', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28349?func=direct&doc_number=000271118&format=999&local_base=GWD01', '978-7-89486-517-5', 'TP312PH 71', 110),
(13752, '20111003625', 1, '明通鉴', '夏燮', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28346?func=direct&doc_number=000035442&format=999&local_base=GWD01', NULL, NULL, 109),
(13753, '20111003625', 1, '现代密码学基础', '章照止', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28343?func=direct&doc_number=000246636&format=999&local_base=GWD01', '7-5635-0651-9', 'TN918.1 20', 108),
(13754, '20111003625', 1, 'Visual C++面向对象编程教程', '王育坚', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28277?func=direct&doc_number=000296794&format=999&local_base=GWD01', '7-302-06914-X', 'TP312C++ 475', 86),
(13755, '20111003625', 1, '精通Windows API', '范文庆', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28256?func=direct&doc_number=000355977&format=999&local_base=GWD01', '978-7-89479-382-9', 'TP316.7 319', 79),
(13756, '20111003625', 1, 'C++探秘', '里希纳', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28334?func=direct&doc_number=000428193&format=999&local_base=GWD01', '978-7-115-24227-3', 'TP312C++ 1134', 105),
(13757, '20111003625', 1, 'Visual C++网络通信开发入门与编程实践', '李媛媛', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28040?func=direct&doc_number=000355587&format=999&local_base=GWD01', '978-7-89464-041-3', 'TP312C++ 1006', 7),
(13758, '20111003625', 1, 'Java程序设计自学手册', '王国辉', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28328?func=direct&doc_number=000296759&format=999&local_base=GWD01', '978-7-89488-937-9', 'TP312JA 1036', 103),
(13759, '20111003625', 1, 'Visual C++2010开发权威指南', '尹成', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28034?func=direct&doc_number=000413673&format=999&local_base=GWD01', '978-7-89443-130-1', 'TP312C++ 1102', 5),
(13760, '20111003625', 1, 'Java编程方法学', '王舜燕', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28322?func=direct&doc_number=000379545&format=999&local_base=GWD01', '978-7-900705-13-6', 'TP312JA 1092', 101),
(13761, '20111003625', 1, 'Eclipse编程技术与实例', '叶达峰', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28319?func=direct&doc_number=000224104&format=999&local_base=GWD01', '7-89497-915-5', 'TP311.56 545', 100),
(13762, '20111003625', 1, 'PHP网络编程技术与实践', '程伟', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28316?func=direct&doc_number=000302133&format=999&local_base=GWD01', '978-7-89474-062-5', 'TP312PH 85', 99),
(13763, '20111003625', 1, 'Java从入门到精通', '李钟尉', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28310?func=direct&doc_number=000311603&format=999&local_base=GWD01', '7-5053-3655-X', 'TP312JA 14', 97),
(13764, '20111003625', 1, 'JavaScript全程指南', '郭伟伟', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28307?func=direct&doc_number=000295209&format=999&local_base=GWD01', '978-7-89485-591-6', 'TP312JA 1014', 96),
(13765, '20111003625', 1, 'Java技术应用', '董云铮', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28304?func=direct&doc_number=000332756&format=999&local_base=GWD01', '978-7-111-26208-4', 'TP312JA 1154', 95),
(13766, '20111003625', 1, 'Programming Visual C++ 6.0技术内幕', '克鲁格林斯基,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28301?func=direct&doc_number=000063982&format=999&local_base=GWD01', NULL, NULL, 94),
(13767, '20111003625', 1, 'Java编程技术全接触', '孙一林', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28100?func=direct&doc_number=000356366&format=999&local_base=GWD01', '978-7-302-17585-8', 'TP312JA 1022', 27),
(13768, '20111003625', 1, 'JavaScript实例自学手册', '吴雪', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28295?func=direct&doc_number=000283030&format=999&local_base=GWD01', '978-7-89485-546-6', 'TP312JA 1012', 92),
(13769, '20111003625', 1, '高等数学习题全解指南', '同济大学应用数学系', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28292?func=direct&doc_number=000117162&format=999&local_base=GWD01', '978-7-04-020745-3', 'O13 9-117/V.1', 91),
(13770, '20111003625', 1, 'Java Swing图形界面开发与案例详解', '王鹏', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28289?func=direct&doc_number=000356298&format=999&local_base=GWD01', '978-7-302-18904-6', 'TP312JA 1102', 90),
(13771, '20111003625', 1, 'Visual C++权威剖析', '辛长安', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28226?func=direct&doc_number=000305553&format=999&local_base=GWD01', '978-7-89486-892-3', 'TP312C++ 304-2', 69),
(13772, '20111003625', 1, '历代小说选', '吴组缃', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28283?func=direct&doc_number=000139491&format=999&local_base=GWD01', '', 'I242 3/V.1-1', 88),
(13773, '20111003625', 1, '21天学通JavaScript', '杨贵', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28280?func=direct&doc_number=000355661&format=999&local_base=GWD01', '978-7-89464-068-0', 'TP312JA 1228', 87),
(13774, '20111003625', 1, 'Effective C++', '迈耶斯', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28274?func=direct&doc_number=000246591&format=999&local_base=GWD01', '', 'TN911&middot;V1', 85),
(13775, '20111003625', 1, 'C++程序设计语言题解', '范德伍尔杜', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28271?func=direct&doc_number=000333252&format=999&local_base=GWD01', '7-111-11184-2', 'TP312C++ 393-2', 84),
(13776, '20111003625', 1, '清代词选研究', '李睿', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28268?func=direct&doc_number=000468875&format=999&local_base=GWD01', NULL, NULL, 83),
(13777, '20111003625', 1, '宋词通论', '薛砺若', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28265?func=direct&doc_number=000339837&format=999&local_base=GWD01', NULL, NULL, 82),
(13778, '20111003625', 1, 'jQuery基础教程', '查弗', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28262?func=direct&doc_number=000304319&format=999&local_base=GWD01', '978-7-115-18110-7', 'TP312JA 1067', 81),
(13779, '20111003625', 1, 'Visual C++高级编程', '张力,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28259?func=direct&doc_number=000336617&format=999&local_base=GWD01', '7-111-06063-6', 'TP312C++ 141', 80),
(13780, '20111003625', 1, '精通JS脚本之jQuery框架', '王伟平', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28253?func=direct&doc_number=000437455&format=999&local_base=GWD01', '978-7-89472-398-7', 'TP312JA 1427', 78),
(13781, '20111003625', 1, 'Visual C++案例开发', '林青松', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28250?func=direct&doc_number=000123010&format=999&local_base=GWD01', '7-5084-2498-0', 'TP312C++ 580', 77),
(13782, '20111003625', 1, 'C++高级编程', '索尔特,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28247?func=direct&doc_number=000223504&format=999&local_base=GWD01', '7-5053-2228-1', 'TP312C++ 26', 76),
(13783, '20111003625', 1, '清词丛论', '叶嘉莹,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28025?func=direct&doc_number=000094400&format=999&local_base=GWD01', '978-7-301-13273-9', 'I207.23 108', 2),
(13784, '20111003625', 1, '清史资料', '中国社会科学院历史研究所清史研究室', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28241?func=direct&doc_number=000143349&format=999&local_base=GWD01', '', 'K249.7 2/V.2', 74),
(13785, '20111003625', 1, 'Visual C++ 6.0完全自学宝典', '朱洪波', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28235?func=direct&doc_number=000356369&format=999&local_base=GWD01', '978-7-89474-007-6', 'TP312C++ 915', 72),
(13786, '20111003625', 1, 'Visual C++ 6.0编程案例精解', '张宏军', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28232?func=direct&doc_number=000336601&format=999&local_base=GWD01', '7-121-00743-6', 'TP312C++ 618', 71),
(13787, '20111003625', 1, '算法', '塞奇威克,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28220?func=direct&doc_number=000368689&format=999&local_base=GWD01', '', 'TP312 289', 67),
(13788, '20111003625', 1, 'Visual C++网络通信编程实用案例精选', '丁展', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28055?func=direct&doc_number=000335257&format=999&local_base=GWD01', '7-115-12164-8', 'TP312C++ 522', 12),
(13789, '20111003625', 1, 'Java语言程序设计', '梁,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28214?func=direct&doc_number=000333049&format=999&local_base=GWD01', '7-111-05583-7', 'TP312JA-61 1', 65),
(13790, '20111003625', 1, '独门架构', '李宁', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28211?func=direct&doc_number=000415529&format=999&local_base=GWD01', NULL, NULL, 64),
(13791, '20111003625', 1, 'PHP必须知道的300个问题', '潘凯华', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28208?func=direct&doc_number=000476309&format=999&local_base=GWD01', '978-7-302-27204-5', 'TP312PH-44 1', 63),
(13792, '20111003625', 1, 'Visual C++游戏开发技术与实例', '丁展', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28070?func=direct&doc_number=000202755&format=999&local_base=GWD01', '7-89497-625-3', 'TP312C++ 644', 17),
(13793, '20111003625', 1, 'C++算法', '塞奇威克,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28046?func=direct&doc_number=000333266&format=999&local_base=GWD01', '7-302-07251-5', 'TP312C++ 525/V.1', 9),
(13794, '20111003625', 1, 'MFC Windows应用程序设计', '任哲', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28196?func=direct&doc_number=000333258&format=999&local_base=GWD01', '7-302-08544-7', 'TP312 337-2', 59),
(13795, '20111003625', 1, '谁道人间秋已尽', '王国维,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28193?func=direct&doc_number=000387098&format=999&local_base=GWD01', '978-7-02-007772-4', 'I207.23 123', 58),
(13796, '20111003625', 1, 'Gone with the wind /', 'Mitchell, Margaret,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28190?func=direct&doc_number=000110810&format=999&local_base=GWD09', '7-5600-0784-8', 'H319.4 413/V.1', 57),
(13797, '20111003625', 1, '迦陵詩詞稿', '叶嘉莹,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28187?func=direct&doc_number=000260452&format=999&local_base=GWD01', NULL, NULL, 56),
(13798, '20111003625', 1, 'PHP+Ajax Web 2.0编程技术与项目开发大全', '叶新伟', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28184?func=direct&doc_number=000304626&format=999&local_base=GWD01', '978-7-89485-753-8', 'TP312PH 96', 55),
(13799, '20111003625', 1, 'Visual C++开发经典模式与实例', '张学志', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28181?func=direct&doc_number=000333621&format=999&local_base=GWD01', '978-7-900230-93-5', 'TP312C++ 884', 54),
(13800, '20111003625', 1, '计算机算法与实践教程', '徐保民', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28178?func=direct&doc_number=000312530&format=999&local_base=GWD01', '978-7-81123-149-6', 'TP301.6 117', 53),
(13801, '20111003625', 1, '人间最美纳兰词', '梦江南', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28175?func=direct&doc_number=000434117&format=999&local_base=GWD01', '978-7-80103-765-7', 'I207.23 164', 52),
(13802, '20111003625', 1, '精通Windows程序设计', '朱娜敏', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28172?func=direct&doc_number=000355422&format=999&local_base=GWD01', '978-7-89479-555-7', 'TP312C++ 955', 51),
(13803, '20111003625', 1, 'Java高级编程', '斯佩尔', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28169?func=direct&doc_number=000281126&format=999&local_base=GWD01', '7-5053-4064-6', 'TP312JA 36', 50),
(13804, '20111003625', 1, 'HTML与CSS入门经典', '奥利弗', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28166?func=direct&doc_number=000276253&format=999&local_base=GWD01', '978-7-115-15625-9', 'TP312HT 43', 49),
(13805, '20111003625', 1, 'PHP+MySQL八大动态Web应用实战', '培根', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28163?func=direct&doc_number=000355522&format=999&local_base=GWD01', NULL, NULL, 48),
(13806, '20111003625', 1, '天书夜读', '谭文', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28160?func=direct&doc_number=000435298&format=999&local_base=GWD01', '978-7-121-07339-7', 'TP313 186', 47),
(13807, '20111003625', 1, 'PHP+MySQL专家编程', '库廖索', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28157?func=direct&doc_number=000472170&format=999&local_base=GWD01', '978-7-302-26963-2', 'TP312PH 156', 46),
(13808, '20111003625', 1, '精通Windows Sockets网络开发', '孙海民', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28154?func=direct&doc_number=000355638&format=999&local_base=GWD01', '978-7-115-17911-1', 'TP312C++ 922', 45),
(13809, '20111003625', 1, 'ACM程序设计竞赛基础教程', '俞经善', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28151?func=direct&doc_number=000413496&format=999&local_base=GWD01', '978-7-302-23492-0', 'TP311.1 143', 44),
(13810, '20111003625', 1, '百年孤独', '加西亚·马克斯', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28148?func=direct&doc_number=000432514&format=999&local_base=GWD01', '7-5059-2082-0', 'I775.4 4-2', 43),
(13811, '20111003625', 1, '汇编语言与计算机系统组成', '李心广', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28145?func=direct&doc_number=000361732&format=999&local_base=GWD01', '978-7-111-26868-0', 'TP313 187', 42),
(13812, '20111003625', 1, '文心雕龍札記', '黄侃,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28142?func=direct&doc_number=000299969&format=999&local_base=GWD01', '7-101-04808-0', 'I206.2 170', 41),
(13813, '20111003625', 1, '了不起的盖茨比', '菲茨杰拉尔德', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28139?func=direct&doc_number=000270956&format=999&local_base=GWD01', '', 'H319.4 414', 40),
(13814, '20111003625', 1, '去中国的小船', '村上春树,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28136?func=direct&doc_number=000354292&format=999&local_base=GWD01', '7-5327-2888-9', 'I313.4 247', 39),
(13815, '20111003625', 1, '思科网络实验室CCNA实验指南', '梁广民', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28133?func=direct&doc_number=000432996&format=999&local_base=GWD01', '978-7-121-08763-9', 'TP393-33 12', 38),
(13816, '20111003625', 1, 'Linux培训教程', '何明', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28130?func=direct&doc_number=000441942&format=999&local_base=GWD01', '7-5084-0309-6', 'TP316.81 47', 37),
(13817, '20111003625', 1, '数据结构与面向对象程序设计', '迈因,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28127?func=direct&doc_number=000269972&format=999&local_base=GWD01', '978-7-302-15264-4', 'TP311.12 189', 36),
(13818, '20111003625', 1, 'Linux 网络编程', '张斌', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28124?func=direct&doc_number=000333955&format=999&local_base=GWD01', '7-302-01098-6', 'TP316.81 221', 35),
(13819, '20111003625', 1, '王小波散文', '王小波,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28121?func=direct&doc_number=000286324&format=999&local_base=GWD01', NULL, NULL, 34),
(13820, '20111003625', 1, '一九八四', '奥威尔', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28118?func=direct&doc_number=000252283&format=999&local_base=GWD01', '', 'I247.7 191/1984', 33),
(13821, '20111003625', 1, 'C++经典问答', '克莱因,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28115?func=direct&doc_number=000124006&format=999&local_base=GWD01', NULL, NULL, 32),
(13822, '20111003625', 1, 'PHP经典实例', '休斯,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28112?func=direct&doc_number=000106043&format=999&local_base=GWD01', '7-5083-1290-2', 'TP312PH 50', 31),
(13823, '20111003625', 1, 'Ubuntu Linux从入门到精通', '郝铃', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28109?func=direct&doc_number=000313686&format=999&local_base=GWD01', '978-7-121-11205-8', 'TP316.81 512', 30),
(13824, '20111003625', 1, 'Linux系统下C程序开发详解', '徐磊', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28106?func=direct&doc_number=000304692&format=999&local_base=GWD01', NULL, NULL, 29),
(13825, '20111003625', 1, 'ACM程序设计', '曾棕根', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28103?func=direct&doc_number=000313624&format=999&local_base=GWD01', '978-7-113-07651-1', 'TP311 69', 28),
(13826, '20111003625', 1, 'Visual C++编程篇', '<BR>', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28097?func=direct&doc_number=000330698&format=999&local_base=GWD01', '7-89496-318-6', 'TP3 434/V.7', 26),
(13827, '20111003625', 1, 'PHP5+MySQL网站开发基础与应用', '翁烨晖', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28094?func=direct&doc_number=000356036&format=999&local_base=GWD01', '978-7-302-18429-4', 'TP312PH 107', 25),
(13828, '20111003625', 1, 'DirectX游戏开发终极指南', '谢罗德', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28085?func=direct&doc_number=000310765&format=999&local_base=GWD01', '978-7-89474-069-4', 'TP311.5 355', 22),
(13829, '20111003625', 1, 'Web数据挖掘', '刘兵', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28088?func=direct&doc_number=000356483&format=999&local_base=GWD01', '7-5053-9472-X', 'TP274 128', 23),
(13830, '20111003625', 1, 'PHP5应用实例详解', '王志刚', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28082?func=direct&doc_number=000415626&format=999&local_base=GWD01', '978-7-121-11433-5', 'TP312PH 133', 21),
(13831, '20111003625', 1, 'Visual C++最新编程实践与技巧', '李明柱', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28079?func=direct&doc_number=000332997&format=999&local_base=GWD01', NULL, NULL, 20),
(13832, '20111003625', 1, '堂吉诃德', '塞万提斯,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28076?func=direct&doc_number=000088272&format=999&local_base=GWD01', '', 'I551.4 1-2/V.1', 19),
(13833, '20111003625', 1, 'Essential C++中文版', 'Lippman', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28073?func=direct&doc_number=000063994&format=999&local_base=GWD01', '7-5609-2511-1', 'TP312 353', 18),
(13834, '20111003625', 1, 'Linux内核完全注释', '赵炯', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28067?func=direct&doc_number=000311649&format=999&local_base=GWD01', '7-111-14968-8', 'TP316.81 295', 16),
(13835, '20111003625', 1, 'Google Android SDK开发范例大全', '余志龙', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28064?func=direct&doc_number=000420745&format=999&local_base=GWD01', '978-7-89479-647-9', 'TN929.53 79', 15),
(13836, '20111003625', 1, 'Visual C++ 6 DCOM开发指南', '马洛尼', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28061?func=direct&doc_number=000332912&format=999&local_base=GWD01', NULL, NULL, 14),
(13837, '20111003625', 1, 'Visual C++数据库编程技术与实例', '沈炜', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28058?func=direct&doc_number=000202774&format=999&local_base=GWD01', '7-89497-622-9', 'TP312C++ 590', 13),
(13838, '20111003625', 1, 'Linux内核修炼之道', '任桥伟', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28052?func=direct&doc_number=000413835&format=999&local_base=GWD01', '978-7-115-22585-6', 'TP316.89 148', 11),
(13839, '20111003625', 1, 'ACM国际大学生程序设计竞赛题解', '赵端阳', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28049?func=direct&doc_number=000412549&format=999&local_base=GWD01', '978-7-121-11171-6', 'TP311.1 133/V.2', 10),
(13840, '20111003625', 1, 'C++ Templates中文版', '范德沃尔德', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28043?func=direct&doc_number=000296733&format=999&local_base=GWD01', '7-115-11809-4', 'TP312C++ 490', 8),
(13841, '20111003625', 1, 'Visual C++数据库系统开发完全手册', '王瑞', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28037?func=direct&doc_number=000223553&format=999&local_base=GWD01', '7-89488-031-0', 'TP312C++-62 3', 6),
(13842, '20111003625', 1, 'Android内核剖析', '柯元旦,', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28031?func=direct&doc_number=000471590&format=999&local_base=GWD01', '978-7-121-14398-4', 'TN929.53 149', 4),
(13843, '20111003625', 1, 'Linux Shell脚本攻略', '拉克什曼', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28028?func=direct&doc_number=000490120&format=999&local_base=GWD01', '978-7-115-26472-5', 'TP316.81 552', 3),
(13844, '20111003625', 1, '开发自己的搜索引擎', '邱哲', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28022?func=direct&doc_number=000414513&format=999&local_base=GWD01', '978-7-115-13837-8', 'TP393.09 223', 1),
(13845, '20111003625', 1, 'Android底层接口与驱动开发技术详解', '陈强', 'http://opac.gdufs.edu.cn:8991/F/8BL1VA2IEHNUHLAGL861EJ8KBFQ4DMJSUS74GC6HNR6INM4UHH-28019?func=direct&doc_number=000483454&format=999&local_base=GWD01', '978-7-113-14793-8', 'TN929.53 256', 0),
(13846, '20111003444', 1, 'Photoshop设计与制作实例教程', '卢正明', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08371?func=direct&doc_number=000275535&format=999&local_base=GWD01', '7-900064-54-0', 'TP391.41 1051', 29),
(13847, '20111003444', 1, '算法设计与分析', '吕国英', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08368?func=direct&doc_number=000356363&format=999&local_base=GWD01', '7-5020-0762-8', 'TP312 293', 28),
(13848, '20111003444', 1, 'La dame aux camélias /', 'Dumas, Alexandre,', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08365?func=direct&doc_number=000112758&format=999&local_base=GWD09', NULL, NULL, 27);
INSERT INTO `gw_history` (`id`, `studentNumber`, `schoolId`, `title`, `author`, `url`, `isbn`, `callNumber`, `ordered`) VALUES
(13849, '20111003444', 1, '现代C++程序设计', '约翰斯顿', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08362?func=direct&doc_number=000304673&format=999&local_base=GWD01', '7-302-10805-6', 'TP312C++ 716', 26),
(13850, '20111003444', 1, '3ds Max 9从入门到精通', '腾龙视觉', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08359?func=direct&doc_number=000284095&format=999&local_base=GWD01', NULL, NULL, 25),
(13851, '20111003444', 1, 'C++程序设计', '谭浩强,', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08356?func=direct&doc_number=000333339&format=999&local_base=GWD01', '', 'TP312C++ 1', 24),
(13852, '20111003444', 1, '二级C++语言程序设计考题精解与考场模拟', '廖德钦', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08353?func=direct&doc_number=000333047&format=999&local_base=GWD01', '7-89497-642-3', 'TP312C 449', 23),
(13853, '20111003444', 1, 'JavaScript网页特效范例宝典', '明日科技', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08296?func=direct&doc_number=000275777&format=999&local_base=GWD01', '978-7-89488-678-1', 'TP312JA 910', 4),
(13854, '20111003444', 1, 'JavaScript开发技术大全', '梁冰', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08347?func=direct&doc_number=000355646&format=999&local_base=GWD01', '978-7-89479-073-6', 'TP312JA 1087', 21),
(13855, '20111003444', 1, '徐志摩评传', '宋益乔', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08344?func=direct&doc_number=000211166&format=999&local_base=GWD01', '7-5087-0525-4', 'K825.6 379', 20),
(13856, '20111003444', 1, '务虚笔记', '史铁生,', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08341?func=direct&doc_number=000389671&format=999&local_base=GWD01', '978-7-5008-4355-9', 'I247.59 164', 19),
(13857, '20111003444', 1, '用心才能优秀', '赵文明', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08338?func=direct&doc_number=000310445&format=999&local_base=GWD01', NULL, NULL, 18),
(13858, '20111003444', 1, 'Photoshop艺术大师', '雷波', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08335?func=direct&doc_number=000312006&format=999&local_base=GWD01', '7-900201-19-X', 'TP391.41 3014/V.1', 17),
(13859, '20111003444', 1, '现代商务礼仪规范与实务', '王爱英', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08332?func=direct&doc_number=000362301&format=999&local_base=GWD01', '978-7-301-14940-9', 'F718 80', 16),
(13860, '20111003444', 1, '数据结构与算法', '普赖斯', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08329?func=direct&doc_number=000331666&format=999&local_base=GWD01', '7-313-00101-0', 'TP312C 12', 15),
(13861, '20111003444', 1, '电路与电子技术基础', '王金矿', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08326?func=direct&doc_number=000302249&format=999&local_base=GWD01', '7-306-02329-2', 'TM13 165', 14),
(13862, '20111003444', 1, 'PHP开发典型模块大全', '潘凯华', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08323?func=direct&doc_number=000414446&format=999&local_base=GWD01', '978-7-89479-997-5', 'TP312PH 129', 13),
(13863, '20111003444', 1, 'PHP5应用实例详解', '王志刚', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08320?func=direct&doc_number=000415626&format=999&local_base=GWD01', '978-7-121-11433-5', 'TP312PH 133', 12),
(13864, '20111003444', 1, '吉他教材', '王志铭', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08317?func=direct&doc_number=000413649&format=999&local_base=GWD01', NULL, NULL, 11),
(13865, '20111003444', 1, '吉他自学三月通', '刘传', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08314?func=direct&doc_number=000389173&format=999&local_base=GWD01', '7-80158-071-0', 'J623.26 20', 10),
(13866, '20111003444', 1, 'C语言详解', '汉利', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08311?func=direct&doc_number=000276072&format=999&local_base=GWD01', '978-7-115-16427-8', 'TP312C 700', 9),
(13867, '20111003444', 1, 'MATLAB基础与应用', '张平', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08308?func=direct&doc_number=000274516&format=999&local_base=GWD01', '978-7-81124-112-9', 'TP312MA 123', 8),
(13868, '20111003444', 1, 'MATLAB函数速查手册', '邓薇', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08305?func=direct&doc_number=000312179&format=999&local_base=GWD01', '978-7-115-18492-4', 'TP312MA 130', 7),
(13869, '20111003444', 1, '商务礼仪', '杨亦', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08302?func=direct&doc_number=000105187&format=999&local_base=GWD01', '7-81020-842-X', 'F718 9', 6),
(13870, '20111003444', 1, 'MATLAB教程及实训', '曹弋', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08299?func=direct&doc_number=000311881&format=999&local_base=GWD01', '9787111237051', '', 5),
(13871, '20111003444', 1, 'JavaScript网页编程从入门到精通', '庞永庆', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08284?func=direct&doc_number=000302516&format=999&local_base=GWD01', NULL, NULL, 0),
(13872, '20111003444', 1, 'PHP开发典型模块大全', '邹天思', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08290?func=direct&doc_number=000355298&format=999&local_base=GWD01', '978-7-89479-997-5', 'TP312PH 129', 2),
(13873, '20111003444', 1, 'Java项目开发与毕业设计指导', '朱福喜', 'http://opac.gdufs.edu.cn:8991/F/K2QQI8FNUQ1IYTGMDIBYTACCVA7V4SKCJ3IK4L4GQ6JKTMXYVB-08287?func=direct&doc_number=000345879&format=999&local_base=GWD01', '978-7-89486-977-7', 'TP312JA 1064', 1),
(13874, 'D1130581400', 2, 'PHP和MySQL Web开发', '(澳) Luke Welling, Laura Thomson著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=488549&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', '7-89492-480-6', 'TP312PH 57', 2),
(13875, 'D1130581400', 2, 'HTML与CSS入门经典', '(美) Dick Oliver, Michael Morrison著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=608103&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', '978-7-115-15625-9', 'TP312HT 43', 1),
(13876, 'D1130581400', 2, 'Java从入门到实践', '刘升华等编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=741012&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', '978-7-89474-631-3', 'TP312JA 1214', 0),
(13877, 'D1130580120', 2, 'MATLAB数字信号处理与应用', '李正周编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=656620&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 42),
(13878, 'D1130580120', 2, '实用语音识别基础', '王炳锡 ... [等] 著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=483799&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 41),
(13879, 'D1130580120', 2, 'Linux内核完全剖析', '赵炯编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=550255&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 40),
(13880, 'D1130580120', 2, 'C#与ASP.NET程序设计', '曹锰, 舒新峰编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=513881&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 39),
(13881, 'D1130580120', 2, 'HTML网页设计', '贾素玲, 王强主编', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=615584&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 38),
(13882, 'D1130580120', 2, '语音编码', '王炳锡编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=514719&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 37),
(13883, 'D1130580120', 2, '行走天下', '季羡林著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=831738&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 36),
(13884, 'D1130580120', 2, '晨雨初听', '余秋雨', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=476803&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 35),
(13885, 'D1130580120', 2, '独白', '欧阳湜编', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=674432&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 34),
(13886, 'D1130580120', 2, 'Java语言编程基础教程', '宋振会编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=486909&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 33),
(13887, 'D1130580120', 2, '数字语音处理', '姚天任', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=410108&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 32),
(13888, 'D1130580120', 2, 'MATLAB语言实用教程', '马莉编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=780819&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 31),
(13889, 'D1130580120', 2, '尋覓中華', '余秋雨', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=735353&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 30),
(13890, 'D1130580120', 2, '千年一叹', '余秋雨著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=267385&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 29),
(13891, 'D1130580120', 2, '制冷技术与应用', '陈汝东主编', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=558829&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 28),
(13892, 'D1130580120', 2, 'SQL实用简明教程', '罗骏, 何羽编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=466019&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 27),
(13893, 'D1130580120', 2, '战略管理', '(美) 弗雷德&middot;R. 大卫著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=721260&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 26),
(13894, 'D1130580120', 2, '概率论与数理统计', '主编孙振绮, 丁效华', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=463831&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 25),
(13895, 'D1130580120', 2, 'PHP网络编程从入门到精通', '陈营辉编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=629082&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 24),
(13896, 'D1130580120', 2, '语音识别与控制应用技术', '刘幺和, 宋庭新编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=657230&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 23),
(13897, 'D1130580120', 2, '音乐&middot;旅行', 'shin著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=1075088&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 22),
(13898, 'D1130580120', 2, '思科九年', '老晖著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=713576&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 21),
(13899, 'D1130580120', 2, '史记全译&middot;上', '司马迁原撰', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=539177&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 20),
(13900, 'D1130580120', 2, 'Android驱动开发与移植实战详解', '李骏, 陈小玉编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=1056532&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 19),
(13901, 'D1130580120', 2, '鲁滨逊漂流记', '(英) 丹尼尔&middot;笛福著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=505424&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 18),
(13902, 'D1130580120', 2, 'JavaScript从入门到精通', '(美) James Jaworski著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=320343&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 17),
(13903, 'D1130580120', 2, '人生天地间', '本卷主编余虹', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=508279&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 16),
(13904, 'D1130580120', 2, 'PHP5+MySQL网站开发实例精讲', '黄炳强编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=627031&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 15),
(13905, 'D1130580120', 2, 'SQL编程基础', '(美) John J. Patrick著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=778390&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 14),
(13906, 'D1130580120', 2, 'C# 2008数据库入门经典', '(美) Vidya Vrat Agarwal, James Huddleston等著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=713002&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 13),
(13907, 'D1130580120', 2, 'HTML与CSS入门经典', '(美) Dick Oliver, Michael Morrison著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=608103&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 12),
(13908, 'D1130580120', 2, '世界: 一部历史&middot;上', '(美) 菲利普&middot;费尔南德兹-阿迈斯托编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=786570&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 11),
(13909, 'D1130580120', 2, '现代语音技术基础与应用', '蔡莲红, 黄德智, 蔡锐编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=428898&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 10),
(13910, 'D1130580120', 2, '行者无疆', '余秋雨', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=413078&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 9),
(13911, 'D1130580120', 2, 'Linux标准教程', '王俊伟, 吴俊海等编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=576469&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 8),
(13912, 'D1130580120', 2, 'Android系统原理及开发要点详解', '韩超, 梁泉著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=779259&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 7),
(13913, 'D1130580120', 2, '精通Java手机游戏与应用程序设计', '陈立伟, 张克非, 黎秀红编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=480800&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 6),
(13914, 'D1130580120', 2, '算法设计与分析', '夏红霞, 宋华珠, 钟珞主编', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=627903&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 5),
(13915, 'D1130580120', 2, '算法设计与分析', '郑宗汉, 郑晓明编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=533401&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 4),
(13916, 'D1130580120', 2, '现代语音处理技术及应用', '张雄伟, 陈亮, 杨吉斌编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=416648&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 3),
(13917, 'D1130580120', 2, '鲁滨逊漂流记&middot;= Robinson crusoe', '(英) 丹尼尔&middot;笛福著&middot;王勋, 纪飞等编译', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=1018681&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 2),
(13918, 'D1130580120', 2, 'Java程序设计教程', '施霞萍 ... [等] 编著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=477882&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 1),
(13919, 'D1130580120', 2, 'C# 3.0学习指南', '(美) Jesse Liberty, Brian MacDonald著', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=787563&amp;marcformat=CNMARC01&amp;libcode=&amp;source=', NULL, NULL, 0),
(13920, '20111003635', 1, 'Struts 2技术详解', '闫术卓', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28171?func=direct&doc_number=000304624&format=999&local_base=GWD01', '978-7-89485-749-1', 'TP311.56 734', 4),
(13921, '20111003635', 1, '精通Java EE', '叶健毅', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28168?func=direct&doc_number=000355799&format=999&local_base=GWD01', '978-7-89488-867-9', 'TP312JA 980', 3),
(13922, '20111003635', 1, 'JSP项目开发全程实录', '周桓', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28165?func=direct&doc_number=000305794&format=999&local_base=GWD01', '978-7-89486-924-1', 'TP312JA 1009', 2),
(13923, '20111003635', 1, 'JSP数据库系统开发案例精选', '王国辉', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28162?func=direct&doc_number=000246183&format=999&local_base=GWD01', '7-89488-078-7', 'TP393.092 1198', 1),
(13924, '20111003635', 1, '基于Eclipse环境的企业应用开发', '万辉', 'http://opac.gdufs.edu.cn:8991/F/88MUKM3PELJ2MABE334T5GPIH8YNHFE19J5VS6SAHQSY8H8JLN-28159?func=direct&doc_number=000305408&format=999&local_base=GWD01', '978-7-302-18417-1', 'TP311.56 732', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gw_loan`
--

CREATE TABLE IF NOT EXISTS `gw_loan` (
  `id` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '从checkbox里面拿的name',
  `schoolId` int(11) NOT NULL,
  `studentNumber` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '学号',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '书名',
  `author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '对应书的链接',
  `publishYear` year(4) NOT NULL COMMENT '出版年',
  `returnDate` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '归还日期',
  `payment` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '欠了多少钱',
  `location` char(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '位于哪个分馆',
  `callNumber` char(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '索书号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `gw_loan`
--

INSERT INTO `gw_loan` (`id`, `schoolId`, `studentNumber`, `title`, `author`, `url`, `publishYear`, `returnDate`, `payment`, `location`, `callNumber`) VALUES
('c000405208000060', 1, '20111003635', 'C#项目开发全程实录', '唐政', 'http://opac.gdufs.edu.cn:8991/F/6NMYRA8TNJUS1TLV6NDLTDGY4NKP65MD9YEXM5J2XQ24NQYRRS-38713?func=direct&doc_number=000295562&format=999&local_base=GWD01', 0000, '20131022', '', '', ''),
('c000444085000070', 1, '20111003635', 'JAVA SE6全方位学习', '朱仲杰', 'http://opac.gdufs.edu.cn:8991/F/6NMYRA8TNJUS1TLV6NDLTDGY4NKP65MD9YEXM5J2XQ24NQYRRS-38710?func=direct&doc_number=000345233&format=999&local_base=GWD01', 0000, '20131106', '', '', ''),
('c000464112000070', 1, '20111003625', 'C++标准库扩展权威指南', '贝克尔', 'http://opac.gdufs.edu.cn:8991/F/NICLR2C1RYBTI4Y5S7BMDXTGS49TLY7IIFF9H3SUGTX6FHFG1H-29100?func=direct&doc_number=000355787&format=999&local_base=GWD01', 0000, '20131023', '', '', ''),
('c000464124000071', 2, 'D1130581400', '游戏编程数学和物理基础', '斯塔勒', '', 0000, '20131007', '', '', ''),
('c000464124000072', 2, 'D1130581400', '游戏编程All in One', '苏译', '', 0000, '20131007', '', '', ''),
('C200423258', 2, 'D1130580120', '数字语音处理/姚天任', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=410108&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131106', '', '', ''),
('C200434558', 2, 'D1130580120', '现代语音处理技术及应用/张雄伟, 陈亮, 杨吉斌编著', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=416648&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131022', '', '', ''),
('C2006606754', 2, 'D1130580120', '语音编码/王炳锡编著', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=514719&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131106', '', '', ''),
('C2006654364', 2, 'D1130580120', '史记全译&middot;上/司马迁原撰', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=539177&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131017', '', '', ''),
('C2008610978', 2, 'D1130580120', 'MATLAB数字信号处理与应用/李正周编著', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=656620&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131017', '', '', ''),
('C2009603264', 2, 'D1130580120', '语音识别与控制应用技术/刘幺和, 宋庭新编著', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=657230&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131106', '', '', ''),
('C2010604094', 2, 'D1130580120', 'MATLAB语言实用教程/马莉编著', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=780819&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131017', '', '', ''),
('C2010615878', 2, 'D1130580120', '世界: 一部历史&middot;上/(美) 菲利普&middot;费尔南德兹-阿迈斯托编著', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=786570&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131101', '', '', ''),
('C2013035556', 2, 'D1130580120', '音乐&middot;旅行/shin著', '无', 'http://202.38.232.10/opac/servlet/opac.go?cmdACT=query.bookdetail&amp;bookid=1075088&amp;marcformat=&amp;libcode=&amp;source=', 0000, '20131105', '', '', ''),
('renew0-i3349282', 3, '2011050659', '公司理财 gong si li cai : 精要版', '(美) 斯蒂芬 A. 罗斯, 伦道夫 W. 威斯特菲尔德, 布拉德福德 D. 乔丹著 = = Fundamentals of corporate finance / Stephen A. Ross, Randolph W. Westerfield, Bradford D. Jordan&#59; 方红星, 徐强国, 赵银德译 eng', 'record=b2206928~S1*chx', 0000, '13-11-07', '', '', ''),
('renew1-i3465229', 3, '2011050659', '小企业会计准则', '中华人民共和国财政部制定', 'record=b3008154~S1*chx', 0000, '13-11-07', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `gw_recommend`
--

CREATE TABLE IF NOT EXISTS `gw_recommend` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `schoolId` int(11) NOT NULL DEFAULT '0',
  `recommendisbn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `recommendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bookId`,`studentNumber`,`schoolId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `gw_recommend`
--

INSERT INTO `gw_recommend` (`bookId`, `studentNumber`, `schoolId`, `recommendisbn`, `recommendTime`) VALUES
(1, '20111003632', 1, '7-89492-480-6', '2013-10-10 14:12:33'),
(2, '20111003632', 1, '978-7-121-11433-5', '2013-10-10 14:12:34'),
(3, '20111003632', 1, '978-7-302-18429-4', '2013-10-10 14:12:35'),
(4, '20111003632', 1, '7-5083-1290-2', '2013-10-10 14:12:35'),
(5, '20111003632', 1, '978-7-302-26963-2', '2013-10-10 14:12:35'),
(6, '20111003632', 1, '978-7-89474-062-5', '2013-10-10 14:12:35'),
(7, '20111003632', 1, '978-7-89486-517-5', '2013-10-10 14:12:35'),
(8, '20111003632', 1, '978-7-89486-838-1', '2013-10-10 14:12:35'),
(9, '20111003632', 1, '978-7-89479-041-5', '2013-10-10 14:12:35'),
(10, '20111003632', 1, '978-7-121-07658-9', '2013-10-10 14:12:35'),
(11, '20111003632', 1, '978-7-89486-695-0', '2013-10-10 14:12:35'),
(12, '20111003632', 1, '978-7-89479-997-5', '2013-10-10 14:12:35'),
(13, '20111003632', 1, '7-89488-014-0', '2013-10-10 14:12:35'),
(14, '20111003632', 1, '7-89492-480-6', '2013-10-10 14:13:37'),
(15, '20111003632', 1, '978-7-121-11433-5', '2013-10-10 14:13:37'),
(16, '20111003632', 1, '978-7-302-18429-4', '2013-10-10 14:13:38'),
(17, '20111003632', 1, '7-5083-1290-2', '2013-10-10 14:13:38'),
(18, '20111003632', 1, '978-7-302-26963-2', '2013-10-10 14:13:38'),
(19, '20111003632', 1, '978-7-89474-062-5', '2013-10-10 14:13:38'),
(20, '20111003632', 1, '978-7-89486-517-5', '2013-10-10 14:13:38'),
(21, '20111003632', 1, '978-7-89486-838-1', '2013-10-10 14:13:38'),
(22, '20111003632', 1, '978-7-89479-041-5', '2013-10-10 14:13:38'),
(23, '20111003632', 1, '978-7-121-07658-9', '2013-10-10 14:13:38'),
(24, '20111003632', 1, '978-7-89486-695-0', '2013-10-10 14:13:38'),
(25, '20111003632', 1, '978-7-89479-997-5', '2013-10-10 14:13:38'),
(26, '20111003632', 1, '7-89488-014-0', '2013-10-10 14:13:38'),
(27, '20111003632', 1, '7-89492-480-6', '2013-10-10 14:14:17'),
(28, '20111003632', 1, '978-7-121-11433-5', '2013-10-10 14:14:17'),
(29, '20111003632', 1, '978-7-302-18429-4', '2013-10-10 14:14:17'),
(30, '20111003632', 1, '7-5083-1290-2', '2013-10-10 14:14:18'),
(31, '20111003632', 1, '978-7-302-26963-2', '2013-10-10 14:14:18'),
(32, '20111003632', 1, '978-7-89474-062-5', '2013-10-10 14:14:18'),
(33, '20111003632', 1, '978-7-89486-517-5', '2013-10-10 14:14:18'),
(34, '20111003632', 1, '978-7-89486-838-1', '2013-10-10 14:14:18'),
(35, '20111003632', 1, '978-7-89479-041-5', '2013-10-10 14:14:18'),
(36, '20111003632', 1, '978-7-121-07658-9', '2013-10-10 14:14:18'),
(37, '20111003632', 1, '978-7-89486-695-0', '2013-10-10 14:14:18'),
(38, '20111003632', 1, '978-7-89479-997-5', '2013-10-10 14:14:18'),
(39, '20111003632', 1, '7-89488-014-0', '2013-10-10 14:14:18'),
(40, '20111003632', 1, '7-89492-480-6', '2013-10-10 14:14:20'),
(41, '20111003632', 1, '978-7-121-11433-5', '2013-10-10 14:14:21'),
(42, '20111003632', 1, '978-7-302-18429-4', '2013-10-10 14:14:21'),
(43, '20111003632', 1, '7-5083-1290-2', '2013-10-10 14:14:21'),
(44, '20111003632', 1, '978-7-302-26963-2', '2013-10-10 14:14:21'),
(45, '20111003632', 1, '978-7-89474-062-5', '2013-10-10 14:14:21'),
(46, '20111003632', 1, '978-7-89486-517-5', '2013-10-10 14:14:21'),
(47, '20111003632', 1, '978-7-89486-838-1', '2013-10-10 14:14:21'),
(48, '20111003632', 1, '978-7-89479-041-5', '2013-10-10 14:14:21'),
(49, '20111003632', 1, '978-7-121-07658-9', '2013-10-10 14:14:21'),
(50, '20111003632', 1, '978-7-89486-695-0', '2013-10-10 14:14:21'),
(51, '20111003632', 1, '978-7-89479-997-5', '2013-10-10 14:14:21'),
(52, '20111003632', 1, '7-89488-014-0', '2013-10-10 14:14:21'),
(53, '20111003632', 1, '7-89492-480-6', '2013-10-10 14:14:24'),
(54, '20111003632', 1, '978-7-121-11433-5', '2013-10-10 14:14:24'),
(55, '20111003632', 1, '978-7-302-18429-4', '2013-10-10 14:14:24'),
(56, '20111003632', 1, '7-5083-1290-2', '2013-10-10 14:14:24'),
(57, '20111003632', 1, '978-7-302-26963-2', '2013-10-10 14:14:24'),
(58, '20111003632', 1, '978-7-89474-062-5', '2013-10-10 14:14:24'),
(59, '20111003632', 1, '978-7-89486-517-5', '2013-10-10 14:14:24'),
(60, '20111003632', 1, '978-7-89486-838-1', '2013-10-10 14:14:24'),
(61, '20111003632', 1, '978-7-89479-041-5', '2013-10-10 14:14:24'),
(62, '20111003632', 1, '978-7-121-07658-9', '2013-10-10 14:14:25'),
(63, '20111003632', 1, '978-7-89486-695-0', '2013-10-10 14:14:25'),
(64, '20111003632', 1, '978-7-89479-997-5', '2013-10-10 14:14:25'),
(65, '20111003632', 1, '7-89488-014-0', '2013-10-10 14:14:25'),
(66, '20111003635', 1, '978-7-89474-069-4', '2013-10-10 14:38:31');

-- --------------------------------------------------------

--
-- 表的结构 `gw_school`
--

CREATE TABLE IF NOT EXISTS `gw_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学校的Id',
  `schoolName` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '学校的名称',
  `fileName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '爬去对应学校的文件名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gw_school`
--

INSERT INTO `gw_school` (`id`, `schoolName`, `fileName`) VALUES
(1, '广东外语外贸大学', 'LibGw'),
(2, '华南理工大学', 'LibHg'),
(3, '暨南大学', 'LibJndx');

-- --------------------------------------------------------

--
-- 表的结构 `gw_user`
--

CREATE TABLE IF NOT EXISTS `gw_user` (
  `studentNumber` char(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '学号',
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schoolId` int(11) NOT NULL COMMENT '学校的id',
  `academy` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `major` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`studentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `gw_user`
--

INSERT INTO `gw_user` (`studentNumber`, `username`, `schoolId`, `academy`, `major`, `email`) VALUES
('20101003608', '林原智', 1, '思科信息学院', '计算机1004', NULL),
('20101003852', '陈奋', 1, '思科信息学院', '信息1001', NULL),
('20110200959', '罗双茂', 1, '国际经济贸易学院', '保险1102', NULL),
('20111003426', '洪栩栩', 1, '思科信息学院', '计算机1101', NULL),
('20111003443', '汪洁文', 1, '思科信息学院', '计算机1101', NULL),
('20111003444', NULL, 1, NULL, NULL, NULL),
('20111003623', '陈勇校', 1, '思科信息学院', '软件1101', NULL),
('20111003625', '陆德华', 1, '思科信息学院', '软件1101', NULL),
('20111003632', NULL, 1, NULL, NULL, NULL),
('20111003635', NULL, 1, NULL, NULL, NULL),
('20111003636', '罗可林', 1, '思科信息学院', '软件1101', NULL),
('20111003653', '袁云', 1, '思科信息学院', '软件1101', NULL),
('D1130581400', NULL, 2, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
