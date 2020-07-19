-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2020 at 07:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sup_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `description`, `cover`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 'Esse sequi ea.', 'Ducimus nesciunt aut cum necessitatibus quia nostrum et iusto odit minus fugiat qui voluptas excepturi enim ipsa magnam porro quae ea quam dolor ab illum perspiciatis ut deserunt minima et qui et aliquam optio autem ratione vero quam natus corporis atque officia laudantium omnis beatae est aut maiores omnis deserunt consequatur quo dicta repellendus soluta similique at.', 'https://picsum.photos/id/63/200/300', '20', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(2, 1, 'Ipsa distinctio rem corporis qui saepe.', 'Placeat eius non error hic vero sit ut qui dolorem sit veritatis animi facilis hic quia temporibus harum quia blanditiis rerum qui sit error rerum cum unde nostrum ut qui temporibus aliquid est repellendus et et quia ut ut consequatur itaque dolor odio velit illo quo ut alias est veritatis nemo sed in possimus.', 'https://picsum.photos/id/84/200/300', '12', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(3, 8, 'Blanditiis adipisci quos.', 'Aut rem quos eveniet dignissimos fugit dolor consequuntur distinctio quaerat porro sed dolor blanditiis dolorem amet cumque error officiis quidem quos iste corporis ducimus voluptate iure beatae aut quaerat deleniti suscipit aperiam quia suscipit adipisci.', 'https://picsum.photos/id/42/200/300', '12', '2020-07-19 17:44:58', '2020-07-19 17:48:57'),
(4, 10, 'Voluptatem totam quidem perspiciatis.', 'Illum qui laudantium unde alias mollitia quasi dolorem laborum assumenda alias illum odit aspernatur consequuntur eius dignissimos autem et incidunt vero quod quod amet voluptatibus aut itaque non autem quidem labore est aut dolorem sint consequatur rerum rerum optio est omnis nesciunt maiores.', 'https://picsum.photos/id/60/200/300', '12', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(5, 6, 'Ipsa qui ut aspernatur consequatur.', 'Sapiente aspernatur sit et quo fugit vel fugiat error at earum suscipit voluptas quia voluptatem non dolor rem vero sapiente omnis qui doloremque distinctio non est vitae enim sequi qui reprehenderit dolorum fugit et quae impedit aliquam quibusdam possimus suscipit sequi aut ipsum quia et perferendis aut pariatur quis quidem eum eos commodi labore expedita necessitatibus quis voluptatem est provident voluptatibus voluptas autem.', 'https://picsum.photos/id/1/200/300', '11', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(6, 7, 'Autem possimus nisi ducimus.', 'Placeat reprehenderit eligendi natus in voluptatem autem quo accusantium id consequatur officia quo ut eligendi soluta vero omnis cum dolorem id aut et sint et quam praesentium sint repellat est iusto ratione provident magni ut eos sunt ea animi quia quae vel commodi hic aut non esse est voluptatem voluptas eos facilis id eius voluptatem odio tempora delectus quisquam.', 'https://picsum.photos/id/54/200/300', '12', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(7, 6, 'Dolor quisquam aut aperiam voluptates.', 'Odit incidunt vel incidunt libero reiciendis ipsam vel recusandae impedit voluptatem officiis fugiat quas fugiat perspiciatis eum aut est ut non in hic eius maxime eius voluptates facilis consequuntur sit eius deserunt non possimus ratione dolorem odio fuga unde veritatis ab autem dolor inventore quo adipisci commodi illo repudiandae assumenda similique optio eius in alias eveniet repellendus.', 'https://picsum.photos/id/17/200/300', '9', '2020-07-19 17:44:58', '2020-07-19 17:49:03'),
(8, 10, 'Iusto non voluptatum sunt sed.', 'Ipsa eum sit veritatis nesciunt nihil delectus maiores occaecati ut explicabo cum non repellendus aliquid qui esse molestias nemo debitis deserunt et tempora provident ullam aut praesentium tempora dolorum nihil cupiditate magnam ut accusamus quibusdam officiis architecto similique et provident et illo vel provident dolore eos nemo odit sit consequatur quia nobis repellat minus facilis quod dolores est iste.', 'https://picsum.photos/id/85/200/300', '13', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(9, 9, 'Optio cumque tenetur quia quia non.', 'Est incidunt ex voluptatem aperiam eligendi eius et suscipit repellendus accusantium voluptatem sint ad quidem id eius aut perspiciatis iusto architecto minima rerum laborum error et harum ut ut explicabo accusamus sint autem ea aut vel aut rerum aut tempora consequatur sit facere earum dignissimos numquam exercitationem sed dolore sed labore quis est in consequatur sed suscipit nulla quae inventore accusamus ut quia id ut minus.', 'https://picsum.photos/id/70/200/300', '12', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(10, 7, 'Praesentium quis impedit at nihil explicabo.', 'Aut alias facilis alias et sint voluptas aliquam natus consequatur eos dolor reiciendis qui blanditiis perspiciatis velit reiciendis id asperiores harum hic atque sit autem est aliquam voluptas provident et neque unde architecto laboriosam recusandae quia laborum vel praesentium fuga hic est in at nihil repudiandae quia aut odio et blanditiis aut est esse id hic quod qui laboriosam atque qui velit est.', 'https://picsum.photos/id/86/200/300', '19', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(11, 7, 'Eum ut modi error vitae.', 'Doloribus vitae accusantium quod accusamus repudiandae reiciendis dolorem est maiores aliquid ullam omnis non eveniet aut officia hic non deleniti et at sint soluta hic voluptatem quasi at nihil consectetur reiciendis eligendi sunt repellendus nisi excepturi exercitationem rerum assumenda.', 'https://picsum.photos/id/9/200/300', '11', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(12, 1, 'Provident sint sunt ratione corporis commodi.', 'Quia modi et impedit quia accusamus omnis aliquid provident eaque cumque asperiores officiis iure vel quas ea est sed suscipit inventore numquam est quo et fuga sed alias rerum quam voluptas quisquam et sit tempora consectetur maiores aspernatur mollitia dolor iste reprehenderit accusamus occaecati non maiores tenetur explicabo aspernatur vel id quae cumque placeat nemo molestiae necessitatibus qui voluptates dignissimos ullam molestiae eos.', 'https://picsum.photos/id/18/200/300', '10', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(13, 7, 'Nostrum occaecati ad ea.', 'Eaque eligendi vitae rerum veritatis facere earum tempora voluptatum nobis nesciunt voluptatem nostrum minus quae voluptatem animi iste voluptatem autem ducimus consequatur aut sequi quaerat voluptatem sit iusto sed tempore esse maiores laborum sapiente harum harum provident expedita et doloribus explicabo ea omnis reprehenderit corrupti aut enim pariatur rem.', 'https://picsum.photos/id/86/200/300', '14', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(14, 6, 'Odio quidem voluptatem et facilis qui.', 'Et perferendis a similique possimus perspiciatis nihil aut vero nulla porro aut qui facere accusamus tenetur libero sit minima tempora aut hic consequatur illum dolorem non deleniti possimus et totam dolorum ipsa qui reiciendis ut omnis culpa quam vitae quis quibusdam eum incidunt.', 'https://picsum.photos/id/74/200/300', '14', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(15, 4, 'Quas aut et ratione reprehenderit in.', 'In ut ut et eius nobis consequatur tenetur ea a dolore explicabo quia illum itaque iure qui omnis maiores esse veritatis sunt repellendus aut dicta soluta voluptas corrupti consectetur mollitia cumque numquam temporibus fuga autem fuga et asperiores sequi aut repudiandae.', 'https://picsum.photos/id/85/200/300', '13', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(16, 8, 'Consequatur omnis harum ducimus eos.', 'Impedit labore debitis qui animi beatae fugiat sed quaerat aliquid itaque sed quia assumenda excepturi vel deserunt cupiditate at vel consectetur quibusdam aut est occaecati quo rerum illo id soluta aliquid libero explicabo sed sit consequatur eos quam.', 'https://picsum.photos/id/93/200/300', '18', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(17, 3, 'Quos qui quia est.', 'Veniam ut repellat commodi quia fugit eius cum qui consectetur sunt officiis provident alias ex qui aut nam culpa ut placeat aut voluptas ea rerum quibusdam nihil autem qui consectetur consectetur blanditiis iste non voluptas ipsam enim ab.', 'https://picsum.photos/id/81/200/300', '19', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(18, 1, 'Minus est earum neque facere.', 'Optio ut reiciendis laboriosam dignissimos voluptates quam molestiae nostrum tenetur sit blanditiis quis reprehenderit cupiditate laborum accusamus sit et quia labore ex architecto aliquam eaque esse aut reiciendis quibusdam aut quia occaecati non explicabo dolor laboriosam quia impedit vel et et rerum dolor sapiente amet quisquam eum doloremque molestias optio optio saepe distinctio quidem minima natus dolores cumque facilis hic exercitationem debitis hic ducimus omnis id autem accusamus unde tempora velit.', 'https://picsum.photos/id/44/200/300', '12', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(19, 1, 'Non dignissimos veritatis quisquam.', 'Dolorem voluptatibus dolorum et et nemo praesentium et sit delectus quos fuga itaque iusto quis dolore ea reprehenderit sint sed qui rerum dolores numquam corrupti odio tempore eum veniam consectetur omnis consequatur quia sint dolorem est nam quidem quibusdam eum velit facilis minima pariatur pariatur et corporis officiis delectus quisquam voluptatem consequatur dolores quod culpa delectus et dolores eaque quia beatae ipsum earum deserunt labore nisi architecto odit.', 'https://picsum.photos/id/57/200/300', '14', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(20, 4, 'Esse perferendis quidem ut ducimus beatae.', 'Et sint dolorem quas nihil quo illo vel sed rem non itaque quisquam voluptas alias at enim officiis qui porro nulla dolor aut aut quod quia vitae quaerat nihil nam quia praesentium quo sunt.', 'https://picsum.photos/id/39/200/300', '16', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(21, 10, 'Quia est in cumque culpa.', 'Neque maiores cupiditate et nulla magnam laboriosam delectus cupiditate voluptatem repellat aliquid ut reprehenderit eius accusantium nihil aut ipsam non id unde est cupiditate vitae distinctio aut sint et eaque ut sint assumenda voluptatem necessitatibus rerum molestias omnis in est et maiores nam molestiae autem id aut at consectetur accusamus enim quos quia quia architecto modi doloribus quibusdam nihil velit nam dignissimos quia quae tempore modi.', 'https://picsum.photos/id/83/200/300', '18', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(22, 8, 'Consequatur animi cumque vero tempore.', 'Repudiandae consequatur nisi dolor et maxime quas excepturi tempore aliquid aspernatur rerum repellat corporis expedita at vero ratione sed ut sit omnis quidem doloremque et non fuga et odio error quia saepe quam illo voluptatum vero fugit et modi non explicabo fugiat necessitatibus alias velit corrupti dignissimos maxime enim molestias quaerat.', 'https://picsum.photos/id/66/200/300', '13', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(23, 10, 'Non placeat necessitatibus assumenda suscipit ducimus.', 'Vel consequatur sequi architecto in unde inventore molestiae incidunt eos voluptatem laboriosam aspernatur voluptate minus fugiat voluptate sunt autem voluptatem quia sint unde quas sit placeat voluptas quo natus ea autem provident consequatur ab rerum quis reprehenderit sapiente odio impedit doloremque sapiente dicta molestiae recusandae magni aspernatur ut autem delectus molestias quo rerum molestiae enim sit alias et fugiat eum culpa molestiae et.', 'https://picsum.photos/id/86/200/300', '19', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(24, 9, 'Corrupti et atque dolorem dolor.', 'Dignissimos et voluptatem molestiae vero facilis cum dolor fugiat et magnam in placeat non veniam qui nisi pariatur illo omnis quidem est vitae pariatur similique consequatur voluptatem quo quia doloremque quod laudantium qui recusandae amet velit voluptas minima voluptatum autem porro incidunt dolorem et aut voluptatibus sint velit molestiae delectus minus ad facere et quaerat voluptatum cum aut nihil explicabo in dolorem est qui laudantium.', 'https://picsum.photos/id/5/200/300', '16', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(25, 5, 'Consequatur nihil sit ea.', 'Rerum tenetur et est eos porro modi reiciendis laudantium dolorem voluptates dolore vel in libero aut reprehenderit minima aut non aspernatur odit vel mollitia est qui fugiat explicabo asperiores qui omnis accusantium ratione labore illo quo qui qui vel non voluptas voluptatem eum et quos et explicabo voluptatem error et id fugiat vel neque repudiandae laudantium totam sapiente asperiores.', 'https://picsum.photos/id/68/200/300', '10', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(26, 5, 'Saepe nihil distinctio odio voluptas iusto.', 'Libero qui aut veniam autem nisi blanditiis autem aut ut blanditiis eos laudantium ea non reiciendis voluptas dolores consectetur itaque iusto est voluptas laborum soluta quis voluptatem voluptatem qui eum odit esse odio quas qui voluptatibus itaque suscipit et unde rerum.', 'https://picsum.photos/id/60/200/300', '18', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(27, 6, 'Id voluptatum in magni.', 'In quia magni quidem saepe et excepturi explicabo est aut aut eum sint ut laudantium mollitia occaecati ratione accusamus molestiae repudiandae non rem quia iusto nesciunt fuga officiis quis aspernatur et rerum tempora dolores quia.', 'https://picsum.photos/id/38/200/300', '10', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(28, 10, 'Vitae dolor qui placeat itaque.', 'Eligendi cumque libero a laudantium ea provident et minima voluptatibus harum quisquam quibusdam minima asperiores libero aut nihil assumenda temporibus ea ut est reiciendis corrupti asperiores deserunt officiis omnis dolor quo sint inventore pariatur aut saepe assumenda animi fuga fugiat in earum labore autem.', 'https://picsum.photos/id/60/200/300', '12', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(29, 10, 'Quos et et eum.', 'Sit voluptatum quasi saepe sed et tempora nihil at quia neque consequatur qui quam voluptatem sed aliquid praesentium mollitia accusantium voluptatem ut voluptas nobis non optio ipsa sit libero cupiditate aut ea ut voluptatem quasi aliquid ipsum tempora vero voluptas eligendi doloremque ipsam alias dicta ipsam esse deleniti eos officia sit aut vel ut sequi ut voluptate voluptas.', 'https://picsum.photos/id/64/200/300', '13', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(30, 6, 'Ut repudiandae ut.', 'Et accusamus atque aliquid impedit quae in dolor quis voluptatem numquam voluptas eveniet sint dolore ex labore quo sint animi incidunt sit labore quis atque vitae est totam tenetur est labore ut in quia dolorum ut molestias et nam maiores porro fuga voluptates dolorum quae fugit sequi laborum est nihil id eius voluptatem ut voluptate corporis consequatur deserunt nam non aut cumque optio.', 'https://picsum.photos/id/52/200/300', '20', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(31, 5, 'Quo sunt eius.', 'Qui magni et quo ut qui eos aliquid enim porro maxime ut aut qui itaque et qui qui quaerat iste ea ab facilis accusantium nihil reiciendis laboriosam eos cumque temporibus in aut sed laborum et ducimus ut est et laborum.', 'https://picsum.photos/id/94/200/300', '14', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(32, 1, 'Dolores porro possimus sit quod vero.', 'Deserunt accusamus fuga consequatur autem deleniti nisi voluptatibus doloremque voluptatem quisquam dolorem cupiditate consequatur voluptatibus qui ad rerum reiciendis rerum perferendis ut architecto quos est soluta laudantium itaque nostrum et in ad a aperiam repudiandae est reiciendis nam temporibus sed minima architecto numquam doloribus molestias culpa autem vel laudantium neque facilis animi qui.', 'https://picsum.photos/id/27/200/300', '15', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(33, 6, 'Et odio sit cum maxime.', 'Libero est doloribus est aperiam nemo eaque rerum assumenda totam ea tempore eaque et laudantium impedit tenetur molestiae veniam atque dicta quam at quia assumenda omnis accusantium aliquid natus commodi mollitia sequi asperiores dolore consectetur pariatur voluptas velit cum et nemo voluptas molestiae quo nesciunt quam commodi repellat animi reiciendis excepturi vitae ut fugit nisi.', 'https://picsum.photos/id/35/200/300', '13', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(34, 7, 'Quia molestias consequuntur.', 'Maiores et quia aut deleniti aperiam fugit ut porro voluptas quam autem totam cumque iste pariatur adipisci modi perspiciatis aliquam dolor deleniti iste autem hic eum nihil sint deserunt ducimus accusamus pariatur fugit exercitationem ad temporibus qui explicabo enim qui ut vel voluptatibus a ea.', 'https://picsum.photos/id/12/200/300', '16', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(35, 1, 'Est accusantium unde quia.', 'Fuga ad aut culpa at asperiores laborum voluptatibus dolorem quisquam aliquid molestias porro cum quo rerum similique voluptatibus veritatis animi nihil quod beatae aliquid molestiae quas ab numquam ipsam quis in omnis asperiores sit quia repellat explicabo nobis qui reiciendis laudantium consequatur quis.', 'https://picsum.photos/id/19/200/300', '10', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(36, 8, 'Atque ex et reprehenderit.', 'Sed laboriosam dolores quia omnis et voluptatem corrupti ipsum maiores et veritatis minus vel recusandae et ut aut incidunt ducimus neque voluptatem ad eligendi deleniti dicta voluptates et numquam et eaque magni et.', 'https://picsum.photos/id/27/200/300', '15', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(37, 3, 'Minima voluptatem molestias incidunt.', 'Excepturi iusto qui dolorem omnis porro a sunt ad culpa laudantium consequuntur ea sit id rem mollitia sit officiis reprehenderit exercitationem reprehenderit itaque cupiditate id rerum architecto omnis et tempore ut ut consequuntur aliquam repudiandae quo neque.', 'https://picsum.photos/id/28/200/300', '11', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(38, 1, 'Molestiae dolorem sit est.', 'Sit vero quia earum ut adipisci aut sapiente laborum a quaerat itaque in voluptatum nulla numquam est sed possimus ex aut voluptas quis aut et vitae fuga reprehenderit neque labore aperiam tenetur rerum ipsum incidunt soluta molestiae eius deleniti nisi velit et.', 'https://picsum.photos/id/53/200/300', '19', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(39, 8, 'Laboriosam et at sit quod.', 'Voluptatibus est natus minus velit quia qui autem et at est nihil consectetur esse et quas porro et enim nostrum corporis iure molestiae consequuntur minus ad delectus qui deserunt voluptas voluptas voluptas reprehenderit ab repellat fugit nemo sequi consequuntur et saepe nostrum.', 'https://picsum.photos/id/66/200/300', '16', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(40, 5, 'Aut quae numquam possimus.', 'Velit corrupti labore aut voluptatem amet autem impedit et distinctio molestiae non aut dolor omnis non assumenda perferendis aperiam ipsum perspiciatis vero sint ut ab officiis corporis est quidem necessitatibus minus expedita autem ut dolor dolor quia repellendus non modi odit recusandae sunt sed.', 'https://picsum.photos/id/82/200/300', '11', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(41, 9, 'Hic aliquam voluptatibus.', 'Et voluptatem cupiditate incidunt non sed et minima enim qui tempore tenetur vel et est et sint ut sequi rerum eligendi voluptatibus eum fugiat alias necessitatibus quibusdam aliquam eum enim eius dolorum eaque nihil sunt qui sed eos nisi quo quia quia quibusdam ut vel aperiam exercitationem expedita ea animi officia et aut quas vero culpa placeat commodi impedit labore quo et ea molestiae dolor et odit.', 'https://picsum.photos/id/67/200/300', '11', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(42, 6, 'Aliquid culpa deleniti.', 'Exercitationem est saepe sint a molestiae nam dolore illo sit non consectetur sed exercitationem est eos ipsam et veritatis eum deleniti at ea placeat voluptatem sed eveniet dicta molestiae corporis sint est officia accusamus ut officia atque ab doloribus aspernatur quis tempore id debitis et velit.', 'https://picsum.photos/id/4/200/300', '12', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(43, 7, 'Cumque quia earum impedit magni.', 'Iste nobis delectus iste alias et repellendus totam quas optio repellat quod ipsum voluptatem voluptatem suscipit fuga consequatur voluptas perferendis possimus dicta aut sequi vero consequuntur et aspernatur modi reiciendis non aut et ad nihil ipsa voluptatem similique ab ut quae et cupiditate aut atque qui doloremque dolores dicta soluta voluptatum vitae voluptas.', 'https://picsum.photos/id/60/200/300', '11', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(44, 1, 'Laboriosam culpa et itaque fuga.', 'Saepe dignissimos sit nulla ratione occaecati rem nulla consequatur minima voluptatibus cumque consequuntur rerum perspiciatis iure aspernatur provident eos quia totam soluta dolor vero voluptas non ut rerum magni et sit eos sapiente.', 'https://picsum.photos/id/12/200/300', '15', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(45, 3, 'Est odit aliquam assumenda.', 'Perferendis excepturi consequatur soluta amet dolor eveniet sit sit natus qui quibusdam et quidem molestiae similique quia quia ut eaque minima voluptas eum corporis architecto qui maiores adipisci laudantium exercitationem aut itaque ut quibusdam cum iure consectetur a molestiae libero veniam odit molestiae enim possimus voluptatibus sint explicabo cumque voluptates rerum dolores doloremque doloremque tempora dolor consequatur voluptatem dolor mollitia dolore accusamus iusto ab minima saepe autem officiis iste.', 'https://picsum.photos/id/86/200/300', '18', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(46, 3, 'Eveniet incidunt sunt ut tenetur.', 'Sed cumque eos impedit quasi facere molestiae et unde nam unde animi quibusdam est exercitationem repellendus sit delectus voluptate voluptates sint cumque vel omnis laudantium numquam ut quis enim suscipit non voluptatem recusandae veniam maxime in odit nobis earum voluptatem aut quae.', 'https://picsum.photos/id/12/200/300', '20', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(47, 2, 'Exercitationem autem voluptatum.', 'Dolore expedita et id aut iste modi tenetur iusto deleniti aut esse enim necessitatibus nihil nemo ad voluptas odit aut et beatae tenetur est nesciunt incidunt aperiam illum amet nemo esse quia quia aliquam sit exercitationem reiciendis temporibus dolor et velit et architecto est quo saepe provident repudiandae voluptatem ut rerum consequatur cumque eos doloribus mollitia illo et consequatur ut et aut sunt iste veritatis pariatur sint.', 'https://picsum.photos/id/83/200/300', '15', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(48, 4, 'Est cumque officia quasi labore.', 'Iusto est tempore repellendus praesentium sunt id amet odit voluptas numquam dolorum dolorem qui alias excepturi quod odit atque aut dolor nihil est quo in rerum quibusdam enim quo et quaerat laborum itaque doloribus.', 'https://picsum.photos/id/28/200/300', '17', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(49, 9, 'Numquam rerum sint eos.', 'Cupiditate quod eveniet neque veritatis nam adipisci omnis qui rerum ea delectus corrupti et eum ad est quibusdam aliquam in ex autem consequuntur nulla ratione molestias optio non aliquid sint inventore velit qui aperiam placeat totam quidem asperiores consequatur dolore aut et et ut placeat.', 'https://picsum.photos/id/12/200/300', '15', '2020-07-19 17:44:59', '2020-07-19 17:44:59'),
(50, 8, 'Ratione dignissimos totam suscipit.', 'Sit quos quam doloribus ab sint a rerum dolorum debitis sit officia laborum maiores delectus repellendus qui ea aut quo dicta vitae error ut et deserunt est tenetur ullam necessitatibus ut et porro eligendi ullam sed repellendus sint nihil id odit quae dolorem molestiae sed aspernatur incidunt.', 'https://picsum.photos/id/79/200/300', '10', '2020-07-19 17:44:59', '2020-07-19 17:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_history`
--

CREATE TABLE `borrow_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `returned_at` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrow_history`
--

INSERT INTO `borrow_history` (`id`, `user_id`, `book_id`, `returned_at`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL, '2020-07-19 17:48:57', '2020-07-19 17:48:57'),
(2, 2, 7, NULL, NULL, '2020-07-19 17:49:03', '2020-07-19 17:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Nisi rerum.'),
(2, 'Voluptatibus odio.'),
(3, 'Est adipisci.'),
(4, 'Quasi corrupti et.'),
(5, 'Ut quis id.'),
(6, 'Voluptas qui reprehenderit.'),
(7, 'Sed molestiae perferendis.'),
(8, 'Ducimus rerum.'),
(9, 'Architecto qui.'),
(10, 'Ipsum modi.');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_18_053139_create_categories_table', 1),
(5, '2020_07_18_053502_create_books_table', 1),
(6, '2020_07_18_054234_create_borrow_history_table', 1),
(7, '2020_07_18_062127_create_permission_tables', 1),
(8, '2020_07_18_103433_add_qty_on_books_table', 1),
(9, '2020_07_18_220311_add_returned_at_and_receiver_user_id_on_borrow_history_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(2, 'user', 'web', '2020-07-19 17:44:58', '2020-07-19 17:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Sup-Perpus', 'admin@supperpus.app', '2020-07-19 17:44:58', '$2y$10$MxXYNBVuG0FHE7vjQqYZ8.H28kaNICoc.CmibJpXbouzqwU6s74vy', NULL, '2020-07-19 17:44:58', '2020-07-19 17:44:58'),
(2, 'Supardi', 'supardi9512@gmail.com', '2020-07-19 17:48:29', '$2y$10$1bIZM9v.Y3bdhj.nUEw7eOxqjfY/At8ZZ6CBN6Y74.XyfZxiLJeU6', NULL, '2020-07-19 17:47:57', '2020-07-19 17:48:29'),
(3, 'Bambang', 'bambang@test.app', NULL, '$2y$10$d5mgzzXQ4BNB1XDVGFzZIubO91MUk4Dgn9jBciYLuvF76MfL/U6M2', NULL, '2020-07-19 17:50:16', '2020-07-19 17:50:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrow_history_user_id_foreign` (`user_id`),
  ADD KEY `borrow_history_book_id_foreign` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `borrow_history`
--
ALTER TABLE `borrow_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD CONSTRAINT `borrow_history_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
