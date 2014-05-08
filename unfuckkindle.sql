DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `key` varchar(31) NOT NULL,
  `val` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `config` WRITE;
INSERT INTO `config` VALUES ('lastupdate','0');
UNLOCK TABLES;

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` binary(32) NOT NULL,
  `type` enum('PDOC') CHARACTER SET latin1 NOT NULL DEFAULT 'PDOC',
  `status` enum('new','problem','processed','deleted','queued') CHARACTER SET latin1 NOT NULL DEFAULT 'new',
  `lastmod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `offset` smallint(5) unsigned NOT NULL DEFAULT '38',
  `author` varchar(1024) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `title` varchar(1024) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `url` varchar(1024) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `pubdate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `highlights`;
CREATE TABLE `highlights` (
  `id` binary(32) NOT NULL,
  `iter` smallint(6) NOT NULL DEFAULT '0',
  `content` mediumtext CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
