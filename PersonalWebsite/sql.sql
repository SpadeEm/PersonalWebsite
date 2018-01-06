-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.17-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 personalwebsite 的数据库结构
CREATE DATABASE IF NOT EXISTS `personalwebsite` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `personalwebsite`;


-- 导出  表 personalwebsite.album 结构
CREATE TABLE IF NOT EXISTS `album` (
  `ALBUM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ALBUM_NAME` varchar(50) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ALBUM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  personalwebsite.album 的数据：~6 rows (大约)
DELETE FROM `album`;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`ALBUM_ID`, `ALBUM_NAME`, `CREATE_TIME`) VALUES
	(1, '风景', '2018-01-03 15:11:25'),
	(2, '人物', '2018-01-05 10:11:31'),
	(3, 'ssaddadsa', '2018-01-04 15:15:02');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;


-- 导出  表 personalwebsite.note 结构
CREATE TABLE IF NOT EXISTS `note` (
  `NOTE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTE_TITLE` varchar(50) NOT NULL DEFAULT '0',
  `NOTE_CONTENT` text,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`NOTE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 正在导出表  personalwebsite.note 的数据：~15 rows (大约)
DELETE FROM `note`;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` (`NOTE_ID`, `NOTE_TITLE`, `NOTE_CONTENT`, `CREATE_TIME`) VALUES
	(1, 'a', 'a123', NULL),
	(2, 'b', 'b123', NULL),
	(3, 'c', 'c123', NULL),
	(4, 'd', 'd123', NULL),
	(5, 'ada', '                	请输入内容\n            ', NULL),
	(6, 'sad', '                	请输入内容\n            ', NULL),
	(7, 'sdad', '                	请输入内容\n            ', NULL),
	(8, 'dada', '                	请输入内容\n            ', NULL),
	(9, 'zxczcz', '            ', NULL),
	(10, 'sadadsa', '<p>hjdgajgdaasd</p>\n', NULL),
	(11, 'asdada', '<p>akjdaddadaa&nbsp;</p>\n', NULL),
	(12, '阿达阿斯顿撒奥多卡大合计', '<p><s>sad撒多奥术大师sada</s>&nbsp;<em><s> sadasda&nbsp;&nbsp;</s></em>&nbsp; s是空间大阿达爱上搭建</p>\n', NULL),
	(13, '出事表（前）', '<p>先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也。</p>\n\n<p>宫中府中，俱为一体，陟罚臧否，不宜异同。若有作奸犯科及为忠善者，宜付有司论其刑赏，以昭陛下平明之理，不宜偏私，使内外异法也。</p>\n\n<p>侍中、侍郎郭攸之、费祎、董允等，此皆良实，志虑忠纯，是以先帝简拔以遗陛下。愚以为宫中之事，事无大小，悉以咨之，然后施行，必得裨补阙漏，有所广益。</p>\n\n<p>将军向宠，性行淑均，晓畅军事，试用之于昔日，先帝称之曰能，是以众议举宠为督。愚以为营中之事，悉以咨之，必能使行阵和睦，优劣得所。</p>\n\n<p>亲贤臣，远小人，此先汉所以兴隆也；亲小人，远贤臣，此后汉所以倾颓也。先帝在时，每与臣论此事，未尝不叹息痛恨于桓、灵也。侍中、尚书、长史、参军，此悉贞良死节之臣，愿陛下亲之信之，则汉室之隆，可计日而待也。</p>\n\n<p>臣本布衣，躬耕于南阳，苟全性命于乱世，不求闻达于诸侯。先帝不以臣卑鄙，猥自枉屈，三顾臣于草庐之中，咨臣以当世之事，由是感激，遂许先帝以驱驰。后值倾覆，受任于败军之际，奉命于危难之间，尔来二十有一年矣。</p>\n\n<p>先帝知臣谨慎，故临崩寄臣以大事也。受命以来，夙夜忧叹，恐付托不效，以伤先帝之明，故五月渡泸，深入不毛。今南方已定，兵甲已足，当奖率三军，北定中原，庶竭驽钝，攘除奸凶，兴复汉室，还于旧都。此臣所以报先帝而忠陛下之职分也。至于斟酌损益，进尽忠言，则攸之、祎、允之任也。</p>\n\n<p>愿陛下托臣以讨贼兴复之效，不效，则治臣之罪，以告先帝之灵。若无兴德之言，则责攸之、祎、允等之慢，以彰其咎；陛下亦宜自谋，以咨诹善道，察纳雅言，深追先帝遗诏，臣不胜受恩感激。</p>\n\n<p>今当远离，临表涕零，不知所言。</p>\n', '2018-01-04 09:36:40'),
	(14, '安静的哈健康的健康好', '<p>三大框架大的空间啊很卡 阿达的阿达的阿达啊</p>\n', '2018-01-04 09:57:57'),
	(15, 'sadadsada', '<p>sada ada dada adasd&nbsp;</p>\n', '2018-01-04 15:05:11');
/*!40000 ALTER TABLE `note` ENABLE KEYS */;


-- 导出  表 personalwebsite.photo 结构
CREATE TABLE IF NOT EXISTS `photo` (
  `PHOTO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PHOTO_NAME` varchar(50) DEFAULT NULL,
  `PHOTO_PATH` varchar(50) DEFAULT NULL,
  `ALBUM_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PHOTO_ID`),
  KEY `FK_photo_album` (`ALBUM_ID`),
  CONSTRAINT `FK_photo_album` FOREIGN KEY (`ALBUM_ID`) REFERENCES `album` (`ALBUM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- 正在导出表  personalwebsite.photo 的数据：~4 rows (大约)
DELETE FROM `photo`;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` (`PHOTO_ID`, `PHOTO_NAME`, `PHOTO_PATH`, `ALBUM_ID`) VALUES
	(15, 'slide-1.jpg', '/photo/slide-1.jpg', 3),
	(16, 'pic-5.jpg', '/photo/pic-5.jpg', 3),
	(17, 'pi-2.jpg', '/photo/pi-2.jpg', 2),
	(18, 'pi-2.jpg', '/photo/pi-2.jpg', 1),
	(19, 'pi-2.jpg', '/photo/pi-2.jpg', 3),
	(20, 'pi-3.jpg', '/photo/pi-3.jpg', 1),
	(21, 'pi-4.jpg', '/photo/pi-4.jpg', 1);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;


-- 导出  表 personalwebsite.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `USER_PASSWORD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  personalwebsite.user 的数据：~0 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
