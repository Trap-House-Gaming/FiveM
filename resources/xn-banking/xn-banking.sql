-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 02:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `cashiercoords` longtext DEFAULT NULL,
  `beforevaults` longtext DEFAULT NULL,
  `vaults` longtext DEFAULT NULL,
  `vaultgate` longtext DEFAULT NULL,
  `finalgate` longtext DEFAULT NULL,
  `vg_spots` longtext DEFAULT NULL,
  `m_spots` longtext DEFAULT NULL,
  `bankOpen` tinyint(1) NOT NULL DEFAULT 1,
  `bankCooldown` int(11) NOT NULL DEFAULT 0,
  `bankType` enum('Small','Big','Paleto') NOT NULL DEFAULT 'Small',
  `moneyBags` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `coords`, `cashiercoords`, `beforevaults`, `vaults`, `vaultgate`, `finalgate`, `vg_spots`, `m_spots`, `bankOpen`, `bankCooldown`, `bankType`, `moneyBags`) VALUES
(1, 'Fleeca', '{\"x\":149.88,\"y\":-1040.34,\"z\":29.37,\"h\":157.66}', '{\"door\":{\"outside\":{\"x\":145.26,\"y\":-1041.17,\"z\":29.37,\"h\":242.62},\"coords\":{\"x\":145.4186,\"y\":-1041.813,\"z\":29.64255}, \"hash\":-131754413, \"oh\":160.0 , \"ch\":249.846}, \"counters\":[{\"x\":146.87,\"y\":-1041.12,\"z\":29.37,\"h\":339.77},{\"x\":148.23,\"y\":-1041.62,\"z\":29.37,\"h\":345.57},{\"x\":149.66,\"y\":-1042.15,\"z\":29.37,\"h\":346.35},{\"x\":150.98,\"y\":-1042.62,\"z\":29.37,\"h\":332.29}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":147.515,\"y\":-1044.41,\"z\":29.47},\"drip\":{\"x\":147.29,\"y\":-1045.41,\"z\":29.37},\"bomb\":{\"offset\":{\"x\":0.20,\"y\":-0.025,\"z\":0.15},\"rotation\":{\"x\":90.0,\"y\":-90.0,\"z\":0.0}},\"heading\":250.0},\"coords\":{\"x\":148.0266,\"y\":-1044.364,\"z\":29.50693}, \"hash\":2121050683, \"oh\": 160.0, \"ch\":249.846}, \"coords\":{\"x\":146.94,\"y\":-1046.14,\"z\":29.37,\"h\":247.43}}', '{\"door\":{\"coords\":{\"x\":150.2913,\"y\":-1047.629,\"z\":29.6663}, \"hash\":-1591004109, \"oh\": 90.0, \"ch\":159.478}, \"coords\":{\"x\":148.55,\"y\":-1046.29,\"z\":29.35,\"h\":162.25}}', NULL, '[{\"x\":151.18,\"y\":-1046.7,\"z\":29.35,\"h\":248.73},{\"x\":150.53,\"y\":-1045.16,\"z\":29.35,\"h\":340.25},{\"x\":149.03,\"y\":-1044.7,\"z\":29.35,\"h\":333.25}]', '[{\"x\":147.11,\"y\":-1047.69,\"z\":29.35,\"h\":77.05},{\"x\":146.6,\"y\":-1049.02,\"z\":29.35,\"h\":69.09},{\"x\":146.94,\"y\":-1050.24,\"z\":29.35,\"h\":160.26},{\"x\":149.21,\"y\":-1051.16,\"z\":29.35,\"h\":158.39},{\"x\":150.6,\"y\":-1049.09,\"z\":29.35,\"h\":253.12}]', 1, 0, 'Small', NULL),
(2, 'Fleeca 2', '{\"x\":-350.83,\"y\":-49.6,\"z\":49.04,\"h\":156.65}', '{\"door\":{\"outside\":{\"x\":-355.5,\"y\":-50.52,\"z\":49.04,\"h\":250.89},\"coords\":{\"x\":-355.3892,\"y\":-51.06769,\"z\":49.31105}, \"hash\":-131754413, \"oh\":160.0 , \"ch\":249.846}, \"counters\":[{\"x\":-354.06,\"y\":-50.37,\"z\":49.04,\"h\":340.74},{\"x\":-352.64,\"y\":-50.92,\"z\":49.04,\"h\":342.21},{\"x\":-351.15,\"y\":-51.34,\"z\":49.04,\"h\":339.83},{\"x\":-349.83,\"y\":-51.82,\"z\":49.04,\"h\":332.06}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":-353.235,\"y\":-53.645,\"z\":49.14},\"drip\":{\"x\":-353.41,\"y\":-54.53,\"z\":49.04},\"bomb\":{\"rotation\":{\"x\":90.0,\"y\":-90.0,\"z\":0.0},\"offset\":{\"x\":0.25,\"y\":-0.125,\"z\":0.15}},\"heading\":250.0},\"coords\":{\"x\":-352.7365,\"y\":-53.57248,\"z\":49.17543}, \"hash\":2121050683, \"oh\": 160.0, \"ch\":249.846}, \"coords\":{\"x\":-353.85,\"y\":-55.32,\"z\":49.04,\"h\":247.94}}', '{\"door\":{\"coords\":{\"x\":-350.4144,\"y\":-56.79705,\"z\":49.3348}, \"hash\":-1591004109, \"oh\": 90.0, \"ch\":159.478}, \"coords\":{\"x\":-352.16,\"y\":-55.5,\"z\":49.01,\"h\":155.42}}', NULL, '[{\"x\":-349.55,\"y\":-55.83,\"z\":49.01,\"h\":250.5},{\"x\":-350.3,\"y\":-54.37,\"z\":49.01,\"h\":335.7},{\"x\":-351.58,\"y\":-53.84,\"z\":49.01,\"h\":344.11}]', '[{\"x\":-353.56,\"y\":-56.99,\"z\":49.01,\"h\":71.28},{\"x\":-354.12,\"y\":-58.49,\"z\":49.01,\"h\":70.56},{\"x\":-353.35,\"y\":-59.59,\"z\":49.01,\"h\":159.66},{\"x\":-351.55,\"y\":-60.29,\"z\":49.01,\"h\":169.66},{\"x\":-350.17,\"y\":-59.12,\"z\":49.01,\"h\":252.22}]', 1, 0, 'Small', NULL),
(3, 'Fleeca 3', '{\"y\":-278.46,\"z\":54.17,\"h\":161.96,\"x\":314.36}', '{\"door\":{\"outside\":{\"y\":-279.61,\"z\":54.16,\"h\":257.06,\"x\":309.62},\"coords\":{\"x\":309.74914550781,\"y\":-280.1796875,\"z\":54.439262390137}, \"hash\":-131754413, \"oh\":170.0 , \"ch\":249.86596679688}, \"counters\":[{\"y\":-279.47,\"z\":54.16,\"h\":336.19,\"x\":311.17},{\"y\":-280.04,\"z\":54.16,\"h\":335.54,\"x\":312.59},{\"y\":-280.57,\"z\":54.16,\"h\":348.41,\"x\":314.09},{\"y\":-281.04,\"z\":54.16,\"h\":346.89,\"x\":315.44}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":311.85,\"y\":-282.7875,\"z\":54.26},\"drip\":{\"x\":311.6,\"y\":-283.75,\"z\":54.16},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-70.0,\"z\":0.0},\"offset\":{\"x\":0.2775,\"y\":-0.04525,\"z\":0.15}},\"heading\":250.8},\"coords\":{\"x\":312.35800170898,\"y\":-282.73013305664,\"z\":54.303646087646}, \"hash\":2121050683, \"oh\": 160.0, \"ch\":249.86596679688}, \"coords\":{\"y\":-284.47,\"z\":54.16,\"h\":238.11,\"x\":311.25}}', '{\"door\":{\"coords\":{\"x\":314.62387084961,\"y\":-285.99447631836,\"z\":54.463008880615}, \"hash\":-1591004109, \"oh\": 90.0, \"ch\":159.86486816406}, \"coords\":{\"y\":-284.65,\"z\":54.14,\"h\":156.52,\"x\":312.85}}', NULL, '[{\"y\":-282.92,\"z\":54.14,\"h\":332.43,\"x\":313.28},{\"y\":-283.55,\"z\":54.14,\"h\":342.97,\"x\":314.91},{\"y\":-285.06,\"z\":54.14,\"h\":269.63,\"x\":315.49}]', '[{\"y\":-286.9,\"z\":54.14,\"h\":65.4,\"x\":311.13},{\"y\":-288.78,\"z\":54.14,\"h\":161.69,\"x\":311.49},{\"y\":-289.41,\"z\":54.14,\"h\":161.05,\"x\":313.18},{\"y\":-288.29,\"z\":54.14,\"h\":250.12,\"x\":314.91}]', 1, 0, 'Small', NULL),
(4, 'Fleeca 4', '{\"y\":-330.26,\"z\":37.79,\"h\":202.22,\"x\":-1212.98}', '{\"door\":{\"outside\":{\"y\":-334.43,\"z\":37.78,\"h\":297.06,\"x\":-1215.42},\"coords\":{\"x\":-1214.9053955078,\"y\":-334.72808837891,\"z\":38.055507659912}, \"hash\":-131754413, \"oh\":206.0 , \"ch\":296.86373901367}, \"counters\":[{\"y\":-333.21,\"z\":37.78,\"h\":20.72,\"x\":-1214.47},{\"y\":-332.53,\"z\":37.78,\"h\":27.31,\"x\":-1213.13},{\"y\":-331.85,\"z\":37.78,\"h\":23.82,\"x\":-1211.79},{\"y\":-331.23,\"z\":37.78,\"h\":29.4,\"x\":-1210.52}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":-1210.84,\"y\":-334.672,\"z\":37.88},\"drip\":{\"y\":-335.82,\"z\":37.78,\"h\":292.56,\"x\":-1211.04},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-117.0,\"z\":0.0},\"offset\":{\"x\":0.2275,\"y\":0.18525,\"z\":0.15}},\"heading\":300.0},\"coords\":{\"x\":-1211.2609863281,\"y\":-334.55960083008,\"z\":37.919891357422}, \"hash\":2121050683, \"oh\": 206.0, \"ch\":296.86373901367}, \"coords\":{\"y\":-336.54,\"z\":37.78,\"h\":300.07,\"x\":-1210.74}}', '{\"door\":{\"coords\":{\"x\":-1207.3282470703,\"y\":-335.12893676758,\"z\":38.079254150391}, \"hash\":-1591004109, \"oh\": 116.0, \"ch\":206.86373901367}, \"coords\":{\"y\":-335.44,\"z\":37.76,\"h\":208.27,\"x\":-1209.54}}', NULL, '[{\"y\":-333.94,\"z\":37.76,\"h\":18.13,\"x\":-1210.35},{\"y\":-333.27,\"z\":37.76,\"h\":17.2,\"x\":-1208.9},{\"y\":-333.75,\"z\":37.76,\"h\":297.68,\"x\":-1207.46}]', '[{\"y\":-338.26,\"z\":37.76,\"h\":116.27,\"x\":-1209.09},{\"y\":-339.5,\"z\":37.76,\"h\":209.88,\"x\":-1207.77},{\"y\":-338.33,\"z\":37.76,\"h\":206.97,\"x\":-1205.55},{\"y\":-336.61,\"z\":37.76,\"h\":293.18,\"x\":-1205.48}]', 1, 0, 'Small', NULL),
(5, 'Fleeca 5', '{\"y\":482.81,\"z\":15.7,\"h\":263.13,\"x\":-2963.45}', '{\"door\":{\"outside\":{\"y\":478.74,\"z\":15.7,\"h\":2.36,\"x\":-2960.71},\"coords\":{\"x\":-2960.1762695313,\"y\":479.0104675293,\"z\":15.971563339233}, \"hash\":-131754413, \"oh\":267.0 , \"ch\":357.54205322266}, \"counters\":[{\"y\":480.22,\"z\":15.7,\"h\":102.5,\"x\":-2961.21},{\"y\":481.59,\"z\":15.7,\"h\":80.38,\"x\":-2961.19},{\"y\":483.14,\"z\":15.7,\"h\":89.06,\"x\":-2961.07},{\"y\":484.51,\"z\":15.7,\"h\":89.16,\"x\":-2961.09}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":-2957.353,\"y\":483.2,\"z\":15.75},\"drip\":{\"y\":481.9,\"z\":15.7,\"h\":292.56,\"x\":-2957.33},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-180.0,\"z\":0.0},\"offset\":{\"x\":-0.0495,\"y\":0.22525,\"z\":0.15}},\"heading\":355.0},\"coords\":{\"x\":-2958.5385742188,\"y\":482.27056884766,\"z\":15.83594417572}, \"hash\":-63539571, \"oh\": 267.0, \"ch\":357.54205322266}, \"coords\":{\"y\":481.7,\"z\":15.7,\"h\":4.28,\"x\":-2956.5}}', '{\"door\":{\"coords\":{\"x\":-2956.1162109375,\"y\":485.42059326172,\"z\":15.995308876038}, \"hash\":-1591004109, \"oh\": 197.0, \"ch\":267.54205322266}, \"coords\":{\"y\":483.33,\"z\":15.68,\"h\":273.76,\"x\":-2956.87}}', NULL, '[{\"y\":483.36,\"z\":15.68,\"h\":88.47,\"x\":-2958.6},{\"y\":485.0,\"z\":15.68,\"h\":84.28,\"x\":-2958.44},{\"y\":485.96,\"z\":15.68,\"h\":359.14,\"x\":-2957.34}]', '[{\"y\":482.38,\"z\":15.68,\"h\":177.51,\"x\":-2954.18},{\"y\":483.4,\"z\":15.68,\"h\":269.76,\"x\":-2952.52},{\"y\":485.46,\"z\":15.68,\"h\":265.06,\"x\":-2952.43},{\"y\":486.28,\"z\":15.68,\"h\":350.95,\"x\":-2954.08}]', 1, 0, 'Small', NULL),
(6, 'Fleeca 6', '{\"y\":2706.07,\"z\":38.09,\"h\":3.7,\"x\":1175.15}', '{\"door\":{\"outside\":{\"y\":2708.92,\"z\":38.09,\"h\":93.29,\"x\":1179.26},\"coords\":{\"x\":1178.8695068359,\"y\":2709.3647460938,\"z\":38.362506866455}, \"hash\":-131754413, \"oh\":0.1 , \"ch\":90.0}, \"counters\":[{\"y\":2708.25,\"z\":38.09,\"h\":173.3,\"x\":1177.77},{\"y\":2708.23,\"z\":38.09,\"h\":181.91,\"x\":1176.23},{\"y\":2708.24,\"z\":38.09,\"h\":187.4,\"x\":1174.81},{\"y\":2708.21,\"z\":38.09,\"h\":183.0,\"x\":1173.38}]}', NULL, '{\"door\":{\"thermite\":{\"spark\":{\"x\":1175.66,\"y\":2713.025,\"z\":38.19},\"drip\":{\"y\":2712.09,\"z\":38.09,\"h\":92.71,\"x\":1175.86},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-270.0,\"z\":0.0},\"offset\":{\"x\":-0.2195,\"y\":-0.05925,\"z\":0.13}},\"heading\":90.0},\"coords\":{\"x\":1175.5421142578,\"y\":2710.861328125,\"z\":38.226890563965}, \"hash\":2121050683, \"oh\": 0.1, \"ch\":90.0}, \"coords\":{\"y\":2712.88,\"z\":38.09,\"h\":97.27,\"x\":1175.97}}', '{\"door\":{\"coords\":{\"x\":1172.2911376953,\"y\":2713.1462402344,\"z\":38.386253356934}, \"hash\":-1591004109, \"oh\": 289.0, \"ch\":359.0}, \"coords\":{\"y\":2712.49,\"z\":38.07,\"h\":2.81,\"x\":1174.41}}', NULL, '[{\"y\":2710.82,\"z\":38.07,\"h\":183.46,\"x\":1174.3},{\"y\":2710.73,\"z\":38.07,\"h\":186.75,\"x\":1172.99},{\"y\":2711.95,\"z\":38.07,\"h\":90.38,\"x\":1171.78}]', '[{\"y\":2715.16,\"z\":38.07,\"h\":271.11,\"x\":1175.2},{\"y\":2716.82,\"z\":38.07,\"h\":356.82,\"x\":1174.22}{\"y\":2716.82,\"z\":38.07,\"h\":356.82,\"x\":1174.22},{\"y\":2716.79,\"z\":38.07,\"h\":1.54,\"x\":1172.25},{\"y\":2715.23,\"z\":38.07,\"h\":99.02,\"x\":1171.22}]', 1, 0, 'Small', NULL),
(9, 'Paleto', '{\"x\":-112.22,\"h\":314.95,\"z\":31.63,\"y\":6468.92}', '{\"door\":{\"outside\":{\"y\":6468.29,\"z\":31.63,\"h\":41.06,\"x\":-108.89},\"reverse\":1,\"coords\":{\"x\":-108.91468811035,\"y\":6469.1049804688,\"z\":31.910284042358}, \"hash\":-1184592117, \"oh\":325.0 , \"ch\":44.863204956055}, \"counters\":[{\"y\":6468.99,\"z\":31.63,\"h\":136.44,\"x\":-110.22},{\"y\":6470.04,\"z\":31.63,\"h\":134.15,\"x\":-111.27},{\"y\":6471.14,\"z\":31.63,\"h\":134.03,\"x\":-112.28},{\"y\":6472.25,\"z\":31.63,\"h\":132.97,\"x\":-113.35}]}', '{\"door\":{\"coords\":{\"x\":-104.60489654541,\"y\":6473.4438476563,\"z\":31.795324325562,\"h\":150.00003051758},\"hash\":-1185205679,\"ch\":45.0,\"oh\":150.00003051758},\"coords\":{\"y\":6471.9,\"z\":31.63,\"h\":40.24,\"x\":-105.54}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":-105.8085,\"y\":6473.49509,\"z\":31.80},\"drip\":{\"y\":6472.29,\"z\":31.63,\"h\":184.07,\"x\":-105.49},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-225.0,\"z\":0.0},\"offset\":{\"x\":-0.32795,\"y\":0.220195,\"z\": 0.175}},\"heading\":45.0},\"reverse\":1,\"coords\":{\"x\":-104.81363677979,\"y\":6473.646484375,\"z\":31.9547996521}, \"hash\":1622278560, \"oh\": 325.0, \"ch\":45.013021469116}, \"coords\":{\"y\":6472.36,\"z\":31.63,\"h\":37.87,\"x\":-105.43}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":-105.552,\"y\":6476.13,\"z\":31.95},\"drip\":{\"y\":6474.6,\"z\":31.63,\"h\":314.79,\"x\":-105.82},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-135.0,\"z\":0.0},\"offset\":{\"x\":0.26795,\"y\":0.5495,\"z\":0.36}},\"heading\":320.0},\"coords\":{\"x\":-106.47130584717,\"y\":6476.1577148438,\"z\":31.9547996521}, \"hash\":1309269072, \"oh\": 244.0, \"ch\":314.96466064453}, \"coords\":{\"y\":6474.72,\"z\":31.63,\"h\":316.34,\"x\":-105.76}}', NULL, '[{\"y\":6472.92,\"z\":31.63,\"h\":141.47,\"x\":-106.56},{\"y\":6474.14,\"z\":31.63,\"h\":133.41,\"x\":-107.76},{\"y\":6475.82,\"z\":31.63,\"h\":55.73,\"x\":-107.53}]', '[{\"y\":6475.52,\"z\":31.63,\"h\":225.83,\"x\":-102.89},{\"y\":6477.48,\"z\":31.68,\"h\":320.61,\"x\":-102.47},{\"y\":6478.97,\"z\":31.63,\"h\":316.32,\"x\":-103.95},{\"y\":6478.68,\"z\":31.63,\"h\":39.94,\"x\":-105.89}]', 1, 0, 'Paleto', '{\"x\":-113.32,\"h\":316.07,\"z\":31.63,\"y\":6469.96}'),
(10, 'Pacific', '{\"x\":242.1,\"y\":224.44,\"z\":106.29,\"h\":336.9}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":257.457,\"y\":221.105,\"z\":106.39},\"drip\":{\"x\":257.27,\"y\":219.8,\"z\":106.29},\"bomb\":{\"rotation\":{\"x\":90.0,\"y\":-20.0,\"z\":0.0},\"offset\":{\"x\":0.135,\"y\":0.385,\"z\":0.15}},\"heading\":339.0},\"outside\":{\"x\":256.79,\"y\":220.03,\"z\":106.29,\"h\":355.46},\"coords\":{\"x\":256.31155395508,\"y\":220.65785217285,\"z\":106.42955780029,\"h\":340.00003051758},\"hash\":-222270721,\"ch\":-19.999971389771,\"oh\":70.0},\"coords\":{\"x\":256.79,\"y\":220.03,\"z\":106.29,\"h\":355.46}}', '{\"door\":{\"coords\":{\"x\":262.19808959961,\"y\":222.51881408691,\"z\":106.42955780029,\"h\":256.77621459961},\"hash\":746855201,\"ch\":-110.22378540039,\"oh\":-20.0},\"coords\":{\"x\":261.95,\"y\":223.1,\"z\":106.28,\"h\":241.67}}', '{\"door\":{\"coords\":{\"x\":255.22825622559,\"y\":223.97601318359,\"z\":102.39321899414,\"h\":160.17094421387},\"hash\":961976194,\"ch\":160.17094421387,\"oh\":70.0},\"coords\":{\"x\":253.29,\"y\":228.46,\"z\":101.68,\"h\":65.44}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":252.99,\"y\":221.75,\"z\":101.78},\"drip\":{\"x\":253.0,\"y\":220.97,\"z\":101.68},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":20.0,\"z\":0.0},\"offset\":{\"x\":-0.005,\"y\":-0.255,\"z\":0.15}},\"heading\":161.0},\"coords\":{\"x\":251.85757446289,\"y\":221.06549072266,\"z\":101.83240509033,\"h\":160.00001525879},\"hash\":-1508355822,\"ch\":160.00001525879,\"oh\":70.0},\"coords\":{\"x\":252.63,\"y\":221.29,\"z\":101.68,\"h\":156.96}}', '{\"door\":{\"thermite\":{\"spark\":{\"x\":261.65,\"y\":216.62,\"z\":101.78},\"drip\":{\"x\":261.4,\"y\":215.67,\"z\":101.68},\"bomb\":{\"rotation\":{\"x\":-90.0,\"y\":-70.0,\"z\": 0.0},\"offset\":{\"x\":0.25,\"y\":-0.0325,\"z\":0.15}},\"heading\":250.0},\"reverse\":-1,\"coords\":{\"x\":261.30041503906,\"y\":214.50514221191,\"z\":101.83240509033,\"h\":250.17224121094},\"hash\":-1508355822,\"ch\":-109.82776641846,\"oh\":170.0},\"coords\":{\"x\":261.12,\"y\":215.24,\"z\":101.68,\"h\":252.85},\"coords\":{\"x\":261.06,\"y\":215.22,\"z\":101.68,\"h\":247.37}}', '[{\"x\":258.16,\"y\":218.56,\"z\":101.68,\"h\":341.82},{\"x\":259.71,\"y\":218.03,\"z\":101.68,\"h\":359.39},{\"x\":261.44,\"y\":217.41,\"z\":101.68,\"h\":0.29},{\"x\":259.99,\"y\":213.48,\"z\":101.68,\"h\":159.81},{\"x\":258.27,\"y\":214.1,\"z\":101.68,\"h\":167.51},{\"x\":256.48,\"y\":214.76,\"z\":101.68,\"h\":169.49}]', '[{\"x\":263.19,\"y\":212.32,\"z\":101.68,\"h\":164.78},{\"x\":266.09,\"y\":213.42,\"z\":101.68,\"h\":275.82},{\"x\":264.66,\"y\":216.23,\"z\":101.68,\"h\":357.47}]', 1, 0, 'Big', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `record_id` bigint(255) NOT NULL,
  `citizenid` varchar(250) DEFAULT NULL,
  `buisness` varchar(50) DEFAULT NULL,
  `buisnessid` int(11) DEFAULT NULL,
  `gangid` varchar(50) DEFAULT NULL,
  `amount` bigint(255) NOT NULL DEFAULT 0,
  `account_type` enum('Current','Savings','Buisness','Gang') NOT NULL DEFAULT 'Current'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_loans`
--

CREATE TABLE IF NOT EXISTS `bank_loans` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `interest` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  `installments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_loan_applications`
--

CREATE TABLE IF NOT EXISTS `bank_loan_applications` (
  `id` int(11) NOT NULL,
  `applicant` text NOT NULL,
  `name` text NOT NULL,
  `amount` int(11) NOT NULL,
  `installmentAmt` int(11) NOT NULL,
  `interest` int(11) NOT NULL,
  `interestAmt` int(11) NOT NULL,
  `installments` int(11) NOT NULL,
  `purpose` text NOT NULL,
  `bank` int(11) NOT NULL,
  `planId` int(11) NOT NULL,
  `planName` text NOT NULL,
  `approved` int(11) NOT NULL DEFAULT 0,
  `dates` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_societies`
--

CREATE TABLE IF NOT EXISTS `bank_societies` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `owner` text NOT NULL,
  `ownerName` text NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_society_members`
--

CREATE TABLE IF NOT EXISTS `bank_society_members` (
  `id` int(11) NOT NULL,
  `society` int(11) NOT NULL,
  `member` text NOT NULL,
  `memberName` text NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE IF NOT EXISTS `bank_transactions` (
  `id` int(11) NOT NULL,
  `sender` text NOT NULL,
  `senderName` text NOT NULL,
  `receiver` text NOT NULL,
  `receiverName` text NOT NULL,
  `amount` int(11) NOT NULL,
  `fromAccount` text NOT NULL,
  `toAccount` text NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`record_id`),
  ADD UNIQUE KEY `citizenid` (`citizenid`),
  ADD KEY `buisness` (`buisness`),
  ADD KEY `buisnessid` (`buisnessid`),
  ADD KEY `gangid` (`gangid`);

--
-- Indexes for table `bank_loans`
--
ALTER TABLE `bank_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_loan_applications`
--
ALTER TABLE `bank_loan_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_societies`
--
ALTER TABLE `bank_societies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_society_members`
--
ALTER TABLE `bank_society_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `record_id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_loans`
--
ALTER TABLE `bank_loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_loan_applications`
--
ALTER TABLE `bank_loan_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_societies`
--
ALTER TABLE `bank_societies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_society_members`
--
ALTER TABLE `bank_society_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
