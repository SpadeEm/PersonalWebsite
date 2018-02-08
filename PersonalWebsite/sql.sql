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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 personalwebsite.note 结构
CREATE TABLE IF NOT EXISTS `note` (
  `NOTE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTE_TITLE` varchar(50) NOT NULL DEFAULT '0',
  `NOTE_CONTENT` text,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`NOTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 personalwebsite.photo 结构
CREATE TABLE IF NOT EXISTS `photo` (
  `PHOTO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PHOTO_NAME` varchar(50) DEFAULT NULL,
  `PHOTO_PATH` varchar(50) DEFAULT NULL,
  `ALBUM_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PHOTO_ID`),
  KEY `FK_photo_album` (`ALBUM_ID`),
  CONSTRAINT `FK_photo_album` FOREIGN KEY (`ALBUM_ID`) REFERENCES `album` (`ALBUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 personalwebsite.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `USER_PASSWORD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- 导出  表 personalwebsite.comment 结构
CREATE TABLE `comment` (
	`CMT_ID` INT(11) NOT NULL AUTO_INCREMENT,
	`CMT_NAME` VARCHAR(50) NULL DEFAULT NULL,
	`CMT_PIC` VARCHAR(50) NULL DEFAULT NULL,
	`CMT_CONTENT` TEXT NULL,
	`CMT_TIME` DATETIME NULL DEFAULT NULL,
	`NOTE_ID` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`CMT_ID`),
	INDEX `FK__note` (`NOTE_ID`),
	CONSTRAINT `FK__note` FOREIGN KEY (`NOTE_ID`) REFERENCES `note` (`NOTE_ID`) ON UPDATE CASCADE ON DELETE CASCADE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
