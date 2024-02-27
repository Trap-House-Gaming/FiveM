ALTER TABLE `player_outfits` ADD COLUMN
(
    `active` int(2) DEFAULT 0,
	`props` LONGTEXT
);