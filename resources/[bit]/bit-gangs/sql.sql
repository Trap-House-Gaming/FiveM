CREATE TABLE IF NOT EXISTS `bit_gangs` (
  `name` varchar(50) DEFAULT NULL,
  `stash` varchar(50) DEFAULT NULL,
  `locker` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `members` longtext DEFAULT NULL,
  `ranks` varchar(100) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `tonext` int(11) DEFAULT NULL,
  `per` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `bit_gangs_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `action` varchar(50) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT 0,
  `zone` varchar(50) NOT NULL DEFAULT '0',
  `gang` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `bit_gangs_event` (
  `name` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `bit_gangs_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `location` varchar(50) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
);

INSERT INTO `bit_gangs_stores` (`id`, `name`, `location`, `balance`) VALUES
	(2573, 'HEARTY TACO', 'vector3(438.5966, -1465.435, 29.29183)', 600),
	(2574, 'GAS STATION MURRIETA', 'vector3(1211.128, -1389.024, 35.3769)', 600),
	(2575, 'BINCO TEXTILE CITY', 'vector3(424.6784, -809.7817, 29.49224)', 600),
	(2576, 'LITTLE TEAPOT', 'vector3(-509.8392, -22.29263, 45.60896)', 600),
	(2577, 'INSERT COIN', 'vector3(-1269.58, -305.2415, 37.00024)', 600),
	(2578, 'TRACTOR PARTS', 'vector3(2506.711, 4097.197, 38.71111)', 600),
	(2579, 'GAS STATION LA MESA', 'vector3(818.3408, -1040.829, 26.75079)', 600),
	(2580, 'YOGARISHIMA', 'vector3(-520.413, -855.3228, 30.2973)', 600),
	(2581, 'DISCOUNT STORE GREAT CHAPARRAL', 'vector3(-1098.5, 2712.675, 19.10897)', 600),
	(2582, 'CRAZEE FASHION', 'vector3(186.9185, -1310.906, 29.32638)', 600),
	(2583, 'LONG PIGS', 'vector3(410.3895, -1910.673, 25.45366)', 600),
	(2584, 'SUBURBAN ALTA', 'vector3(125.9118, -223.3002, 54.55782)', 600),
	(2585, 'BILGECO', 'vector3(-872.7897, -2734.746, 13.9497)', 720),
	(2586, 'ROGERS', 'vector3(-629.4072, -1635.21, 25.97495)', 600),
	(2587, 'GLOBE OIL LA PUERTA', 'vector3(-342.0797, -1475.046, 30.74969)', 600),
	(2588, 'SUBURBAN HARMONY', 'vector3(614.3137, 2761.996, 42.08813)', 600),
	(2589, 'GAS STATION SANDY SHORES', 'vector3(2001.219, 3779.656, 32.18078)', 600),
	(2590, 'LTD LITTLE SEOUL', 'vector3(-705.6524, -911.8751, 19.21559)', 600),
	(2591, 'GAS STATION LAGO ZANCUDO', 'vector3(-2543.718, 2316.056, 33.2161)', 600),
	(2592, 'FACEPALM COSMETICS', 'vector3(-673.7271, -123.1525, 37.86654)', 600),
	(2593, 'XERO PALETO', 'vector3(119.5229, 6626.889, 31.95335)', 600),
	(2594, 'CENT CARPET', 'vector3(464.7596, -1672.171, 29.29151)', 600),
	(2595, 'GLASS HEROES', 'vector3(-229.6847, -1377.32, 31.25822)', 600),
	(2596, 'POISONBYS MORNINGWOOD', 'vector3(-1450.286, -237.368, 49.81056)', 600),
	(2597, 'GAS STATION TATAVIAM', 'vector3(2559.399, 373.5946, 108.6212)', 600),
	(2598, 'MOM TACOS', 'vector3(1144.437, -1008.058, 44.94189)', 600),
	(2599, 'DISCOUNT STORE STRAWBERRY', 'vector3(76.44324, -1389.369, 29.37615)', 600),
	(2600, 'AUTO RE-PEREZ', 'vector3(485.9836, -1296.191, 29.58437)', 600),
	(2601, 'BINCO VESPUCCI', 'vector3(-818.811, -1072.731, 11.32812)', 600),
	(2602, 'THE HEN HOUSE', 'vector3(-300.5738, 6256.163, 31.50289)', 600),
	(2603, 'LTD RICHMAN', 'vector3(-1820.948, 795.2457, 138.0916)', 600),
	(2604, 'XERO PALETO 2', 'vector3(-92.76052, 6410.143, 31.64046)', 600),
	(2605, 'DISCOUNT STORE GRAPESEED', 'vector3(1693.424, 4819.193, 42.06421)', 600),
	(2606, 'GLOBE OIL VINEWOOD', 'vector3(642.2404, 260.2511, 103.2956)', 600),
	(2607, 'HANG TEN', 'vector3(-2963.549, 432.2758, 15.27693)', 600),
	(2608, 'GAS STATION GRAND SENORA', 'vector3(46.46476, 2789.17, 57.8783)', 600),
	(2609, 'SUBURBAN DEL PERRO', 'vector3(-1194.169, -768.8162, 17.31861)', 600),
	(2610, 'CAR WASH STRAWBERRY', 'vector3(43.7859, -1395.05, 29.9779)', 600),
	(2611, 'LTD MIRROR PARK', 'vector3(1164.621, -320.4989, 69.20515)', 600),
	(2612, 'BIG HOUSE', 'vector3(-521.0437, -2196.427, 6.394021)', 600),
	(2613, 'SOUTH LS LIQUOR', 'vector3(456.2508, -2059.284, 23.92599)', 600),
	(2614, 'DISCOUNT STORE PALETO', 'vector3(1.687077, 6510.731, 31.87896)', 600),
	(2615, 'VESPUCCI SPORTS', 'vector3(-945.5681, -1191.423, 4.981727)', 600),
	(2616, 'POISONBYS ROCKFORD', 'vector3(-709.978, -152.8783, 37.41513)', 600),
	(2617, 'REX DINER', 'vector3(2561.742, 2590.951, 38.07466)', 600),
	(2618, 'VINEWOOD PAWN', 'vector3(-1459.551, -414.3165, 35.72509)', 600),
	(2619, 'RING OF FIRE', 'vector3(170.916, -1456.201, 29.24164)', 600),
	(2620, 'AL DENTES', 'vector3(-1258.892, -760.845, 20.3384)', 600),
	(2621, 'XERO GAS LITTLE SEOUL', 'vector3(-531.1493, -1221.398, 18.45501)', 600),
	(2622, 'XERO 24 STRAWBERRY', 'vector3(289.4773, -1267.031, 29.44075)', 600),
	(2623, 'GAS STATION GRAND SENORA 3', 'vector3(1200.42, 2655.996, 37.85188)', 600),
	(2624, 'POISONBYS BURTON', 'vector3(-163.2495, -303.0941, 39.73333)', 600),
	(2625, 'LS CUSTOMS LSAIRPORT', 'vector3(-1142.301, -1993.198, 13.16438)', 600),
	(2626, 'GAS STATION HARMONY', 'vector3(265.8873, 2598.318, 44.83371)', 600),
	(2627, 'PIKEYS LOS SANTOS', 'vector3(-132.9091, -68.67395, 55.41284)', 600),
	(2628, 'GLOBE OIL MOUNT CHILLIAD', 'vector3(1706.068, 6425.894, 32.77272)', 600),
	(2629, 'LOS SANTOS BAG CO.', 'vector3(746.7689, -1399.401, 26.62033)', 600),
	(2630, 'PIPE DOWN CIGARS', 'vector3(278.5309, -1028.295, 29.21088)', 600),
	(2631, 'SPITROASTERS', 'vector3(-242.1918, 278.5691, 92.03944)', 600),
	(2632, 'GLORIA FASHION', 'vector3(199.173, -1269.619, 29.17535)', 600),
	(2633, 'LTD GRAPESEED', 'vector3(1699.275, 4921.887, 42.06368)', 600),
	(2634, 'SUBURBAN CHUMASH', 'vector3(-3170.116, 1044.882, 20.86321)', 600),
	(2635, 'ITALIA NAILS', 'vector3(-818.4729, -1106.971, 11.16838)', 600),
	(2636, 'S.HO', 'vector3(-664.309, -1218.322, 11.81289)', 600),
	(2637, 'SOUND SANCTUARY', 'vector3(364.3318, -875.6678, 29.29163)', 600),
	(2638, 'GAS STATION GRAND SENORA 2', 'vector3(1039.225, 2664.245, 39.55111)', 600),
	(2639, 'PECKERWOOD', 'vector3(-315.8059, 6194.037, 31.5608)', 600),
	(2640, 'DISCOUNT STORE GRAND SENORA', 'vector3(1200.208, 2708.661, 38.22263)', 600),
	(2641, 'GAS STATION GRAND SENORA 4', 'vector3(2673.753, 3266.856, 55.24057)', 600),
	(2642, 'DEL PERRO GIFTS', 'vector3(-1533.562, -905.3174, 10.16787)', 600),
	(2643, 'THE PINK SANDWICH', 'vector3(100.717, 209.4222, 107.9916)', 600),
	(2644, 'LTD DAVIS', 'vector3(-45.23218, -1756.368, 29.42101)', 600);