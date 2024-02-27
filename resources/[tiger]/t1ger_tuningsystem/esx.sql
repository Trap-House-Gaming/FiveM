-- ESX
INSERT IGNORE INTO `jobs` (name, label) VALUES
	('lscustoms1','LS Customs'),
	('lscustoms2','LS Customs'),
	('bennymotorwork', 'Benny Motorworks')
;

INSERT IGNORE INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('lscustoms1',0,'recruit','Recruit',50,'{}','{}'),
	('lscustoms1',1,'employee','Employee',75,'{}','{}'),
	('lscustoms1',2,'boss','Boss',100,'{}','{}'),
	('lscustoms2',0,'recruit','Recruit',50,'{}','{}'),
	('lscustoms2',1,'employee','Employee',75,'{}','{}'),
	('lscustoms2',2,'boss','Boss',100,'{}','{}'),
	('lscustoms2',0,'recruit','Recruit',50,'{}','{}'),
	('lscustoms2',1,'employee','Employee',75,'{}','{}'),
	('bennymotorwork',2,'boss','Boss',100,'{}','{}')
;

INSERT IGNORE INTO `items` (`name`, `label`) VALUES
-- Mods
('mod_respray', 'Respray'),
('mod_bodyworks', 'Body Works'),
('mod_chassis', 'Chassis Upgrades'),
('mod_enginebay', 'Engine Bay Upgrades'),
('mod_exterior', 'Exterior Cosmetics'),
('mod_interior', 'Interior Cosmetics'),
('mod_lights', 'Vehicle Lights'),
('mod_wheels', 'Wheels'),
('mod_engine', 'Engine Upg. Kit'),
('mod_brakes', 'Brakes Upg. Kit'),
('mod_transmission', 'Transmission Upg. Kit'),
('mod_suspension', 'Suspension Upg. Kit'),
('mod_armor', 'Armor Upg. Kit'),
('mod_turbo', 'Turbo Upg. Kit'),
-- Materials:
('scrap_metal', 'Scrap Metal'),
('steel', 'Steel'),
('aluminium', 'Aluminium'),
('plastic', 'Plastic'),
('rubber', 'Rubber'),
('electric_scrap', 'Electric Scrap'),
('glass', 'Glass'),
('copper', 'Copper'),
('carbon_fiber', 'Carbon Fiber'),
('brass', 'Brass'),
('synthetic_oil', 'Synthetic Oil'),
('acid', 'Synthetic Acid')
;