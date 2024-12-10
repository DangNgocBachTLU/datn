-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 11:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datn`
--

-- --------------------------------------------------------

--
-- Table structure for table `auths`
--

CREATE TABLE `auths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_questions`
--

CREATE TABLE `e_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `correct_answer` enum('a','b','c','d') NOT NULL,
  `level` enum('Dễ','Trung bình','Khó') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_questions`
--

INSERT INTO `e_questions` (`id`, `question`, `a`, `b`, `c`, `d`, `correct_answer`, `level`, `created_at`, `updated_at`) VALUES
(1, 'The mausoleum is ................. by Thien Thu mountain, two towering columns and a vast expanse of water', 'feed', 'feeding', 'fed', 'feeds', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(2, 'Put plants ............... a window so that they will get enough light.', 'near to', 'near of', 'next to', 'nearly', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(3, 'Employers often require that candidates have not only a degree .............\r\n', 'but two years experience', 'also two years experience', 'but also two-year experience', 'but more two years experience', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(4, 'Richard Nixon had been a lawyer and ............... before he entered politics.', 'served in the Navy as an officer', 'an officer in the Navy', 'the Navy had him as an officer', ' did service in the Navy as an office', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(5, 'If one of the participants in a conversation wonders ............... no real communication has taken place', 'what said the other person', 'what the other person said', 'what did the other person say\r\n', 'what was the other person saying', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(6, 'The salary of a bus driver is much higher ................', ' in comparison with the salary of a teacher', 'than a teacher', 'than that of a teacher', 'to compare as a teacher', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(7, 'Professional people expect ............... when it is necessary to cancel an appointment.\r\n', 'you to call them', 'that you would call them', 'your calling them', ' that you are calling them', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(8, 'Sedimentary rocks are formed below the surface of the earth ............... very\r\nhigh temperatures and pressures.', 'where there are', 'there are', 'where are there', 'there are where', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(9, 'Farmers look forward to ............... every summer.', 'participating in the county fairs', 'participating in the county fairs', ' be participating in the county fairs', 'have participated in the county fai', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(10, 'Clipper ships were the swiftest sailing ships that …………………. to sea and the most beautiful.', 'ever were put', 'were ever putted', 'were ever put', ' ever were putted', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(11, 'The ships had their days of …………………. in the 1840s and 1850s.', 'glorious', 'glory', 'glorify', ' gloriously', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(12, 'Tea loses its flavor quickly …………………… in the hold of a vessel.', 'when storing', 'stored', 'when stored', 'storing', 'c', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(13, 'Earl was one of the first American artists …………………. landscapes.', 'painting', 'painted', 'for painting', 'to paint', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(14, 'The crime rate has continued to rise in American cities despite efforts on the part of both government and private citizens to curb ................', 'them', 'him', 'its', 'it', 'd', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(15, ' In 1778, he ……………… to London to study with Benjamin West for four years.', 'has gone', 'had gone', 'would go', 'went', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(16, ' No one has been able to satisfactorily explain how or ………………. the Moon sporadically sparks.', 'when', 'why', 'what', 'which', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(17, 'The basic fiber-optics system is called a fiberscope, …………………. consists of two bundles of fibers', 'which', 'in which', 'where', 'what', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(18, 'Physicians can look into the lungs, heart and other areas that were formerly ……………….. to the', 'accessibly', 'access', 'accessible', 'inaccessible', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(19, '............... his highly individual conceptions of music and chaos, John Cage became a leading figure in avant-garde music.', 'Such was', 'Due to', 'Because from', 'That', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(20, 'Sanford Meisner ............... the Neighborhood Playhouse in New York City.', 'founding and directing', 'who founded and directed', 'founded and directed', 'in finding and directing', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(21, 'Experiments in the sonic imaging of moving objects ............... in both the United States and Europe well before the Second World War.\r\n', 'were conducting', 'have been conducted', 'had been conducted', 'being conducted', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(22, '. ............... billions and billions of stars exist in the vast space beyond our Milky Way galaxy.', 'That is estimated', 'An estimate that', 'That the estimate', 'It is estimated tha', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(23, '............... gene-bearing bodies within the nuclei of living organisms.', 'Chromosomes', 'Chromosomes that are', 'Chromosomes are', 'Chromosomes while they are', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(24, 'Abner Doubleday, ..............., was credited with the invention of baseball in 1839.', 'who become a Union army general', 'which became a Union army general', 'who were a Union army general', 'a Union army general', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(25, ' ............... photosynthesis were to stop, life would disappear from the planet Earth relatively quickly.', 'For', 'However', 'If', 'Although', 'c', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(26, 'Each fiber in the bundle …………….. only a tiny fraction of the total image.', 'transmit', 'transmitted', 'transmits', 'to transmit', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(27, 'Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.', 'on completion of', 'the completion of', 'completion of', 'their completion of', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(28, 'This is the factory \r\n ................................ at work.', 'they are', 'where they are', 'where are', 'in where they are', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(29, 'America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life', 'a farmer had been', 'a farmer had been', 'farming', 'being a farmer', 'b', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(30, 'Napoleon ................... the West Indian island of Santo Domingo in 1801', 'attacked', 'is attacking', 'has attracted', 'attacking', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(31, 'Modern industrial methods have supplanted individual crafts, ................... stone carvers, coopers, and cobblers virtually extinct.\r\n', 'make blacksmiths,', 'made blacksmiths,', 'making them blacksmiths,', ' making blacksmiths,', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(32, 'Not only knowledge and skills, but also attitudes ................... in school for students\' future adjustment to society.\r\n', 'when cultivated', 'cultivated', ' which need to be cultivated', ' need to be cultivated', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(33, 'On Mercator\'s maps, the far northern and southern polar regions are ...................', 'greatly exaggerated in area.', 'exaggerating greatly in area.', 'greatly exaggerate in area.', 'great exaggeration in area.', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(34, 'On the slope of Long\'s Peak in Colorado ................... the ruin of a gigantic tree.', 'that lies', 'lies', 'where lies', 'lie', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(35, '................... in Shanghai than in any other city in China.', 'More people live', 'More people living', 'It has more people', 'More living people', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(36, 'The earth spins on its axis and ................... 23 hours, 56 minutes and 4.09 seconds for one complete rotation.', 'need', 'needed', 'needing', 'needs', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(37, '................... on the environment for the gratification of its needs.', 'Each organism to depend', 'Every organism depends', 'All organisms depending', 'Many organisms can depend', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(38, 'Of Charles Dickens\' many novels, expectations perhaps ................... to many readers.', 'the most satisfying one', 'most satisfying on', 'more than satisfying on', 'the more satisfying than', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(39, '..................., the nation\'s capital remained in Philadelphia, Pennsylvania.', 'While designing Washington, D.C.', ' Washington, D.C., was designed', 'While Washington, D.C., was being designed', 'Washington, D.C., designed', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(40, 'Children learn primarily by ................... the world around them.', 'experiencing directly of', 'experience direct', 'directly physical experience', 'direct physical experience of', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(41, 'It is earth\'s gravity that ....... people their weight.', 'gives', 'give', 'giving', 'given', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(42, 'Generally speaking, people should have ................... as their desires will allow.', 'much education', 'as much education', 'education', 'for education', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(43, 'A dolphin six ................... length can move as fast as most ships', 'foot in', 'feet in', 'foot of', 'feet of', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(44, 'With new technology, cameras can take pictures of underwater valleys ................... color.', 'within', 'for', 'in', 'by', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(45, '................. the fifth largest among the nine planets that make up our solar system.', 'The Earth is', 'The Earth being', 'that the Earth is', 'Being the Earth', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(46, 'In mathematics, a variable is a symbol ................. some element of a set.', 'and representing', 'represents', 'that represents', 'represents that', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(47, '.................. actress\'s life is in many ways unlike that of other women.', 'An', 'A', 'As the', 'That the', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(48, 'About 20 miles from Boston, .................. a little town named Concord that has a rich history.\r\n', 'has', 'there is', 'there are', 'where is', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(49, 'An advisor to both Franklin Delano Roosevelt and Harry Truman, ................. of Bethune Cookman College.', 'Dr. Mary Mcleod Bethune was the founder', 'Dr. Mary Mcleod Bethune, who was the founder', 'the founder was Dr. Mary Mcleod Bethune\r\n', 'did the founder Dr. Mary Mcleod Bethune\r\n', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(50, 'Warmth, moisture, and oxygen are three necessary requirements ................. most seedlings.', 'for cultivating', 'for cultivate', ' as cultivating', 'can cultivate', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(51, 'They share the housework …..................... between them.', 'euqally', 'equal', 'they are equal', 'and equal', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(52, 'A well-known large natural lake is Lake Tahoe, ................. straddles the California-Nevada border.', 'and', 'which', 'since', 'for', 'b', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(53, 'Before ................., they used horse-drawn wooden carts.', 'farmers have had tractors', 'tractors owned by farmers', 'having tractors farmers', 'farmers had tractors', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(54, 'Tuna, ................., may weigh up to 1,000 pounds.', 'is the sea giant', 'can be giants of the sea', 'one of the sea giants', 'the sea of the giant', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(55, 'Physical fitness exercises can cause injuries ................. the participants are not careful.', 'that', 'to', 'if', 'which', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(56, 'Total weight of all the ants in the world is much greater than .................', 'to all human beings', 'to all human beings', 'that of all human beings', 'is of all human beings', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(57, '................. for overall health.', 'Extra fiber in one\'s diet is helpful', 'Extra fiber is one\'s helpful diet', 'Helpful one\'s diet is extra fiber', 'One\'s diet is helpful in extra fiber', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(58, 'Elephants scratch themselves with sticks ..................', 'holding in their trunk', 'in their trunks holding', 'hold in their trunks', 'held in their trunks', 'd', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(59, 'Van Gogh\'s \"Sunflowers\" .............. $39.9 million, three times the previous record.', 'once sold for', 'for sale once', 'selling for once', 'for once sold\r\n', 'a', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(60, 'Some monkeys, ................., use their tails in a way similar to a hand.', 'like the spider monkey', 'spider monkey likes', 'to the spider monkey', 'the monkey likes the spide', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(61, 'Black, red, and even bright pink diamonds ......................\r\n', 'occasionally to find', 'occasionally found', 'have occasionally been found', 'have occasionally found', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(62, 'Between the California Coast Range and the Sierra Nevada .....................', 'great Central Valley', 'the great Central Valley', ' being the great Central Valley', 'lies the great Central Valley', 'd', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(63, 'It is gravity ................. objects toward the earth.', 'pull', 'that pulls', 'to pull', 'what pulls', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(64, '................. their territories but rather than fight, they howl', 'Wolves protectively jealous', 'Jealous of wolves', 'Protection of wolves', 'Wolves jealously protect', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(65, '................. strength of 70 horses, a forklift toils all day long in a warehouse', 'Because the', 'With the', 'Some', 'The', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(66, 'The growth of two-income families in the United States .................. of people moving to a new social class.', 'has resulted in millions', 'results of millions', 'millions of results', 'resulting in millions', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(67, 'Using a globe can be ................. it is educational.', 'enjoyable', ' to enjoy as', 'as enjoyable', 'as enjoyable as', 'd', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(68, 'Each mediocre book we read means one less great book that we would otherwise have a chance ..................', 'to read them', 'read', 'reading', 'to read', 'd', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(69, 'Most accidents in the home can be prevented by ................. elimination of hazards.', 'that', 'that the', 'there is a', 'the', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(70, '................. problems in sailing in tropical seas is the coral reefs.', 'One of the biggest', 'The biggest one', 'Of the biggest one', 'There are the biggest', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(71, 'The strongest dump trucks work in rock quarries, ................. tons of rocks and soil at one time', ' that they move', 'they move', 'where they move', 'which they move', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(72, 'Alice Freeman, ................. to head Wellesley College at age 27, is one of the youngest college presidents in history.', 'who was appointed\r\n', 'has been appointed', 'that is appointed', 'is appointed\r\n', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(73, 'Helen Keller lost both her sight and hearing after a severe illness .................', 'of her age in 19 months', 'she was 19 months old', 'when she was 19 months old', 'when 19 months old she wa', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(74, 'Because aluminum is lighter and cheaper ............., it is frequently used for high-tension power transmission.', 'as copper', 'than copper', 'for copper', 'more copper', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(75, 'It is only recently that ballets have been based on themes ............. American life.', 'reflecting', 'reflects', 'is reflecting', 'reflected', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(76, 'Poison oak generates irritating poisons ............. even if people merely brush against the plants.', 'they can affect people', 'that can affect people', 'what can effect people', 'which do they affect', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(77, ' ............. ants live in colonies, keep farms, go to war, carry off slaves, and have a society somewhat like human beings.', 'Studies of ant life show that', 'Studies of ant life that', 'That is studied', 'That the studies of ant life', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(78, 'Generic medications are just as ............., and much less expensive.', 'effectively brand-name products', 'brand-name products effective', 'brand-name products as effective', 'effective as brand-name products', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(79, '............. is no way to tell the exact number of heroin addicts in the United\r\nStates.', 'It', 'There', 'What', 'Each', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(80, 'Ernest Hemingway is ............. of modern fiction.', 'one of the molders', 'the molders one', 'who is one of the molders', 'the molders who is the one', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(81, '............. occasions for congratulations.', 'Birthdays that usually considered', 'Usually considering birthdays', 'Birthdays are usually considered', 'That considered birthdays usually', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(82, 'Forty-niners ............. to California for gold in 1848.', 'rushed\r\n', 'are rushed\r\n', 'have rushed', 'rushing', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(83, 'In order for people to work together effectively, they need ............. each other\'s needs.', 'to be sensitive to', 'is sensitive for', 'sensitivity', 'sensitive', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(84, ' It is good form to use the name of the person ..............', 'who are greeting', 'you are greeting', 'which you are greeting', 'greeting for you', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(85, '............. the promotion of health and to helping people avoid injury and disease.', 'To commit the Red Cross', 'The Red Cross to commit', 'Committed to the Red Cross is', 'The Red Cross is committed to', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(86, 'People usually can get a sufficient amount of the calcium their bodies ............. from the food they consume.', 'need', 'needs', 'needing', 'to need', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(87, 'It is possible ............. may assist some trees in saving water in the winter.', 'the leaves are lost', 'when leaves have lost', 'that the loss of leaves', 'to lose leaves', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(88, 'Hollywood, the heart of America\'s motion picture industry, ............. of Los Angeles a century ago.', 'was only a quiet suburb', 'only quiet suburb was', 'quiet suburb only was', 'suburb was quiet only', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(89, 'Kitchen appliances called blenders became ............. in the 1930s, when Stephen J. Poplawski developed a machine that excelled at making his favorite drink.', 'establish', 'establishing', 'established', 'which establish', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(90, 'Built at the beginning of the century, the Library of Congress houses one of the largest ............. collections of books in the world.', 'and fine', 'and finest', 'or finest', 'yet fine', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(91, 'In the preparation of fibrous material for production uses, stiff woody fibers from plants ............. fibers from animal sources.', 'the most heat the', 'the most heat the', 'than more heat needed', 'need the more heat that', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(92, 'Partnership is an association of two or more individuals who ............. together to develop a business.', 'worked', 'the work', 'work', 'working', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(93, 'Chosen as the nation\'s capital at the end of the American Civil War, ............. a city of over a million people.', 'Washington, D.C., is now', 'for Washington, D.C.', 'to Washington, D.C.', 'now in Washington, D.C.', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(94, 'Within an area of only 100 miles, Death Valley sinks to 282 feet below sea level while Mount Whitney ............. to a height of 14,494 feet.\r\n', 'soaring', 'soar', 'soared', 'soars', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(95, 'The cosmopolitan flavor of San Francisco is enhanced by ............. shops and restaurants.', 'an ethnic', 'its many ethnic', 'its ethnicity', 'ethnicity', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(96, ' ............. that increasing numbers of compact-disc players will be bought by consumers in the years to come', 'They are anticipated', 'In anticipation', 'Anticipating', 'It is anticipated', 'd', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(97, ' Birds all over the world ............. in distances up to thousands of miles.', 'migrating', 'migrated', 'migrate', 'are migrated', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(98, 'Cellulose, which ............. for making paper, can be found in all plants.', 'is used', 'use', 'are used', 'is using', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(99, '............. , human beings have relatively constant body temperature.', 'Alike all mammal', 'Alike all mammals', 'Like all mammals', 'Like all mammal', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(100, 'So far there is no vaccine ............. in sight for the common cold.', 'or curing', 'has cured', 'or cure', 'having cured', 'c', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(101, 'The Louisiana Territory, an area ............. the size of France, was bought by the United States from France for $15,000,000 in 1803.', 'than more four times', 'more than four times', 'four times than more', 'is four times more than', 'b', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(102, 'Despite claims that filters and low-tar tobacco make smoking somewhat safer, in fact they only marginally reduce, ............. eliminate the hazards.', 'none', 'no', 'not', 'nor', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(103, '............. many of the designs for the new capital were considered lost forever, Benjamin Banneker helped reproduce the original plans.\r\n', 'When', 'During', 'If as', 'How', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(104, 'Few natural elements exist in ............. that they are rarely seen in their natural environments.\r\n', 'such small quantities', 'so small quantities', 'very small quantities', 'small quantity', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(105, 'Generally speaking, every person ............. the potential to be a teacher, to some extent.\r\n', 'has', 'to have', 'having', 'have', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(106, ' ............. business, a merger is a combination of two or more corporations under one management.', 'The', 'At', 'On', 'In', 'd', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(107, '............. of commodities by air began in the 1920s at the same time as airmail service.', 'The shipping', 'A ship', 'The shipped', 'To ship', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(108, 'Jan Malzeliger\'s invention, the shoe-lasting machine, ............. production but it also cut the cost of shoe production by half.', 'not only increased', 'not increased only', 'increased only', 'only have increased', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(109, 'It can sometimes ............. a home.', 'to take months to sell', ' take several months to sell', 'selling takes several months', ' to sell taking several months', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(110, 'Jellyfish are probably ............. on Earth.', 'most numerous predators', 'the most numerous predators', 'most numerous of predators', 'the most predators', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(111, 'In the United States ............. is the most concentrated is New Orleans.', 'French influence the city', 'the city where French influence', 'where the city influences French', 'where the French influence the city', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(112, 'A log grabber has a long arm ............., which stretches out to pick up logs.', 'calls a jib', 'calling a jib', 'a jib called', 'called a jib', 'd', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(113, 'A home computer ............. an opportunity for convenient and efficient work at home.', 'provides', 'to be providing', 'which provides', 'providing it', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(114, ' Eli Whitney\'s milling machine remained unchanged for a century and a half because ............. was so efficient.\r\n', 'it', 'he', 'of', 'its', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(115, 'Some of the rainwater from clouds evaporates before ..............', 'reaching the ground', 'to reach the ground', 'reach the ground', 'the ground reaches', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(116, 'Once an offending allergen has been identified ............. tests, it is possible for the doctor to give specific desensitizing injections.', 'means of', 'by means of', 'of the means by', 'by means', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(117, 'Sometimes ............. wears people out and is worse than the lack of sleep itself.\r\n', 'to sleep the desire', 'the desire to sleep', 'to desire sleep is', 'the desire to sleep who', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(118, 'Although dissimilar in almost every other respect, birds and insects have both evolved efficient ............. capabilities.', 'fly', 'flying', 'to fly', 'is flying', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(119, 'The wheel, ............. has remained important for 4,000 years, is one of mankind\'s first inventions.', 'how', 'when', 'which', 'about', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(120, 'The wheel, ............. has remained important for 4,000 years, is one of mankind\'s first inventions.', 'The', 'Once', 'That', 'Even', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(121, ' ............. there is a close correlation between stress and illness.', 'Some psychologists believe', 'Believed some psychologists', 'Some psychologists to believe', 'Some psychologists believing', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(122, ' ............. is often used in soups and sauces.', 'Parsley, an inexpensive herb,', 'Parsley, an inexpensive herb,', 'Inexpensive parsley, herb', 'An herb is inexpensive parsley,', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(123, 'Perspiration increases ............. vigorous exercise or hot weather.', 'during', 'when', 'at the time', 'for', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(124, 'Goddard developed the first rocket to fly faster .............', 'than sound is', 'does sound', 'sound', 'than sound', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(125, 'Even if the unemployment rate ............. sharply, the drop may still be temporary.', 'to drop', 'dropping', 'have dropped', 'drops', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(126, 'Studies indicate ............. collecting art today than ever before.', 'there are that more people', 'more people that are', 'that there are more people', 'people there are more', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(127, 'Thieu Tri was a ............... poet who would pen a verse or two at a moment\'s notice.', 'prolific', 'prolifically', 'prolificacy', 'prolificity', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(128, 'I\'ve been to the theater ................... of times.', 'much', 'a little', 'most of', 'few', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(129, 'But ............... of the plays I\'ve seen are modern.', 'a few of', 'a little', 'most', 'many', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(130, 'When I studied Shakespeare, I thought his plays were ............... boring.', 'a great deal of', 'few', 'much', 'many', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(131, '.................. of Shakespeare\'s plays are about history.', 'A few of', 'Many', 'Much', 'A little', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(132, 'They spent ............. time studying Victorian literature.', 'few', 'many', 'a large number of', 'much', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(133, ' .................. popular expressions in our language have interesting background.', 'Little', 'Many', 'A large number', 'Much', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(134, 'At the beginning everybody spoke English very quickly and I couldn\'t understand ........... But after ................. days, it is easier and .................. things I had learnt came back to me.', ' much / a few / many', 'a lot / little / a lot', 'much / much / a great number', 'many / a few / many\r\n', 'a', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(135, 'They ................. in New York next week.', 'arrive', 'will arrive', 'has arrived', 'have arrived', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(136, 'This is the best performance of Hamlet that I ............. in years', 'had seen', 'saw', 'have seen', 'see', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(137, 'They .......... that you are going to be late.', 'will know', 'knew', 'know', 'have known', 'c', 'Khó', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(138, 'The people that I ................. here have been very friendly.', 'to meet', 'meet', 'have met', 'had met', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(139, 'The plug has come out of the .......................', 'sock', 'socket', 'socking', 'soccer', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(140, ' She says that she .......... the bill next week.', 'pays', 'will pay', 'has paid', 'is paying', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(141, 'That is the best book that I ......... on that subject.', 'had read', 'read', 'have read', 'am reading', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(142, 'Yesterday I met the woman who ............... us with the work next month.', 'will help', 'helps', 'has helped', 'is helping', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(143, 'That ........... the best movie that I had seen for a long time.', 'will be', 'has been', 'is', 'was', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(144, 'He said that he .............. me there at 4.30 this afternoon.', 'would meet', 'met', 'will meet', 'meets', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(145, 'Maxwell .......... three dollars for the tie he bought at Macy\'s.', 'had paid', 'paid', 'pays', 'would pay', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(146, 'The salesman was telling me that he ......... ten cars last week.', 'sold', 'had sold', 'would sell', 'has sold', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(147, ' Did Bob say that he ............. from Princeton in 1951?', 'would graduate', 'graduates', 'has graduated', 'had graduated', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(148, 'We bought a used car that had belonged to an old couple who used the car only when they ............ shopping.', 'go', 'went', 'are going', 'has gone', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(149, 'The man who will replace Mr. Stuart ............... yesterday.', 'arrives', 'will arrive', 'arrived', 'had arrived', 'c', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(150, 'We thought that they .............. to Arizona yesterday.', 'would move', 'moved', 'will move', 'had moved', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(151, 'We\'ll wait until she..................', 'arrive', 'arrives', 'will arrive', 'shall arrive', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(152, 'Call Jack as soon as you ............. in town.', 'get', 'gets', 'will get', 'shall get', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(153, 'He knows he has ……………. when he is asked to appear on TV.', 'arrived', 'arrives', 'will arrive', 'shall arrive', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(154, 'I\'ll think about your suggestion while I .......... for you.', 'am waiting', 'will wait', 'wait', 'waits', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(155, 'Before Jack leaves New York, he ............ several new plays.', 'see', 'saw', 'has seen', 'had seen', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(156, 'They will be very happy when they ............... the news.', 'hear', 'will hear', 'heard', 'has heard', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(157, ' I always .......... better after I have rested a while.', 'fell', 'feels', 'will feel', 'haf felt', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(158, 'We will have learned many new words before we ................ through this course.', 'have got', 'got', 'get', 'will get', 'c', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(159, 'It is two o\'clock, and I .................. my homework yet.', 'haven\'t finished', 'didn\'t finish', 'hadn\'t finished', 'don\'t finish', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(160, 'We usually go out to dinner when we ................ late.', 'work', 'worked', 'had worked', 'has worked', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(161, 'She will be ready when he ..................... here.', 'get', 'gets', 'has got', 'will get', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(162, 'The child always cries when his mother ........... out of the house.', 'go', 'goes', 'will go', 'has gone', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(163, 'They often listen to the radio while they ............ in their car.', 'is traveling', 'travel', 'will travel', 'has traveled', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(164, 'We saw several old friends while we ........... in Baltimore.', 'are', 'were', 'has been', 'will be', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(165, 'Raymond ............ two new shirts when he was downtown today.', 'buy', 'bought', 'had bought', 'has bought', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(166, 'After we had had breakfast, we ............ the house.', 'leave', 'left', 'had left', 'has left', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(167, ' I had heard the news before you ................ me about it.', 'tell', 'told', 'has told', 'had told', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(168, 'It ................. when I got up this morning', 'rains', 'rained', 'had rained', 'was raining', 'd', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(169, 'Mary was not feeling well when she ............. down yesterday.', 'fall', 'fell', 'has fallen', 'had fallen', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(170, 'He signed the contract after he ............ each statement carefully.', 'read', 'reads', 'has read', 'had read', 'd', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(171, 'Jim had just turned out the lights when the doorbell ................', 'rings', 'rang', 'has rung', 'had rung', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(172, 'I work so hard that I ................ tired.', 'am', 'was', 'be', 'has been', 'a', 'Trung bình', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(173, 'I\'ll return the books to the library if I ............. time.', 'have', 'had', 'will have', 'would have', 'a', 'Dễ', '2024-11-18 18:36:30', '2024-12-07 02:32:56'),
(174, 'Richard left dirty footmarks wherever he .............', 'go', 'went', 'goes', 'had gone', 'b', 'Trung bình', '2024-11-18 18:36:30', '2024-12-08 12:51:27'),
(175, 'I worked so hard that I ................ tired.', 'am', 'was', 'be', 'has been', 'b', 'Dễ', '2024-11-18 18:36:30', '2024-12-08 12:50:49'),
(176, 'Don\'t handle those cups and saucers as if they ................. made of iron.', 'are', 'were', 'has been', 'had been', 'b', 'Dễ', '2024-12-08 12:55:25', '2024-12-08 12:55:25'),
(177, 'I am standing where I ................ the game.', 'can see', 'could see', 'can\'t see', 'couldn\'t see', 'a', 'Dễ', '2024-12-08 12:56:08', '2024-12-08 12:56:08'),
(178, 'Use the paint-brush as I ................ you yesterday.', 'show', 'showed', 'had showed', 'has showed', 'b', 'Khó', '2024-12-09 09:23:29', '2024-12-09 09:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_19_110256_create_auths_table', 1),
(6, '2024_11_19_140747_create_tests_table', 1),
(7, '2024_11_19_140912_create_e_questions_table', 1),
(8, '2024_11_19_141915_create_test_history_table', 1),
(9, '2024_12_09_144749_create_question_tests_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_tests`
--

CREATE TABLE `question_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_test` int(10) UNSIGNED NOT NULL,
  `id_question` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_tests`
--

INSERT INTO `question_tests` (`id`, `id_test`, `id_question`) VALUES
(1, 1, 21),
(2, 1, 7),
(3, 1, 32),
(4, 1, 138),
(5, 1, 92),
(6, 1, 82),
(7, 1, 102),
(8, 1, 175),
(9, 1, 117),
(10, 1, 10),
(11, 1, 108),
(12, 1, 124),
(13, 1, 43),
(14, 1, 36),
(15, 1, 24),
(16, 1, 91),
(17, 1, 22),
(18, 1, 104),
(19, 1, 5),
(20, 1, 151),
(21, 1, 170),
(22, 1, 78),
(23, 1, 13),
(24, 1, 89),
(25, 1, 127),
(26, 1, 81),
(27, 1, 156),
(28, 1, 118),
(29, 1, 51),
(30, 1, 27),
(31, 1, 46),
(32, 1, 167),
(33, 1, 50),
(34, 1, 4),
(35, 1, 148),
(36, 1, 34),
(37, 1, 165),
(38, 1, 80),
(39, 1, 145),
(40, 1, 45),
(41, 1, 135),
(42, 1, 98),
(43, 1, 119),
(44, 1, 49),
(45, 1, 161),
(46, 1, 61),
(47, 1, 139),
(48, 1, 136),
(49, 1, 96),
(50, 1, 122),
(51, 2, 23),
(52, 2, 125),
(53, 2, 117),
(54, 2, 90),
(55, 2, 103),
(56, 2, 109),
(57, 2, 51),
(58, 2, 17),
(59, 2, 170),
(60, 2, 54),
(61, 2, 92),
(62, 2, 118),
(63, 2, 20),
(64, 2, 43),
(65, 2, 83),
(66, 2, 38),
(67, 2, 69),
(68, 2, 11),
(69, 2, 155),
(70, 2, 28),
(71, 2, 73),
(72, 2, 156),
(73, 2, 171),
(74, 2, 124),
(75, 2, 41),
(76, 2, 164),
(77, 2, 165),
(78, 2, 163),
(79, 2, 45),
(80, 2, 19),
(81, 2, 6),
(82, 2, 167),
(83, 2, 39),
(84, 2, 95),
(85, 2, 80),
(86, 2, 150),
(87, 2, 141),
(88, 2, 46),
(89, 2, 60),
(90, 2, 4),
(91, 2, 122),
(92, 2, 148),
(93, 2, 3),
(94, 2, 97),
(95, 2, 114),
(96, 2, 134),
(97, 2, 25),
(98, 2, 137),
(99, 2, 101),
(100, 2, 68),
(101, 3, 126),
(102, 3, 64),
(103, 3, 146),
(104, 3, 22),
(105, 3, 125),
(106, 3, 18),
(107, 3, 103),
(108, 3, 15),
(109, 3, 115),
(110, 3, 27),
(111, 3, 85),
(112, 3, 51),
(113, 3, 38),
(114, 3, 37),
(115, 3, 53),
(116, 3, 156),
(117, 3, 47),
(118, 3, 11),
(119, 3, 173),
(120, 3, 42),
(121, 3, 164),
(122, 3, 50),
(123, 3, 105),
(124, 3, 142),
(125, 3, 144),
(126, 3, 6),
(127, 3, 145),
(128, 3, 58),
(129, 3, 129),
(130, 3, 97),
(131, 3, 168),
(132, 3, 55),
(133, 3, 174),
(134, 3, 99),
(135, 3, 157),
(136, 3, 149),
(137, 3, 95),
(138, 3, 148),
(139, 3, 150),
(140, 3, 122),
(141, 3, 29),
(142, 3, 178),
(143, 3, 101),
(144, 3, 112),
(145, 3, 52),
(146, 3, 137),
(147, 3, 25),
(148, 3, 12),
(149, 3, 100),
(150, 3, 59);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` enum('Dễ','Trung bình','Khó') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Đề 1', 'Dễ', '2024-12-09 09:26:23', '2024-12-09 09:26:23'),
(2, 'Đề 2', 'Trung bình', '2024-12-09 09:26:48', '2024-12-09 09:26:48'),
(3, 'Đề 3', 'Khó', '2024-12-09 09:26:58', '2024-12-09 09:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `test_history`
--

CREATE TABLE `test_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_test` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_history`
--

INSERT INTO `test_history` (`id`, `id_test`, `id_user`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 6, '2024-12-09 09:34:10', '2024-12-09 09:34:10'),
(2, 2, 1, 0, '2024-12-09 09:40:15', '2024-12-09 09:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('Nam','Nữ','Khác') DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `email`, `gender`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Bách', NULL, NULL, 'bach@gmail.com', NULL, 'bach', '$2y$12$5dcjIzRr.wl0dj0iLNay1OT9hm/PnhDcWlqEBQDGayqeOFzKVxOLa', '2024-12-09 09:15:11', '2024-12-09 09:15:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auths`
--
ALTER TABLE `auths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_questions`
--
ALTER TABLE `e_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `question_tests`
--
ALTER TABLE `question_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_tests_id_test_foreign` (`id_test`),
  ADD KEY `question_tests_id_question_foreign` (`id_question`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_history`
--
ALTER TABLE `test_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_history_id_test_foreign` (`id_test`),
  ADD KEY `test_history_id_user_foreign` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auths`
--
ALTER TABLE `auths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_questions`
--
ALTER TABLE `e_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_tests`
--
ALTER TABLE `question_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test_history`
--
ALTER TABLE `test_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question_tests`
--
ALTER TABLE `question_tests`
  ADD CONSTRAINT `question_tests_id_question_foreign` FOREIGN KEY (`id_question`) REFERENCES `e_questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_tests_id_test_foreign` FOREIGN KEY (`id_test`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `test_history`
--
ALTER TABLE `test_history`
  ADD CONSTRAINT `test_history_id_test_foreign` FOREIGN KEY (`id_test`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_history_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
