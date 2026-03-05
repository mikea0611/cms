CREATE DATABASE IF NOT EXISTS phpbook_1;
USE phpbook_1;

--
-- Database: `phpbook-1`
-- BiteRate Cafeteria Food Rating Website
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `summary`, `content`, `created`, `category_id`, `member_id`, `image_id`, `published`) VALUES
(1, 'Chicken Adobo Rice Meal', 'Student favorite Filipino rice meal', 'Chicken Adobo Rice Meal is one of the most popular dishes in the school cafeteria. Students love its savory soy sauce flavor paired with warm rice. BiteRate users frequently rate this meal highly because it is filling, affordable, and consistently available during lunch hours.', '2024-03-01 10:10:03', 1, 1, 1, 1),

(2, 'Cafeteria Burger Review', 'Classic burger served during lunch', 'The cafeteria burger is a quick and satisfying option for students who prefer sandwiches over rice meals. BiteRate users often comment on the toasted bun and juicy patty. Some students suggest adding more vegetables or sauces to improve the flavor experience.', '2024-03-02 09:30:03', 2, 2, 2, 1),

(3, 'Filipino Style Spaghetti', 'Sweet spaghetti served in school cafeteria', 'Filipino-style spaghetti is known for its slightly sweet tomato sauce and sliced hotdogs. Students enjoy ordering this during break times. Reviews on BiteRate show mixed opinions, with many students praising the taste while others prefer less sweetness.', '2024-03-04 12:20:52', 3, 3, 3, 1),

(4, 'French Fries Snack Review', 'Popular cafeteria snack for students', 'French fries are one of the most ordered snacks in the cafeteria. BiteRate users frequently rate them based on crispiness, salt level, and portion size. Many students say they are best when served fresh and hot.', '2024-03-05 14:15:35', 2, 2, 4, 1),

(5, 'Milk Tea Drink Review', 'Refreshing drink popular among students', 'Milk tea has become one of the most requested drinks in the cafeteria. BiteRate reviews show students enjoy the sweetness and chewy tapioca pearls. Some suggestions include offering different sugar levels and flavors.', '2024-03-07 16:11:16', 4, 1, 5, 1),

(6, 'Hotdog Sandwich', 'Affordable sandwich option', 'The hotdog sandwich is a simple but filling snack option. Many students buy it during short breaks between classes. BiteRate ratings highlight its affordability and convenience, though some students suggest adding cheese or extra toppings.', '2024-03-09 10:05:47', 2, 3, 6, 1),

(7, 'Fried Chicken Meal', 'Crispy fried chicken with rice', 'Fried chicken meals are among the top-rated items on BiteRate. Students enjoy the crispy texture and savory seasoning. It is often sold out quickly during peak lunch hours because of its popularity.', '2024-03-10 13:25:22', 1, 1, 7, 1),

(8, 'Pancit Canton Noodles', 'Savory noodle dish served at cafeteria', 'Pancit Canton is a Filipino noodle dish commonly served during special cafeteria menus. BiteRate users rate it based on flavor balance and vegetable portions. Many students enjoy it as an alternative to rice meals.', '2024-03-12 15:40:49', 3, 2, 8, 1),

(9, 'Fruit Shake Drinks', 'Fresh fruit drinks available in cafeteria', 'Fruit shakes are refreshing beverages made from blended fruits and ice. BiteRate users often recommend mango and banana flavors. These drinks are popular during hot afternoons after classes.', '2024-03-13 17:15:40', 4, 3, 9, 1),

(10, 'Takoyaki Student Suggestion', 'Japanese snack students want in cafeteria', 'Many BiteRate users have suggested adding Takoyaki to the cafeteria menu. This Japanese street food made of batter and octopus balls is popular among students who enjoy international snacks.', '2024-03-15 11:10:40', 2, 1, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `navigation`) VALUES
(1, 'Rice Meals', 'Full cafeteria meals served with rice', 1),
(2, 'Snacks', 'Quick cafeteria snacks for students', 1),
(3, 'Noodles', 'Pasta and noodle dishes available', 1),
(4, 'Drinks', 'Refreshing beverages sold in the cafeteria', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `file` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `file`, `alt`) VALUES
(1, 'chicken-adobo.jpg', 'Chicken Adobo Rice Meal'),
(2, 'cafeteria-burger.jpg', 'Cafeteria Burger Meal'),
(3, 'filipino-spaghetti.jpg', 'Filipino Style Spaghetti'),
(4, 'french-fries.jpg', 'Crispy French Fries'),
(6, 'fried-chicken.jpg', 'Fried Chicken Rice Meal'),
(7, 'pancit-canton.jpg', 'Pancit Canton Noodles'),
(8, 'milk-tea.jpg', 'Milk Tea Drink'),
(9, 'carbonara-pasta.jpg', 'Creamy chicken carbonara pasta'),
(10, 'hotdog-sandwich.jpg', 'Hotdog Sandwich'),
(11, 'takoyaki.jpg', 'Suggested Takoyaki Snack'),
(12, 'ramen.jpg', 'Suggested Ramen Dish'),
(13, 'chicken-sandwich.jpg', 'Crispy chicken sandwich'),
(14, 'pork sinigang.jpg', 'Tangy Pork Sinigang Soup'),
(15, 'fried-rice.jpg', 'Special Fried Rice Meal'),
(16, 'chicken-sandwich.jpg', 'Chicken Sandwich'),
(17, 'beef-tapa.jpg', 'Beef tapa with garlic rice'),
(18, 'bibingka.jpg', 'Sweet Bibingka topped with shredded coconut'),
(19, 'bulalo.jpg', 'Brothy Beef Bulalo'),
(20, 'taste-test.jpg', 'Rating tastes of food'),
(21, 'food-ranking.jpg', 'Top rated cafeteria foods'),
(22, 'food-feedback.png', 'Student feedback about meals'),
(23, 'menu-board.png', 'Cafeteria food menu board'),
(24, 'food-suggestions.jpg', 'Student suggested foods');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `forename` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `forename`, `surname`, `email`, `password`, `joined`, `picture`) VALUES
(1, 'Alex', 'Reyes', 'alex@student.edu', 'student-pass-1', '2024-03-01 09:00:00', 'alex.jpg'),
(2, 'Maria', 'Santos', 'maria@student.edu', 'student-pass-2', '2024-03-01 10:00:00', NULL),
(3, 'John', 'Garcia', 'john@student.edu', 'student-pass-3', '2024-03-02 11:00:00', 'john.jpg');
