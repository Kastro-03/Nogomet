-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 12. jun 2025 ob 23.05
-- Različica strežnika: 10.4.17-MariaDB
-- Različica PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `matura_projektnogomet`
--

-- --------------------------------------------------------

--
-- Struktura tabele `ekipa`
--

CREATE TABLE `ekipa` (
  `EkipaID` int(11) NOT NULL,
  `naziv` varchar(25) NOT NULL,
  `Imestadiuma` varchar(25) NOT NULL,
  `linkLogo` varchar(200) NOT NULL,
  `linkLogoVeliki` varchar(200) NOT NULL,
  `barva` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `ekipa`
--

INSERT INTO `ekipa` (`EkipaID`, `naziv`, `Imestadiuma`, `linkLogo`, `linkLogoVeliki`, `barva`) VALUES
(1, 'Chelsea', 'Stamford Bridge', 'http://localhost/Matura_Projekt/klubLogo/Chelsea.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/Chelsea.png', '#0a4595'),
(2, 'Arsenal', 'Emirates Stadium', 'http://localhost/Matura_Projekt/klubLogo/Arsenal.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/Arsenal.png', '#fe0002'),
(3, 'Aston Villa', 'Villa Park', 'http://localhost/Matura_Projekt/klubLogo/AstonVilla.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/AstonVilla.png', '#480025'),
(4, 'Leicester City', 'King Power Stadium', 'http://localhost/Matura_Projekt/klubLogo/leiceseterCity.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/leiceseterCity.png', '#273e8a'),
(5, 'Liverpool', 'Anfield', 'http://localhost/Matura_Projekt/klubLogo/liverpool.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/liverpool.png', '#e31b23'),
(6, 'Manchester City', 'Etihad Stadium', 'http://localhost/Matura_Projekt/klubLogo/ManCity.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/ManCity.png', '#6caee0'),
(7, 'Manchester United', 'Old trafford', 'http://localhost/Matura_Projekt/klubLogo/manUnited.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/manUnited.png', '#d81920'),
(8, 'Tottenham Hotspur', 'Tottenham Hotspur Stadium', 'http://localhost/Matura_Projekt/klubLogo/Tottenham.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/Tottenham.png', '#f5f5f5'),
(9, 'West Ham United', 'London Stadium', 'http://localhost/Matura_Projekt/klubLogo/westham.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/westham.png', '#7d2c3b'),
(10, 'Wolverhampton Wanderers', 'Molineux Stadium', 'http://localhost/Matura_Projekt/klubLogo/wolves.png', 'http://localhost/Matura_Projekt/klubLogoVeliki/wolves.png', '#f9a01b');

-- --------------------------------------------------------

--
-- Struktura tabele `gol`
--

CREATE TABLE `gol` (
  `golID` int(11) NOT NULL,
  `igralecID` int(11) NOT NULL,
  `minuta` int(11) NOT NULL,
  `opomba` int(11) DEFAULT NULL,
  `tekmaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `gol`
--

INSERT INTO `gol` (`golID`, `igralecID`, `minuta`, `opomba`, `tekmaID`) VALUES
(1, 10, 30, NULL, 5),
(2, 40, 35, NULL, 17),
(3, 73, 6, NULL, 17),
(4, 98, 5, NULL, 18),
(5, 96, 37, NULL, 18),
(6, 121, 13, NULL, 18),
(7, 119, 46, NULL, 18),
(8, 141, 12, NULL, 19),
(9, 141, 38, NULL, 19),
(10, 141, 81, NULL, 19),
(11, 160, 35, 2, 19),
(12, 132, 72, 1, 19),
(13, 177, 59, NULL, 20),
(14, 10, 31, NULL, 21),
(15, 110, 57, 2, 21),
(16, 97, 90, 0, 21),
(17, 26, 77, NULL, 22),
(18, 33, 81, NULL, 22),
(19, 228, 6, NULL, 22),
(20, 228, 67, NULL, 22);

-- --------------------------------------------------------

--
-- Struktura tabele `igralec`
--

CREATE TABLE `igralec` (
  `IgralecID` int(11) NOT NULL,
  `Ime` varchar(20) NOT NULL,
  `Priimek` varchar(20) DEFAULT NULL,
  `DatumRojstva` date NOT NULL,
  `drzava` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL,
  `pozicija` varchar(20) NOT NULL,
  `StevilkaDresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `igralec`
--

INSERT INTO `igralec` (`IgralecID`, `Ime`, `Priimek`, `DatumRojstva`, `drzava`, `pozicija`, `StevilkaDresa`) VALUES
(1, 'Bernd', 'Leno', '1992-03-04', 'Nemčija', 'vratar', 1),
(2, 'Gabriel', 'Magalhaes', '1997-12-19', 'Brazilija', 'obramba', 6),
(3, 'Arthur', 'Okokwo', '2001-09-09', 'Anglija', 'vratar', 33),
(4, 'Kieran', 'Tierney', '1997-06-05', 'Škotska', 'obramba', 3),
(5, 'Rob', 'Holding', '1995-09-20', 'Anglija', 'obramba', 16),
(9, 'Cedric', 'Soares', '1991-08-31', 'Portugalska', 'obramba', 17),
(10, 'Bukayo', 'Saka', '2001-09-05', 'Anglija', 'sredina', 7),
(11, 'Thomas', 'Partey', '1993-06-13', 'Gana', 'sredina', 5),
(12, 'Mohamed', 'Elneny', '1992-07-11', 'Egipt', 'sredina', 25),
(13, 'Granit', 'Xhaka', '1992-09-27', 'Švica', 'sredina', 34),
(14, 'Alexandre', 'Lacazette', '1991-05-28', 'Francija', 'napad', 9),
(15, 'Emil Smith', 'Rowe', '2000-07-28', 'Anglija', 'sredina', 10),
(16, 'Nicolas', 'Pepe', '1995-05-29', 'Slonokoščena obala', 'napad', 19),
(17, 'Eddie', 'Nketiah', '1999-05-30', 'Anglija', 'napad', 30),
(18, 'Gabriel', 'Martinelli', '2001-06-18', 'Brazilija', 'napad', 35),
(19, 'Martin', 'Odergaard', '1998-12-17', 'Norveška', 'sredina', 8),
(20, 'Benjamin', 'White', '1997-10-08', 'Anglija', 'obramba', 4),
(21, 'Emiliano', 'Martinez', '1992-09-02', 'Argentina', 'vratar', 1),
(22, 'Matthew', 'Cash', '1997-08-07', 'Polska', 'obramba', 2),
(23, 'Ezri', 'Konsa', '1997-10-23', 'Anglija', 'obramba', 4),
(24, 'Tyrone', 'Mings', '1993-03-13', 'Anglija', 'obramba', 5),
(25, 'Ashley', 'Young', '1985-07-09', 'Anglija', 'obramba', 18),
(26, 'Jacob', 'Ramsey', '2001-05-28', 'Anglija', 'sredina', 41),
(28, 'Douglas', 'Luiz', '1998-05-09', 'Brazilija', 'sredina', 6),
(29, 'John', 'McGinn', '1994-10-18', 'Škotska', 'sredina', 7),
(30, 'Emiliano', 'Buendia', '1996-12-25', 'Argentina', 'sredina', 10),
(32, 'Ollie', 'Watkins', '1995-12-30', 'Anglija', 'napad', 11),
(33, 'Philippe', 'Coutinho', '1992-06-12', 'Brazilija', 'sredina', 23),
(34, 'Leon', 'Bailey', '1997-08-09', 'Jamajka', 'napad', 31),
(35, 'Bertrand', 'Traore', '1995-09-06', 'Burkina Faso', 'napad', 15),
(36, 'Danny', 'Ings', '1992-07-23', 'Anglija', 'napad', 20),
(37, 'Kepa', 'Arrizabalaga', '1994-10-03', 'Španija', 'vratar', 1),
(38, 'Edouard', 'Mendy', '1992-03-01', 'Senegal', 'vratar', 16),
(39, 'Antonio', 'Rudiger', '1993-03-03', 'Nemčija', 'obramba', 2),
(40, 'Marcos', 'Alonso', '1990-12-28', 'Španija', 'obramba', 3),
(41, 'Andreas', 'Christensen', '1996-04-10', 'Danska', 'obramba', 4),
(42, 'Thiago', 'Silva', '1984-09-22', 'Brazilija', 'obramba', 6),
(43, 'Ben', 'Chilwell', '1996-12-21', 'Anglija', 'obramba', 21),
(44, 'Reece', 'James', '1999-12-08', 'Anglija', 'obramba', 24),
(45, 'Robin', 'Olsen', '1990-01-08', 'Švedska', 'vratar', 25),
(46, 'Calum', 'Chambers', '1995-01-20', 'Anglija', 'obramba', 16),
(47, 'Morgan', 'Sanson', '1994-08-18', 'Francija', 'sredina', 8),
(48, 'Tim', 'Iroegbunam', '2003-06-30', 'Anglija', 'sredina', 47),
(49, 'Tommi', 'Reilly', '2003-12-15', 'Anglija', 'sredina', 58),
(50, 'Carney', 'Chukwuemeka', '2003-10-20', 'Anglija', 'sredina', 30),
(51, 'Nuno', 'Tavares', '2000-01-26', 'Portugalska', 'obramba', 20),
(52, 'Zak', 'Swanson', '2000-09-28', 'Anglija', 'obramba', 69),
(53, 'Omari', 'Hutchinson', '2003-10-29', 'Anglija', 'sredina', 82),
(54, 'Albert', 'Sambi Lokonga', '1999-10-22', 'Belgija', 'sredina', 23),
(56, 'Trevoh', 'Chalobah', '1999-07-05', 'Anglija', 'obramba', 14),
(58, 'N Golo', 'Kante', '1991-03-29', 'Francija', 'sredina', 7),
(59, 'Romelu', 'Lukaku', '1993-05-13', 'Belgija', 'napad', 9),
(60, 'Christian', 'Pulisic', '1998-09-18', 'ZDA', 'napad', 10),
(61, 'Hakim', 'Ziyech', '1993-03-19', 'Maroko', 'napad', 22),
(62, 'Malang', 'Sarr', '1999-01-23', 'Francija', 'obramba', 31),
(63, 'Cesar', 'Azpilicueta', '1989-08-28', 'Španija', 'obramba', 28),
(64, 'Ross', 'Barkley', '1993-12-05', 'Anglija', 'sredina', 18),
(65, 'Ruben', 'Loftus-Cheek', '1996-01-23', 'Anglija', 'sredina', 12),
(66, 'Saul', 'Niguez', '1994-11-21', 'Španija', 'sredina', 17),
(67, 'Mason', 'Mount', '1999-01-10', 'Anglija', 'sredina', 19),
(68, 'Kai', 'Havertz', '1999-06-11', 'Nemčija', 'sredina', 29),
(69, 'Kasper', 'Schmeichel', '1986-11-05', 'Danska', 'vratar', 1),
(70, 'Wesley', 'Fofana', '2000-12-17', 'Francija', 'obramba', 3),
(71, 'Jonny', 'Evans', '1988-01-03', 'Severna Irska', 'obramba', 6),
(72, 'Daniel', 'Amartey', '1994-12-21', 'Gana', 'obramba', 18),
(73, 'James', 'Maddison', '1996-11-23', 'Anglija', 'sredina', 10),
(74, 'Nampalys', 'Mendy', '1992-06-23', 'Senegal', 'sredina', 24),
(75, 'Timothy', 'Castagne', '1995-12-05', 'Belgija', 'obramba', 27),
(76, 'Kiernan', 'Dewsbury-Hall', '1998-09-06', 'Anglija', 'sredina', 22),
(77, 'Luke', 'Thomas', '2001-06-10', 'Anglija', 'obramba', 33),
(78, 'Jamie', 'Vardy', '1987-01-11', 'Anglija', 'napad', 9),
(79, 'Kelechi', 'Iheanacho', '1996-10-03', 'Nigerija', 'napad', 14),
(80, 'Danny', 'Ward', '1993-06-22', 'Wales', 'vratar', 12),
(81, 'Caglar', 'Soyuncu', '1996-05-23', 'Turčija', 'obramba', 4),
(82, 'Ricardo', 'Pereira', '1993-10-06', 'Portugalska', 'obramba', 21),
(83, 'Harvey', 'Barnes', '1997-12-09', 'Anglija', 'sredina', 7),
(84, 'Marc', 'Albrighton', '1989-11-18', 'Anglija', 'sredina', 11),
(85, 'Hamza', 'Choudhury', '1997-10-01', 'Anglija', 'sredina', 20),
(86, 'Ayoze', 'Perez', '1993-07-29', 'Španija', 'napad', 17),
(87, 'Patson', 'Daka', '1998-10-09', 'Zambija', 'napad', 29),
(88, 'Ademola', 'Lookman', '1997-10-20', 'Nigerija', 'napad', 37),
(89, 'Jorginho', ' ', '1991-12-20', 'Italija', 'sredina', 5),
(90, 'Kenedy', ' ', '1996-02-08', 'Brazilija', 'sredina', 23),
(91, 'Ederson', ' ', '1993-08-17', 'Brazilija', 'vratar', 31),
(92, 'Kyle', 'Walker', '1990-05-28', 'Anglija', 'obramba', 2),
(93, 'John', 'Stones', '1994-05-28', 'Anglija', 'obramba', 5),
(94, 'Joao', 'Cancelo', '1994-05-27', 'Portugalska', 'obramba', 27),
(95, 'Aymeric', 'Laporte', '1994-05-27', 'Španija', 'obramba', 14),
(96, 'Gabriel', 'Jesus', '1997-04-03', 'Brazilija', 'napad', 9),
(97, 'Rodri', ' ', '1996-06-22', 'Španija', 'sredina', 16),
(98, 'Kevin', 'De Bruyne', '1991-06-28', 'Belgija', 'sredina', 17),
(99, 'Bernardo', 'Silva', '1994-08-10', 'Portugalska', 'sredina', 20),
(100, 'Phil', 'Foden', '2000-05-28', 'Anglija', 'sredina', 47),
(101, 'Raheem', 'Sterling', '1994-12-08', 'Anglija', 'napad', 7),
(102, 'Zack', 'Steffen', '1995-04-02', 'ZDA', 'vratar', 13),
(103, 'Nathan', 'Ake', '1995-02-18', 'Nizozemska', 'obramba', 6),
(104, 'Oleksandr', 'Zinchenko', '1996-12-15', 'Ukrajina', 'sredina', 11),
(105, 'James', 'McAtee', '2002-10-18', 'Anglija', 'sredina', 87),
(106, 'Ilkay', 'Gundogan', '1990-10-24', 'Nemčija', 'sredina', 8),
(107, 'Jack', 'Grealish', '1995-09-10', 'Anglija', 'sredina', 10),
(108, 'Fernandinho', ' ', '1985-05-04', 'Brazilija', 'sredina', 25),
(109, 'Romeo', 'Lavia', '2004-01-06', 'Belgija', 'sredina', 90),
(110, 'Riyad', 'Mahrez', '1991-02-21', 'Alžirija', 'napad', 26),
(111, 'Alisson', ' ', '1992-10-02', 'Brazilija', 'vratar', 1),
(112, 'Virgil', 'Van Dijk', '1991-07-08', 'Nizozemska', 'obramba', 4),
(113, 'Andrew', 'Robertson', '1994-03-11', 'Škotska', 'obramba', 26),
(114, 'Joel', 'Matip', '1991-08-08', 'Kameron', 'obramba', 32),
(115, 'Trent', 'Alexander-Arnold', '1998-10-07', 'Anglija', 'obramba', 66),
(116, 'Fabinho', ' ', '1993-10-23', 'Brazilija', 'sredina', 3),
(117, 'Thiago', ' ', '1991-04-11', 'Španija', 'sredina', 6),
(118, 'Jordan', 'Henderson', '1990-06-17', 'Anglija', 'sredina', 14),
(119, 'Sadio', 'Mane', '1992-04-10', 'Senegal', 'napad', 10),
(120, 'Mohamed', 'Salah', '1992-06-15', 'Egipt', 'napad', 11),
(121, 'Diogo', 'Jota', '1996-12-04', 'Portugalska', 'napad', 20),
(122, 'Caoimhin', 'Kelleher', '1998-11-23', 'Irska', 'vratar', 62),
(123, 'Joe', 'Gomez', '1997-05-23', 'Anglija', 'obramba', 12),
(124, 'Ibrahima', 'Konate', '1999-05-25', 'Francija', 'obramba', 5),
(125, 'Kostas', 'Tsimikas', '1996-05-12', 'Grčija', 'obramba', 21),
(126, 'James', 'Milner', '1986-01-04', 'Anglija', 'sredina', 7),
(127, 'Naby', 'Keita', '1995-02-10', 'Gvineja', 'sredina', 8),
(128, 'Curtis', 'Jones', '2001-01-30', 'Anglija', 'sredina', 17),
(129, 'Roberto', 'Firmino', '1991-10-02', 'Brazilija', 'napad', 9),
(130, 'Luis', 'Diaz', '1997-01-13', 'Kolumbija', 'napad', 23),
(131, 'David', 'de Gea', '1990-11-07', 'Španija', 'vratar', 1),
(132, 'Harry', 'Maguire', '1993-03-05', 'Anglija', 'obramba', 5),
(133, 'Raphael', 'Varane', '1993-04-25', 'Francija', 'obramba', 19),
(134, 'Diogo', 'Dalot', '1999-03-18', 'Portugalska', 'obramba', 20),
(135, 'Alex', 'Telles', '1992-12-15', 'Brazilija', 'obramba', 27),
(136, 'Paul', 'Pogba', '1993-03-15', 'Francija', 'sredina', 6),
(137, 'Marcus', 'Rashford', '1997-10-31', 'Anglija', 'napad', 10),
(138, 'Fred', ' ', '1993-03-05', 'Brazilija', 'sredina', 17),
(139, 'Jadon', 'Sancho', '2000-03-25', 'Anglija', 'napad', 25),
(140, 'Nemanja', 'Matic', '1988-08-01', 'Srbija', 'sredina', 31),
(141, 'Cristiano', 'Ronaldo', '1985-02-05', 'Portugalska', 'napad', 7),
(142, 'Dean', 'Henderson', '1997-03-12', 'Anglija', 'vratar', 26),
(143, 'Victor', 'Lindelof', '1994-07-17', 'Švedska', 'obramba', 2),
(144, 'Eric', 'Bailly', '1994-04-12', 'Slonokoščena obala', 'obramba', 3),
(145, 'Phil', 'Jones', '1992-02-21', 'Anglija', 'obramba', 4),
(146, 'Aaron', 'Wan-Bissaka', '1997-11-26', 'Anglija', 'obramba', 29),
(147, 'Juan', 'Mata', '1988-04-28', 'Španija', 'sredina', 8),
(148, 'Jesse', 'Lingard', '1992-12-15', 'Anglija', 'sredina', 14),
(149, 'Edinson', 'Cavani', '1987-02-14', 'Urugvaj', 'napad', 21),
(150, 'Anthony', 'Elanga', '2002-04-27', 'Švedska', 'napad', 36),
(151, 'Hugo', 'Lloris', '1986-12-26', 'Francija', 'vratar', 1),
(152, 'Eric', 'Dier', '1994-01-15', 'Anglija', 'obramba', 15),
(153, 'Cristian', 'Romero', '1998-04-27', 'Argentina', 'obramba', 4),
(154, 'Ben', 'Davies', '1993-04-24', 'Wales', 'obramba', 33),
(155, 'Matt', 'Doherty', '1992-01-16', 'Irska', 'sredina', 2),
(156, 'Sergio', 'Regulion', '1996-12-16', 'Španija', 'obramba', 3),
(157, 'Pierre-Emile', 'Hojbjerg', '1995-08-05', 'Danska', 'sredina', 5),
(158, 'Rodrigo', 'Bentancur', '1997-06-25', 'Urugvaj', 'sredina', 30),
(159, 'Son', 'Heung-Min', '1992-07-08', 'Južna Koreja', 'napad', 7),
(160, 'Harry', 'Kane', '1993-07-28', 'Anglija', 'napad', 10),
(161, 'Dejan', 'Kulusevski', '2000-04-25', 'Švedska', 'napad', 21),
(162, 'Pierluigi', 'Gollini', '1995-03-18', 'Italija', 'vratar', 22),
(163, 'Davinson', 'Sanchez', '1996-06-12', 'Kolumbija', 'obramba', 6),
(164, 'Emerson', 'Royal', '1999-01-14', 'Brazilija', 'obramba', 12),
(165, 'Joe', 'Rodon', '1997-10-22', 'Wales', 'obramba', 14),
(166, 'Harry', 'Winks', '1996-02-02', 'Anglija', 'sredina', 8),
(167, 'Harvey', 'White', '2001-09-19', 'Anglija', 'sredina', 42),
(168, 'Steven', 'Bergwijn', '1997-10-08', 'Nizozemska', 'napad', 23),
(169, 'Lucas', 'Moura', '1992-08-13', 'Brazilija', 'napad', 27),
(170, 'Dane', 'Scarlett', '2004-03-24', 'Anglija', 'napad', 44),
(171, 'Lukasz', 'Fabianski', '1985-04-18', 'Polska', 'vratar', 1),
(172, 'Aaron', 'Cresswell', '1989-12-15', 'Anglija', 'obramba', 3),
(173, 'Kurt', 'Zouma', '1994-10-27', 'Francija', 'obramba', 4),
(174, 'Craig', 'Dawson', '1990-05-06', 'Anglija', 'obramba', 15),
(175, 'Ben', 'Johnson', '2000-01-24', 'Anglija', 'sredina', 31),
(176, 'Pablo', 'Fornals', '1996-02-22', 'Španija', 'sredina', 8),
(177, 'Tomas', 'Soucek', '1995-02-27', 'Češka', 'sredina', 28),
(178, 'Declan', 'Rice', '1999-01-14', 'Anglija', 'sredina', 41),
(179, 'Michail', 'Antonio', '1990-03-28', 'Jamajka', 'napad', 9),
(180, 'Manuel', 'Lanzini', '1994-04-30', 'Argentina', 'napad', 10),
(181, 'Jarrod', 'Bowen', '1996-12-20', 'Anglija', 'napad', 20),
(182, 'Alphonse', 'Areola', '1993-02-27', 'Francija', 'vratar', 13),
(183, 'Issa', 'Diop', '1997-01-09', 'Francija', 'obramba', 23),
(184, 'Ajibola', 'Alese', '2001-01-17', 'Anglija', 'obramba', 42),
(185, 'Nikola', 'Vlasic', '1997-10-04', 'Hrvaška', 'sredina', 11),
(186, 'Mark', 'Noble', '1987-05-08', 'Anglija', 'sredina', 16),
(187, 'Alex', 'Kral', '1999-09-10', 'Češka', 'sredina', 33),
(188, 'Sonny', 'Perkins', '2004-02-10', 'Anglija', 'napad', 64),
(189, 'Said', 'Benrahma', '1995-08-10', 'Alžirija', 'napad', 22),
(190, 'Armstrong', 'Oko-Flex', '2002-03-02', 'Irska', 'napad', 40),
(191, 'Jose', 'Sa', '1993-01-17', 'Portugalska', 'vratar', 1),
(192, 'Conor', 'Coady', '1993-02-25', 'Anglija', 'obramba', 16),
(193, 'Maximilian', 'Kilman', '1997-05-23', 'Anglija', 'obramba', 23),
(194, 'Romain', 'Saiss', '1990-03-26', 'Maroko', 'obramba', 27),
(195, 'Ki-Jana', 'Hoever', '2002-01-18', 'Nizozemska', 'sredina', 2),
(196, 'Marcal', ' ', '1998-04-23', 'Brazilija', 'sredina', 5),
(197, 'Ruben', 'Neves', '1997-03-13', 'Portugalska', 'sredina', 8),
(198, 'Leander', 'Dendoncker', '1995-04-15', 'Belgija', 'sredina', 32),
(199, 'Trincao', ' ', '1999-12-29', 'Portugalska', 'napad', 11),
(200, 'Fabio', 'Silva', '2002-07-19', 'Portugalska', 'napad', 17),
(201, 'Hwang', 'Hee-Chan', '1999-06-19', 'Južna Koreja', 'napad', 26),
(202, 'John', 'Ruddy', '1986-10-24', 'Anglija', 'vratar', 21),
(203, 'Rayan', 'Ait-Nouri', '2001-06-06', 'Francija', 'obramba', 3),
(204, 'Willy', 'Boly', '1991-02-03', 'Slonokoščena obala', 'obramba', 15),
(205, 'Jonny', ' ', '1994-03-03', 'Španija', 'obramba', 19),
(206, 'Daniel', 'Podence', '1995-10-21', 'Portugalska', 'sredina', 10),
(207, 'Joao', 'Moutinho', '1986-09-08', 'Portugalska', 'sredina', 28),
(208, 'Luke', 'Cundle', '2002-04-26', 'Anglija', 'napad', 39),
(209, 'Pedro', 'Neto', '2000-03-09', 'Portugalska', 'napad', 7),
(210, 'Raul', 'Jimenez', '1991-05-05', 'Mehika', 'napad', 9),
(211, 'Aaron', 'Ramsdale', '1998-05-14', 'Anglija', 'vratar', 32),
(212, 'Takehiro', 'Tomiyasu', '1998-11-05', 'Japonska', 'obramba', 18),
(213, 'Ainsley', 'Maitland-Niles', '1997-08-29', 'Anglija', 'sredina', 15),
(214, 'Luke', 'Mbete', '2003-09-18', 'Anglija', 'obramba', 79),
(215, 'Kayky', ' ', '2003-06-11', 'Brazilija', 'napad', 37),
(217, 'Cole', 'Palmer', '2002-05-06', 'Anglija', 'sredina', 80),
(218, 'Ben', 'White', '1998-10-08', 'Anglija', 'obramba', 4),
(219, 'Ruben', 'Dias', '1997-05-14', 'Portugalska', 'obramba', 3),
(220, 'Lucas', 'Digne', '1993-07-20', 'Francija', 'obramba', 27),
(221, 'Jed', 'Steer', '1992-09-23', 'Anglija', 'vratar', 12),
(222, 'Matt', 'Targett', '1995-09-18', 'Anglija', 'obramba', 3),
(223, 'Kortney', 'Hause', '1995-07-16', 'Anglija', 'obramba', 30),
(224, 'Kaine', 'Hayden', '2002-10-21', 'Anglija', 'obramba', 29),
(225, 'Cameron', 'Archer', '2001-12-09', 'Anglija', 'napad', 35),
(226, 'Tom', 'Heaton', '1986-04-15', 'Anglija', 'vratar', 22),
(227, 'Mason', 'Greenwood', '2001-10-01', 'Anglija', 'napad', 11),
(228, 'Bruno', 'Fernandes', '1994-09-08', 'Portugalska', 'sredina', 18),
(229, 'Donny', 'van de Beek', '1997-04-18', 'Nizozemska', 'sredina', 34),
(230, 'Timo', 'Werner', '1996-03-06', 'Nemčija', 'napad', 11),
(231, 'Mateo', 'Kovacic', '1994-05-06', 'Hrvaška', 'sredina', 8),
(232, 'Callum', 'Hudson-Odoi', '2000-11-07', 'Anglija', 'napad', 20),
(233, 'Japhet', 'Tanganga', '1999-03-31', 'Anglija', 'obramba', 25),
(234, 'Ryan', 'Sessegnon', '2000-05-18', 'Anglija', 'sredina', 19),
(235, 'Oliver', 'Skipp', '2000-09-16', 'Anglija', 'sredina', 29),
(236, 'Bryan', 'Gil', '2001-02-11', 'Španija', 'napad', 11);

-- --------------------------------------------------------

--
-- Struktura tabele `kazen`
--

CREATE TABLE `kazen` (
  `KazenID` int(11) NOT NULL,
  `igralecID` int(11) NOT NULL,
  `minuta` int(11) NOT NULL,
  `karton` varchar(10) NOT NULL,
  `TekmaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `kazen`
--

INSERT INTO `kazen` (`KazenID`, `igralecID`, `minuta`, `karton`, `TekmaID`) VALUES
(1, 26, 15, 'RU', 5),
(2, 24, 33, 'RU', 5),
(3, 29, 34, 'RU', 5),
(4, 13, 45, 'RU', 5),
(5, 9, 57, 'RU', 5),
(6, 11, 65, 'RU', 5),
(7, 58, 47, 'RU', 17),
(8, 59, 59, 'RU', 17),
(9, 39, 66, 'RU', 17),
(10, 89, 85, 'RU', 17),
(11, 71, 64, 'RU', 17),
(12, 99, 40, 'RU', 18),
(13, 113, 28, 'RU', 18),
(14, 117, 61, 'RU', 18),
(15, 116, 83, 'RU', 18),
(16, 112, 89, 'RU', 18),
(17, 138, 34, 'RU', 19),
(18, 136, 85, 'RU', 19),
(19, 152, 30, 'RU', 19),
(20, 179, 82, 'RU', 20),
(21, 13, 55, 'RU', 21),
(22, 2, 57, 'RU', 21),
(23, 2, 59, 'RD', 21),
(24, 10, 63, 'RU', 21),
(25, 5, 68, 'RU', 21),
(26, 97, 90, 'RU', 21),
(27, 99, 90, 'RU', 21),
(28, 220, 27, 'RU', 22),
(29, 140, 31, 'RU', 22),
(30, 228, 46, 'RU', 22);

-- --------------------------------------------------------

--
-- Struktura tabele `lestvica`
--

CREATE TABLE `lestvica` (
  `SezonaID` int(11) NOT NULL,
  `ekipaID` int(11) NOT NULL,
  `stTock` int(11) NOT NULL DEFAULT 0,
  `zmage` int(11) NOT NULL DEFAULT 0,
  `neodloceno` int(11) NOT NULL DEFAULT 0,
  `porazi` int(11) NOT NULL DEFAULT 0,
  `goli` int(11) NOT NULL DEFAULT 0,
  `dobljeniGoli` int(11) NOT NULL DEFAULT 0,
  `stTekm` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `lestvica`
--

INSERT INTO `lestvica` (`SezonaID`, `ekipaID`, `stTock`, `zmage`, `neodloceno`, `porazi`, `goli`, `dobljeniGoli`, `stTekm`) VALUES
(1, 1, 1, 0, 1, 0, 1, 1, 1),
(1, 2, 3, 1, 0, 1, 2, 2, 2),
(1, 3, 1, 0, 1, 1, 2, 3, 2),
(1, 4, 1, 0, 1, 0, 1, 1, 1),
(1, 5, 1, 0, 1, 0, 2, 2, 1),
(1, 6, 4, 1, 1, 0, 4, 3, 2),
(1, 7, 4, 1, 1, 0, 5, 4, 2),
(1, 8, 0, 0, 0, 1, 2, 3, 1),
(1, 9, 3, 1, 0, 0, 1, 0, 1),
(1, 10, 0, 0, 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabele `menjava`
--

CREATE TABLE `menjava` (
  `menjavaID` int(11) NOT NULL,
  `igralecV` int(11) NOT NULL,
  `igralecIZ` int(11) NOT NULL,
  `minuta` int(11) NOT NULL,
  `TekmaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `menjava`
--

INSERT INTO `menjava` (`menjavaID`, `igralecV`, `igralecIZ`, `minuta`, `TekmaID`) VALUES
(25, 35, 26, 69, 5),
(26, 34, 30, 69, 5),
(27, 36, 32, 82, 5),
(28, 16, 10, 69, 5),
(29, 17, 14, 78, 5),
(30, 5, 19, 86, 5),
(81, 63, 58, 72, 17),
(82, 65, 60, 72, 17),
(83, 68, 59, 78, 17),
(84, 83, 79, 63, 17),
(85, 86, 78, 78, 17),
(86, 110, 101, 75, 18),
(87, 107, 96, 83, 18),
(88, 130, 121, 70, 18),
(89, 127, 118, 78, 18),
(90, 129, 119, 84, 18),
(91, 150, 137, 68, 19),
(92, 149, 140, 80, 19),
(93, 143, 141, 83, 19),
(94, 169, 161, 78, 19),
(95, 168, 154, 87, 19),
(96, 166, 158, 88, 19),
(97, 185, 179, 90, 20),
(98, 183, 176, 90, 20),
(99, 206, 199, 60, 20),
(100, 209, 196, 76, 20),
(101, 210, 201, 81, 20),
(102, 5, 19, 63, 21),
(103, 15, 14, 71, 21),
(104, 12, 10, 84, 21),
(105, 106, 96, 63, 21),
(106, 223, 23, 45, 22),
(107, 33, 47, 68, 22),
(108, 50, 36, 76, 22),
(109, 139, 150, 78, 22),
(110, 229, 228, 89, 22),
(111, 148, 227, 89, 22);

-- --------------------------------------------------------

--
-- Struktura tabele `sezona`
--

CREATE TABLE `sezona` (
  `SezonaID` int(11) NOT NULL,
  `naziv` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `sezona`
--

INSERT INTO `sezona` (`SezonaID`, `naziv`) VALUES
(1, '2021/2022');

-- --------------------------------------------------------

--
-- Struktura tabele `sezona_igralec`
--

CREATE TABLE `sezona_igralec` (
  `SezonaID` int(11) NOT NULL,
  `IgralecID` int(11) NOT NULL,
  `ekipaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `sezona_igralec`
--

INSERT INTO `sezona_igralec` (`SezonaID`, `IgralecID`, `ekipaID`) VALUES
(1, 1, 2),
(1, 2, 2),
(1, 3, 2),
(1, 4, 2),
(1, 5, 2),
(1, 9, 2),
(1, 10, 2),
(1, 11, 2),
(1, 12, 2),
(1, 13, 2),
(1, 14, 2),
(1, 15, 2),
(1, 16, 2),
(1, 17, 2),
(1, 18, 2),
(1, 19, 2),
(1, 20, 2),
(1, 21, 3),
(1, 22, 3),
(1, 23, 3),
(1, 24, 3),
(1, 25, 3),
(1, 26, 3),
(1, 28, 3),
(1, 29, 3),
(1, 30, 3),
(1, 32, 3),
(1, 33, 3),
(1, 34, 3),
(1, 35, 3),
(1, 36, 3),
(1, 37, 1),
(1, 38, 1),
(1, 39, 1),
(1, 40, 1),
(1, 41, 1),
(1, 42, 1),
(1, 43, 1),
(1, 44, 1),
(1, 45, 3),
(1, 46, 3),
(1, 47, 3),
(1, 48, 3),
(1, 49, 3),
(1, 50, 3),
(1, 51, 2),
(1, 52, 2),
(1, 53, 2),
(1, 54, 2),
(1, 56, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 69, 4),
(1, 70, 4),
(1, 71, 4),
(1, 72, 4),
(1, 73, 4),
(1, 74, 4),
(1, 75, 4),
(1, 76, 4),
(1, 77, 4),
(1, 78, 4),
(1, 79, 4),
(1, 80, 4),
(1, 81, 4),
(1, 82, 4),
(1, 83, 4),
(1, 84, 4),
(1, 85, 4),
(1, 86, 4),
(1, 87, 4),
(1, 88, 4),
(1, 89, 1),
(1, 90, 1),
(1, 91, 6),
(1, 92, 6),
(1, 93, 6),
(1, 94, 6),
(1, 95, 6),
(1, 96, 6),
(1, 97, 6),
(1, 98, 6),
(1, 99, 6),
(1, 100, 6),
(1, 101, 6),
(1, 102, 6),
(1, 103, 6),
(1, 104, 6),
(1, 105, 6),
(1, 106, 6),
(1, 107, 6),
(1, 108, 6),
(1, 109, 6),
(1, 110, 6),
(1, 111, 5),
(1, 112, 5),
(1, 113, 5),
(1, 114, 5),
(1, 115, 5),
(1, 116, 5),
(1, 117, 5),
(1, 118, 5),
(1, 119, 5),
(1, 120, 5),
(1, 121, 5),
(1, 122, 5),
(1, 123, 5),
(1, 124, 5),
(1, 125, 5),
(1, 126, 5),
(1, 127, 5),
(1, 128, 5),
(1, 129, 5),
(1, 130, 5),
(1, 131, 7),
(1, 132, 7),
(1, 133, 7),
(1, 134, 7),
(1, 135, 7),
(1, 136, 7),
(1, 137, 7),
(1, 138, 7),
(1, 139, 7),
(1, 140, 7),
(1, 141, 7),
(1, 142, 7),
(1, 143, 7),
(1, 144, 7),
(1, 145, 7),
(1, 146, 7),
(1, 147, 7),
(1, 148, 7),
(1, 149, 7),
(1, 150, 7),
(1, 151, 8),
(1, 152, 8),
(1, 153, 8),
(1, 154, 8),
(1, 155, 8),
(1, 156, 8),
(1, 157, 8),
(1, 158, 8),
(1, 159, 8),
(1, 160, 8),
(1, 161, 8),
(1, 162, 8),
(1, 163, 8),
(1, 164, 8),
(1, 165, 8),
(1, 166, 8),
(1, 167, 8),
(1, 168, 8),
(1, 169, 8),
(1, 170, 8),
(1, 171, 9),
(1, 172, 9),
(1, 173, 9),
(1, 174, 9),
(1, 175, 9),
(1, 176, 9),
(1, 177, 9),
(1, 178, 9),
(1, 179, 9),
(1, 180, 9),
(1, 181, 9),
(1, 182, 9),
(1, 183, 9),
(1, 184, 9),
(1, 185, 9),
(1, 186, 9),
(1, 187, 9),
(1, 188, 9),
(1, 189, 9),
(1, 190, 9),
(1, 191, 10),
(1, 192, 10),
(1, 193, 10),
(1, 194, 10),
(1, 195, 10),
(1, 196, 10),
(1, 197, 10),
(1, 198, 10),
(1, 199, 10),
(1, 200, 10),
(1, 201, 10),
(1, 202, 10),
(1, 203, 10),
(1, 204, 10),
(1, 205, 10),
(1, 206, 10),
(1, 207, 10),
(1, 208, 10),
(1, 209, 10),
(1, 210, 10),
(1, 211, 2),
(1, 212, 2),
(1, 213, 2),
(1, 214, 6),
(1, 215, 6),
(1, 217, 6),
(1, 218, 2),
(1, 219, 6),
(1, 220, 3),
(1, 221, 3),
(1, 222, 3),
(1, 223, 3),
(1, 224, 3),
(1, 225, 3),
(1, 226, 7),
(1, 227, 7),
(1, 228, 7),
(1, 229, 7),
(1, 230, 1),
(1, 231, 1),
(1, 232, 1),
(1, 233, 8),
(1, 234, 8),
(1, 235, 8),
(1, 236, 8);

-- --------------------------------------------------------

--
-- Struktura tabele `sezona_sodnik`
--

CREATE TABLE `sezona_sodnik` (
  `SezonaID` int(11) NOT NULL,
  `sodnikID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `sezona_sodnik`
--

INSERT INTO `sezona_sodnik` (`SezonaID`, `sodnikID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6);

-- --------------------------------------------------------

--
-- Struktura tabele `sezona_trener`
--

CREATE TABLE `sezona_trener` (
  `SezonaID` int(11) NOT NULL,
  `trenerID` int(11) NOT NULL,
  `EkipaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `sezona_trener`
--

INSERT INTO `sezona_trener` (`SezonaID`, `trenerID`, `EkipaID`) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5),
(1, 6, 6),
(1, 7, 7),
(1, 8, 8),
(1, 9, 9),
(1, 10, 10);

-- --------------------------------------------------------

--
-- Struktura tabele `sodnik`
--

CREATE TABLE `sodnik` (
  `SodnikID` int(11) NOT NULL,
  `Ime` varchar(20) NOT NULL,
  `Priimek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `sodnik`
--

INSERT INTO `sodnik` (`SodnikID`, `Ime`, `Priimek`) VALUES
(1, 'Paul', 'Tierney'),
(2, 'Jonathan', 'Moss'),
(3, 'Michael', 'Oliver'),
(4, 'Craig', 'Pawson'),
(5, 'Anthony', 'Taylor'),
(6, 'Mike', 'Dean');

-- --------------------------------------------------------

--
-- Struktura tabele `tekma`
--

CREATE TABLE `tekma` (
  `TekmaID` int(11) NOT NULL,
  `datum` date NOT NULL,
  `cas` time NOT NULL,
  `domaci` int(11) NOT NULL,
  `gosti` int(11) NOT NULL,
  `resHTD` int(11) NOT NULL,
  `resHTG` int(11) NOT NULL,
  `resFTD` int(11) NOT NULL,
  `resFTG` int(11) NOT NULL,
  `SodnikID` int(11) NOT NULL,
  `Krog` int(11) NOT NULL,
  `Sezona` int(11) NOT NULL,
  `KapetanD` int(11) NOT NULL,
  `KapetanG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `tekma`
--

INSERT INTO `tekma` (`TekmaID`, `datum`, `cas`, `domaci`, `gosti`, `resHTD`, `resHTG`, `resFTD`, `resFTG`, `SodnikID`, `Krog`, `Sezona`, `KapetanD`, `KapetanG`) VALUES
(5, '2022-03-19', '13:30:00', 3, 2, 0, 1, 0, 1, 1, 1, 1, 24, 14),
(17, '2022-03-19', '17:00:00', 1, 4, 1, 1, 1, 1, 6, 1, 1, 89, 69),
(18, '2022-03-20', '19:00:00', 6, 5, 2, 1, 2, 2, 5, 1, 1, 98, 118),
(19, '2022-03-21', '13:30:00', 7, 8, 2, 1, 3, 2, 2, 1, 1, 132, 151),
(20, '2022-03-22', '18:00:00', 9, 10, 0, 0, 1, 0, 4, 1, 1, 178, 192),
(21, '2022-03-29', '19:00:00', 2, 6, 1, 0, 1, 2, 3, 2, 1, 14, 219),
(22, '2022-03-30', '18:30:00', 3, 7, 0, 1, 2, 2, 2, 2, 1, 24, 228);

-- --------------------------------------------------------

--
-- Struktura tabele `tekma_igralec`
--

CREATE TABLE `tekma_igralec` (
  `IgralecID` int(11) NOT NULL,
  `TekmaID` int(11) NOT NULL,
  `kdajJezacev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `tekma_igralec`
--

INSERT INTO `tekma_igralec` (`IgralecID`, `TekmaID`, `kdajJezacev`) VALUES
(1, 5, 1),
(1, 21, 0),
(2, 5, 1),
(2, 21, 1),
(3, 5, 0),
(4, 5, 1),
(4, 21, 1),
(5, 5, 86),
(5, 21, 63),
(9, 5, 1),
(9, 21, 0),
(10, 5, 1),
(10, 21, 1),
(11, 5, 1),
(11, 21, 1),
(12, 5, 0),
(12, 21, 84),
(13, 5, 1),
(13, 21, 1),
(14, 5, 1),
(14, 21, 1),
(15, 5, 1),
(15, 21, 71),
(16, 5, 69),
(16, 21, 0),
(17, 5, 78),
(18, 21, 1),
(19, 5, 1),
(19, 21, 1),
(20, 5, 1),
(21, 5, 1),
(21, 22, 1),
(22, 5, 1),
(22, 22, 1),
(23, 5, 1),
(23, 22, 1),
(24, 5, 1),
(24, 22, 1),
(25, 5, 1),
(25, 22, 0),
(26, 5, 1),
(26, 22, 1),
(28, 5, 1),
(28, 22, 1),
(29, 5, 1),
(30, 5, 1),
(30, 22, 1),
(32, 5, 1),
(32, 22, 1),
(33, 5, 1),
(33, 22, 68),
(34, 5, 69),
(35, 5, 69),
(36, 5, 82),
(36, 22, 1),
(37, 17, 0),
(38, 17, 1),
(39, 17, 1),
(40, 17, 1),
(42, 17, 1),
(44, 17, 1),
(45, 5, 0),
(46, 5, 0),
(47, 5, 0),
(47, 22, 1),
(48, 5, 0),
(48, 22, 0),
(49, 5, 0),
(50, 5, 0),
(50, 22, 76),
(51, 5, 0),
(51, 21, 0),
(52, 5, 0),
(53, 5, 0),
(54, 5, 0),
(54, 21, 0),
(56, 17, 1),
(58, 17, 1),
(59, 17, 1),
(60, 17, 1),
(61, 17, 1),
(62, 17, 0),
(63, 17, 72),
(64, 17, 0),
(65, 17, 72),
(66, 17, 0),
(67, 17, 0),
(68, 17, 78),
(69, 17, 1),
(70, 17, 1),
(71, 17, 1),
(72, 17, 1),
(73, 17, 1),
(74, 17, 1),
(75, 17, 1),
(76, 17, 1),
(77, 17, 1),
(78, 17, 1),
(79, 17, 1),
(80, 17, 0),
(81, 17, 0),
(82, 17, 0),
(83, 17, 63),
(84, 17, 0),
(85, 17, 0),
(86, 17, 78),
(87, 17, 0),
(88, 17, 0),
(89, 17, 1),
(90, 17, 0),
(91, 18, 1),
(91, 21, 1),
(92, 18, 1),
(92, 21, 0),
(93, 18, 1),
(94, 18, 1),
(94, 21, 1),
(95, 18, 1),
(95, 21, 1),
(96, 18, 1),
(96, 21, 1),
(97, 18, 1),
(97, 21, 1),
(98, 18, 1),
(98, 21, 1),
(99, 18, 1),
(99, 21, 1),
(100, 18, 1),
(101, 18, 1),
(101, 21, 1),
(102, 18, 0),
(102, 21, 0),
(103, 18, 0),
(103, 21, 1),
(104, 18, 0),
(105, 18, 0),
(105, 21, 0),
(106, 18, 0),
(106, 21, 63),
(107, 18, 83),
(107, 21, 0),
(108, 18, 0),
(108, 21, 0),
(109, 18, 0),
(110, 18, 75),
(110, 21, 1),
(111, 18, 1),
(112, 18, 1),
(113, 18, 1),
(114, 18, 1),
(115, 18, 1),
(116, 18, 1),
(117, 18, 1),
(118, 18, 1),
(119, 18, 1),
(120, 18, 1),
(121, 18, 1),
(122, 18, 0),
(123, 18, 0),
(124, 18, 0),
(125, 18, 0),
(126, 18, 0),
(127, 18, 78),
(128, 18, 0),
(129, 18, 84),
(130, 18, 70),
(131, 19, 1),
(131, 22, 1),
(132, 19, 1),
(132, 22, 0),
(133, 19, 1),
(133, 22, 1),
(134, 19, 1),
(134, 22, 1),
(135, 19, 1),
(135, 22, 1),
(136, 19, 1),
(137, 19, 1),
(138, 19, 1),
(138, 22, 1),
(139, 19, 1),
(139, 22, 78),
(140, 19, 1),
(140, 22, 1),
(141, 19, 1),
(141, 22, 0),
(142, 19, 0),
(142, 22, 0),
(143, 19, 83),
(143, 22, 1),
(144, 19, 0),
(145, 19, 0),
(145, 22, 0),
(146, 19, 0),
(147, 19, 0),
(147, 22, 0),
(148, 19, 0),
(148, 22, 89),
(149, 19, 80),
(149, 22, 1),
(150, 19, 68),
(150, 22, 1),
(151, 19, 1),
(152, 19, 1),
(153, 19, 1),
(154, 19, 1),
(155, 19, 1),
(156, 19, 1),
(157, 19, 1),
(158, 19, 1),
(159, 19, 1),
(160, 19, 1),
(161, 19, 1),
(162, 19, 0),
(163, 19, 0),
(164, 19, 0),
(165, 19, 0),
(166, 19, 88),
(167, 19, 0),
(168, 19, 87),
(169, 19, 78),
(170, 19, 0),
(171, 20, 1),
(172, 20, 1),
(173, 20, 1),
(174, 20, 1),
(175, 20, 1),
(176, 20, 1),
(177, 20, 1),
(178, 20, 1),
(179, 20, 1),
(180, 20, 1),
(181, 20, 1),
(182, 20, 0),
(183, 20, 90),
(184, 20, 0),
(185, 20, 90),
(186, 20, 0),
(187, 20, 0),
(188, 20, 0),
(189, 20, 0),
(190, 20, 0),
(191, 20, 1),
(192, 20, 1),
(193, 20, 1),
(194, 20, 1),
(195, 20, 1),
(196, 20, 1),
(197, 20, 1),
(198, 20, 1),
(199, 20, 1),
(200, 20, 1),
(201, 20, 1),
(202, 20, 0),
(203, 20, 0),
(204, 20, 0),
(205, 20, 0),
(206, 20, 60),
(207, 20, 0),
(208, 20, 0),
(209, 20, 76),
(210, 20, 81),
(211, 21, 1),
(212, 21, 1),
(213, 21, 0),
(214, 21, 0),
(215, 21, 0),
(217, 21, 0),
(218, 21, 1),
(219, 21, 1),
(220, 22, 1),
(221, 22, 0),
(222, 22, 0),
(223, 22, 45),
(224, 22, 0),
(225, 22, 0),
(226, 22, 0),
(227, 22, 1),
(228, 22, 1),
(229, 22, 89);

-- --------------------------------------------------------

--
-- Struktura tabele `trener`
--

CREATE TABLE `trener` (
  `TrenerID` int(11) NOT NULL,
  `Ime` varchar(20) NOT NULL,
  `Priimek` varchar(20) NOT NULL,
  `DatumRojstva` date NOT NULL,
  `drzava` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `trener`
--

INSERT INTO `trener` (`TrenerID`, `Ime`, `Priimek`, `DatumRojstva`, `drzava`) VALUES
(1, 'Mikel', 'Arteta', '1982-03-26', 'Španija'),
(2, 'Thomas', 'Tuchel', '1973-08-29', 'Nemčija'),
(3, 'Steven', 'Gerrard', '1980-05-30', 'Anglija'),
(4, 'Brendan', 'Rodgers', '1973-01-26', 'Severna Irska'),
(5, 'Jurgen', 'Klopp', '1967-06-16', 'Nemčija'),
(6, 'Josep', 'Guardiola', '1971-01-18', 'Španija'),
(7, 'Ralf', 'Rangnick', '1958-06-29', 'Nemčija'),
(8, 'Antonio', 'Conte', '1969-07-31', 'Italija'),
(9, 'David', 'Moyes', '1963-04-25', 'Škotska'),
(10, 'Bruno', 'Lage', '1976-05-12', 'Portugalska');

-- --------------------------------------------------------

--
-- Struktura tabele `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `uporabnik` varchar(20) NOT NULL,
  `geslo` varchar(60) NOT NULL,
  `email` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `user`
--

INSERT INTO `user` (`userID`, `uporabnik`, `geslo`, `email`) VALUES
(9, 'Miha123', '25d55ad283aa400af464c76d713c07ad', 'miha.vodice1@gmail.com'),
(10, 'test', '25d55ad283aa400af464c76d713c07ad', 'test@gmail.com'),
(11, 'Stane', '25d55ad283aa400af464c76d713c07ad', 'miha.kastelic03@gmail.com');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `ekipa`
--
ALTER TABLE `ekipa`
  ADD PRIMARY KEY (`EkipaID`);

--
-- Indeksi tabele `gol`
--
ALTER TABLE `gol`
  ADD PRIMARY KEY (`golID`),
  ADD KEY `igralecID` (`igralecID`),
  ADD KEY `tekmaID` (`tekmaID`);

--
-- Indeksi tabele `igralec`
--
ALTER TABLE `igralec`
  ADD PRIMARY KEY (`IgralecID`);

--
-- Indeksi tabele `kazen`
--
ALTER TABLE `kazen`
  ADD PRIMARY KEY (`KazenID`),
  ADD KEY `igralecID` (`igralecID`),
  ADD KEY `TekmaID` (`TekmaID`);

--
-- Indeksi tabele `lestvica`
--
ALTER TABLE `lestvica`
  ADD PRIMARY KEY (`SezonaID`,`ekipaID`),
  ADD KEY `ekipaID` (`ekipaID`);

--
-- Indeksi tabele `menjava`
--
ALTER TABLE `menjava`
  ADD PRIMARY KEY (`menjavaID`),
  ADD KEY `TekmaID` (`TekmaID`),
  ADD KEY `igralecIZ` (`igralecIZ`),
  ADD KEY `igralecV` (`igralecV`);

--
-- Indeksi tabele `sezona`
--
ALTER TABLE `sezona`
  ADD PRIMARY KEY (`SezonaID`);

--
-- Indeksi tabele `sezona_igralec`
--
ALTER TABLE `sezona_igralec`
  ADD PRIMARY KEY (`SezonaID`,`IgralecID`,`ekipaID`),
  ADD KEY `ekipaID` (`ekipaID`),
  ADD KEY `IgralecID` (`IgralecID`);

--
-- Indeksi tabele `sezona_sodnik`
--
ALTER TABLE `sezona_sodnik`
  ADD PRIMARY KEY (`SezonaID`,`sodnikID`),
  ADD KEY `sodnikID` (`sodnikID`);

--
-- Indeksi tabele `sezona_trener`
--
ALTER TABLE `sezona_trener`
  ADD PRIMARY KEY (`SezonaID`,`trenerID`,`EkipaID`),
  ADD KEY `EkipaID` (`EkipaID`),
  ADD KEY `trenerID` (`trenerID`);

--
-- Indeksi tabele `sodnik`
--
ALTER TABLE `sodnik`
  ADD PRIMARY KEY (`SodnikID`);

--
-- Indeksi tabele `tekma`
--
ALTER TABLE `tekma`
  ADD PRIMARY KEY (`TekmaID`),
  ADD KEY `SodnikID` (`SodnikID`),
  ADD KEY `domaci` (`domaci`),
  ADD KEY `gosti` (`gosti`),
  ADD KEY `Sezona` (`Sezona`);

--
-- Indeksi tabele `tekma_igralec`
--
ALTER TABLE `tekma_igralec`
  ADD PRIMARY KEY (`IgralecID`,`TekmaID`),
  ADD KEY `TekmaID` (`TekmaID`);

--
-- Indeksi tabele `trener`
--
ALTER TABLE `trener`
  ADD PRIMARY KEY (`TrenerID`);

--
-- Indeksi tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `uporabnik` (`uporabnik`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `ekipa`
--
ALTER TABLE `ekipa`
  MODIFY `EkipaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT tabele `gol`
--
ALTER TABLE `gol`
  MODIFY `golID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT tabele `igralec`
--
ALTER TABLE `igralec`
  MODIFY `IgralecID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT tabele `kazen`
--
ALTER TABLE `kazen`
  MODIFY `KazenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT tabele `menjava`
--
ALTER TABLE `menjava`
  MODIFY `menjavaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT tabele `sezona`
--
ALTER TABLE `sezona`
  MODIFY `SezonaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT tabele `sodnik`
--
ALTER TABLE `sodnik`
  MODIFY `SodnikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT tabele `tekma`
--
ALTER TABLE `tekma`
  MODIFY `TekmaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT tabele `trener`
--
ALTER TABLE `trener`
  MODIFY `TrenerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT tabele `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `gol`
--
ALTER TABLE `gol`
  ADD CONSTRAINT `gol_ibfk_1` FOREIGN KEY (`igralecID`) REFERENCES `igralec` (`IgralecID`),
  ADD CONSTRAINT `gol_ibfk_2` FOREIGN KEY (`tekmaID`) REFERENCES `tekma` (`TekmaID`);

--
-- Omejitve za tabelo `kazen`
--
ALTER TABLE `kazen`
  ADD CONSTRAINT `kazen_ibfk_1` FOREIGN KEY (`igralecID`) REFERENCES `igralec` (`IgralecID`),
  ADD CONSTRAINT `kazen_ibfk_2` FOREIGN KEY (`TekmaID`) REFERENCES `tekma` (`TekmaID`);

--
-- Omejitve za tabelo `lestvica`
--
ALTER TABLE `lestvica`
  ADD CONSTRAINT `lestvica_ibfk_1` FOREIGN KEY (`ekipaID`) REFERENCES `ekipa` (`EkipaID`),
  ADD CONSTRAINT `lestvica_ibfk_2` FOREIGN KEY (`SezonaID`) REFERENCES `sezona` (`SezonaID`);

--
-- Omejitve za tabelo `menjava`
--
ALTER TABLE `menjava`
  ADD CONSTRAINT `menjava_ibfk_3` FOREIGN KEY (`TekmaID`) REFERENCES `tekma` (`TekmaID`),
  ADD CONSTRAINT `menjava_ibfk_4` FOREIGN KEY (`igralecIZ`) REFERENCES `igralec` (`IgralecID`),
  ADD CONSTRAINT `menjava_ibfk_5` FOREIGN KEY (`igralecV`) REFERENCES `igralec` (`IgralecID`);

--
-- Omejitve za tabelo `sezona_igralec`
--
ALTER TABLE `sezona_igralec`
  ADD CONSTRAINT `sezona_igralec_ibfk_1` FOREIGN KEY (`ekipaID`) REFERENCES `ekipa` (`EkipaID`),
  ADD CONSTRAINT `sezona_igralec_ibfk_2` FOREIGN KEY (`IgralecID`) REFERENCES `igralec` (`IgralecID`),
  ADD CONSTRAINT `sezona_igralec_ibfk_3` FOREIGN KEY (`SezonaID`) REFERENCES `sezona` (`SezonaID`);

--
-- Omejitve za tabelo `sezona_sodnik`
--
ALTER TABLE `sezona_sodnik`
  ADD CONSTRAINT `sezona_sodnik_ibfk_1` FOREIGN KEY (`SezonaID`) REFERENCES `sezona` (`SezonaID`),
  ADD CONSTRAINT `sezona_sodnik_ibfk_2` FOREIGN KEY (`sodnikID`) REFERENCES `sodnik` (`SodnikID`);

--
-- Omejitve za tabelo `sezona_trener`
--
ALTER TABLE `sezona_trener`
  ADD CONSTRAINT `sezona_trener_ibfk_1` FOREIGN KEY (`EkipaID`) REFERENCES `ekipa` (`EkipaID`),
  ADD CONSTRAINT `sezona_trener_ibfk_2` FOREIGN KEY (`SezonaID`) REFERENCES `sezona` (`SezonaID`),
  ADD CONSTRAINT `sezona_trener_ibfk_3` FOREIGN KEY (`trenerID`) REFERENCES `trener` (`TrenerID`);

--
-- Omejitve za tabelo `tekma`
--
ALTER TABLE `tekma`
  ADD CONSTRAINT `tekma_ibfk_1` FOREIGN KEY (`SodnikID`) REFERENCES `sodnik` (`SodnikID`),
  ADD CONSTRAINT `tekma_ibfk_2` FOREIGN KEY (`domaci`) REFERENCES `ekipa` (`EkipaID`),
  ADD CONSTRAINT `tekma_ibfk_3` FOREIGN KEY (`gosti`) REFERENCES `ekipa` (`EkipaID`),
  ADD CONSTRAINT `tekma_ibfk_4` FOREIGN KEY (`Sezona`) REFERENCES `sezona` (`SezonaID`);

--
-- Omejitve za tabelo `tekma_igralec`
--
ALTER TABLE `tekma_igralec`
  ADD CONSTRAINT `tekma_igralec_ibfk_1` FOREIGN KEY (`IgralecID`) REFERENCES `igralec` (`IgralecID`),
  ADD CONSTRAINT `tekma_igralec_ibfk_2` FOREIGN KEY (`TekmaID`) REFERENCES `tekma` (`TekmaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
