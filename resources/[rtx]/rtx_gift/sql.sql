CREATE TABLE `gifts` (
  `id` int(11) NOT NULL,
  `receiever` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `gifttype` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `giftmessage` longtext COLLATE utf8mb4_bin NOT NULL,
  `giftdata` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiever` (`receiever`(191));

ALTER TABLE `gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;