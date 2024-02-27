DROP TABLE IF EXISTS `t1ger_mechanicsystem`;
CREATE TABLE `t1ger_mechanicsystem` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`account` INT(11) NOT NULL DEFAULT 0,
	`boss` VARCHAR(100) DEFAULT NULL,
	`disabled` TINYINT(1) NOT NULL DEFAULT 0,
	`employees` LONGTEXT DEFAULT NULL,
	`storage` LONGTEXT DEFAULT NULL,
	`job` LONGTEXT DEFAULT NULL,
	`blip` LONGTEXT DEFAULT NULL,
	`markers` LONGTEXT DEFAULT NULL,
	`billing` LONGTEXT DEFAULT NULL,
	`lifts` LONGTEXT DEFAULT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `player_vehicles` ADD COLUMN `t1ger_metadata` LONGTEXT NOT NULL DEFAULT ('{"service":[],"health":[],"mileage":0}');