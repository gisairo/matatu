-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2016 at 05:16 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `matatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` varchar(255) NOT NULL,
  `route_short_name` int(11) NOT NULL,
  `route_long_name` varchar(255) NOT NULL,
  `route_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `route_id`, `route_short_name`, `route_long_name`, `route_desc`) VALUES
(1, 'route_id', 0, 'route_long_name', 'route_desc'),
(2, '80000002311', 23, 'Kangemi', 'Odeon-Westlands-Kangemi'),
(3, '20100010011', 100, 'Kiambu', ' O.T.C-Pangani-Muthaiga Roundabout-Kiambu Rd-Kiambu Institute-Kiambu'),
(4, '40601005811', 58, 'Buruburu', 'Town to Buruburu'),
(5, '40201002311', 23, 'Kariobangi South', 'Town to K-South'),
(6, '10100011A11', 11, 'Highridge', 'Odeon-AgaKhan-HighRidge'),
(7, '10400010711', 107, 'Ndenderu', 'Odeon-UN-Ruaka-Ndenderu'),
(8, '10300011F11', 11, 'Ruaka', 'Odeon-UN-Ruaka'),
(9, '10300106011', 106, 'Banana', 'Odeon-UN-Ruaka-Banana'),
(10, '70200000811', 8, 'Kibera', 'Railways-NgongRoad-Kibera'),
(11, '70400011111', 111, 'Ngong', 'Railways-NgongRoad-Karen-Ngong'),
(12, '70500004W11', 4, 'Kaberia', 'Railways-NgongRoad-Wanyee-Kaberia'),
(13, '70601000211', 2, 'Dagoretti', 'Railways-NgongRoad-Kawangware-DagorettiMkt'),
(14, '70600010211', 102, 'Kikuyu', 'Railways-NgongRoad-Kawangware-Kikuyu'),
(15, '70100203411', 34, 'Kenyatta', 'Kenyatta-Mbagathi-wilson-Langata'),
(16, '70401000111', 1, 'Dagoretti Market', 'Karen-Karinde-Dagoretti Market'),
(17, '70000010311', 103, 'Wangige', 'Dagoretti Market-Uthiru-Kinoo-Wangige'),
(18, '70000000311', 3, 'Uthiru', 'Dagoretti Corner-Uthiru'),
(19, '50300012C11', 12, 'South C', 'Town-RedCross-Mugoya'),
(20, '50301012D11', 12, 'KPA', 'Town-RedCross-College Of Insurance-Amboseli'),
(21, '80101004811', 48, 'Othaya', 'Odeon-Chiromo-Kileleshwa-Othaya'),
(22, '80500010511', 105, 'Kikuyu', 'Odeon-Westlands-Kangemi-Regen-Kikuyu'),
(23, '80400003011', 30, 'Uthiru', 'Odeon-Westlands-Kangemi-Uthiru'),
(24, '80200004811', 48, 'Kawangware', 'Westlands-ABC-Lavington-Kawangware'),
(25, '70000012911', 129, 'Wangige', 'Kikuyu-Magu-Kingeero-Wangige'),
(26, '50206002411', 24, 'Karen', 'Town-Hardy-Karen'),
(27, '20702000611', 6, 'Eistleigh', 'Konja-Pangani Fly Over-Guru Nanak-Pangani gals-mlango-eistleigh'),
(28, '30100011C11', 11, 'Pangani', 'Odeon-Pangani fly over-pangani girls-mlango-Pangani terminal'),
(29, '30800001411', 14, 'Kariobangi south', 'Ronald Ngala-Juja road-Eastleigh-Huruma-Kariobangi'),
(30, '50204001511', 15, 'Langata', 'Bus Station-Nyayo-Wilson-Langata'),
(31, '50203001611', 16, 'Highrise', 'Bus Station-Nyayo-Tmall-Highrise'),
(32, '30600017A11', 17, 'Kayole ', 'EastLeigh-Rounda-Umoja 2-kayole'),
(33, '21000017B11', 44, 'Mwiki', 'Bus Station-Pangani-Roysabu-Kasarani-Mwiki'),
(34, '30600018C11', 18, 'Eastleigh', 'Eastleigh-Rounda-Dandora-Kayole'),
(35, '20801002511', 25, 'Baba Dogo', 'Odeon-Pangani-Alssops-Baba dogo'),
(36, '30907003211', 32, 'Dandora', 'Otc-Kariokor-Mlango-Rounda-Dandora'),
(37, '70000203311', 33, 'ngummo', 'Race course-Ngong rd-KNH-Ngummo'),
(38, '20807042011', 42, 'Dandora', 'Allsops-Rounda-Dandora'),
(39, '20901043011', 43, 'Ngumba', 'Bus station-Pangani-Alssops-Ngumba'),
(40, '21100004411', 44, 'kahawa', 'Odeon-Pangani-Roysabu-Githurai-Ku'),
(41, '20000004511', 45, 'Kenyatta University', 'Munyu rd-Pangani-Roysabu-Githurai-Ku'),
(42, '30000004611', 46, 'Huruma', 'Ronald Ngala-Juja road-Eastleigh-Huruma'),
(43, '80000115011', 115, 'Limuru', 'Odeon-Westlands-Kangemi-Limuru'),
(44, '20000145011', 45, 'Ruiru town', 'Munyu rd-Pangani-Roysabu-Githurai-Ku-Ruiru'),
(45, '20800203001', 2030, 'Rounder', 'Allsops-Rounda'),
(46, '20701293011', 29, 'Mathare North', 'Ngara-Pangani-Alssops-Drive in-Mathare'),
(47, '60000004611', 46, 'Yaya', 'Town-Valleyroad-Hurlinghum-Yaya'),
(48, '60101013301', 33, 'SouthB', 'Ngumo-Highrise-NairobiWest-SouthB'),
(49, '50100001111', 11, 'SouthB/Hazina', 'Town-IndustrialArea-SouthB-Hazina'),
(50, '80100011811', 118, 'Wangige', 'Town-Westlands-Kabete-Wangige'),
(51, '10200010811', 108, 'Gachie', 'UN-NewMuthaiga-Gachie-Gichagi'),
(52, '40101040501', 405, 'Nyayo', 'City stadium-Nyayo stadium'),
(53, '40700003311', 33, 'Doni Carbanas', 'Donholm-Rounda-Carbanas'),
(54, '40705019C21', 19, 'komarocks', 'Donholm-Caltex-Komarocks'),
(55, '50701003311', 33, 'Pipeline Mombasa road', 'Commercial-Mombasa rd-Tajmall-Pipeline'),
(56, '50702003311', 33, 'Fedha Estate Gate A', 'Commercial-carbanas-Tuskys-Village-Gate A-  Posta'),
(57, '30100000711', 7, 'Gikomba', 'Town-Kariokor Dc-Gikomba'),
(58, '40102040511', 69, 'Hillocks Gm', 'Muthurwa-Hillocks-GM'),
(59, '50600003311', 33, 'Imara Daima', 'Commercial-Belleview-Imara Daima'),
(60, '40702034B11', 34, 'Jacaranda', 'Ambassadeur-Donholm-Jacaranda'),
(61, '40700003411', 34, 'JKIA', 'Ambassadeur-Donholm-rounda-JKIA'),
(62, '60200004611', 46, 'Kawangware', 'Kencom-Valley road-Yaya-Kawangware'),
(63, '40702196101', 1961, 'Kayole-Caltex', 'Kayole-Jacaranda-Savanna-caltex'),
(64, '40703196011', 1960, 'Kayole', 'Kayole-Donholm-Town'),
(65, '60101007C11', 7, 'Kenyatta', 'Kencom-Community-Equity center-Kenyatta Hospital'),
(66, '50205012611', 126, 'Kiserain', 'Railways-Langata rd-rongai-Kiserain'),
(67, '40702019C11', 19, 'Komarocks', 'Ambassadeur-Donholm-Jacaranda-Komarocks'),
(68, '40301707111', 70, 'Lunga Lunga', 'Muthurwa-Likoni-Sinai-Lunga Lunga'),
(69, '40401001011', 10, 'Maringo', 'Muthurwa-Makadara-Maringo'),
(70, '70400012611', 126, 'Ngong Kiserain', 'Kiserain'),
(71, '40100003311', 33, 'Pipeline Jogoo road', 'Muthurwa-Donholm-Pipeline'),
(72, '40705017A01', 17, 'Kayole ', 'Rounda-Umoja 2-kayole'),
(73, '40705383911', 38, 'Ruai', 'Town-Donholm-Njiru-Ruai'),
(74, '40704356011', 35, 'Umoja', 'Town-Donhol-Umoja'),
(75, '50700003311', 33, 'Utawala', 'Utawala-Ambassauder'),
(76, '70201024C11', 24, 'Hardy', 'Odeon-Westlands-Kangemi'),
(77, '80000011911', 119, 'Wangige', 'Khoja-Westgate-Wangige'),
(78, '80000011B11', 11, 'MP Shah', 'Khoja-MP Shah-Westgate'),
(79, '80101048B11', 48, 'Othaya', 'Odeon-Chiromo-Bypass-Methodist-Othaya'),
(80, '50000002412', 24, 'Karen', 'Bomas-Karen Hospital-Karen'),
(81, '70200003211', 32, 'Ayani', 'Kencom-Community-KNH-Ayani'),
(82, '80100048A11', 48, 'Lavington', 'Odeon-Chiromo-Strathmore-Lavington'),
(83, '50201014A11', 14, 'Strathmore', 'Bus Station-Nairobi West-Madaraka-Strathmore'),
(84, '50201014B11', 14, 'Deep West', 'Bus Station-Nairobi West-TMall'),
(85, '20801025A11', 25, 'Lucky Summer', 'Odeon-Pangani-Alssops-Baba dogo-Lucky Summer'),
(86, '40601003611', 36, 'Dandora', 'City Stadium-Buruburu-kwa mbao-Dandora'),
(87, '30007004111', 31, 'Dandora', 'Gikomba-Rounda-Dandora'),
(88, '21100004412', 44, 'Zimmerman', 'Odeon-Pangani-Roysabu-Zimmerman-Ku'),
(89, '20000004512', 45, 'Githurai', 'Munyu rd-Pangani-Roysabu-Githurai'),
(90, '30000046B11', 46, 'Rounda', 'Ronald Ngala-Juja road-Eastleigh-Rounda'),
(91, '21000004911', 49, 'Sunton', 'Odeon-Pangani-Roysabu-Kasarani-Sunton'),
(92, '10000116011', 116, 'Limuru', 'Konja-Ngara-Banana-Limuru'),
(93, '20100012011', 120, 'Githunguri', ' Kaka-Pangani-Muthaiga Roundabout-Kiambu Rd-Kiambu Institute-Kiambu-Githunguri'),
(94, '20100012111', 121, 'Ndumberi', ' Kaka-Pangani-Muthaiga Roundabout-Kiambu Rd-Kiambu Institute-Kiambu-Ndumberi'),
(95, '40200000601', 6, 'Eastleigh', 'Church Army-Biafra-Joster'),
(96, '40501002611', 26, 'Kariobangi', 'Makadara-Harambee-outering-Kariobangi'),
(97, '50901011011', 110, 'Athiriver', 'Town-Mombasa rd-Devki-Makadara'),
(98, '50800011011', 110, 'Kitengela', 'Railways-Mombasa rd-mlolongo-Kitengela'),
(99, '50205012511', 125, 'Rongai', 'Railways-Langata rd-Bomas -Rongai'),
(100, '40702196112', 1961, 'Kayole', 'Ladhes rd-Jogoo rd-Jacaranda-Kayole'),
(101, '30603373812', 3738, 'Ruai', 'Rounda-saika-Ruai '),
(102, '50901011012', 110, 'Athiriver Kitengela', 'Athiriver-Makadara-Kitengela'),
(103, '30101000311', 3, 'Gikomba Ngara', 'Gikomba-kariokor-Ngara'),
(104, '0700033C11', 33, 'Pipeline_Cabanas', 'Commercial-Jogoord-Pipeline-Cabanas'),
(105, '40701003311', 33, 'Nyayo Estate GAte B', 'Accra_road-Jogoo road-Donholm-Fedha-Gate B'),
(106, '50205012601', 126, 'Rongai-Kiserian', 'Rongai-Nkoroi-Kiserian'),
(107, '40704356001', 3560, 'Umoja 2', 'Donholm-Mtindwa-Umoja 2'),
(108, '20000237011', 237, 'Thika Town', 'Munyu rd-Pangani-Roysambu-Githurai-Ku-Ruiru-Juja-Thika'),
(109, '40702002001', 20, 'Mwiki', 'Mama Lucy Hospital-kayole-Njiru-Mwiki'),
(110, '30600186211', 18, 'Kayole', 'Bus Station-Round About-Dandora-Kayole'),
(111, '80000114011', 114, 'Limuru', 'Ngara-Westlands-Kangemi-Limuru'),
(112, '80000135011', 135, 'Limuru', 'Kaka-Westlands-Kangemi-Limuru'),
(113, '20100100A11', 100, 'Kiambu Hospital', ' Ngara-Pangani-Muthaiga Roundabout-Kiambu Rd-Kiambu Institute-Kiambu Hospital'),
(114, '30800002811', 28, 'Kariobangi south', 'Gikomba-Eastleigh-Huruma-Kariobangi'),
(115, '20000002311', 23, 'Westlands', 'Nation Building-Muesum Hill-Grafin College-Westlands'),
(116, '40705019C11', 19, 'Komarocks', 'Ronald Ngala-Jogoo rd-Kangundo rd-Mama Lucy-Komarocks'),
(117, '40403002611', 26, 'Kariobangi via Salem', 'Aquinas - Salem-Outering- Kariobangi'),
(118, '50600033A11', 33, 'Mukuru kwa Njenga', 'Bus Station- Mombasa rd-Imara-St Bakhita'),
(119, '4070500SK11', 4, 'Saika', 'Ronald Ngala-Jogoo rd - Kangundo rd-Saika-Kayole Junction');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
