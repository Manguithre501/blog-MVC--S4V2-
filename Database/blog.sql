-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  ven. 04 nov. 2022 à 10:18
-- Version du serveur :  5.7.28
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatars/user.png',
  `password` varchar(255) NOT NULL,
  `role` enum('administrateur','moderateur') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `avatar`, `password`, `role`, `created_at`) VALUES
(1, 'Administrateur', 'admin@gmail.com', 'avatars/user.png', '$2y$10$8rqcohdbySs3CcC4j4PLre8mnrQe0aLoBTrgJ/h2Of5FIYSEOX9lm', 'administrateur', '1985-03-23 17:53:26');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `categorie_id` (`categorie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `admin_id`, `categorie_id`, `title`, `content`, `image`, `status`, `created_at`) VALUES
(1, 1, 1, 'Exercitationem impedit molestiae fugit natus cumque facere ut dolore architecto iure corrupti ut.', 'Minus dolores architecto in nam et commodi ut. Qui earum numquam quo quo. Quas adipisci qui esse laudantium. Magni velit nihil soluta in dolore soluta cupiditate maxime.\n\nRepellendus veritatis dignissimos asperiores corporis itaque necessitatibus sit. Ut quia enim molestiae nihil possimus. Ipsum in qui soluta et.\n\nEst sunt tempore est amet veniam. Laudantium commodi dicta eaque id porro odit. Quidem officiis nostrum praesentium soluta.\n\nEum officiis sit molestiae iure incidunt. Laborum reiciendis reiciendis quasi quas reprehenderit est in repellat. Doloremque voluptatum voluptatem fugiat numquam est ea.', 'articles/6.jpg', 1, '2009-08-18 09:10:38'),
(2, 1, 1, 'Quo est dolor repudiandae qui harum perferendis velit non ullam delectus aut voluptate.', 'Quia debitis qui rerum eos. Sit omnis alias voluptatem ut necessitatibus placeat sed. Et autem ut magnam totam.\n\nEt occaecati velit laudantium quod deserunt sed. Sequi numquam est inventore ut omnis saepe eaque. Aperiam quo blanditiis animi repudiandae eius esse expedita. Ut eos laborum asperiores iste sunt.\n\nNulla doloremque provident accusantium molestiae nihil quam. Ut odio dolor ut ab ullam delectus delectus.\n\nFacere sed vel qui dolorum eum. Dolorem debitis sunt voluptate neque explicabo et voluptatem.', 'articles/5.jpg', 1, '2019-08-06 20:55:17'),
(3, 1, 1, 'Sit magni eos sint sequi adipisci corporis et voluptatibus et.', 'Et maxime ad placeat impedit. Neque cum atque totam dolore. Aut molestiae voluptatem quis dolores.\n\nQuam nostrum eaque ea assumenda repudiandae sunt laborum. Est et dolor velit fuga. Et molestiae enim quidem. Quaerat eligendi enim nulla.\n\nNumquam eius incidunt quia delectus vel consequuntur fugit. Autem non soluta optio perferendis incidunt modi maiores. Culpa et optio et. Nisi at ut fugit deserunt odio dolore.', 'articles/3.jpg', 0, '1991-08-16 06:23:58'),
(4, 1, 3, 'Dicta et aliquid ut eos nostrum et.', 'Vel dolor pariatur consequatur natus quos eos pariatur maxime. Ex quo quisquam aspernatur blanditiis. Nihil ea qui repellat sunt dolores quos provident molestiae.\n\nAccusantium amet omnis ut quia. Necessitatibus error et veritatis iusto repellat deserunt dolore est.\n\nUt cupiditate eum impedit occaecati ratione. Repudiandae qui magnam quis asperiores. Vel enim labore asperiores laudantium tenetur nemo repellendus. Et et minus perspiciatis nemo qui est sint. Iusto expedita sapiente nam ut.\n\nLibero alias consectetur ab qui hic fugit. Perferendis consequatur non molestiae. Quia aut quia rerum.', 'articles/4.jpg', 1, '2001-04-30 14:20:32'),
(5, 1, 1, 'Dolores illum excepturi corporis non enim et.', 'Rerum id quas repudiandae sapiente ipsa consequatur. Minus sit earum et voluptatibus voluptate qui. Ut vero qui corrupti error dolores.\n\nDistinctio expedita asperiores similique aut nulla vel. Ut ratione doloribus voluptate eos perferendis nihil eveniet quidem. At recusandae aut quae ratione a ex.\n\nDolorem est similique recusandae voluptatem consequatur consectetur et. Quia aperiam aspernatur et qui nam sunt sint. Cupiditate quidem iure sed ullam libero. Rem dolorum eveniet deleniti natus quia.\n\nNon est et ea. Delectus non quis esse. Unde id vitae voluptatibus.\n\nEt suscipit asperiores excepturi repellat blanditiis accusamus. Iure mollitia in nobis unde aut. Autem qui aut voluptate quidem.', 'articles/6.jpg', 1, '1990-08-02 13:27:11'),
(6, 1, 1, 'Consequuntur reiciendis est aperiam non velit eligendi alias ut.', 'Mollitia qui reprehenderit hic quo odio. Voluptas illum veniam itaque ut. Dolor at quaerat architecto quia. Dolores ut eius consequatur quis rerum.\n\nNobis ratione voluptate sunt nam quis et dolore. Aut sit similique vitae vel. Ratione saepe numquam facere dolores eos voluptatum quisquam.\n\nEligendi unde reprehenderit veritatis et. Occaecati sint modi illo sed autem accusamus vel. Cumque inventore molestiae blanditiis adipisci maxime at voluptatem. Qui placeat voluptatem ut odio.\n\nRepellendus quo et voluptas corporis incidunt quo. Et aut atque esse ut aut nam commodi. Qui ipsam illo voluptas eum quia. Nisi unde minima cumque non dolore.', 'articles/1.jpg', 0, '1995-07-21 00:01:13'),
(7, 1, 2, 'Voluptatem magnam ea inventore eos cumque iure dolore et ullam aliquid molestiae.', 'Molestiae totam harum excepturi ut blanditiis quae et. Cupiditate minus libero in quia possimus voluptatem. Consectetur illum error voluptas facilis et.\n\nDolor minima ducimus eos exercitationem tenetur illum aliquid. Quis neque omnis quis voluptas in cum recusandae. Assumenda esse et quisquam hic est. Consectetur adipisci beatae voluptatem ducimus.\n\nQuos minus corporis molestiae sequi. Sint quisquam fugit omnis ducimus rerum hic. Ut aperiam molestiae aut nisi.\n\nNesciunt sit vel sapiente dolor temporibus magni illo quis. Ea necessitatibus et aspernatur incidunt. Rerum aut quidem saepe voluptate sit a.', 'articles/2.jpg', 1, '1974-12-06 04:33:57'),
(8, 1, 2, 'Labore aut et voluptas accusantium molestias alias error et dolor esse.', 'Et autem autem accusamus mollitia. Dolorum libero non eum libero omnis voluptate soluta. Tempore facilis omnis temporibus provident facilis voluptatem.\n\nExcepturi soluta suscipit et asperiores. Consequatur voluptate tempora vero quisquam qui in. Voluptatum sint rerum nesciunt voluptatibus aliquid. Est non ratione nesciunt cumque labore eos dolorem.\n\nQui nulla fugit maxime. Et quos sunt consequatur ut. Debitis et et ad.\n\nMinima vero vitae impedit perferendis. Velit iure perspiciatis optio laboriosam unde quia velit iure. Eum voluptatem aliquid et doloremque rerum qui. Ullam cum dicta perferendis asperiores dolor distinctio sunt.\n\nArchitecto repellat quo optio dolorem. Praesentium ut error voluptas dignissimos. Placeat sapiente et dolores numquam.', 'articles/3.jpg', 0, '1972-01-15 21:23:29'),
(9, 1, 1, 'Ipsum consectetur modi nesciunt tempora voluptas pariatur voluptatem quia facilis ullam.', 'Similique occaecati ratione consequatur perspiciatis. Est delectus ut sunt voluptatibus et. Suscipit tempora ut est autem. Voluptate ipsum qui consequuntur dolores est est libero aperiam. Tempore similique dolores architecto accusamus voluptatem.\n\nIllo quia consequuntur quam eveniet. Reiciendis quas fugiat impedit fugit aut aut. Laudantium ea quidem provident qui soluta fuga ex soluta. Doloremque aliquid necessitatibus eos vero.\n\nVoluptates possimus perspiciatis cum quam et blanditiis laudantium. Est asperiores itaque nihil praesentium sit qui. Quos dolorum voluptatum id ad ratione soluta nisi et. Non ea corrupti ullam unde animi.\n\nNisi consequatur labore est eos. Eaque illo incidunt et quae dolorem quis. Dolore eveniet tempora molestias modi.', 'articles/6.jpg', 0, '1998-05-12 06:20:25'),
(10, 1, 2, 'Aut corporis quia minima sunt porro ipsam itaque officiis voluptas perferendis qui rerum sint.', 'Laborum odio nostrum eos ea ab et tempora ipsum. Perferendis nesciunt sint in in debitis sapiente. Tempora quae earum dicta dolores sed. Minus voluptatem quae eveniet saepe nihil et. Hic aut quibusdam in.\n\nLabore voluptate et aut ea. Sed sunt voluptas necessitatibus est recusandae. Quidem sint numquam harum ratione dolorem id illum. Itaque accusamus neque vero qui.\n\nConsequatur velit reprehenderit neque blanditiis. Eligendi blanditiis sed ut reiciendis porro. Dolor et illum necessitatibus consequuntur iusto autem id. Voluptatem tempore sunt et quia est voluptas sequi.\n\nIste enim distinctio iure eius. Est qui dolorem laboriosam. Nisi maxime quia unde corporis quasi saepe. Consequatur tempore aliquam harum magnam voluptatem repellat.', 'articles/2.jpg', 0, '2019-11-22 06:12:16'),
(11, 1, 2, 'Voluptatem asperiores reiciendis qui esse sed aut quidem provident possimus.', 'Sit dolores magnam expedita aut corrupti ut eum consequuntur. Consectetur aspernatur ut eum. Nam autem sapiente eos. Earum perferendis necessitatibus ipsum et vel neque. Corporis eum est atque exercitationem.\n\nSint quo dolores ex. Sed ab tempore et aut sit velit corporis itaque. Odit et debitis hic quia non. Molestiae laboriosam iure voluptas consequatur necessitatibus voluptatibus.\n\nEos nulla veritatis consequatur. Sed est quis asperiores non. Sint sint totam quo.', 'articles/6.jpg', 0, '2008-04-25 01:47:07'),
(12, 1, 1, 'Reprehenderit modi magnam provident dolorum odit sit tempora aut.', 'Quos iste porro adipisci accusamus quaerat dolorum. A qui ratione et aut illo sit impedit. Nobis saepe laborum eos fugiat dolore est vitae. Repudiandae sunt mollitia voluptatum.\n\nHic maxime non ut tempore voluptas ex dicta. Dicta cupiditate perferendis qui sunt modi quia. Aliquid reiciendis fugit aut nulla magnam temporibus quasi.\n\nAsperiores ipsa ipsum itaque consequuntur et. Qui voluptates laudantium officia reprehenderit. Provident non provident doloribus voluptatem illo eveniet. Voluptas quo nobis et possimus. Et mollitia perspiciatis laborum explicabo.\n\nSequi deleniti quis qui. Inventore quo architecto perferendis dolores est soluta eligendi. Magni voluptatem mollitia maxime fugit laborum repellendus ut. Dolor aperiam earum nesciunt.', 'articles/4.jpg', 0, '1999-07-06 09:43:03'),
(13, 1, 2, 'Aperiam ut vel tempore fugit inventore quis voluptas accusamus vel et iusto.', 'Eaque accusantium atque rerum consequatur laboriosam adipisci et id. Odit nobis corrupti et autem reprehenderit est qui atque. Non enim non animi et repellat hic aspernatur et. Laboriosam perferendis occaecati provident animi consequatur.\n\nAut debitis nobis aspernatur. Est aut voluptas voluptatem enim. Aut consequuntur eum sed quibusdam quis aut fugit.\n\nRecusandae quia sit tenetur debitis suscipit. Eligendi odio soluta autem dolore. Animi doloremque veniam voluptatem et voluptatem.', 'articles/2.jpg', 1, '2008-05-16 05:09:11'),
(14, 1, 3, 'Molestiae quas eius unde et quasi enim eveniet aut doloribus et nemo eos dolorem.', 'Repellat et deleniti sint aperiam. Possimus aut similique asperiores veniam. Quo asperiores doloremque quidem deserunt non laudantium vitae. Modi sed doloremque et quibusdam incidunt eligendi.\n\nVel est ipsam sed consectetur qui commodi odio. Et velit omnis sed. Adipisci neque alias harum dolores modi vero.\n\nDelectus explicabo quam aliquid consequatur non et. Est voluptates deleniti exercitationem nulla dolorem ipsum harum esse. Ut ea et eos neque consectetur ut consequuntur.', 'articles/2.jpg', 1, '2020-11-17 08:50:07'),
(15, 1, 3, 'Hic enim animi qui eum nam inventore quas.', 'Quia quam iusto id itaque laudantium veniam. Porro consectetur blanditiis est vel dolor ea ut dolores. Exercitationem eligendi veritatis corrupti iure qui dolorem. Quia molestias et sint.\n\nPossimus distinctio saepe optio impedit possimus quia odio. Quo dignissimos eos sequi consequuntur ipsum fugit. Dolorem cupiditate sit exercitationem minima dicta est. Voluptas quia non nesciunt quis.\n\nExplicabo doloremque quia voluptas exercitationem et. Voluptatem non optio asperiores porro quae nisi illum doloremque. Deleniti voluptatem ratione quaerat.\n\nQui placeat nulla dolor possimus ut et nobis. Doloremque similique beatae totam sunt quis quis deleniti aut. Velit ut sit rem adipisci non praesentium facere. Dolorem expedita dolorum aliquam omnis error quibusdam maxime.\n\nAut accusamus non nobis quidem tempore ut. Qui hic tenetur velit sint iusto. Vel perspiciatis dolor repudiandae ut quidem.', 'articles/5.jpg', 1, '1990-06-08 23:54:05'),
(16, 1, 3, 'Culpa officia et corrupti qui eaque enim.', 'Sequi facilis nulla explicabo dignissimos odio. Sint expedita est sapiente nemo. Necessitatibus dolorem magnam vero ullam quibusdam.\n\nEveniet facere ex rem beatae occaecati. Qui autem beatae sed dignissimos libero accusamus qui. Rerum nisi rem velit vel dicta distinctio quis.\n\nEligendi dolores id inventore quod qui officia est. Dolores eligendi numquam voluptas iusto. Et vitae praesentium placeat et.', 'articles/1.jpg', 0, '2018-12-09 19:59:53'),
(17, 1, 3, 'Qui dolores vero perspiciatis officia rem atque qui.', 'Vel provident doloribus quae illum quia deleniti voluptate. Veniam temporibus autem ullam vitae. Distinctio recusandae est non consequatur quae ut harum. Vel quia non in maxime illum facilis perspiciatis.\n\nLaboriosam odit necessitatibus enim voluptatem facere ut tempora quia. Atque fugit fuga provident voluptatem nulla id. Eius eius quae eum. Nostrum molestiae error totam dignissimos. Distinctio suscipit vero iusto consequatur beatae.\n\nDebitis et reprehenderit ipsa natus maxime. Laborum officiis nobis aut nihil natus. Perspiciatis quae consequatur quis nisi.', 'articles/1.jpg', 0, '2010-05-07 22:21:07'),
(18, 1, 1, 'Qui esse optio voluptates aut voluptatem accusantium minima omnis.', 'Unde aliquid magni asperiores ex vel. Beatae unde natus recusandae sint. Eum accusantium inventore ad quasi est rerum rerum.\n\nNatus deserunt illo possimus ipsam quod est est sed. Qui quia perferendis magnam et. Et adipisci rerum nam sapiente quo blanditiis sed quaerat. Error sapiente provident fugit minus.\n\nConsequatur nihil dolores sunt repellat soluta perspiciatis quasi. Et voluptatem omnis molestiae ipsam blanditiis voluptas.\n\nEst dolor quo facere qui. Quia dolores voluptates inventore qui ut non possimus. Impedit similique possimus delectus in minima vel.', 'articles/3.jpg', 1, '1982-05-27 03:45:37'),
(19, 1, 2, 'Fugiat aut aut eligendi maiores optio quaerat eligendi.', 'Dolorum est sunt voluptatibus molestias quia ipsam fugit. Voluptates est ad atque rerum totam ut ipsam et. Voluptatem aspernatur ut facere exercitationem ut nisi. Ducimus dolores est impedit nisi molestiae. Tenetur beatae facere voluptatem.\n\nEst sit totam aliquam est officiis est neque. Est quo non delectus aut. Alias laborum quos a quo et qui numquam.\n\nIllum quas voluptates sit eius quis ea reiciendis. Quaerat id doloribus aliquam architecto quis. Doloremque cupiditate nulla nam sit modi et ab eligendi. Optio maiores maxime explicabo quia.\n\nAut veniam quibusdam ut qui eaque sapiente. Labore voluptatem qui quasi eum.', 'articles/3.jpg', 0, '2019-09-30 08:37:43'),
(20, 1, 3, 'Error accusamus sit ducimus esse suscipit culpa aliquam.', 'Eos dolor iste facilis omnis quae repellendus. Maiores libero et labore sunt neque omnis harum ut. Voluptatem dolorem voluptatem quaerat. Dignissimos enim beatae ea quia et et et quae.\n\nNesciunt vitae aut eligendi dolor commodi. Necessitatibus consequatur repudiandae impedit pariatur porro ducimus. Ipsum non deserunt aspernatur quia ut dolorem.\n\nEsse dolore fugiat labore autem eos repellat quisquam. Aspernatur placeat quis culpa modi deleniti quibusdam sit. Laborum aspernatur soluta qui ab sint qui sed. Voluptatem provident et et dolores laboriosam quia.\n\nQui ut numquam pariatur quam quaerat voluptatem. Et non pariatur sed commodi quia. Sed nihil modi dolor dignissimos minima. Dolorem ipsa fugiat maiores quis. Sint quo accusantium dicta dicta cupiditate repellendus.\n\nId et neque eaque quia quo voluptatem. Repellendus incidunt dolor cupiditate facilis. Fugiat et et aut tempora. Porro a excepturi tenetur.', 'articles/2.jpg', 1, '1970-09-13 22:00:25'),
(21, 1, 2, 'Magni pariatur officiis deleniti aperiam fuga similique dolores et ipsum dolor quod autem at.', 'Rerum adipisci omnis vero dolor sapiente. Quia cumque aut tempore sit. Et voluptatem voluptate quisquam nulla.\n\nEt sunt nobis dolor odio quas consectetur. Atque quia laborum deserunt. Natus ut architecto nostrum numquam.\n\nDeleniti incidunt rerum facere quo quaerat. Occaecati sit quidem temporibus ex adipisci. Fugiat quia nemo cum tenetur. Beatae architecto et debitis deleniti distinctio.\n\nQuisquam aut consequatur dolorem possimus quas ratione. Impedit tempore voluptas fugiat placeat earum est quidem nulla. Vel ipsa aperiam repellat praesentium expedita dicta cumque cum. A laudantium accusamus ab at est expedita voluptas. Eos eum natus et libero iste voluptas praesentium.', 'articles/6.jpg', 1, '2019-10-02 23:16:48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
