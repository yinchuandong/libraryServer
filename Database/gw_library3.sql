-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 09 月 25 日 22:27
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `gw_book`
--

INSERT INTO `gw_book` (`id`, `title`, `author`, `publisher`, `url`, `isbn`, `callNumber`, `cover`) VALUES
(1, 'PHP设计模式', '萨莱', '清华大学出版社', 'http://opac.gdufs.edu.cn:8991/F/7372669D8MLXBLED2TG4QQTMJ9DXHMBGJQP2U4XG34PN5I3L8Q-21723?func=direct&doc_number=000408695&format=999&local_base=GWD01', '978-7-302-22843-1', 'TP312PH 126', 'cover_1.png'),
(2, 'PHP Web 2.0开发实战', '泽瓦斯', '电子工艺出版社', 'http://opac.gdufs.edu.cn:8991/F/7372669D8MLXBLED2TG4QQTMJ9DXHMBGJQP2U4XG34PN5I3L8Q-21729?func=direct&doc_number=000355807&format=999&local_base=GWD01', '978-7-115-18731-4', 'TP312PH 105', 'cover_2.png'),
(3, 'PHP设计模式0', '东东', '电子工艺出版社', '电子工艺出版社', '978-7-115-18731-4', 'TP312PH 105', 'cover_2.png'),
(4, 'PHP设计模式1', '东东', '电子工艺出版社', '电子工艺出版社', '978-7-115-18731-4', 'TP312PH 105', 'cover_1.png'),
(5, 'PHP设计模式2', '东东2', '电子工艺出版社', '电子工艺出版社', '978-7-115-18731-4', 'TP312PH 105', 'cover_1.png'),
(6, 'PHP设计模式3', '东东2', '电子工艺出版社', '电子工艺出版社', '978-7-115-18731-4', 'TP312PH 105', 'cover_2.png'),
(7, 'PHP设计模式4', '东东2', '电子工艺出版社', '电子工艺出版社', '978-7-115-18731-4', 'TP312PH 105', 'cover_1.png'),
(8, 'PHP设计模式5', '东东2', '电子工艺出版社', '电子工艺出版社', '978-7-115-18731-4', 'TP312PH 105', 'cover_1.png');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13618 ;

--
-- 转存表中的数据 `gw_history`
--

INSERT INTO `gw_history` (`id`, `studentNumber`, `schoolId`, `title`, `author`, `url`, `isbn`, `callNumber`, `ordered`) VALUES
(13596, '20111003632', 1, '深入PHP', '赞德斯彻', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36487?func=direct&doc_number=000412473&format=999&local_base=GWD01', '978-7-115-22578-8', 'TP312PH 128', 3),
(13597, '20111003632', 1, 'JavaScript实例自学手册', '吴雪', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36490?func=direct&doc_number=000283030&format=999&local_base=GWD01', '978-7-89485-546-6', 'TP312JA 1012', 4),
(13598, '20111003632', 1, 'C++程序设计与应用', '周仲宁', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36493?func=direct&doc_number=000361895&format=999&local_base=GWD01', '7-5053-7829-5', 'TP312C# 23', 5),
(13599, '20111003632', 1, '正则表达式必知必会', '福尔塔', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36496?func=direct&doc_number=000289121&format=999&local_base=GWD01', '978-7-115-16474-2', 'TP301.2 12', 6),
(13600, '20111003632', 1, 'PHP设计模式', '萨莱', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36502?func=direct&doc_number=000408695&format=999&local_base=GWD01', '978-7-302-22843-1', 'TP312PH 126', 8),
(13601, '20111003632', 1, 'PHP深度分析', '沙菲克', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36505?func=direct&doc_number=000432649&format=999&local_base=GWD01', '978-7-5084-6989-8', 'TP312PH 117', 9),
(13602, '20111003632', 1, 'PHP Web 2.0开发实战', '泽瓦斯', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36508?func=direct&doc_number=000355807&format=999&local_base=GWD01', '978-7-115-18731-4', 'TP312PH 105', 10),
(13603, '20111003632', 1, 'JavaScript精彩网页特效实例精粹', '张涛', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36511?func=direct&doc_number=000276011&format=999&local_base=GWD01', '978-7-89488-747-4', 'TP312JA 984', 11),
(13604, '20111003632', 1, 'PHP+Ajax Web PHP设计模式', '叶新伟', 'http://opac.gdufs.edu.cn:8991/F/7372669D8MLXBLED2TG4QQTMJ9DXHMBGJQP2U4XG34PN5I3L8Q-21735?func=direct&doc_number=000304626&format=999&local_base=GWD01', NULL, NULL, 9),
(13605, '20111003632', 1, 'JavaScript网页特效范例宝典', '明日科技', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36517?func=direct&doc_number=000275777&format=999&local_base=GWD01', '978-7-89488-678-1', 'TP312JA 910', 13),
(13606, '20111003632', 1, '电子技术基础', '康华光,', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36520?func=direct&doc_number=000115316&format=999&local_base=GWD01', '', 'TN1 28', 14),
(13607, '20111003632', 1, '电子电路基础', '刘宝玲', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36523?func=direct&doc_number=000275528&format=999&local_base=GWD01', '', 'TN7 17', 15),
(13608, '20111003632', 1, '精通SQL', '高守传', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36529?func=direct&doc_number=000276254&format=999&local_base=GWD01', '7-115-09210-9', 'TP392 607', 17),
(13609, '20111003632', 1, '数据结构课程设计案例精编', '李建学', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36532?func=direct&doc_number=000311230&format=999&local_base=GWD01', '978-7-89486-274-7', 'TP311.12 182', 18),
(13610, '20111003632', 1, '对联入门', '谷向阳,', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36535?func=direct&doc_number=000262728&format=999&local_base=GWD01', NULL, NULL, 19),
(13611, '20111003632', 1, '出现频率最高的100种典型题型精解精练', '余雪勇', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36538?func=direct&doc_number=000305472&format=999&local_base=GWD01', '978-7-302-16678-8', 'TP312C-44 36', 20),
(13612, '20111003632', 1, 'C++习题与解答', '李代平', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36541?func=direct&doc_number=000332982&format=999&local_base=GWD01', '7-5024-3282-5', 'TP312C++ 551-2', 21),
(13613, '20111003632', 1, 'C++程序设计教程实验指导及习题解答', '刘慧宁', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36544?func=direct&doc_number=000361894&format=999&local_base=GWD01', NULL, NULL, 22),
(13614, '20111003632', 1, 'PHP+Ajax Web 2.0编程技术与项目开发大全', '叶新伟', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36514?func=direct&doc_number=000304626&format=999&local_base=GWD01', '978-7-89485-753-8', 'TP312PH 96', 12),
(13615, '20111003632', 1, '英语词汇宝典', '尤克强', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36484?func=direct&doc_number=000223988&format=999&local_base=GWD01', '7-302-07118-7', 'H313.1 331', 2),
(13616, '20111003632', 1, '口笔译高频词汇词典', '王斌华', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36481?func=direct&doc_number=000395358&format=999&local_base=GWD01', '978-7-307-07445-3', 'H313 997', 1),
(13617, '20111003632', 1, '高等学校英语专业全程通用词汇表', '《高等学校英语专业英语教学大纲》词汇表工作组', 'http://opac.gdufs.edu.cn:8991/F/6JQAEIPKX2HXETD2Y253YFA7RCCDDK18556C75KS3TM1IH7RNA-36478?func=direct&doc_number=000176609&format=999&local_base=GWD01', NULL, NULL, 0);

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
(2, '20111003632', 1, '2013-09-25 16:26:24'),
(3, '20111003632', 1, '2013-09-25 21:30:35'),
(4, '20111003632', 1, '2013-09-25 21:40:31'),
(5, '20111003632', 1, '2013-09-25 21:40:34'),
(6, '20111003632', 1, '2013-09-25 21:40:38');

-- --------------------------------------------------------

--
-- 表的结构 `gw_school`
--

CREATE TABLE IF NOT EXISTS `gw_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学校的Id',
  `schoolName` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '学校的名称',
  `fileName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '爬去对应学校的文件名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gw_school`
--

INSERT INTO `gw_school` (`id`, `schoolName`, `fileName`) VALUES
(1, '广东外语外贸大学', 'LibGw'),
(2, '华南理工大学', 'LibHg');

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
('20111003623', '陈勇校', 1, '思科信息学院', '软件1101', NULL),
('20111003625', '陆德华', 1, '思科信息学院', '软件1101', NULL),
('20111003632', NULL, 1, NULL, NULL, NULL),
('20111003636', '罗可林', 1, '思科信息学院', '软件1101', NULL),
('20111003653', '袁云', 1, '思科信息学院', '软件1101', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
