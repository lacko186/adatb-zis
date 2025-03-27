-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 27. 09:01
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kaposvar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `route`
--

CREATE TABLE `route` (
  `key` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `gtfs_id` int(11) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `short_name` text DEFAULT NULL,
  `long_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_name_normalized` text DEFAULT NULL,
  `long_name_normalized` text DEFAULT NULL,
  `description_normalized` text DEFAULT NULL,
  `type_vehicle` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `replacement` int(11) NOT NULL,
  `parent_route_id` text DEFAULT NULL,
  `child_route_ids` text DEFAULT NULL,
  `replacement_description` text DEFAULT NULL,
  `dynamic_route` int(11) DEFAULT NULL,
  `hash_id` int(11) DEFAULT NULL,
  `hash_short_name` int(11) DEFAULT NULL,
  `order_in_type` int(11) DEFAULT NULL,
  `sequence_in_route` int(11) DEFAULT NULL,
  `trip_count` int(11) DEFAULT NULL,
  `trips_begin` int(11) DEFAULT NULL,
  `trips_end` int(11) DEFAULT NULL,
  `color` text DEFAULT NULL,
  `text_color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `route`
--

INSERT INTO `route` (`key`, `id`, `gtfs_id`, `agency_id`, `short_name`, `long_name`, `description`, `short_name_normalized`, `long_name_normalized`, `description_normalized`, `type_vehicle`, `type`, `replacement`, `parent_route_id`, `child_route_ids`, `replacement_description`, `dynamic_route`, `hash_id`, `hash_short_name`, `order_in_type`, `sequence_in_route`, `trip_count`, `trips_begin`, `trips_end`, `color`, `text_color`) VALUES
(519, 'MAV_77_KAGY', 7, 12, 'SZ', 'Kaposvár - Győr', 'Személyvonat', 'sz', 'kaposvar - gyor', 'szemelyvonat', 100, 100, 0, NULL, NULL, NULL, 1, 77, -1, 5, NULL, 1718, 20250109, 20250706, NULL, NULL),
(544, 'MAV_102_DONA', 7, 12, 'SZ', 'Dombóvár - Nagykanizsa', 'Személyvonat', 'sz', 'dombovar - nagykanizsa', 'szemelyvonat', 100, 100, 0, NULL, NULL, NULL, 1, 10, -1, 1, NULL, 4624, 20250109, 20250706, NULL, NULL),
(555, 'MAV_113_GYPE', 7, 12, 'SZ', 'Győr - Pécs', 'Személyvonat', 'sz', 'gyor - pecs', 'szemelyvonat', 100, 100, 0, NULL, NULL, NULL, 1, 11, -1, 3, NULL, 3667, 20250109, 20250706, NULL, NULL),
(561, 'MAV_119_KASI', 7, 12, 'SZ', 'Kaposvár - Siófok', 'Személyvonat', 'sz', 'kaposvar - siofok', 'szemelyvonat', 100, 100, 0, NULL, NULL, NULL, 1, 11, -1, 6, NULL, 3826, 20250109, 20250706, NULL, NULL),
(4313, 'MAV_229_BUGY_IC', 7, 12, 'IC', 'Budapest-Keleti - Gyékényes', 'InterCity', 'ic', 'budapest-keleti - gyekenyes', 'intercity', 102, 102, 0, NULL, NULL, NULL, 1, 22, -1, 1, NULL, 1074, 20250109, 20250706, NULL, NULL),
(4321, 'MAV_237_KEPE', 7, 12, 'SZ', 'Keszthely - Pécs', 'Személyvonat', 'sz', 'keszthely - pecs', 'szemelyvonat', 100, 100, 0, NULL, NULL, NULL, 1, 23, -1, 7, NULL, 166, 20250315, 20250706, NULL, NULL),
(4413, 'MAV_313_KABA', 7, 12, 'SZ', 'Kaposvár - Balatonszentgyörgy', 'Személyvonat', 'sz', 'kaposvar - balatonszentgyorgy', 'szemelyvonat', 100, 100, 0, NULL, NULL, NULL, 1, 31, -1, 4, NULL, 42, 20250518, 20250706, NULL, NULL),
(7447, 'MAV_508_GYPE', 7, 12, 'SZ', 'Gyékényes - Pécs', 'Személyvonat', 'sz', 'gyekenyes - pecs', 'szemelyvonat', 100, 100, 0, NULL, NULL, NULL, 1, 50, -1, 2, NULL, 0, NULL, NULL, NULL, NULL),
(8373, 'VLN_hkir_V-O-200-1172', 14, 17, '1172', 'Budapest - Siófok - Tab - Igal - Kaposvár', NULL, '1172', 'budapest - siofok - tab - igal - kaposvar', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1172, 1, NULL, 180, 20250109, 20250408, 'F6AC00', '152B32'),
(8375, 'VLN_hkir_V-O-200-1174', 14, 17, '1174', 'Budapest - Székesfehérvár - Siófok - Igal - Kaposvár', NULL, '1174', 'budapest - szekesfehervar - siofok - igal - kaposvar', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1174, 2, NULL, 206, 20250109, 20250408, 'F6AC00', '152B32'),
(8376, 'VLN_hkir_V-O-200-1175', 14, 17, '1175', 'Budapest - Mernye - Kaposvár - Kadarkút - Nagyatád', NULL, '1175', 'budapest - mernye - kaposvar - kadarkut - nagyatad', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1175, 3, NULL, 386, 20250109, 20250408, 'F6AC00', '152B32'),
(8377, 'VLN_hkir_V-O-200-1176', 14, 17, '1176', 'Budapest - Tab / Kereki - Igal - Kaposvár', NULL, '1176', 'budapest - tab / kereki - igal - kaposvar', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1176, 4, NULL, 219, 20250109, 20250408, 'F6AC00', '152B32'),
(8421, 'VLN_hkir_V-O-200-1503', 14, 17, '1503', 'Szeged - Baja - Pécs - Kaposvár - Zalaegerszeg', NULL, '1503', 'szeged - baja - pecs - kaposvar - zalaegerszeg', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1503, 5, NULL, 360, 20250109, 20250408, 'F6AC00', '152B32'),
(8442, 'VLN_hkir_V-O-200-1569', 14, 17, '1569', 'Pécs - Kaposvár - Ajka', NULL, '1569', 'pecs - kaposvar - ajka', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1569, 6, NULL, 631, 20250109, 20250408, 'F6AC00', '152B32'),
(8444, 'VLN_hkir_V-O-200-1578', 14, 17, '1578', 'Pécs - Kaposvár - Balatonlelle - Keszthely/Zalakaros', NULL, '1578', 'pecs - kaposvar - balatonlelle - keszthely/zalakaros', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1578, 7, NULL, 13, 20250112, 20250406, 'F6AC00', '152B32'),
(8446, 'VLN_hkir_V-O-200-1592', 14, 17, '1592', 'Kaposvár - Siófok - Veszprém - Győr', NULL, '1592', 'kaposvar - siofok - veszprem - gyor', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1592, 8, NULL, 260, 20250109, 20250408, 'F6AC00', '152B32'),
(8447, 'VLN_hkir_V-O-200-1593', 14, 17, '1593', 'Kaposvár - Siófok - Veszprém', NULL, '1593', 'kaposvar - siofok - veszprem', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1593, 9, NULL, 180, 20250109, 20250408, 'F6AC00', '152B32'),
(8451, 'VLN_hkir_V-O-200-1641', 14, 17, '1641', 'Lenti/Zalaegerszeg - Nagykanizsa - Kaposvár/Nagyatád - Pécs', NULL, '1641', 'lenti/zalaegerszeg - nagykanizsa - kaposvar/nagyatad - pecs', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1641, 10, NULL, 194, 20250109, 20250408, 'F6AC00', '152B32'),
(8456, 'VLN_hkir_V-O-200-1665', 14, 17, '1665', 'Zalaegerszeg - Keszthely - Balatonlelle - Kaposvár - Pécs', NULL, '1665', 'zalaegerszeg - keszthely - balatonlelle - kaposvar - pecs', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1665, 11, NULL, 180, 20250109, 20250408, 'F6AC00', '152B32'),
(8457, 'VLN_hkir_V-O-200-1668', 14, 17, '1668', 'Szombathely - Zalaegerszeg - Kaposvár - Pécs', NULL, '1668', 'szombathely - zalaegerszeg - kaposvar - pecs', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1668, 12, NULL, 785, 20250109, 20250408, 'F6AC00', '152B32'),
(8458, 'VLN_hkir_V-O-200-1673', 14, 17, '1673', 'Szombathely - Keszthely - Kaposvár - Pécs', NULL, '1673', 'szombathely - keszthely - kaposvar - pecs', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1673, 13, NULL, 180, 20250109, 20250408, 'F6AC00', '152B32'),
(8468, 'VLN_hkir_V-O-200-1725', 14, 17, '1725', 'Sopron - Sümeg - Keszthely - Kaposvár', NULL, '1725', 'sopron - sumeg - keszthely - kaposvar', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1725, 14, NULL, 206, 20250109, 20250408, 'F6AC00', '152B32'),
(8476, 'VLN_hkir_V-O-200-1742', 14, 17, '1742', 'Veszprém - Siófok - Kaposvár - Pécs', NULL, '1742', 'veszprem - siofok - kaposvar - pecs', NULL, 202, 202, 0, NULL, NULL, NULL, 0, 20, 1742, 15, NULL, 180, 20250109, 20250408, 'F6AC00', '152B32'),
(9887, 'VLN_hkir_V-R-200-5606', 14, 17, '5606', 'Pécs - Sásd - Kaposvár', NULL, '5606', 'pecs - sasd - kaposvar', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5606, 1, NULL, 1686, 20250109, 20250408, 'F6AC00', '152B32'),
(9952, 'VLN_hkir_V-R-200-5690', 14, 17, '5690', 'Pécs - Szentlőrinc - Kaposvár - Marcali', NULL, '5690', 'pecs - szentlorinc - kaposvar - marcali', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5690, 2, NULL, 271, 20250109, 20250408, 'F6AC00', '152B32'),
(10040, 'VLN_hkir_V-R-200-5900', 14, 17, '5900', 'Kaposvár - Somogygeszti - Ecseny', NULL, '5900', 'kaposvar - somogygeszti - ecseny', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5900, 3, NULL, 3215, 20250109, 20250408, 'F6AC00', '152B32'),
(10041, 'VLN_hkir_V-R-200-5905', 14, 17, '5905', 'Kaposvár - Mernye - Fonyód - Balatonmáriafürdő', NULL, '5905', 'kaposvar - mernye - fonyod - balatonmariafurdo', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5905, 4, NULL, 885, 20250109, 20250408, 'F6AC00', '152B32'),
(10042, 'VLN_hkir_V-R-200-5906', 14, 17, '5906', 'Kaposvár - Látrány - Balatonszárszó - Siófok', NULL, '5906', 'kaposvar - latrany - balatonszarszo - siofok', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5906, 5, NULL, 694, 20250109, 20250408, 'F6AC00', '152B32'),
(10044, 'VLN_hkir_V-R-200-5910', 14, 17, '5910', 'Kaposvár - Ráksi - Igal - Gadács', NULL, '5910', 'kaposvar - raksi - igal - gadacs', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5910, 6, NULL, 2550, 20250109, 20250408, 'F6AC00', '152B32'),
(10045, 'VLN_hkir_V-R-200-5912', 14, 17, '5912', 'Kaposvár - Igal - Fiad', NULL, '5912', 'kaposvar - igal - fiad', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5912, 7, NULL, 654, 20250109, 20250408, 'F6AC00', '152B32'),
(10046, 'VLN_hkir_V-R-200-5913', 14, 17, '5913', 'Kaposvár - Tab - Törökkoppány', NULL, '5913', 'kaposvar - tab - torokkoppany', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5913, 8, NULL, 230, 20250109, 20250408, 'F6AC00', '152B32'),
(10047, 'VLN_hkir_V-R-200-5914', 14, 17, '5914', 'Kaposvár -Igal - Törökkoppány - Tab', NULL, '5914', 'kaposvar -igal - torokkoppany - tab', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5914, 9, NULL, 486, 20250109, 20250408, 'F6AC00', '152B32'),
(10048, 'VLN_hkir_V-R-200-5916', 14, 17, '5916', 'Kaposvár - Igal - Tab - Siófok', NULL, '5916', 'kaposvar - igal - tab - siofok', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5916, 10, NULL, 1015, 20250109, 20250408, 'F6AC00', '152B32'),
(10049, 'VLN_hkir_V-R-200-5917', 14, 17, '5917', 'Kaposvár - Igal - Tab - Ságvár - Siófok', NULL, '5917', 'kaposvar - igal - tab - sagvar - siofok', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5917, 11, NULL, 231, 20250109, 20250408, 'F6AC00', '152B32'),
(10050, 'VLN_hkir_V-R-200-5918', 14, 17, '5918', 'Kaposvár - Zimány', NULL, '5918', 'kaposvar - zimany', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5918, 12, NULL, 1972, 20250109, 20250408, 'F6AC00', '152B32'),
(10051, 'VLN_hkir_V-R-200-5920', 14, 17, '5920', 'Kaposvár - Taszár - Baté', NULL, '5920', 'kaposvar - taszar - bate', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5920, 13, NULL, 640, 20250109, 20250408, 'F6AC00', '152B32'),
(10052, 'VLN_hkir_V-R-200-5922', 14, 17, '5922', 'Kaposvár -Baté - Gölle - Igal', NULL, '5922', 'kaposvar -bate - golle - igal', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5922, 14, NULL, 1912, 20250109, 20250408, 'F6AC00', '152B32'),
(10053, 'VLN_hkir_V-R-200-5923', 14, 17, '5923', 'Kaposvár - Dombóvár - Szekszárd', NULL, '5923', 'kaposvar - dombovar - szekszard', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5923, 15, NULL, 386, 20250109, 20250408, 'F6AC00', '152B32'),
(10054, 'VLN_hkir_V-R-200-5924', 14, 17, '5924', 'Kaposvár - Dombóvár - Bonyhád - Mohács', NULL, '5924', 'kaposvar - dombovar - bonyhad - mohacs', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5924, 16, NULL, 180, 20250109, 20250408, 'F6AC00', '152B32'),
(10055, 'VLN_hkir_V-R-200-5925', 14, 17, '5925', 'Kaposvár - Mosdós - Dombóvár', NULL, '5925', 'kaposvar - mosdos - dombovar', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5925, 17, NULL, 1866, 20250109, 20250408, 'F6AC00', '152B32'),
(10056, 'VLN_hkir_V-R-200-5928', 14, 17, '5928', 'Kaposvár -Taszár - Mosdós - Kercseliget', NULL, '5928', 'kaposvar -taszar - mosdos - kercseliget', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5928, 18, NULL, 2278, 20250109, 20250408, 'F6AC00', '152B32'),
(10057, 'VLN_hkir_V-R-200-5930', 14, 17, '5930', 'Kaposvár - Szentbalázs - Gödre - Sásd', NULL, '5930', 'kaposvar - szentbalazs - godre - sasd', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5930, 19, NULL, 832, 20250109, 20250408, 'F6AC00', '152B32'),
(10058, 'VLN_hkir_V-R-200-5931', 14, 17, '5931', 'Kaposvár - Sásd - Komló', NULL, '5931', 'kaposvar - sasd - komlo', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5931, 20, NULL, 218, 20250109, 20250408, 'F6AC00', '152B32'),
(10059, 'VLN_hkir_V-R-200-5932', 14, 17, '5932', 'Kaposvár - Sásd - Komló', NULL, '5932', 'kaposvar - sasd - komlo', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5932, 21, NULL, 26, 20250111, 20250406, 'F6AC00', '152B32'),
(10060, 'VLN_hkir_V-R-200-5934', 14, 17, '5934', 'Kaposvár - Sásd - Szigetvár', NULL, '5934', 'kaposvar - sasd - szigetvar', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5934, 22, NULL, 90, 20250109, 20250408, 'F6AC00', '152B32'),
(10061, 'VLN_hkir_V-R-200-5935', 14, 17, '5935', 'Kaposvár - Szentbalázs - Gálosfa - Bőszénfa', NULL, '5935', 'kaposvar - szentbalazs - galosfa - boszenfa', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5935, 23, NULL, 2104, 20250109, 20250408, 'F6AC00', '152B32'),
(10062, 'VLN_hkir_V-R-200-5940', 14, 17, '5940', 'Kaposvár - Simonfa - Bőszénfa', NULL, '5940', 'kaposvar - simonfa - boszenfa', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5940, 24, NULL, 2012, 20250109, 20250408, 'F6AC00', '152B32'),
(10063, 'VLN_hkir_V-R-200-5942', 14, 17, '5942', 'Kaposvár - Simonfa - Szigetvár - Szentborbás', NULL, '5942', 'kaposvar - simonfa - szigetvar - szentborbas', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5942, 25, NULL, 1002, 20250109, 20250408, 'F6AC00', '152B32'),
(10064, 'VLN_hkir_V-R-200-5946', 14, 17, '5946', 'Kaposvár - Szenna - Szilvásszentmárton - Szenna - Kaposvár', NULL, '5946', 'kaposvar - szenna - szilvasszentmarton - szenna - kaposvar', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5946, 26, NULL, 2076, 20250109, 20250408, 'F6AC00', '152B32'),
(10066, 'VLN_hkir_V-R-200-5950', 14, 17, '5950', 'Kaposvár - Kaposmérő', NULL, '5950', 'kaposvar - kaposmero', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5950, 27, NULL, 64, 20250109, 20250408, 'F6AC00', '152B32'),
(10067, 'VLN_hkir_V-R-200-5960', 14, 17, '5960', 'Kaposvár - Kaposmérő - Kadarkút', NULL, '5960', 'kaposvar - kaposmero - kadarkut', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5960, 28, NULL, 1452, 20250109, 20250408, 'F6AC00', '152B32'),
(10068, 'VLN_hkir_V-R-200-5962', 14, 17, '5962', 'Kaposvár - Kadarkút - Visnye', NULL, '5962', 'kaposvar - kadarkut - visnye', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5962, 29, NULL, 1360, 20250109, 20250408, 'F6AC00', '152B32'),
(10069, 'VLN_hkir_V-R-200-5964', 14, 17, '5964', 'Kaposvár - Kadarkút - Lad - Barcs', NULL, '5964', 'kaposvar - kadarkut - lad - barcs', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5964, 30, NULL, 1798, 20250109, 20250408, 'F6AC00', '152B32'),
(10070, 'VLN_hkir_V-R-200-5966', 14, 17, '5966', 'Kaposvár - Kadarkút - Nagyatád - Barcs', NULL, '5966', 'kaposvar - kadarkut - nagyatad - barcs', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5966, 31, NULL, 1576, 20250109, 20250408, 'F6AC00', '152B32'),
(10071, 'VLN_hkir_V-R-200-5969', 14, 17, '5969', 'Kaposvár - Kiskorpád - Rinyakovácsi - Kadarkút/Nagybajom', NULL, '5969', 'kaposvar - kiskorpad - rinyakovacsi - kadarkut/nagybajom', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5969, 32, NULL, 2204, 20250109, 20250408, 'F6AC00', '152B32'),
(10072, 'VLN_hkir_V-R-200-5970', 14, 17, '5970', 'Kaposvár - Kaposfő - Nagybajom - Böhönye', NULL, '5970', 'kaposvar - kaposfo - nagybajom - bohonye', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5970, 33, NULL, 2897, 20250109, 20250408, 'F6AC00', '152B32'),
(10073, 'VLN_hkir_V-R-200-5972', 14, 17, '5972', 'Kaposvár - Böhönye - Iharosberény - Nagykanizsa', NULL, '5972', 'kaposvar - bohonye - iharosbereny - nagykanizsa', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5972, 34, NULL, 1364, 20250109, 20250408, 'F6AC00', '152B32'),
(10074, 'VLN_hkir_V-R-200-5974', 14, 17, '5974', 'Kaposvár - Böhönye - Balatonszentgyörgy - Keszthely', NULL, '5974', 'kaposvar - bohonye - balatonszentgyorgy - keszthely', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5974, 35, NULL, 529, 20250109, 20250408, 'F6AC00', '152B32'),
(10075, 'VLN_hkir_V-R-200-5976', 14, 17, '5976', 'Kaposvár - Böhönye - Marcali - Balatonmáriafürdő - Hévíz', NULL, '5976', 'kaposvar - bohonye - marcali - balatonmariafurdo - heviz', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5976, 36, NULL, 1052, 20250109, 20250408, 'F6AC00', '152B32'),
(10076, 'VLN_hkir_V-R-200-5980', 14, 17, '5980', 'Kaposvár - Bodrog - Újvárfalva', NULL, '5980', 'kaposvar - bodrog - ujvarfalva', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5980, 37, NULL, 4204, 20250109, 20250408, 'F6AC00', '152B32'),
(10077, 'VLN_hkir_V-R-200-5982', 14, 17, '5982', 'Kaposvár - Bodrog - Kürtöspuszta - Osztopán', NULL, '5982', 'kaposvar - bodrog - kurtospuszta - osztopan', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5982, 38, NULL, 512, 20250109, 20250408, 'F6AC00', '152B32'),
(10078, 'VLN_hkir_V-R-200-5984', 14, 17, '5984', 'Kaposvár - Bodrog - Pusztakovácsi - Marcali', NULL, '5984', 'kaposvar - bodrog - pusztakovacsi - marcali', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5984, 39, NULL, 128, 20250109, 20250408, 'F6AC00', '152B32'),
(10079, 'VLN_hkir_V-R-200-5985', 14, 17, '5985', 'Kaposvár - Somogyjád - Alsóbogát - Osztopán', NULL, '5985', 'kaposvar - somogyjad - alsobogat - osztopan', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5985, 40, NULL, 1588, 20250109, 20250408, 'F6AC00', '152B32'),
(10080, 'VLN_hkir_V-R-200-5986', 14, 17, '5986', 'Kaposvár - Somogyjád - Pusztakovácsi/Somogyvár - Marcali - Balatonmáriafürdő', NULL, '5986', 'kaposvar - somogyjad - pusztakovacsi/somogyvar - marcali - balatonmariafurdo', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5986, 41, NULL, 309, 20250109, 20250408, 'F6AC00', '152B32'),
(10081, 'VLN_hkir_V-R-200-5987', 14, 17, '5987', 'Kaposvár - Lengyeltóti - Fonyód', NULL, '5987', 'kaposvar - lengyeltoti - fonyod', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5987, 42, NULL, 128, 20250109, 20250408, 'F6AC00', '152B32'),
(10082, 'VLN_hkir_V-R-200-5988', 14, 17, '5988', 'Kaposvár - Somogyjád - Balatonboglár - Fonyód', NULL, '5988', 'kaposvar - somogyjad - balatonboglar - fonyod', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5988, 43, NULL, 1560, 20250109, 20250408, 'F6AC00', '152B32'),
(10083, 'VLN_hkir_V-R-200-5989', 14, 17, '5989', 'Kaposvár - Somogyjád - Somogyvámos', NULL, '5989', 'kaposvar - somogyjad - somogyvamos', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5989, 44, NULL, 256, 20250109, 20250408, 'F6AC00', '152B32'),
(10084, 'VLN_hkir_V-R-200-5991', 14, 17, '5991', 'Kaposvár - Mernye - Somodor - Igal', NULL, '5991', 'kaposvar - mernye - somodor - igal', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 5991, 45, NULL, 576, 20250109, 20250408, 'F6AC00', '152B32'),
(10088, 'VLN_hkir_V-R-200-6011', 14, 17, '6011', 'Siófok - Dombóvár - Kaposvár - Barcs', NULL, '6011', 'siofok - dombovar - kaposvar - barcs', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 6011, 46, NULL, 192, 20250109, 20250408, 'F6AC00', '152B32'),
(10096, 'VLN_hkir_V-R-200-6041', 14, 17, '6041', 'Siófok - Látrány - Kaposvár - Nagyatád - Barcs', NULL, '6041', 'siofok - latrany - kaposvar - nagyatad - barcs', NULL, 204, 204, 0, NULL, NULL, NULL, 0, 20, 6041, 47, NULL, 116, 20250109, 20250408, 'F6AC00', '152B32');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`key`,`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
