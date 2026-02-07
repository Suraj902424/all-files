-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2026 at 04:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` int(10) NOT NULL,
  `s_password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `master` varchar(255) DEFAULT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `add_status` int(10) NOT NULL DEFAULT 0,
  `edit_status` int(10) DEFAULT 0,
  `delete_status` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `email`, `password`, `phone`, `status`, `s_password`, `type`, `master`, `menu`, `add_status`, `edit_status`, `delete_status`) VALUES
(1, 'Parangat', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '7895060040', 1, '123', '1', NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_menu`
--

CREATE TABLE `tbl_admin_menu` (
  `id` int(10) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin_menu`
--

INSERT INTO `tbl_admin_menu` (`id`, `category_id`, `name`, `url`) VALUES
(10, 5, 'Service List', 'service-list.php'),
(24, 23, 'Portfolio List', 'portfolio-list.php'),
(34, 5, 'Banner List', 'banner-list.php'),
(36, 5, 'Testimonial List', 'testimonial-list.php'),
(38, 23, 'Portfolio Image List', 'portfolio-image-list.php'),
(39, 5, 'Blog List', 'blog-list.php'),
(42, 5, 'Team List', 'team-list.php'),
(43, 9, 'Category List', 'menu-category-list.php'),
(44, 9, 'Menu List', 'menu-list.php'),
(47, 11, 'Product List', 'product-list.php'),
(49, 27, 'Size List', 'size-list.php'),
(52, 26, 'Setting', 'setting.php?id=1'),
(53, 27, 'City List', 'city-list.php'),
(54, 27, 'Location List', 'location-list.php'),
(55, 27, 'Delivery Type List', 'delivery-type-list.php'),
(56, 28, 'Customer List', 'customer-list.php'),
(57, 28, 'Customer Product List', 'customer-product-list.php'),
(58, 27, 'Group List', 'group-list.php'),
(59, 28, 'Customer Group List', 'customer-group-list.php'),
(60, 28, 'Delivery Boy List', 'delivery-boy-list.php'),
(61, 11, 'Bill Generate', 'bill-generate.php'),
(62, 28, 'Off Days List ', 'offdays-list.php'),
(63, 29, 'Customer Wise Report', 'customer-wise-report.php'),
(64, 29, 'Group Wise Report', 'group-wise-report.php'),
(65, 29, 'Delivery Boy Wise Report', 'delivery-boy-wise-report.php'),
(66, 29, 'Product wise Report', 'product-wise-report.php'),
(67, 29, 'Sales Report', 'sales-report.php'),
(68, 30, 'Course Category List', 'course-category-list.php'),
(69, 30, 'Course List', 'course-list.php'),
(70, 5, 'Partner List', 'partner-list.php'),
(71, 5, 'Award List', 'award-list.php'),
(72, 31, 'Enquiry List', 'enquiry-list.php'),
(73, 5, 'Gallery', 'gallery-list.php'),
(74, 32, 'Appointment-List', 'appointement-list.php'),
(75, 32, 'Doctor Name And Department', 'department-list.php'),
(76, 5, 'Price List', 'price-list.php');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`id`, `department`, `doctor`, `name`, `mobile`, `date`, `time`, `created_at`) VALUES
(1, '', '', 'suraj', '8239840816', '2025-07-07', '10:00 AM', '2025-07-06 16:21:34'),
(2, 'Neurology', 'Dr. Priya Singh', 'Narendra Kushwah', '8239749832', '2025-07-06', '11:00 AM', '2025-07-06 16:44:21'),
(3, 'teath department', 'suraj', 'suraj', '8239840816', '2025-07-07', '10:00 AM', '2025-07-06 16:57:36'),
(4, 'Body', 'Narendra Kushwah', 'suraj', '8239840816', '2025-07-06', '11:00 AM', '2025-07-06 17:01:10'),
(5, 'eye', 'Deeraj singh', 'suraj', '9057079083', '2025-07-07', '2:00 PM', '2025-07-07 04:53:26'),
(6, 'Cardiology', 'Dr. Rajeev Sharma', 'suraj', '8239840816', '2025-07-09', '10:00 AM', '2025-07-07 08:59:20'),
(7, 'Cardiology', 'Dr. Rajeev Sharma', 'Hotel Management Your Key to Success!', '8239749832', '2025-07-07', '10:00 AM', '2025-07-07 09:01:35'),
(8, 'Neurology', 'Dr. Sandeep Yadav', 'sanju', '9057079083', '2025-07-23', '2:00 PM', '2025-07-07 09:03:52'),
(9, 'Cardiology', 'Dr. Rajeev Sharma', 'Narendra Kushwah', '8239749832', '2025-07-07', '2:00 PM', '2025-07-07 09:05:05'),
(10, 'Cardiology', 'Dr. Rajeev Sharma', 'Hotel Management Your Key to Success!', '564564564564', '2025-07-15', '2:00 PM', '2025-07-07 09:06:08'),
(11, 'Cardiology', 'Dr. Rajeev Sharma', 'sanju', '8239749832', '2025-07-04', '11:00 AM', '2025-07-07 09:07:22'),
(12, 'Neurology', 'Dr. Sandeep Yadav', 'sanju', '8239749832', '2025-07-11', '10:00 AM', '2025-07-07 09:09:50'),
(13, 'Cardiology', 'Dr. Rajeev Sharma', 'suraj', '8239840816', '2025-07-11', '12:00 PM', '2025-07-07 09:13:25'),
(14, 'Cardiology', 'Dr. Nidhi Verma', 'sanju', '8239749832', '2025-07-07', '10:00 AM', '2025-07-07 09:19:18'),
(15, 'Cardiology', 'Dr. Rajeev Sharma', 'sanju', '9057079083', '2025-07-12', '11:00 AM', '2025-07-07 09:20:24'),
(16, 'Neurology', 'Dr. Sandeep Yadav', 'suraj', '8239749832', '2025-07-07', '12:00 PM', '2025-07-07 09:34:43'),
(17, 'eye', 'Deeraj singh', 'Narendra Kushwah', '8239749832', '2025-07-07', '10:00 AM', '2025-07-07 16:10:02'),
(18, 'Cardiology', 'Dr. Rajeev Sharma', 'Narendra Kushwah', '8239840816', '2025-07-09', '11:00 AM', '2025-07-08 04:25:11'),
(19, 'eye', 'Deeraj singh', 'gourabh', '8239840816', '2025-07-08', '10:00 AM', '2025-07-08 13:28:57'),
(20, 'Sex', 'Vishnu', 'dheeraj', '8239840816', '2025-07-09', '10:00 AM', '2025-07-08 13:31:08'),
(21, 'eye', 'Deeraj singh', 'Suraj singh', '8239840816', '2025-07-10', '10:00 AM', '2025-07-10 15:18:22'),
(22, 'teath department', 'suraj', 'Narendra Kushwah', '9024244731', '2025-07-10', '10:00 AM', '2025-07-10 15:21:12'),
(23, 'Cardiology', 'Dr. Nidhi Verma', 'Suraj singh', '0902 424 4731', '2025-07-10', '10:00 AM', '2025-07-10 15:25:39'),
(24, 'Cardiology', 'Dr. Nidhi Verma', 'Narendra Kushwah', '8239840816', '2025-07-17', '10:00 AM', '2025-07-10 15:30:24'),
(25, 'Dr. Sanju', 'Sex Problem', 'Manoj', '9057079083', '2025-07-15', '3:00 PM', '2025-07-14 15:31:45'),
(26, 'Sex ', 'Dr. sanju', 'manoj', '9057079083', '2025-07-15', '10:00 AM', '2025-07-14 15:32:49'),
(27, 'Cardiology', 'Dr. Nidhi Verma', 'Suraj singh', '8239840816', '2025-07-16', '10:00 AM', '2025-07-15 03:02:51'),
(28, 'Body', 'piyush', 'Suraj singh', '8239840816', '2025-07-17', '10:00 AM', '2025-07-16 05:32:10'),
(29, 'Land mai Dikkat', 'Sanju', 'manoj', '8239840816', '2025-08-20', '10:00 AM', '2025-08-19 15:58:35'),
(30, 'Bhavdeep singh Rathore', 'Sex', 'VIshal singh Nathwat', '8107125085', '2025-08-30', '12:00 PM', '2025-08-29 09:24:07'),
(31, 'Sex', 'Bhavdeep Singh Rathore', 'VIshal singh Nathwat', '564564564564', '2025-08-31', '3:00 PM', '2025-08-29 09:25:32'),
(32, 'Pregancay ', 'Arushi ', 'Tanvi', '874359827435', '2025-09-02', '11:00 AM', '2025-09-01 08:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_award`
--

CREATE TABLE `tbl_award` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_award`
--

INSERT INTO `tbl_award` (`id`, `name`, `image1`, `thumb1`) VALUES
(1, 'Lorem Ippsum', '6736fc4f231e7_award-1.png', '6736fc4f23641thumb_award-1.png'),
(3, 'Lorem Ippsum', '6736fc7789da9_award-2.png', '6736fc778a20cthumb_award-2.png'),
(4, 'Lorem Ippsum', '6736fc82c4797_award-3.png', '6736fc82c4b61thumb_award-3.png'),
(5, 'Lorem Ippsum', '6736fc910af33_award-4.png', '6736fc910b232thumb_award-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `name`, `description`, `link`, `image1`, `thumb1`) VALUES
(9, 'Welcome To Medinova ', '<div>\r\n<p>Our Reputation Is&nbsp; Built On Solid Ground</p>\r\n</div>', 'contact.php', '686a34da9dd69_hero.jpg', '686a34daa049cthumb_hero.jpg'),
(10, 'Start Your Beautiful And Bright Future', '<div>\r\n<div>Our Reputation Is Built On Solid Ground</div>\r\n</div>', 'contact.php', '686fdcd23e203_about.jpg', '686fdcd249174thumb_about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(10) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `heading`, `date`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `image1`, `thumb1`, `name`) VALUES
(6, 'Global Competitiveness in Textile Work', '2025-07-06', 'Despite being the second-largest exporter of textile and accounting for 5% of the global sh…', '<p class=\"mb-10\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n<p class=\"mb-10\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>', 'It is a long established fact that a reader', 'It is a long established fact that a ', '<h3 class=\"blog-details-title mb-20\">It is a long established fact that a</h3>', '686a3a0aad1bf_blog-1.jpg', '686a3a0ab0dccthumb_blog-1.jpg', 'suraj'),
(13, 'Importance of Regular Health Checkups', '2025-07-06', 'जानिए क्यों हर व्यक्ति को साल में कम से कम एक बार हेल्थ चेकअप कराना चाहिए।', '<p data-start=\"378\" data-end=\"772\">समय-समय पर स्वास्थ्य जांच कराना शरीर में होने वाले किसी भी संभावित रोग की समय रहते पहचान कर पाने का सबसे अच्छा तरीका है। कई बार बीमारियाँ बिना लक्षण के आती हैं और जब तक हम उन्हें समझ पाते हैं, तब तक वे गंभीर हो चुकी होती हैं।<strong data-start=\"614\" data-end=\"624\">फायदे:</strong></p>\r\n<ul data-start=\"629\" data-end=\"709\">\r\n<li data-start=\"629\" data-end=\"657\">बीमारियों की जल्दी पहचान</li>\r\n<li data-start=\"660\" data-end=\"686\">बेहतर उपचार की संभावना</li>\r\n<li data-start=\"689\" data-end=\"705\">मानसिक शांति</li>\r\n</ul>\r\n<p data-start=\"378\" data-end=\"772\"><strong data-start=\"712\" data-end=\"727\">हमारी सलाह:</strong> साल में एक बार full body checkup जरूर कराएं।</p>', '', '', '', '686a3a9463d3b_blog-2.jpg', '686a3a94655f5thumb_blog-2.jpg', 'Narendra Kushwah'),
(14, 'Managing Diabetes: Diet and Lifestyle Tips', '0000-00-00', 'डायबिटीज को कंट्रोल में रखने के लिए सही खानपान और जीवनशैली अपनाएं।', '<blockquote data-start=\"979\" data-end=\"1349\">\r\n<p data-start=\"981\" data-end=\"1094\">डायबिटीज एक chronic बीमारी है, लेकिन सही खानपान और lifestyle के ज़रिए इसे काफी हद तक नियंत्रित किया जा सकता है।</p>\r\n<p data-start=\"1101\" data-end=\"1118\"><strong data-start=\"1101\" data-end=\"1116\">डाइट टिप्स:</strong></p>\r\n<ul data-start=\"1121\" data-end=\"1229\">\r\n<li data-start=\"1121\" data-end=\"1157\">\r\n<p data-start=\"1123\" data-end=\"1157\">कम कार्बोहाइड्रेट वाला खाना खाएं</p>\r\n</li>\r\n<li data-start=\"1160\" data-end=\"1194\">\r\n<p data-start=\"1162\" data-end=\"1194\">मीठा और processed food से बचें</p>\r\n</li>\r\n<li data-start=\"1197\" data-end=\"1225\">\r\n<p data-start=\"1199\" data-end=\"1225\">हाई-फाइबर युक्त भोजन लें</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1232\" data-end=\"1255\"><strong data-start=\"1232\" data-end=\"1253\">लाइफस्टाइल टिप्स:</strong></p>\r\n<ul data-start=\"1258\" data-end=\"1349\">\r\n<li data-start=\"1258\" data-end=\"1286\">\r\n<p data-start=\"1260\" data-end=\"1286\">रोज़ाना 30 मिनट वॉक करें</p>\r\n</li>\r\n<li data-start=\"1289\" data-end=\"1305\">\r\n<p data-start=\"1291\" data-end=\"1305\">तनाव कम करें</p>\r\n</li>\r\n<li data-start=\"1308\" data-end=\"1349\">\r\n<p data-start=\"1310\" data-end=\"1349\">समय पर दवा लें और ब्लड शुगर मॉनिटर करें</p>\r\n</li>\r\n</ul>\r\n</blockquote>', '', '', '', '686a3abac37ad_blog-3.jpg', '686a3abac6c33thumb_blog-3.jpg', 'sanju'),
(15, 'Common Monsoon Diseases and How to Prevent Them', '2025-07-06', 'बरसात के मौसम में होने वाली बीमारियों और उनसे बचाव के उपाय जानें।', '<blockquote data-start=\"1563\" data-end=\"1864\">\r\n<p data-start=\"1565\" data-end=\"1662\">बारिश के मौसम में बैक्टीरिया और वायरस का प्रकोप बढ़ जाता है, जिससे कई बीमारियाँ फैलती हैं जैसे:</p>\r\n<ul data-start=\"1669\" data-end=\"1727\">\r\n<li data-start=\"1669\" data-end=\"1678\">\r\n<p data-start=\"1671\" data-end=\"1678\">डेंगू</p>\r\n</li>\r\n<li data-start=\"1681\" data-end=\"1692\">\r\n<p data-start=\"1683\" data-end=\"1692\">मलेरिया</p>\r\n</li>\r\n<li data-start=\"1695\" data-end=\"1706\">\r\n<p data-start=\"1697\" data-end=\"1706\">टाइफॉइड</p>\r\n</li>\r\n<li data-start=\"1709\" data-end=\"1723\">\r\n<p data-start=\"1711\" data-end=\"1723\">वायरल फीवर</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1730\" data-end=\"1749\"><strong data-start=\"1730\" data-end=\"1747\">बचाव के उपाय:</strong></p>\r\n<ul data-start=\"1752\" data-end=\"1864\">\r\n<li data-start=\"1752\" data-end=\"1769\">\r\n<p data-start=\"1754\" data-end=\"1769\">साफ पानी पीएं</p>\r\n</li>\r\n<li data-start=\"1772\" data-end=\"1796\">\r\n<p data-start=\"1774\" data-end=\"1796\">मच्छरों से बचाव करें</p>\r\n</li>\r\n<li data-start=\"1799\" data-end=\"1825\">\r\n<p data-start=\"1801\" data-end=\"1825\">भीगे कपड़ों में न रहें</p>\r\n</li>\r\n<li data-start=\"1828\" data-end=\"1864\">\r\n<p data-start=\"1830\" data-end=\"1864\">इम्युनिटी बूस्ट करने वाला खाना लें</p>\r\n</li>\r\n</ul>\r\n</blockquote>', '', '', '', '686a3ae9583df_price-4.jpg', '686a3ae95aa9fthumb_price-4.jpg', 'Narendra Kushwah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `state_id`, `name`) VALUES
(1, 26, 'Agra');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`id`, `name`, `ordering`) VALUES
(2, 'Green ', 2),
(4, 'Red', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `eligibility` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `internship` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`id`, `category_id`, `name`, `short_description`, `description`, `eligibility`, `duration`, `internship`, `image1`, `thumb1`) VALUES
(1, 1, 'Diploma in Hotel Management', 'It is the course where applicants indulge in the complexities of the area, encouraging them to obtain the support required in the hospitality sector within the Diploma in Hotel Management.', '<p>It is the course where applicants indulge in the complexities of the area, encouraging them to obtain the support required in the hospitality sector within the Diploma in Hotel Management. The Course offers a vast field for students to invent on their scientific, management, and technological skills, therefore creating a stable foundation for them to inculcate professionalism and start encouraging career possibilities.</p>', ' 10th or equivalent', ' 1 Year (2 Semesters)', '6 Months', '6735ef25ade10_01.jpg', '6735ef25aede4thumb_01.jpg'),
(2, 2, 'Bachelor in Hotel Management', 'Bachelor inHotel Management is a specialized Course designed as per the growing demands of the modern Hospitality Industry. ', '<p>Bachelor inHotel Management is a specialized Course designed as per the growing demands of the modern Hospitality Industry. The Hotel Management is the industry within the service industries that includes lodging, food and drinking services, event planning, consign practice, transportation, cross lane, travel additional field within the tourism industry. One of the reasons to study hotel management is to find a great job and career opportunities for anyone who wants to get involved in the World of Tourism.</p>', '10+2 or equivalent', '3 Year', '6 Months + 6 Months = 1 Year (2 Trainings)', '6735ef69b5f31_02.jpg', '6735ef69b6311thumb_02.jpg'),
(3, 3, 'MBA in Hotel Management', 'If you are an aspiring individual to be being around people all the time and enjoy making them happy and comfortable with your communication and activities,', '<p>If you are an aspiring individual to be being around people all the time and enjoy making them happy and comfortable with your communication and activities, then education in hospitality is one of the best and basic courses for you to have opted. MBA in Hospitality Management is a complete post-graduation course that makes you able about the different types of management roles in hospitality businesses such as hotels, resorts, and others.<br />If we talk about the syllabus of the course, the 2- year course is managed to train the curriculum in many areas like Food, Beverage, events and meetings, Tourism services, Accommodations, Entertainment, etc. Besides this, the course also managed to train the students in Accounting, Business Law, Human Resource Management, Finance Management, and Marketing.</p>', 'Graduate (any stream) or equivalent', '2 Year or equivalent', '6 Months + 6 Months = 1 year (2 Trainings)', '6735ef99cf171_03.jpg', '6735ef99cf513thumb_03.jpg'),
(4, 1, 'Advanced Diploma in Hotel Management', 'The hotel industry promises a bright future for anyone who wishes to take up a career in this segment. The students opting for hotel management courses must have an affinity towards socializing and understanding the needs of the people. As Hotels falls un', '', '10th or equivalent', '18 Months (3 Semesters)', '4 Months + 6 Months = 10 Months (2 trainings)', '673d8bfc58d3c_a-diploma.jpg', '673d8bfc59356thumb_a-diploma.jpg'),
(5, 1, 'International Diploma in Hotel Management', 'The Hotel Management diploma is designed for 10th and 12th passed students willing to work in the hospitality sector on international locations and looking for a career in world most employable industries around the world. This course is specially designe', '<p>The Hotel Management diploma is designed for 10th and 12th passed students willing to work in the hospitality sector on international locations and looking for a career in world most employable industries around the world. This course is specially designed for those students who are willing to Study and work internationally in 5*Hotels. In this Course, the student will study in India for 6 months and then will go for 18 months of International internship in Malaysia.</p>\r\n<p><strong>Key features of International Diploma:</strong></p>\r\n<p>Take the next step along your career path with a world-class internship in your industry of choice.</p>\r\n<p>Gain professional skills through career speaker events, company visits and career workshops.</p>\r\n<p>Build unique experience that will help you stand out in a rapidly expanding job market.</p>\r\n<p>Discover Malaysia-Truly Asia through after-work activities and explore Southeast Asia on weekend trips.</p>\r\n<p>Live in a multicultural environment with fellow Absolute Interns from across the globe.</p>\r\n<p>The Hospitality Career is popular among the student moving to Malaysiafor their higher studies and Internships. Internships in Malaysiaare specifically designed and offered to meet today&rsquo;s requirement of global growth &amp; career opportunities that are helpful to increase your professional worth.</p>\r\n<p><strong>Highlights:</strong></p>\r\n<p>All the placements will be in high profile companies.</p>\r\n<p>Salary information is given on average basis. It can be higher or lesser depending upon candidate to candidate.</p>\r\n<p>You can also enjoy the many benefits like overtime, tips etc.</p>\r\n<p>No IELTS or Any Entrance exams required.</p>\r\n<p>International Certifications.</p>\r\n<p>You can undergo 18 months training with International Expertise for working in the field of Hospitality. These programs are designed with the perspective to reflect both nature of various industries and polish interpersonal skills in the environment.</p>\r\n<p>After completion of your training period you will get the opportunity for a job offer to work in best hotels from which you gain professional experience and opportunities to enhance your career goal.</p>\r\n<p>You will get professional certificates which will help you to work in other foreign countries and build up your future over there.</p>\r\n<p>International Internship you do are paid so that you can enjoy earning good fortune and getting international work exposures with low investment in both terms of money and time.</p>', '10th or equivalent', '2 Years (4 Semesters)', '18 Months (Candidate must be 18+ years & must have valid passport)', '673d8ed11209d_international-diploma.jpg', '673d8ed1123cathumb_international-diploma.jpg'),
(6, 2, 'Bachelor in Hotel Management (BHM) + International Diploma Dual Certification (with International Exposure)', 'Bachelor in Hotel Management + International Diploma (with International exposure) is a combination of 3 year Bachelor in Hotel Management and International Diploma in Hotel Management.', '<p>Bachelor in Hotel Management + International Diploma (with International exposure) is a combination of 3 year Bachelor in Hotel Management and International Diploma in Hotel Management.</p>\r\n<p>IAHM conducts a 3 year program spread over 6 capsules, 2 capsules each year. Every International Certification is divided into levels, which must be completed with theoretical knowledge practical skills, and service attitude. This program is designed as &ldquo;Earn while you Learn&rdquo; Concepts which includes International Internship in Malaysia while your course.</p>\r\n<p>This course is specially designed for those students who are willing to Study and work internationally in 5*Hotels. In this Course, the student will study in India for 6 months and then will go for 30 months of International internship in Malaysia.</p>\r\n<p><strong>Key features of International Diploma:</strong></p>\r\n<p>Take the next step along your career path with a world-class internship in your industry of choice.</p>\r\n<p>Gain professional skills through career speaker events, company visits and career workshops.</p>\r\n<p>Build unique experience that will help you stand out in a rapidly expanding job market.</p>\r\n<p>Discover Malaysia-Truly Asia through after-work activities and explore Southeast Asia on weekend trips.</p>\r\n<p>Live in a multicultural environment with fellow Absolute Interns from across the globe.</p>\r\n<p>The Hospitality Career is popular among the student moving to Malaysia for their higher studies and Internships. Internships in Malaysia are specifically designed and offered to meet today&rsquo;s requirement of global growth &amp; career opportunities that are helpful to increase your professional worth.</p>\r\n<p><strong>Highlights:</strong></p>\r\n<p>All the placements will be in high profile companies.</p>\r\n<p>Salary information is given on average basis. It can be higher or lesser depending upon candidate to candidate.</p>\r\n<p>You can also enjoy the many benefits like overtime, tips etc.</p>\r\n<p>No IELTS or Any Entrance exams required.</p>\r\n<p>International Certifications.</p>\r\n<p>You can undergo 30 months training with International Expertise for working in the field of Hospitality. These programs are designed with the perspective to reflect both nature of various industries and polish interpersonal skills in the environment.</p>\r\n<p>After completion of your training period you will get the opportunity for a job offer to work in best hotels from which you gain professional experience and opportunities to enhance your career goal.</p>\r\n<p>You will get professional certificates which will help you to work in other foreign countries and build up your future over there.</p>\r\n<p>International Internship you do are paid so that you can enjoy earning good fortune and getting international work exposures with low investment in both terms of money and time.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '10th or equivalent', '2 Years (4 Semesters)', ' 18 Months (Candidate must be 18+ years & must have valid passport)', '673d92c75f88b_diploma.jpg', '673d92c75fc5fthumb_diploma.jpg'),
(7, 3, 'MBA in Hotel Management (MHM) + International Diploma Dual Certification (with International Exposure)', 'MBA in Hotel Management + International Diploma (with International exposure) is a combination of 2 year MBA in Hotel Management and International Diploma in Hotel Management.', '<p>MBA in Hotel Management + International Diploma (with International exposure) is a combination of 2 year MBA in Hotel Management and International Diploma in Hotel Management.</p>\r\n<p>IAHM conducts a 2 year program spread over 4 capsules, 2 capsules each year. Every International Certification is divided into levels, which must be completed with theoretical knowledge practical skills, and service attitude. This program is designed as &ldquo;Earn while you Learn&rdquo; Concepts which includes International Internship in Malaysia while your course.</p>\r\n<p>This course is specially designed for those students who are willing to Study and work internationally in 5*Hotels. In this Course, the student will study in India for 6 months and then will go for 18 months of International Internship in Malaysia.</p>\r\n<p><strong>Key features of International Diploma:</strong></p>\r\n<p>Take the next step along your career path with a world-class internship in your industry of choice.</p>\r\n<p>Gain professional skills through career speaker events, company visits and career workshops.</p>\r\n<p>Build unique experience that will help you stand out in a rapidly expanding job market.</p>\r\n<p>Discover Malaysia-Truly Asia through after-work activities and explore Southeast Asia on weekend trips.</p>\r\n<p>Live in a multicultural environment with fellow Absolute Interns from across the globe.</p>\r\n<p>The Hospitality Career is popular among the student moving to Malaysia for their higher studies and Internships. Internships in Malaysia are specifically designed and offered to meet today&rsquo;s requirement of global growth &amp; career opportunities that are helpful to increase your professional worth.</p>\r\n<p><strong>Highlights:</strong></p>\r\n<p>All the placements will be in high profile companies.</p>\r\n<p>Salary information is given on average basis. It can be higher or lesser depending upon candidate to candidate.</p>\r\n<p>You can also enjoy the many benefits like overtime, tips etc.</p>\r\n<p>No IELTS or Any Entrance exams required.</p>\r\n<p>International Certifications.</p>\r\n<p>You can undergo 30 months training with International Expertise for working in the field of Hospitality. These programs are designed with the perspective to reflect both nature of various industries and polish interpersonal skills in the environment.</p>\r\n<p>After completion of your training period you will get the opportunity for a job offer to work in best hotels from which you gain professional experience and opportunities to enhance your career goal.</p>\r\n<p>You will get professional certificates which will help you to work in other foreign countries and build up your future over there.</p>\r\n<p>International Internship you do are paid so that you can enjoy earning good fortune and getting international work exposures with low investment in both terms of money and time.</p>', 'Graduate or equivalent', '2 Years (4 Semesters)', '18 Months (Candidate must be 18+ years & must have valid passport)', '673d95a0df869_mba-diploma.jpg', '673d95a0dfcbcthumb_mba-diploma.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_category`
--

CREATE TABLE `tbl_course_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_course_category`
--

INSERT INTO `tbl_course_category` (`id`, `name`, `url`) VALUES
(1, 'Diploma Program', 'diploma-program'),
(2, 'Graduate Program', 'graduate-program'),
(3, 'Post Graduacte Program', 'post-graduate-program');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `delivery_type_id` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `extra_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `phone`, `email`, `address`, `location_id`, `landmark`, `city_id`, `state_id`, `delivery_type_id`, `ordering`, `extra_note`) VALUES
(1, 'Anu', '8532874070', 'anu@gmail.com', 'Shahganj, Agra', 1, 'Ram Nagar Puliya', 1, 26, 1, 1, '<p>Good Morning</p>'),
(2, 'Akash', '8745329621', 'akash@gmail.com', 'Shahganj, Agra', 1, '', 1, 26, 1, 2, '<p>Good Morning</p>'),
(3, 'Divya ', '8745369102', 'divya@gmail.com', 'Shahganj, Agra', 1, 'Cos Mos Mall', 1, 26, 1, 3, '<p>Good Morning</p>'),
(4, 'Sumit', '8798723255', 'sumit@gmail.com', 'Shahganj, Agra', 1, 'Cosmos Mall', 1, 26, 1, 4, '<p>Good Morning</p>'),
(5, 'Kunal', '8756085920', 'kunal@gmail.com', 'Shahganj, Agra', 1, 'Cosmos Mall', 1, 26, 1, 5, '<p>Good Morning</p>'),
(6, 'Krishna', '8979813265', 'krishna@gmail.com', 'Shahganj, Agra', 1, 'Cosmos Mall', 1, 26, 1, 6, '<p>Good Morning</p>'),
(7, 'Paras ', '9879654565', 'paras@gmail.com', 'Shahganj, Agra', 1, 'Cosmos Mall', 1, 26, 1, 7, '<p>Good Morning</p>'),
(8, 'Hemant', '8798652121', 'hemant@gmail.com', 'Shahganj, Agra', 1, 'Cosmos Mall', 1, 26, 1, 8, '<p>Good Morning</p>'),
(9, 'Ankit', '1234567890', 'ankit@gmail.com', 'Sanjay Place', 1, 'Cosmos Mall', 1, 26, 2, 9, '<p>Good Morning</p>'),
(10, 'Shnatanu ', '9998894655', 'shantanu@gmail.com', 'Sanjay Place', 1, 'Cosmos Mall', 1, 26, 3, 11, '<p>Good Morning</p>'),
(11, 'Shilpi', '9879854625', 'shipli@gmail.com', 'Sanjay Place ', 1, 'Cosmos Mall', 1, 26, 2, 10, '<p>Good Morning</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_group`
--

CREATE TABLE `tbl_customer_group` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customer_group`
--

INSERT INTO `tbl_customer_group` (`id`, `group_id`, `customer_id`) VALUES
(1, 1, 1),
(3, 1, 2),
(4, 5, 3),
(5, 5, 4),
(6, 5, 5),
(7, 1, 6),
(8, 6, 7),
(9, 6, 8),
(10, 1, 9),
(11, 1, 10),
(12, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_product`
--

CREATE TABLE `tbl_customer_product` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `size_id` int(11) NOT NULL,
  `delivery` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customer_product`
--

INSERT INTO `tbl_customer_product` (`id`, `customer_id`, `product_id`, `price`, `size_id`, `delivery`) VALUES
(3, 1, 9, 80, 5, '1'),
(4, 1, 12, 40, 6, '1'),
(5, 2, 11, 120, 9, '1'),
(6, 3, 10, 50, 9, '1'),
(7, 4, 9, 70, 6, '1'),
(8, 4, 10, 50, 9, '1'),
(9, 9, 10, 50, 9, '1'),
(10, 9, 9, 70, 5, '1'),
(11, 10, 12, 60, 6, '1'),
(12, 10, 11, 120, 9, '1'),
(13, 11, 9, 70, 7, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_boy`
--

CREATE TABLE `tbl_delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `group_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_delivery_boy`
--

INSERT INTO `tbl_delivery_boy` (`id`, `name`, `phone`, `email`, `address`, `group_id`) VALUES
(1, 'Anu', '8532874070', 'anu@gmail.com', '<p>Shahganj, Agra</p>', '1,5,6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_type`
--

CREATE TABLE `tbl_delivery_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_delivery_type`
--

INSERT INTO `tbl_delivery_type` (`id`, `name`) VALUES
(1, 'On Door '),
(2, 'Knock the Door'),
(3, 'Only Ring the bell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `name`) VALUES
(1, 'suraj');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`id`, `department`, `name`) VALUES
(1, 'Cardiology', 'Dr. Rajeev Sharma'),
(2, 'Cardiology', 'Dr. Nidhi Verma'),
(3, 'Neurology', 'Dr. Sandeep Yadav'),
(4, 'Neurology', 'Dr. Priya Singh'),
(13, 'Body', 'piyush'),
(16, 'Pregancay ', 'Arushi ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `course` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`id`, `name`, `email`, `mobile`, `phone`, `company_name`, `subject`, `message`, `course`) VALUES
(6, 'suraj', 'admin@gmail.com', '', '8789456456', 'eadwine tech', 'fabric', 'hello', ''),
(7, 'suraj', 'admin@gmail.com', '', '8789456456', 'eadwine tech', 'fabric', 'hello', ''),
(8, 'Suraj singh', 'Surajfoujdar45@gmail.com', '', '0902 424 4731', 'BANSIDHAR AGARWALLA & CO (P)', 'science', 'hello', ''),
(9, 'suraj', 'admin@gmail.com', '', NULL, NULL, 'hotel', 'hello', ''),
(10, 'Hotel Management Your Key to Success!', 'surajfoujdar90@gmail.com', '', '', NULL, 'hotel', 'hello', ''),
(11, 'suraj', 'tajconsultancyservice@gmail.com', '', '', NULL, 'dsfadsfds', 'hello', ''),
(12, 'suraj', 'vashishthashubham18@gmail.com', '', '8789456456', NULL, 'dsfadsfds', 'hello', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `gallery_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `gallery_type`, `name`, `image1`, `thumb1`) VALUES
(1, '', 'fabric', '6868e2754bbb0_portfolio-01-738x398.jpg', '6868e2754e2e4thumb_portfolio-01-738x398.jpg'),
(2, '', 'Cotton Fabric', '6868e4365a0b0_portfolio-01-768x512.jpg', '6868e4365bf11thumb_portfolio-01-768x512.jpg'),
(3, '', 'Silk Fabric', '6868e447b513d_portfolio-01-1200x800.jpg', '6868e447b70e0thumb_portfolio-01-1200x800.jpg'),
(4, '', 'Linen Fabric', '6868e45cac47b_portfolio-02-768x512.jpg', '6868e45cadbf3thumb_portfolio-02-768x512.jpg'),
(5, '', 'Wool Fabric', '6868e46a6488d_portfolio-03-768x512.jpg', '6868e46a66a0cthumb_portfolio-03-768x512.jpg'),
(6, '', 'Denim Fabric', '6868e487638ad_portfolio-06-600x700.jpg', '6868e487677a7thumb_portfolio-06-600x700.jpg'),
(7, '', 'Georgette Fabric', '6868e50069237_portfolio-04-738x398.jpg', '6868e5006afb7thumb_portfolio-04-738x398.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`) VALUES
(1, 'Group A'),
(5, 'Group B'),
(6, 'Group C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `name`) VALUES
(1, 'Sector 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_category`
--

CREATE TABLE `tbl_menu_category` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_menu_category`
--

INSERT INTO `tbl_menu_category` (`id`, `name`, `ordering`) VALUES
(5, 'Service', 1),
(9, 'Menu', 2),
(23, 'Portfolio Management', 4),
(26, 'Web Setting', 6),
(30, 'Course Master', 3),
(31, 'Enquiry Master', 5),
(32, 'Appointment', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_off_days`
--

CREATE TABLE `tbl_off_days` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_off_days`
--

INSERT INTO `tbl_off_days` (`id`, `customer_id`, `product_id`, `date`, `remark`) VALUES
(1, 1, 9, '2024-11-09', ''),
(2, 1, 9, '2024-11-10', ''),
(3, 1, 9, '2024-11-11', ''),
(5, 3, 11, '2024-11-14', ''),
(6, 3, 11, '2024-11-15', ''),
(7, 3, 11, '2024-11-16', ''),
(8, 1, 9, '2024-11-12', ''),
(9, 4, 9, '2024-11-13', 'Weekend'),
(10, 4, 9, '2024-11-14', 'Weekend'),
(11, 4, 9, '2024-11-15', 'Weekend'),
(12, 3, 10, '2024-11-13', 'not stay at home');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `group_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `delivery_type` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `size_id` int(11) NOT NULL,
  `size_name` varchar(50) NOT NULL,
  `size_value` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `cart_status` tinyint(1) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `delivery_boy_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `order_id`, `group_id`, `order_date`, `customer_id`, `customer_name`, `delivery_type`, `product_id`, `product_name`, `product_price`, `size_id`, `size_name`, `size_value`, `total_amount`, `cart_status`, `delivery_boy_id`, `delivery_boy_name`) VALUES
(88, '2024111321637362', 1, '2024-11-01 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(89, '2024111321637362', 1, '2024-11-01 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(90, '2024111321637362', 1, '2024-11-01 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(91, '2024111321637362', 1, '2024-11-01 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(92, '2024111321637362', 1, '2024-11-01 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(93, '2024111321637362', 1, '2024-11-01 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(94, '2024111321637362', 1, '2024-11-01 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(95, '2024111321637362', 1, '2024-11-01 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(96, '2024111321637362', 1, '2024-11-01 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(97, '2024111315741277', 5, '2024-11-01 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(98, '2024111315741277', 5, '2024-11-01 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(99, '2024111315741277', 5, '2024-11-01 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(100, '2024111315741277', 5, '2024-11-01 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(101, '2024111306703370', 1, '2024-11-02 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(102, '2024111306703370', 1, '2024-11-02 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(103, '2024111306703370', 1, '2024-11-02 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(104, '2024111306703370', 1, '2024-11-02 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(105, '2024111306703370', 1, '2024-11-02 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(106, '2024111306703370', 1, '2024-11-02 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(107, '2024111306703370', 1, '2024-11-02 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(108, '2024111306703370', 1, '2024-11-02 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(109, '2024111306703370', 1, '2024-11-02 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(110, '2024111348504183', 5, '2024-11-02 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(111, '2024111348504183', 5, '2024-11-02 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(112, '2024111348504183', 5, '2024-11-02 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(113, '2024111348504183', 5, '2024-11-02 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(114, '2024111347360993', 1, '2024-11-03 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(115, '2024111347360993', 1, '2024-11-03 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(116, '2024111347360993', 1, '2024-11-03 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(117, '2024111347360993', 1, '2024-11-03 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(118, '2024111347360993', 1, '2024-11-03 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(119, '2024111347360993', 1, '2024-11-03 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(120, '2024111347360993', 1, '2024-11-03 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(121, '2024111347360993', 1, '2024-11-03 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(122, '2024111347360993', 1, '2024-11-03 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(123, '2024111314167612', 5, '2024-11-03 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(124, '2024111314167612', 5, '2024-11-03 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(125, '2024111314167612', 5, '2024-11-03 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(126, '2024111314167612', 5, '2024-11-03 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(127, '2024111335254911', 1, '2024-11-04 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(128, '2024111335254911', 1, '2024-11-04 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(129, '2024111335254911', 1, '2024-11-04 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(130, '2024111335254911', 1, '2024-11-04 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(131, '2024111335254911', 1, '2024-11-04 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(132, '2024111335254911', 1, '2024-11-04 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(133, '2024111335254911', 1, '2024-11-04 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(134, '2024111335254911', 1, '2024-11-04 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(135, '2024111335254911', 1, '2024-11-04 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(136, '2024111325852356', 5, '2024-11-04 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(137, '2024111325852356', 5, '2024-11-04 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(138, '2024111325852356', 5, '2024-11-04 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(139, '2024111325852356', 5, '2024-11-04 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(140, '2024111350416522', 1, '2024-11-05 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(141, '2024111350416522', 1, '2024-11-05 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(142, '2024111350416522', 1, '2024-11-05 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(143, '2024111350416522', 1, '2024-11-05 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(144, '2024111350416522', 1, '2024-11-05 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(145, '2024111350416522', 1, '2024-11-05 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(146, '2024111350416522', 1, '2024-11-05 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(147, '2024111350416522', 1, '2024-11-05 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(148, '2024111350416522', 1, '2024-11-05 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(149, '2024111341236922', 5, '2024-11-05 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(150, '2024111341236922', 5, '2024-11-05 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(151, '2024111341236922', 5, '2024-11-05 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(152, '2024111341236922', 5, '2024-11-05 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(153, '2024111314195002', 1, '2024-11-06 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(154, '2024111314195002', 1, '2024-11-06 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(155, '2024111314195002', 1, '2024-11-06 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(156, '2024111314195002', 1, '2024-11-06 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(157, '2024111314195002', 1, '2024-11-06 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(158, '2024111314195002', 1, '2024-11-06 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(159, '2024111314195002', 1, '2024-11-06 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(160, '2024111314195002', 1, '2024-11-06 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(161, '2024111314195002', 1, '2024-11-06 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(162, '2024111350935326', 5, '2024-11-06 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(163, '2024111350935326', 5, '2024-11-06 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(164, '2024111350935326', 5, '2024-11-06 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(165, '2024111350935326', 5, '2024-11-06 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(166, '2024111359248647', 1, '2024-11-07 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(167, '2024111359248647', 1, '2024-11-07 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(168, '2024111359248647', 1, '2024-11-07 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(169, '2024111359248647', 1, '2024-11-07 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(170, '2024111359248647', 1, '2024-11-07 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(171, '2024111359248647', 1, '2024-11-07 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(172, '2024111359248647', 1, '2024-11-07 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(173, '2024111359248647', 1, '2024-11-07 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(174, '2024111359248647', 1, '2024-11-07 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(175, '2024111327180720', 5, '2024-11-07 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(176, '2024111327180720', 5, '2024-11-07 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(177, '2024111327180720', 5, '2024-11-07 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(178, '2024111327180720', 5, '2024-11-07 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(179, '2024111319804719', 1, '2024-11-08 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 1, 0, ''),
(180, '2024111319804719', 1, '2024-11-08 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(181, '2024111319804719', 1, '2024-11-08 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(182, '2024111319804719', 1, '2024-11-08 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(183, '2024111319804719', 1, '2024-11-08 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(184, '2024111319804719', 1, '2024-11-08 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(185, '2024111319804719', 1, '2024-11-08 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(186, '2024111319804719', 1, '2024-11-08 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(187, '2024111319804719', 1, '2024-11-08 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(188, '2024111342330026', 5, '2024-11-08 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(189, '2024111342330026', 5, '2024-11-08 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(190, '2024111342330026', 5, '2024-11-08 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(191, '2024111342330026', 5, '2024-11-08 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(192, '2024111329687214', 1, '2024-11-09 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(193, '2024111329687214', 1, '2024-11-09 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(194, '2024111329687214', 1, '2024-11-09 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(195, '2024111329687214', 1, '2024-11-09 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(196, '2024111329687214', 1, '2024-11-09 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(197, '2024111329687214', 1, '2024-11-09 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(198, '2024111329687214', 1, '2024-11-09 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(199, '2024111329687214', 1, '2024-11-09 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(200, '2024111349490271', 5, '2024-11-09 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(201, '2024111349490271', 5, '2024-11-09 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(202, '2024111349490271', 5, '2024-11-09 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(203, '2024111349490271', 5, '2024-11-09 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(204, '2024111301844258', 1, '2024-11-10 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(205, '2024111301844258', 1, '2024-11-10 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(206, '2024111301844258', 1, '2024-11-10 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(207, '2024111301844258', 1, '2024-11-10 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(208, '2024111301844258', 1, '2024-11-10 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(209, '2024111301844258', 1, '2024-11-10 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(210, '2024111301844258', 1, '2024-11-10 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(211, '2024111301844258', 1, '2024-11-10 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(212, '2024111311748667', 5, '2024-11-10 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(213, '2024111311748667', 5, '2024-11-10 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 1, 'Anu'),
(214, '2024111311748667', 5, '2024-11-10 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 1, 'Anu'),
(215, '2024111311748667', 5, '2024-11-10 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 1, 'Anu'),
(216, '2024111340965605', 1, '2024-11-11 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(217, '2024111340965605', 1, '2024-11-11 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(218, '2024111340965605', 1, '2024-11-11 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(219, '2024111340965605', 1, '2024-11-11 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(220, '2024111340965605', 1, '2024-11-11 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(221, '2024111340965605', 1, '2024-11-11 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(222, '2024111340965605', 1, '2024-11-11 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(223, '2024111340965605', 1, '2024-11-11 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(224, '2024111334812717', 5, '2024-11-11 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(225, '2024111334812717', 5, '2024-11-11 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(226, '2024111334812717', 5, '2024-11-11 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(227, '2024111334812717', 5, '2024-11-11 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(228, '2024111354243276', 1, '2024-11-12 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 1, 0, ''),
(229, '2024111354243276', 1, '2024-11-12 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(230, '2024111354243276', 1, '2024-11-12 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(231, '2024111354243276', 1, '2024-11-12 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 1, 0, ''),
(232, '2024111354243276', 1, '2024-11-12 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 1, 0, ''),
(233, '2024111354243276', 1, '2024-11-12 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 1, 0, ''),
(234, '2024111354243276', 1, '2024-11-12 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 1, 0, ''),
(235, '2024111354243276', 1, '2024-11-12 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 0, ''),
(236, '2024111359396603', 5, '2024-11-12 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 0, ''),
(237, '2024111359396603', 5, '2024-11-12 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 1, 0, ''),
(238, '2024111359396603', 5, '2024-11-12 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 1, 'Anu'),
(239, '2024111359396603', 5, '2024-11-12 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 1, 'Anu'),
(242, '2024111333931404', 6, '2024-11-01 00:00:00', 7, 'Paras ', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 1, 'Anu'),
(243, '2024111333931404', 6, '2024-11-01 00:00:00', 8, 'Hemant', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 1, 'Anu'),
(248, '2024111349230799', 5, '2024-11-13 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 1, 1, 'Anu'),
(249, '2024111349230799', 5, '2024-11-13 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 1, 1, 'Anu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packages`
--

CREATE TABLE `tbl_packages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(100) DEFAULT 'Year',
  `image1` varchar(255) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `button_text` varchar(100) DEFAULT 'Apply Now',
  `button_link` varchar(255) DEFAULT '#',
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_packages`
--

INSERT INTO `tbl_packages` (`id`, `title`, `price`, `duration`, `image1`, `features`, `button_text`, `button_link`, `status`, `created_at`) VALUES
(1, 'sadds', 100.00, '2025-07-07', NULL, '<p>dsfsdgsfdgdfgs</p>', 'Apply Now', '#', 1, '2025-07-07 16:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner`
--

CREATE TABLE `tbl_partner` (
  `id` int(11) NOT NULL,
  `partner_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_partner`
--

INSERT INTO `tbl_partner` (`id`, `partner_type`, `name`, `image1`, `thumb1`) VALUES
(41, 'International Partner', 'Lorem Ippsum', '68694cca44a18_client-04.png', '68694cca4636ethumb_client-04.png'),
(42, 'Alumni Partner', 'Lorem Ippsum', '68694cc0955a5_client-03.png', '68694cc097912thumb_client-03.png'),
(43, 'Alumni Partner', 'Lorem Ippsum', '68694cb6f1924_client-02.png', '68694cb700416thumb_client-02.png'),
(44, 'Alumni Partner', 'client 1', '68694ca8d4de6_client-01.png', '68694ca8d84dfthumb_client-01.png'),
(46, 'Hotel Partner', '', '68694d3112c00_client-02.png', '68694d3113466thumb_client-02.png'),
(47, 'Hotel Partner', '', '68694d73aa9a1_client-03.png', '68694d73ae52cthumb_client-03.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_image`
--

CREATE TABLE `tbl_portfolio_image` (
  `id` int(10) NOT NULL,
  `service_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_portfolio_image`
--

INSERT INTO `tbl_portfolio_image` (`id`, `service_id`, `name`, `image1`, `thumb1`, `url`) VALUES
(20, 0, 'Image4', '6749a9d02f217_four.jpg', '6749a9d02f535thumb_four.jpg', 'image'),
(21, 0, 'Image5', '6749a9a1cebea_five.jpg', '6749a9a1ceea5thumb_five.jpg', 'image'),
(22, 0, 'Image6', '6749a9ecd2d61_six.jpg', '6749a9ecd30d9thumb_six.jpg', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `base_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `price`, `base_price`) VALUES
(9, 'Cow Milk', 70.00, 60.00),
(10, 'Curd', 50.00, 40.00),
(11, 'Paneer', 120.00, 100.00),
(12, 'Buffallo Milk', 60.00, 55.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `image1` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `parent_id`, `name`, `url`, `meta_title`, `meta_keyword`, `meta_description`, `image1`, `thumb1`) VALUES
(8, 0, 'Mens Collection', 'mens-collection', 'Meta Title', 'Meta Keyword', '<p>Meta Description</p>', '6720b88f95ab8_item-03.png', '6720b88f968f2thumb_item-03.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `full_description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `thumb2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `link1` varchar(255) DEFAULT NULL,
  `link2` varchar(255) DEFAULT NULL,
  `link3` varchar(255) DEFAULT NULL,
  `link4` varchar(255) DEFAULT NULL,
  `link5` text DEFAULT NULL,
  `link6` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `about_since` varchar(255) DEFAULT NULL,
  `about_us_heading` text DEFAULT NULL,
  `about_us_sub_heading` text DEFAULT NULL,
  `about_short` text DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `thumb3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `thumb4` varchar(255) NOT NULL,
  `image5` varchar(255) NOT NULL,
  `thumb5` varchar(255) NOT NULL,
  `top_heading` varchar(255) DEFAULT NULL,
  `about_us_narration` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `point1` varchar(255) NOT NULL,
  `point2` varchar(255) DEFAULT NULL,
  `point3` varchar(255) DEFAULT NULL,
  `point4` varchar(255) DEFAULT NULL,
  `point5` varchar(255) NOT NULL,
  `point6` varchar(255) NOT NULL,
  `point7` varchar(255) NOT NULL,
  `point8` varchar(255) NOT NULL,
  `point9` varchar(255) NOT NULL,
  `point10` varchar(255) NOT NULL,
  `point11` varchar(255) NOT NULL,
  `point12` varchar(255) NOT NULL,
  `point13` varchar(255) NOT NULL,
  `point14` varchar(255) NOT NULL,
  `point15` varchar(255) NOT NULL,
  `point16` varchar(255) NOT NULL,
  `value1` varchar(255) NOT NULL,
  `value2` varchar(255) NOT NULL,
  `value3` varchar(255) NOT NULL,
  `value4` varchar(255) NOT NULL,
  `value5` varchar(255) NOT NULL,
  `value6` varchar(255) NOT NULL,
  `value7` varchar(255) NOT NULL,
  `value8` varchar(255) NOT NULL,
  `value9` varchar(255) NOT NULL,
  `value10` varchar(255) NOT NULL,
  `value11` varchar(255) NOT NULL,
  `value12` varchar(255) NOT NULL,
  `value13` varchar(255) NOT NULL,
  `value14` varchar(255) NOT NULL,
  `value15` varchar(255) NOT NULL,
  `value16` varchar(255) NOT NULL,
  `privacy` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `returns` text DEFAULT NULL,
  `vission` text NOT NULL,
  `mission` text NOT NULL,
  `career_hospitality` text NOT NULL,
  `internation_intenship` text NOT NULL,
  `alumani` text NOT NULL,
  `life_after_iahm` text NOT NULL,
  `open_timing` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `email`, `phone1`, `phone2`, `address`, `address1`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `map`, `description`, `about_since`, `about_us_heading`, `about_us_sub_heading`, `about_short`, `image1`, `thumb1`, `image2`, `thumb2`, `image3`, `thumb3`, `image4`, `thumb4`, `image5`, `thumb5`, `top_heading`, `about_us_narration`, `experience`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `point11`, `point12`, `point13`, `point14`, `point15`, `point16`, `value1`, `value2`, `value3`, `value4`, `value5`, `value6`, `value7`, `value8`, `value9`, `value10`, `value11`, `value12`, `value13`, `value14`, `value15`, `value16`, `privacy`, `terms`, `returns`, `vission`, `mission`, `career_hospitality`, `internation_intenship`, `alumani`, `life_after_iahm`, `open_timing`, `url`) VALUES
(1, 'rahulguptarrr@gmail.com', '+91-9412169652', '+91-9719859798', 'Ved Nagar Colony Devri Road Agra ', 'Hatheni bharatpur raj.', 'https://www.facebook.com/', 'https://x.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'Linkdin', 'Telegram', 'About Cambridge School', '<p>Medinova Hospital is a multi-specialty healthcare center committed to providing exceptional patient care<br /> and advanced medical services. Founded in 2010, our hospital has grown into a trusted name in healthcare,<br /> known for compassion, innovation, and medical excellence.</p>', '1994', 'Best Medical Care For Yourself and Your Family', 'Welcome to our IAHM', 'We are delivering next-generation textile production processes that will be radically efficient & sustainable manufacturer', '6889b9a8b7d4c_Healthlife.png', '6889b9a8b83f5thumb_Healthlife.png', '686b9cbac0e00_about.jpg', '686b9cbac3d09thumb_about.jpg', '671b4f07d87ee_img9.jpg', '671b4f07d8e08thumb_img9.jpg', '671b4f07ddce2_img2.jpg', '671b4f07de3a3thumb_img2.jpg', '671b4f07e25d0_img6.jpg', '671b4f07e2ad7thumb_img6.jpg', 'Ordered before 17:30, shipped today ï¿½ Support: +91 7300557847', 'No Matter What Problem You face You Have Found An Investigation Agency That Can Help You.', '07', '100% Campus Placement', '17000+ Alumni', '35+ Years Experienced Faculties', '5+ Countries International Internship Option', '100+ Hoteliors in Advisory Council', 'Quality Charger', 'AC Charger Services', 'EV Drivers Services', 'Charge Point Services', 'DC Charger Services', 'DC Charger Services', ' Building Services', '10', ' 42', '18', '30', 'We provide 100% placement for potential students with the best remuneration packages.', 'More than 17000 IAHMians working with renowned Hotel Groups, Airlines, Cruises etc across the world.', 'Highly Qualified and Experienced Faculties including vast experience of Hospitality Industry.', 'Courses with International Internships in countries like Malaysia, France, Dubai etc, progressively enhance candidate\'s career path.', 'More than 100 of hoteliers from top brands of hotels worldwide are in the advisory council of IAHM.', 'Possimus laoreet lec exercit , adipisicing hic ipsum rec sith.', 'Possimus laoreet lec exercit , adipisicing hic ipsum rec sith.', 'Possimus laoreet lec exercit , adipisicing hic ipsum rec sith.', 'Possimus laoreet lec exercit , adipisicing hic ipsum rec sith.', 'Possimus laoreet lec exercit , adipisicing hic ipsum rec sith.', 'Possimus laoreet lec exercit , adipisicing hic ipsum rec sith.', 'Possimus laoreet lec exercit , adipisicing hic ipsum rec sith.', 'Years Experience', 'Service Stations', 'Positive Reviews', 'Happy Customers', '<p><label>Privacy Policy</label></p>', '<p><label>Terms and Conditions</label></p>', '<p><label>Returns &amp; Refunds</label></p>', '', '', '', '', '', '', 'Mon - Sat (09.00AM - 06.00PM)', 'https://maps.google.com/maps?q=Hatheni%2C%20Bharatpur&z=13&output=embed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `unit_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`id`, `name`, `unit`, `unit_name`) VALUES
(5, '1 and half Ltr', '1.50', 'Litre'),
(6, '1 Ltr', '1', 'Litre'),
(7, '2 Ltr', '2', 'Litre'),
(8, '1 kg', '1', 'KiloGram'),
(9, '500 g', '.5', 'Gram');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `name`, `status`) VALUES
(1, 'Andhra Pradesh', 'Active'),
(2, 'Arunachal Pradesh', 'Active'),
(3, 'Assam', 'Active'),
(4, 'Bihar', 'Active'),
(5, 'Chhattisgarh', 'Active'),
(6, 'Goa', 'Active'),
(7, 'Gujarat', 'Active'),
(8, 'Haryana', 'Active'),
(9, 'Himachal Pradesh', 'Active'),
(10, 'Jharkhand', 'Active'),
(11, 'Karnataka', 'Active'),
(12, 'Kerala', 'Active'),
(13, 'Madhya Pradesh', 'Active'),
(14, 'Maharashtra', 'Active'),
(15, 'Manipur', 'Active'),
(16, 'Meghalaya', 'Active'),
(17, 'Mizoram', 'Active'),
(18, 'Nagaland', 'Active'),
(19, 'Odisha', 'Active'),
(20, 'Punjab', 'Active'),
(21, 'Rajasthan', 'Active'),
(22, 'Sikkim', 'Active'),
(23, 'Tamil Nadu', 'Active'),
(24, 'Telangana', 'Active'),
(25, 'Tripura', 'Active'),
(26, 'Uttar Pradesh', 'Active'),
(27, 'Uttarakhand', 'Active'),
(28, 'West Bengal', 'Active'),
(29, 'Andaman and Nicobar Islands', 'Active'),
(30, 'Chandigarh', 'Active'),
(31, 'Dadra and Nagar Haveli and Daman and Diu', 'Active'),
(32, 'Lakshadweep', 'Active'),
(33, 'Delhi', 'Active'),
(34, 'Puducherry', 'Active'),
(35, 'Ladakh', 'Active'),
(36, 'Jammu and Kashmir', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) NOT NULL,
  `thumb2` varchar(255) NOT NULL,
  `overview` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `awards` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `total_prize` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `name`, `post`, `image1`, `thumb1`, `image2`, `thumb2`, `overview`, `skills`, `awards`, `education`, `experience`, `total_prize`, `phone`, `email`, `website_link`, `address`) VALUES
(22, 'Dennis A. Pruitt', 'Associate Professor', '686b95ea1a1df_team-1.jpg', '686b95ea2145dthumb_team-1.jpg', '', '', '<p class=\"ttm-textcolor-darkgrey fs-18\"><em>&ldquo;Lorem Ipsum is simply dummy text of the printing and typesetting industry&rdquo;</em></p>\r\n<p>&nbsp;</p>', 'php\r\nhtml\r\ncss \r\njs ', '', '', '', '', '', '', '', 'hatheni bharatpur rajsthan'),
(23, 'Narendra Kushwah', 'CEO & Founder', '6868d9238d77d_team-img06.jpg', '6868d9238f560thumb_team-img06.jpg', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'Aarushi ', 'Team Lead ', '686b95fbb7c2a_team-3.jpg', '686b95fbb9fb7thumb_team-3.jpg', '', '', '<p>this is best doctor</p>', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_order`
--

CREATE TABLE `tbl_temp_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `group_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `delivery_type` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `size_id` int(11) NOT NULL,
  `size_name` varchar(50) NOT NULL,
  `size_value` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `cart_status` tinyint(1) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `delivery_boy_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_temp_order`
--

INSERT INTO `tbl_temp_order` (`id`, `order_id`, `group_id`, `order_date`, `customer_id`, `customer_name`, `delivery_type`, `product_id`, `product_name`, `product_price`, `size_id`, `size_name`, `size_value`, `total_amount`, `cart_status`, `delivery_boy_id`, `delivery_boy_name`) VALUES
(33, '2024111321637362', 1, '2024-11-01 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(34, '2024111321637362', 1, '2024-11-01 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(35, '2024111321637362', 1, '2024-11-01 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(36, '2024111321637362', 1, '2024-11-01 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(37, '2024111321637362', 1, '2024-11-01 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(38, '2024111321637362', 1, '2024-11-01 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(39, '2024111321637362', 1, '2024-11-01 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(40, '2024111321637362', 1, '2024-11-01 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(41, '2024111321637362', 1, '2024-11-01 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(42, '2024111306703370', 1, '2024-11-02 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(43, '2024111306703370', 1, '2024-11-02 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(44, '2024111306703370', 1, '2024-11-02 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(45, '2024111306703370', 1, '2024-11-02 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(46, '2024111306703370', 1, '2024-11-02 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(47, '2024111306703370', 1, '2024-11-02 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(48, '2024111306703370', 1, '2024-11-02 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(49, '2024111306703370', 1, '2024-11-02 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(50, '2024111306703370', 1, '2024-11-02 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(51, '2024111347360993', 1, '2024-11-03 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(52, '2024111347360993', 1, '2024-11-03 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(53, '2024111347360993', 1, '2024-11-03 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(54, '2024111347360993', 1, '2024-11-03 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(55, '2024111347360993', 1, '2024-11-03 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(56, '2024111347360993', 1, '2024-11-03 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(57, '2024111347360993', 1, '2024-11-03 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(58, '2024111347360993', 1, '2024-11-03 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(59, '2024111347360993', 1, '2024-11-03 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(60, '2024111335254911', 1, '2024-11-04 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(61, '2024111335254911', 1, '2024-11-04 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(62, '2024111335254911', 1, '2024-11-04 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(63, '2024111335254911', 1, '2024-11-04 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(64, '2024111335254911', 1, '2024-11-04 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(65, '2024111335254911', 1, '2024-11-04 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(66, '2024111335254911', 1, '2024-11-04 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(67, '2024111335254911', 1, '2024-11-04 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(68, '2024111335254911', 1, '2024-11-04 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(69, '2024111350416522', 1, '2024-11-05 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(70, '2024111350416522', 1, '2024-11-05 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(71, '2024111350416522', 1, '2024-11-05 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(72, '2024111350416522', 1, '2024-11-05 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(73, '2024111350416522', 1, '2024-11-05 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(74, '2024111350416522', 1, '2024-11-05 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(75, '2024111350416522', 1, '2024-11-05 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(76, '2024111350416522', 1, '2024-11-05 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(77, '2024111350416522', 1, '2024-11-05 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(78, '2024111314195002', 1, '2024-11-06 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(79, '2024111314195002', 1, '2024-11-06 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(80, '2024111314195002', 1, '2024-11-06 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(81, '2024111314195002', 1, '2024-11-06 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(82, '2024111314195002', 1, '2024-11-06 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(83, '2024111314195002', 1, '2024-11-06 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(84, '2024111314195002', 1, '2024-11-06 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(85, '2024111314195002', 1, '2024-11-06 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(86, '2024111314195002', 1, '2024-11-06 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(87, '2024111359248647', 1, '2024-11-07 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(88, '2024111359248647', 1, '2024-11-07 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(89, '2024111359248647', 1, '2024-11-07 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(90, '2024111359248647', 1, '2024-11-07 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(91, '2024111359248647', 1, '2024-11-07 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(92, '2024111359248647', 1, '2024-11-07 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(93, '2024111359248647', 1, '2024-11-07 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(94, '2024111359248647', 1, '2024-11-07 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(95, '2024111359248647', 1, '2024-11-07 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(96, '2024111319804719', 1, '2024-11-08 00:00:00', 1, 'Anu', 'On Door ', 9, 'Cow Milk', 80.00, 5, '1 and half Ltr', '1.50', 120.00, 0, 0, ''),
(97, '2024111319804719', 1, '2024-11-08 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(98, '2024111319804719', 1, '2024-11-08 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(99, '2024111319804719', 1, '2024-11-08 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(100, '2024111319804719', 1, '2024-11-08 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(101, '2024111319804719', 1, '2024-11-08 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(102, '2024111319804719', 1, '2024-11-08 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(103, '2024111319804719', 1, '2024-11-08 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(104, '2024111319804719', 1, '2024-11-08 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(105, '2024111329687214', 1, '2024-11-09 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(106, '2024111329687214', 1, '2024-11-09 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(107, '2024111329687214', 1, '2024-11-09 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(108, '2024111329687214', 1, '2024-11-09 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(109, '2024111329687214', 1, '2024-11-09 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(110, '2024111329687214', 1, '2024-11-09 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(111, '2024111329687214', 1, '2024-11-09 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(112, '2024111329687214', 1, '2024-11-09 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(113, '2024111301844258', 1, '2024-11-10 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(114, '2024111301844258', 1, '2024-11-10 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(115, '2024111301844258', 1, '2024-11-10 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(116, '2024111301844258', 1, '2024-11-10 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(117, '2024111301844258', 1, '2024-11-10 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(118, '2024111301844258', 1, '2024-11-10 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(119, '2024111301844258', 1, '2024-11-10 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(120, '2024111301844258', 1, '2024-11-10 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(121, '2024111340965605', 1, '2024-11-11 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(122, '2024111340965605', 1, '2024-11-11 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(123, '2024111340965605', 1, '2024-11-11 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(124, '2024111340965605', 1, '2024-11-11 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(125, '2024111340965605', 1, '2024-11-11 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(126, '2024111340965605', 1, '2024-11-11 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(127, '2024111340965605', 1, '2024-11-11 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(128, '2024111340965605', 1, '2024-11-11 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(129, '2024111354243276', 1, '2024-11-12 00:00:00', 1, 'Anu', 'On Door ', 12, 'Buffallo Milk', 40.00, 6, '1 Ltr', '1', 40.00, 0, 0, ''),
(130, '2024111354243276', 1, '2024-11-12 00:00:00', 2, 'Akash', 'On Door ', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(131, '2024111354243276', 1, '2024-11-12 00:00:00', 9, 'Ankit', 'Knock the Door', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(132, '2024111354243276', 1, '2024-11-12 00:00:00', 9, 'Ankit', 'Knock the Door', 9, 'Cow Milk', 70.00, 5, '1 and half Ltr', '1.50', 105.00, 0, 0, ''),
(133, '2024111354243276', 1, '2024-11-12 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 12, 'Buffallo Milk', 60.00, 6, '1 Ltr', '1', 60.00, 0, 0, ''),
(134, '2024111354243276', 1, '2024-11-12 00:00:00', 10, 'Shnatanu ', 'Only Ring the bell', 11, 'Paneer', 120.00, 9, '500 g', '.5', 60.00, 0, 0, ''),
(135, '2024111354243276', 1, '2024-11-12 00:00:00', 11, 'Shilpi', 'Knock the Door', 9, 'Cow Milk', 70.00, 7, '2 Ltr', '2', 140.00, 0, 0, ''),
(136, '2024111354243276', 1, '2024-11-12 00:00:00', 6, 'Krishna', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(137, '2024111315741277', 5, '2024-11-01 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(138, '2024111315741277', 5, '2024-11-01 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(139, '2024111315741277', 5, '2024-11-01 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(140, '2024111315741277', 5, '2024-11-01 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(141, '2024111348504183', 5, '2024-11-02 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(142, '2024111348504183', 5, '2024-11-02 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(143, '2024111348504183', 5, '2024-11-02 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(144, '2024111348504183', 5, '2024-11-02 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(145, '2024111314167612', 5, '2024-11-03 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(146, '2024111314167612', 5, '2024-11-03 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(147, '2024111314167612', 5, '2024-11-03 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(148, '2024111314167612', 5, '2024-11-03 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(149, '2024111325852356', 5, '2024-11-04 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(150, '2024111325852356', 5, '2024-11-04 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(151, '2024111325852356', 5, '2024-11-04 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(152, '2024111325852356', 5, '2024-11-04 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(153, '2024111341236922', 5, '2024-11-05 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(154, '2024111341236922', 5, '2024-11-05 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(155, '2024111341236922', 5, '2024-11-05 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(156, '2024111341236922', 5, '2024-11-05 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(157, '2024111350935326', 5, '2024-11-06 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(158, '2024111350935326', 5, '2024-11-06 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(159, '2024111350935326', 5, '2024-11-06 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(160, '2024111350935326', 5, '2024-11-06 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(161, '2024111327180720', 5, '2024-11-07 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(162, '2024111327180720', 5, '2024-11-07 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(163, '2024111327180720', 5, '2024-11-07 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(164, '2024111327180720', 5, '2024-11-07 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(165, '2024111342330026', 5, '2024-11-08 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(166, '2024111342330026', 5, '2024-11-08 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(167, '2024111342330026', 5, '2024-11-08 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(168, '2024111342330026', 5, '2024-11-08 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(169, '2024111349490271', 5, '2024-11-09 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(170, '2024111349490271', 5, '2024-11-09 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(171, '2024111349490271', 5, '2024-11-09 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(172, '2024111349490271', 5, '2024-11-09 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(173, '2024111311748667', 5, '2024-11-10 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(174, '2024111311748667', 5, '2024-11-10 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(175, '2024111311748667', 5, '2024-11-10 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(176, '2024111311748667', 5, '2024-11-10 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(177, '2024111334812717', 5, '2024-11-11 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(178, '2024111334812717', 5, '2024-11-11 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(179, '2024111334812717', 5, '2024-11-11 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(180, '2024111334812717', 5, '2024-11-11 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(181, '2024111359396603', 5, '2024-11-12 00:00:00', 3, 'Divya ', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(182, '2024111359396603', 5, '2024-11-12 00:00:00', 4, 'Sumit', 'On Door ', 9, 'Cow Milk', 70.00, 6, '1 Ltr', '1', 70.00, 0, 0, ''),
(183, '2024111359396603', 5, '2024-11-12 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 0, ''),
(184, '2024111359396603', 5, '2024-11-12 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 0, ''),
(185, '2024111333931404', 6, '2024-11-01 00:00:00', 7, 'Paras ', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 1, 'Anu'),
(186, '2024111333931404', 6, '2024-11-01 00:00:00', 8, 'Hemant', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 1, 'Anu'),
(187, '2024111317592028', 6, '2024-11-13 00:00:00', 7, 'Paras ', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 1, 'Anu'),
(188, '2024111317592028', 6, '2024-11-13 00:00:00', 8, 'Hemant', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 1, 'Anu'),
(189, '2024111349230799', 5, '2024-11-13 00:00:00', 4, 'Sumit', 'On Door ', 10, 'Curd', 50.00, 9, '500 g', '.5', 25.00, 0, 1, 'Anu'),
(190, '2024111349230799', 5, '2024-11-13 00:00:00', 5, 'Kunal', 'On Door ', 0, '', 0.00, 0, '', '', 0.00, 0, 1, 'Anu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `heading`, `description`, `image1`, `thumb1`, `user_id`) VALUES
(11, 'suraj', 'Experience Luxury & Comfort at Hotel Prem In', '<p>Experience Luxury &amp; Comfort at Hotel Prem InExperience Luxury &amp; Comfort at Hotel Prem InExperience Luxury &amp; Comfort at Hotel Prem InExperience Luxury &amp; Comfort at Hotel Prem In</p>', '686a3768bcbf7_testimonial-2.jpg', '686a3768bf222thumb_testimonial-2.jpg', NULL),
(12, 'Narendra Kushwah', 'There are many variations passage have suffered available.', '<p>There are many variations passage have suffered available.There are many variations passage have suffered available.There are many variations passage have suffered available.There are many variations passage have suffered available.</p>', '686a375e22d43_testimonial-1.jpg', '686a375e26100thumb_testimonial-1.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_menu`
--
ALTER TABLE `tbl_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_award`
--
ALTER TABLE `tbl_award`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_course_category`
--
ALTER TABLE `tbl_course_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `delivery_type_id` (`delivery_type_id`);

--
-- Indexes for table `tbl_customer_group`
--
ALTER TABLE `tbl_customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_product`
--
ALTER TABLE `tbl_customer_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_delivery_boy`
--
ALTER TABLE `tbl_delivery_boy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_delivery_type`
--
ALTER TABLE `tbl_delivery_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu_category`
--
ALTER TABLE `tbl_menu_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_off_days`
--
ALTER TABLE `tbl_off_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_portfolio_image`
--
ALTER TABLE `tbl_portfolio_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_order`
--
ALTER TABLE `tbl_temp_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin_menu`
--
ALTER TABLE `tbl_admin_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_award`
--
ALTER TABLE `tbl_award`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_course_category`
--
ALTER TABLE `tbl_course_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customer_group`
--
ALTER TABLE `tbl_customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_customer_product`
--
ALTER TABLE `tbl_customer_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_delivery_boy`
--
ALTER TABLE `tbl_delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_delivery_type`
--
ALTER TABLE `tbl_delivery_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_menu_category`
--
ALTER TABLE `tbl_menu_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_off_days`
--
ALTER TABLE `tbl_off_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_portfolio_image`
--
ALTER TABLE `tbl_portfolio_image`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_temp_order`
--
ALTER TABLE `tbl_temp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD CONSTRAINT `tbl_customer_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`id`),
  ADD CONSTRAINT `tbl_customer_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`id`),
  ADD CONSTRAINT `tbl_customer_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`id`),
  ADD CONSTRAINT `tbl_customer_ibfk_4` FOREIGN KEY (`delivery_type_id`) REFERENCES `tbl_delivery_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
