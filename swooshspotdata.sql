-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 11, 2026 at 10:35 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swooshspotdata`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `quantity`, `size`) VALUES
(393, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `description`, `price`, `quantity`, `color`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'AIR FORCE I LOW X SUPREME WHITE', 'NIKE', 'Nike Air Force 1 Low x Supreme White to ikoniczne połączenie kultowych Nike Air Force 1 Low z charakterystycznym stylem marki Supreme. Ten model charakteryzuje się klasycznym białym designem, który jest podkreślony przez subtelne akcenty, jakie dostarcza współpraca z marką Supreme. Buty te oferują doskonałą kombinację stylu ulicznego i wyjątkowej jakości, co sprawia, że są one pożądane przez wielu miłośników sneakersów na całym świecie. Idealne dla tych, którzy poszukują klasycznego, ale jednocześnie unikatowego obuwia, które wyróżni ich na ulicy.', 1049.00, 0, 'red,white,white', 'Assets/Products/NIKE-AIR-FORCE-I-LOW-X-SUPREME-WHITE.png', '2024-04-19 15:18:27', '2024-04-20 00:33:44'),
(2, 'RETRO 4 RED THUNDER', 'AIR JORDAN', 'Air Jordan Retro 4 \"Red Thunder\" to dynamiczny model butów, który wyróżnia się intensywnym czerwonym kolorem i charakterystycznym wzornictwem. Inspirując się klasycznym stylem Air Jordan 4, ten model dodaje świeżego spojrzenia poprzez jaskrawy kolor czerwony, który nadaje butom energii i wyrazistości. Charakterystyczne dla tego modelu są także detale, takie jak charakterystyczna cholewka z siateczki, wytrzymała podeszwa środkowa z systemem amortyzacji Air oraz ikoniczne detale związane z marką Jordan Brand. Te buty nie tylko przyciągają wzrok swoim wyglądem, ale także oferują wygodę i wsparcie podczas noszenia. Idealne dla miłośników kultowych modeli Air Jordan, którzy szukają butów z wyjątkowym designem i charakterem.', 2950.00, 50, 'red,black,white', 'Assets/Products/AIR-JORDAN-RETRO-4-RED-THUNDER.png', '2024-04-19 17:55:44', '2024-04-20 00:31:21'),
(3, 'AIR FORCE 1 LOW X OFF WHITE ICA UNIVERSITY GOLD', 'NIKE', 'Air Force 1 Low x Off-White ICA University Gold to wyjątkowy model butów, który powstał w wyniku współpracy między marką Nike a Off-White, oraz zainspirowany Institute of Contemporary Art w Los Angeles. Buty te wyróżniają się jaskrawym odcieniem złotej uniwersyteckiej złotej barwy, nadając im wyjątkowo ekskluzywny wygląd. Charakterystyczne dla tego modelu są również detale, takie jak charakterystyczne znaki marki Off-White, w tym sznurówki z napisem \"SHOELACES\" i znaki przekreślonego logo Swoosh, które dodają butom charakteru i oryginalności. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty nie tylko przyciągają uwagę swoim estetycznym wyglądem, ale także oferują doskonałe właściwości użytkowe. Idealne dla miłośników kultowych modeli Air Force 1 oraz dla tych, którzy poszukują butów z wyjątkowym designem i charakterem.', 9500.00, 10, '#FDD23D,#B6BDB6,white', 'Assets/Products/AIR-FORCE-1-LOW-X-OFF-WHITE-ICA-UNIVERSITY-GOLD.png', '2024-04-19 19:51:56', '2024-04-20 00:32:47'),
(4, 'RETRO 1 LOW X TRAVIS SCOTT BLACK PHANTOM', 'AIR JORDAN', 'Air Jordan Retro 1 Low x Travis Scott Black Phantom to połączenie kultowego modelu Air Jordan 1 z unikalnym stylem i wizją rapera Travis\'a Scott\'a. Buty te cechują się eleganckim połączeniem kolorów czarnego i szarego, nadając im tajemniczy i wyrafinowany wygląd. Charakterystyczne dla tego modelu są również detale, takie jak odwrócony Swoosh i nieregularne szwy, które dodają butom charakteru i oryginalności. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty nie tylko przyciągają uwagę swoim estetycznym wyglądem, ale także oferują doskonałe właściwości użytkowe. Idealne dla miłośników Air Jordan, którzy szukają butów z unikalnym designem i wyjątkowym charakterem.', 4699.00, 20, 'black,#313131,white', 'Assets/Products/AIR-JORDAN-RETRO-1-LOW-X-TRAVIS-SCOTT BLACK PHANTOM.png', '2024-04-19 19:51:56', '2024-04-20 00:32:18'),
(5, 'RETRO 1 SATIN SNAKE', 'AIR JORDAN', 'Air Jordan Retro 1 Satin Snake to świeża interpretacja kultowego modelu Air Jordan 1, z wyjątkowym akcentem w postaci satynowego wykończenia i wzoru węża. Buty te wyróżniają się eleganckim połączeniem klasycznego designu Air Jordan 1 z luksusowymi detalami. Satynowe wykończenie na cholewce dodaje butom wyjątkowego blasku i ekskluzywnego wyglądu, podczas gdy wzór imitujący skórę węża nadaje im unikalności i charakteru. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty nie tylko przyciągają uwagę swoim estetycznym wyglądem, ale także oferują doskonałe właściwości użytkowe. Idealne dla miłośników klasycznego stylu Air Jordan, którzy szukają butów z wyraźnymi, luksusowymi detalami.', 1600.00, 40, 'black,red,white', 'Assets/Products/AIR-JORDAN-RETRO-1-SATIN-SNAKE.png', '2024-04-19 19:51:56', '2024-04-20 00:31:51'),
(6, 'RETRO 1 X OFF WHITE CHICAGO', 'AIR JORDAN', 'Air Jordan Retro 1 x Off-White \"Chicago\" to ikoniczny model butów powstały w wyniku współpracy między marką Air Jordan a Off-White. Buty te stanowią kreatywną reinterpretację klasycznego modelu Air Jordan 1 \"Chicago\". Charakteryzują się one charakterystycznym kolorystycznym schematem czerwieni, bieli i czerni, który jest charakterystyczny dla oryginalnego modelu Air Jordan 1 \"Chicago\". Projekt ten cechuje się także dodatkowymi detalami i motywami, takimi jak nieregularne szwy, perforacje i logo Off-White, które dodają butom unikalności i oryginalności. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty są nie tylko atrakcyjne wizualnie, ale także doskonale sprawdzają się podczas codziennego noszenia. Idealne dla miłośników kultowych modeli Air Jordan oraz dla tych, którzy szukają butów z wyjątkowym designem i historią.', 40000.00, 2, '#8B1D2E,black,white', 'Assets/Products/AIR-JORDAN-RETRO-1-X-OFF-WHITE-CHICAGO.png', '2024-04-19 19:51:56', '2024-04-20 00:33:36'),
(7, 'DUNK LOW SB X GRATEFUL DEAD ‘YELLOW’', 'NIKE', 'Nike Dunk Low SB x Grateful Dead \'Yellow\' to kultowy model butów, powstały w wyniku współpracy pomiędzy marką Nike a legendarnym zespołem Grateful Dead. Te buty wyróżniają się nie tylko unikalnym designem, ale także bogatą historią i kreatywnością. Ich charakterystyczne cechy to jasnożółta kolorystyka, która odnosi się do ikonicznego symbolu berła berneńskiego. Dodatkowo, buty te cechują się wysoką jakością wykonania oraz wygodą noszenia, co sprawia, że są one nie tylko wyjątkowe pod względem wizualnym, ale także funkcjonalnym. Idealne dla miłośników kultury sneakerowej, którzy szukają unikalnych i ekskluzywnych butów.', 5500.00, 30, '#E8E351,#45B4D1,#B08C01', 'Assets/Products/NIKE-DUNK-LOW-SB-X-GRATEFUL-DEAD-‘YELLOW’.png', '2024-04-19 19:51:56', '2024-04-20 00:32:09'),
(8, 'RETRO 1 X OFF WHITE UNC', 'AIR JORDAN', 'Air Jordan Retro 1 x Off-White \"UNC\" to wyjątkowy model butów, który powstał w wyniku kreatywnej współpracy między marką Air Jordan a Off-White. Buty te są inspirowane barwami University of North Carolina, co widać w ich charakterystycznym odcieniu niebieskiego (UNC Blue). Projekt ten cechuje się unikalnym stylem, który łączy klasyczny design Air Jordan 1 z nowoczesnymi i kreatywnymi elementami Off-White. Charakterystyczne dla tego modelu są detale, takie jak nieregularne szwy, perforacje i logo Off-White, które nadają butom wyrazistego i oryginalnego charakteru. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty są nie tylko atrakcyjne wizualnie, ale także doskonale sprawdzają się podczas codziennego noszenia. Idealne dla miłośników kultowych modeli Air Jordan oraz dla tych, którzy szukają butów z wyjątkowym designem i historią.', 14000.00, 3, '#0397D3,#E62440,white', 'Assets/Products/AIR-JORDAN-RETRO-1-X-OFF-WHITE-UNC.png', '2024-04-19 19:56:27', '2024-04-20 00:33:27'),
(9, 'RETRO 1 X TRAVIS SCOTT', 'AIR JORDAN', 'Air Jordan Retro 1 x Travis Scott to wyjątkowy model, który powstał w wyniku współpracy pomiędzy marką Air Jordan a raperem Travisem Scottem. Buty te wyróżniają się nie tylko klasycznym stylem Air Jordan 1, ale także charakterystycznymi detalami i motywami, które są charakterystyczne dla stylu Travis\'a Scott\'a. Projekt ten łączy ikoniczny design Air Jordan 1 z kreatywnymi elementami, takimi jak odwrócony Swoosh, skóra z textury papieru oraz dodatkowe detale, które dodają butom wyrazistości i oryginalności. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty są nie tylko atrakcyjne wizualnie, ale także doskonale sprawdzają się podczas codziennego noszenia. Idealne dla miłośników Air Jordan i fanów stylu Travis\'a Scott\'a, którzy szukają unikalnych i wyjątkowych butów.', 11000.00, 5, '#534936,black,white', 'Assets/Products/AIR-JORDAN-RETRO-1-X-TRAVIS SCOTT.png', '2024-04-19 19:56:27', '2024-04-20 00:33:12'),
(10, 'RETRO 4 FROZEN MOMENTS', 'AIR JORDAN', 'Air Jordan Retro 4 Frozen Moments to wyjątkowy model inspirowany chwilą zatrzymaną w czasie. Te buty stanowią hołd dla ikonicznego modelu Air Jordan 4, zachowując jego klasyczny design i dodając wyjątkowy akcent. Charakteryzują się one wyrazistym wzornictwem, z zastosowaniem kontrastowych kolorów i dynamicznych detali. Buty te oferują nie tylko znakomity styl, ale także komfort i wsparcie dla stopy, dzięki innowacyjnym technologiom zastosowanym w ich konstrukcji. Idealne dla miłośników Air Jordan, którzy cenią sobie zarówno ikoniczny design, jak i wyjątkowy charakter butów.', 2300.00, 33, '#BFBCB4,#E3DFCE,#E5E3DF', 'Assets/Products/AIR-JORDAN-RETRO-4-FROZEN-MOMENTS.png', '2024-04-19 19:56:27', '2024-04-20 00:32:00'),
(11, 'RETRO 1 HIGH LUCKY GREEN 2.0', 'AIR JORDAN', 'Air Jordan Retro 1 High Lucky Green 2.0 to urocza i odświeżająca wersja klasycznych Air Jordan 1. Buty te cechują się unikalnym połączeniem kolorystycznym, z dominującym odcieniem zielonego, który nadaje im świeży i nowoczesny wygląd. Inspirując się dziedzictwem Air Jordan, ten model zachowuje charakterystyczne elementy, takie jak skórzana cholewka i charakterystyczny Swoosh, ale jednocześnie wprowadza subtelne modyfikacje, które dodają mu nowoczesnego wyrazu. Te buty doskonale łączą w sobie retro styl z nowoczesnymi trendami, stając się doskonałym wyborem dla fanów kultowych modeli Jordanów oraz dla tych, którzy cenią sobie unikalność i wyjątkowy styl.', 1250.00, 60, '#008E3D,black,white', 'Assets/Products/AIR-JORDAN-RETRO-1-HIGH-LUCKY-GREEN-2.0.png', '2024-04-19 19:56:27', '2024-04-20 00:30:30'),
(12, 'RETRO 4 X OFF WHITE SAIL', 'AIR JORDAN', 'Air Jordan Retro 4 x Off-White Sail to połączenie kultowego modelu Air Jordan 4 z charakterystycznym stylem marki Off-White. Buty te wyróżniają się jasnym odcieniem żaglowego koloru (sail), który nadaje im wyjątkowo nowoczesny i luksusowy wygląd. Projekt ten podkreśla innowacyjny design i estetykę, którą znana jest marka Off-White, dodając do klasycznego modelu Air Jordan 4 unikalny i wyrazisty charakter. Charakterystyczne dla tego modelu są również detale, takie jak nieregularne szwy i dodatkowe materiały, które nadają butom oryginalności i stylu. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty są nie tylko atrakcyjne wizualnie, ale także doskonale sprawdzają się podczas codziennego noszenia. Idealne dla miłośników kultowych modeli Air Jordan i fanów unikalnego stylu Off-White.', 9000.00, 10, '#DDD9B8,#EBECE7,#CBCCB9', 'Assets/Products/AIR-JORDAN-RETRO-4-X-OFF-WHITE-SAIL.png', '2024-04-19 19:56:27', '2024-04-20 00:33:04'),
(13, 'RETRO 1 LOW X TRAVIS SCOTT ‘OLIVE’', 'AIR JORDAN', 'Air Jordan Retro 1 Low x Travis Scott \'Olive\' to unikalna interpretacja klasycznego modelu Air Jordan 1 stworzona we współpracy z raperem Travisem Scottem. Buty te wyróżniają się wyrazistym odcieniem oliwkowej zieleni, nadając im charakterystyczny i wyrazisty wygląd. Inspirując się stylami ulicznymi i kulturą hip-hopową, ten model zachowuje klasyczne elementy Air Jordan 1, takie jak charakterystyczny Swoosh i perforacje na przedniej części cholewki, ale jednocześnie dodaje nowoczesne i oryginalne akcenty, które sprawiają, że stają się one unikalnym elementem w kolekcji sneakerheadów. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty nie tylko przyciągają uwagę swoim estetycznym wyglądem, ale także oferują doskonałe właściwości użytkowe. Idealne dla miłośników Air Jordan, którzy poszukują butów z wyjątkowym stylem i charakterem.', 5849.00, 11, '#474531,#F4F5F2,black', 'Assets/Products/RETRO-1-LOW-X-TRAVIS-SCOTT-OLIVE.png', '2024-04-19 20:01:39', '2024-04-20 00:32:34'),
(14, 'RETRO 4 X TRAVIS SCOTT', 'AIR JORDAN', 'Air Jordan Retro 4 x Travis Scott to wyjątkowy model butów, który powstał w efekcie współpracy między marką Air Jordan a raperem Travisem Scottem. Buty te łączą kultowy design Air Jordan 4 z kreatywnym stylem Travis\'a Scott\'a, tworząc wyjątkowy i pożądany przez wielu kolekcjonerów model. Charakteryzują się one unikalnymi detalami, takimi jak odwrócony Swoosh i dodatkowe kieszenie, które nadają im charakteru i oryginalności. Projekt ten odzwierciedla także osobisty styl i inspiracje artystyczne Travisa Scott\'a, co sprawia, że buty te są nie tylko wyjątkowe pod względem wizualnym, ale także mają głębokie znaczenie dla fanów kultury sneakerhead. Wyposażone w technologiczne innowacje zapewniające wygodę i wsparcie dla stopy, te buty są idealnym wyborem dla miłośników Air Jordan oraz dla tych, którzy szukają butów z wyjątkowym designem i historią.', 9000.00, 5, '#7DB1DF,black,white', 'Assets/Products/AIR-JORDAN-RETRO-4-X-TRAVIS-SCOTT.png', '2024-04-19 20:01:39', '2024-04-20 00:33:20'),
(15, 'RETRO 4 CANYON PURPLE', 'AIR JORDAN', 'Air Jordan Retro 4 Canyon Purple to nowoczesna interpretacja klasycznego modelu Air Jordan 4, inspirowana barwami kanionów i naturalnymi krajobrazami. Buty te charakteryzują się eleganckim połączeniem kolorów, w którym główną rolę odgrywa intensywny odcień fioletu, nadając butom wyjątkowy wygląd. Wyposażone w technologiczne innowacje, takie jak amortyzacja Air-Sole w pięcie, oraz wykonane z wysokiej jakości materiałów, te buty nie tylko przyciągają wzrok, ale także zapewniają wygodę i trwałość. Idealne dla miłośników Air Jordan, którzy szukają unikalnego stylu i doskonałej jakości wykonania.', 2499.00, 55, '#6E5F76,#828559,black', 'Assets/Products/AIR-JORDAN-RETRO-4-CANYON-PURPLE.png', '2024-04-19 20:01:39', '2024-04-20 00:31:12'),
(16, 'RETRO 1 LOW BRED TOE', 'AIR JORDAN', 'Air Jordan Retro 1 Low Bred Toe to stylowa interpretacja kultowego modelu Air Jordan 1, w wersji niskiej cholewki. Buty te charakteryzują się klasycznym kolorystycznym schematem \"Bred Toe\", który łączy kolor czerwony (bred) z białym i czarnym. Ta wyjątkowa kombinacja kolorów nadaje butom wyrazisty i dynamiczny wygląd, który przyciąga uwagę. Zbudowane z wysokiej jakości materiałów, w tym z miękkiej skóry, te buty oferują nie tylko styl, ale także wygodę i trwałość. Idealne dla miłośników kultowych modeli Air Jordan, którzy cenią sobie nie tylko ikoniczny design, ale także komfort noszenia i jakość wykonania.', 1350.00, 60, 'black,red,white', 'Assets/Products/AIR-JORDAN-RETRO-1-LOW-BRED-TOE.png', '2024-04-19 20:01:39', '2024-04-20 00:30:39'),
(17, 'RETRO 4 THUNDER', 'AIR JORDAN', 'Buty Air Jordan Retro 4 \"Thunder\" to klasyczny model, który wyróżnia się charakterystycznym wzornictwem i wyrazistym stylem. Buty te są inspirowane oryginalnym modelem Air Jordan 4 \"Thunder\" z lat 2006 roku. Charakteryzują się one czarną cholewką z wyraźnymi kontrastującymi żółtymi akcentami, które dodają im energii i wyrazistości. Projekt ten cechuje się także detale, takie jak skórzana cholewka, system amortyzacji Air w podeszwie środkowej oraz ikoniczne elementy związane z marką Jordan Brand. Te buty nie tylko przyciągają wzrok swoim wyglądem, ale także oferują wygodę i wsparcie podczas noszenia. Idealne dla miłośników kultowych modeli Air Jordan, którzy szukają butów z wyjątkowym designem i charakterem.', 2050.00, 47, '#F7C42B, black, white', 'Assets/Products/AIR-JORDAN-RETRO-4-THUNDER.png', '2024-04-19 23:28:26', '2024-04-20 00:31:44'),
(18, 'DUNK LOW SB POWERPUFF GIRLS', 'NIKE', 'Buty Nike Dunk Low SB Powerpuff Girls to kultowe sneakerki inspirowane popularnymi bohaterkami animowanego serialu \"Powerpuff Girls\". Ich design nawiązuje do charakterystycznych kolorów i elementów graficznych z tego klasycznego serialu. Te unikatowe buty są nie tylko wygodne, ale także pełne nostalgii dla fanów kreskówek z lat 90. Wyróżniają się wyjątkowym stylem i wyrazistym kolorem, przyciągając uwagę i dodając niepowtarzalny akcent do każdej stylizacji.', 1799.00, 14, '#3378AC,#DAB905,black', 'Assets/Products/NIKE-DUNK-LOW-SB-POWERPUFF-GIRLS.png', '2024-04-20 00:28:26', '2024-04-20 00:32:25'),
(19, 'RETRO 4 BLACK CAT', 'AIR JORDAN', 'Air Jordan Retro 4 \"Black Cat\" to klasyczne buty sportowe z ikonicznej linii Air Jordan. Charakteryzują się eleganckim, minimalistycznym designem, którym dominuje głęboka, czarna kolorystyka. Nazwa \"Black Cat\" nawiązuje do stylizacji butów, która przypomina elegancję i zwinność czarnego kota. Te buty zapewniają doskonałą wygodę i wsparcie podczas noszenia, a ich stylowy wygląd sprawia, że są idealnym wyborem dla miłośników kultowych modeli Jordan Brand.', 8000.00, 23, 'black,#101010,#232323', 'Assets/Products/AIR-JORDAN-RETRO-4-BLACK-CAT.png', '2024-04-20 00:43:50', '2024-04-20 00:43:50'),
(20, 'RETRO 1 LOW GOLF X TRAVIS SCOTT ‘NEUTRAL OLIVE’', 'AIR JORDAN', 'Air Jordan Retro 1 Low Golf x Travis Scott \"Neutral Olive\" to połączenie klasycznego modelu Air Jordan Retro 1 Low z unikalnym stylem rapera i projektanta mody, Travisa Scotta, oraz funkcjonalnością butów golfowych. Buty charakteryzują się neutralną oliwkową kolorystyką, która nadaje im stylowy, nieformalny wygląd. Wyposażone w technologię dostosowaną do gry w golfa, te buty zapewniają stabilność, trakcję i wygodę na polu golfowym. Jednocześnie, dzięki ikonicznemu designowi Retro 1, są również doskonałym dodatkiem do codziennych stylizacji, idealnym dla miłośników streetwearu i fanów Travisa Scotta.', 8999.00, 6, '#948662,#dedad5,black', 'Assets/Products/AIR-JORDAN-RETRO-1-LOW-GOLF-X-TRAVIS-SCOTT-‘NEUTRAL-OLIVE’.png', '2024-04-20 00:50:43', '2024-04-20 00:50:43'),
(21, 'RETRO I X BILLIE EILISH', 'AIR JORDAN', 'Air Jordan Retro I X Billie Eilish to połączenie legendarnego stylu Air Jordan Retro I z osobistym charakterem i kreatywnością Billie Eilish. Te wyjątkowe buty odzwierciedlają nie tylko ikoniczny design Jordana, ale również artystyczne wizje Billie, tworząc unikalne połączenie sportowego dziedzictwa i współczesnej ekspresji artystycznej. Z wyrazistymi detalami i autentycznym wykończeniem, te buty stanowią hołd dla obu ikon: Air Jordan i Billie Eilish.', 1450.00, 12, '#CAEE77,#CEEA93,#AACD5D', 'Assets/Products/AIR-JORDAN-RETRO-I-X-BILLIE-EILISH.png', '2024-04-20 11:53:14', '2024-04-20 11:53:14'),
(22, 'DUNK LOW SB POWERPUFF GIRLS', 'NIKE', 'Nike Dunk Low SB Powerpuff Girls w wersji zielonej to niezwykłe połączenie kultowego modelu Nike Dunk Low SB z inspiracją znaną z kreskówki Powerpuff Girls. Buty te emanują energią i kreatywnością, dzięki zielonej kolorystyce, która nawiązuje do jednej z bohaterek, Zoski. Zdobione charakterystycznymi detalmi z motywem Powerpuff Girls, te buty są nie tylko wyrazem stylu, ale również hołdem dla kultowych postaci animowanych.', 1799.00, 18, '#7BB065,black,white', 'Assets/Products/NIKE-DUNK-LOW-SB-POWERPUFF-GIRLS-2.png', '2024-04-20 11:58:34', '2024-04-20 11:58:34'),
(23, 'DUNK LOW X OFF WHITE ‘LOT50’', 'NIKE', 'Nike Dunk Low X Off White „LOT50” to ikoniczna współpraca między dwoma gigantami streetwearu: marką Nike a Off-White Virgil\'a Abloha. Ten model butów jest częścią kolekcji \"The 50\", która celebrowała pięćdziesiąt lat istnienia kultowych butów Dunk. Buty te wyróżniają się charakterystycznym designem, który obejmuje kombinację klasycznych elementów Dunks z nowoczesnymi detalami Off-White. Ich konstrukcja jest wykonana z wysokiej jakości materiałów, a na pierwszy rzut oka rzuca się zastosowanie unikalnych kolorów i tekstur. Dodatkowo, na butach widoczne są charakterystyczne dla marki Off-White elementy, takie jak paski z napisami, co nadaje im niepowtarzalny, awangardowy styl. To buty idealne dla miłośników streetwearu, którzy pragną wyrazić swój indywidualny styl poprzez modę.', 8399.00, 9, 'black,#673BAC,#A9A4A3', 'Assets/Products/NIKE-DUNK-LOW-X-OFF-WHITE-‘LOT50’.png', '2024-04-21 19:23:17', '2024-04-21 19:23:17'),
(24, 'DUNK LOW SB X EBAY', 'NIKE', 'Nike Dunk Low SB X eBay to wyjątkowy model butów, który powstał w wyniku współpracy między Nike a platformą eBay. Te buty, będące częścią serii Dunk Low SB, łączą klasyczny design z elementami charakterystycznymi dla e-commerce. Charakteryzują się wysoką jakością wykonania oraz ekstrawaganckim stylem, często prezentując jaskrawe kolory i grafiki nawiązujące do kultury skateboardowej. Idealne dla miłośników streetwearu, poszukujących butów z unikalnym charakterem i historią za sobą.', 1299.00, 3, '#E8AD2F,#730410,#0F3791,#519744,#EBEBEF', 'Assets/Products/NIKE-DUNK-LOW-SB-X-EBAY.png', '2024-04-21 19:35:58', '2024-04-21 19:35:58'),
(25, 'DUNK HIGH ‘TWO TONE GREY’', 'NIKE', 'Nike Dunk High „Two Tone Grey” to klasyczny model butów sportowych, który wyróżnia się minimalistycznym, ale jednocześnie stylowym designem. Buty te posiadają cholewkę wykonaną z wysokiej jakości materiałów, zapewniając trwałość i wygodę noszenia. Charakteryzują się dwukolorowym wykończeniem w odcieniach szarości, co nadaje im subtelny, ale zarazem wyrazisty wygląd. Ich uniwersalny styl sprawia, że są idealnym uzupełnieniem wielu różnych outfitów, zarówno casualowych, jak i bardziej eleganckich. Nike Dunk High „Two Tone Grey” to must-have dla każdego miłośnika klasycznej, uniwersalnej mody.', 1199.00, 35, '#BEBCBC,#F7F7F7,#CEC9C3', 'Assets/Products/NIKE-DUNK-HIGH-‘TWO-TONE-GREY’.png', '2024-04-21 19:41:29', '2024-04-21 19:41:29'),
(26, 'RETRO 1 MID VALENTINE’S DAY', 'AIR JORDAN', 'Air Jordan Retro 1 Mid \"Valentine\'s Day\" to limitowane wydanie kultowego modelu butów, które zostało stworzone z myślą o okazji Walentynek. Te wyjątkowe buty są inspirowane miłością i romantyzmem, co widać w ich szczegółach. Charakteryzują się delikatnymi detalami w różowej kolorystyce, które symbolizują namiętność i uczucie. Cholewka butów wykonana jest z wysokiej jakości materiałów, zapewniając trwałość i komfort noszenia. Dodatkowo, na butach mogą znajdować się subtelne akcenty nawiązujące do tematyki Walentynek, co czyni je idealnym prezentem dla ukochanej osoby. Air Jordan Retro 1 Mid \"Valentine\'s Day\" to nie tylko buty, to również wyraz uczucia i miłości przez pryzmat kultury sneakerheadów.', 1300.00, 7, '#C0041B,#916880,#C4ABB8', 'Assets/Products/AIR-JORDAN-RETRO-1-MID-VALENTINE’S-DAY.png', '2024-04-21 20:19:30', '2024-04-21 20:19:30'),
(27, 'RETRO I MID ‘SIGNAL BLUE’', 'AIR JORDAN', 'Air Jordan Retro I Mid \"Signal Blue\" to świeży odłam kultowego modelu, który wybija się spośród tłumu dzięki intensywnemu odcieniowi niebieskiego. Buty te emanują energią i stylowym wyrazem, łącząc klasyczny design z nowoczesnymi detalami. Ich cholewka wykonana jest z wysokiej jakości materiałów, zapewniając trwałość i komfort noszenia. Dodatkowo, charakterystyczny design Air Jordan Retro I zapewnia wsparcie i stabilność podczas użytkowania. To idealny wybór dla tych, którzy chcą wyróżnić się na ulicy, dodając kroplę intensywności do swojego codziennego stylu.', 1450.00, 12, '#5877D4,black,white', 'Assets/Products/AIR-JORDAN-RETRO-I-MID-‘SIGNAL-BLUE’.png', '2024-04-21 20:23:57', '2024-04-21 20:23:57'),
(28, 'RETRO I MID ‘CORAL CHALK’', 'AIR JORDAN', 'Air Jordan Retro I Mid „Coral Chalk” to nowoczesne interpretacja klasycznego modelu, która zachwyca subtelnym, ale wyrazistym wykończeniem. Buty te prezentują się w delikatnej kolorystyce, gdzie koralowy odcień główny zostaje przełamany białymi detalami. Ich cholewka wykonana jest z wysokiej jakości materiałów, co gwarantuje nie tylko estetykę, ale także wygodę noszenia. Charakterystyczny design Air Jordan Retro I zapewnia wsparcie i stabilność, co czyni te buty idealnym wyborem na co dzień. Air Jordan Retro I Mid „Coral Chalk” to doskonała propozycja dla tych, którzy pragną subtelnie wyrazić swój styl, nie rezygnując z ikonicznego wzornictwa Jordana.', 1250.00, 21, '#F08885,#F8366B,black', 'Assets/Products/AIR-JORDAN-RETRO-I-MID-‘CORAL-CHALK’.png', '2024-04-21 20:28:23', '2024-04-21 20:28:23'),
(29, 'RETRO 1 PATENT BRED', 'AIR JORDAN', 'Air Jordan Retro 1 Patent \"Bred\" to zjawiskowy model butów, który wzbudza zachwyt dzięki połączeniu kultowego designu z nowoczesnym wykończeniem. Buty te charakteryzują się cholewką z połyskującego lakierowanego materiału w klasycznej kombinacji czerni i czerwieni, co nadaje im wyrazisty i elegancki wygląd. Ich konstrukcja oparta jest na wysokiej jakości materiałach, zapewniając trwałość i komfort noszenia. Dzięki charakterystycznemu designowi Air Jordan Retro 1, buty te nie tylko wyróżniają się na ulicy, ale także zapewniają wsparcie i stabilność podczas użytkowania. Air Jordan Retro 1 Patent \"Bred\" to doskonały wybór dla miłośników klasycznego stylu, którzy pragną dodatkowej dawki luksusu i elegancji w swojej kolekcji butów.', 1700.00, 11, '#A8021E,black,white', 'Assets/Products/AIR-JORDAN-RETRO-1-PATENT-BRED.png', '2024-04-21 20:31:34', '2024-04-21 20:31:34'),
(30, 'RETRO 1 TIE DYE', 'AIR JORDAN', 'Air Jordan Retro 1 Tie Dye to odważny model butów, który przyciąga uwagę swoim unikalnym wzornictwem. Inspiracją do ich stworzenia był efekt barwienia tkanin tie-dye, co sprawia, że każdy egzemplarz jest niepowtarzalny. Cholewka butów jest wykonana z wysokiej jakości materiałów i ozdobiona efektownymi plamami i wzorami w kolorach tie-dye, tworząc dynamiczny i ekspresyjny efekt wizualny. Charakterystyczny design Air Jordan Retro 1 gwarantuje nie tylko styl, ale także wygodę i wsparcie dla stóp. Buty te są idealnym wyborem dla osób, które pragną wyrazić swoją kreatywność i indywidualność poprzez modę, a jednocześnie cenią sobie ikoniczny status marki Jordan.', 1800.00, 23, '#4D9C9D,white,black', 'Assets/Products/AIR-JORDAN-RETRO-1-TIE-DYE.png', '2024-04-21 20:39:27', '2024-04-21 20:39:27'),
(31, 'RETRO 1 UNC TO CHI', 'AIR JORDAN', 'Air Jordan Retro 1 \"UNC to Chi\" to wyjątkowy model butów, który opowiada historię związku Michaela Jordana z dwoma kluczowymi miejscami w jego karierze: University of North Carolina (UNC) i Chicago Bulls. Buty te łączą w sobie klasyczny design Jordan Retro 1 z kolorystyką nawiązującą do obu tych miejsc. Cholewka butów wykonana jest z wysokiej jakości materiałów, zapewniając trwałość i komfort noszenia. Charakterystyczne dla modelu Retro 1 detale, takie jak perforacje na przodzie buta oraz charakterystyczna skórzana nakładka na cholewce, nadają im niepowtarzalny wygląd. Air Jordan Retro 1 \"UNC to Chi\" to nie tylko buty, to również hołd dla dziedzictwa Michaela Jordana i jego niezwykłej drogi w koszykówce. Idealny wybór dla fanów Jordana i miłośników kultury streetwear.', 1500.00, 6, '#0096CF,#D33D49,black', 'Assets/Products/AIR-JORDAN-RETRO-1-UNC-TO-CHI.png', '2024-04-21 20:42:54', '2024-04-21 20:42:54'),
(32, 'DUNK LOW SB X BEN & JERRY’S ‘CHUNKY DUNKY’', 'NIKE', 'Nike Dunk Low SB x Ben & Jerry’s \"Chunky Dunky\" to kultowy model buta, który łączy świat mody ulicznej z charakterystycznym stylem jednej z najbardziej znanych marek lodów na świecie. But ten to prawdziwa uczta dla fanów sneakerów i smakoszy lodów, inspirując się kultowym smakiem \"Chunky Monkey\". Jego unikalny design wyróżnia się jaskrawymi kolorami, odważnymi wzorami a także charakterystycznymi detalami, takimi jak krowie plamy, odzwierciedlającymi markę Ben & Jerry’s. Jest to nie tylko but, ale również wyraz osobowości i kreatywności, który przyciąga uwagę i dodaje stylu każdemu zestawowi streetwearowemu.', 9949.00, 10, '#F5BB00,#5ACCD7,#027C3F,white', 'Assets/Products/NIKE-DUNK-LOW-SB-X-BEN-& JERRY’S-‘CHUNKY-DUNKY’.png', '2024-05-05 11:36:25', '2024-05-05 11:36:25'),
(33, '4 METALIC GOLD', 'AIR JORDAN', 'Air Jordan 4 Metallic Gold to wyjątkowy but z ikonicznej linii Air Jordan, wyróżniający się metalicznymi złotymi akcentami. Inspirujący się sportowym dziedzictwem i luksusowym stylem, ten model łączy wygodę z wyrafinowanym designem, podkreślając jednocześnie ducha kultowej marki.', 1549.00, 12, '#98731E,white,#E7D7C8', 'Assets/Products/AIR-JORDAN-4-METALIC-GOLD.png', '2024-05-08 22:04:49', '2024-05-09 20:31:21'),
(34, 'RETRO 4 MILITARY BLACK', 'AIR JORDAN', 'Buty AIR JORDAN Retro 4 Military Black to klasyczne, stylowe obuwie sportowe inspirowane designem lotniczym. Charakteryzują się solidną konstrukcją, wygodą użytkowania i ikonicznymi detalami, takimi jak siatkowa cholewka, amortyzacja Air-Sole oraz wytrzymała podeszwa z gumy. Ich czarno-militarna kolorystyka dodaje im wyjątkowego, agresywnego wyglądu, idealnego zarówno na boisko, jak i na co dzień.', 2499.00, 8, '#B2B3AE,white,black', 'Assets/Products/AIR-JORDAN-RETRO-4-MILITARY-BLACK.png', '2024-05-09 19:58:52', '2024-05-09 19:58:52'),
(35, '4 INDUSTRIAL BLUE', 'AIR JORDAN', 'Buty AIR JORDAN 4 Industrial Blue to ikoniczne sneakersy inspirowane stylem lotniczym. Ich charakterystyczna konstrukcja łączy trwałość i komfort, zapewniając użytkownikowi wsparcie i amortyzację na najwyższym poziomie. Niezwykle wytrzymała podeszwa z gumy gwarantuje przyczepność na różnorodnych powierzchniach, natomiast efektowne detale w kolorze Industrial Blue nadają butom niepowtarzalnego wyrazu. Doskonałe zarówno do codziennego noszenia, jak i do aktywności sportowych.', 1399.00, 13, '#3577B3,white,#C0C2BF', 'Assets/Products/AIR-JORDAN-4-INDUSTRIAL-BLUE.png', '2024-05-09 20:33:46', '2024-05-09 20:33:46'),
(36, 'RETRO 4 CRAFT OLIVE', 'AIR JORDAN', 'Buty AIR JORDAN Retro 4 Craft Olive to połączenie klasycznego stylu i wysokiej jakości wykonania. Inspirujące się oryginalnym modelem, buty te wyróżniają się elegancką cholewką w odcieniu oliwkowym, która dodaje im wyjątkowego charakteru. Dzięki amortyzacji Air-Sole i solidnej konstrukcji zapewniają doskonałą wygodę i wsparcie na co dzień. Ich unikalny design sprawia, że są idealnym dopełnieniem zarówno casualowych, jak i sportowych stylizacji.\r\n', 1499.00, 10, '#596043,white,#6D6A39,black', 'Assets/Products/AIR-JORDAN-RETRO-4-CRAFT-OLIVE.png', '2024-05-09 20:38:53', '2024-05-09 20:38:53'),
(37, 'DUNK HIGH CHAMPIONSHIP RED', 'NIKE', 'Buty Nike Dunk High Championship Red to połączenie klasycznego stylu i intensywnego koloru. Ich charakterystyczny design z wysoką cholewką i solidną podeszwą zapewnia wsparcie i komfort podczas noszenia. Dominujący czerwony kolor nadaje im wyrazisty, energetyczny wygląd, który wyróżnia się na ulicy. Doskonałe zarówno do codziennych stylizacji, jak i jako element sportowego looku.', 850.00, 16, '#D00C24,white', 'Assets/Products/NIKE-DUNK-HIGH-CHAMPIONSHIP-RED.png', '2024-05-09 20:52:28', '2024-05-09 20:52:28'),
(38, 'RETRO 1 MID SE ZEN MASTER', 'AIR JORDAN', 'Buty AIR JORDAN Retro 1 Mid SE \"Zen Master\" to wyjątkowa edycja legendarnego modelu, łącząca klasyczny design z nowoczesnymi akcentami. Inspirowane filozofią Zen, te sneakersy wyróżniają się subtelną, pastelową kolorystyką, która tworzy spokojny i harmonijny wygląd. Wykonane z wysokiej jakości materiałów, buty zapewniają komfort i trwałość, a charakterystyczne logo Jumpman i skrzydeł Air Jordan dodają im autentycznego stylu. Idealne dla miłośników koszykówki i streetwearu, te buty łączą dziedzictwo z nowoczesnym wyrazem mody.', 1099.00, 23, '#AE95BC,#DDAFD3,white,black', 'Assets/Products/AIR-JORDAN-RETRO-1-MID-SE-ZEN-MASTER.png', '2024-05-16 20:06:15', '2024-05-16 20:06:53'),
(39, 'RETRO 1 MID SHADOW RED', 'AIR JORDAN', 'Buty AIR JORDAN Retro 1 Mid \"Shadow Red\" to stylowa odsłona klasycznego modelu Air Jordan 1. Charakteryzują się elegancką kombinacją kolorów – ciemnoszarych, czarnych i czerwonych elementów – które nadają im wyrazisty i dynamiczny wygląd. Wykonane z wysokiej jakości skóry i materiałów syntetycznych, zapewniają wygodę i trwałość. Detale, takie jak ikoniczne logo Wings i logo Jumpman, podkreślają ich autentyczność i sportowe dziedzictwo. Te buty to doskonały wybór dla miłośników koszykówki i streetwearu, którzy cenią sobie klasyczny design z nowoczesnym akcentem.', 1399.00, 12, 'black,#A2414A,#909090', 'Assets/Products/AIR-JORDAN-RETRO-1-MID-SHADOW-RED.png', '2024-05-16 20:11:06', '2024-05-16 20:11:06'),
(40, 'RETRO 1 SPIDERMAN ACROSS THE SPIDERVERSE', 'AIR JORDAN', 'Buty AIR JORDAN Retro 1 \"Spiderman Across the Spider-Verse\" to wyjątkowa edycja inspirowana popularnym filmem animowanym. Te sneakersy wyróżniają się dynamiczną i kolorową stylistyką, nawiązującą do wielowymiarowego świata Spider-Mana. Wykonane z wysokiej jakości materiałów, oferują wygodę i trwałość. Charakterystyczne detale, takie jak kontrastowe panele, wzory pajęczyny i logo Jumpman, dodają im unikalnego charakteru. Idealne dla fanów komiksów i filmów o Spider-Manie, te buty łączą kultowy design Air Jordan 1 z inspiracjami popkulturowymi, tworząc wyrazisty element każdej kolekcji sneakerów.', 1599.00, 9, '#622D2B,#EA3C3E,#E4909A,white,#E4909A,black', 'Assets/Products/AIR-JORDAN-RETRO-1-SPIDERMAN-ACROSS-THE-SPIDERVERSE.png', '2024-05-16 20:15:49', '2024-05-16 20:17:46'),
(41, 'RETRO 1 LOW X TRAVIS SCOTT \'REVERSE MOCHA\'', 'AIR JORDAN', 'Buty AIR JORDAN Retro 1 Low x Travis Scott \'Reverse Mocha\' to wyjątkowa kolaboracja między marką Jordan a artystą Travisem Scottem. Charakteryzują się odwróconą kolorystyką klasycznego modelu \"Mocha\" – dominują tu odcienie brązu, beżu i bieli. Wykonane z najwyższej jakości zamszu i skóry, te sneakersy oferują nie tylko stylowy wygląd, ale także wygodę i trwałość. Detale takie jak odwrócone logo Swoosh, personalizowane metki i logo Cactus Jack dodają im unikalnego charakteru. To idealny wybór dla fanów streetwearu i kolekcjonerów sneakerów, ceniących sobie limitowane edycje i oryginalny design.', 7949.00, 6, '#4B3E35,#CCC1A1,#F5EEDF,#3E362B,#E65F63', 'Assets/Products/AIR-JORDAN-RETRO-1-LOW-X-TRAVIS-SCOTT-\'REVERSE MOCHA\'.png', '2024-05-16 20:24:19', '2024-05-16 20:24:19'),
(42, 'RETRO 1 HIGH METALIC PURPLE', 'AIR JORDAN', 'Buty AIR JORDAN Retro 1 High \"Metallic Purple\" to stylowa odsłona klasycznego modelu Air Jordan 1, wyróżniająca się elegancką i błyszczącą kolorystyką. Dominująca biel skóry premium jest podkreślona metalicznymi, fioletowymi akcentami na logo Swoosh, kołnierzu i podeszwie, co nadaje butom wyjątkowy i luksusowy wygląd. Zapewniają one nie tylko estetykę, ale także komfort i trwałość dzięki starannemu wykonaniu. Idealne dla fanów koszykówki i streetwearu, te sneakersy łączą dziedzictwo marki Jordan z nowoczesnym stylem, stanowiąc wyrazisty element każdej kolekcji obuwia.', 1349.00, 13, '#411457,white', 'Assets/Products/AIR-JORDAN-RETRO-1-HIGH-METALIC-PURPLE.png', '2024-05-16 20:29:25', '2024-05-16 20:29:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `size_system` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `size_system`) VALUES
(1, 1, 1, 'EUR'),
(2, 1, 2, 'EUR'),
(3, 1, 3, 'EUR'),
(4, 2, 4, 'US'),
(5, 2, 5, 'US'),
(6, 2, 6, 'US');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `size_value` varchar(10) DEFAULT NULL,
  `size_system` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_value`, `size_system`) VALUES
(1, '37', 'EUR'),
(2, '38', 'EUR'),
(3, '39', 'EUR'),
(4, '6', 'US'),
(5, '7', 'US'),
(6, '8', 'US');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name_surname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cart_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name_surname`, `email`, `username`, `password`, `created_at`, `updated_at`, `cart_id`, `image_url`, `role`) VALUES
(374, 'Jan Kowalski', 'jan.kowalski@example.com', 'jkowalski', '$2y$10$examplehash1', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 1, 'https://i.pravatar.cc/150?img=1', 'user'),
(375, 'Anna Nowak', 'anna.nowak@example.com', 'anowak', '$2y$10$examplehash2', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 2, 'https://i.pravatar.cc/150?img=2', 'user'),
(376, 'Piotr Wiśniewski', 'piotr.wisniewski@example.com', 'pwisniewski', '$2y$10$examplehash3', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 3, 'https://i.pravatar.cc/150?img=3', 'user'),
(377, 'Katarzyna Wójcik', 'k.wocik@example.com', 'kwojcik', '$2y$10$examplehash4', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 4, 'https://i.pravatar.cc/150?img=4', 'user'),
(378, 'Tomasz Kamiński', 't.kaminski@example.com', 'tkaminski', '$2y$10$examplehash5', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 5, 'https://i.pravatar.cc/150?img=5', 'user'),
(379, 'Magdalena Lewandowska', 'm.lewandowska@example.com', 'mlewandowska', '$2y$10$examplehash6', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 6, 'https://i.pravatar.cc/150?img=6', 'user'),
(380, 'Paweł Zieliński', 'pawel.zielinski@example.com', 'pzielinski', '$2y$10$examplehash7', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 7, 'https://i.pravatar.cc/150?img=7', 'user'),
(381, 'Agnieszka Szymańska', 'agnieszka.szymanska@example.com', 'aszymanska', '$2y$10$examplehash8', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 8, 'https://i.pravatar.cc/150?img=8', 'user'),
(382, 'Michał Woźniak', 'michal.wozniak@example.com', 'mwozniak', '$2y$10$examplehash9', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 9, 'https://i.pravatar.cc/150?img=9', 'user'),
(383, 'Joanna Dąbrowska', 'joanna.dabrowska@example.com', 'jdabrowska', '$2y$10$examplehash10', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 10, 'https://i.pravatar.cc/150?img=10', 'user'),
(384, 'Adam Kozłowski', 'adam.kozlowski@example.com', 'akozlowski', '$2y$10$examplehash11', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 11, 'https://i.pravatar.cc/150?img=11', 'user'),
(385, 'Monika Jankowska', 'monika.jankowska@example.com', 'mjankowska', '$2y$10$examplehash12', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 12, 'https://i.pravatar.cc/150?img=12', 'user'),
(386, 'Krzysztof Mazur', 'krzysztof.mazur@example.com', 'kmazur', '$2y$10$examplehash13', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 13, 'https://i.pravatar.cc/150?img=13', 'user'),
(387, 'Natalia Krawczyk', 'natalia.krawczyk@example.com', 'nkrawczyk', '$2y$10$examplehash14', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 14, 'https://i.pravatar.cc/150?img=14', 'user'),
(388, 'Łukasz Piotrowski', 'lukasz.piotrowski@example.com', 'lpiotrowski', '$2y$10$examplehash15', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 15, 'https://i.pravatar.cc/150?img=15', 'user'),
(389, 'Karolina Grabowska', 'karolina.grabowska@example.com', 'kgrabowska', '$2y$10$examplehash16', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 16, 'https://i.pravatar.cc/150?img=16', 'user'),
(390, 'Mateusz Zając', 'mateusz.zajac@example.com', 'mzajac', '$2y$10$examplehash17', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 17, 'https://i.pravatar.cc/150?img=17', 'user'),
(391, 'Aleksandra Pawlak', 'aleksandra.pawlak@example.com', 'apawlak', '$2y$10$examplehash18', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 18, 'https://i.pravatar.cc/150?img=18', 'user'),
(392, 'Damian Michalski', 'damian.michalski@example.com', 'dmichalski', '$2y$10$examplehash19', '2026-06-11 20:10:42', '2026-06-11 20:10:42', 19, 'https://i.pravatar.cc/150?img=19', 'user'),
(393, 'Administrator Systemu', 'admin@example.com', 'admin', '$2y$10$examplehash20', '2026-06-11 20:10:42', '2026-06-11 20:10:42', NULL, 'https://i.pravatar.cc/150?img=20', 'admin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Indeksy dla tabeli `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_sizes_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
