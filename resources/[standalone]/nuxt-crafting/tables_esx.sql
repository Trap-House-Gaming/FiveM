ALTER TABLE `users` ADD COLUMN `researched_items` longtext NOT NULL DEFAULT '[]';

CREATE TABLE IF NOT EXISTS `crafting_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;