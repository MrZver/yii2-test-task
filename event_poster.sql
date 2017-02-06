-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2017 at 11:45 PM
-- Server version: 5.7.11-log
-- PHP Version: 7.0.4

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_poster`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `sorting` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `image`, `description`, `sorting`) VALUES
(1, 'Area 1', '2.jpg', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 8),
(2, 'Area 2', '1.jpg', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 2),
(3, 'Area 3', '', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 6),
(4, 'Area 4', '1.jpg', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 15),
(5, 'Area 5', '', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 3),
(6, 'Area 6', '2.jpg', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 5),
(7, 'Area 7', '', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 1),
(8, 'Area 8', '', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 4),
(9, 'Area 9', '', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 13),
(10, 'Area 10', '3.jpg', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 9),
(11, 'Area 11', '', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 10),
(12, 'Area 12', '', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 16),
(13, 'Area 13', '2.jpg', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 11),
(14, 'Area 14', '', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 12),
(15, 'Area 15', '1.jpg', 'Integer elementum vehicula odio. Nunc pellentesque sollicitudin ullamcorper. Donec ligula diam, sodales ut consectetur eu, lobortis quis dolor. Quisque aliquet ac nunc et tincidunt. Duis interdum tortor vel mi dapibus sollicitudin. Pellentesque blandit, lorem a placerat porttitor, ligula turpis viverra magna, ullamcorper volutpat augue ex vitae mauris. Donec vel porttitor erat. Sed iaculis, justo dignissim maximus fringilla, mi ipsum commodo nisi, a cursus sapien nulla eu magna.', 14),
(16, 'Area 16', '', 'Suspendisse vulputate eros ultrices, posuere metus lacinia, mollis quam. Mauris pulvinar dapibus posuere. Integer pellentesque lacus massa. Etiam hendrerit tortor molestie, consequat quam sed, porttitor lectus. Nunc tempus, felis vulputate suscipit porttitor, lacus arcu fringilla sapien, vel cursus tellus tortor et leo. Phasellus euismod urna a neque consequat imperdiet. Vivamus sit amet euismod sapien, eu sollicitudin lacus. Aenean at faucibus elit, blandit ultricies purus. Cras vulputate facilisis velit. Curabitur malesuada libero eget sapien volutpat luctus id eget eros. In sit amet rhoncus augue. Quisque vitae sodales est. Pellentesque et tincidunt quam, eu luctus tortor.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `show_id` int(10) NOT NULL,
  `area_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `date`, `show_id`, `area_id`) VALUES
(1, '2017-02-10 18:00:00', 5, 11),
(2, '2017-02-11 19:30:00', 1, 4),
(3, '2017-02-08 12:20:00', 3, 16),
(4, '2017-02-16 14:30:00', 12, 2),
(5, '2017-02-01 17:20:00', 8, 5),
(6, '2017-02-22 15:30:00', 13, 13),
(7, '2017-02-15 20:10:00', 13, 2),
(8, '2017-02-13 14:40:00', 7, 12),
(9, '2017-02-01 18:20:00', 10, 14),
(10, '2017-02-12 11:30:00', 10, 14),
(11, '2017-02-20 23:20:00', 11, 6),
(12, '2017-02-16 14:30:00', 6, 11),
(13, '2017-02-07 18:00:00', 13, 4),
(14, '2017-02-25 14:30:00', 5, 13),
(15, '2017-02-27 18:50:00', 1, 7),
(16, '2017-02-15 16:30:00', 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `show`
--

CREATE TABLE IF NOT EXISTS `show` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `show`
--

INSERT INTO `show` (`id`, `name`, `image`, `description`) VALUES
(1, 'Show 1', '1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(2, 'Show 2', '', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.'),
(3, 'Show 3', '1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(4, 'Show 4', '', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.'),
(5, 'Show 5', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(6, 'Show 6', '2.jpg', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.'),
(7, 'Show 7', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(8, 'Show 8', '2.jpg', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.'),
(9, 'Show 9', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(10, 'Show 10', '3.jpg', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.'),
(11, 'Show 11', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(12, 'Show 12', '', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.'),
(13, 'Show 13', '3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(14, 'Show 14', '', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.'),
(15, 'Show 15', '1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus elementum tortor ut lacinia. Aenean condimentum libero lacus, id fringilla eros sodales a. Vestibulum non eros ac nisi pulvinar tincidunt. Donec sed tellus ut orci sagittis venenatis. Cras eget erat rutrum, rutrum metus sit amet, venenatis ligula. Pellentesque ac sollicitudin dui, id mollis lectus. Etiam maximus, libero eget ornare sagittis, massa risus iaculis eros, sit amet suscipit lacus massa sit amet nisi. Praesent enim ex, fermentum at vehicula nec, iaculis in tellus. Integer at sem eu est lobortis dapibus nec eget risus. Fusce et venenatis elit. Morbi ac gravida metus, id placerat orci. In mi ipsum, ornare sed odio id, tempor elementum eros. Sed luctus neque purus, nec porttitor dolor sollicitudin ac.'),
(16, 'Show 16', '', 'Nam aliquet lorem eget metus facilisis, vel blandit eros molestie. Vivamus vitae elit mollis, placerat mi non, fermentum lectus. Phasellus vitae elit eros. Ut at pharetra mauris. Mauris sit amet laoreet nibh. Nunc iaculis ornare accumsan. Quisque commodo massa quis sem suscipit tempus. Phasellus id eros gravida, rutrum velit id, bibendum lacus. Vestibulum et blandit velit, sed rutrum elit. Duis eleifend, enim nec pharetra scelerisque, sem eros iaculis est, eu blandit orci augue ac erat. Etiam vestibulum ligula lacus, in elementum elit pretium ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur, elit sit amet vehicula vestibulum, turpis justo congue neque, vel egestas dolor nisi eu sapien. Praesent dui nisi, porttitor sit amet leo id, pretium fringilla nisl. Mauris tempor, dolor non ultricies fermentum, libero leo laoreet velit, eget ultricies est lectus ac risus. Duis ac elit erat.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `auth_key` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$E8ypycwohatFysYL1HKVs.ElYYi8CUZqTzHnUY1vsqm/sqcV4jnni', 'mCDFOAXz5rUUIj_0i2vYjyy3bpc2TO8w');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_id` (`show_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexes for table `show`
--
ALTER TABLE `show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `show`
--
ALTER TABLE `show`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `show` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
