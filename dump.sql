-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных kot_blya
CREATE DATABASE IF NOT EXISTS `kot_blya` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kot_blya`;


-- Дамп структуры для таблица kot_blya.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `comments_id` int(11) NOT NULL AUTO_INCREMENT,
  `component` enum('images','pages') DEFAULT 'images',
  `object_id` int(11) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`comments_id`),
  KEY `component` (`component`),
  KEY `object_id` (`object_id`),
  KEY `users_id` (`users_id`),
  KEY `date_added` (`date_added`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kot_blya.comments: ~107 rows (приблизительно)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`comments_id`, `component`, `object_id`, `comment`, `users_id`, `date_added`) VALUES
	(1, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(2, 'pages', 12, 'sadfadfasdfadsfadsf', 234234, '2014-02-01 00:00:00'),
	(3, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(4, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(5, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(6, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(7, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(8, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(9, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(10, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(11, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(12, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(13, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(14, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(15, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(16, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(17, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(18, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(19, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(20, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(21, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(22, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(23, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(24, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(25, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(26, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(27, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(28, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(29, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(30, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(31, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(32, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(33, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(34, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(35, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(36, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(37, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(38, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(39, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(40, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(41, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(42, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(43, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(44, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(45, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(46, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(47, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(48, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(49, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(50, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(51, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(52, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(53, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(54, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(55, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(56, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(57, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(58, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(59, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(60, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(61, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(62, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(63, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(64, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(65, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(66, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(67, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(68, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(69, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(70, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(71, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(72, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(73, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(74, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(75, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(76, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(77, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(78, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(79, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(80, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(81, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(82, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(83, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(84, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(85, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(86, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(87, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(88, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(89, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(90, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(91, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(92, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(93, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(94, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(95, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(96, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(97, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(98, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(99, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(100, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(101, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(102, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(103, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(104, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(105, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(106, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00'),
	(107, 'images', 12, 'sdfadsfadsfasdfadf', 23, '2014-01-01 00:00:00');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- Дамп структуры для таблица kot_blya.images
CREATE TABLE IF NOT EXISTS `images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `pages_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `users_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`images_id`),
  KEY `users_id` (`users_id`),
  KEY `date_added` (`date_added`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kot_blya.images: ~19 rows (приблизительно)
DELETE FROM `images`;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`images_id`, `pages_id`, `title`, `name`, `path`, `users_id`, `date_added`) VALUES
	(1, 1, 'Первая картинка', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(2, 2, 'Вторая картинка', 'kot-test.jpg', '/path/', 1, '2015-02-11 20:40:14'),
	(3, 1, 'Третья картинка', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(4, 1, 'Четвертая картинка', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(5, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(6, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(7, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(8, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(9, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(10, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(11, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(12, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(13, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(14, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(15, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(16, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(17, 1, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(18, 2, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49'),
	(19, 2, 'dev null', 'kot.jpg', '/path/', 1, '2015-02-11 20:39:49');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


-- Дамп структуры для таблица kot_blya.migration
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kot_blya.migration: ~2 rows (приблизительно)
DELETE FROM `migration`;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1424117085),
	('m130524_201442_init', 1424117088);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;


-- Дамп структуры для таблица kot_blya.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `pages_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` varchar(1000) DEFAULT '',
  `users_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `count_images` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `users_id` (`users_id`),
  KEY `date_added` (`date_added`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kot_blya.pages: ~43 rows (приблизительно)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`pages_id`, `title`, `text`, `users_id`, `date_added`, `count_images`) VALUES
	(1, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 1),
	(2, 'Как мы пишем Кот?', '', 1, '2015-02-11 20:37:54', 2),
	(3, 'Нахуя мы пишем Кот?', '', 1, '2015-02-11 20:37:54', 3),
	(4, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 4),
	(5, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 5),
	(6, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 6),
	(7, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 7),
	(8, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 8),
	(9, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 9),
	(10, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 10),
	(11, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 11),
	(12, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 12),
	(13, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 13),
	(14, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 14),
	(15, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 15),
	(16, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 16),
	(17, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 17),
	(18, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 18),
	(19, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 19),
	(20, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 20),
	(21, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 21),
	(22, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 22),
	(23, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 23),
	(24, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 24),
	(25, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 25),
	(26, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 26),
	(27, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 27),
	(28, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 28),
	(29, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 29),
	(30, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 30),
	(31, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 31),
	(32, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 32),
	(33, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 33),
	(34, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 34),
	(35, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 35),
	(36, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 36),
	(37, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 37),
	(38, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 38),
	(39, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 39),
	(40, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 40),
	(41, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 41),
	(42, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 42),
	(43, 'Плин мы котим кот', '', 1, '2015-02-11 20:37:24', 43);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Дамп структуры для таблица kot_blya.status_components
CREATE TABLE IF NOT EXISTS `status_components` (
  `status_components_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_lists_id` int(11) NOT NULL,
  `component` enum('images','pages') DEFAULT 'images',
  `users_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`status_components_id`),
  KEY `users_id` (`users_id`),
  KEY `date_added` (`date_added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kot_blya.status_components: ~0 rows (приблизительно)
DELETE FROM `status_components`;
/*!40000 ALTER TABLE `status_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_components` ENABLE KEYS */;


-- Дамп структуры для таблица kot_blya.status_lists
CREATE TABLE IF NOT EXISTS `status_lists` (
  `status_lists_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(100) NOT NULL,
  `users_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`status_lists_id`),
  KEY `users_id` (`users_id`),
  KEY `date_added` (`date_added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kot_blya.status_lists: ~0 rows (приблизительно)
DELETE FROM `status_lists`;
/*!40000 ALTER TABLE `status_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_lists` ENABLE KEYS */;


-- Дамп структуры для таблица kot_blya.users
CREATE TABLE IF NOT EXISTS `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `users_login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `users_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_status` smallint(6) NOT NULL DEFAULT '10',
  `users_date_added` datetime NOT NULL,
  `users_date_last_update` datetime NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы kot_blya.users: ~1 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`users_id`, `users_login`, `users_auth_key`, `users_password`, `users_password_reset_token`, `users_email`, `users_status`, `users_date_added`, `users_date_last_update`, `created_at`, `updated_at`) VALUES
	(1, 'root', 'bVEivdJtSdtZXMEoBxwEgwCxMCr0pByw', '$2y$13$ZQxEWz5PHfY5YfoV8Se/AuvDG1FV4/10wXGe5xILpc8WYDkG67JWS', NULL, 'root@root.ru', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1424152320, 1424152320);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
