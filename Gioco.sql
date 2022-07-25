-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Giu 29, 2022 alle 17:15
-- Versione del server: 8.0.29-0ubuntu0.20.04.3
-- Versione PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Gioco`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Aspetti`
--

CREATE TABLE `Aspetti` (
  `IdAspetto` int NOT NULL,
  `NomeAspetto` varchar(255) NOT NULL,
  `RaritaAspetto` int NOT NULL,
  `IdCampione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Aspetti`
--

INSERT INTO `Aspetti` (`IdAspetto`, `NomeAspetto`, `RaritaAspetto`, `IdCampione`) VALUES
(1, 'Aatrox Eclissi Lunare', 2, 1),
(2, 'Aatrox Progetto', 5, 1),
(3, 'Aatrox Re della Guerra', 2, 1),
(4, 'Ahri Impavida', 3, 2),
(5, 'Ahri Progetto', 3, 2),
(6, 'Alistar Nerogelo', 4, 3),
(7, 'Alistar Progetto', 3, 3),
(8, 'Annie Megagalattica', 2, 4),
(9, 'Bard Astronauta', 5, 5),
(10, 'Brand Rubacuori', 2, 6),
(11, 'Braum Ammazzadraghi', 3, 7),
(12, 'Caitlyn Arcane', 3, 8),
(13, 'Camille Arcano Maggiore', 5, 9),
(14, 'Cassiopeia della Congrega', 2, 10),
(15, 'Corki Astronauta', 4, 11),
(16, 'Darius Mezzogiorno di Fuoco', 4, 12),
(17, 'Diana Regina Guerriera', 3, 13),
(18, 'Mundo Furia Cieca', 3, 14),
(19, 'Draven Rubacuori', 2, 15),
(20, 'Ekko Pulsefire', 3, 16),
(21, 'Elise Megagalattica', 1, 17),
(22, 'Evelynn della Congrega', 4, 18),
(23, 'Fiddlestick Asceso', 5, 19),
(24, 'Gangplank il Traditore', 4, 20),
(25, 'Garen Commando', 4, 21),
(26, 'Graves Sentinella', 3, 22),
(27, 'Janna Rosa di Cristallo', 5, 23),
(28, 'Progetto Jhin', 5, 24),
(29, 'Progetto Jinx', 3, 25),
(30, 'Kalista Luna di Sangue', 3, 26),
(31, 'Katarina Regina Guerriera', 2, 27),
(32, 'Kayn Portatore della Notte', 5, 28),
(33, 'Khazix Stella Oscura', 3, 29),
(34, 'Leona Mezzogiorno di Fuoco', 3, 30),
(35, 'Lissandra di Porcellana', 2, 31),
(36, 'Malphite Dio Antico', 5, 32),
(37, 'MissFortune in Rovina', 4, 33),
(38, 'Neeko Guardiana Stellare', 3, 34),
(39, 'Nidalee dei Regni in Guerra', 3, 35),
(40, 'Nocture Dio Antico', 3, 36),
(41, 'Olaf Sentinella', 4, 37),
(42, 'Progetto Orianna', 4, 38),
(43, 'Pantheon in Rovina', 4, 39),
(44, 'Poppy Astronauta', 3, 40),
(45, 'Pyke Sentinella', 3, 41),
(46, 'Rengar Sentinella', 2, 42),
(47, 'Riven Sentinella', 1, 43),
(48, 'Samira Mezzogiorno di Fuoco', 3, 44),
(49, 'Senna Eclissi Lunare', 4, 45),
(50, 'Settt dei Regni Mecha', 3, 46),
(51, 'Shaco Arcanista', 2, 47),
(52, 'Progetto Viego', 4, 48),
(53, 'Viktor Mezzogiorno di Fuoco', 3, 49),
(54, 'Zoe Guardiana Stellare', 5, 50);

-- --------------------------------------------------------

--
-- Struttura della tabella `Campioni`
--

CREATE TABLE `Campioni` (
  `IdCampione` int NOT NULL,
  `NomeCampione` varchar(255) NOT NULL,
  `DifficoltaCampione` int NOT NULL,
  `ClasseCampione` varchar(255) NOT NULL,
  `TipoCampione` varchar(255) NOT NULL,
  `IdRuolo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Campioni`
--

INSERT INTO `Campioni` (`IdCampione`, `NomeCampione`, `DifficoltaCampione`, `ClasseCampione`, `TipoCampione`, `IdRuolo`) VALUES
(1, 'Aatrox', 2, 'Corpo a corpo', 'Danno fisico', 1),
(2, 'Ahri', 1, 'Attacco da lontano', 'Danno magico', 2),
(3, 'Alistar', 3, 'Corpo a corpo', 'Danno fisico', 4),
(4, 'Annie', 1, 'Attacco da lontano', 'Danno magico', 2),
(5, 'Bard', 3, 'Attacco da lontano', 'Danno magico', 4),
(6, 'Brand', 2, 'Attacco da lontano', 'Danno magico', 2),
(7, 'Braum', 3, 'Corpo a corpo', 'Danno fisico', 4),
(8, 'Caitlyn', 2, 'Attacco da lontano', 'Danno fisico', 5),
(9, 'Camille', 3, 'Corpo a corpo', 'Danno fisico', 1),
(10, 'Cassiopeia', 2, 'Attacco da lontano', 'Danno magico', 2),
(11, 'Corki', 2, 'Attacco da lontano', 'Danno fisico', 5),
(12, 'Darius', 2, 'Corpo a corpo', 'Danno fisico', 1),
(13, 'Diana', 1, 'Corpo a corpo', 'Danno magico', 3),
(14, 'Dr.Mundo', 2, 'Corpo a corpo', 'Danno fisico', 1),
(15, 'Draven', 3, 'Attacco da lontano', 'Danno fisico', 5),
(16, 'Ekko', 2, 'Corpo a corpo', 'Danno magico', 2),
(17, 'Elise', 3, 'Corpo a corpo', 'Danno magico', 3),
(18, 'Evelynn', 3, 'Corpo a corpo', 'Danno magico', 3),
(19, 'Fiddlestick', 3, 'Attacco da lontano', 'Danno magico', 4),
(20, 'Gangplank', 3, 'Attacco da lontano', 'Danno fisico', 1),
(21, 'Garen', 1, 'Corpo a corpo', 'Danno fisico', 1),
(22, 'Graves', 2, 'Attacco da lontano', 'Danno fisico', 3),
(23, 'Janna', 2, 'Attacco da lontano', 'Danno magico', 4),
(24, 'Jhin', 2, 'Attacco da lontano', 'Danno fisico', 5),
(25, 'Jinx', 1, 'Attacco da lontano', 'Danno fisico', 5),
(26, 'Kalista', 3, 'Attacco da lontano', 'Danno fisico', 5),
(27, 'Katarina', 2, 'Corpo a corpo', 'Danno magico', 2),
(28, 'Kayn', 2, 'Corpo a corpo', 'Danno fisico', 3),
(29, 'Khazix', 3, 'Corpo a corpo', 'Danno fisico', 3),
(30, 'Leona', 2, 'Corpo a corpo', 'Danno fisico', 4),
(31, 'Lissandra', 2, 'Attacco da lontano', 'Danno magico', 2),
(32, 'Malphite', 1, 'Corpo a corpo', 'Danno magico', 1),
(33, 'MissFortune', 1, 'Attacco da lontano', 'Danno fisico', 5),
(34, 'Neeko', 1, 'Attacco da lontano', 'Danno magico', 2),
(35, 'Nidalee', 3, 'Attacco da lontano', 'Danno magico', 3),
(36, 'Nocturne', 2, 'Corpo a corpo', 'Danno fisico', 3),
(37, 'Olaf', 2, 'Corpo a corpo', 'Danno fisico', 1),
(38, 'Orianna', 3, 'Attacco da lontano', 'Danno magico', 2),
(39, 'Pantheon', 2, 'Corpo a corpo', 'Danno magico', 4),
(40, 'Poppy', 1, 'Corpo a corpo', 'Danno fisico', 3),
(41, 'Pyke', 3, 'Corpo a corpo', 'Danno fisico', 4),
(42, 'Rengar', 2, 'Corpo a corpo', 'Danno fisico', 3),
(43, 'Riven', 3, 'Corpo a corpo', 'Danno fisico', 1),
(44, 'Samira', 2, 'Attacco da lontano', 'Danno fisico', 5),
(45, 'Senna', 3, 'Attacco da lontano', 'Danno fisico', 4),
(46, 'Settt', 2, 'Corpo a corpo', 'Danno fisico', 1),
(47, 'Shaco', 3, 'Corpo a corpo', 'Danno fisico', 3),
(48, 'Viego', 2, 'Corpo a corpo', 'Danno fisico', 3),
(49, 'Viktor', 3, 'Attacco da lontano', 'Danno magico', 2),
(50, 'Zoe', 2, 'Attacco da lontano', 'Danno magico', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `ElencoAbilita`
--

CREATE TABLE `ElencoAbilita` (
  `IdAbilita` varchar(255) NOT NULL,
  `NumeroAbilitaCampione` varchar(255) NOT NULL,
  `DescrizioneAbilita` varchar(255) NOT NULL,
  `StatisticaAbilita` varchar(255) NOT NULL,
  `IdCampione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `ElencoAbilita`
--

INSERT INTO `ElencoAbilita` (`IdAbilita`, `NumeroAbilitaCampione`, `DescrizioneAbilita`, `StatisticaAbilita`, `IdCampione`) VALUES
('AatroxA1', 'Q', 'Aatrox colpisce a terra con la sua spada infliggendo danni fisici', '50 danni fisici', 1),
('AatroxA2', 'W', 'Aatrox colpisce il terreno danneggiando il primo nemico colpito', '30 danni fisici', 1),
('AatroxA3', 'E', 'Aatrox si guarisce quando danneggia i campioni nemici', '10 danni fisici e recupera 30 di vita', 1),
('AhriA1', 'Q', 'Ahri lancia una sfera infliggendo danni magici', '50 danni magici', 2),
('AhriA2', 'W', 'Ahri genera 3 sfere che localizzano e attaccano il nemico nelle vicinanze', '10 di danni magici per ogni sfera', 2),
('AhriA3', 'E', 'Ahri lancia un cuore che danneggia e ammalia un nemico', '20 danni magici', 2),
('AlistarA1', 'Q', 'Alistar colpisce il suolo infliggendo danni ai nemici nelle vicinanze', '30 danni fisici', 3),
('AlistarA2', 'W', 'Alistar carica il bersaglio infliggendo danni e respingendolo', '20 danni fisici', 3),
('AlistarA3', 'E', 'Alistar travolge le unità nemiche vicine', '20 danni fisici', 3),
('AnnieA1', 'Q', 'Annie scaglia una palla di fuoco infliggendo danni magici', '40 danni magici', 4),
('AnnieA2', 'W', 'Annie lancia un cono di fuoco infliggendo danni a tutti i nemici nell\'area', '20 danni magici', 4),
('AnnieA3', 'E', 'Annie conferisce a se stessa o a un alleato uno scudo', '0 danni', 4),
('BardA1', 'Q', 'Bard lancia un proiettile che rallenta il primo nemico colpito', '30 danni magici', 5),
('BardA3', 'E', 'Bard crea un portale nel terreno vicino possono passarci alleati e nemici a senso unico', '0 danni', 5),
('BrandA1', 'Q', 'Brand lancia una palla di fuoco che infligge danni magici', '20 danni magici', 6),
('BrandA2', 'W', 'Brand crea un pilastro di fiamme nell\'area bersaglio infliggendo danni magici ai bersagli in zona', '30 danni magici', 6),
('BrandA3', 'E', 'Brand lancia contro un bersaglio una scarica che si propaga nei nemici vicini infliggendo danni magici', '10 danni magici', 6),
('BraumA1', 'Q', 'Braum lancia del ghiaccio rallentando i nemici', '10 danni fisici', 7),
('BraumA2', 'W', 'Braum salta verso un alleato facendogli ottenere armatura e resistenza magica', '0 danni e 30 di armatura', 7),
('BraumA3', 'E', 'Braum alza il suo scudo in una direzione per alcuni secondi distruggento i proiettili che lo colpiscono', '0 danni', 7),
('CaitlynA1', 'Q', 'Caitlyn spara un colpo con il suo fucile che infligge danni fisici', '60 danni fisici', 8),
('CaitlynA2', 'W', 'Caitlyn piazza una trappola sul terreno immobilizzando i campioni nemici che ci passano sopra', '0 danni', 8),
('CaitlynA3', 'E', 'Caitlyn spara una rete che rallenta il bersaglio', '10 danni fisici', 8),
('CamilleA1', 'Q', 'Il prossimo autoattacco di Camille infligge danni bonus', '50 di attacco bonus fisico', 9),
('CamilleA2', 'W', 'Camille colpisce un\'area conica infliggendo danni fisici', '60 danni fisici', 9),
('CamilleA3', 'E', 'Camille si porta verso un muro balza da esso e lanciandosi verso un nemico lo immobilizza per 2 secondi', '10 danni fisici', 9),
('CassiopeiaA1', 'Q', 'Cassiopeia crea una nuvola tossica che infligge danni velenosi ottenendo un bonus alla velocità di movimento', '40 danni magici +10 velocità di movimento', 10),
('CassiopeiaA2', 'W', 'Cassiopeia rilascia una nube tossica che rallenta e danneggia il campione nemico', '30 danni magici', 10),
('CassiopeiaA3', 'E', 'Cassiopeia esegue un attacco che infligge danni amplificati ai bersagli avvelenati', '20 danni bonus magici', 10),
('CorkiA1', 'Q', 'Corki spara una bomba accecante che infligge danni fisici ai campioni nemici', '40 danni fisici', 11),
('CorkiA2', 'W', 'Corki si sposta in volo per una breve distanza lasciando una scia di fiamme che danneggiano i nemici colpiti', '50 danni fisici', 11),
('CorkiA3', 'E', 'Corki spara velocemente dei proiettili in un\'area conica davanti a lui infliggendo danni fisici', '30 danni fisici', 11),
('DariusA1', 'Q', 'Darius fa roteare la sua ascia in un ampio cerchio infliggendo danni fisici ai campioni colpiti', '50 danni fisici', 12),
('DariusA2', 'W', 'Il prossimo attacco di Darius causa danni bonus a un campione nemico colpito', '20 danni fisici bonus', 12),
('DariusA3', 'E', 'Darius aggancia i nemici nelle vicinanze con la sua ascia tirandoseli verso di sé', '10 danni fisici', 12),
('DianaA1', 'Q', 'Diana crea un arco che fa subire danni magici ai campioni nemici colpiti', '40 danni magici', 13),
('DianaA2', 'W', 'Diana crea tre sfere orbitanti che esplodono al contatto con i nemici infliggendo danni magici', '10 danni magici per ogni sfera', 13),
('DianaA3', 'E', 'Diana scatta verso un nemico infliggendo danni magici', '20 danni magici', 13),
('Dr.MundoA1', 'Q', 'Dr.Mundo lancia un\'ascia che infligge danni fisici al primo nemico colpito', '50 danni fisici', 14),
('Dr.MundoA2', 'W', 'Dr.Mundo crea una scossa elettrica infliggendo danni persistenti ai nemici vicini', '20 danni fisici', 14),
('Dr.MundoA3', 'E', 'Dr.Mundo colpisce un nemico con la sua ascia infliggendo danni fisici in base alla sua salute mancante', 'danni fisici in base alla sua salute mancante', 14),
('DravenA1', 'Q', 'Draven lancia un\'ascia in aria infliggendo danni fisici al campione nemico targhettato ', '40 danni fisici', 15),
('DravenA2', 'W', 'Draven ottiene un aumento di velocità di attacco', '20 velocità di attacco in più', 15),
('DravenA3', 'E', 'Draven lancia le sue asce i bersagli colpiti vengono rallentati', '30 danni fisici', 15),
('EkkoA1', 'Q', 'Ekko lancia una granata che esplode infliggendo danni magici ai campioni nemici colpiti', '30 danni magici', 16),
('EkkoA2', 'W', 'Ekko crea una cupola che gli conferisce armatura e resistenza magica bonus', '20 di armatura in più e 20 resistenza magica in più', 16),
('EkkoA3', 'E', 'Ekko esegue una manovra evasiva il suo prossimo attacco infligge danni magici bonus', '30 danni magici bonus', 16),
('EliseA1', 'Q', 'Elise infligge danni magici in base a quanto è alta la salute del nemico', 'danni magici in base alla salute del nemico', 17),
('EliseA2', 'W', 'Elise rilascia un ragno velenoso che esplode nei pressi di un nemico', '30 danni magici', 17),
('EliseA3', 'E', 'Elise lancia una ragnatela stordendo la prima unità nemica colpita', '10 danni magici e stordisce per 2 secondi', 17),
('EvelynnA1', 'Q', 'Evelynn sferra un colpo che infligge danni magici alla prima unità nemica colpita', '20 danni magici', 18),
('EvelynnA2', 'W', 'Evelynn targhetta un nemico marchiandolo e il suo prossimo attacco infliggerà danni magici bonus', '10 danni bonus se colpisce il nemico', 18),
('EvelynnA3', 'E', 'Evelynn sferra un colpo al bersaglio e infligge danni magici ottenendo velocità di attacco', '30 danni magici e +10 velocità di attacco', 18),
('FiddlestickA1', 'Q', 'Danneggiando un nemico Fiddlestick lo fa \"scappare\" dalla paura per un determinato periodo di tempo', '10 danni magici e stordisce per 2 secondi', 19),
('FiddlestickA2', 'W', 'Fiddlestick assorbe salute dai nemici vicini infliggendo danni magici bonus', '20 danni magici bonus', 19),
('FiddlestickA3', 'E', 'Fiddlestick colpisce un\'area con la sua falce rallentando tutti i nemici colpiti', '30 danni magici', 19),
('GangplankA1', 'Q', 'Gangplank spara un colpo di pistola ad un nemico davanti a lui infliggendo danni fisici', '40 danni fisici', 20),
('GangplankA2', 'W', 'Ganplank mangia un\'arancia che gli fa ripristinare salute', 'Recupera 20 di salute', 20),
('GangplankA3', 'E', 'Gangplank crea un barile di polvere da sparo sul suolo se lo attacca esplode infliggendo danni fisici ai nemici all\'interno dell\'area del barile', '30 danni fisici', 20),
('GarenA1', 'Q', 'Garen ottiene velocità di attacco bonus e infligge danni fisici bonus con il suo prossimo attacco', 'Ottiene 10 velocità di attacco in più', 20),
('GarenA2', 'W', 'Garen aumenta resistenza magica e armatura ', '20 in più di armatura', 20),
('GarenA3', 'E', 'Garen fa roteare rapidamente la spada intorno a sé', ' infliggendo danni fisici ai nemici vicini', 30),
('GravesA1', 'Q', 'Graves spara un proiettile esplosivo che scoppia dopo due secondi infliggendo danni fisici', '40 danni fisici', 22),
('GravesA2', 'W', 'Graves spara un colpo fumogeno creando una nuvola di fumo che riduce il raggio visivo dei nemici che ci passano sopra', '0 danni fisici', 22),
('GravesA3', 'E', 'Graves fa uno scatto in avanti ottenendo un bonus all\'armatura per alcuni secondi', '20 armatura bonus', 22),
('JannaA1', 'Q', 'Janna crea un piccolo tornado che vola verso i nemici vicini lasciandoli in aria per alcuni secondi', '10 danni magici e stordisce per 2 secondi', 23),
('JannaA2', 'W', 'Janna lancia un colpo d\'aria che fa dimunire la velocità di attacco del campione nemico attaccato', 'Toglie 10 di velocità di attacco al nemico', 23),
('JannaA3', 'E', 'Janna crea una barriera protettiva che protegge un campione alleato dai danni dei nemici', 'Confersice 10 di armatura in più e 10 di resistenza magica bonus', 23),
('JhinA1', 'Q', 'Jhin spara un bossolo a un nemico può colpire fino a quattro bersagli e aumenta i suoi danni ogni volta che uccide', 'Può arrivare fino a 40 di danni fisici', 24),
('JhinA2', 'W', 'Jhin crea una scia che immobilizza il campione nemico', '10 danni fisici e immobilizza per 2 secondi', 24),
('JhinA3', 'E', 'Jhin piazza un fiore sul suolo che sboccia quando viene calpestato causa danni fisici', '20 danni fisici', 24),
('JinxA1', 'Q', 'Jinx modifica i suoi attacchi base cambiando arma una volta cambiata lancia dei missili che infiggono danni fisici ad area', '10 danni fisici per ogni missile', 25),
('JinxA2', 'W', 'Jinx crea una scia con la sua pistola elettrica colpendo un nemico lo rallenta e infligge danni fisici', '20 danni fisici', 25),
('JinxA3', 'E', 'Jinx piazza delle trappole sul suolo se i nemici ci passano sopra vengono immobilizzati per 3 secondi', '0 danni', 25),
('KalistaA1', 'Q', 'Kalista lancia una rapida lancia che passa oltre i nemici infliggendogli danni fisici', '30 danni fisici', 26),
('KalistaA2', 'W', 'Kalista crea un\'anima che controlla se ci sono nemici nelle vicinanze', '0 danni fisici', 26),
('KalistaA3', 'E', 'Kalista fa esplodere le lance precedentemente inflitte a un campione nemico infliggendo danni fisici', '10 danni per ogni lancia inflitta', 26),
('KatarinaA1', 'Q', 'Katarina lancia una daga che rimbalsa verso i nemici vicini per poi finire a terra', '20 danni magici', 27),
('KatarinaA2', 'W', 'Katarina lancia una daga in aria sopra di lei quando la riprende ottiene velocità di attacco bonus', '10 velocità di attacco bonus', 27),
('KatarinaA3', 'E', 'Katarina si teletrasporta verso un bersaglio nemico o alleato se è un nemico infligge danni magici', '15 danni magici su un campione nemico', 27),
('KaynA1', 'Q', 'Kayn scatta e poi attacca entrambe le azioni infliggono danni fisici', '20 danni fisici per ogni azione', 28),
('KaynA2', 'W', 'Kayn danneggia e rallenta i nemici lungo una linea retta', '30 danni fisici', 28),
('KaynA3', 'E', 'Kayn può attraversare gli ostacoli del terreno', '0 danni fisici', 28),
('KhazixA1', 'Q', 'Khazix infligge danni fisici ai nemici targhettati ne infligge di più se i bersagli sono isolati', '10 danni fisici e 20 se il nemico è isolato', 29),
('KhazixA2', 'W', 'Khazix spara aculei esplosivi che infliggono danni fisici ai nemici colpiti', '20 danni fisici', 29),
('KhazixA3', 'E', 'Khazix balsa in un\'area infliggendo danni fisici all\'impatto', '10 danni fisici', 29),
('LeonaA1', 'Q', 'Leona usa il suo scudo per stordire i nemici colpiti', '5 danni fisici nemico immobilizzato per 2 secondi', 30),
('LeonaA2', 'W', 'Leona alza il suo scudo per ottenere riduzione di danni', 'Ottiene 10 di armatura e 10 di resistenza magica', 30),
('LeonaA3', 'E', 'Leona lancia la sua spada verso un nemico che infligge danni fisici a tutti i nemici allineati', '10 danni fisici', 30),
('LissandraA1', 'Q', 'Lissandra lancia una punta di ghiaccio che infligge danni magici', '20 danni magici', 31),
('LissandraA2', 'W', 'Lissandra congela i campioni vicini infliggendo danni magici e immobilizzandoli', '20 danni magici e immobilizza per 3 secondi', 31),
('LissandraA3', 'E', 'Lissandra crea un artiglio di ghiaccio che infligge danni magici', '30 danni magici', 31),
('MalphiteA1', 'Q', 'Malphite scaglia un frammento di terra attraverso il suolo fino al suo nemico infliggendo danni magici all\'impatto', '40 danni magici', 32),
('MalphiteA2', 'W', 'Conferisce a Malphite più attacco magico', '10 di attacco magico in più', 32),
('MalphiteA3', 'E', 'Malphite colpisce il terreno generando un\'onda d\'urto che infligge danni magici in base alla sua armatura', 'Danno magico in base alla sua armatura che ha', 32),
('MissFortuneA1', 'Q', 'MissFortune spara un proiettile al nemico infliggendo danni fisici a lui e al bersaglio che gli sta dietro', '20 danni fisici al primo nemico colpito 30 al secondo', 33),
('MissFortuneA2', 'W', 'Quando non viene attaccata MissFortune ottiene velocità di attacco', 'Ottiene 10 velocità di attacco', 33),
('MissFortuneA3', 'E', 'MissFortune rivela un\'area con una pioggia di proiettili infliggendo danni fisici ai nemici che ci passano sopra', '10 danni fisici', 33),
('NeekoA1', 'Q', 'Neeko lancia un bocciolo che infligge danni magici', '30 danni magici', 34),
('NeekoA2', 'W', 'Neeko crea un clone che cammina verso la direzione scelta', '0 danni', 34),
('NeekoA3', 'E', 'Neeko spara un groviglio che danneggia e immobilizza i campioni nemici che attraversa', '20 danni magici e immobilizza per 3 secondi', 34),
('NidaleeA1', 'Q', 'Nidalee lancia un giavellotto appuntito che infligge danni magici in proprorzione alla distanza percorsa', 'Danni in base alla distanza del giavellotto da 10 a 30 danni magici', 35),
('NidaleeA2', 'W', 'Nidalee piazza una trappola sul terreno che danneggiano e rivelano il nemico che ci passa sopra', '10 danni magici', 35),
('NidaleeA3', 'E', 'Nidalee cura se stessa o un alleato vicino a lei', 'Nidalee conferisce a sé stessa o a un alleato 20 salute in più', 35),
('NocturneA1', 'Q', 'Nocturne lancia una lama che infligge danni fisici', '20 danni fisici', 36),
('NocturneA2', 'W', 'Nocturne potenzia le sue lame guadagnando velocità di attacco', 'Ottiene 10 velocità di attacco', 36),
('NocturneA3', 'E', 'Nocturne stordisce un nemico con le sue lame per tre secondi', '10 attacco fisico', 36),
('OlafA1', 'Q', 'Olaf lancia un\'ascia nel suolo infliggendo danni fisici ai nemici colpiti', '30 danni fisici', 37),
('OlafA2', 'W', 'Olaf riduce i danni in arrivo ottiene uno scudo e la sua velocità di attacco è aumentata', 'Prende 10 velocità di attacco in più e 10 di armatura in più', 37),
('OlafA3', 'E', 'Olaf attacca un bersaglio nemico con le sue asce recuperando la salute mancante se lo uccide', '20 danni fisici', 37),
('OriannaA1', 'Q', 'Orianna ordina alla sua palla di spararsi verso la posizione del nemico infligge danni magici se lo colpisce', '40 danni magici', 38),
('OriannaA2', 'W', 'Orianna fa rilasciare un impulso di energia alla sua palla infliggendo danni magici ad area', '30 danni magici', 38),
('OriannaA3', 'E', 'Orianna ordina alla sua palla di attaccarsi a sé stessa o a un campione alleato conferendogli uno scudo', 'Ottiene 20 armatura in più e 20 resistenza magica in più sia per lei che per un alleato', 38),
('PantheonA1', 'Q', 'Pantheon scaglia la sua lancia se colpisce un nemico infligge danni fisici', '30 danni fisici', 39),
('PantheonA2', 'W', 'Pantheon scatta verso un bersaglio nemico danneggiandolo e stordendolo', '20 danni fisici e stordisce per 3 secondi', 39),
('PantheonA3', 'E', 'Pantheon prepara il suo scudo e diventa invulnerabile ai danni davanti a sé', '0 danni', 39),
('PoppyA1', 'Q', 'Poppy colpisce il suolo con il suo martello infliggendo danni fisici ai nemici vicini', '20 danni fisici', 40),
('PoppyA2', 'W', 'Poppy ottiene armatura e resistenza magica', '10 di armatura in più e 10 di resistenza magica in più', 40),
('PoppyA3', 'E', 'Poppy scatta verso un bersaglio e lo respinge e se il bersaglio viene spinto contro un muro rimane stordito', '10 di danno e 3 secondi di stordimento', 40),
('PykeA1', 'Q', 'Pyke infilza un nemico davanti a lui e lo tira verso di sé', '20 danni fisici', 41),
('PykeA2', 'W', 'Pyke ottiene velocità di attacco', '10 velocità di attacco bonus', 41),
('PykeA3', 'E', 'Pyke scatta e si lancia verso un campione nemico stordendolo', '0 danni stordisce per 2 secondi', 41),
('RengarA1', 'Q', 'Al prossimo attacco Rengar infilza il bersaglio nemico infliggendo danni fisici bonus', '20 danni fisici bonus', 42),
('RengarA2', 'W', 'Rengar lancia un ruggito che infligge danni fisici ai nemici vicini a lui', '10 danni fisici', 42),
('RengarA3', 'E', 'Rengar lancia una bola rallentando il primo bersaglio colpito', '0 danni', 42),
('RivenA1', 'Q', 'Riven si lancia in una serie di attacchi il terzo attacco respinge i nemici nelle vicinanze', '30 danni fisici', 43),
('RivenA2', 'W', 'Riven emette un\'esplosione che infligge danni e stordisce i nemici nelle vicinanze', '20 danni fisici', 43),
('RivenA3', 'E', 'Riven avanza di una breve distanza e blocca il danno che subisce', '0 danni', 43),
('SamiraA1', 'Q', 'Samira spara un colpo di pistola infliggendo danni fisici', '30 danni fisici', 44),
('SamiraA2', 'W', 'Samira fa roteare la sua spada intorno a sé danneggiando gli avversari e bloccando proiettili nemici', '20 danni fisici', 44),
('SamiraA3', 'E', 'Samira scatta attraverso un nemico colpendo tutti gli avversari che oltrepassa ottiene velocità di attacco', '10 in più di velocità di attacco', 44),
('SennaA1', 'Q', 'Senna spara un raggio di luce e ombra infliggendo danni fisici al bersaglio se fatto su un alleato lo cura', '20 danni fisici ad un nemico +20 di salute ad un alleato', 45),
('SennaA2', 'W', 'Senna emette un\'ondata di nebbia oscura se colpisce un nemico lo immobilizza per due secondi', '0 danni immobilizza il nemico per 2 secondi', 45),
('SennaA3', 'E', 'Senna crea una nebbia per ottenere velocità di attacco', '10 velocità di attacco bonus', 45),
('SetttA1', 'Q', 'I due prossimi attacchi di Settt infliggono danni fisici bonus', '20 danni fisici in più per i prossimi 3 autoattacchi', 46),
('SetttA2', 'W', 'Settt ottiene uno scudo e colpisce un\'area con un pugno infliggendo danni fisici', '30 danni fisici', 46),
('SetttA3', 'E', 'Settt tira i nemici vicini da entrambi i suoi lati infliggendo danni e stordendoli', '20 danni fisici e stordisce per 3 secondi', 46),
('ShacoA1', 'Q', 'Shaco diventa invisibile e si teletrasporta verso la posizione del bersaglio nemico', '0 danni', 47),
('ShacoA2', 'W', 'Shaco crea una scatolina che si attiva quando i nemici ci passano vicino una volta attivata attacca i nemici vicini', '20 danni fisici', 47),
('ShacoA3', 'E', 'Shaco lancia un pugnale verso il bersaglio infliggendogli danni fisici', '30 danni fisici', 47),
('ViegoA1', 'Q', 'La lama di Viego infligge danni bonus fisici e gli fa aumentare la velocità di attacco', '10 danni bonus e 10 velocità di attacco in più', 48),
('ViegoA2', 'W', 'Viego si carica e scatta in avanti e stordisce il nemico colpito', '10 danni fisici e stordisce per 2 secondi', 48),
('ViegoA3', 'E', 'Viego crea una nebbia sul terreno che lo fa diventare invisibile e gli conferisce velocità di attacco', '0 danni 10 velocità di attacco in più', 48),
('ViktorA1', 'Q', 'Viktor colpisce un\'unità nemica infliggendo danni magici ottenendo uno scudo', '30 danni magici e 10 in più di armatura e 10 in più di resistenza magica', 49),
('ViktorA2', 'W', 'Viktor evoca un pesante campo gravitazionale che rallenta i nemici che ci entrano dentro', '0 danni', 49),
('ViktorA3', 'E', 'Viktor usa il suo braccio robotico per sparare un raggio infligge danni magici', '20 danni magici', 49),
('ZoeA1', 'Q', 'Zoe spara un proiettile che può deviare durante il volo infligge danni magici al campione colpito', '20 danni magici', 50),
('ZoeA2', 'W', 'Zoe si teletrasporta in una posizione vicina per un secondo per poi tornare alla sua posizione iniziale', '0 danni', 50),
('ZoeA3', 'E', 'Zoe scaglia un proiettile magico che fa addormentare i nemici colpiti', '10 danni magici estordisce per 2 secondi', 50);

-- --------------------------------------------------------

--
-- Struttura della tabella `ElencoTransazioni`
--

CREATE TABLE `ElencoTransazioni` (
  `IdTransazione` int NOT NULL,
  `CostoTransazione` varchar(255) NOT NULL,
  `IdGiocatore` int NOT NULL,
  `IdArticolo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `ElencoTransazioni`
--

INSERT INTO `ElencoTransazioni` (`IdTransazione`, `CostoTransazione`, `IdGiocatore`, `IdArticolo`) VALUES
(1, '1250', 28, 15),
(2, '600', 39, 10),
(3, '400', 33, 11),
(4, '900', 18, 18),
(5, '2000', 45, 23),
(6, '600', 51, 14),
(7, '600', 28, 14),
(8, '400', 59, 21),
(9, '400', 48, 47),
(10, '400', 38, 47),
(11, '1250', 39, 37),
(12, '900', 51, 29),
(13, '400', 7, 21),
(14, '1250', 39, 43),
(15, '600', 7, 19),
(16, '2000', 11, 36),
(17, '600', 18, 35),
(18, '900', 60, 48),
(19, '900', 11, 40),
(20, '600', 44, 31),
(21, '400', 2, 21),
(22, '400', 3, 21),
(23, '600', 3, 8),
(24, '1250', 38, 15),
(25, '1250', 29, 16),
(26, '600', 57, 31),
(27, '400', 3, 21),
(28, '400', 55, 21),
(29, '1250', 55, 25),
(30, '2000', 28, 28);

-- --------------------------------------------------------

--
-- Struttura della tabella `Equipaggiamento`
--

CREATE TABLE `Equipaggiamento` (
  `IdEquip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NomeEquipaggiamento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DescrizioneEquip` varchar(255) NOT NULL,
  `IdRuolo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Equipaggiamento`
--

INSERT INTO `Equipaggiamento` (`IdEquip`, `NomeEquipaggiamento`, `DescrizioneEquip`, `IdRuolo`) VALUES
('CADC1', 'Uragano di Runaan', 'Conferisce 50 di velocità di attacco e 40 di attacco fisico in più', 5),
('CADC2', 'Danzatore Fantasma', 'Conferisce 20 di attacco fisico e 70 di velocità di attacco in più', 5),
('CADC3', 'Saluti di Lord Dominik', 'Conferisce 40 di attacco fisico e 100 salute e 10 velocità di attacco in più', 5),
('CADC4', 'Il Collezionista', 'Conferisce 55 di attacco fisico e 30 velocità di attacco in più', 5),
('CCentrale1', 'Lama Crepuscolare', 'Conferisce 60 attacco fisico e 20 velocità di movimento in più', 2),
('CCentrale2', 'Tempesta di Luden', 'Conferisce 80 potere magico e 20 velocità di attacco in più', 2),
('CCentrale3', 'Sagomalanda', 'Conferisce 60 potere magico e 300 di vita in più', 2),
('CCentrale4', 'Eclissi', 'Conferisce 60 attacco fisico e 100 di vita più', 2),
('CSuperiore1', 'Mannaia Oscura', 'Conferisce 350 di salute e 45 di attacco fisico e 30 di velocità di attacco in più', 1),
('CSuperiore2', 'Pegno di Sterak', 'Conferisce 400 di salute e 20 attacco fisico in più', 1),
('CSuperiore3', 'Abbraccio Demoniaco', 'Conferisce 350 di salute e 45 di attacco fisico e 30 di velocità di attacco in più', 1),
('CSuperiore4', 'Corazza Spirituale', 'Conferisce 60 potere magico e 200 vita in più', 1),
('CSupporto1', 'Armatura di Warmog', 'Conferisce 800 di salute in più', 4),
('CSupporto2', 'Corazza Spinata', 'Conferisce 300 di salute e 30 di armatura e resistenza magica in più', 4),
('CSupporto3', 'Pietra di Luna Rinnovata', 'Conferisce 40 potere magico e 200 di salute ', 4),
('CSupporto4', 'Mandato Imperiale', 'Conferisce 30 di attacco fisico e 200 salute in più', 4),
('Giungla1', 'Morellomonicon', 'Conferisce 70 di potere magico e 200 vita in più', 3),
('Giungla2', 'Mietitore Notturno', 'Conferisce 40 potere magico e 400 vita in più', 3),
('Giungla3', 'Annientatore Divino', 'Conferisce 40 di attacco fisico e 200 di salute e 20 di velocità di attacco in più', 3),
('Giungla4', 'Idra Titanica', 'Conferisce 30 di attacco fisico e 500 salute in più', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `Giocatore`
--

CREATE TABLE `Giocatore` (
  `IdGiocatore` int NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `OroTotalePosseduto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Giocatore`
--

INSERT INTO `Giocatore` (`IdGiocatore`, `Nome`, `OroTotalePosseduto`) VALUES
(1, 'Treecher', '300'),
(2, 'RiseUp', '400'),
(3, 'EarthMother', '800'),
(4, 'KaboomView', '100'),
(5, 'Sharkgirl', '10'),
(6, 'BatBoy', '40'),
(7, 'HoltHamlet', '2000'),
(8, 'Gerbilator', '4000'),
(9, 'Redshock', '20'),
(10, 'Helixo', '30'),
(11, 'Oblique', '3000'),
(12, 'HornofPlenty', '20'),
(13, 'Berserker', '10'),
(14, 'TrueGrit', '60'),
(15, 'Mutant', '80'),
(16, 'Nightshade', '25'),
(17, 'Shotgunner', '35'),
(18, 'Bulletproof', '1050'),
(19, 'Masher', '25'),
(20, 'Dynamite', '15'),
(21, 'Mania00', '90'),
(22, 'Sw449Sn4ky', '20'),
(23, 'BamSnap', '40'),
(24, 'RebRK800', '10'),
(25, 'ImpPlant', '90'),
(26, 'Tweedlex', '20'),
(27, 'FrenzyMan', '60'),
(28, 'Explosssive', '3000'),
(29, 'BigDip', '1500'),
(30, 'Belizard', '25'),
(31, 'SmokinGun', '15'),
(32, 'CarloXXVII', '200'),
(33, 'Alkanoid', '500'),
(34, 'Plover', '350'),
(35, 'ZetanChamp', '65'),
(36, 'MuttonChops', '90'),
(37, 'Ouster', '50'),
(38, 'Incandescent', '2000'),
(39, 'Astropower', '4050'),
(40, 'Octopi', '120'),
(41, 'Warlockk', '225'),
(42, 'Belizard', '90'),
(43, 'JossStick', '10'),
(44, 'Minkx', '600'),
(45, 'CrosStorm', '2000'),
(46, 'Indira', '125'),
(47, 'HeroineIsm', '335'),
(48, 'Outfielder', '400'),
(49, 'Profusser', '85'),
(50, 'Sceptre', '90'),
(51, 'Quibble', '1000'),
(52, 'Overseer', '100'),
(53, 'Salamandrine', '135'),
(54, 'SepiaTone', '30'),
(55, 'BBGun', '4000'),
(56, 'Commandame', '100'),
(57, 'Possumiss', '1250'),
(58, 'Opally', '20'),
(59, 'MusicMiss', '500'),
(60, 'Seashanty', '900');

-- --------------------------------------------------------

--
-- Struttura della tabella `Negozio`
--

CREATE TABLE `Negozio` (
  `IdArticolo` int NOT NULL,
  `Prezzo` varchar(255) NOT NULL,
  `IdAspetto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Negozio`
--

INSERT INTO `Negozio` (`IdArticolo`, `Prezzo`, `IdAspetto`) VALUES
(1, '600', 1),
(2, '2000', 1),
(3, '600', 1),
(4, '900', 2),
(5, '900', 2),
(6, '1250', 3),
(7, '900', 3),
(8, '600', 4),
(9, '2000', 5),
(10, '600', 6),
(11, '900', 7),
(12, '900', 8),
(13, '2000', 9),
(14, '600', 10),
(15, '1250', 11),
(16, '1250', 12),
(17, '900', 13),
(18, '900', 14),
(19, '600', 15),
(20, '900', 16),
(21, '400', 17),
(22, '1250', 18),
(23, '2000', 19),
(24, '1250', 20),
(25, '1250', 21),
(26, '900', 22),
(27, '2000', 23),
(28, '2000', 24),
(29, '900', 25),
(30, '900', 26),
(31, '600', 27),
(32, '2000', 28),
(33, '900', 29),
(34, '900', 30),
(35, '600', 31),
(36, '2000', 32),
(37, '1250', 33),
(38, '900', 34),
(39, '900', 35),
(40, '900', 36),
(41, '1250', 37),
(42, '1250', 38),
(43, '1250', 39),
(44, '900', 40),
(45, '900', 41),
(46, '600', 42),
(47, '400', 43),
(48, '900', 44),
(49, '1250', 45),
(50, '900', 46),
(51, '900', 47),
(52, '400', 48),
(53, '600', 49),
(54, '1250', 50);

-- --------------------------------------------------------

--
-- Struttura della tabella `PartiteGiocate`
--

CREATE TABLE `PartiteGiocate` (
  `IdPartita` int NOT NULL,
  `DataPartitaGiocata` varchar(255) NOT NULL,
  `EsitoPartita` varchar(255) NOT NULL,
  `Durata` varchar(255) NOT NULL,
  `OroGuadagnato` varchar(255) NOT NULL,
  `IdGiocatore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `PartiteGiocate`
--

INSERT INTO `PartiteGiocate` (`IdPartita`, `DataPartitaGiocata`, `EsitoPartita`, `Durata`, `OroGuadagnato`, `IdGiocatore`) VALUES
(1, '01-05-2022', 'Vittoria', '20:09', '10', 1),
(2, '09-09-2022', 'Vittoria', '23:00', '10', 1),
(3, '12-02-2021', 'Vittoria', '12:00', '10', 1),
(4, '03-04-2022', 'Sconfitta', '29:00', '10', 2),
(5, '01-02-2022', 'Sconfitta', '23:00', '10', 2),
(6, '09-06-2022', 'Vittoria', '24:15', '10', 3),
(7, '11-02-2022', 'Sconfitta', '23:00', '10', 3),
(8, '23-08-2022', 'Vittoria', '15:00', '10', 3),
(9, '12-07-2022', 'Vittoria', '18:50', '10', 4),
(10, '03-03-2022', 'Vittoria', '30:09', '10', 4),
(11, '09-08-2022', 'Sconfitta', '35:00', '10', 5),
(12, '12-03-2022', 'Sconfitta', '32:45', '10', 6),
(13, '13-06-2022', 'Sconfitta', '33:00', '10', 7),
(14, '12-06-2022', 'Sconfitta', '35:09', '10', 8),
(15, '02-05-2022', 'Vittoria', '21:30', '10', 9),
(16, '03-09-2022', 'Vittoria', '22:00', '10', 10),
(17, '01-01-2022', 'Vittoria', '55:00', '10', 11),
(18, '07-01-2022', 'Vittoria', '19:30', '10', 12),
(19, '09-08-2022', 'Vittoria', '22:09', '10', 13),
(20, '01-01-2022', 'Sconfitta', '29:00', '10', 14),
(21, '09-09-2022', 'Sconfitta', '22:30', '10', 15),
(22, '12-12-2021', 'Sconfitta', '47:22', '10', 16),
(23, '05-03-2021', 'Vittoria', '30:00', '10', 17),
(24, '09-01-2021', 'Vittoria', '21:30', '10', 18),
(25, '23-03-2021', 'Sconfitta', '43:38', '10', 19),
(26, '09-08-2021', 'Sconfitta', '30:00', '10', 20),
(27, '21-01-2021', 'Vittoria', '40:40', '10', 21),
(28, '08-09-2021', 'Vittoria', '45:00', '10', 22),
(29, '09-02-2021', 'Sconfitta', '30:00', '10', 23),
(30, '07-06-2021', 'Sconfitta', '40:60', '10', 24),
(31, '09-09-2021', 'Vittoria', '43:20', '10', 25),
(32, '04-12-2021', 'Vittoria', '28:00', '10', 26),
(33, '08-09-2021', 'Vittoria', '20:00', '10', 27),
(34, '08-07-2021', 'Sconfitta', '39:00', '10', 28),
(35, '21-01-2021', 'Vittoria', '23:30', '10', 29),
(36, '21-02-2021', 'Sconfitta', '21:00', '10', 30),
(37, '08-02-2021', 'Vittoria', '22:20', '10', 31),
(38, '09-08-2021', 'Sconfitta', '16:30', '10', 32),
(39, '07-12-2021', 'Vittoria', '44:00', '10', 33),
(40, '05-01-2021', 'Sconfitta', '46:00', '10', 34),
(41, '09-01-2020', 'Sconfitta', '23:00', '10', 35),
(42, '08-12-2020', 'Sconfitta', '15:30', '10', 36),
(43, '23-02-2020', 'Vittoria', '55:00', '10', 37),
(44, '31-12-2020', 'Vittoria', '56:07', '10', 38),
(45, '09-06-2020', 'Vittoria', '17:03', '10', 39),
(46, '12-01-2020', 'Vittoria', '23:00', '10', 40),
(47, '09-09-2020', 'Sconfitta', '34:00', '10', 41),
(48, '12-08-2020', 'Sconfitta', '60:00', '10', 42),
(49, '16-02-2020', 'Vittoria', '36:40', '10', 43),
(50, '12-06-2020', 'Vittoria', '20:00', '10', 44),
(51, '09-08-2020', 'Vittoria', '18:39', '10', 45),
(52, '17-09-2020', 'Sconfitta', '19:00', '10', 46),
(53, '20-09-2020', 'Sconfitta', '27:00', '10', 47),
(54, '07-09-2020', 'Vittoria', '18:00', '10', 48),
(55, '09-12-2020', 'Sconfitta', '48:00', '10', 49),
(56, '09-04-2020', 'Vittoria', '34:54', '10', 50),
(57, '17-12-2020', 'Sconfitta', '60:00', '10', 51),
(58, '09-08-2020', 'Vittoria', '18:00', '10', 52),
(59, '06-06-2020', 'Sconfitta', '34:07', '10', 53),
(60, '09-09-2020', 'Vittoria', '40:34', '10', 54),
(61, '08-07-2020', 'Sconfitta', '16:09', '10', 55),
(62, '10-03-2020', 'Sconfitta', '19:00', '10', 56),
(63, '04-01-2020', 'Sconfitta', '20:20', '10', 57),
(64, '07-09-2020', 'Vittoria', '40:00', '10', 58),
(65, '05-03-2020', 'Vittoria', '30:00', '10', 59),
(66, '08-09-2020', 'Sconfitta', '40:00', '10', 60);

-- --------------------------------------------------------

--
-- Struttura della tabella `PartiteGiocate_Giocatore`
--

CREATE TABLE `PartiteGiocate_Giocatore` (
  `IdPartita` int NOT NULL,
  `IdGiocatore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `PartiteGiocate_Giocatore`
--

INSERT INTO `PartiteGiocate_Giocatore` (`IdPartita`, `IdGiocatore`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 4),
(10, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `Rune`
--

CREATE TABLE `Rune` (
  `IdRune` int NOT NULL,
  `NomeRuna` varchar(255) NOT NULL,
  `Descrizione` varchar(255) NOT NULL,
  `StatisticheRuna` varchar(255) NOT NULL,
  `IdRuolo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Rune`
--

INSERT INTO `Rune` (`IdRune`, `NomeRuna`, `Descrizione`, `StatisticheRuna`, `IdRuolo`) VALUES
(1, 'Conquistatore', 'Attacchi migliorati e danni sostenuti', 'Gli attacchi base o le abilità del campione fanno accumulare cariche fino ad un massimo di 12. A dodici cariche il campione guadagna 200 di vita bonus e attacco fisico bonus.', 1),
(2, 'Presa Immortale', 'Resistenza ed effetti di controllo', 'Ogni 4 secondi il tuo prossimo attacco contro un campione nemico infligge danni magici bonus e cura e aumenta permanentemente la tua salute di 10', 1),
(3, 'Elettroshock', 'Caccia ed elimina la preda e raffiche di danni e accesso ai bersagli', 'Colpire un campione con 3 attacchi o abilità diverse entro 3 secondi infligge danni bonus fisici', 2),
(4, 'Cometa Arcana', 'Scatena la distruzione abilità potenziate e manipolazione delle risorse', 'Danneggiare un campione con un\'abilità scaglia una cometa verso la sua posizione', 2),
(5, 'Primo Attacco', 'Aggira i comuni mortali strumenti creativi e strappi alle regole', 'Quando entri in combattimento contro un nemico se lo colpisci per primo (prima che lui colpisca te) allora infliggerai danni fisici bonus e vita bonus', 3),
(6, 'Scatto fasico', 'Velocizza i tuoi alleati e te stesso', 'Colpire un campione nemico con 3 diversi attacchi o abilità conferisce una momentanea velocità di attacco', 3),
(7, 'Evoca Aery', 'Proteggi i tuoi alleati in combattimento', 'I tuoi attacchi e le tue abilità inviano Aery verso un bersaglio riparando gli alleati o danneggiando i nemici', 4),
(8, 'Sorvegliante', 'Vivi per sempre', 'Proteggi gli alleati sui quali lanci abilità e quelli vicino a te', 4),
(9, 'Tempo Letale', 'Attacchi migliorati', 'Ottieni velocità di attacco quando attacchi un campione nemico', 5),
(10, 'Attacco Sostenuto', 'Danni sostenuti', 'Colpire un campione nemico 3 volte consecutive lo rende vulnerabile e gli infligge danni bonus', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `Ruolo`
--

CREATE TABLE `Ruolo` (
  `IdRuolo` int NOT NULL,
  `NomeRuolo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Ruolo`
--

INSERT INTO `Ruolo` (`IdRuolo`, `NomeRuolo`) VALUES
(1, 'Corsia Superiore'),
(2, 'Corsia Centrale'),
(3, 'Giungla'),
(4, 'Supporto'),
(5, 'ADC');

-- --------------------------------------------------------

--
-- Struttura della tabella `Statistiche`
--

CREATE TABLE `Statistiche` (
  `IdStatistica` int NOT NULL,
  `SaluteCampione` int NOT NULL,
  `ArmaturaCampione` int NOT NULL,
  `DannoAttaccoFisico` int NOT NULL,
  `DannoMagico` int NOT NULL,
  `VelocitaAttacco` int NOT NULL,
  `IdCampione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Statistiche`
--

INSERT INTO `Statistiche` (`IdStatistica`, `SaluteCampione`, `ArmaturaCampione`, `DannoAttaccoFisico`, `DannoMagico`, `VelocitaAttacco`, `IdCampione`) VALUES
(1, 650, 10, 70, 0, 40, 1),
(2, 570, 10, 0, 40, 40, 2),
(3, 670, 10, 60, 0, 40, 3),
(4, 570, 10, 0, 40, 40, 4),
(5, 670, 10, 0, 30, 40, 5),
(6, 570, 10, 0, 40, 40, 6),
(7, 670, 10, 60, 0, 40, 7),
(8, 570, 10, 70, 0, 40, 8),
(9, 570, 10, 70, 0, 40, 9),
(10, 570, 10, 70, 40, 40, 10),
(11, 570, 10, 70, 0, 40, 11),
(12, 650, 10, 70, 0, 40, 12),
(13, 650, 10, 0, 40, 40, 13),
(14, 670, 10, 60, 0, 40, 14),
(15, 570, 10, 70, 0, 40, 15),
(16, 650, 10, 0, 40, 40, 16),
(17, 570, 10, 0, 40, 40, 17),
(18, 570, 10, 0, 40, 40, 18),
(19, 570, 10, 0, 30, 40, 19),
(20, 650, 10, 70, 0, 40, 20),
(21, 670, 10, 70, 0, 40, 21),
(22, 570, 10, 70, 0, 40, 22),
(23, 570, 10, 0, 30, 40, 23),
(24, 570, 10, 70, 0, 40, 24),
(25, 570, 10, 70, 0, 40, 25),
(26, 570, 10, 70, 0, 40, 26),
(27, 650, 10, 0, 40, 40, 27),
(28, 650, 10, 70, 0, 40, 28),
(29, 570, 10, 70, 0, 40, 29),
(30, 670, 10, 60, 0, 40, 30),
(31, 570, 10, 0, 40, 40, 31),
(32, 670, 10, 0, 40, 40, 32),
(33, 570, 10, 70, 0, 40, 33),
(34, 570, 10, 0, 40, 40, 34),
(35, 570, 10, 0, 40, 40, 35),
(36, 650, 10, 70, 0, 40, 36),
(37, 650, 10, 70, 0, 40, 37),
(38, 570, 10, 0, 40, 40, 38),
(39, 670, 10, 70, 0, 40, 39),
(40, 670, 10, 60, 0, 40, 40),
(41, 570, 10, 70, 0, 40, 41),
(42, 650, 10, 70, 0, 40, 42),
(43, 650, 10, 70, 0, 40, 43),
(44, 570, 10, 70, 0, 40, 44),
(45, 570, 10, 60, 0, 40, 45),
(46, 650, 10, 70, 0, 40, 46),
(47, 570, 10, 70, 0, 40, 47),
(48, 650, 10, 70, 0, 40, 48),
(49, 650, 10, 0, 40, 40, 49),
(50, 570, 10, 0, 40, 40, 50);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Aspetti`
--
ALTER TABLE `Aspetti`
  ADD PRIMARY KEY (`IdAspetto`),
  ADD KEY `IdCampione` (`IdCampione`);

--
-- Indici per le tabelle `Campioni`
--
ALTER TABLE `Campioni`
  ADD PRIMARY KEY (`IdCampione`),
  ADD KEY `IdRuolo` (`IdRuolo`);

--
-- Indici per le tabelle `ElencoAbilita`
--
ALTER TABLE `ElencoAbilita`
  ADD PRIMARY KEY (`IdAbilita`),
  ADD KEY `IdCampione` (`IdCampione`);

--
-- Indici per le tabelle `ElencoTransazioni`
--
ALTER TABLE `ElencoTransazioni`
  ADD PRIMARY KEY (`IdTransazione`),
  ADD KEY `IdGiocatore` (`IdGiocatore`),
  ADD KEY `IdArticolo` (`IdArticolo`);

--
-- Indici per le tabelle `Equipaggiamento`
--
ALTER TABLE `Equipaggiamento`
  ADD PRIMARY KEY (`IdEquip`),
  ADD KEY `IdRuolo` (`IdRuolo`);

--
-- Indici per le tabelle `Giocatore`
--
ALTER TABLE `Giocatore`
  ADD PRIMARY KEY (`IdGiocatore`);

--
-- Indici per le tabelle `Negozio`
--
ALTER TABLE `Negozio`
  ADD PRIMARY KEY (`IdArticolo`),
  ADD KEY `Negozio_ibfk_1` (`IdAspetto`);

--
-- Indici per le tabelle `PartiteGiocate`
--
ALTER TABLE `PartiteGiocate`
  ADD PRIMARY KEY (`IdPartita`),
  ADD KEY `IdGiocatore` (`IdGiocatore`);

--
-- Indici per le tabelle `PartiteGiocate_Giocatore`
--
ALTER TABLE `PartiteGiocate_Giocatore`
  ADD KEY `IdPartita` (`IdPartita`),
  ADD KEY `IdGiocatore` (`IdGiocatore`);

--
-- Indici per le tabelle `Rune`
--
ALTER TABLE `Rune`
  ADD PRIMARY KEY (`IdRune`),
  ADD KEY `IdRuolo` (`IdRuolo`);

--
-- Indici per le tabelle `Ruolo`
--
ALTER TABLE `Ruolo`
  ADD PRIMARY KEY (`IdRuolo`);

--
-- Indici per le tabelle `Statistiche`
--
ALTER TABLE `Statistiche`
  ADD PRIMARY KEY (`IdStatistica`),
  ADD KEY `IdCampione` (`IdCampione`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Aspetti`
--
ALTER TABLE `Aspetti`
  ADD CONSTRAINT `Aspetti_ibfk_1` FOREIGN KEY (`IdCampione`) REFERENCES `Campioni` (`IdCampione`);

--
-- Limiti per la tabella `Campioni`
--
ALTER TABLE `Campioni`
  ADD CONSTRAINT `Campioni_ibfk_1` FOREIGN KEY (`IdRuolo`) REFERENCES `Ruolo` (`IdRuolo`);

--
-- Limiti per la tabella `ElencoAbilita`
--
ALTER TABLE `ElencoAbilita`
  ADD CONSTRAINT `ElencoAbilita_ibfk_1` FOREIGN KEY (`IdCampione`) REFERENCES `Campioni` (`IdCampione`);

--
-- Limiti per la tabella `ElencoTransazioni`
--
ALTER TABLE `ElencoTransazioni`
  ADD CONSTRAINT `ElencoTransazioni_ibfk_1` FOREIGN KEY (`IdGiocatore`) REFERENCES `Giocatore` (`IdGiocatore`),
  ADD CONSTRAINT `ElencoTransazioni_ibfk_2` FOREIGN KEY (`IdArticolo`) REFERENCES `Negozio` (`IdArticolo`);

--
-- Limiti per la tabella `Equipaggiamento`
--
ALTER TABLE `Equipaggiamento`
  ADD CONSTRAINT `Equipaggiamento_ibfk_1` FOREIGN KEY (`IdRuolo`) REFERENCES `Ruolo` (`IdRuolo`);

--
-- Limiti per la tabella `Negozio`
--
ALTER TABLE `Negozio`
  ADD CONSTRAINT `Negozio_ibfk_1` FOREIGN KEY (`IdAspetto`) REFERENCES `Aspetti` (`IdAspetto`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `PartiteGiocate`
--
ALTER TABLE `PartiteGiocate`
  ADD CONSTRAINT `PartiteGiocate_ibfk_1` FOREIGN KEY (`IdGiocatore`) REFERENCES `Giocatore` (`IdGiocatore`);

--
-- Limiti per la tabella `PartiteGiocate_Giocatore`
--
ALTER TABLE `PartiteGiocate_Giocatore`
  ADD CONSTRAINT `PartiteGiocate_Giocatore_ibfk_1` FOREIGN KEY (`IdPartita`) REFERENCES `PartiteGiocate` (`IdPartita`),
  ADD CONSTRAINT `PartiteGiocate_Giocatore_ibfk_2` FOREIGN KEY (`IdGiocatore`) REFERENCES `Giocatore` (`IdGiocatore`);

--
-- Limiti per la tabella `Rune`
--
ALTER TABLE `Rune`
  ADD CONSTRAINT `Rune_ibfk_1` FOREIGN KEY (`IdRuolo`) REFERENCES `Ruolo` (`IdRuolo`);

--
-- Limiti per la tabella `Statistiche`
--
ALTER TABLE `Statistiche`
  ADD CONSTRAINT `Statistiche_ibfk_1` FOREIGN KEY (`IdCampione`) REFERENCES `Campioni` (`IdCampione`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
