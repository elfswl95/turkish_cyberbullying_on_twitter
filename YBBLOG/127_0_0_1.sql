-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 31 May 2021, 19:25:11
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Tablo döküm verisi `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Tablo için indeksler `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Tablo için indeksler `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Tablo için indeksler `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Tablo için indeksler `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Tablo için indeksler `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Tablo için indeksler `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Tablo için indeksler `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Tablo için indeksler `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Tablo için indeksler `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Tablo için indeksler `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Veritabanı: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Veritabanı: `ybblog`
--
CREATE DATABASE IF NOT EXISTS `ybblog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ybblog`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'Elif Şevval Dinçer', 'elifsevvaldincer@gmail.com', 'danlabilic', '$5$rounds=535000$JLab6n2u072hiFep$oVUUVK2L1jvtIp8oE4Q/0BzJ9eQYdIe76ZZGnYRWUL6'),
(2, 'duygu kayaoğlu', 'abcd@gmail.com', 'elonmusk', '$5$rounds=535000$AewuLOruQpww41/0$NUKVNuwCLHTQKn9G9O9L3PUaM4AkkvFXUGbFQsrJlA1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_replies`
--

CREATE TABLE `user_replies` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `tweet` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `prediction` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_replies`
--

INSERT INTO `user_replies` (`id`, `username`, `tweet`, `user_id`, `prediction`) VALUES
(501, 'Cumhur Kaya', 'RT @1881Erdem: #ElonMusk senin ..... ....... .', 2, 0),
(502, 'Mehmet Aslan', '@AliosmanTakn2 @elonmusk Elimize vermesinimi ????', 2, 0),
(503, 'Bitcoin', '#FET Değerlendire’bilirsiniz arkadaşlar yukarıya doğru çıkacaktır.\nYtd\n\n#Bitcoin   #Ethereum #btc   #eth #bnb  … https://t.co/R4eB5XIp49', 2, 0),
(504, 'AllesWasDuWillst', 'RT @KriptonGezegeni: ETH-USDT SON  Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot #do…', 2, 0),
(505, 'ozan', '@elonmusk Doge ile mi çalışacak?', 2, 0),
(506, 'Mustafa Taş', '@elonmusk Karada yer bulamamışlar\nOkyanusta yapıyorlar bunu\nDaha çok maliyet daha çok para \nHarcamak demek\nÖylemi', 2, 0),
(507, '3.minab', '@elonmusk @hiddin2urleft @greg16676935420 @blockfolio @BillyM2k @itsALLrisky @GloryDoge @DogecoinRise @ItsDogeCoin… https://t.co/G3vExv1FY1', 2, 0),
(508, '♣️ Mr.Baydemir♣️', 'ETH-USDT SON  Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot… https://t.co/fKDdOSU7wC', 2, 0),
(509, 'Ceyhun ok', '@elonmusk @dogecoin_devs Ya yükselt şu sikimi ya', 2, 0),
(510, '@Shibatokenturkiye5', '@elonmusk herşey uzaya', 2, 0),
(511, 'Deniz', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(512, 'Deniz Sun', 'Anlık #kriptopara #btt #justinsun #trx #dogecoin #elonmusk #btc #binance #paribu https://t.co/1ZTYCmHJCa', 2, 0),
(513, 'Alperen Karslı????', '@KarayelDoganer @elonmusk Elon musk : tamam kanka inandım', 2, 0),
(514, 'haberciyedi24', 'Binance’in sahibinden flaş Elon Muks paylaşımı\nhttps://t.co/aGud9LGjbz #Binance #ElonMusk https://t.co/h4NwSeQp9r', 2, 0),
(515, 'Paul #endsars', 'RT @McNcn59: ????????#eloncoin???????????? #ElonMusk kendi tokenini çıkarmış ???????????? https://t.co/72sq9eKwLD', 2, 0),
(516, 'noname', '@elonmusk tweet atar mısın kardeş', 2, 0),
(517, 'Sertan Korkusuz', 'Bugünkü “Hemşirelik Hizmetleri Yönetimi” final sınavında sorulan “Yönetici Hemşire Elon Musk” sorusunu okuyanların… https://t.co/LznezIeUI1', 2, 0),
(518, '???? ???????????????????? ???????????????? ????', '@D_BKM_ @elonmusk Avcılara da el atsın ????', 2, 0),
(519, 'Murat Koca', '@elonmusk Kopek diksin seni', 2, 0),
(520, 'ENES KÖSE', 'Hesapları boşalttım benim @BinanceTR işim kalmadı ama sen tam bir orospu çocugusun !!! @elonmusk', 2, 0),
(521, 'Sümeyye', '@elonmusk bi iki tweet ateşle Başkanım da ona göre kurbanlık bakacağız ☝????', 2, 0),
(522, 'emre yılmaz', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse Aynen dayı böyle iyi hiç bozma bunu', 2, 0),
(523, 'AgA Hayırdır Yaa', '@elonmusk aga kurtar bizi beyaaa ????????????', 2, 0),
(524, 'kaan', '@Takeshi_o7 ay kapanışı geliyo abi @elonmusk abiden bi twit gelir mi ne dersin', 2, 0),
(525, 'Mustafa', '@elonmusk O roketler ananın amına girsin elon', 2, 0),
(526, 'ali özgür', 'Şimdi düşersin alıştık artık @elonmusk sende bisey deme kendi haline sal artık şunu https://t.co/u6HgcVyeI4', 2, 0),
(527, 'Naciye ayaztas', '@justinsuntron @elonmusk @CNBC @SquawkStreet Iki gozum iki cicegim musk deme bize ????‍♀️', 2, 0),
(528, 'Koin Rehberi', '@trader_samet BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/A5CjOuAyLD', 2, 0),
(529, 'Koin Rehberi', '@vforrkripto BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/CeImjwTGya', 2, 0),
(530, 'Koin Rehberi', '@mertadass BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/lmOTwkbI6j', 2, 0),
(531, 'Koin Rehberi', '@KoinBulteni BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/T0AKswA5TC', 2, 0),
(532, 'Koin Rehberi', '@KoinBulteni @bitexencom BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/0EgzDbQnAI', 2, 0),
(533, 'sefa', 'RT @Osmannoo38: @MattWallace888 @elonmusk Adami hasta etmeyin sizin gibi ???? ben yerim yerim ????????????????????????????✂️', 2, 0),
(534, 'AllesWasDuWillst', 'RT @sahinsapmazzz: YÜKSELİŞ ZAMANI GELDİ????????????\n#shiba #ShibaCoin #ShibaSwap #ShibaArmy #shibainu\n????????\n\n@elonmusk @VitalikButerin @RyoshiResearch…', 2, 0),
(535, 'Alparslan5252', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(536, 'ᴀʏꜱᴇ ꜱ', 'Elon Musk ve sevgilisi grimes gibi olalım \n@elonmusk and @Grimezsz &lt;3', 2, 0),
(537, 'Holo(HOT)Coin', 'RT @TraderSena: #Hot usdt\nHolochain Flama yapmış.Ama hacim çok yetersiz \nizlemeye devam edelim.\n#Holochain  #hotusdt #HoloFuel #BitTorrent…', 2, 0),
(538, 'Şahin Sapmaz', 'YÜKSELİŞ ZAMANI GELDİ????????????\n#shiba #ShibaCoin #ShibaSwap #ShibaArmy #shibainu\n????????\n\n@elonmusk @VitalikButerin… https://t.co/ghxWzLxog5', 2, 0),
(539, 'teoman', '@justinsuntron @elonmusk @CNBC @SquawkStreet Coinlerin düşüyor yatırımcılarını ne zaman düşüneceksin? Pezevenk', 2, 0),
(540, 'Ufuk Tarhan', 'Elon Musk geldi, ağızlarının tadı kaçtı! Roket manzaralı ev sahipleri şikayetçi...  https://t.co/JMRVclaq9o\n\nRoketi… https://t.co/rCm6n5qHCh', 2, 0),
(541, 'Psikolog Özge Kılıç | Yatırım Psikolojisi', 'Günaydın kriptonun yıkılmamış ama ayakta da değil, bezgin savaşçıları ????????\n\n#bitcoin #btc #xrp #doge #neo #xlm #trx… https://t.co/McMnnZUTYf', 2, 0),
(542, 'Dadaş', 'Selam değerli kardeşlerim bugün de  yoklama yapalim, Süslü @selcoin    burda mısın. Parlak @elonmusk burda mısın. P… https://t.co/TCHAkR5UIy', 2, 0),
(543, 'Şeyhmus arat', '@justinsuntron @elonmusk @CNBC @SquawkStreet Senin ananı sikeyim Elon senin anan siksin Oruspunun cocugu Kucuk Cinl… https://t.co/u6sxRmD7q9', 2, 0),
(544, 'Batancoin21????', '@justinsuntron @elonmusk @CNBC @SquawkStreet Kanka BTT yükselt bak nolur artık yükselt', 2, 0),
(545, 'my restorations', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(546, 'Emre Aktaş', '@justinsuntron @elonmusk @CNBC @SquawkStreet Senin ben Ananın Amına girim', 2, 0),
(547, '#chefmali ????????', '@tesla_adri @StefanM04780753 @elonmusk @WholeMarsBlog @28delayslater @DriveTeslaca @dogecoin @blockfolio… https://t.co/l52LHj6O5M', 2, 0),
(548, 'KriptoUp', 'Bitcoin Ve Altcoin\'lerde Yatırımcıları Sevindiricek Yeni Umutlar!\n\nDetaylar; https://t.co/rpeUbzLhcS\n\n#paribu… https://t.co/pt8iAvKXnt', 2, 0),
(549, 'svgtrn61', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse @elonmusk şu dogeye bi el atsan nolurduuu????????', 2, 0),
(550, 'Sena', '#Hot usdt\nHolochain Flama yapmış.Ama hacim çok yetersiz \nizlemeye devam edelim.\n#Holochain  #hotusdt #HoloFuel… https://t.co/K7gCLQRgdR', 2, 0),
(551, 'Mayur', '@elonmusk 1 dollar', 2, 0),
(552, 'proindirim', '@elonmusk Dogi için twit at eznebil köpek batirdin bizi. Bu gezegeni hallettik birde coklu gezegenmiş...', 2, 0),
(553, 'Doge Bot', 'RT @KriptonGezegeni: Winkte Son Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot #doge…', 2, 0),
(554, 'Özil〽️', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse Hepsi gtüne girsn senin', 2, 0),
(555, 'Feruz.', '@Sanj49279751 @SpaceX @NASA @AstroBehnken @Astro_Doug @elonmusk Bu siz uchun qiziqmi https://t.co/DuoxsXskNc', 2, 0),
(556, 'Doğaner uğur karayel', '@elonmusk lütfen Shiba destek çık biraz uçalım dogeyi yer net söylüyorum #ShibaCoin', 2, 0),
(557, 'CHARİZARD', '@sirinmiu @KriptoBaykus @elonmusk @bugrasukas @Talimhane Adam elon muskı etiketlemiş ????', 2, 0),
(558, '♣️ Mr.Baydemir♣️', 'Winkte Son Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot… https://t.co/QRbv1cwloP', 2, 0),
(559, 'Berk Aktürk', 'RT @NTVTeknoloji: Binance CEO\'su CZ\'den #ElonMusk eleştirisi https://t.co/oYKCcsLBt0 https://t.co/fEamwJGLqC', 2, 0),
(560, 'Oğuzhan K.', 'Elon Abi bu hafta seninle helalleşeceğiz! @elonmusk', 2, 0),
(561, 'HaZIrCeVuPs', '@elonmusk #auto #bar #psg #buy birde çin borsaları için test edelim.', 2, 0),
(562, 'Yahya', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(563, 'Denizli deniz', '@elonmusk  dogecoin help mi help mi düşüyor yardım et ????????', 2, 0),
(564, 'Ret_Wit', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(565, 'asimetrik', '@kerimcalender @lubeayar Ayarı vermişsin reis. Şimdi Elon Musk düşünsün. @elonmusk', 2, 0),
(566, 'Derinoksay', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(567, 'aydan', '@mchtdmrl @elonmusk asdfghjk', 2, 0),
(568, 'ibrahim bilgiç', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(569, 'MORA DERGİSİ', 'Binance’in CEO’sundan Elon Musk eleştirisi\n\nhttps://t.co/n6X9dIR14M\n\n#Binance #Bitcoin #ElonMusk #pazartesi https://t.co/mY17F9yo2A', 2, 0),
(570, 'Gökhan Tunçel', 'Sana çakıyor @elonmusk ???? https://t.co/PvVx1KOfSk', 2, 0),
(571, '13', '@aydangvn @elonmusk özele geçin', 2, 0),
(572, 'Koin Rehberi', '@OkexTurkiye BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/DGYWJK4dcB', 2, 0),
(573, 'Peace Fighter', '@Kendall_Dirks @elonmusk @SpaceX @NASASpaceflight @austinbarnard45 @DJSnM @Erdayastronaut @MarcusHouse… https://t.co/dUBayOJT4P', 2, 0),
(574, 'Koin Rehberi', '@CryptOmeRr BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/GUFkd1G1Ip', 2, 0),
(575, 'Koin Rehberi', '@milyonerzihin BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/gJUGo1SS9R', 2, 0),
(576, 'Koin Rehberi', '@BTC_USDT_LTC BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/858YI1zSEd', 2, 0),
(577, 'Koin Rehberi', '@vforrkripto BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/qS83G75CCg', 2, 0),
(578, 'Koin Rehberi', '@AztecGoldHero BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/k5J52JrJCk', 2, 0),
(579, 'Koin Rehberi', '@HuobiTurkiye BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/Qdhyyrsnzn', 2, 0),
(580, 'Koin Rehberi', '@stevedanews @stevedabitcoin BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/iJKfFUbJCZ', 2, 0),
(581, 'Koin Rehberi', '@altcoinrookie BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/h3F2Brt93X', 2, 0),
(582, 'Koin Rehberi', '@kurcenli34 BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/XON1HKKacH', 2, 0),
(583, 'NewCoinFinance', 'SHIB alma zamanı\nEmin ol yüzünü güldürecektir.....\n\n#SHIB #shiba #ShibaSwap #shibainu #Coinmarketcap #Coinbase… https://t.co/iS6xNPiPev', 2, 0),
(584, 'fatih (BJK)', 'Ülkeyi ekonomiyi yönetenler den ümidi kestik artık \n@elonmusk  umut bağladık  \nTürk gençliğinin umudu atacağı iki tweet bağlı', 2, 0),
(585, 'Peace Fighter', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse 17 Haziran\'da ön satışa sunuluyor ????\n#PRESALE #coin #BTC… https://t.co/ZL47qxXqVA', 2, 0),
(586, 'Muhammed Melik Kara', 'RT @NTVTeknoloji: Binance CEO\'su CZ\'den #ElonMusk eleştirisi https://t.co/oYKCcsLBt0 https://t.co/fEamwJGLqC', 2, 0),
(587, 'oğuz', '@elonmusk Dostum bu doge ne oldu ? Batırdın bize bana biraz borç gönderde yükselince geri öderim.????????', 2, 0),
(588, 'Ömer GEÇER', '@Enzo__NZO @SUATATAMR @merGeer12954543 @Fenerbahce @elonmusk  Katılın buna\n#Airdrops #enzo #ERC20 #BSC #binance', 2, 0),
(589, 'Burak CAN', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(590, 'Muskfan101', '@cnunezimages @elonmusk @SpaceX @SpaceIntellige3 Rip sn4', 2, 0),
(591, 'Master Skywalker', 'Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatır… https://t.co/yVh0xD811o', 2, 0),
(592, 'Koin Rehberi', '@kurcenli34 BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/VuZfQlYINw', 2, 0),
(593, 'Koin Rehberi', '@stevedabitcoin BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/yD7gFZMNat', 2, 0),
(594, 'Koin Rehberi', '@consnovvvv BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/3oKM58z8jp', 2, 0),
(595, 'Koin Rehberi', '@kriptoemre BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/DYwIlEo4Qw', 2, 0),
(596, 'Ali osman Taşkın', '@MehmetA53287417 @elonmusk Yok yok verecek olursa söyler sana elini av diye', 2, 0),
(597, 'Dolar Bot', 'RT @bitcointradetr: Özel Grubumuza’da 5 gün önce paylaştığımız #HNT $HNT 0.0006600 #btc  seviyesine gelerek %76 kar sağlamıştır. \n\n#Bitcoin…', 2, 0),
(598, 'Bitcoin', 'Özel Grubumuza’da 5 gün önce paylaştığımız #HNT $HNT 0.0006600 #btc  seviyesine gelerek %76 kar sağlamıştır.… https://t.co/oRcFp6Kzkt', 2, 0),
(599, 'murat karakaya', 'RT @abrahamhero: Marmara denizi ölüyor ! Deniz salyası için herhangi bir kurtarma planiniz var mi? Vatandaş olarak soruyorum? @sedat_peker…', 2, 0),
(600, 'Cumhur Kaya', 'RT @1881Erdem: Dünya #ElonMusk \'dan büyük değilmiş onu görüyoruz çok garip.', 2, 0),
(601, 'Cumhur Kaya', 'RT @1881Erdem: #ElonMusk senin ..... ....... .', 2, 0),
(602, 'Mehmet Aslan', '@AliosmanTakn2 @elonmusk Elimize vermesinimi ????', 2, 0),
(603, 'Bitcoin', '#FET Değerlendire’bilirsiniz arkadaşlar yukarıya doğru çıkacaktır.\nYtd\n\n#Bitcoin   #Ethereum #btc   #eth #bnb  … https://t.co/R4eB5XIp49', 2, 0),
(604, 'Elçin Özsoy', 'RT @efeRdvan1: Kabine 60 bin sağlık atamasına da sağır...!\n@drfahrettinkoca @RTErdogan @elonmusk \n\n #KabineSağırEk40BnHaykır', 2, 0),
(605, 'Türkay', '@fatihmehmeter_ @elonmusk Daha ne istiyorsun adamlardan', 2, 0),
(606, 'Ys(h)mn.... ????????', '@elonmusk piyasaları sen belirliyorsun anladık kabul ettik coinleri yükselt reiz', 2, 0),
(607, 'Kripto Traders', '#USD - TRY\nArkadaşlar dolarda 8.42 bandı güncel destek olarak karşımıza çıkmaktadır, dolar yükselen bir trend içeri… https://t.co/DOCdVJuNGN', 2, 0),
(608, 'Martin', 'RT @shashAnkKotla: @Brocsa2 @binance @KabosuOfficial @cz_binance @HuobiGlobal @kucoincom @gate_io @coinbase @BithumbOfficial @CoinbasePro @…', 2, 0),
(609, 'Doğaner uğur karayel', '@elonmusk  #ShibaSwap #ShibaCoin #SHIBARMY  bi el atın @ShibArmyTr @Shiba_Tokan ????????????????????', 2, 0),
(610, 'Öteki Adam', 'RT @TraderSena: #Hot usdt\nHolochain Flama yapmış.Ama hacim çok yetersiz \nizlemeye devam edelim.\n#Holochain  #hotusdt #HoloFuel #BitTorrent…', 2, 0),
(611, '???? ???????????????????? ???????????????? ????', '@D_BKM_ @elonmusk Hahahha tam gobeği ????????????', 2, 0),
(612, 'Cihan', '@ShibArmyTr @gamzeeroglu01 @elonmusk çok iyi ya fena güldüm ????????????????', 2, 0),
(613, 'KOiNMiLYONER', '#ElonMusk kripto alanını nasıl etkiliyor? https://t.co/bU6ew8lO0c @Güncel Bitcoin, Altcoin Haberleri ve Analizleri aracılığıyla @elonmusk', 2, 0),
(614, 'Demet', '@cadisprgli @elonmusk Beylikdüzü gibi İstanbul’un göbeği ise olar. Kırsala gitmiyor ????', 2, 0),
(615, 'Ozan', 'Ayı’yı erken uyandırdın ve Ayı üzgün.\n“the bear woke up early”. @elonmusk @cz_binance #Binance #bitcoin #XLM https://t.co/qmToAabhpc', 2, 0),
(616, 'Dilan DOĞAN ????', 'Oldukça basit bir iş. Sadece kitap okuyun ve insanlarla konuşun; ama özellikle kitap okuyun. Okumayla kazanılan ver… https://t.co/00pZjljr8x', 2, 0),
(617, 'Fatma Ayvaz', '@1sebrullah @elonmusk Olucakkkk????', 2, 0),
(618, 'aliman çero', '@elonmusk Ya siktiret uzayı muzayı oğlum şu doge coini 4 lira yap bi sonra nereye gidersen git. battık amk', 2, 0),
(619, 'Takeshi', '@elonmusk düşürmek için twit atıyor artık. https://t.co/zlpzL7tLbr', 2, 0),
(620, 'murat yılmaz', 'RT @RtradeCn: #dogecoin bollinger yeni yeni sıkışıyor bakalım #ElonMusk twet atacakmı. https://t.co/TaWq2zyVXb', 2, 0),
(621, 'Mehmet', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(622, 'nxloyrata', 'Ahirette bile yan yana gelmeyecek 2 isim https://t.co/X5daCZ7q64', 2, 0),
(623, 'AllesWasDuWillst', 'RT @KriptonGezegeni: ETH-USDT SON  Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot #do…', 2, 0),
(624, 'ozan', '@elonmusk Doge ile mi çalışacak?', 2, 0),
(625, 'Mustafa Taş', '@elonmusk Karada yer bulamamışlar\nOkyanusta yapıyorlar bunu\nDaha çok maliyet daha çok para \nHarcamak demek\nÖylemi', 2, 0),
(626, '3.minab', '@elonmusk @hiddin2urleft @greg16676935420 @blockfolio @BillyM2k @itsALLrisky @GloryDoge @DogecoinRise @ItsDogeCoin… https://t.co/G3vExv1FY1', 2, 0),
(627, '♣️ Mr.Baydemir♣️', 'ETH-USDT SON  Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot… https://t.co/fKDdOSU7wC', 2, 0),
(628, 'Ceyhun ok', '@elonmusk @dogecoin_devs Ya yükselt şu sikimi ya', 2, 0),
(629, '@Shibatokenturkiye5', '@elonmusk herşey uzaya', 2, 0),
(630, 'Deniz', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(631, 'Deniz Sun', 'Anlık #kriptopara #btt #justinsun #trx #dogecoin #elonmusk #btc #binance #paribu https://t.co/1ZTYCmHJCa', 2, 0),
(632, 'Alperen Karslı????', '@KarayelDoganer @elonmusk Elon musk : tamam kanka inandım', 2, 0),
(633, 'haberciyedi24', 'Binance’in sahibinden flaş Elon Muks paylaşımı\nhttps://t.co/aGud9LGjbz #Binance #ElonMusk https://t.co/h4NwSeQp9r', 2, 0),
(634, 'Paul #endsars', 'RT @McNcn59: ????????#eloncoin???????????? #ElonMusk kendi tokenini çıkarmış ???????????? https://t.co/72sq9eKwLD', 2, 0),
(635, 'noname', '@elonmusk tweet atar mısın kardeş', 2, 0),
(636, 'Sertan Korkusuz', 'Bugünkü “Hemşirelik Hizmetleri Yönetimi” final sınavında sorulan “Yönetici Hemşire Elon Musk” sorusunu okuyanların… https://t.co/LznezIeUI1', 2, 0),
(637, '???? ???????????????????? ???????????????? ????', '@D_BKM_ @elonmusk Avcılara da el atsın ????', 2, 0),
(638, 'Murat Koca', '@elonmusk Kopek diksin seni', 2, 0),
(639, 'ENES KÖSE', 'Hesapları boşalttım benim @BinanceTR işim kalmadı ama sen tam bir orospu çocugusun !!! @elonmusk', 2, 0),
(640, 'Sümeyye', '@elonmusk bi iki tweet ateşle Başkanım da ona göre kurbanlık bakacağız ☝????', 2, 0),
(641, 'emre yılmaz', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse Aynen dayı böyle iyi hiç bozma bunu', 2, 0),
(642, 'AgA Hayırdır Yaa', '@elonmusk aga kurtar bizi beyaaa ????????????', 2, 0),
(643, 'kaan', '@Takeshi_o7 ay kapanışı geliyo abi @elonmusk abiden bi twit gelir mi ne dersin', 2, 0),
(644, 'Mustafa', '@elonmusk O roketler ananın amına girsin elon', 2, 0),
(645, 'Naciye ayaztas', '@justinsuntron @elonmusk @CNBC @SquawkStreet Iki gozum iki cicegim musk deme bize ????‍♀️', 2, 0),
(646, 'Koin Rehberi', '@trader_samet BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/A5CjOuAyLD', 2, 0),
(647, 'Koin Rehberi', '@vforrkripto BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/CeImjwTGya', 2, 0),
(648, 'Koin Rehberi', '@mertadass BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/lmOTwkbI6j', 2, 0),
(649, 'Koin Rehberi', '@KoinBulteni BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/T0AKswA5TC', 2, 0),
(650, 'Koin Rehberi', '@KoinBulteni @bitexencom BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/0EgzDbQnAI', 2, 0),
(651, 'sefa', 'RT @Osmannoo38: @MattWallace888 @elonmusk Adami hasta etmeyin sizin gibi ???? ben yerim yerim ????????????????????????????✂️', 2, 0),
(652, 'AllesWasDuWillst', 'RT @sahinsapmazzz: YÜKSELİŞ ZAMANI GELDİ????????????\n#shiba #ShibaCoin #ShibaSwap #ShibaArmy #shibainu\n????????\n\n@elonmusk @VitalikButerin @RyoshiResearch…', 2, 0),
(653, 'Alparslan5252', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(654, 'ᴀʏꜱᴇ ꜱ', 'Elon Musk ve sevgilisi grimes gibi olalım \n@elonmusk and @Grimezsz &lt;3', 2, 0),
(655, 'Holo(HOT)Coin', 'RT @TraderSena: #Hot usdt\nHolochain Flama yapmış.Ama hacim çok yetersiz \nizlemeye devam edelim.\n#Holochain  #hotusdt #HoloFuel #BitTorrent…', 2, 0),
(656, 'Şahin Sapmaz', 'YÜKSELİŞ ZAMANI GELDİ????????????\n#shiba #ShibaCoin #ShibaSwap #ShibaArmy #shibainu\n????????\n\n@elonmusk @VitalikButerin… https://t.co/ghxWzLxog5', 2, 0),
(657, 'teoman', '@justinsuntron @elonmusk @CNBC @SquawkStreet Coinlerin düşüyor yatırımcılarını ne zaman düşüneceksin? Pezevenk', 2, 0),
(658, 'Ufuk Tarhan', 'Elon Musk geldi, ağızlarının tadı kaçtı! Roket manzaralı ev sahipleri şikayetçi...  https://t.co/JMRVclaq9o\n\nRoketi… https://t.co/rCm6n5qHCh', 2, 0),
(659, 'Psikolog Özge Kılıç | Yatırım Psikolojisi', 'Günaydın kriptonun yıkılmamış ama ayakta da değil, bezgin savaşçıları ????????\n\n#bitcoin #btc #xrp #doge #neo #xlm #trx… https://t.co/McMnnZUTYf', 2, 0),
(660, 'Dadaş', 'Selam değerli kardeşlerim bugün de  yoklama yapalim, Süslü @selcoin    burda mısın. Parlak @elonmusk burda mısın. P… https://t.co/TCHAkR5UIy', 2, 0),
(661, 'Şeyhmus arat', '@justinsuntron @elonmusk @CNBC @SquawkStreet Senin ananı sikeyim Elon senin anan siksin Oruspunun cocugu Kucuk Cinl… https://t.co/u6sxRmD7q9', 2, 0),
(662, 'Batancoin21????', '@justinsuntron @elonmusk @CNBC @SquawkStreet Kanka BTT yükselt bak nolur artık yükselt', 2, 0),
(663, 'my restorations', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(664, 'Emre Aktaş', '@justinsuntron @elonmusk @CNBC @SquawkStreet Senin ben Ananın Amına girim', 2, 0),
(665, '#chefmali ????????', '@tesla_adri @StefanM04780753 @elonmusk @WholeMarsBlog @28delayslater @DriveTeslaca @dogecoin @blockfolio… https://t.co/l52LHj6O5M', 2, 0),
(666, 'KriptoUp', 'Bitcoin Ve Altcoin\'lerde Yatırımcıları Sevindiricek Yeni Umutlar!\n\nDetaylar; https://t.co/rpeUbzLhcS\n\n#paribu… https://t.co/pt8iAvKXnt', 2, 0),
(667, 'svgtrn61', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse @elonmusk şu dogeye bi el atsan nolurduuu????????', 2, 0),
(668, 'Sena', '#Hot usdt\nHolochain Flama yapmış.Ama hacim çok yetersiz \nizlemeye devam edelim.\n#Holochain  #hotusdt #HoloFuel… https://t.co/K7gCLQRgdR', 2, 0),
(669, 'Mayur', '@elonmusk 1 dollar', 2, 0),
(670, 'proindirim', '@elonmusk Dogi için twit at eznebil köpek batirdin bizi. Bu gezegeni hallettik birde coklu gezegenmiş...', 2, 0),
(671, 'Doge Bot', 'RT @KriptonGezegeni: Winkte Son Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot #doge…', 2, 0),
(672, 'Özil〽️', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse Hepsi gtüne girsn senin', 2, 0),
(673, 'Feruz.', '@Sanj49279751 @SpaceX @NASA @AstroBehnken @Astro_Doug @elonmusk Bu siz uchun qiziqmi https://t.co/DuoxsXskNc', 2, 0),
(674, 'Doğaner uğur karayel', '@elonmusk lütfen Shiba destek çık biraz uçalım dogeyi yer net söylüyorum #ShibaCoin', 2, 0),
(675, 'CHARİZARD', '@sirinmiu @KriptoBaykus @elonmusk @bugrasukas @Talimhane Adam elon muskı etiketlemiş ????', 2, 0),
(676, '♣️ Mr.Baydemir♣️', 'Winkte Son Durum ? \n\nGrafik Takip Amaçlıdır. \nYatırım Tavsiyesi Değildir.\nTAKİP VE LİKE \n\n#btt #shib #holo #hot… https://t.co/QRbv1cwloP', 2, 0),
(677, 'Berk Aktürk', 'RT @NTVTeknoloji: Binance CEO\'su CZ\'den #ElonMusk eleştirisi https://t.co/oYKCcsLBt0 https://t.co/fEamwJGLqC', 2, 0),
(678, 'Oğuzhan K.', 'Elon Abi bu hafta seninle helalleşeceğiz! @elonmusk', 2, 0),
(679, 'HaZIrCeVuPs', '@elonmusk #auto #bar #psg #buy birde çin borsaları için test edelim.', 2, 0),
(680, 'Yahya', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(681, 'Denizli deniz', '@elonmusk  dogecoin help mi help mi düşüyor yardım et ????????', 2, 0),
(682, 'Ret_Wit', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(683, 'asimetrik', '@kerimcalender @lubeayar Ayarı vermişsin reis. Şimdi Elon Musk düşünsün. @elonmusk', 2, 0),
(684, 'Derinoksay', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(685, 'aydan', '@mchtdmrl @elonmusk asdfghjk', 2, 0),
(686, 'ibrahim bilgiç', 'RT @skywalkerist: Başta ElonMusk, Çin, İran, Japonya, Kore, İngiltere ardı ardına yaptıkları açıklamalarla maalesef Kripto para yatırımcıla…', 2, 0),
(687, 'MORA DERGİSİ', 'Binance’in CEO’sundan Elon Musk eleştirisi\n\nhttps://t.co/n6X9dIR14M\n\n#Binance #Bitcoin #ElonMusk #pazartesi https://t.co/mY17F9yo2A', 2, 0),
(688, 'Gökhan Tunçel', 'Sana çakıyor @elonmusk ???? https://t.co/PvVx1KOfSk', 2, 0),
(689, '13', '@aydangvn @elonmusk özele geçin', 2, 0),
(690, 'Koin Rehberi', '@OkexTurkiye BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/DGYWJK4dcB', 2, 0),
(691, 'Peace Fighter', '@Kendall_Dirks @elonmusk @SpaceX @NASASpaceflight @austinbarnard45 @DJSnM @Erdayastronaut @MarcusHouse… https://t.co/dUBayOJT4P', 2, 0),
(692, 'Koin Rehberi', '@CryptOmeRr BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/GUFkd1G1Ip', 2, 0),
(693, 'Koin Rehberi', '@milyonerzihin BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/gJUGo1SS9R', 2, 0),
(694, 'Koin Rehberi', '@BTC_USDT_LTC BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/858YI1zSEd', 2, 0),
(695, 'Koin Rehberi', '@vforrkripto BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/qS83G75CCg', 2, 0),
(696, 'Koin Rehberi', '@AztecGoldHero BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/k5J52JrJCk', 2, 0),
(697, 'Koin Rehberi', '@HuobiTurkiye BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/Qdhyyrsnzn', 2, 0),
(698, 'Koin Rehberi', '@stevedanews @stevedabitcoin BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/iJKfFUbJCZ', 2, 0),
(699, 'Koin Rehberi', '@altcoinrookie BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/h3F2Brt93X', 2, 0),
(700, 'Koin Rehberi', '@kurcenli34 BİTCOİN YENİ HEDEF 70K$ MI??\nANALİZ VE CEVAPLAR İÇİN TELEGRAM GRUBUMUZA BEKLERİZ.… https://t.co/XON1HKKacH', 2, 0),
(701, 'NewCoinFinance', 'SHIB alma zamanı\nEmin ol yüzünü güldürecektir.....\n\n#SHIB #shiba #ShibaSwap #shibainu #Coinmarketcap #Coinbase… https://t.co/iS6xNPiPev', 2, 0),
(702, 'fatih (BJK)', 'Ülkeyi ekonomiyi yönetenler den ümidi kestik artık \n@elonmusk  umut bağladık  \nTürk gençliğinin umudu atacağı iki tweet bağlı', 2, 0),
(703, 'Peace Fighter', '@elonmusk @ErcXspace @SpaceX @NASASpaceflight @MarcusHouse 17 Haziran\'da ön satışa sunuluyor ????\n#PRESALE #coin #BTC… https://t.co/ZL47qxXqVA', 2, 0),
(704, 'Hilal Albayrak Çetintaş', '@danlabilic aşkı yok mu arkadaş olmamız????', 1, 1),
(705, 'infpromo', '@danlabilic instagram profilinin etkileşimi ve oranları. Raporun devamını görmek için hemen https://t.co/PgMe6iym3x… https://t.co/A4JVn7tUHp', 1, 0),
(706, 'özgür  portakal', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(707, 'M.K', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(708, 'Miyase Atadiyen', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(709, 'Begüm????', 'Ela bebeğimize yardım edelim ele bebek hep gülsün ???? @bercestefav @danlabilic @Besiktas @haluklevent @cagritaner https://t.co/0tEQsnSfCj', 1, 0),
(710, 'Ellisebutwitch', '@danlabilic Odası böyle olmayıp Ankara\'da hayatta kalabilen var mı ki bxbbxbx', 1, 0),
(711, 'Gül', 'eee şey değil mi bu karantinadan sonra Enes ???????????????? https://t.co/Ic2QUA6V3w', 1, 1),
(712, 'Yeşil Nohut????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(713, 'ümit şener', '@Sahjaa @Nurettintopal13 Senin dediğin gibi @danlabilic  de gezmiş avrupada korona olmuş bence boş boş konuşmayın', 1, 1),
(714, 'GSÜ Sokak Hayvanlarını Koruma Kulübü', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(715, 'gnlturaman', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(716, 'Tuba elver', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(717, 'seliin', 'Sesimizi duyun @ProfAKaradag @haluklevent @FOXTurkiye @atvcomtr @ShowTV @danlabilic #bozokluyazorlakamera', 1, 0),
(718, 'Atar\'a atar????????⭐️⭐️⭐️⭐️⭐️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(719, 'gizem', '@thereislav @danlabilic knka biz ????', 1, 0),
(720, 'Edshener', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(721, '???? ÇOCUKLAR ölmesin..!!!! ????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(722, 'NE MUTLU TÜRK\'ÜM', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(723, 'mrs. ceycey', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(724, 'Lulu Fipi Yendi', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(725, 'Patili bir bey ????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(726, 'E.temel', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(727, 'nihal', '@sooylesuna @danlabilic @fazilsaymusic hesap vereceksinizzz!!!!!', 1, 0),
(728, 'i.k', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(729, 'Fatih Yenilmez', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(730, 'ceycey', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(731, 'GÜLHAN', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(732, 'Ece Kesik', '@danlabilic Keşke seni görebilsem ☹️ cok tatlı güzel Bi kadınsın ????@danlabilic', 1, 0),
(733, '1907', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(734, 'Beyza', 'RT @knlbeyzaaa: @danlabilic Tek bir kelimeyle ülkeye ayar veren kadın artık Bi \"HOŞTT\".', 1, 0),
(735, 'Abdullah Mucip Avcı', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(736, 'Ömer Faruk Can', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(737, 'bahar06', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(738, 'boş takılıyorum', '@danlabilic sohbetini beğendiğim sayılı insanlardan hatta #1', 1, 0),
(739, 'minerva', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(740, 'ismail balaban', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(741, 'İsmail Balaban', 'İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim… https://t.co/S84ixQMCd0', 1, 0),
(742, 'AHMET TARIK TÜKENMEZ', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(743, 'zafer altunakar', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(744, 'Murat', '@filizjk @danlabilic Yks Bi kaç gün kala olmasam güzel olur', 1, 0),
(745, '♡Filiz', '@1muratgumus @danlabilic korona olmak isteyen sendin ama', 1, 0),
(746, 'Murat', '@filizjk @danlabilic Yook ağzından yel alsın', 1, 0),
(747, 'Behiye Gökçen Toprak', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(748, 'Berrin', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(749, '♡Filiz', '@1muratgumus @danlabilic sjsjsjsj bide YKS\' e bir kac gün kala korona  oluyorsun', 1, 0),
(750, 'Murat_gezi', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(751, '???? ???? ???? ???? ????', 'Bu kadınla tanışayım bak nasıl her şey yoluna giriyor. @danlabilic', 1, 1),
(752, 'SAFAROV', 'RT @Safarovoficial: @danlabilic ???? Danla Biliç sevenler? #danlabilic #cemalcan #survivor #kardeslerim #Survivor2021 #SurvivorPanaroma #survi…', 1, 0),
(753, 'MELİS', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Kan… https://t.co/ZPdKzRhD2A', 1, 0),
(754, 'berna eroglu', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(755, 'Yazen', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(756, 'Osman', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(757, 'şibumiy', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(758, 'aysembg', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(759, 'Turnam~????????????????????~????', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Adalet yokki', 1, 0),
(760, 'Turnam~????????????????????~????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(761, 'Leyla Paker', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(762, 'Seyduna', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(763, 'arife', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(764, 'hayvanlar_olmadan_asla_', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(765, 'fatos????☁️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(766, 'ırmak', 'sinif grubunda soru tartisanlari okuyorum: https://t.co/udT4a7jNYN', 1, 1),
(767, 'kedyy', 'Sizlerden gelecek destekleri dört gözle bekliyor. @danlabilic @haluklevent @ahbapplatformu #kedi #kediyardım… https://t.co/8jU3Bmsje7', 1, 0),
(768, 'Tomris Lilium', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(769, 'HAYVAN HAKLARI YASASI HEMEN!', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(770, 'patiliseda', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Adi… https://t.co/mUa1HMXLOQ', 1, 1),
(771, 'Sevil ÇELİKKOL', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(772, 'Emre Özkan', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(773, 'Cretee ⛱️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(774, 'Kartaltepe Pati Besleme', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(775, 'insanoglu', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(776, 'patilermutlu_Özlem', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(777, '????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(778, 'm e r t', 'bana kitap alır mısınız????? n\'olur yalvarıyorummmmm @danlabilic abla n\'olur gör be para, pul istemiyorum. kitap li… https://t.co/HB1SmRptJk', 1, 0),
(779, 'K.', 'RT @BasaslanHilal: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Hayvan s…', 1, 1),
(780, 'Hilal Oktay Başaslan', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Hay… https://t.co/nkoDnaxWrJ', 1, 0),
(781, 'ejderyalar vardır #veganol ????????????????????????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(782, 'Aquitaine’li Eleanor????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(783, 'OKAN', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(784, 'Birdest', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(785, 'K@@N', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(786, 'Ogün', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(787, 'Kedili Köpekli', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(788, 'stone_iron', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(789, 'Lmncn', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(790, 'K.', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(791, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(792, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bun… https://t.co/uE5nlvoJ5V', 1, 0),
(793, 'Ş', 'Aylar sonra gelip Sedat Peker’in tahtını böyle sallayamazsın be danla @danlabilic', 1, 0),
(794, 'İkocino', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(795, 'Lmncn', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(796, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(797, 'esra canlı', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(798, 'âh öykü', '@AliAksoz @danlabilic @serdarcalik @gokche76 \n@tembelliklavuzu @sevimlicerenli @avantmen33 @silivri_muduru… https://t.co/RbaRombho4', 1, 0),
(799, 'K.', 'Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir… https://t.co/U3FqHbhB9W', 1, 0),
(800, 'kedyy', 'Sizlerden gelecek destekleri dört gözle bekliyor. @danlabilic @haluklevent @ahbapplatformu #kedi #kediyardım… https://t.co/6VYSfoEKMX', 1, 0),
(801, 'Ebryy', 'Of ya kadının gücü bu olsa gerek. Shhshaha danla ile basa cikmak gibi bir cok düsünceniz nasil olabilir. whqhqhah. #danlabilic #danlabilir#', 1, 0),
(802, 'dramalar kraliçesi ????????????', 'Danlaşkım beni niye çağırmadın üzüldüm @danlabilic ???????????? https://t.co/DS6Z1FlhZJ', 1, 1),
(803, 'burcu', 'damla sana kocaman bir ???? @danlabilic https://t.co/rwV3SglCg1', 1, 1),
(804, 'elif', 'malllll', 1, 0),
(805, 'TATAR Bİ SAKİN OL YA', '@laiksokrates @danlabilic sen ne alaka ?', 1, 1),
(806, 'Hilal Albayrak Çetintaş', '@danlabilic aşkı yok mu arkadaş olmamız????', 1, 1),
(807, 'infpromo', '@danlabilic instagram profilinin etkileşimi ve oranları. Raporun devamını görmek için hemen https://t.co/PgMe6iym3x… https://t.co/A4JVn7tUHp', 1, 0),
(808, 'özgür  portakal', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(809, 'M.K', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(810, 'Miyase Atadiyen', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(811, 'Begüm????', 'Ela bebeğimize yardım edelim ele bebek hep gülsün ???? @bercestefav @danlabilic @Besiktas @haluklevent @cagritaner https://t.co/0tEQsnSfCj', 1, 0),
(812, 'Ellisebutwitch', '@danlabilic Odası böyle olmayıp Ankara\'da hayatta kalabilen var mı ki bxbbxbx', 1, 0),
(813, 'Gül', 'eee şey değil mi bu karantinadan sonra Enes ???????????????? https://t.co/Ic2QUA6V3w', 1, 1),
(814, 'Yeşil Nohut????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(815, 'ümit şener', '@Sahjaa @Nurettintopal13 Senin dediğin gibi @danlabilic  de gezmiş avrupada korona olmuş bence boş boş konuşmayın', 1, 1),
(816, 'GSÜ Sokak Hayvanlarını Koruma Kulübü', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(817, 'gnlturaman', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(818, 'Tuba elver', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(819, 'seliin', 'Sesimizi duyun @ProfAKaradag @haluklevent @FOXTurkiye @atvcomtr @ShowTV @danlabilic #bozokluyazorlakamera', 1, 0),
(820, 'Atar\'a atar????????⭐️⭐️⭐️⭐️⭐️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(821, 'gizem', '@thereislav @danlabilic knka biz ????', 1, 0),
(822, 'Edshener', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(823, '???? ÇOCUKLAR ölmesin..!!!! ????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(824, 'NE MUTLU TÜRK\'ÜM', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(825, 'mrs. ceycey', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(826, 'Lulu Fipi Yendi', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(827, 'Patili bir bey ????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(828, 'E.temel', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(829, 'nihal', '@sooylesuna @danlabilic @fazilsaymusic hesap vereceksinizzz!!!!!', 1, 0),
(830, 'i.k', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(831, 'Fatih Yenilmez', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(832, 'ceycey', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(833, 'GÜLHAN', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(834, 'Ece Kesik', '@danlabilic Keşke seni görebilsem ☹️ cok tatlı güzel Bi kadınsın ????@danlabilic', 1, 0),
(835, '1907', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(836, 'Beyza', 'RT @knlbeyzaaa: @danlabilic Tek bir kelimeyle ülkeye ayar veren kadın artık Bi \"HOŞTT\".', 1, 0),
(837, 'Abdullah Mucip Avcı', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(838, 'Ömer Faruk Can', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(839, 'bahar06', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(840, 'boş takılıyorum', '@danlabilic sohbetini beğendiğim sayılı insanlardan hatta #1', 1, 0),
(841, 'minerva', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(842, 'ismail balaban', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(843, 'İsmail Balaban', 'İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim… https://t.co/S84ixQMCd0', 1, 0),
(844, 'AHMET TARIK TÜKENMEZ', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(845, 'zafer altunakar', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(846, 'Murat', '@filizjk @danlabilic Yks Bi kaç gün kala olmasam güzel olur', 1, 0);
INSERT INTO `user_replies` (`id`, `username`, `tweet`, `user_id`, `prediction`) VALUES
(847, '♡Filiz', '@1muratgumus @danlabilic korona olmak isteyen sendin ama', 1, 0),
(848, 'Murat', '@filizjk @danlabilic Yook ağzından yel alsın', 1, 0),
(849, 'Behiye Gökçen Toprak', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(850, 'Berrin', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(851, '♡Filiz', '@1muratgumus @danlabilic sjsjsjsj bide YKS\' e bir kac gün kala korona  oluyorsun', 1, 0),
(852, 'Murat_gezi', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(853, '???? ???? ???? ???? ????', 'Bu kadınla tanışayım bak nasıl her şey yoluna giriyor. @danlabilic', 1, 1),
(854, 'SAFAROV', 'RT @Safarovoficial: @danlabilic ???? Danla Biliç sevenler? #danlabilic #cemalcan #survivor #kardeslerim #Survivor2021 #SurvivorPanaroma #survi…', 1, 0),
(855, 'MELİS', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Kan… https://t.co/ZPdKzRhD2A', 1, 0),
(856, 'berna eroglu', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(857, 'Yazen', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(858, 'Osman', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(859, 'şibumiy', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(860, 'aysembg', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(861, 'Turnam~????????????????????~????', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Adalet yokki', 1, 0),
(862, 'Turnam~????????????????????~????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(863, 'Leyla Paker', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(864, 'Seyduna', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(865, 'arife', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(866, 'hayvanlar_olmadan_asla_', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(867, 'fatos????☁️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(868, 'ırmak', 'sinif grubunda soru tartisanlari okuyorum: https://t.co/udT4a7jNYN', 1, 1),
(869, 'kedyy', 'Sizlerden gelecek destekleri dört gözle bekliyor. @danlabilic @haluklevent @ahbapplatformu #kedi #kediyardım… https://t.co/8jU3Bmsje7', 1, 0),
(870, 'Tomris Lilium', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(871, 'HAYVAN HAKLARI YASASI HEMEN!', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(872, 'patiliseda', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Adi… https://t.co/mUa1HMXLOQ', 1, 1),
(873, 'Sevil ÇELİKKOL', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(874, 'Emre Özkan', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(875, 'Cretee ⛱️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(876, 'Kartaltepe Pati Besleme', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(877, 'insanoglu', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(878, 'patilermutlu_Özlem', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(879, '????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(880, 'm e r t', 'bana kitap alır mısınız????? n\'olur yalvarıyorummmmm @danlabilic abla n\'olur gör be para, pul istemiyorum. kitap li… https://t.co/HB1SmRptJk', 1, 0),
(881, 'K.', 'RT @BasaslanHilal: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Hayvan s…', 1, 1),
(882, 'Hilal Oktay Başaslan', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Hay… https://t.co/nkoDnaxWrJ', 1, 0),
(883, 'ejderyalar vardır #veganol ????????????????????????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(884, 'Aquitaine’li Eleanor????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(885, 'OKAN', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(886, 'Birdest', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(887, 'K@@N', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(888, 'Ogün', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(889, 'Kedili Köpekli', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(890, 'stone_iron', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(891, 'Lmncn', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(892, 'K.', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(893, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(894, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bun… https://t.co/uE5nlvoJ5V', 1, 0),
(895, 'Ş', 'Aylar sonra gelip Sedat Peker’in tahtını böyle sallayamazsın be danla @danlabilic', 1, 0),
(896, 'İkocino', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(897, 'Lmncn', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(898, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(899, 'esra canlı', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(900, 'âh öykü', '@AliAksoz @danlabilic @serdarcalik @gokche76 \n@tembelliklavuzu @sevimlicerenli @avantmen33 @silivri_muduru… https://t.co/RbaRombho4', 1, 0),
(901, 'K.', 'Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir… https://t.co/U3FqHbhB9W', 1, 0),
(902, 'kedyy', 'Sizlerden gelecek destekleri dört gözle bekliyor. @danlabilic @haluklevent @ahbapplatformu #kedi #kediyardım… https://t.co/6VYSfoEKMX', 1, 0),
(903, 'Ebryy', 'Of ya kadının gücü bu olsa gerek. Shhshaha danla ile basa cikmak gibi bir cok düsünceniz nasil olabilir. whqhqhah. #danlabilic #danlabilir#', 1, 0),
(904, 'dramalar kraliçesi ????????????', 'Danlaşkım beni niye çağırmadın üzüldüm @danlabilic ???????????? https://t.co/DS6Z1FlhZJ', 1, 1),
(905, 'Nini', 'Bu ikisini benzeten tek ben olamam @danlabilic https://t.co/sSt9MBCSlJ', 1, 0),
(906, 'TATAR Bİ SAKİN OL YA', '@laiksokrates @danlabilic sen ne alaka ?', 1, 1),
(907, 'Hilal Albayrak Çetintaş', '@danlabilic aşkı yok mu arkadaş olmamız????', 1, 1),
(908, 'infpromo', '@danlabilic instagram profilinin etkileşimi ve oranları. Raporun devamını görmek için hemen https://t.co/PgMe6iym3x… https://t.co/A4JVn7tUHp', 1, 0),
(909, 'özgür  portakal', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(910, 'M.K', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(911, 'Miyase Atadiyen', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(912, 'Begüm????', 'Ela bebeğimize yardım edelim ele bebek hep gülsün ???? @bercestefav @danlabilic @Besiktas @haluklevent @cagritaner https://t.co/0tEQsnSfCj', 1, 0),
(913, 'Ellisebutwitch', '@danlabilic Odası böyle olmayıp Ankara\'da hayatta kalabilen var mı ki bxbbxbx', 1, 0),
(914, 'Gül', 'eee şey değil mi bu karantinadan sonra Enes ???????????????? https://t.co/Ic2QUA6V3w', 1, 1),
(915, 'Yeşil Nohut????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(916, 'ümit şener', '@Sahjaa @Nurettintopal13 Senin dediğin gibi @danlabilic  de gezmiş avrupada korona olmuş bence boş boş konuşmayın', 1, 1),
(917, 'GSÜ Sokak Hayvanlarını Koruma Kulübü', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(918, 'gnlturaman', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(919, 'Tuba elver', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(920, 'seliin', 'Sesimizi duyun @ProfAKaradag @haluklevent @FOXTurkiye @atvcomtr @ShowTV @danlabilic #bozokluyazorlakamera', 1, 0),
(921, 'Atar\'a atar????????⭐️⭐️⭐️⭐️⭐️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(922, 'gizem', '@thereislav @danlabilic knka biz ????', 1, 0),
(923, 'Edshener', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(924, '???? ÇOCUKLAR ölmesin..!!!! ????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(925, 'NE MUTLU TÜRK\'ÜM', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(926, 'mrs. ceycey', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(927, 'Lulu Fipi Yendi', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(928, 'Patili bir bey ????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(929, 'E.temel', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(930, 'nihal', '@sooylesuna @danlabilic @fazilsaymusic hesap vereceksinizzz!!!!!', 1, 0),
(931, 'i.k', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(932, 'Fatih Yenilmez', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(933, 'ceycey', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(934, 'GÜLHAN', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(935, 'Ece Kesik', '@danlabilic Keşke seni görebilsem ☹️ cok tatlı güzel Bi kadınsın ????@danlabilic', 1, 0),
(936, '1907', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(937, 'Beyza', 'RT @knlbeyzaaa: @danlabilic Tek bir kelimeyle ülkeye ayar veren kadın artık Bi \"HOŞTT\".', 1, 0),
(938, 'Abdullah Mucip Avcı', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(939, 'Ömer Faruk Can', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(940, 'bahar06', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(941, 'boş takılıyorum', '@danlabilic sohbetini beğendiğim sayılı insanlardan hatta #1', 1, 0),
(942, 'minerva', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(943, 'ismail balaban', 'RT @ismail_balabann: İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim #azt…', 1, 0),
(944, 'İsmail Balaban', 'İsmail yaz 1890\'a gönder\n\n#mizah #fenerbahçe #galatasaray #beşiktaş #futbol #tiktoktürkiye #takipedenitakipederim… https://t.co/S84ixQMCd0', 1, 0),
(945, 'AHMET TARIK TÜKENMEZ', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(946, 'zafer altunakar', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(947, 'Murat', '@filizjk @danlabilic Yks Bi kaç gün kala olmasam güzel olur', 1, 0),
(948, '♡Filiz', '@1muratgumus @danlabilic korona olmak isteyen sendin ama', 1, 0),
(949, 'Murat', '@filizjk @danlabilic Yook ağzından yel alsın', 1, 0),
(950, 'Behiye Gökçen Toprak', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(951, 'Berrin', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(952, '♡Filiz', '@1muratgumus @danlabilic sjsjsjsj bide YKS\' e bir kac gün kala korona  oluyorsun', 1, 0),
(953, 'Murat_gezi', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(954, '???? ???? ???? ???? ????', 'Bu kadınla tanışayım bak nasıl her şey yoluna giriyor. @danlabilic', 1, 1),
(955, 'SAFAROV', 'RT @Safarovoficial: @danlabilic ???? Danla Biliç sevenler? #danlabilic #cemalcan #survivor #kardeslerim #Survivor2021 #SurvivorPanaroma #survi…', 1, 0),
(956, 'MELİS', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Kan… https://t.co/ZPdKzRhD2A', 1, 0),
(957, 'berna eroglu', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(958, 'Yazen', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(959, 'Osman', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(960, 'şibumiy', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(961, 'aysembg', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(962, 'Turnam~????????????????????~????', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Adalet yokki', 1, 0),
(963, 'Turnam~????????????????????~????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(964, 'Leyla Paker', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(965, 'Seyduna', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(966, 'arife', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(967, 'hayvanlar_olmadan_asla_', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(968, 'fatos????☁️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(969, 'ırmak', 'sinif grubunda soru tartisanlari okuyorum: https://t.co/udT4a7jNYN', 1, 1),
(970, 'kedyy', 'Sizlerden gelecek destekleri dört gözle bekliyor. @danlabilic @haluklevent @ahbapplatformu #kedi #kediyardım… https://t.co/8jU3Bmsje7', 1, 0),
(971, 'Tomris Lilium', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(972, 'HAYVAN HAKLARI YASASI HEMEN!', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(973, 'patiliseda', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Adi… https://t.co/mUa1HMXLOQ', 1, 1),
(974, 'Sevil ÇELİKKOL', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(975, 'Emre Özkan', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(976, 'Cretee ⛱️', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(977, 'Kartaltepe Pati Besleme', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(978, 'insanoglu', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(979, 'patilermutlu_Özlem', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(980, '????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(981, 'm e r t', 'bana kitap alır mısınız????? n\'olur yalvarıyorummmmm @danlabilic abla n\'olur gör be para, pul istemiyorum. kitap li… https://t.co/HB1SmRptJk', 1, 0),
(982, 'K.', 'RT @BasaslanHilal: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Hayvan s…', 1, 1),
(983, 'Hilal Oktay Başaslan', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Hay… https://t.co/nkoDnaxWrJ', 1, 0),
(984, 'ejderyalar vardır #veganol ????????????????????????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(985, 'Aquitaine’li Eleanor????', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(986, 'OKAN', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(987, 'Birdest', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(988, 'K@@N', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(989, 'Ogün', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(990, 'Kedili Köpekli', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(991, 'stone_iron', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(992, 'Lmncn', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(993, 'K.', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(994, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', 'RT @IlhanIpcioglu: @kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bunlar h…', 1, 1),
(995, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', '@kbrasvnccc @hayhaksaygi @hayvanhaklari00 @EmniyetGM @umraniyebeltr @CARSI_KALIR_ @danlabilic @ShowTV @FOXhaber Bun… https://t.co/uE5nlvoJ5V', 1, 0),
(996, 'Ş', 'Aylar sonra gelip Sedat Peker’in tahtını böyle sallayamazsın be danla @danlabilic', 1, 0),
(997, 'İkocino', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(998, 'Lmncn', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(999, 'Ilhan Ipcioglu     Bakırköylü Cumhuriyet kadını', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(1000, 'esra canlı', 'RT @kbrasvnccc: Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir #Hayvanlar…', 1, 1),
(1001, 'âh öykü', '@AliAksoz @danlabilic @serdarcalik @gokche76 \n@tembelliklavuzu @sevimlicerenli @avantmen33 @silivri_muduru… https://t.co/RbaRombho4', 1, 0),
(1002, 'K.', 'Köpeğe vurma hakkının olduğunu zanneden mahlukat! #HayvanaSiddetSuctur\n#HAYVANHAKLARIYASASI\n#hayvanasiddetehayir… https://t.co/U3FqHbhB9W', 1, 0),
(1003, 'kedyy', 'Sizlerden gelecek destekleri dört gözle bekliyor. @danlabilic @haluklevent @ahbapplatformu #kedi #kediyardım… https://t.co/6VYSfoEKMX', 1, 0),
(1004, 'Ebryy', 'Of ya kadının gücü bu olsa gerek. Shhshaha danla ile basa cikmak gibi bir cok düsünceniz nasil olabilir. whqhqhah. #danlabilic #danlabilir#', 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_timeline`
--

CREATE TABLE `user_timeline` (
  `id` int(11) NOT NULL,
  `tweet` text NOT NULL,
  `retweetcount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `geo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_timeline`
--

INSERT INTO `user_timeline` (`id`, `tweet`, `retweetcount`, `user_id`, `geo`) VALUES
(363, '@ErcXspace @SpaceX @NASASpaceflight @MarcusHouse Pretty close. Inner ring is closer to center 3, as all 12 gimbal t… https://t.co/9IGXh7oyE5', 522, 2, NULL),
(364, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(365, '@ErcXspace @SpaceX @NASASpaceflight @MarcusHouse Pretty close. Inner ring is closer to center 3, as all 12 gimbal t… https://t.co/9IGXh7oyE5', 526, 2, NULL),
(366, '@hiddin2urleft @greg16676935420 @blockfolio @BillyM2k @itsALLrisky @GloryDoge @DogecoinRise @ItsDogeCoin @DogeEducation @Investments_CEO ????????', 1746, 2, NULL),
(367, 'Ocean spaceport Deimos is under construction for launch next year https://t.co/WJQka399c7', 8800, 2, NULL),
(368, 'RT @SpaceX: One year ago today, SpaceX launched its first human spaceflight mission with @NASA astronauts @AstroBehnken and @Astro_Doug on…', 2760, 2, NULL),
(369, '@RenataKonkoly @Tesmanian_com Sehnsucht', 217, 2, NULL),
(370, '@Tesmanian_com Danke!!', 676, 2, NULL),
(371, '@PPathole @nextspaceflight @NASASpaceflight @BocaChicaGal @SpaceX Actually, so-called “secondary” structure is the… https://t.co/DVPeARQ1TJ', 350, 2, NULL),
(372, '@RationalEtienne @kimbal True', 632, 2, NULL),
(373, '@UniverCurious @TechInsider 250M years is only ~6% increase in age of Earth', 716, 2, NULL),
(374, '@Erdayastronaut @nextspaceflight @NASASpaceflight @BocaChicaGal @SpaceX Raptor production is approaching one every 48 hours', 1126, 2, NULL),
(375, '@nextspaceflight @NASASpaceflight @BocaChicaGal @SpaceX 29 Raptors on Booster initially, rising to 32 later this ye… https://t.co/nynT8qgKc8', 695, 2, NULL),
(376, '@blockfolio Great idea', 2601, 2, NULL),
(377, '@westcoastbill ????????', 496, 2, NULL),
(378, '@teslaownersSV @TeslaNY Dark Helmet emotes Plaid well', 287, 2, NULL),
(379, '@OwenSparks_ @TeslaNY Actually true haha', 260, 2, NULL),
(380, '@TeslaNY Basically, our entire product roadmap is from Spaceballs ????????', 397, 2, NULL),
(381, '@TeslaGong Yes', 206, 2, NULL),
(382, '@boringcompany Congrats Boring Company team!', 680, 2, NULL),
(383, '@OwenSparks_ @SHillforVegas @boringcompany @LVCVA Sick burn haha. Hopefully, next year.', 190, 2, NULL),
(384, 'Model S Plaid delivery pushed to June 10. Needs one more week of tweak.\n\nThis car feels like a spaceship. Words can… https://t.co/2lpS5RUP3j', 8364, 2, NULL),
(385, '@ErcXspace @SpaceX @NASASpaceflight @MarcusHouse Pretty close. Inner ring is closer to center 3, as all 12 gimbal t… https://t.co/9IGXh7oyE5', 567, 2, NULL),
(386, '@hiddin2urleft @greg16676935420 @blockfolio @BillyM2k @itsALLrisky @GloryDoge @DogecoinRise @ItsDogeCoin @DogeEducation @Investments_CEO ????????', 1790, 2, NULL),
(387, 'Ocean spaceport Deimos is under construction for launch next year https://t.co/WJQka399c7', 9005, 2, NULL),
(388, 'RT @SpaceX: One year ago today, SpaceX launched its first human spaceflight mission with @NASA astronauts @AstroBehnken and @Astro_Doug on…', 2786, 2, NULL),
(389, '@RenataKonkoly @Tesmanian_com Sehnsucht', 218, 2, NULL),
(390, '@Tesmanian_com Danke!!', 678, 2, NULL),
(391, '@PPathole @nextspaceflight @NASASpaceflight @BocaChicaGal @SpaceX Actually, so-called “secondary” structure is the… https://t.co/DVPeARQ1TJ', 350, 2, NULL),
(392, '@RationalEtienne @kimbal True', 632, 2, NULL),
(393, '@UniverCurious @TechInsider 250M years is only ~6% increase in age of Earth', 717, 2, NULL),
(394, '@Erdayastronaut @nextspaceflight @NASASpaceflight @BocaChicaGal @SpaceX Raptor production is approaching one every 48 hours', 1128, 2, NULL),
(395, '@nextspaceflight @NASASpaceflight @BocaChicaGal @SpaceX 29 Raptors on Booster initially, rising to 32 later this ye… https://t.co/nynT8qgKc8', 698, 2, NULL),
(396, '@blockfolio Great idea', 2602, 2, NULL),
(397, '@westcoastbill ????????', 496, 2, NULL),
(398, '@teslaownersSV @TeslaNY Dark Helmet emotes Plaid well', 288, 2, NULL),
(399, '@OwenSparks_ @TeslaNY Actually true haha', 261, 2, NULL),
(400, '@TeslaNY Basically, our entire product roadmap is from Spaceballs ????????', 397, 2, NULL),
(401, '@TeslaGong Yes', 206, 2, NULL),
(402, '@boringcompany Congrats Boring Company team!', 680, 2, NULL),
(403, '@OwenSparks_ @SHillforVegas @boringcompany @LVCVA Sick burn haha. Hopefully, next year.', 190, 2, NULL),
(404, 'Model S Plaid delivery pushed to June 10. Needs one more week of tweak.\n\nThis car feels like a spaceship. Words can… https://t.co/2lpS5RUP3j', 8380, 2, NULL),
(405, '@SHillforVegas @boringcompany @LVCVA Vegas FTW!', 458, 2, NULL),
(406, '@skorusARK Exactly. Atmospheric drag clearing out orbital debris is a major reason why we dropped altitude to ~550km.', 491, 2, NULL),
(407, '@KosukeGoto2013 I suspect that name made him strong', 650, 2, NULL),
(408, '@blueorigin For the low, low price of … ?', 2311, 2, NULL),
(409, 'https://t.co/0YDXE4KJlP', 4008, 2, NULL),
(410, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(411, '???? https://t.co/ldkvb70ItL', 11, 1, NULL),
(412, '@iambadenotbadem ♥️♥️♥️', 0, 1, NULL),
(413, 'RT @danlabilic: Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 18, 1, NULL),
(414, 'RT @MCemalcan: Danla\'nın yeni videosu yayında ????♥️\n@danlabilic\n\nhttps://t.co/Ee1pRlvthW', 3, 1, NULL),
(415, 'Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 18, 1, NULL),
(416, '@cakmarayban Vitaminsize bakin hele', 0, 1, NULL),
(417, '@cccesma Linkledim askm', 0, 1, NULL),
(418, 'Ankarali sevgili sorunsali https://t.co/sj2p0sH67j', 122, 1, NULL),
(419, 'Yapisiksiniz birilerine yapismadan yasayamiyosunuz :D', 1034, 1, NULL),
(420, 'Yiyin birbirinizi', 886, 1, NULL),
(421, 'Sonunda biri olaylari cozmus https://t.co/0B3WGPxS1I', 4, 1, NULL),
(422, 'Ne yedirdin ne yedirdin bisey yedirmedim sahibi vefat edip sahiplendigimde boyleydi duzenli kontrole gidiyo 3 kilo… https://t.co/HjLtBDrpE1', 18, 1, NULL),
(423, '@Arunamoon_ @Lavendaso ????????', 0, 1, NULL),
(424, '@Lifingstyle Isine gelince oyle kosup zipliyo ki', 1, 1, NULL),
(425, 'Yuruyuse gidiyoruz bye https://t.co/beHVjdEspY', 1406, 1, NULL),
(426, '@turantugba0 ????????♥️♥️', 2, 1, NULL),
(427, '@tuttifurittik kara liste.... saka saka saglam sarmadan kargolarim hepsi bu', 6, 1, NULL),
(428, '@ekrumsu caresizlik', 1, 1, NULL),
(429, 'enes seni aylar belki de yillar once heryerden engelledim birak pesimi', 121, 1, NULL),
(430, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(431, '???? https://t.co/ldkvb70ItL', 11, 1, NULL),
(432, '@iambadenotbadem ♥️♥️♥️', 0, 1, NULL),
(433, 'RT @danlabilic: Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 18, 1, NULL),
(434, 'RT @MCemalcan: Danla\'nın yeni videosu yayında ????♥️\n@danlabilic\n\nhttps://t.co/Ee1pRlvthW', 3, 1, NULL),
(435, 'Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 18, 1, NULL),
(436, '@cakmarayban Vitaminsize bakin hele', 0, 1, NULL),
(437, '@cccesma Linkledim askm', 0, 1, NULL),
(438, 'Ankarali sevgili sorunsali https://t.co/sj2p0sH67j', 122, 1, NULL),
(439, 'Yapisiksiniz birilerine yapismadan yasayamiyosunuz :D', 1034, 1, NULL),
(440, 'Yiyin birbirinizi', 886, 1, NULL),
(441, 'Sonunda biri olaylari cozmus https://t.co/0B3WGPxS1I', 4, 1, NULL),
(442, 'Ne yedirdin ne yedirdin bisey yedirmedim sahibi vefat edip sahiplendigimde boyleydi duzenli kontrole gidiyo 3 kilo… https://t.co/HjLtBDrpE1', 18, 1, NULL),
(443, '@Arunamoon_ @Lavendaso ????????', 0, 1, NULL),
(444, '@Lifingstyle Isine gelince oyle kosup zipliyo ki', 1, 1, NULL),
(445, 'Yuruyuse gidiyoruz bye https://t.co/beHVjdEspY', 1406, 1, NULL),
(446, '@turantugba0 ????????♥️♥️', 2, 1, NULL),
(447, '@tuttifurittik kara liste.... saka saka saglam sarmadan kargolarim hepsi bu', 6, 1, NULL),
(448, '@ekrumsu caresizlik', 1, 1, NULL),
(449, 'enes seni aylar belki de yillar once heryerden engelledim birak pesimi', 121, 1, NULL),
(450, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(451, '???? https://t.co/ldkvb70ItL', 12, 1, NULL),
(452, '@iambadenotbadem ♥️♥️♥️', 0, 1, NULL),
(453, 'RT @danlabilic: Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(454, 'RT @MCemalcan: Danla\'nın yeni videosu yayında ????♥️\n@danlabilic\n\nhttps://t.co/Ee1pRlvthW', 3, 1, NULL),
(455, 'Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(456, '@cakmarayban Vitaminsize bakin hele', 0, 1, NULL),
(457, '@cccesma Linkledim askm', 0, 1, NULL),
(458, 'Ankarali sevgili sorunsali https://t.co/sj2p0sH67j', 122, 1, NULL),
(459, 'Yapisiksiniz birilerine yapismadan yasayamiyosunuz :D', 1034, 1, NULL),
(460, 'Yiyin birbirinizi', 886, 1, NULL),
(461, 'Sonunda biri olaylari cozmus https://t.co/0B3WGPxS1I', 4, 1, NULL),
(462, 'Ne yedirdin ne yedirdin bisey yedirmedim sahibi vefat edip sahiplendigimde boyleydi duzenli kontrole gidiyo 3 kilo… https://t.co/HjLtBDrpE1', 18, 1, NULL),
(463, '@Arunamoon_ @Lavendaso ????????', 0, 1, NULL),
(464, '@Lifingstyle Isine gelince oyle kosup zipliyo ki', 1, 1, NULL),
(465, 'Yuruyuse gidiyoruz bye https://t.co/beHVjdEspY', 1406, 1, NULL),
(466, '@turantugba0 ????????♥️♥️', 2, 1, NULL),
(467, '@tuttifurittik kara liste.... saka saka saglam sarmadan kargolarim hepsi bu', 6, 1, NULL),
(468, '@ekrumsu caresizlik', 1, 1, NULL),
(469, 'enes seni aylar belki de yillar once heryerden engelledim birak pesimi', 121, 1, NULL),
(470, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(471, '???? https://t.co/ldkvb70ItL', 12, 1, NULL),
(472, '@iambadenotbadem ♥️♥️♥️', 0, 1, NULL),
(473, 'RT @danlabilic: Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(474, 'RT @MCemalcan: Danla\'nın yeni videosu yayında ????♥️\n@danlabilic\n\nhttps://t.co/Ee1pRlvthW', 3, 1, NULL),
(475, 'Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(476, '@cakmarayban Vitaminsize bakin hele', 0, 1, NULL),
(477, '@cccesma Linkledim askm', 0, 1, NULL),
(478, 'Ankarali sevgili sorunsali https://t.co/sj2p0sH67j', 122, 1, NULL),
(479, 'Yapisiksiniz birilerine yapismadan yasayamiyosunuz :D', 1034, 1, NULL),
(480, 'Yiyin birbirinizi', 886, 1, NULL),
(481, 'Sonunda biri olaylari cozmus https://t.co/0B3WGPxS1I', 4, 1, NULL),
(482, 'Ne yedirdin ne yedirdin bisey yedirmedim sahibi vefat edip sahiplendigimde boyleydi duzenli kontrole gidiyo 3 kilo… https://t.co/HjLtBDrpE1', 18, 1, NULL),
(483, '@Arunamoon_ @Lavendaso ????????', 0, 1, NULL),
(484, '@Lifingstyle Isine gelince oyle kosup zipliyo ki', 1, 1, NULL),
(485, 'Yuruyuse gidiyoruz bye https://t.co/beHVjdEspY', 1406, 1, NULL),
(486, '@turantugba0 ????????♥️♥️', 2, 1, NULL),
(487, '@tuttifurittik kara liste.... saka saka saglam sarmadan kargolarim hepsi bu', 6, 1, NULL),
(488, '@ekrumsu caresizlik', 1, 1, NULL),
(489, 'enes seni aylar belki de yillar once heryerden engelledim birak pesimi', 121, 1, NULL),
(490, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(491, '???? https://t.co/ldkvb70ItL', 12, 1, NULL),
(492, '@iambadenotbadem ♥️♥️♥️', 0, 1, NULL),
(493, 'RT @danlabilic: Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(494, 'RT @MCemalcan: Danla\'nın yeni videosu yayında ????♥️\n@danlabilic\n\nhttps://t.co/Ee1pRlvthW', 3, 1, NULL),
(495, 'Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(496, '@cakmarayban Vitaminsize bakin hele', 0, 1, NULL),
(497, '@cccesma Linkledim askm', 0, 1, NULL),
(498, 'Ankarali sevgili sorunsali https://t.co/sj2p0sH67j', 122, 1, NULL),
(499, 'Yapisiksiniz birilerine yapismadan yasayamiyosunuz :D', 1034, 1, NULL),
(500, 'Yiyin birbirinizi', 886, 1, NULL),
(501, 'Sonunda biri olaylari cozmus https://t.co/0B3WGPxS1I', 4, 1, NULL),
(502, 'Ne yedirdin ne yedirdin bisey yedirmedim sahibi vefat edip sahiplendigimde boyleydi duzenli kontrole gidiyo 3 kilo… https://t.co/HjLtBDrpE1', 18, 1, NULL),
(503, '@Arunamoon_ @Lavendaso ????????', 0, 1, NULL),
(504, '@Lifingstyle Isine gelince oyle kosup zipliyo ki', 1, 1, NULL),
(505, 'Yuruyuse gidiyoruz bye https://t.co/beHVjdEspY', 1406, 1, NULL),
(506, '@turantugba0 ????????♥️♥️', 2, 1, NULL),
(507, '@tuttifurittik kara liste.... saka saka saglam sarmadan kargolarim hepsi bu', 6, 1, NULL),
(508, '@ekrumsu caresizlik', 1, 1, NULL),
(509, 'enes seni aylar belki de yillar once heryerden engelledim birak pesimi', 121, 1, NULL),
(510, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(511, '???? https://t.co/ldkvb70ItL', 12, 1, NULL),
(512, '@iambadenotbadem ♥️♥️♥️', 0, 1, NULL),
(513, 'RT @danlabilic: Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(514, 'RT @MCemalcan: Danla\'nın yeni videosu yayında ????♥️\n@danlabilic\n\nhttps://t.co/Ee1pRlvthW', 3, 1, NULL),
(515, 'Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(516, '@cakmarayban Vitaminsize bakin hele', 0, 1, NULL),
(517, '@cccesma Linkledim askm', 0, 1, NULL),
(518, 'Ankarali sevgili sorunsali https://t.co/sj2p0sH67j', 122, 1, NULL),
(519, 'Yapisiksiniz birilerine yapismadan yasayamiyosunuz :D', 1034, 1, NULL),
(520, 'Yiyin birbirinizi', 886, 1, NULL),
(521, 'Sonunda biri olaylari cozmus https://t.co/0B3WGPxS1I', 4, 1, NULL),
(522, 'Ne yedirdin ne yedirdin bisey yedirmedim sahibi vefat edip sahiplendigimde boyleydi duzenli kontrole gidiyo 3 kilo… https://t.co/HjLtBDrpE1', 18, 1, NULL),
(523, '@Arunamoon_ @Lavendaso ????????', 0, 1, NULL),
(524, '@Lifingstyle Isine gelince oyle kosup zipliyo ki', 1, 1, NULL),
(525, 'Yuruyuse gidiyoruz bye https://t.co/beHVjdEspY', 1406, 1, NULL),
(526, '@turantugba0 ????????♥️♥️', 2, 1, NULL),
(527, '@tuttifurittik kara liste.... saka saka saglam sarmadan kargolarim hepsi bu', 6, 1, NULL),
(528, '@ekrumsu caresizlik', 1, 1, NULL),
(529, 'enes seni aylar belki de yillar once heryerden engelledim birak pesimi', 121, 1, NULL),
(530, '@odaklanamayan_ Jdjdjdjjk', 0, 1, NULL),
(531, '???? https://t.co/ldkvb70ItL', 12, 1, NULL),
(532, '@iambadenotbadem ♥️♥️♥️', 0, 1, NULL),
(533, 'RT @danlabilic: Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(534, 'RT @MCemalcan: Danla\'nın yeni videosu yayında ????♥️\n@danlabilic\n\nhttps://t.co/Ee1pRlvthW', 3, 1, NULL),
(535, 'Geri dondum ???? yeni videoda tum cevaplar var, corona itirafim dahil sizindir https://t.co/vu8MYlPjnq', 17, 1, NULL),
(536, '@cakmarayban Vitaminsize bakin hele', 0, 1, NULL),
(537, '@cccesma Linkledim askm', 0, 1, NULL),
(538, 'Ankarali sevgili sorunsali https://t.co/sj2p0sH67j', 122, 1, NULL),
(539, 'Yapisiksiniz birilerine yapismadan yasayamiyosunuz :D', 1034, 1, NULL),
(540, 'Yiyin birbirinizi', 886, 1, NULL),
(541, 'Sonunda biri olaylari cozmus https://t.co/0B3WGPxS1I', 4, 1, NULL),
(542, 'Ne yedirdin ne yedirdin bisey yedirmedim sahibi vefat edip sahiplendigimde boyleydi duzenli kontrole gidiyo 3 kilo… https://t.co/HjLtBDrpE1', 18, 1, NULL),
(543, '@Arunamoon_ @Lavendaso ????????', 0, 1, NULL),
(544, '@Lifingstyle Isine gelince oyle kosup zipliyo ki', 1, 1, NULL),
(545, 'Yuruyuse gidiyoruz bye https://t.co/beHVjdEspY', 1406, 1, NULL),
(546, '@turantugba0 ????????♥️♥️', 2, 1, NULL),
(547, '@tuttifurittik kara liste.... saka saka saglam sarmadan kargolarim hepsi bu', 6, 1, NULL),
(548, '@ekrumsu caresizlik', 1, 1, NULL),
(549, 'enes seni aylar belki de yillar once heryerden engelledim birak pesimi', 121, 1, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user_replies`
--
ALTER TABLE `user_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id2` (`user_id`);

--
-- Tablo için indeksler `user_timeline`
--
ALTER TABLE `user_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `user_replies`
--
ALTER TABLE `user_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- Tablo için AUTO_INCREMENT değeri `user_timeline`
--
ALTER TABLE `user_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `user_replies`
--
ALTER TABLE `user_replies`
  ADD CONSTRAINT `users_id2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `user_timeline`
--
ALTER TABLE `user_timeline`
  ADD CONSTRAINT `users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
