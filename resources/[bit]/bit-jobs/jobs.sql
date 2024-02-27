CREATE TABLE IF NOT EXISTS `bit_jobs` (
  `job` varchar(50) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `missions` int(11) DEFAULT NULL,
  `earned` int(11) DEFAULT NULL,
  `points` int(20) DEFAULT NULL
);