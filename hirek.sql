-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 27. 09:02
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
-- Tábla szerkezet ehhez a táblához `hirek`
--

CREATE TABLE `hirek` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `hirek`
--

INSERT INTO `hirek` (`id`, `title`, `details`, `date`) VALUES
(1, 'Év végi közlekedési rend', 'Értesítjük a tisztelt Utazóközönséget, hogy \r\n-          2024. december 24-én (kedd) szabadnapi közlekedési rend szerint közlekedünk. Az utolsó autóbuszjáratok indulási ideje 14.40 óra, illetve ami a menetrendben vonalanként eddig az időpontig meghirdetésre került.\r\n-          2024. december 25-én 26-án és 29-én munkaszüneti napi közlekedési rend szerint közlekedünk.\r\n-          2024. december 27-én és 28-án-szabadnapi közlekedési rend szerint közlekedünk.\r\n-          2024. december 31-én (kedd) munkanapi közlekedési rend szerint közlekedünk. Az utolsó autóbuszjáratok indulási ideje 17.40 óra, illetve ami a menetrendben vonalanként eddig az időpontig meghirdetésre került.\r\n-          2025. január 01-én (szerda) munkaszüneti napi közlekedési rend szerint közlekedünk. Az első autóbuszjárat indulási ideje 5.30 óra, illetve ami a menetrendben vonalanként ettől az időponttól meghirdetésre került.\r\n-           \r\n-     Az iskolai előadások napjára meghirdetett járatok 2024. december 23-tól 2024. január 05-ig nem közlekednek. Az első tanítási nap 2024. január 06. \r\n-     Elővételi pénztár ünnepi nyitva tartása:                 \r\n- 2024. december 23-án                                                      7.00 – 17.00               \r\n- 2024. december 30-án és 31-én                                         7.00 – 15.00\r\n-           \r\n-          A 2025. évre érvényes új bérletjegyek értékesítése 2024. december 30-tól társaságunk elővételi pénztárában megkezdődik.', '2024-12-17'),
(2, 'Fotópályázat', 'A VOLÁN Egyesülés “A közösségi közlekedés fotós szemmel” címmel fotópályázatot hirdet. Részletes információk, részvételi szabályzat és adatkezelési tájékoztató a www.volanegyesules.hu/fotopalyazat oldalon található.', '2024-10-04'),
(3, 'Hidrogén meghajtású autóbusz tesztelés', 'Tájékoztatjuk tisztelt utazóközönségünket, hogy 2024.10.07. - 2024.10.29. közötti időszakban ismételten 1 db hidrogén meghajtású Solaris típusú jármű tesztelését végzi társaságunk. Az autóbusz a teszt ideje alatt menetrend szerint fog közlekedni és díjmentesen vehető igénybe.', '2024-09-25'),
(4, 'Aszfaltozási munkák miatti útvonal változás', 'Tájékoztatjuk a Tisztelt Utasainkat, hogy 2024. szeptember 01. napjától  üzemkezdettől előreláthatólag 2024. október 09. napjáig a Fő utcán aszfaltozási munkálatok lesznek. A munkálatok ideje alatt a Helyi autóbusz-állomásról induló 71, 72 ,73, 75, 81, 83, 84, 85, 86, 87, 88, 89, 91-es vonalak járatai a következő terelőútvonalon közlekednek:\r\nHelyi autóbusz-állomás – Baross Gábor u. – Hársfa u. - Pécsi u. – …. végállomás\r\nAz útlezárás ideje alatt a Helyi autóbusz-állomásról induló járatok esetében a Fő u. 48. és a Hársfa u. megnevezésű megállóhelyeket a közlekedő járatok nem érintik, míg a Hársfa utcában (a Hársfa u. 8/a. épülettel szemben) ideiglenes megállóhely kerül kialakításra.\r\n2024. október 10. napján üzemkezdettől az autóbuszok az eredeti útvonalon fognak közlekedni.\r\nA kivitelezés ideje alatt a járatok menetideje pár perccel megnövekedhet!\r\nTovábbi információ a 82/412-153-as telefonszámon elérhető.\r\nMegértésüket köszönjük!\r\nKaposvári Közlekedési Zrt.', '2024-06-11'),
(5, 'Felmérés', 'Tájékoztatjuk a tisztelt utazóközönséget, hogy 2024. június 3. és 5. között a megállókban lakossági felméréseket végzünk utazási szokásaikról.\r\nKérjük együttműködésüket és segítsék munkánkat azzal, hogy válaszolnak a kérdésekre a tömegközlekedés eredményes fejlesztésének érdekében.', '2024-06-03'),
(6, 'Értesítés', 'Tájékoztatjuk a Tisztelt Utasainkat, hogy 2024. február 05 hétfőtől előreláthatólag 2024. február 23-ig MUNKANAPOKON 8:00 órától 16:00 óráig a fák kivágása miatt az Anna utca lezárásra kerül. A munkálatok ideje alatt a Helyi autóbusz-állomásról induló 71, 72 ,73, 75, 81, 83, 84, 86, 87, 88, 89, 91-es vonalak járatai a következő terelőútvonalon közlekednek:Helyi autóbusz-állomás – Baross Gábor u. – Hársfa u. - Pécsi u. – …. végállomásAz útlezárás idejére a helyi autóbusz-állomásról induló járatok esetében a Fő u. 48. és a Hársfa u. megnevezésű megállóhelyeket a közlekedő járatok nem érintik, míg a Hársfa utcában (a Hársfa u. 8 a. épülettel szemben) ideiglenes megállóhely kerül kialakításra.A 42, 43, 47, 82-es viszonylaton a Helyi autóbusz-állomásról induló járatok útvonala a következőképpen változik:Helyi autóbusz-állomás – Baross Gábor u. – Hársfa u. – Virág u. – Németh I. fasor – Tallián Gyula u. 34. – …..végállomásAz útlezárás idejére a Helyi autóbusz-állomásról induló járatok esetében a Tallián Gy u. 4.. és a Kórház elnevezésű megállóhelyeket a közlekedő járatok nem érintik. A Hársfa utcában (a Hársfa u. 8/A épülettel szemben) valamint a Tallián Gy u. 34. előtt ideiglenes megállóhelyek kerülnek kialakításra,A kivitelezés ideje alatt a járatok menetideje pár perccel megnövekedhet!További információ a 82/412-153-as telefonszámon elérhető.Megértésüket köszönjük!', '2024-02-02'),
(7, 'MENETREND VÁLTOZÁS', 'Értesítjük a Tisztelt Utazóközönséget, hogy\r\njanuár 07 napjától (vasárnaptól) megváltozik a 42-es, 83-as és a 87-es vonalak menetrendje.\r\nSzabad- és munkaszüneti napokon:42-es vonal: Töröcske fordulótól 21:00: órakor induló járat 20:50 órakor közlekedik.Munkaszüneti napokon:83-as vonal: Helyi autóbusz-állomásról 21.20 órakor induló járat B jelzéssel a Videoton és a Metyx érintésével közlekedik+ 6,4 km, menetidő +10 percMunkanapokon:87-es vonal:Helyi autóbusz-állomásról 13:25 órakor induló járat 13:27 órakor közlekedik.', '2023-12-24'),
(8, 'ÜNNEPI MENETREND', 'Értesítjük tisztelt utasainkat, hogy 2023.12.22-től a következő menetrendi változások lépnek életbe:\r\n2023. december 24-én (vasárnap) munkaszüneti napi közlekedési rend szerint közlekednek járataink. Az utolsó autóbuszjáratok indulási ideje 14.40 óra, mely alól kivételt képez a Toponár fordulóból 15:00 időpontban induló 83-as és a Kaposfüred fordulóból 15:20 időpontban induló 70-es számú járataink.\r\n2023. december 25-én és 26-án munkaszüneti napi közlekedési rend szerint közlekednek járataink.\r\n2023. december 27-29-ig munkanapi közlekedési rend szerint közlekednek járataink.\r\n2023. december 31-én (vasárnap) munkaszüneti közlekedési rend szerint közlekedünk. Az utolsó autóbuszjáratok indulási ideje 17.40 óra.\r\n2024. január 01-én (hétfő) munkaszüneti napi közlekedési rend szerint közlekedünk. Az első autóbuszjárataink 5.30 időpontól kezdődően indulnak.\r\nAz iskolai előadások napjára meghirdetett járatok 2023. december 22-től 2024. január 07-ig nem közlekednek. Az első tanítási nap 2024. január 08.\r\nElővételi pénztár ünnepi nyitva tartása:                 \r\n- 2023. december 22-én                                                       7.00 – 15.00               \r\n- 2023. december 27 - 29-ig                                                 7.00 – 15.00', '2023-12-14'),
(9, 'ÉRTESÍTÉS', 'Értesítjük Tisztelt Utasainkat, hogy a mai napon 2023.12.06-án a hóhelyzet és megnövekedett forgalom miatt társaságunk menetrend szerint közlekedő járatainál 15-20 perc késésre lehet számítani. Megértésüket köszönjük!', '2023-12-06'),
(10, 'ÉRTESÍTÉS', 'Értesítjük Tisztelt Utasainkat, hogy a mai napon 2023.12.06-án a hóhelyzet és megnövekedett forgalom miatt társaságunk menetrend szerint közlekedő járatainál 15-20 perc késésre lehet számítani. Megértésüket köszönjük!', '2023-12-06');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `hirek`
--
ALTER TABLE `hirek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `hirek`
--
ALTER TABLE `hirek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
