DROP TABLE IF EXISTS `t1ger_tunershops`;
CREATE TABLE `t1ger_tunershops` (
	`id` INT(11) NOT NULL,
	`account` INT(11) NOT NULL DEFAULT 0,
	`boss` VARCHAR(100) DEFAULT NULL,
	`employees` LONGTEXT DEFAULT ('[]'),
	`storage` LONGTEXT DEFAULT ('[]'),
	`billing` LONGTEXT DEFAULT ('[]'),
	PRIMARY KEY (`id`)
);