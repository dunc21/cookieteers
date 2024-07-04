-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 02:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookieteersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(6, 'CHUNKS', '&lt;p&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;A palm-sized cookie chunk is typically about the size of an adult&#039;s palm, measuring roughly 3 to 4 inches in diameter. This is a generous portion that can satisfy even the heartiest of appetites. The chunky nature of these cookies also means that they tend to be thick and substantial, with a satisfying heft in the hand. &lt;/span&gt;&lt;font color=&quot;#d1d5db&quot; face=&quot;S&ouml;hne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji&quot;&gt;&lt;span style=&quot;white-space: pre-wrap;&quot;&gt;The beauty of palm-sized cookies is that they strike a balance between indulgence and portion control. They are large enough to feel like a treat, but not so big that they become overwhelming or impossible to finish. They are also easy to hold and eat, making them perfect for snacking on the go or enjoying with a hot cup of coffee or tea.&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:20:24'),
(7, 'NIBBLERS', '&lt;p&gt;A nibbler cookie chunk is typically small, bite-sized, and perfect for snacking on the go. They are usually about 1 to 2 inches in diameter, making them easy to hold and pop into your mouth without any fuss. Despite their small size, nibbler cookies still pack a big flavor punch, with all the delicious taste and texture that you would expect from a larger cookie.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;One of the advantages of nibbler cookies is that they can be enjoyed in smaller portions, which can be helpful for those who want to watch their calorie intake. They can also be a great choice for sharing with others, as they are easy to pass around and enjoy together.&lt;/span&gt;&lt;/p&gt;', 1, '2023-05-10 13:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '09123456789', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Sample Address', '2021-06-21 16:00:23'),
(2, 'karl', 'ferry', 'Female', '12312', 'karl@yahoo.com', 'f47636673b14c54021a69dc06f6a19fb', 'san beda alabang', '2023-05-08 08:50:05'),
(3, 'Guest', 'Guest', 'Male', '12312', 'guest@gmail.com', '084e0343a0486ff05530df6c705c8bb4', 'san beda alabang', '2023-05-10 21:07:50'),
(4, 'Guest', 'Guest', 'Male', '12312', 'guest1@gmail.com', '084e0343a0486ff05530df6c705c8bb4', 'san beda college alabang', '2023-05-13 14:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `unit`, `price`, `size`, `date_created`, `date_updated`) VALUES
(1, 1, 50, 'pcs', 250, 'M', '2021-06-21 13:01:30', '2021-06-21 13:05:23'),
(2, 1, 20, 'Sample', 300, 'L', '2021-06-21 13:07:00', NULL),
(3, 4, 150, 'pcs', 500, 'M', '2021-06-21 16:50:37', NULL),
(4, 3, 50, 'pack', 150, 'M', '2021-06-21 16:51:12', NULL),
(5, 5, 30, 'pcs', 50, 'M', '2021-06-21 16:51:35', NULL),
(6, 4, 10, 'pcs', 550, 'L', '2021-06-21 16:51:54', NULL),
(7, 6, 100, 'pcs', 150, 'S', '2021-06-22 15:50:47', NULL),
(8, 6, 150, 'pcs', 180, 'M', '2021-06-22 15:51:13', NULL),
(9, 7, 1, '1', 2500, 'L', '2023-05-08 08:22:22', NULL),
(10, 8, 1, '1', 5000, 'L', '2023-05-08 08:23:38', NULL),
(11, 10, 1, '1', 5000, 'L', '2023-05-08 08:29:23', NULL),
(12, 9, 1, '1', 5000, 'L', '2023-05-08 08:31:01', NULL),
(13, 11, 1, '1', 2500, 'M', '2023-05-08 08:54:30', NULL),
(15, 12, 10, '10', 240, '12 PCS', '2023-05-10 17:12:28', NULL),
(16, 20, 10, '10', 215, '4 PCS', '2023-05-10 17:13:10', NULL),
(17, 17, 10, '10', 240, '12 PCS', '2023-05-10 17:13:43', NULL),
(18, 23, 10, '10', 240, '12 PCS', '2023-05-10 17:13:58', NULL),
(19, 18, 10, '10', 240, '12 PCS', '2023-05-10 17:14:24', NULL),
(20, 14, 10, '10', 240, '12 PCS', '2023-05-10 17:14:48', NULL),
(21, 19, 10, '10', 240, '12 PCS', '2023-05-10 17:15:06', NULL),
(22, 16, 10, '10', 240, '12 PCS', '2023-05-10 17:15:25', NULL),
(23, 15, 10, '10', 240, '12 PCS', '2023-05-10 17:15:41', NULL),
(24, 13, 10, '10', 240, '12 PCS', '2023-05-10 17:15:59', NULL),
(25, 24, 10, '10', 240, '12 PCS', '2023-05-10 17:16:32', NULL),
(26, 21, 10, '10', 215, '4 PCS', '2023-05-10 17:17:02', NULL),
(27, 24, 10, '10', 215, '4 PCS', '2023-05-10 17:17:45', NULL),
(28, 22, 10, '10', 215, '4 PCS', '2023-05-10 17:19:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(8, 1, '', 'cod', 240, 3, 0, '2023-05-13 23:06:40', '2023-05-13 23:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(20) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `size`, `unit`, `quantity`, `price`, `total`) VALUES
(9, 8, 12, '12 PCS', '10', 1, 240, 240);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_name`, `description`, `status`, `date_created`) VALUES
(12, 7, 9, 'Milk Chocolate Nibblers', '&lt;p&gt;Milk chocolate nibblers are also a great choice for sharing with others. Their small size makes them easy to pass around and enjoy together, and they are sure to be a hit with chocolate lovers of all ages.&amp;nbsp;One of the advantages of milk chocolate nibblers is that they offer a balanced flavor profile. The rich, creamy milk chocolate is the star of the show, but it is balanced by the buttery sweetness of the cookie dough. This makes them a perfect choice for those who love chocolate, but don&#039;t want something too overwhelming or heavy.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:28:44'),
(13, 7, 9, 'White Chocolate Nibblers', '&lt;p&gt;White Chocolate Nibblers is that they offer a unique flavor profile that sets them apart from other chocolate-based cookies. White chocolate has a rich, creamy flavor that is less bitter than dark chocolate, making it a perfect choice for those who prefer a milder and sweeter taste.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;White Chocolate Nibblers can also be a great choice for sharing with others. Their small size makes them easy to pass around and enjoy together, and their delicious flavor is sure to be a hit with white chocolate lovers of all ages.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;/p&gt;', 1, '2023-05-10 13:44:10'),
(14, 7, 9, 'Dark Chocolate Nibblers', '&lt;p&gt;Dark Chocolate Nibblers can also be a great choice for sharing with others. Their small size makes them easy to pass around and enjoy together, and their rich, complex flavor is sure to be a hit with dark chocolate lovers of all ages.&amp;nbsp;One of the advantages of Dark Chocolate Nibblers is that they offer a range of health benefits. Dark chocolate contains antioxidants that can help protect against free radical damage, as well as flavanols that can help lower blood pressure and improve heart health. So, indulging in a few Dark Chocolate Nibblers can be a guilt-free way to satisfy your sweet tooth.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:46:40'),
(15, 7, 9, 'Triple Chocolate Nibblers', '&lt;p&gt;Triple Chocolate Nibblers can also be a great choice for sharing with others. Their small size makes them easy to pass around and enjoy together, and their delicious triple chocolate flavor is sure to be a hit with chocolate lovers of all ages.&amp;nbsp;One of the advantages of Triple Chocolate Nibblers is that they offer a diverse range of chocolate flavors and textures in every bite. The combination of milk, dark, and white chocolate creates a rich and complex flavor profile that is sure to delight your taste buds.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:48:53'),
(16, 7, 10, 'Red Velvet Nibblers', '&lt;p&gt;Red Velvet Nibblers can also be a great choice for sharing with others. Their small size makes them easy to pass around and enjoy together, and their unique flavor is sure to be a hit with those who love red velvet cake or white chocolate.&amp;nbsp;One of the advantages of Red Velvet Nibblers is that they offer a unique flavor profile that is sure to stand out from other cookie varieties. The combination of tangy red velvet cake and sweet white chocolate chips creates a rich and decadent flavor that is sure to satisfy your sweet tooth.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:49:51'),
(17, 7, 9, 'Belgian Chocolate Nibblers', '&lt;p&gt;Belgian Chocolate Nibblers can also be a great choice for sharing with others. Their small size makes them easy to pass around and enjoy together, and their rich, luxurious flavor is sure to impress anyone who tries them. One of the advantages of Belgian Chocolate Nibblers is that they use only the finest ingredients, including premium Belgian chocolate, to create a rich and complex flavor that is sure to delight your taste buds. The chocolate is typically a blend of dark and milk chocolate, creating a perfect balance of sweetness and bitterness.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:51:17'),
(18, 7, 12, 'Birthday Nibblers', '&lt;p&gt;Birthday Nibblers can also be customized to suit your preferences or dietary restrictions. For example, you can opt for vegan or gluten-free versions of these cookies, or you can choose to use different types of sprinkles or candy to create a unique flavor and appearance. One of the advantages of Birthday Nibblers is that they offer a fun and playful snacking experience that is perfect for celebrating special occasions, such as birthdays or other milestones. They are a great choice for sharing with others and can be a fun addition to any party or celebration.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:52:52'),
(19, 7, 11, 'Matcha Nibblers', '&lt;p&gt;Matcha Nibblers are also a great choice for those who are health-conscious, as matcha powder is known for its antioxidant properties and other health benefits. They can be a delicious and guilt-free treat that is both satisfying and nourishing.&amp;nbsp;One of the advantages of Matcha Nibblers is that they offer a unique and distinctive flavor profile that is sure to stand out from other cookie varieties. The addition of matcha powder creates a subtle and refreshing flavor that is perfect for those who love the taste of green tea.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:54:32'),
(20, 6, 13, 'Oreo Stuffed Milk Chocolate Cookies', '&lt;p&gt;Oreo Stuffed Milk Chocolate Cookies are a decadent and delicious treat that combine the classic flavors of milk chocolate and Oreos in a unique and satisfying way. They offer a playful and indulgent twist on traditional chocolate cookies and are sure to satisfy your sweet tooth and leave you feeling happy and satisfied.&amp;nbsp;These cookies are perfect for sharing with friends and family, and are a great addition to any dessert table or cookie platter. They can be enjoyed on their own or paired with a glass of milk or a hot cup of coffee or tea.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:57:57'),
(21, 6, 13, 'Oreo Stuffed White Chocolate Cookies', '&lt;p&gt;Oreo Stuffed White Chocolate Cookies are a delicious and indulgent twist on traditional cookies, combining the classic flavors of white chocolate and Oreos in a unique and satisfying way. These cookies are made with a base of buttery cookie dough that is generously studded with chunks of white chocolate, and then stuffed with a whole Oreo cookie, creating a delightful surprise in every bite. These cookies are perfect for sharing with friends and family, and are a great addition to any dessert table or cookie platter. They can be enjoyed on their own or paired with a glass of milk or a hot cup of coffee or tea.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:59:47'),
(22, 6, 13, 'Assorted Oreo Stuffed Cookies', '&lt;p&gt;Assorted Oreo Stuffed Cookies are a delightful and indulgent treat that offers a range of different flavors and textures in every bite. These cookies are made with a base of rich and buttery cookie dough that is generously studded with chunks of milk chocolate, white chocolate, and dark chocolate, and then stuffed with a whole Oreo cookie.&amp;nbsp; The variety of flavors and textures in these cookies makes them a perfect choice for anyone who loves the classic flavors of Oreos and chocolate. The milk chocolate chunks add a creamy and sweet flavor, while the dark chocolate chunks add a rich and intense chocolatey flavor. The white chocolate chunks add a smooth and creamy flavor that perfectly complements the rich flavor of the Oreo. These cookies are perfect for sharing with friends and family, and are a great addition to any dessert table or cookie platter. They can be enjoyed on their own or paired with a glass of milk or a hot cup of coffee or tea.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 14:01:29'),
(23, 7, 7, 'Assorted Nibblers', '&lt;p&gt;Assorted Nibblers are a delicious and versatile cookie option that offer a range of flavors and textures in every bite. They are perfect for anyone who wants to indulge in a variety of cookie flavors, and are sure to satisfy your sweet tooth and leave you feeling happy and satisfied. They&amp;nbsp;are typically soft and chewy in texture, with a buttery and rich flavor that perfectly complements the different mix-ins. The chocolate chunks add a sweet and creamy flavor, while the nuts or dried fruit add a satisfying crunch and a touch of sweetness.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 14:02:53'),
(24, 6, 8, 'Milk Chocolate Nutella', '&lt;p&gt;Milk Chocolate Nutella cookies typically have a soft and chewy texture that is perfectly complemented by the crunchy texture of the chocolate chunks. They are perfect for enjoying on their own or paired with a glass of milk or a hot cup of coffee or tea.&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;These cookies are perfect for sharing with friends and family, and are a great addition to any dessert table or cookie platter. The combination of milk chocolate and Nutella is a classic flavor combination that is sure to be a hit with anyone who loves sweet and indulgent treats. Our product is expertly prepared to deliver its finest taste and quality when consumed within three days. Each bite is a burst of flavor that&#039;s simply unparalleled&lt;/span&gt;&lt;/p&gt;', 1, '2023-05-10 14:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(8, 8, 240, '2023-05-13 23:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(30) NOT NULL,
  `size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`) VALUES
(1, '4 pcs'),
(2, '12 pcs');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(7, 7, 'Assorted', '&lt;p&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;Assorted cookies are a delightful treat for anyone who loves a variety of flavors and textures in their sweets. These cookies are typically bite-sized chunks that come in a range of different shapes, colors, and flavors, providing a diverse and satisfying snacking experience.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-10 13:27:44'),
(8, 6, 'Nutella', '', 1, '2023-05-10 13:55:55'),
(9, 7, 'Chocolates', '', 1, '2023-05-10 16:30:32'),
(10, 7, 'Red Velvet', '', 1, '2023-05-10 16:30:56'),
(11, 7, 'Matcha', '', 1, '2023-05-10 16:31:05'),
(12, 7, 'Birthday', '', 1, '2023-05-10 16:31:24'),
(13, 6, 'Oreo', '', 1, '2023-05-10 16:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'COOKIETEERS'),
(6, 'short_name', 'Cookieteers'),
(11, 'logo', 'uploads/1683720720__final.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1696509060_cookieteerscp.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Cookieteers', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1683642480_logo.jpg', NULL, 1, '2021-01-20 14:02:37', '2023-05-09 22:28:02'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
