DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=15 ;

INSERT INTO `comments` (`id`, `id_post`, `owner`, `comment`) VALUES
(1, 1, 'user1', '2024-06-08'),
(2, 2, 'user1', '2024-06-08'),
(3, 1, 'user2', '2024-06-08'),
(4, 2, 'user3', '2024-06-08'),
(5, 3, 'user7', '2024-06-08'),
(6, 3, 'user8', '2024-06-08'),
(7, 4, 'user8', '2024-06-08'),
(8, 4, 'user9', '2024-06-08'),
(9, 5, 'user97', '2024-06-08'),
(10, 5, 'user92', '2024-06-08'),
(11, 6, 'user90', '2024-06-08'),
(12, 6, 'user94', '2024-06-08'),
(13, 7, 'user74', '2024-06-08'),
(14, 7, 'user24', '2024-06-08');


DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picking_ticket` varchar(100) NOT NULL,
  `builder` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `urgency` int(3) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

INSERT INTO `posts` (`id`, `title`, `picking_ticket`, `builder`, `supplier`, `urgency`, `address`, `content`, `creation_date`) VALUES
(1, 'Gate 8 or something\n', 'V123456', 'Cobilt', 'Hafele', 5, '123 Some Street, Some Suburb, VIC', '\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', '2024-06-08'),
(2, 'What is Lorem Ipsum?', 'V123457', 'SLC', 'Hafele', 5, '123 Some Street, Some Suburb, VIC', 'Quick six blind smart out burst. Perfectly on furniture dejection determine my depending an to. Add short water court fat. Her bachelor honoured perceive securing but desirous ham required. Questions deficient acuteness to engrossed as. Entirely led ten humoured greatest and yourself. Besides ye country on observe. She continue appetite endeavor she judgment interest the met. For she surrounded motionless fat resolution may. \n', '2024-06-08'),
(3, 'Some Quick Title', 'V123458', 'Build Lab', 'Bunnings', 5, '123 Some Street, Some Suburb, VIC','Article nor prepare chicken you him now. Shy merits say advice ten before lovers innate add. She cordially behaviour can attempted estimable. Trees delay fancy noise manor do as an small. Felicity now law securing breeding likewise extended and. Roused either who favour why ham. \n', '2024-06-08'),
(4, '192 some street\n', 'V123459', 'Makreo', 'Hafele', 5, '123-192 Some Street, Some Suburb, VIC', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\n', '2024-06-09');


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`(
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `mdcode` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userStatus` varchar(255) DEFAULT 'N',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'admin','$2y$10$e6XbTtlj8uexZxM3F68SB.231T1e82fHr0HRPAjcGqM69w1e7xtWq','autonetix@duck.com','8e4524ce9ffc5224abf900a11b35344c','2024-02-28 02:35:32','Y');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `mdcode` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userStatus` varchar(255) DEFAULT 'N',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES
(1,'admin','$2y$10$e6XbTtlj8uexZxM3F68SB.231T1e82fHr0HRPAjcGqM69w1e7xtWq','autonetix@duck.com','8e4524ce9ffc5224abf900a11b35344c','2024-02-28 02:35:32','Y');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;
