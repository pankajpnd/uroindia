-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 05:32 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dburoindia`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `cat_name`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Wordpress', 'wordpress', '2018-06-12 10:00:20', '0000-00-00 00:00:00'),
(7, 'Web Design', 'web-design', '2018-06-21 10:02:16', '0000-00-00 00:00:00'),
(8, 'PhotoShop', 'photoshop', '2018-06-23 09:14:19', '0000-00-00 00:00:00'),
(9, 'Sports', 'sports', '2018-06-23 09:14:37', '0000-00-00 00:00:00'),
(10, 'Programming', 'programming', '2018-06-23 09:16:35', '0000-00-00 00:00:00'),
(11, 'News', 'news', '2018-07-16 08:36:58', '2018-07-16 05:36:58'),
(12, 'Videos', 'videos', '2019-12-03 17:55:02', '0000-00-00 00:00:00'),
(13, 'hello', 'hello', '2020-03-12 18:23:34', '0000-00-00 00:00:00'),
(14, 'ddlgk fdlgj dfls gfdshg fdlg', 'ddlgk-fdlgj-dfls-gfdshg-fdlg', '2020-03-12 18:37:58', '0000-00-00 00:00:00'),
(15, '...', '', '2020-03-12 18:38:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `featured_img` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `deleted_at` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `allow_comments` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `category_id`, `user_id`, `slug`, `meta_desc`, `meta_keywords`, `featured_img`, `status`, `content`, `deleted_at`, `created_at`, `updated_at`, `allow_comments`) VALUES
(3, 'Our Security Policy has been Update', 7, 1, 'our-security-policy-has-been-update', 'dummy description', 'one,two', 'http://localhost/login/uploads/blog_images/ps4.jpg', 1, '<p>some content</p>', 'Null', '2018-06-23 02:52:59', '2018-06-23 06:12:56', 1),
(4, 'Laravel and Vue.js in action', 10, 1, 'laravel-and-vuejs-in-action', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Laravel, Php, Vue.js', 'http://localhost/login/uploads/blog_images/vue-spa-with-laravel.png', 1, '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-family: Helvetica;\">L</span><span style=\"font-family: Helvetica;\">?</span><span style=\"font-family: Helvetica;\">orem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero. Mauris varius nisl bibendum porta tincidunt. Suspendisse vitae dui efficitur, ullamcorper ligula eu, sagittis arcu. Curabitur euismod neque nec suscipit consectetur. Donec rutrum nec magna vel auctor. Duis sapien velit, pharetra sit amet urna et, consequat elementum velit. Integer eros eros, condimentum eget enim vel, consectetur euismod est. Nam sodales congue convallis. Donec nunc magna, suscipit eget posuere in, viverra a lorem.</span></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-family: Helvetica;\">Donec vel placerat massa. Integer nisi libero, venenatis vitae vulputate in, cursus ut magna. Suspendisse potenti. Sed sit amet venenatis turpis, vitae consequat est. Mauris vitae sem id erat gravida vestibulum. Nullam venenatis at quam eget pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sit amet eleifend metus, non elementum enim. Nulla rhoncus, orci in commodo hendrerit, ipsum massa vulputate tellus, vitae tempor nibh nunc nec velit. Nullam viverra, turpis eu gravida rutrum, mi orci viverra lorem, id facilisis est turpis varius diam. Nunc sed tincidunt ligula, quis convallis lacus. Fusce facilisis faucibus lectus, a laoreet nunc facilisis eu. Mauris faucibus, purus ut facilisis ultrices, nibh diam luctus ex, et interdum eros mauris eget nulla. Mauris volutpat nibh at lectus ullamcorper aliquet. Fusce consectetur commodo eros, ut fringilla dolor tempor non. Etiam ac libero vel turpis commodo aliquet a quis est.</span></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-family: Helvetica;\">Donec ut odio pharetra, ullamcorper tellus non, luctus mi. Nulla imperdiet lorem tellus, vitae scelerisque lacus porta eget. Mauris vel odio dolor. Quisque fringilla at nulla id auctor. Nam molestie finibus tortor, ut dapibus nisi feugiat sed. Vestibulum gravida eros sed arcu consectetur, dictum interdum tortor condimentum. Aliquam consectetur elit a mi faucibus, a consectetur arcu vestibulum. Cras vel dui et mi pretium condimentum sed nec sapien. Vestibulum finibus volutpat massa.</span></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-family: Helvetica;\">Quisque porta massa id elementum facilisis. Vestibulum a imperdiet orci. Proin gravida odio a maximus fermentum. Mauris molestie eget nisl in ultrices. Phasellus quis risus velit. Donec finibus mi gravida mi gravida sagittis. Duis nec ullamcorper felis, eu posuere lectus. Ut tincidunt, quam eget aliquet egestas, erat enim pulvinar nisi, ac ultrices tellus nunc nec tellus. Sed vitae lacus vitae dui facilisis volutpat. Ut congue ex vitae purus dictum, nec elementum mi aliquam. Mauris elit diam, tempus quis feugiat sit amet, mattis et sapien. Sed eu dolor commodo, volutpat odio ac, viverra odio.</span></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><span style=\"font-family: Helvetica;\">Integer mauris dolor, scelerisque quis lorem vitae, euismod convallis massa. Nulla consequat ligula at justo efficitur, in porta massa porta. Vivamus interdum sagittis diam, vitae ultricies diam sagittis ut. Quisque fringilla nunc id libero mollis facilisis. Nam eu scelerisque sapien, sed varius velit. Curabitur purus magna, finibus vitae suscipit eu, bibendum nec mi. Quisque neque neque, pulvinar at ullamcorper in, aliquet eu libero. Maecenas sed dapibus diam. Phasellus pretium scelerisque lectus, a molestie erat sodales in. Suspendisse euismod mollis neque, non lacinia eros viverra sit amet. Ut venenatis diam mollis sem interdum, id luctus dui pretium.</span></p>', 'Null', '2018-06-23 06:20:42', '2018-06-23 06:20:42', 1),
(5, 'Create Restfull API with Laravel 5.3', 7, 1, 'create-restfull-api-with-laravel-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et,', 'Restful API, Laravel, Larave 5.3,API', 'http://localhost/login/uploads/blog_images/Laravel-51.png', 1, '<hr style=\"margin: 0px; padding: 0px; border-top: 0px; clear: both; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\"><div class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both;\"><div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-bottom: 15px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero. Mauris varius nisl bibendum porta tincidunt. Suspendisse vitae dui efficitur, ullamcorper ligula eu, sagittis arcu. Curabitur euismod neque nec suscipit consectetur. Donec rutrum nec magna vel auctor. Duis sapien velit, pharetra sit amet urna et, consequat elementum velit. Integer eros eros, condimentum eget enim vel, consectetur euismod est. Nam sodales congue convallis. Donec nunc magna, suscipit eget posuere in, viverra a lorem.</p><p style=\"margin-bottom: 15px; padding: 0px;\"><br></p></div></div></div>', 'Null', '2018-06-23 06:24:44', '2018-08-04 02:34:18', 1),
(6, 'laravel vs codeigniter', 10, 1, 'laravel-vs-codeigniter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero.', 'Laravel, Codeigniter', 'http://localhost/login/uploads/blog_images/laravel-vs-codeigniter-2.jpg', 1, '<div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\"><div class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both;\"><div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-bottom: 15px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero. Mauris varius nisl bibendum porta tincidunt. Suspendisse vitae dui efficitur, ullamcorper ligula eu, sagittis arcu. Curabitur euismod neque nec suscipit consectetur. Donec rutrum nec magna vel auctor. Duis sapien velit, pharetra sit amet urna et, consequat elementum velit. Integer eros eros, condimentum eget enim vel, consectetur euismod est. Nam sodales congue convallis. Donec nunc magna, suscipit eget posuere in, viverra a lorem.</p><p style=\"margin-bottom: 15px; padding: 0px;\">Donec vel placerat massa. Integer nisi libero, venenatis vitae vulputate in, cursus ut magna. Suspendisse potenti. Sed sit amet venenatis turpis, vitae consequat est. Mauris vitae sem id erat gravida vestibulum. Nullam venenatis at quam eget pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sit amet eleifend metus, non elementum enim. Nulla rhoncus, orci in commodo hendrerit, ipsum massa vulputate tellus, vitae tempor nibh nunc nec velit. Nullam viverra, turpis eu gravida rutrum, mi orci viverra lorem, id facilisis est turpis varius diam. Nunc sed tincidunt ligula, quis convallis lacus. Fusce facilisis faucibus lectus, a laoreet nunc facilisis eu. Mauris faucibus, purus ut facilisis ultrices, nibh diam luctus ex, et interdum eros mauris eget nulla. Mauris volutpat nibh at lectus ullamcorper aliquet. Fusce consectetur commodo eros, ut fringilla dolor tempor non. Etiam ac libero vel turpis commodo aliquet a quis est.</p><p style=\"margin-bottom: 15px; padding: 0px;\">Donec ut odio pharetra, ullamcorper tellus non, luctus mi. Nulla imperdiet lorem tellus, vitae scelerisque lacus porta eget. Mauris vel odio dolor. Quisque fringilla at nulla id auctor. Nam molestie finibus tortor, ut dapibus nisi feugiat sed. Vestibulum gravida eros sed arcu consectetur, dictum interdum tortor condimentum. Aliquam consectetur elit a mi faucibus, a consectetur arcu vestibulum. Cras vel dui et mi pretium condimentum sed nec sapien. Vestibulum finibus volutpat massa.</p><p style=\"margin-bottom: 15px; padding: 0px;\">Quisque porta massa id elementum facilisis. Vestibulum a imperdiet orci. Proin gravida odio a maximus fermentum. Mauris molestie eget nisl in ultrices. Phasellus quis risus velit. Donec finibus mi gravida mi gravida sagittis. Duis nec ullamcorper felis, eu posuere lectus. Ut tincidunt, quam eget aliquet egestas, erat enim pulvinar nisi, ac ultrices tellus nunc nec tellus. Sed vitae lacus vitae dui facilisis volutpat. Ut congue ex vitae purus dictum, nec elementum mi aliquam. Mauris elit diam, tempus quis feugiat sit amet, mattis et sapien. Sed eu dolor commodo, volutpat odio ac, viverra odio.</p><p style=\"margin-bottom: 15px; padding: 0px;\">Integer mauris dolor, scelerisque quis lorem vitae, euismod convallis massa. Nulla consequat ligula at justo efficitur, in porta massa porta. Vivamus interdum sagittis diam, vitae ultricies diam sagittis ut. Quisque fringilla nunc id libero mollis facilisis. Nam eu scelerisque sapien, sed varius velit. Curabitur purus magna, finibus vitae suscipit eu, bibendum nec mi. Quisque neque neque, pulvinar at ullamcorper in, aliquet eu libero. Maecenas sed dapibus diam. Phasellus pretium scelerisque lectus, a molestie erat sodales in. Suspendisse euismod mollis neque, non lacinia eros viverra sit amet. Ut venenatis diam mollis sem interdum, id luctus dui pretium.</p></div></div></div>', 'Null', '2018-06-23 06:27:28', '2018-06-23 06:27:28', 1),
(7, 'Photoshop new version', 8, 1, 'photoshop-new-version', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero.', 'photoshop, new-version,designing', 'http://localhost/login/uploads/blog_images/Photoshop.jpg', 1, '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero. Mauris varius nisl bibendum porta tincidunt. Suspendisse vitae dui efficitur, ullamcorper ligula eu, sagittis arcu. Curabitur euismod neque nec suscipit consectetur. Donec rutrum nec magna vel auctor. Duis sapien velit, pharetra sit amet urna et, consequat elementum velit. Integer eros eros, condimentum eget enim vel, consectetur euismod est. Nam sodales congue convallis. Donec nunc magna, suscipit eget posuere in, viverra a lorem.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec vel placerat massa. Integer nisi libero, venenatis vitae vulputate in, cursus ut magna. Suspendisse potenti. Sed sit amet venenatis turpis, vitae consequat est. Mauris vitae sem id erat gravida vestibulum. Nullam venenatis at quam eget pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sit amet eleifend metus, non elementum enim. Nulla rhoncus, orci in commodo hendrerit, ipsum massa vulputate tellus, vitae tempor nibh nunc nec velit. Nullam viverra, turpis eu gravida rutrum, mi orci viverra lorem, id facilisis est turpis varius diam. Nunc sed tincidunt ligula, quis convallis lacus. Fusce facilisis faucibus lectus, a laoreet nunc facilisis eu. Mauris faucibus, purus ut facilisis ultrices, nibh diam luctus ex, et interdum eros mauris eget nulla. Mauris volutpat nibh at lectus ullamcorper aliquet. Fusce consectetur commodo eros, ut fringilla dolor tempor non. Etiam ac libero vel turpis commodo aliquet a quis est.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec ut odio pharetra, ullamcorper tellus non, luctus mi. Nulla imperdiet lorem tellus, vitae scelerisque lacus porta eget. Mauris vel odio dolor. Quisque fringilla at nulla id auctor. Nam molestie finibus tortor, ut dapibus nisi feugiat sed. Vestibulum gravida eros sed arcu consectetur, dictum interdum tortor condimentum. Aliquam consectetur elit a mi faucibus, a consectetur arcu vestibulum. Cras vel dui et mi pretium condimentum sed nec sapien. Vestibulum finibus volutpat massa.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque porta massa id elementum facilisis. Vestibulum a imperdiet orci. Proin gravida odio a maximus fermentum. Mauris molestie eget nisl in ultrices. Phasellus quis risus velit. Donec finibus mi gravida mi gravida sagittis. Duis nec ullamcorper felis, eu posuere lectus. Ut tincidunt, quam eget aliquet egestas, erat enim pulvinar nisi, ac ultrices tellus nunc nec tellus. Sed vitae lacus vitae dui facilisis volutpat. Ut congue ex vitae purus dictum, nec elementum mi aliquam. Mauris elit diam, tempus quis feugiat sit amet, mattis et sapien. Sed eu dolor commodo, volutpat odio ac, viverra odio.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Integer mauris dolor, scelerisque quis lorem vitae, euismod convallis massa. Nulla consequat ligula at justo efficitur, in porta massa porta. Vivamus interdum sagittis diam, vitae ultricies diam sagittis ut. Quisque fringilla nunc id libero mollis facilisis. Nam eu scelerisque sapien, sed varius velit. Curabitur purus magna, finibus vitae suscipit eu, bibendum nec mi. Quisque neque neque, pulvinar at ullamcorper in, aliquet eu libero. Maecenas sed dapibus diam. Phasellus pretium scelerisque lectus, a molestie erat sodales in. Suspendisse euismod mollis neque, non lacinia eros viverra sit amet. Ut venenatis diam mollis sem interdum, id luctus dui pretium.</p>', 'Null', '2018-06-23 06:30:29', '2018-06-23 06:30:29', 1),
(8, 'England made highest runs score in world cricket', 9, 1, 'england-made-highest-runs-score-in-world-cricket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero. Mauris varius nisl bibendum porta tincidunt.', 'england, cricket, sports,England -cricket', 'http://localhost/login/uploads/blog_images/skysports-jason-roy-roy-england_4340099.jpg', 1, '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero. Mauris varius nisl bibendum porta tincidunt. Suspendisse vitae dui efficitur, ullamcorper ligula eu, sagittis arcu. Curabitur euismod neque nec suscipit consectetur. Donec rutrum nec magna vel auctor. Duis sapien velit, pharetra sit amet urna et, consequat elementum velit. Integer eros eros, condimentum eget enim vel, consectetur euismod est. Nam sodales congue convallis. Donec nunc magna, suscipit eget posuere in, viverra a lorem.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec vel placerat massa. Integer nisi libero, venenatis vitae vulputate in, cursus ut magna. Suspendisse potenti. Sed sit amet venenatis turpis, vitae consequat est. Mauris vitae sem id erat gravida vestibulum. Nullam venenatis at quam eget pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sit amet eleifend metus, non elementum enim. Nulla rhoncus, orci in commodo hendrerit, ipsum massa vulputate tellus, vitae tempor nibh nunc nec velit. Nullam viverra, turpis eu gravida rutrum, mi orci viverra lorem, id facilisis est turpis varius diam. Nunc sed tincidunt ligula, quis convallis lacus. Fusce facilisis faucibus lectus, a laoreet nunc facilisis eu. Mauris faucibus, purus ut facilisis ultrices, nibh diam luctus ex, et interdum eros mauris eget nulla. Mauris volutpat nibh at lectus ullamcorper aliquet. Fusce consectetur commodo eros, ut fringilla dolor tempor non. Etiam ac libero vel turpis commodo aliquet a quis est.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec ut odio pharetra, ullamcorper tellus non, luctus mi. Nulla imperdiet lorem tellus, vitae scelerisque lacus porta eget. Mauris vel odio dolor. Quisque fringilla at nulla id auctor. Nam molestie finibus tortor, ut dapibus nisi feugiat sed. Vestibulum gravida eros sed arcu consectetur, dictum interdum tortor condimentum. Aliquam consectetur elit a mi faucibus, a consectetur arcu vestibulum. Cras vel dui et mi pretium condimentum sed nec sapien. Vestibulum finibus volutpat massa.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque porta massa id elementum facilisis. Vestibulum a imperdiet orci. Proin gravida odio a maximus fermentum. Mauris molestie eget nisl in ultrices. Phasellus quis risus velit. Donec finibus mi gravida mi gravida sagittis. Duis nec ullamcorper felis, eu posuere lectus. Ut tincidunt, quam eget aliquet egestas, erat enim pulvinar nisi, ac ultrices tellus nunc nec tellus. Sed vitae lacus vitae dui facilisis volutpat. Ut congue ex vitae purus dictum, nec elementum mi aliquam. Mauris elit diam, tempus quis feugiat sit amet, mattis et sapien. Sed eu dolor commodo, volutpat odio ac, viverra odio.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Integer mauris dolor, scelerisque quis lorem vitae, euismod convallis massa. Nulla consequat ligula at justo efficitur, in porta massa porta. Vivamus interdum sagittis diam, vitae ultricies diam sagittis ut. Quisque fringilla nunc id libero mollis facilisis. Nam eu scelerisque sapien, sed varius velit. Curabitur purus magna, finibus vitae suscipit eu, bibendum nec mi. Quisque neque neque, pulvinar at ullamcorper in, aliquet eu libero. Maecenas sed dapibus diam. Phasellus pretium scelerisque lectus, a molestie erat sodales in. Suspendisse euismod mollis neque, non lacinia eros viverra sit amet. Ut venenatis diam mollis sem interdum, id luctus dui pretium.</p>', 'Null', '2018-06-23 06:35:36', '2018-06-23 06:35:36', 1),
(10, 'Ronalod Best Goals', 9, 1, 'ronalod-best-goals', 'Ronaldo Best Goals', 'football, Ronaldo,cr7', 'http://localhost/login/uploads/blog_images/skynews-ronaldo-portugal-football_4338029.jpg', 1, '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non sapien vulputate, convallis lectus et, commodo libero. Mauris varius nisl bibendum porta tincidunt. Suspendisse vitae dui efficitur, ullamcorper ligula eu, sagittis arcu. Curabitur euismod neque nec suscipit consectetur. Donec rutrum nec magna vel auctor. Duis sapien velit, pharetra sit amet urna et, consequat elementum velit. Integer eros eros, condimentum eget enim vel, consectetur euismod est. Nam sodales congue convallis. Donec nunc magna, suscipit eget posuere in, viverra a lorem.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec vel placerat massa. Integer nisi libero, venenatis vitae vulputate in, cursus ut magna. Suspendisse potenti. Sed sit amet venenatis turpis, vitae consequat est. Mauris vitae sem id erat gravida vestibulum. Nullam venenatis at quam eget pharetra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sit amet eleifend metus, non elementum enim. Nulla rhoncus, orci in commodo hendrerit, ipsum massa vulputate tellus, vitae tempor nibh nunc nec velit. Nullam viverra, turpis eu gravida rutrum, mi orci viverra lorem, id facilisis est turpis varius diam. Nunc sed tincidunt ligula, quis convallis lacus. Fusce facilisis faucibus lectus, a laoreet nunc facilisis eu. Mauris faucibus, purus ut facilisis ultrices, nibh diam luctus ex, et interdum eros mauris eget nulla. Mauris volutpat nibh at lectus ullamcorper aliquet. Fusce consectetur commodo eros, ut fringilla dolor tempor non. Etiam ac libero vel turpis commodo aliquet a quis est.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec ut odio pharetra, ullamcorper tellus non, luctus mi. Nulla imperdiet lorem tellus, vitae scelerisque lacus porta eget. Mauris vel odio dolor. Quisque fringilla at nulla id auctor. Nam molestie finibus tortor, ut dapibus nisi feugiat sed. Vestibulum gravida eros sed arcu consectetur, dictum interdum tortor condimentum. Aliquam consectetur elit a mi faucibus, a consectetur arcu vestibulum. Cras vel dui et mi pretium condimentum sed nec sapien. Vestibulum finibus volutpat massa.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque porta massa id elementum facilisis. Vestibulum a imperdiet orci. Proin gravida odio a maximus fermentum. Mauris molestie eget nisl in ultrices. Phasellus quis risus velit. Donec finibus mi gravida mi gravida sagittis. Duis nec ullamcorper felis, eu posuere lectus. Ut tincidunt, quam eget aliquet egestas, erat enim pulvinar nisi, ac ultrices tellus nunc nec tellus. Sed vitae lacus vitae dui facilisis volutpat. Ut congue ex vitae purus dictum, nec elementum mi aliquam. Mauris elit diam, tempus quis feugiat sit amet, mattis et sapien. Sed eu dolor commodo, volutpat odio ac, viverra odio.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Integer mauris dolor, scelerisque quis lorem vitae, euismod convallis massa. Nulla consequat ligula at justo efficitur, in porta massa porta. Vivamus interdum sagittis diam, vitae ultricies diam sagittis ut. Quisque fringilla nunc id libero mollis facilisis. Nam eu scelerisque sapien, sed varius velit. Curabitur purus magna, finibus vitae suscipit eu, bibendum nec mi. Quisque neque neque, pulvinar at ullamcorper in, aliquet eu libero. Maecenas sed dapibus diam. Phasellus pretium scelerisque lectus, a molestie erat sodales in. Suspendisse euismod mollis neque, non lacinia eros viverra sit amet. Ut venenatis diam mollis sem interdum, id luctus dui pretium.</p>', 'Null', '2018-06-23 07:09:52', '2018-06-23 07:09:52', 1),
(11, 'About President of pakistan', 9, 1, 'about-president-of-pakistan', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'kjhk,khkjh', 'http://localhost/login/uploads/blog_images/33868369_190291285125095_8752566590974722048_n_(1).jpg', 1, '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\"><b><u>Lorem ipsum dolor sit amet, consectetur adipiscing elit:</u></b></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Praesent porta est at sapien ultrices, sit amet semper justo tempus. Nam convallis sapien nec tortor dignissim fermentum. Nunc dignissim tempor tortor, nec porttitor risus volutpat sit amet. Suspendisse luctus ullamcorper mi. Maecenas ultrices mi a ex congue, at dictum leo eleifend. In nisl nisl, ultricies ut metus a, ornare scelerisque nisl. Quisque dolor dui, suscipit sed rhoncus nec, accumsan et lorem. Donec eu bibendum nibh. Sed id elit urna. Curabitur pulvinar tristique lacus vel molestie. Praesent sit amet erat sed diam imperdiet lacinia ut ac magna. Aliquam ultricies, sem semper dictum placerat, nisl nunc iaculis felis, vel tincidunt tortor massa quis est. Integer finibus at risus id feugiat.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\"><b><u>Curabitur in velit vitae eros rutrum vulputate id quis velit:</u></b></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Proin nunc massa, commodo vitae nisi eget, egestas efficitur mi. Morbi sit amet imperdiet sem. Suspendisse fermentum sem non nunc mattis, hendrerit convallis orci pellentesque. Integer tempus vel est sit amet rhoncus. Integer sed pretium libero, sed posuere elit. Donec vel varius mauris, ut sollicitudin dolor. Maecenas bibendum elit sit amet blandit scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\"><b><u>Quisque nec nunc quam:</u></b></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Cras condimentum pharetra mi et imperdiet. Duis consectetur mi sit amet ex sodales, ut interdum orci ornare. Mauris venenatis erat et nisl tincidunt dignissim. In hac habitasse platea dictumst. Nam suscipit nisi interdum faucibus dignissim. Aliquam porttitor lectus sit amet libero posuere finibus quis sit amet sapien. Nullam varius neque lectus, in aliquam neque sodales eleifend.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\"><b><u>Proin id justo eget justo venenatis tempus a sed leo.</u></b></p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Nam ut congue lorem. Vivamus enim justo, congue nec justo et, maximus elementum eros. Sed et tincidunt tellus. Nunc ultrices maximus massa sed ultricies. Donec faucibus hendrerit nulla. Mauris gravida orci eget nisi sodales, nec elementum libero dapibus. Cras lacus ante, ullamcorper eu tempor ut, dictum at mi. Aenean id vehicula tellus, sed varius diam. Etiam egestas convallis vulputate. Nullam nisi tellus, blandit ut nisl in, tincidunt placerat arcu. Morbi sed ultrices justo, eget mollis magna.</p>', 'Null', '2018-07-14 12:37:37', '2018-07-30 12:09:25', 1),
(12, 'Nawaz Sharif\'s audio message from Adiala jail', 11, 1, 'nawaz-sharifs-audio-message-from-adiala-jail', 'LAHORE: Ousted prime minister Nawaz Sharif and Pakistan Muslim League-N (PML-N) Quaid Nawaz Sharif and his daughter Maryam Nawaz', 'nawaz,Maryam,maryam-nawaz', 'http://localhost/login/uploads/blog_images/l_342150_102047_updates.jpg', 1, '<p class=\"\" style=\"margin-top: 20px; margin-bottom: 20px; font-size: 18px; line-height: 27px; font-family: Merriweather;\">LAHORE: Ousted prime minister Nawaz Sharif and Pakistan Muslim League-N (PML-N) Quaid Nawaz Sharif and his daughter Maryam Nawaz, currently lodged in Rawalpindi\'s Adiala jail in a corruption case, have issued audio messages for the people of Pakistan.<br></p><p style=\"margin-top: 20px; margin-bottom: 20px; font-size: 18px; line-height: 27px; font-family: Merriweather;\">Addressing his party workers and leaders in his recorded message, Nawaz said he had been put in jail to keep him away from them. “My daughter, who’s a daughter of the nation, has also been lodged in jail,” he said adding that the opponents did not know that the prison and imprisonment could not sever his relationship with his people.</p><p style=\"margin-top: 20px; margin-bottom: 20px; font-size: 18px; line-height: 27px; font-family: Merriweather;\">“Neither any dictator could break off that relationship in the past nor those pulling the strings would be able to do so today,” asserted Nawaz Sharif. He requested the people to pray for recovery of his critically ill wife, whom he left behind, in a London hospital, to return to his country. He said the entire country had been turned into a jail. He said now was the time to stand up and break all shackles. He said the time had reached that people would have to free themselves from the (illegal) restrictions and to do away with the games being played with them for the last 70 years.</p><p style=\"margin-top: 20px; margin-bottom: 20px; font-size: 18px; line-height: 27px; font-family: Merriweather;\">He said such games with masses have turned the Quaid-e-Azam’s Pakistan into a laughing stock. “That’s why I have raised the slogan of ‘Vote Ko Izzat Do’ (Give Respect to Vote. Now it’s your turn to carry this flag (movement) forward.</p>', 'Null', '2018-07-16 05:44:44', '2018-07-16 05:44:44', 1),
(13, 'we are adding some new post', 6, 1, 'we-are-adding-some-new-post', 'i am adding new post', 'keyword1, keyword2', 'http://localhost/login/uploads/blog_images/Photoshop1.jpg', 1, '<p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(50, 50, 50); text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><u style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit:</u></span></p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(50, 50, 50); text-align: justify;\">Praesent porta est at sapien ultrices, sit amet semper justo tempus. Nam convallis sapien nec tortor dignissim fermentum. Nunc dignissim tempor tortor, nec porttitor risus volutpat sit amet. Suspendisse luctus ullamcorper mi. Maecenas ultrices mi a ex congue, at dictum leo eleifend. In nisl nisl, ultricies ut metus a, ornare scelerisque nisl. Quisque dolor dui, suscipit sed rhoncus nec, accumsan et lorem. Donec eu bibendum nibh. Sed id elit urna. Curabitur pulvinar tristique lacus vel molestie. Praesent sit amet erat sed diam imperdiet lacinia ut ac magna. Aliquam ultricies, sem semper dictum placerat, nisl nunc iaculis felis, vel tincidunt tortor massa quis est. Integer finibus at risus id feugiat.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(50, 50, 50); text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><u style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Curabitur in velit vitae eros rutrum vulputate id quis velit:</u></span></p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(50, 50, 50); text-align: justify;\">Proin nunc massa, commodo vitae nisi eget, egestas efficitur mi. Morbi sit amet imperdiet sem. Suspendisse fermentum sem non nunc mattis, hendrerit convallis orci pellentesque. Integer tempus vel est sit amet rhoncus. Integer sed pretium libero, sed posuere elit. Donec vel varius mauris, ut sollicitudin dolor. Maecenas bibendum elit sit amet blandit scelerisque.</p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(50, 50, 50); text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><u style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Quisque nec nunc quam:</u></span></p><p open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(50, 50, 50); text-align: justify;\">Cras condimentum pharetra mi et imperdiet. Duis consectetur mi sit amet ex sodales, ut interdum orci ornare. Mauris venenatis erat et nisl tincidunt dignissim. In hac habitasse platea dictumst. Nam suscipit nisi interdum faucibus dignissim. Aliquam porttitor lectus sit amet libero posuere finibus quis sit amet sapien. Nullam varius neque lectus, in aliquam neque sodales eleifend.</p>', 'Null', '2018-07-23 19:14:06', '2018-07-23 19:14:06', 1),
(14, 'Reprehenderit deser', 6, 1, 'reprehenderit-deser', 'Nihil ut vero et fac', 'Delectus odio paria', 'http://localhost/login/uploads/blog_images/IMG20190226145949.jpg', 1, 'sflksjfklsjflksdjf', 'Null', '2019-02-26 13:03:16', '2019-02-26 13:03:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE `blog_post_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`id`, `post_id`, `tag_id`) VALUES
(10, 1, 1),
(11, 1, 4),
(12, 1, 5),
(13, 2, 2),
(14, 2, 4),
(15, 2, 6),
(18, 3, 1),
(19, 3, 2),
(20, 4, 10),
(21, 4, 11),
(24, 6, 12),
(25, 6, 14),
(26, 7, 10),
(27, 7, 11),
(28, 8, 8),
(29, 9, 14),
(30, 10, 4),
(31, 10, 7),
(35, 12, 11),
(36, 12, 12),
(37, 12, 13),
(44, 13, 4),
(45, 13, 7),
(46, 13, 8),
(47, 11, 4),
(48, 11, 7),
(49, 11, 8),
(53, 5, 12),
(54, 5, 13),
(55, 5, 14),
(56, 14, 4),
(57, 14, 7),
(58, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `blog_settings`
--

CREATE TABLE `blog_settings` (
  `id` int(11) NOT NULL,
  `enable_comments` tinyint(4) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_kewords` text NOT NULL,
  `per_page_posts` int(10) NOT NULL,
  `default_img` text NOT NULL,
  `enable_category_posts` tinyint(4) NOT NULL,
  `enable_recent_post` tinyint(4) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `Linkedin` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_settings`
--

INSERT INTO `blog_settings` (`id`, `enable_comments`, `meta_description`, `meta_kewords`, `per_page_posts`, `default_img`, `enable_category_posts`, `enable_recent_post`, `youtube`, `Linkedin`, `facebook`) VALUES
(1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'sports,news,cricket,football', 8, 'http://localhost/login/uploads/blogging-SMB2.png', 1, 1, 'http://youtube.com/', 'https://linkedin.com/', 'http://facebook.com/');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `tag`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Articles', 'articles', '2018-06-12 09:59:38', '0000-00-00 00:00:00'),
(4, 'ronaldo', 'ronaldo', '2018-06-12 10:28:48', '0000-00-00 00:00:00'),
(7, 'football', 'football', '2018-06-23 09:15:15', '0000-00-00 00:00:00'),
(8, 'cricket', 'cricket', '2018-06-23 09:15:21', '0000-00-00 00:00:00'),
(9, 'messi', 'messi', '2018-06-23 09:15:25', '0000-00-00 00:00:00'),
(10, 'css', 'css', '2018-06-23 09:15:48', '0000-00-00 00:00:00'),
(11, 'bootstrap', 'bootstrap', '2018-06-23 09:15:54', '0000-00-00 00:00:00'),
(12, 'laravel', 'laravel', '2018-06-23 09:22:18', '0000-00-00 00:00:00'),
(13, 'laravel restfull api\'s', 'laravel-restfull-apis', '2018-06-23 09:22:34', '0000-00-00 00:00:00'),
(14, 'codeigniter', 'codeigniter', '2018-06-23 09:22:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `word` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(95, NULL, '::1', NULL),
(94, NULL, '::1', NULL),
(93, NULL, '::1', NULL),
(92, NULL, '::1', NULL),
(91, NULL, '::1', NULL),
(90, NULL, '::1', NULL),
(89, NULL, '::1', NULL),
(88, NULL, '::1', NULL),
(155, 1506493472, '::1', 'LZCV6ISP'),
(143, 1506492915, '::1', '7WxjqlFC'),
(144, 1506492932, '::1', 'Mr2fRDem'),
(145, 1506492959, '::1', 'lZdK1Yzg'),
(146, 1506492988, '::1', 'm8ezTko7'),
(147, 1506492992, '::1', 'fcJsHOil'),
(148, 1506493027, '::1', '9W1qhZzr'),
(149, 1506493090, '::1', 'oCm3xKTp'),
(150, 1506493112, '::1', 'ast0VMcS'),
(151, 1506493175, '::1', 'QT7vqdVC'),
(152, 1506493194, '::1', 'OPyn5qkH'),
(153, 1506493353, '::1', 'mc2WCAs3'),
(154, 1506493370, '::1', 'IJzTfuqg');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_hq` varchar(255) NOT NULL,
  `doctor_fullname` varchar(255) NOT NULL,
  `doctor_dob` date NOT NULL,
  `doctor_marriage` date NOT NULL,
  `doctor_qualification` int(11) NOT NULL,
  `doctor_specialization` int(11) NOT NULL,
  `doctor_address` varchar(255) NOT NULL,
  `doctor_city` int(11) NOT NULL,
  `doctor_state` int(11) NOT NULL,
  `doctor_subdistrict` int(11) NOT NULL,
  `doctor_villages` int(11) NOT NULL,
  `doctor_locality` varchar(255) NOT NULL,
  `doctor_gender` varchar(50) NOT NULL,
  `doctor_dailyopd` varchar(255) NOT NULL,
  `doctor_phone` bigint(20) NOT NULL,
  `doctor_mobile` bigint(20) NOT NULL,
  `doctor_info` text NOT NULL,
  `doctor_email` varchar(50) NOT NULL,
  `doctor_website` varchar(255) NOT NULL,
  `cust_entrydt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `doctor_status` int(11) NOT NULL DEFAULT '1',
  `emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_hq`, `doctor_fullname`, `doctor_dob`, `doctor_marriage`, `doctor_qualification`, `doctor_specialization`, `doctor_address`, `doctor_city`, `doctor_state`, `doctor_subdistrict`, `doctor_villages`, `doctor_locality`, `doctor_gender`, `doctor_dailyopd`, `doctor_phone`, `doctor_mobile`, `doctor_info`, `doctor_email`, `doctor_website`, `cust_entrydt`, `doctor_status`, `emp_id`) VALUES
(1, 'Jabalpur', 'Sanjay Nema', '1970-01-01', '1970-01-01', 0, 0, 'Madan mahal station road, near telegraph gate no. 2 , in front of hanuman mandir', 451, 23, 0, 0, 'Wright town', 'male', '', 7612413010, 9826159210, 'General Physician Doctor', '', '', '2019-11-08 04:43:15', 1, 1),
(5, '451', 'Abha Gupta', '1970-01-01', '1970-01-01', 44, 16, 'Uday nursing home jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-16 10:35:50', 1, 8),
(11, 'Jabalpur', 'Dr S K Pathak ', '1970-01-01', '1970-01-01', 29, 15, 'Azad chock katni', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-10 05:56:28', 1, 1),
(12, '450', 'Dr Joystna Nigam', '1970-01-01', '1970-01-01', 53, 37, 'Station rode man market', 450, 23, 0, 0, 'Katni', 'female', '', 0, 0, '', '', '', '2020-02-07 05:00:20', 1, 1),
(14, '451', 'Pushpraj Patel', '1970-01-01', '1970-01-01', 37, 4, 'Right Town', 451, 23, 3631, 0, 'Right Town', 'male', '', 0, 9584024074, '', '', '', '2020-02-07 05:00:07', 1, 7),
(15, '451', 'Nishint Gupta', '1970-01-01', '1970-01-01', 41, 30, '', 451, 23, 3631, 0, '', 'male', '', 0, 9582540763, '', '', '', '2020-02-07 05:00:02', 1, 7),
(16, '457', 'Dr.pk Khare', '1970-01-01', '1970-01-01', 2, 17, 'Lanji', 0, 23, 0, 0, '', 'male', '', 0, 918966817533, '', '', '', '2019-11-17 06:43:38', 1, 9),
(17, '457', 'Dr.s.ahmad', '1970-01-01', '1970-01-01', 2, 33, 'Lanji', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:43:53', 1, 9),
(18, '457', 'Dr.s. Gedam', '1970-01-01', '1970-01-01', 49, 19, 'Lanji', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-17 06:44:10', 1, 9),
(19, '457', 'Dr.y.randive', '1970-01-01', '1970-01-01', 4, 15, 'Lanji', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:44:28', 1, 9),
(20, '457', 'Dr.v.randive', '1970-01-01', '1970-01-01', 2, 17, 'Lanji', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:44:44', 1, 9),
(21, '451', 'Dr.   Dahikar', '1970-01-01', '1970-01-01', 2, 15, 'Lanji', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:51', 1, 9),
(22, '457', 'Dr.p.meharban', '1970-01-01', '1970-01-01', 4, 17, 'Lanji', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:45:16', 1, 9),
(23, '457', 'Dr.k.rahangdale', '1970-01-01', '1970-01-01', 2, 15, 'Bhanegoan', 457, 23, 3676, 47144, '', 'male', '', 0, 0, '', '', '', '2019-11-10 15:50:37', 1, 9),
(24, '457', 'Dr.d.hathimare', '1970-01-01', '1970-01-01', 23, 15, 'Binora', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 23:43:35', 1, 9),
(25, '457', 'Dr.v.sinha', '1970-01-01', '1970-01-01', 29, 15, 'Lanji', 457, 23, 3676, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-10 15:58:51', 1, 9),
(26, '457', 'Dr.cp.nagpure', '1970-01-01', '1970-01-01', 2, 15, 'Sadra', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-10 16:07:20', 1, 9),
(27, '457', 'Dr.yuvraj Dashariya', '1970-01-01', '1970-01-01', 2, 15, 'Sadra', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-12 04:26:52', 1, 1),
(28, '457', 'Dr.dashariya', '1970-01-01', '1970-01-01', 7, 15, 'sadra', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-12 14:26:58', 1, 9),
(29, '451', 'Madhu Roy', '1970-01-01', '1970-01-01', 3, 9, 'Bilheri', 0, 23, 0, 0, '', 'female', '10', 7612601405, 0, '', '', '', '2019-11-13 11:24:35', 1, 8),
(30, '450', 'Dr Bharm Jasuja', '1970-01-01', '1970-01-01', 29, 15, 'Sahid dwar', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 08:49:38', 1, 6),
(31, '450', 'Dr D Sankar', '1970-01-01', '1970-01-01', 70, 15, '', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 08:52:38', 1, 6),
(32, '450', 'Dr Gopal Bajaj', '1970-01-01', '1970-01-01', 16, 29, '', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 08:54:21', 1, 6),
(33, '450', 'Dr G D Lalwani', '1970-01-01', '1970-01-01', 2, 15, '', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 08:55:49', 1, 6),
(34, '450', 'Dr Harshita Gupta', '1970-01-01', '1970-01-01', 10, 11, '', 450, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-16 09:01:35', 1, 6),
(35, '450', 'Dr H S Nema', '1970-01-01', '1970-01-01', 37, 0, '', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 09:03:09', 1, 6),
(36, '450', 'Dr Harsha Battra', '1970-01-01', '1970-01-01', 10, 11, '', 450, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-16 09:04:13', 1, 6),
(37, '450', 'Dr Hargovend Vishkarma', '1970-01-01', '1970-01-01', 27, 29, '', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 09:07:21', 1, 6),
(38, '455', 'Rakesh Shrivastava', '1970-01-01', '1970-01-01', 29, 15, 'Parasiya road chhindwara', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:41', 1, 13),
(39, '451', 'Virendra Shivhare', '1970-01-01', '1970-01-01', 2, 15, 'Near supatal, nagpur road Jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:32', 1, 8),
(40, '451', 'Virendra Sahu', '1970-01-01', '1970-01-01', 4, 15, 'Chapar rampur jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:31:10', 1, 8),
(41, '451', 'Arun Saxena', '1970-01-01', '1970-01-01', 37, 33, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:32:32', 1, 8),
(42, '451', 'Kusum Lata Saxena', '1970-01-01', '1970-01-01', 10, 19, 'Badi omti jabalpur', 0, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-16 10:34:15', 1, 8),
(43, '451', 'S. K. Goutam', '1970-01-01', '1970-01-01', 36, 37, 'Labour chouk jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:37:14', 1, 8),
(44, '451', 'Sameer Agrawal', '1970-01-01', '1970-01-01', 37, 33, 'Jda complex, labour chouk jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:38:42', 1, 8),
(45, '451', 'Ashish Tiwari', '1970-01-01', '1970-01-01', 37, 33, 'Labour chouk jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:40:06', 1, 8),
(46, '451', 'Ranju Sakia', '1970-01-01', '1970-01-01', 37, 33, 'Yadav colony jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-16 10:41:36', 1, 8),
(47, '451', 'T. K. Sakiya', '1970-01-01', '1970-01-01', 29, 17, 'Yadav colony jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:42:56', 1, 8),
(48, '451', 'M. Dengra', '1970-01-01', '1970-01-01', 44, 19, 'Ranital jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-16 10:44:08', 1, 8),
(49, '451', 'Hemlata Arora', '1970-01-01', '1970-01-01', 37, 33, 'Bharat hospital ranital jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:45:33', 1, 8),
(50, '451', 'Manju Nayak', '1970-01-01', '1970-01-01', 37, 33, 'Baldevbagh jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:47:04', 1, 8),
(51, '451', 'S. A. Khan', '1970-01-01', '1970-01-01', 2, 15, 'Damoh naka jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:50:29', 1, 8),
(52, '451', 'M. Khan', '1970-01-01', '1970-01-01', 37, 37, 'Damoh naka jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:54:58', 1, 8),
(53, '451', 'G. K. Pachouri', '1970-01-01', '1970-01-01', 29, 17, 'Damoh naka jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:56:14', 1, 8),
(54, '451', 'Prabhat Shrivastava', '1970-01-01', '1970-01-01', 2, 17, 'Damohnaka jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:57:20', 1, 8),
(55, '451', 'Sunil Patel', '1970-01-01', '1970-01-01', 17, 30, 'Deen dayal jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:58:28', 1, 8),
(56, '451', 'Ajay Tiwari', '1970-01-01', '1970-01-01', 37, 37, 'Damohnaka jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-16 10:59:49', 1, 8),
(57, '457', 'Dr.h.bisen', '1970-01-01', '1970-01-01', 23, 15, 'Ukwa', 457, 23, 3674, 0, '', 'male', '', 0, 9425831526, '', '', '', '2019-11-17 05:50:41', 1, 9),
(58, '457', 'Dr.a.bisen', '1970-01-01', '1970-01-01', 4, 15, 'Ukwa', 457, 23, 3674, 0, '', 'male', '', 0, 8989703470, '', '', '', '2019-11-17 06:03:16', 1, 9),
(59, '457', 'Dr.ib.verma', '1970-01-01', '1970-01-01', 23, 15, 'Ukwa', 457, 23, 3674, 0, '', 'male', '', 0, 8989523809, '', '', '', '2019-11-17 06:04:32', 1, 9),
(60, '457', 'Dr.u.rana', '1970-01-01', '1970-01-01', 2, 15, 'Ukwa', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:06:19', 1, 9),
(61, '457', 'Dr.s.sarkar', '1970-01-01', '1970-01-01', 2, 15, 'Dora', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:08:18', 1, 9),
(62, '457', 'Dr.sk.shukla', '1970-01-01', '1970-01-01', 23, 15, 'Baihar', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:23:03', 1, 9),
(63, '457', 'Dr.s.sharma', '1970-01-01', '1970-01-01', 2, 17, 'Baihar', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:24:17', 1, 9),
(64, '457', 'Dr.n Bihone', '1970-01-01', '1970-01-01', 23, 15, 'Baihar', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:26:33', 1, 9),
(65, '457', 'Dr.sk.katre', '1970-01-01', '1970-01-01', 4, 17, 'Mohgoan', 457, 23, 3674, 46644, '', 'male', '', 0, 919584400940, '', '', '', '2019-11-17 06:31:24', 1, 9),
(66, '457', 'Dr.a.khan', '1970-01-01', '1970-01-01', 4, 15, 'Mohgoan', 457, 23, 3674, 46644, '', 'male', '', 0, 9981851921, '', '', '', '2019-11-17 06:32:42', 1, 9),
(67, '457', 'Dr.lc. Chitrasen', '1970-01-01', '1970-01-01', 23, 15, 'Mohgoan', 457, 23, 3674, 46644, '', 'male', '', 0, 9981767406, '', '', '', '2019-11-17 06:34:38', 1, 9),
(68, '457', 'Dr.deshmukh', '1970-01-01', '1970-01-01', 4, 15, 'Mohgoan', 457, 23, 3674, 46644, '', 'male', '', 0, 9993820608, '', '', '', '2019-11-17 06:36:10', 1, 9),
(69, '457', 'Dr.sp.sharma', '1970-01-01', '1970-01-01', 2, 15, 'Mohgoan', 457, 23, 3674, 46644, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:38:01', 1, 9),
(70, '457', 'Dr.r.lilhare', '1970-01-01', '1970-01-01', 53, 15, 'Mohgoan', 457, 23, 3674, 46644, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:42:41', 1, 9),
(71, '457', 'Dr.l.chandsi', '1970-01-01', '1970-01-01', 4, 15, 'Mohgoan', 457, 23, 3674, 46644, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:48:03', 1, 9),
(72, '457', 'Dr.r.upwanshi', '1970-01-01', '1970-01-01', 2, 15, 'Kirnapur', 457, 23, 3673, 0, '', 'male', '', 0, 919425448093, '', '', '', '2019-11-17 06:50:31', 1, 9),
(73, '457', 'Dr.v.rahangdale', '1970-01-01', '1970-01-01', 2, 15, 'Kirnapur', 457, 23, 3673, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:51:54', 1, 9),
(74, '457', 'Dr.b.suneri', '1970-01-01', '1970-01-01', 23, 17, 'Kirnapur', 457, 23, 3673, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:53:28', 1, 9),
(75, '457', 'Dr.y.bhandarkar', '1970-01-01', '1970-01-01', 4, 15, 'Kirnapur', 457, 23, 3673, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:54:22', 1, 9),
(76, '457', 'Dr.r.bhajipale', '1970-01-01', '1970-01-01', 23, 15, 'Kirnapur', 457, 23, 3673, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:56:20', 1, 9),
(77, '457', 'Dr.d.patle', '1970-01-01', '1970-01-01', 2, 17, 'Hirri', 457, 23, 3673, 46591, '', 'male', '', 0, 0, '', '', '', '2019-11-17 06:57:41', 1, 9),
(78, '457', 'Dr.s.rahangdale', '1970-01-01', '1970-01-01', 2, 15, 'Changera', 457, 23, 3673, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 07:00:46', 1, 9),
(79, '456', 'Nidhi Dhurve', '1970-01-01', '1970-01-01', 2, 19, '', 456, 23, 3662, 0, '', 'female', '', 0, 6261990143, '', '', '', '2020-02-07 04:58:28', 1, 7),
(80, '456', 'A.p Patel', '1970-01-01', '1970-01-01', 29, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:58:23', 1, 7),
(81, '451', 'S.k Majumdar', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 9753617849, '', '', '', '2020-02-07 04:58:07', 1, 7),
(82, '456', 'S.r Sahu', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 8878480027, '', '', '', '2020-02-07 04:57:59', 1, 7),
(83, '456', 'R.k Agarwal ', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:57:54', 1, 7),
(84, '456', 'R.j Prasad', '1970-01-01', '1970-01-01', 29, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 7772997599, '', '', '', '2020-02-07 04:57:46', 1, 7),
(85, '456', 'Saurabh Jain', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 8878334925, '', '', '', '2020-02-07 04:57:41', 1, 7),
(86, '456', 'Ratan Biswas', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:57:33', 1, 7),
(87, '456', 'Shiv Kumar', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 7987407524, '', '', '', '2020-02-07 04:57:28', 1, 7),
(88, '456', 'K.p Patel', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 7987660774, '', '', '', '2020-02-07 04:57:16', 1, 7),
(89, '456', 'F.a Firdosi', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 9424633047, '', '', '', '2020-02-07 04:57:10', 1, 7),
(90, '456', 'T.k Biswas', '1970-01-01', '1970-01-01', 4, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 8120861650, '', '', '', '2020-02-07 04:57:06', 1, 7),
(91, '457', 'Dr.a Budansa', '1970-01-01', '1970-01-01', 70, 15, 'Kinhi', 457, 23, 3673, 46611, '', 'male', '', 0, 0, '', '', '', '2019-11-17 23:40:10', 1, 9),
(92, '457', 'Dr.s.khare', '1970-01-01', '1970-01-01', 4, 15, 'Amgoan', 457, 23, 3673, 46582, '', 'male', '', 0, 0, '', '', '', '2019-11-17 23:45:28', 1, 9),
(93, '457', 'Dr.g.jamre', '1970-01-01', '1970-01-01', 2, 15, 'Rajegoan', 457, 23, 3673, 46517, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:57:00', 1, 9),
(94, '457', 'Dr.g.pichhode', '1970-01-01', '1970-01-01', 0, 0, 'Hatta', 457, 23, 3673, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 23:54:56', 1, 9),
(95, '457', 'Dr.v.bhandarkar', '1970-01-01', '1970-01-01', 2, 17, 'Kinhi', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-17 23:57:19', 1, 9),
(96, '457', 'Dr.m.puncheswar', '1970-01-01', '1970-01-01', 4, 15, 'Lalburra', 457, 23, 3671, 0, '', 'male', '', 0, 9479324311, '', '', '', '2019-11-18 00:00:14', 1, 9),
(97, '457', 'Dr.v.kaare', '1970-01-01', '1970-01-01', 2, 15, 'Lalburra', 457, 23, 3671, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:01:19', 1, 9),
(98, '457', 'Dr.m.chauhan', '1970-01-01', '1970-01-01', 2, 15, 'Lalburra', 457, 23, 3671, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:02:14', 1, 9),
(99, '457', 'Dr.yl Lange', '1970-01-01', '1970-01-01', 4, 15, 'Lalburra', 457, 23, 3671, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:03:45', 1, 9),
(100, '457', 'Dr.g.agrawal', '1970-01-01', '1970-01-01', 2, 15, 'Lalburra', 457, 23, 3671, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:04:53', 1, 9),
(101, '457', 'Dr.sk Katre', '1970-01-01', '1970-01-01', 2, 15, 'Sihora', 457, 23, 3671, 46235, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:06:24', 1, 9),
(102, '457', 'Dr.k.lilhare', '1970-01-01', '1970-01-01', 2, 15, 'Jaam', 457, 23, 3671, 46222, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:07:48', 1, 9),
(103, '457', 'Dr.a.jogekar', '1970-01-01', '1970-01-01', 2, 15, 'Jaam', 457, 23, 3671, 46222, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:09:03', 1, 9),
(104, '457', 'Dr.a.bhagat', '1970-01-01', '1970-01-01', 4, 15, 'Jaam', 457, 23, 3671, 46222, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:10:19', 1, 9),
(105, '457', 'Dr. Cd.joshi', '1970-01-01', '1970-01-01', 4, 15, 'Garra', 457, 23, 3671, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:12:38', 1, 9),
(106, '457', 'Dr.g.basene', '1970-01-01', '1970-01-01', 2, 15, 'Garra', 457, 23, 3671, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:13:33', 1, 9),
(107, '457', 'Dr.c.chauhan', '1970-01-01', '1970-01-01', 4, 15, 'Garra', 457, 23, 3671, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:14:27', 1, 9),
(108, '457', 'Dr.g.pawar', '1970-01-01', '1970-01-01', 2, 15, 'Katangi', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:16:53', 1, 9),
(109, '457', 'Dr.a.pawar', '1970-01-01', '1970-01-01', 10, 19, 'Katangi', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:20:11', 1, 9),
(110, '457', 'Dr.nk.majumdar', '1970-01-01', '1970-01-01', 2, 15, 'Katedhara', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:30:26', 1, 9),
(111, '457', 'Dr.r.chaudhary', '1970-01-01', '1970-01-01', 2, 15, 'Katangi', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:21:36', 1, 9),
(112, '457', 'Dr.s.sarkar', '1970-01-01', '1970-01-01', 4, 15, 'Katangi', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:22:48', 1, 9),
(113, '457', 'Dr.j.sahare', '1970-01-01', '1970-01-01', 2, 15, 'Katedhara', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:29:52', 1, 9),
(114, '457', 'Dr.lc Chaudhary', '1970-01-01', '1970-01-01', 2, 15, 'Tirodi', 457, 23, 3668, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:33:00', 1, 9),
(115, '457', 'Dr.s.amule', '1970-01-01', '1970-01-01', 2, 15, 'Tirodi', 457, 23, 3668, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:33:59', 1, 9),
(116, '457', 'Dr.a.khan', '1970-01-01', '1970-01-01', 4, 0, 'Tirodi', 457, 23, 3668, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:34:42', 1, 9),
(117, '457', 'Dr.a.gupta', '1970-01-01', '1970-01-01', 4, 15, 'Katangi', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:38:23', 1, 9),
(118, '457', 'Dr.n Hirawat', '1970-01-01', '1970-01-01', 2, 15, 'Katangi', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:40:10', 1, 9),
(119, '457', 'Dr.rk Shukla', '1970-01-01', '1970-01-01', 29, 15, 'Katangi', 457, 23, 3667, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:21', 1, 9),
(120, '457', 'Dr.v.nagpure', '1970-01-01', '1970-01-01', 2, 15, 'Waraseoni', 457, 23, 3669, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:42:24', 1, 9),
(121, '457', 'Dr.s.vishwash', '1970-01-01', '1970-01-01', 2, 15, 'Bharweli', 457, 23, 3672, 46489, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:45:46', 1, 9),
(122, '457', 'Dr.s.banauthe', '1970-01-01', '1970-01-01', 2, 15, 'Bharwali', 457, 23, 3672, 46489, '', 'male', '', 0, 9131305205, '', '', '', '2019-11-18 00:47:24', 1, 9),
(123, '457', 'Dr.lc.sarangpure', '1970-01-01', '1970-01-01', 4, 15, 'Bharweli', 457, 23, 3672, 46489, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:48:26', 1, 9),
(124, '457', 'Dr.j.soni', '1970-01-01', '1970-01-01', 2, 15, 'Bharweli', 457, 23, 3672, 46489, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:50:06', 1, 9),
(125, '457', 'Dr.b.nagtode', '1970-01-01', '1970-01-01', 49, 19, 'Bharweli', 457, 23, 3672, 46489, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:51:58', 1, 9),
(126, '457', 'Dr.d.patle', '1970-01-01', '1970-01-01', 2, 19, 'Bharweli', 457, 23, 3672, 46489, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:53:30', 1, 9),
(127, '457', 'Dr.r.panche', '1970-01-01', '1970-01-01', 4, 0, 'Manegaon', 0, 23, 0, 0, '', 'male', '', 0, 919098603201, '', '', '', '2019-11-18 00:56:32', 1, 9),
(128, '457', 'Dr.d.chandele', '1970-01-01', '1970-01-01', 2, 15, 'Manegoan', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 00:58:20', 1, 9),
(129, '457', 'Dr.v.kindrele', '1970-01-01', '1970-01-01', 2, 15, 'Bagdara', 457, 23, 3672, 46447, '', 'male', '', 0, 0, '', '', '', '2019-11-18 01:00:12', 1, 9),
(130, '455', 'V K Rathi', '1970-01-01', '1970-01-01', 29, 15, 'Main road sausar ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:12:40', 1, 13),
(131, '455', 'Ramesh Kothari ', '1970-01-01', '1970-01-01', 2, 15, 'MAIN Market Sausar', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:14:27', 1, 13),
(132, '455', 'P Kantak ', '1970-01-01', '1970-01-01', 2, 15, 'Main Road SAUSAR ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:15:51', 1, 13),
(133, '455', 'M Kantak ', '1970-01-01', '1970-01-01', 2, 15, 'Main road SAUSAR ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-18 04:17:20', 1, 13),
(134, '455', 'V Khadatkar ', '1970-01-01', '1970-01-01', 10, 11, 'Near bus stand Sausar ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-18 04:19:09', 1, 13),
(135, '455', 'Rupesh Bokhde', '1970-01-01', '1970-01-01', 56, 8, 'Nagpur road SAUSAR ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:21:11', 1, 13),
(136, '455', 'Rupesh Bokhde', '1970-01-01', '1970-01-01', 1, 8, 'Nagpur road SAUSAR ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:23:06', 1, 13),
(137, '455', 'Seetal Bokhde', '1970-01-01', '1970-01-01', 10, 11, 'Nagpur road SAUSAR ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-18 04:24:57', 1, 13),
(138, '450', 'Dr J K Lalwani', '1970-01-01', '1970-01-01', 2, 15, '', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:26:43', 1, 6),
(139, '455', 'Ashish Bhattad', '1970-01-01', '1970-01-01', 2, 15, 'Old govt.hospital Sausar ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:28:00', 1, 13),
(140, '455', 'V Pandey', '1970-01-01', '1970-01-01', 2, 15, 'Ramakona sausar ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:30:11', 1, 13),
(141, '455', 'M Pandey', '1970-01-01', '1970-01-01', 2, 15, 'Ramakona SAUSAR ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-18 04:32:07', 1, 13),
(142, '451', 'Mukesh Yadav', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:36:44', 1, 8),
(143, '451', 'Nizam Quraishi', '1970-01-01', '1970-01-01', 2, 15, 'Majholi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 04:59:16', 1, 8),
(144, '451', 'Ankit Agrawal', '1970-01-01', '1970-01-01', 3, 9, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 05:00:23', 1, 8),
(145, '451', 'A.k. Bishwas', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 05:02:30', 1, 8),
(146, '451', 'A.k. Bishwas', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 05:05:34', 1, 8),
(147, '451', 'C P Tiwari', '1970-01-01', '1970-01-01', 29, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 16:42:56', 1, 1),
(148, '451', 'A.k. Samajpati', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 05:50:14', 1, 8),
(149, '451', 'Deepak Gaikwad', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 05:51:41', 1, 8),
(150, '451', 'Manikant', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 05:53:20', 1, 8),
(151, '451', 'S.r.soni', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-18 05:54:32', 1, 8),
(152, '455', 'Shobha Moitra', '1970-01-01', '1970-01-01', 10, 11, 'Near bus stand  Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-19 03:59:04', 1, 13),
(153, '455', 'S Rahman', '1970-01-01', '1970-01-01', 10, 11, 'Near MLB  School Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-19 04:01:16', 1, 13),
(154, '455', 'P Chaddha', '1970-01-01', '1970-01-01', 10, 11, 'Chhota Talab Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-19 04:03:53', 1, 13),
(155, '455', 'B S Baghel ', '1970-01-01', '1970-01-01', 2, 15, 'Chourai Road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:05:53', 1, 13),
(156, '455', 'S K Bindra', '1970-01-01', '1970-01-01', 29, 15, 'Sanichra baar Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:07:36', 1, 13),
(157, '455', 'Pragya Verma ', '1970-01-01', '1970-01-01', 10, 11, 'Near patni talkies Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:54:27', 1, 13),
(158, '455', 'Arvind Jain ', '1970-01-01', '1970-01-01', 29, 15, 'Near Rammandir Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:11:28', 1, 13),
(159, '455', 'R H Bagga', '1970-01-01', '1970-01-01', 3, 9, 'Stadium ground Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:13:27', 1, 13),
(160, '455', 'R Shrivastava ', '1970-01-01', '1970-01-01', 3, 9, 'Parasiya road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:15:08', 1, 13),
(161, '455', 'K S Bajaj ', '1970-01-01', '1970-01-01', 29, 15, 'Narsinghpur naka Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:17:31', 1, 13),
(162, '457', 'Dr.archana Shukla', '1970-01-01', '1970-01-01', 29, 19, 'Balaghat', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 04:51:58', 1, 9),
(163, '457', 'Dr.mahesh Baladhare', '1970-01-01', '1970-01-01', 2, 15, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:53:02', 1, 9),
(164, '457', 'Dr.shiv Kawre', '1970-01-01', '1970-01-01', 4, 15, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:54:25', 1, 9),
(165, '457', 'Dr.sp Meshram', '1970-01-01', '1970-01-01', 2, 15, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:58:13', 1, 9),
(166, '457', 'Dr.praveen Urkhude', '1970-01-01', '1970-01-01', 2, 15, 'Balaghat MP', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 04:59:36', 1, 9),
(167, '457', 'Dr.ramesh Sewlani', '1970-01-01', '1970-01-01', 4, 15, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 05:01:30', 1, 9),
(168, '457', 'Dr.vp Lilhare', '1970-01-01', '1970-01-01', 53, 13, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 05:03:22', 1, 9),
(169, '457', 'Dr.rahul Borkar', '1970-01-01', '1970-01-01', 53, 33, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 05:04:56', 1, 9),
(170, '457', 'Dr.varsha Rangare', '1970-01-01', '1970-01-01', 49, 19, 'budhi balaghat', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 06:12:55', 1, 9),
(171, '457', 'Dr.praveen Jyotishi', '1970-01-01', '1970-01-01', 29, 15, 'Balaghat', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 05:18:42', 1, 9),
(172, '457', 'Dr.s.borkar Mem', '1970-01-01', '1970-01-01', 49, 19, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-19 05:16:20', 1, 9),
(173, '451', 'Rakesh Anand', '1970-01-01', '1970-01-01', 37, 16, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:31', 1, 7),
(174, '451', 'Ashok Khanna', '1970-01-01', '1970-01-01', 37, 37, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:27', 1, 7),
(175, '451', 'G.l Nigam', '1970-01-01', '1970-01-01', 42, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:19', 1, 7),
(176, '451', 'Subhrato Biswas', '1970-01-01', '1970-01-01', 37, 37, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:15', 1, 7),
(177, '451', 'B. L Russia', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:04', 1, 7),
(178, '451', 'Ajay Tiwari', '1970-01-01', '1970-01-01', 37, 37, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:00', 1, 7),
(179, '451', 'Ritu Nema', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:52:56', 1, 7),
(180, '451', 'Sunil Patel', '1970-01-01', '1970-01-01', 41, 32, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:52', 1, 7),
(181, '451', 'Altaf Khan', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:49', 1, 7),
(182, '451', 'Sarad Nema', '1970-01-01', '1970-01-01', 41, 32, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:44', 1, 7),
(183, '451', 'Mayak Choubey', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:40', 1, 7),
(184, '451', 'Rajeev Ratan Choubey', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:35', 1, 7),
(185, '451', 'Rajeev Bhandari', '1970-01-01', '1970-01-01', 41, 32, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:32', 1, 7),
(186, '451', 'Shahin Khan', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:28', 1, 7),
(187, '451', 'Puneet Bhalla', '1970-01-01', '1970-01-01', 37, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:24', 1, 7),
(188, '451', 'Sandhiya Arora', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:20', 1, 7),
(189, '451', 'Tanmay Sircar', '1970-01-01', '1970-01-01', 41, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:16', 1, 7),
(190, '451', 'B.k Agarwal', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:12', 1, 7),
(191, '451', 'S.k Sharma', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:52:07', 1, 7),
(192, '451', 'Satish Asrani', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:58', 1, 7),
(193, '451', 'R.s Sharma', '1970-01-01', '1970-01-01', 37, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:55', 1, 7),
(194, '451', 'Ajay Bhandari', '1970-01-01', '1970-01-01', 37, 37, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:51', 1, 7),
(195, '451', 'M. C Dabar', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:43', 1, 7),
(196, '451', 'Alka Behel', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:51:39', 1, 7),
(197, '451', 'Shama Choudhery', '1970-01-01', '1970-01-01', 2, 19, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:36', 1, 7),
(198, '451', 'Raja Khan', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:24', 1, 7),
(199, '451', 'Mohammad Sajid', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:19', 1, 7),
(200, '451', 'Nisar Ansari', '1970-01-01', '1970-01-01', 3, 9, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:14', 1, 7),
(201, '451', 'Abrahar Khan', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:10', 1, 7),
(202, '451', 'Sarfaraj Ansari', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:07', 1, 7),
(203, '451', 'Sabak Khan', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:03', 1, 7),
(204, '451', 'Kusum Jain', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:59', 1, 7),
(205, '451', 'Ashok Arora', '1970-01-01', '1970-01-01', 37, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:56', 1, 7),
(206, '451', 'S. Chakrwarti', '1970-01-01', '1970-01-01', 29, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:50:52', 1, 7),
(207, '451', 'B.k Chakrwarti', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:48', 1, 7),
(208, '451', 'Mohan Lalwani', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:43', 1, 7),
(209, '451', 'Komal Jain', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:40', 1, 7),
(210, '451', 'Usaf Khan', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:36', 1, 7),
(211, '455', 'Karan Bhargav ', '1970-01-01', '1970-01-01', 2, 15, 'Chhapakhana Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:18:40', 1, 13),
(212, '455', 'H B Suneja', '1970-01-01', '1970-01-01', 2, 15, 'Chhapakhana Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:20:14', 1, 13),
(213, '455', 'G S Dubey', '1970-01-01', '1970-01-01', 19, 2, 'Kukda jagat Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:22:02', 1, 13),
(214, '455', 'Kanchan Dubey ', '1970-01-01', '1970-01-01', 10, 11, 'Kukda jagat Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-20 03:23:56', 1, 13),
(215, '455', 'Rajesh Rai', '1970-01-01', '1970-01-01', 2, 15, 'Lalbagh Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:25:02', 1, 13),
(216, '455', 'Rasmi Rai ', '1970-01-01', '1970-01-01', 2, 15, 'Lalbagh Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-20 03:26:53', 1, 13),
(217, '455', 'D K Jadiya ', '1970-01-01', '1970-01-01', 2, 15, 'Lalbagh Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:29:05', 1, 13),
(218, '455', 'M P Yadav ', '1970-01-01', '1970-01-01', 36, 15, 'Parasiya road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:30:35', 1, 13),
(219, '455', 'S Bhagat ', '1970-01-01', '1970-01-01', 29, 15, 'Near main hospital Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:31:59', 1, 13),
(220, '455', 'Neerja Tiwari ', '1970-01-01', '1970-01-01', 10, 11, 'Patel colony Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-20 03:33:46', 1, 13),
(221, '455', 'S K Luhariya ', '1970-01-01', '1970-01-01', 29, 15, 'Near bus stand Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-20 03:35:09', 1, 13),
(222, '451', 'Uttsav Katakwar', '1970-01-01', '1970-01-01', 44, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:27', 1, 7),
(223, '455', 'Amit Thakur ', '1970-01-01', '1970-01-01', 48, 8, 'Main market  jamai ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 02:50:23', 1, 13),
(224, '455', 'T Benarjee ', '1970-01-01', '1970-01-01', 2, 15, 'Main market jamai ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 02:52:18', 1, 13),
(225, '455', 'B M Chaturvedi ', '1970-01-01', '1970-01-01', 2, 15, 'Main market jamai ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 02:54:41', 1, 13),
(226, '455', 'S K Rai ', '1970-01-01', '1970-01-01', 2, 15, 'Ghorawari Damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:02:00', 1, 13),
(227, '455', 'Anurag Rai ', '1970-01-01', '1970-01-01', 29, 15, 'Ghorawari Damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:04:11', 1, 13),
(228, '455', 'S K Bhatkar ', '1970-01-01', '1970-01-01', 29, 15, 'Old bus stand Damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:05:54', 1, 13),
(229, '455', 'R K Viswkarma ', '1970-01-01', '1970-01-01', 29, 15, 'Main market damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:08:00', 1, 13),
(230, '455', 'Bahid Khan ', '1970-01-01', '1970-01-01', 2, 15, 'Main market Damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:09:31', 1, 13),
(231, '455', 'Anil Yaduwanshi ', '1970-01-01', '1970-01-01', 2, 15, 'Hirdagadh Damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:12:07', 1, 13),
(232, '455', 'S Sarathe ', '1970-01-01', '1970-01-01', 2, 15, 'Hirdagadh Damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:13:31', 1, 13),
(233, '455', 'Rajkumar Rai ', '1970-01-01', '1970-01-01', 2, 15, 'Main market Damua ', 455, 23, 3651, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 03:15:02', 1, 13),
(234, '455', 'Shabana Khan ', '1970-01-01', '1970-01-01', 2, 15, 'Main market jamai ', 455, 23, 3651, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-21 03:16:30', 1, 13),
(235, '430', 'Dr.r.n.tiwari', '1970-01-01', '1970-01-01', 53, 17, 'Old bus stand ', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-11-21 05:19:19', 1, 5),
(236, '430', 'Dr.s.p.panay', '1970-01-01', '1970-01-01', 2, 17, 'Manda complex', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-11-21 05:20:54', 1, 5),
(237, '430', 'Dr.akchya Shrivastav', '1970-01-01', '1970-01-01', 19, 47, 'Chirayu hospital tansen comple sirmaour chauraha', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-11-21 05:23:27', 1, 5),
(238, '430', 'Dr.r.r.mishra (p)', '1970-01-01', '1970-01-01', 1, 33, 'Near agrawal nurshing home ', 430, 23, 3479, 0, '', 'male', '40', 0, 0, '', '', '', '2019-11-21 05:28:31', 1, 5),
(239, '430', 'Dr.shiv Payasi', '1970-01-01', '1970-01-01', 2, 17, 'Old bus stand', 430, 23, 3479, 0, '', 'male', '60', 0, 0, '', '', '', '2019-11-21 05:29:49', 1, 5),
(240, '430', 'Dr.gaurav Tripathi', '1970-01-01', '1970-01-01', 1, 33, 'Tansen complex', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-11-21 05:31:42', 1, 5),
(241, '430', 'Dr.r.p.parahua', '1970-01-01', '1970-01-01', 2, 17, 'Subhas chowk', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-11-21 05:34:17', 1, 5),
(242, '430', 'Dr.a.k.tiwari', '1970-01-01', '1970-01-01', 37, 37, 'College chourah', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-11-21 05:36:05', 1, 5),
(243, '430', 'Dr.anil Shrivastav', '1970-01-01', '1970-01-01', 37, 37, 'Tansen complex', 430, 23, 3479, 0, '', 'male', '40', 0, 0, '', '', '', '2019-11-21 05:37:19', 1, 5),
(244, '430', 'Dr.rajesh Singhal', '1970-01-01', '1970-01-01', 37, 37, 'Singhal nurshing home ', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-11-21 05:38:33', 1, 5),
(245, '430', 'Dr.a.k.khare', '1970-01-01', '1970-01-01', 24, 14, 'Tansen complex', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-11-21 05:40:00', 1, 5),
(246, '457', 'Dr.avinash Shukla', '1970-01-01', '1970-01-01', 29, 15, 'near sai mandir balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 06:05:19', 1, 9),
(247, '457', 'Dr.pushpalata Sambhare', '1970-01-01', '1970-01-01', 50, 19, 'budhi balaghat', 457, 23, 3672, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-21 06:19:09', 1, 9),
(248, '457', 'Dr . Geeta Barmate', '1970-01-01', '1970-01-01', 49, 19, 'balaghat', 457, 23, 3672, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-21 06:21:43', 1, 9),
(249, '457', 'Dr.abhay Lokhre', '1970-01-01', '1970-01-01', 54, 13, 'Balaghat hospital ', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 06:25:23', 1, 9),
(250, '457', 'Dr.anita Lokhre Mem', '1970-01-01', '1970-01-01', 50, 19, 'balaghat hospital', 457, 23, 3672, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-21 06:27:09', 1, 9),
(251, '457', 'Dr.zh Bharma', '1970-01-01', '1970-01-01', 53, 13, 'balaghat hospital', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 06:29:18', 1, 9),
(252, '457', 'Dr.gurme', '1970-01-01', '1970-01-01', 29, 14, 'balaghat hospital', 457, 23, 3672, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-21 06:31:42', 1, 9),
(253, '457', 'Dr.narendra Bokde', '1970-01-01', '1970-01-01', 53, 4, 'bhatera balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 06:33:52', 1, 9),
(254, '457', 'Dr.ashish Giri', '1970-01-01', '1970-01-01', 29, 33, 'kali putli chauk balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 7974936095, '', '', '', '2019-11-21 06:36:52', 1, 9),
(255, '457', 'Dr.apeksha Giri Mem', '1970-01-01', '1970-01-01', 49, 19, 'kali putli chauk balaghat', 457, 23, 3672, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-21 06:39:01', 1, 9),
(256, '457', 'Dr.shishir Khare', '1970-01-01', '1970-01-01', 29, 15, 'baihar road balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-21 06:45:15', 1, 9),
(257, '455', 'R K Jain', '1970-01-01', '1970-01-01', 2, 15, 'Chandangaon Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 03:42:16', 1, 13),
(258, '455', 'B L Pahade', '1970-01-01', '1970-01-01', 2, 15, 'Parasiya naka Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:11:31', 1, 13),
(259, '455', 'M Turkar', '1970-01-01', '1970-01-01', 2, 15, 'Parasiya naka Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:14:22', 1, 13),
(260, '455', 'Ravi Sarkar', '1970-01-01', '1970-01-01', 29, 15, 'Nagpur road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:16:35', 1, 13),
(261, '455', 'Sandip Jain ', '1970-01-01', '1970-01-01', 36, 37, 'Parasiya road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:23:48', 1, 13),
(262, '455', 'A Shukla ', '1970-01-01', '1970-01-01', 56, 33, 'Itwari bazar Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-22 04:26:36', 1, 13),
(263, '455', 'B B Juneja ', '1970-01-01', '1970-01-01', 29, 15, 'Chourai road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:28:46', 1, 13),
(264, '455', 'N K Vaidha', '1970-01-01', '1970-01-01', 29, 15, 'Parasiya road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:33:13', 1, 13),
(265, '455', 'Jai Shri Dodani ', '1970-01-01', '1970-01-01', 49, 11, 'Mohan nagar Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-22 04:36:01', 1, 13),
(266, '455', 'Akash Shrivastava ', '1970-01-01', '1970-01-01', 56, 8, 'Near collectred Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:40:21', 1, 13),
(267, '455', 'J M Shrivastava ', '1970-01-01', '1970-01-01', 56, 8, 'Near collectred  Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-22 04:43:43', 1, 13),
(268, '457', 'Dr.narendra Bokde', '1970-01-01', '1970-01-01', 53, 4, 'Bhatera Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 04:50:21', 1, 9),
(269, '457', 'Dr.sk Robbin', '1970-01-01', '1970-01-01', 29, 0, 'Budhi', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 04:54:19', 1, 9),
(270, '457', 'Dr.rajendra Bopche', '1970-01-01', '1970-01-01', 2, 15, 'Budhi', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 04:55:15', 1, 9),
(271, '457', 'Dr.khobragade', '1970-01-01', '1970-01-01', 4, 15, 'Budhi', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 04:56:08', 1, 9),
(272, '457', 'Dr.vikash Bisen', '1970-01-01', '1970-01-01', 29, 31, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 04:58:48', 1, 9),
(273, '457', 'Dr.amit Bisen', '1970-01-01', '1970-01-01', 29, 9, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 05:00:24', 1, 9),
(274, '457', 'Dr.tulendra Lilhare', '1970-01-01', '1970-01-01', 3, 9, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 05:02:49', 1, 9),
(275, '457', 'Dr. V Lilhare', '1970-01-01', '1970-01-01', 29, 15, 'Baihar road Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 05:15:29', 1, 9),
(276, '457', 'Dr.pushpa Dhurve', '1970-01-01', '1970-01-01', 49, 19, 'Balaghat', 457, 23, 3672, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-23 05:17:20', 1, 9),
(277, '457', 'Dr Anita Parasar', '1970-01-01', '1970-01-01', 49, 19, 'Balaghat', 457, 23, 3672, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-23 05:20:25', 1, 9),
(278, '450', 'Dr Ankur Sexena', '1970-01-01', '1970-01-01', 23, 0, 'Bhatta muhhala', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-25 09:04:39', 1, 6),
(279, '450', 'Dr Kallu Patel', '1970-01-01', '1970-01-01', 70, 15, 'Bhatta muhala', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-25 09:07:28', 1, 6),
(280, '450', 'Dr M H Khan', '1970-01-01', '1970-01-01', 4, 15, 'Bhatta muhhala', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-25 09:08:53', 1, 6),
(281, '450', 'Dr Vikesh Shrivasrav', '1970-01-01', '1970-01-01', 29, 10, 'Pathak word', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-25 09:10:21', 1, 6),
(282, '450', 'Dr Harsha Battra', '1970-01-01', '1970-01-01', 10, 19, 'Adarsh calony', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-25 09:29:59', 1, 6),
(283, '450', 'Dr Rajesh Battra', '1970-01-01', '1970-01-01', 42, 46, 'Adarsh calony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-25 09:32:06', 1, 6),
(284, '455', 'S A Thakur ', '1970-01-01', '1970-01-01', 56, 8, 'Main market parasiya ', 455, 23, 3652, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:06:17', 1, 13),
(285, '455', 'P Soni', '1970-01-01', '1970-01-01', 48, 8, 'Main market parasiya ', 455, 23, 3652, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:08:27', 1, 13),
(286, '455', 'A K Bhagat ', '1970-01-01', '1970-01-01', 2, 15, 'Tamiya road parasiya ', 455, 23, 3652, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:11:20', 1, 13),
(287, '455', 'R K Verma ', '1970-01-01', '1970-01-01', 2, 15, 'Tamiya road parasiya ', 455, 23, 3652, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:13:45', 1, 13),
(288, '455', 'J K Gupta', '1970-01-01', '1970-01-01', 37, 37, 'Main market parasiya ', 455, 23, 3652, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:17:00', 1, 13),
(289, '455', 'Madhuri Batra ', '1970-01-01', '1970-01-01', 49, 11, 'Main market parasiya ', 455, 23, 3652, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:22:43', 1, 13),
(290, '455', 'M S Malviya ', '1970-01-01', '1970-01-01', 2, 15, 'Umreth parasiya ', 455, 23, 3653, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:25:13', 1, 13),
(291, '455', 'D L Pawar', '1970-01-01', '1970-01-01', 2, 15, 'Umreth ', 455, 23, 3653, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:26:41', 1, 13),
(292, '455', 'R K Mourya ', '1970-01-01', '1970-01-01', 29, 0, 'Umreth ', 455, 23, 3653, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:27:44', 1, 13),
(293, '455', 'D Das ', '1970-01-01', '1970-01-01', 2, 15, 'Mordongri ', 455, 23, 3653, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:29:15', 1, 13),
(294, '455', 'Umeh Usrethe ', '1970-01-01', '1970-01-01', 2, 15, 'Mordongri  umreth ', 455, 23, 3653, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 03:31:03', 1, 13),
(295, '450', 'Rakesh Ranjan', '1970-01-01', '1970-01-01', 2, 15, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 12:31:04', 1, 6),
(296, '450', 'Dr Joystna Nigam', '1970-01-01', '1970-01-01', 37, 21, 'Railway station rode', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 13:32:16', 1, 6),
(297, '450', 'Dr K K Tiwari', '1970-01-01', '1970-01-01', 2, 15, 'N K j ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:33:24', 1, 6),
(298, '450', 'Dr K N Leheriea', '1970-01-01', '1970-01-01', 42, 46, 'Adarsh calony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:34:42', 1, 6),
(299, '450', 'Dr K K Jain', '1970-01-01', '1970-01-01', 48, 33, 'Main market', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:36:04', 1, 6),
(300, '450', 'Dr L N Khandalwal', '1970-01-01', '1970-01-01', 42, 46, 'Adarsh calony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:37:25', 1, 6),
(301, '450', 'Dr Manisha Sahu', '1970-01-01', '1970-01-01', 49, 19, 'Shastri colony', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 13:38:54', 1, 6),
(302, '450', 'Dr M D Jaswani', '1970-01-01', '1970-01-01', 2, 15, 'N K j', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:39:54', 1, 6),
(303, '450', 'Dr M P Mory', '1970-01-01', '1970-01-01', 4, 15, 'Subash chock', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:41:09', 1, 6),
(304, '450', 'Dr Neeresh Jain', '1970-01-01', '1970-01-01', 36, 4, 'Done colony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:43:30', 1, 6),
(305, '450', 'Dr Neetu Jain', '1970-01-01', '1970-01-01', 10, 19, 'Done colony', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 13:44:43', 1, 6),
(306, '450', 'Dr Neelam Gupta', '1970-01-01', '1970-01-01', 29, 18, 'Madhav Nagar', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 13:45:51', 1, 6),
(307, '450', 'Dr Neena Adwani', '1970-01-01', '1970-01-01', 4, 18, 'Madhav Nagar', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 13:47:04', 1, 6),
(308, '450', 'Dr P A K Sahay', '1970-01-01', '1970-01-01', 42, 46, 'Railway station rode', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:51:42', 1, 6),
(309, '450', 'Dr Pankaj Gupta', '1970-01-01', '1970-01-01', 17, 30, 'M g m hospital', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:52:59', 1, 6),
(310, '450', 'Dr Poonam Bajaj', '1970-01-01', '1970-01-01', 10, 19, 'Near h d f c bank', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 13:55:03', 1, 6),
(311, '450', 'Dr Raj Nagwani', '1970-01-01', '1970-01-01', 2, 15, 'Shakira chouk', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:56:50', 1, 6),
(312, '450', 'Dr R K Pathak', '1970-01-01', '1970-01-01', 2, 15, 'Madhav Nagar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 13:57:37', 1, 6),
(313, '450', 'Dr Rupa Lalwani', '1970-01-01', '1970-01-01', 44, 19, 'Sahid dwar', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 14:02:26', 1, 6),
(314, '450', 'Dr Rishi Jain', '1970-01-01', '1970-01-01', 17, 30, 'Adarsh calony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:03:53', 1, 6),
(315, '450', 'Dr R K Adwani', '1970-01-01', '1970-01-01', 2, 15, 'Madhav Nagar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:04:48', 1, 6),
(316, '450', 'Dr R B Sing', '1970-01-01', '1970-01-01', 42, 46, 'Adarsh calony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:06:31', 1, 6),
(317, '450', 'Dr Ravi Kumer', '1970-01-01', '1970-01-01', 36, 37, 'M g m hospital', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:07:50', 1, 6),
(318, '450', 'Dr Ravi Dwedi', '1970-01-01', '1970-01-01', 29, 15, 'Panna mode', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:09:14', 1, 6);
INSERT INTO `doctors` (`doctor_id`, `doctor_hq`, `doctor_fullname`, `doctor_dob`, `doctor_marriage`, `doctor_qualification`, `doctor_specialization`, `doctor_address`, `doctor_city`, `doctor_state`, `doctor_subdistrict`, `doctor_villages`, `doctor_locality`, `doctor_gender`, `doctor_dailyopd`, `doctor_phone`, `doctor_mobile`, `doctor_info`, `doctor_email`, `doctor_website`, `cust_entrydt`, `doctor_status`, `emp_id`) VALUES
(319, '450', 'Dr S K Pathak', '1970-01-01', '1970-01-01', 29, 15, 'Azad chouk', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:10:24', 1, 6),
(320, '450', 'Dr R B Sing', '1970-01-01', '1970-01-01', 42, 46, 'Adarsh calony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:14:07', 1, 6),
(321, '450', 'Dr Ravi Kumer', '1970-01-01', '1970-01-01', 53, 37, 'M g m hospital', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:15:16', 1, 6),
(322, '450', 'Dr Ravi Dwedi', '1970-01-01', '1970-01-01', 29, 15, 'Panna mode', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:16:23', 1, 6),
(323, '450', 'Dr S K Pathak', '1970-01-01', '1970-01-01', 2, 15, 'Azad chouk', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:17:26', 1, 6),
(324, '450', 'Dr Sunita Verma', '1970-01-01', '1970-01-01', 10, 19, 'Azad chouk', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:58:55', 1, 6),
(325, '450', 'Dr Sanu Agrawal', '1970-01-01', '1970-01-01', 10, 19, 'Subash chock', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 14:19:53', 1, 6),
(326, '450', 'Dr Surabh Pathak', '1970-01-01', '1970-01-01', 3, 9, 'Madhav Nagar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:21:00', 1, 6),
(327, '450', 'Dr Surabh Jain', '1970-01-01', '1970-01-01', 3, 9, 'Main market', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:58:46', 1, 6),
(328, '450', 'Dr Surabh Choudhary', '1970-01-01', '1970-01-01', 48, 33, 'Done colony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:23:44', 1, 6),
(329, '450', 'Dr Seema Shivharay', '1970-01-01', '1970-01-01', 49, 19, 'Adarsh calony', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 14:25:03', 1, 6),
(330, '450', 'Dr Sardha Dwadi', '1970-01-01', '1970-01-01', 49, 19, 'Panna mode', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 14:26:30', 1, 6),
(331, '450', 'Dr T A Kidway', '1970-01-01', '1970-01-01', 2, 15, 'N K j ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:27:35', 1, 6),
(332, '450', 'Dr Uma Nigam', '1970-01-01', '1970-01-01', 49, 19, 'Sahid dwar', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 14:28:52', 1, 6),
(333, '450', 'Dr Vikesh Gupta', '1970-01-01', '1970-01-01', 17, 30, 'Bargawa', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:30:01', 1, 6),
(334, '451', 'Reena Kothari', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:58:32', 1, 7),
(335, '450', 'Dr Vandana Gupta', '1970-01-01', '1970-01-01', 49, 19, 'Adarsh calony', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 14:44:44', 1, 6),
(336, '450', 'Dr V Lalwani', '1970-01-01', '1970-01-01', 29, 29, 'Sahid dwar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:47:00', 1, 6),
(337, '451', 'Naveen Kothari', '1970-01-01', '1970-01-01', 44, 30, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:58:02', 1, 7),
(338, '450', 'Dr Vivek Sing', '1970-01-01', '1970-01-01', 3, 9, 'Sahid dwar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:48:08', 1, 6),
(339, '451', 'R.k Pathak', '1970-01-01', '1970-01-01', 24, 14, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:57:49', 1, 7),
(340, '450', 'Dr Y P Sing', '1970-01-01', '1970-01-01', 70, 15, 'Karni south', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:49:30', 1, 6),
(341, '451', 'Skand Behere', '1970-01-01', '1970-01-01', 44, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:57:35', 1, 7),
(342, '450', 'Dr Yashwant Verma', '1970-01-01', '1970-01-01', 16, 29, 'Azad chouk', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:50:43', 1, 6),
(343, '451', 'Surendra Behere', '1970-01-01', '1970-01-01', 37, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:57:22', 1, 7),
(344, '451', 'Rajeev Trivedi', '1970-01-01', '1970-01-01', 37, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:57:12', 1, 7),
(345, '450', 'Dr Anita Jain', '1970-01-01', '1970-01-01', 49, 19, 'Near govt hos', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 14:55:51', 1, 6),
(346, '450', 'Dr Aklesh Jain', '1970-01-01', '1970-01-01', 24, 14, 'Main market', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:56:51', 1, 6),
(347, '450', 'Dr Amit Nawani', '1970-01-01', '1970-01-01', 2, 15, 'Madhav Nagar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:58:14', 1, 6),
(348, '450', 'Dr Ashoka Badgya', '1970-01-01', '1970-01-01', 2, 15, 'Near over bridge', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 14:59:30', 1, 6),
(349, '450', 'Dr Ashoka Vishkarma', '1970-01-01', '1970-01-01', 2, 15, 'Bhatta muhalla', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:00:50', 1, 6),
(350, '450', 'Dr Amit Sahu', '1970-01-01', '1970-01-01', 48, 33, 'Sahid dwar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:02:05', 1, 6),
(351, '450', 'Dr Akshay Gupta', '1970-01-01', '1970-01-01', 39, 9, 'Main market', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:05:22', 1, 6),
(352, '451', 'Rekha Jeans', '1970-01-01', '1970-01-01', 40, 19, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:56', 1, 7),
(353, '451', 'Chitra Jain', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:54', 1, 7),
(354, '451', 'Sushil Tripathi', '1970-01-01', '1970-01-01', 44, 14, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:51', 1, 7),
(355, '451', 'Jayanti Srivastava', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:49', 1, 7),
(356, '450', 'Dr Hannif Khan', '1970-01-01', '1970-01-01', 2, 15, 'Main market ', 450, 23, 3621, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:10:01', 1, 6),
(357, '451', 'Pramod Kumar Srivastav', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:46', 1, 7),
(358, '450', 'Dr M L Jain', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 450, 23, 3621, 36846, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:11:06', 1, 6),
(359, '451', 'Rajiv Sawant', '1970-01-01', '1970-01-01', 44, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:44', 1, 7),
(360, '450', 'Dr S P Panday', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 450, 23, 3621, 36907, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:13:09', 1, 6),
(361, '450', 'Dr Swepnil Jain', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 450, 23, 3621, 36907, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:14:07', 1, 6),
(362, '451', 'Pradeep Patel', '1970-01-01', '1970-01-01', 37, 21, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:42', 1, 7),
(363, '450', 'Dr P K Vishwas', '1970-01-01', '1970-01-01', 70, 15, 'Main market', 450, 23, 3621, 36891, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:15:24', 1, 6),
(364, '451', 'L. N Sharma', '1970-01-01', '1970-01-01', 31, 26, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:37', 1, 7),
(365, '451', 'Rakesh Tirkey', '1970-01-01', '1970-01-01', 44, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:35', 1, 7),
(366, '450', 'Dr M K Soni', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 450, 23, 3621, 36947, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:16:37', 1, 6),
(367, '451', 'A. P Mohanti', '1970-01-01', '1970-01-01', 37, 2, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:32', 1, 7),
(368, '451', 'Sanjeev Warkhade', '1970-01-01', '1970-01-01', 42, 46, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:30', 1, 7),
(369, '450', 'Dr M L Yadav', '1970-01-01', '1970-01-01', 2, 15, 'Main road', 450, 23, 3621, 36906, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:18:12', 1, 6),
(370, '451', 'Malti Bhagat', '1970-01-01', '1970-01-01', 37, 28, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:28', 1, 7),
(371, '451', 'Utsav Katakwar', '1970-01-01', '1970-01-01', 44, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:26', 1, 7),
(372, '450', 'Dr Santosh Rakwar', '1970-01-01', '1970-01-01', 70, 15, 'Main market', 450, 23, 3621, 36939, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:19:37', 1, 6),
(373, '451', 'Kaveri Shaw', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:56:23', 1, 7),
(374, '450', 'Dr A K Urmalea', '1970-01-01', '1970-01-01', 70, 15, 'Main market', 450, 23, 3621, 36939, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:20:43', 1, 6),
(375, '451', 'Nalini Singhai', '1970-01-01', '1970-01-01', 37, 4, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:56:14', 1, 7),
(376, '451', 'Asim Bajpai', '1970-01-01', '1970-01-01', 24, 14, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:11', 1, 7),
(377, '450', 'Dr A K Awasti', '1970-01-01', '1970-01-01', 2, 15, 'Main road', 450, 23, 3621, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 15:22:46', 1, 6),
(378, '451', 'Asit Guin', '1970-01-01', '1970-01-01', 37, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:08', 1, 7),
(379, '451', 'Manju Sanghi', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:56:04', 1, 7),
(380, '451', 'Tajdar Chaudhari', '1970-01-01', '1970-01-01', 17, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:56:02', 1, 7),
(381, '451', 'Shubdha Tiwari', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:55:59', 1, 7),
(382, '451', 'A. K Verma', '1970-01-01', '1970-01-01', 37, 37, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:55', 1, 7),
(383, '451', 'M. S Johari', '1970-01-01', '1970-01-01', 37, 27, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:40', 1, 7),
(384, '451', 'Agesh Tiwari', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:31', 1, 7),
(385, '451', 'Amita Saxena', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:55:29', 1, 7),
(386, '451', 'Rachna Nagpal', '1970-01-01', '1970-01-01', 35, 43, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:55:27', 1, 7),
(387, '451', 'Nisha Sahu', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:55:24', 1, 7),
(388, '451', 'Sushil Tripathi', '1970-01-01', '1970-01-01', 24, 14, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:21', 1, 7),
(389, '456', 'Ratan Biswas', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:12', 1, 7),
(390, '456', 'T. K Biswas', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:08', 1, 7),
(391, '456', 'Saurabh Jain', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:04', 1, 7),
(392, '456', 'R.j Prasad', '1970-01-01', '1970-01-01', 29, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:55:01', 1, 7),
(393, '456', 'Shiv Kumar', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:56', 1, 7),
(394, '456', 'K.p Patel', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:51', 1, 7),
(395, '456', 'F.a Firdosi', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:43', 1, 7),
(396, '456', 'Rajesh Agarwal', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:39', 1, 7),
(397, '456', 'S.k Majumdar', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:35', 1, 7),
(398, '456', 'R.s Sahu', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:31', 1, 7),
(399, '456', 'A.p Patel', '1970-01-01', '1970-01-01', 29, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:18', 1, 7),
(400, '456', 'Nidhi Dhurve', '1970-01-01', '1970-01-01', 2, 19, '', 456, 23, 3662, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:54:22', 1, 7),
(401, '450', 'Dr Aklesh Tiwari', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 431, 23, 3483, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:14:44', 1, 6),
(402, '450', 'Dr Sameer Dwedi', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 431, 23, 3483, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:16:14', 1, 6),
(403, '450', 'Dr Meeri Kutti', '1970-01-01', '1970-01-01', 70, 15, 'Main market', 431, 23, 3483, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 17:18:08', 1, 6),
(404, '450', 'Dr A K Vishwas', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 431, 23, 3483, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:19:00', 1, 6),
(405, '450', 'Dr P K Vishwas', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 431, 23, 3483, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:20:13', 1, 6),
(406, '450', 'Dr Vinod Kumar', '1970-01-01', '1970-01-01', 29, 15, 'Main road', 431, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:21:08', 1, 6),
(407, '450', 'Dr M G Rampuri', '1970-01-01', '1970-01-01', 29, 15, 'Main market', 431, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:22:00', 1, 6),
(408, '450', 'Dr Rashmi Dhananjay', '1970-01-01', '1970-01-01', 10, 19, 'Main market', 431, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 17:23:01', 1, 6),
(409, '450', 'Dr B K Prajpati', '1970-01-01', '1970-01-01', 44, 15, 'Main market', 431, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:23:58', 1, 6),
(410, '450', 'Dr Richa Gupta', '1970-01-01', '1970-01-01', 10, 19, 'Main market', 431, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 17:24:55', 1, 6),
(411, '450', 'Dr S S Gupta', '1970-01-01', '1970-01-01', 2, 15, 'Main road', 431, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:25:42', 1, 6),
(412, '450', 'Dr K C Soni', '1970-01-01', '1970-01-01', 17, 30, 'Main road', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-01 16:36:56', 1, 6),
(413, '450', 'Dr Sudip Mishra', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 0, 23, 0, 0, '', 'male', '', 0, 9893505716, '', '', '', '2019-12-24 04:36:48', 1, 6),
(414, '450', 'Dr Vinay Gupta', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 0, 23, 0, 0, '', 'male', '', 9893395555, 0, '', '', '', '2019-12-24 04:31:26', 1, 6),
(415, '450', 'Dr Sweta Gupta', '1970-01-01', '1970-01-01', 4, 19, 'Main market', 0, 23, 0, 0, '', 'female', '', 9131276003, 0, '', '', '', '2019-12-24 04:32:11', 1, 6),
(416, '450', 'Dr Vinod Kumar', '1970-01-01', '1970-01-01', 29, 15, 'Main market', 0, 23, 0, 0, '', 'male', '', 0, 9479897091, '', '', '', '2019-12-24 04:33:49', 1, 6),
(417, '450', 'Dr Dhanaswari Sing', '1970-01-01', '1970-01-01', 49, 19, 'Main market', 450, 23, 3624, 0, '', 'female', '', 0, 0, '', '', '', '2019-11-27 17:32:27', 1, 6),
(418, '450', 'Dr Raj Singh', '1970-01-01', '1970-01-01', 29, 15, 'Main market', 0, 23, 0, 0, '', 'male', '', 0, 9826319850, '', '', '', '2019-12-24 04:34:54', 1, 6),
(419, '450', 'Dr Y K Upedhya', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 0, 23, 0, 0, '', 'male', '', 0, 9893998859, '', '', '', '2019-12-24 04:38:35', 1, 6),
(420, '450', 'Dr H S Upedhya', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 450, 23, 3624, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:37:02', 1, 6),
(421, '450', 'Dr Subash Grover', '1970-01-01', '1970-01-01', 5, 15, 'Main market', 0, 23, 0, 0, '', 'male', '', 9893463465, 0, '', '', '', '2019-12-24 04:29:54', 1, 6),
(422, '450', 'Dr Mohita Dexit', '1970-01-01', '1970-01-01', 5, 19, 'Main road', 0, 23, 0, 0, '', 'female', '', 0, 9907001212, '', '', '', '2019-12-24 04:35:50', 1, 6),
(423, '450', 'Dr Ajit Patel', '1970-01-01', '1970-01-01', 2, 15, 'Main road', 450, 23, 3622, 36962, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:41:45', 1, 6),
(424, '450', 'Dr H K Soni', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:42:30', 1, 6),
(425, '450', 'Dr R P Tiwari', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:43:21', 1, 6),
(426, '450', 'Dr R R Mishra', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:45:07', 1, 6),
(427, '450', 'Dr S K Patel', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:45:55', 1, 6),
(428, '450', 'Dr Deepak Agarwal', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:46:47', 1, 6),
(429, '450', 'Dr Roshan Agarwal', '1970-01-01', '1970-01-01', 3, 9, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:47:28', 1, 6),
(430, '450', 'Dr O P Prajpati', '1970-01-01', '1970-01-01', 3, 9, 'Main road', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:49:05', 1, 6),
(431, '450', 'Dr R M Patel', '1970-01-01', '1970-01-01', 29, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:50:03', 1, 6),
(432, '450', 'Dr K K Jaswal', '1970-01-01', '1970-01-01', 2, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:11', 1, 6),
(433, '450', 'Dr A K Shrivastav', '1970-01-01', '1970-01-01', 5, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:52:10', 1, 6),
(434, '450', 'Dr Pyush Tiwari', '1970-01-01', '1970-01-01', 29, 15, 'Main market', 450, 23, 3622, 0, '', 'male', '', 0, 0, '', '', '', '2019-11-27 17:56:30', 1, 6),
(435, '430', 'Dr.n.k.pnday', '1970-01-01', '1970-01-01', 37, 17, 'Main market jawa', 430, 23, 3472, 14010, '', 'male', '50', 0, 0, '', '', '', '2019-12-01 04:46:54', 1, 5),
(436, '430', 'Dr.n.p.panday', '1970-01-01', '1970-01-01', 2, 17, 'Rambag road Jawaj', 430, 23, 3472, 14010, '', 'male', '30', 0, 0, '', '', '', '2019-12-01 04:51:01', 1, 5),
(437, '430', 'Dr.rajesh Mishra', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET BAIKUNTHPUR', 430, 23, 3472, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-01 05:12:23', 1, 5),
(438, '430', 'Dr.seema Mishra', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET BAIKUNTHPUR', 430, 23, 3472, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-01 05:15:05', 1, 5),
(439, '430', 'Dr.s.smajdar', '1970-01-01', '1970-01-01', 2, 17, 'LALGAON ROAD BAIKUNTHPUR', 430, 23, 3472, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-01 05:17:14', 1, 5),
(440, '430', 'Dr.s.siddiqi', '1970-01-01', '1970-01-01', 0, 16, 'LALGAON ROAD BAIKUNTHPUR', 430, 23, 3472, 0, '', 'male', '60', 0, 0, '', '', '', '2019-12-01 05:19:33', 1, 5),
(441, '430', 'Dr.p.s.gharwar', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET BAIKUNTHPUR', 430, 23, 3472, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-01 05:24:10', 1, 5),
(442, '430', 'Dr.d.p.singh', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET BAIKUNTHPUR', 430, 23, 3472, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-01 05:31:22', 1, 5),
(443, '430', 'Dr.r.k.ojha', '1970-01-01', '1970-01-01', 37, 17, 'Hospital campus sirmaour', 0, 23, 0, 0, '', 'male', '100', 0, 0, '', '', '', '2019-12-01 05:38:24', 1, 5),
(444, '430', 'Dr.d.k.panday', '1970-01-01', '1970-01-01', 37, 17, 'Hospital campus sirmaour', 430, 23, 3473, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-01 05:41:37', 1, 5),
(445, '451', 'Jagdish Prasad', '1970-01-01', '1970-01-01', 44, 46, '', 456, 23, 3659, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:06:07', 1, 7),
(446, '451', 'Deepak Pandey', '1970-01-01', '1970-01-01', 43, 33, '', 456, 23, 3659, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:07:57', 1, 7),
(447, '451', 'P.s Prajapati', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3659, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:12:04', 1, 7),
(448, '451', 'Anand Srivastava', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3659, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:13:12', 1, 7),
(449, '451', 'Sanjay Jain', '1970-01-01', '1970-01-01', 29, 15, '', 456, 23, 3659, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:14:34', 1, 7),
(450, '451', 'Vithi Jain', '1970-01-01', '1970-01-01', 44, 19, '', 456, 23, 3659, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-01 14:15:41', 1, 7),
(451, '451', 'B.s Solanki', '1970-01-01', '1970-01-01', 29, 15, '', 456, 23, 3659, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:16:28', 1, 7),
(452, '451', 'Kirti Nandalkar', '1970-01-01', '1970-01-01', 44, 19, '', 456, 23, 3659, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-01 14:17:25', 1, 7),
(453, '451', 'Mihir Rai', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3659, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:18:11', 1, 7),
(454, '451', 'I.s Thakur', '1970-01-01', '1970-01-01', 41, 30, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:22:57', 1, 7),
(455, '451', 'Satish Mishra', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:23:42', 1, 7),
(456, '451', 'S.k Sahu', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:24:48', 1, 7),
(457, '451', 'C. S Bhavedi', '1970-01-01', '1970-01-01', 29, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:25:54', 1, 7),
(458, '451', 'Arvind Rajak', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:26:44', 1, 7),
(459, '451', 'G.k Goldar', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:27:38', 1, 7),
(460, '451', 'A.k Goldar', '1970-01-01', '1970-01-01', 4, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:28:20', 1, 7),
(461, '451', 'Arun Goldar', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:28:54', 1, 7),
(462, '451', 'Pankaj Sinha', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:29:36', 1, 7),
(463, '451', 'Mohammed Khan', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:30:23', 1, 7),
(464, '451', 'S.k Maravi', '1970-01-01', '1970-01-01', 2, 15, '', 453, 23, 3639, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:31:11', 1, 7),
(465, '451', 'S.c Chauhan', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:31:57', 1, 7),
(466, '451', 'S. Biswas', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:31', 1, 7),
(467, '451', 'Manoj Rai', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:33:32', 1, 7),
(468, '451', 'Kapil Sahu', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:34:09', 1, 7),
(469, '451', 'Raju Sahu', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:34:47', 1, 7),
(470, '451', 'U.k Tiwari', '1970-01-01', '1970-01-01', 4, 15, '', 451, 23, 3633, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:35:54', 1, 7),
(471, '451', 'S.p Khare', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:36:57', 1, 7),
(472, '451', 'R.k Barman', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3627, 37672, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:55:23', 1, 7),
(473, '451', 'A.k Bakshi', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 38916, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:56:29', 1, 7),
(474, '451', 'S.k Patel', '1970-01-01', '1970-01-01', 4, 15, '', 451, 23, 3633, 38916, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:57:19', 1, 7),
(475, '451', 'Priyansh Pathak', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 38916, '', 'male', '', 0, 0, '', '', '', '2019-12-01 14:58:23', 1, 7),
(476, '451', 'R.c Goldar', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 38916, '', 'male', '', 0, 0, '', '', '', '2019-12-01 15:00:48', 1, 7),
(477, '451', 'Arvind Dwivedi', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 38916, '', 'male', '', 0, 0, '', '', '', '2019-12-01 15:03:31', 1, 7),
(478, '451', 'Satish Saju', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-24 17:51:27', 1, 7),
(479, '430', 'Dr.s.viswas', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARTKET SIRMAOUR', 430, 23, 3473, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-01 16:29:37', 1, 5),
(480, '430', 'Dr.d.s.gharwar', '1970-01-01', '1970-01-01', 2, 17, 'JAWA ROAD SIRMAOUR', 430, 23, 3473, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-01 16:31:21', 1, 5),
(481, '430', 'Dr.ranjana Gharwar', '1970-01-01', '1970-01-01', 4, 17, 'JAWA ROAD  SIRMAOUR', 430, 23, 3473, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-01 16:33:38', 1, 5),
(482, '451', 'Dr.swapna Ghargavkar', '1970-01-01', '1970-01-01', 10, 19, '', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-03 05:07:00', 1, 11),
(483, '451', 'Vinod Jain', '1970-01-01', '1970-01-01', 41, 13, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 10:54:36', 1, 11),
(484, '451', 'S.kriplani', '1970-01-01', '1970-01-01', 50, 13, '', 0, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-04 10:53:52', 1, 11),
(485, '451', 'Nisha Sahu', '1970-01-01', '1970-01-01', 37, 18, '', 0, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-04 10:52:26', 1, 11),
(486, '451', 'Manju Sanghai', '1970-01-01', '1970-01-01', 50, 13, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 10:49:55', 1, 11),
(487, '451', 'Dr.ashok Arora', '1970-01-01', '1970-01-01', 36, 13, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-03 06:16:40', 1, 11),
(488, '451', 'B.k.agarwal', '1970-01-01', '1970-01-01', 0, 17, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 10:48:45', 1, 11),
(489, '430', 'Dr.beer Bhan Singh', '1970-01-01', '1970-01-01', 37, 2, 'Tansen complex', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-03 10:19:24', 1, 5),
(490, '430', 'Dr.m.h.usmani', '1970-01-01', '1970-01-01', 14, 16, 'Campus rewa', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-03 10:26:35', 1, 5),
(491, '430', 'Dr.a.p.pathak', '1970-01-01', '1970-01-01', 37, 6, 'Nehru nagar rewa', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-03 10:33:20', 1, 5),
(492, '430', 'Dr.p.k Verma', '1970-01-01', '1970-01-01', 41, 32, 'S.f.chowk rewa', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-03 10:36:20', 1, 5),
(493, '430', 'Dr.sudhansu Dixit', '1970-01-01', '1970-01-01', 24, 14, 'Tansen complex rewa', 430, 23, 3479, 0, '', 'male', '60', 0, 0, '', '', '', '2019-12-03 10:38:10', 1, 5),
(494, '430', 'Dr.m.indulkar', '1970-01-01', '1970-01-01', 36, 6, 'Campus', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-03 10:41:16', 1, 5),
(495, '430', 'Dr.anurag Chaurasiya', '1970-01-01', '1970-01-01', 37, 6, 'Campus rewa', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-03 10:49:12', 1, 5),
(496, '451', 'Dr Arun Saxena', '1970-01-01', '1970-01-01', 43, 33, 'Near subhi medical jabalpur', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:24', 1, 10),
(497, '430', 'Dr.shashi Singh', '1970-01-01', '1970-01-01', 10, 19, 'NEAR SIRMAOUR CHOWK', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 16:46:29', 1, 5),
(498, '430', 'Dr. Shakuntla  Panday', '1970-01-01', '1970-01-01', 50, 19, 'ATAL KUNJ PADRA', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 16:52:02', 1, 5),
(499, '430', 'Dr.sonal Agrawal', '1970-01-01', '1970-01-01', 57, 19, 'HOSPITAL CAMPUS', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:01:57', 1, 5),
(500, '430', 'Dr.mohita Panday', '1970-01-01', '1970-01-01', 10, 19, 'BANSAGAR ROAD REWA', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:02:59', 1, 5),
(501, '430', 'Dr.richa Patel', '1970-01-01', '1970-01-01', 59, 19, 'ADARSH NURSHING HOME ', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:04:40', 1, 5),
(502, '430', 'Dr.mukta Sharma', '1970-01-01', '1970-01-01', 59, 19, 'CITY NURSHING HOME', 430, 23, 3479, 0, '', 'female', '40', 0, 0, '', '', '', '2019-12-03 17:05:38', 1, 5),
(503, '430', 'Dr.neha Khatik', '1970-01-01', '1970-01-01', 10, 19, 'DHOBIYA TANKI REWA', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:06:47', 1, 5),
(504, '430', 'Dr.kalpana Yadav', '1970-01-01', '1970-01-01', 59, 19, 'HOSPITAL CAMPUS', 430, 23, 3479, 0, '', 'female', '50', 0, 0, '', '', '', '2019-12-03 17:07:55', 1, 5),
(505, '430', 'Dr.archna Panday', '1970-01-01', '1970-01-01', 10, 19, 'GAS GODAM REWA', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:08:57', 1, 5),
(506, '430', 'Dr.neeta Mishra', '1970-01-01', '1970-01-01', 59, 19, 'COLLEGE CHOWK ', 430, 23, 3479, 0, '', 'female', '20', 0, 0, '', '', '', '2019-12-03 17:10:18', 1, 5),
(507, '430', 'Dr.survesh Saxsena', '1970-01-01', '1970-01-01', 59, 19, 'NEAR MODEL SCHOOL', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-03 17:11:52', 1, 5),
(508, '430', 'Dr.madhu Jain', '1970-01-01', '1970-01-01', 59, 18, 'OSHODHARA NURSHING HOME', 430, 23, 3479, 0, '', 'female', '50', 0, 0, '', '', '', '2019-12-03 17:12:58', 1, 5),
(509, '430', 'Dr.geeta Benerjee', '1970-01-01', '1970-01-01', 57, 19, 'SAGAR NURSHING HOME ', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:14:17', 1, 5),
(510, '430', 'Dr.kschma Viskarma', '1970-01-01', '1970-01-01', 57, 19, 'SIRMOUR CHOWK', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:15:50', 1, 5),
(511, '430', 'Dr.richa Chaurasuya', '1970-01-01', '1970-01-01', 59, 18, 'CHAURASIYA NURSHING HOME ', 430, 23, 3479, 0, '', 'female', '40', 0, 0, '', '', '', '2019-12-03 17:17:16', 1, 5),
(512, '430', 'Dr.usha Chaurasiya', '1970-01-01', '1970-01-01', 59, 19, 'CHAURASIYA NURSHING HOME ', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:18:37', 1, 5),
(513, '430', 'Dr.padma Sukla ', '1970-01-01', '1970-01-01', 59, 18, 'REWA NURSHING HOME ', 430, 23, 3479, 0, '', 'female', '50', 0, 0, '', '', '', '2019-12-03 17:19:59', 1, 5),
(514, '430', 'Dr.prachi Sagar ', '1970-01-01', '1970-01-01', 59, 18, 'SAGAR NURSHING HOME ', 430, 23, 3479, 0, '', 'female', '50', 0, 0, '', '', '', '2019-12-03 17:21:38', 1, 5),
(515, '430', 'Dr.pratibha Mishra ', '1970-01-01', '1970-01-01', 10, 19, 'TANSEN COMPLEX', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-03 17:22:34', 1, 5),
(516, '430', 'Dr.shailja Soni', '1970-01-01', '1970-01-01', 49, 19, 'VIGHNHARTA NURSHING HOME ', 430, 23, 3479, 0, '', 'female', '20', 0, 0, '', '', '', '2019-12-03 17:24:12', 1, 5),
(517, '430', 'Dr.man Mohan Singh', '1970-01-01', '1970-01-01', 41, 32, 'HOSPITAL CAMPUS ', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-03 17:29:51', 1, 5),
(518, '430', 'Dr.amitabh Awasthi', '1970-01-01', '1970-01-01', 17, 30, 'BODA BAAG REWA', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-03 17:31:47', 1, 5),
(519, '430', 'Dr.santosh Soni ', '1970-01-01', '1970-01-01', 17, 30, 'VIGHNAHARTA NURSHING HOME', 430, 23, 3479, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-03 17:33:43', 1, 5),
(520, '430', 'Dr.atul Sukla', '1970-01-01', '1970-01-01', 17, 30, 'SIMOUR CHOWK', 430, 23, 3479, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-03 17:34:44', 1, 5),
(521, '430', 'Dr.shubham Mishra', '1970-01-01', '1970-01-01', 17, 30, 'S.F.CHOWK', 0, 23, 0, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-03 17:37:59', 1, 5),
(522, '430', 'Dr.k.k.panday', '1970-01-01', '1970-01-01', 41, 32, 'GAS GODAM ', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-03 17:39:42', 1, 5),
(523, '430', 'Dr.amit Tripathi', '1970-01-01', '1970-01-01', 41, 32, 'SHANTI NURSHING HOME ', 430, 23, 3479, 0, '', 'male', '60', 0, 0, '', '', '', '2019-12-03 17:42:41', 1, 5),
(524, '430', 'Dr.sandeep Singh', '1970-01-01', '1970-01-01', 36, 37, 'new hospital campus', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2020-02-07 05:00:17', 1, 5),
(525, '451', 'Rajesh Sahu ', '1970-01-01', '1970-01-01', 19, 15, 'Ranjh Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 8989536441, '', '', '', '2020-02-07 07:20:59', 1, 4),
(526, '451', 'S.samaddar', '1970-01-01', '1970-01-01', 43, 33, 'Ranjhi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-04 11:25:37', 1, 14),
(527, '451', 'J.k.nag', '1970-01-01', '1970-01-01', 29, 17, 'Ranjhi', 0, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 10:55:54', 1, 14),
(528, '451', 'Kamini Shukla', '1970-01-01', '1970-01-01', 2, 19, 'Sihora', 0, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-05 03:30:15', 1, 14),
(529, '451', 'R.k.jain', '1970-01-01', '1970-01-01', 36, 37, 'Sihora', 451, 23, 3627, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-04 11:29:25', 1, 14),
(530, '451', 'B.p Gupta', '1970-01-01', '1970-01-01', 0, 0, 'Ranjhi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:00:27', 1, 14),
(531, '451', 'G L Kshtriya', '1970-01-01', '1970-01-01', 37, 33, 'Miloniganj', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:29:40', 1, 14),
(532, '451', 'R.k Mishra', '1970-01-01', '1970-01-01', 0, 0, 'Ranjhi', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:42:11', 1, 14),
(533, '451', 'Komal Jain', '1970-01-01', '1970-01-01', 0, 0, 'Ranjhi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:08:09', 1, 14),
(534, '451', 'N.d Singh', '1970-01-01', '1970-01-01', 0, 0, 'Ranjhi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:09:42', 1, 14),
(535, '451', 'Deepak Gaikwad', '1970-01-01', '1970-01-01', 48, 15, 'Goshalpur', 451, 23, 3631, 0, '', 'male', '', 0, 9425160054, '', '', '', '2019-12-05 03:13:57', 1, 14),
(536, '451', 'Asish Agrwal', '1970-01-01', '1970-01-01', 29, 15, 'Goshalpur', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 09:25:08', 1, 14),
(537, '451', 'A Jhariya', '1970-01-01', '1970-01-01', 29, 15, 'Kundam', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:21:36', 1, 14),
(538, '451', 'Shrivastava ', '1970-01-01', '1970-01-01', 0, 0, 'Sihora', 451, 23, 3627, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:23:01', 1, 14),
(539, '451', 'Prakash Asati', '1970-01-01', '1970-01-01', 29, 31, 'Sihora', 451, 23, 3627, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:25:41', 1, 14),
(540, '451', 'Madam Pandey', '1970-01-01', '1970-01-01', 2, 0, 'Sihora', 451, 23, 3627, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:26:54', 1, 14),
(541, '451', 'Sabbag Khan', '1970-01-01', '1970-01-01', 4, 0, 'Sihora', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-05 03:29:43', 1, 14),
(542, '451', 'Virendra Sahu ', '1970-01-01', '1970-01-01', 2, 15, 'Rampur chapar Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 8889688668, '', '', '', '2020-02-07 07:21:36', 1, 4),
(543, '451', 'Makhan Lal Jangir ', '1970-01-01', '1970-01-01', 2, 15, 'Madan Mahal Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 8818896886, '', '', '', '2020-02-07 07:21:54', 1, 4),
(544, '451', 'Saryu Ponikar', '1970-01-01', '1970-01-01', 29, 11, 'Sihora', 451, 23, 3627, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-05 15:49:49', 1, 14),
(545, '451', 'Kiran Dohra', '1970-01-01', '1970-01-01', 29, 19, 'Bijadandi', 0, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 08:22:58', 1, 14),
(546, '451', 'Amit Solakhiya', '1970-01-01', '1970-01-01', 2, 17, 'Bijadandi', 451, 23, 0, 0, 'Bijadandi', 'male', '', 0, 0, '', '', '', '2019-12-06 08:22:10', 1, 14),
(547, '451', 'C.p Upadhya', '1970-01-01', '1970-01-01', 2, 17, 'Barela', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 09:21:16', 1, 14),
(548, '451', 'Jigyasa Khesh', '1970-01-01', '1970-01-01', 3, 9, 'Bilheri', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 09:22:36', 1, 14),
(549, '451', 'Madhu Rai', '1970-01-01', '1970-01-01', 3, 9, 'Bilheri', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 09:23:41', 1, 14),
(550, '451', 'S.k Pandey', '1970-01-01', '1970-01-01', 29, 17, 'Bilheri', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:36', 1, 14),
(551, '464', 'R Solakhiya', '1970-01-01', '1970-01-01', 29, 17, 'Bilheri', 464, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:28', 1, 14),
(552, '451', 'Vivek Mahobia', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:40:01', 1, 14),
(553, '451', 'S Mahobia', '1970-01-01', '1970-01-01', 0, 0, 'Ranjhi', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:41:06', 1, 14),
(554, '451', 'S Shrivastava', '1970-01-01', '1970-01-01', 0, 0, 'Ranjhi', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:42:55', 1, 14),
(555, '451', 'Abhijeet Pal', '1970-01-01', '1970-01-01', 29, 21, 'Ranjhi', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:44:11', 1, 14),
(556, '451', 'Sobha Khatri', '1970-01-01', '1970-01-01', 50, 0, 'Ranjhi', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 10:45:18', 1, 14),
(557, '451', 'Rajesh Sahu', '1970-01-01', '1970-01-01', 36, 0, 'Ranjhi', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:45:58', 1, 14),
(558, '451', 'B K Chakraborty', '1970-01-01', '1970-01-01', 2, 0, 'Ranjhi', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:46:45', 1, 14),
(559, '451', 'S Chakraborty', '1970-01-01', '1970-01-01', 2, 0, 'Ranjhi', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 10:47:14', 1, 14),
(560, '451', 'Prabhat Shrivastava', '1970-01-01', '1970-01-01', 2, 0, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:48:46', 1, 14),
(561, '451', 'K C Dewani', '1970-01-01', '1970-01-01', 0, 0, 'Damoh naka', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 10:49:21', 1, 14),
(562, '451', 'G K Pachouri', '1970-01-01', '1970-01-01', 0, 0, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:49:55', 1, 14),
(563, '451', 'Gulam Varis', '1970-01-01', '1970-01-01', 2, 0, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:50:24', 1, 14),
(564, '451', 'Manju Nayak', '1970-01-01', '1970-01-01', 0, 0, 'Baldevbag', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 10:52:03', 1, 14),
(565, '451', 'Mayank Jain', '1970-01-01', '1970-01-01', 53, 33, 'Baldevbag', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 10:53:12', 1, 14),
(566, '451', 'L B Morya', '1970-01-01', '1970-01-01', 29, 17, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:54:09', 1, 14),
(567, '451', 'Ajay Tiwari', '1970-01-01', '1970-01-01', 53, 0, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:54:56', 1, 14),
(568, '451', 'S A Khan', '1970-01-01', '1970-01-01', 2, 0, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:55:40', 1, 14),
(569, '451', 'M Khan', '1970-01-01', '1970-01-01', 2, 0, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:56:34', 1, 14),
(570, '451', 'A K Thakur', '1970-01-01', '1970-01-01', 2, 0, 'Damoh naka', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:57:13', 1, 14),
(571, '451', 'S K Goutam', '1970-01-01', '1970-01-01', 53, 0, 'Labour chowk', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:58:50', 1, 14),
(572, '451', 'Sameer Agrwal', '1970-01-01', '1970-01-01', 53, 33, 'Labour chowk', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 10:59:52', 1, 14),
(573, '451', 'Amita Jain', '1970-01-01', '1970-01-01', 49, 19, 'Durga colony ga rha', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 11:01:59', 1, 14),
(574, '451', 'Ranju Sakiya', '1970-01-01', '1970-01-01', 48, 33, 'Yadav colony', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 11:01:34', 1, 14),
(575, '451', 'T K Sakiya', '1970-01-01', '1970-01-01', 29, 0, 'Yadav colony', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:02:58', 1, 14),
(576, '451', 'Natraj Bhattacharya', '1970-01-01', '1970-01-01', 37, 0, 'Yadav colony', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:03:46', 1, 14),
(577, '451', 'V Shivhare', '1970-01-01', '1970-01-01', 2, 0, 'Garha', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:04:14', 1, 14),
(578, '451', 'Pradeep Soni', '1970-01-01', '1970-01-01', 2, 0, 'Garba devtl', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:04:44', 1, 14),
(579, '451', 'Asish Tiwari', '1970-01-01', '1970-01-01', 0, 0, 'Labour chowk', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:05:51', 1, 14),
(580, '451', 'A K Patel', '1970-01-01', '1970-01-01', 0, 0, 'Madam Mahal amanpur', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:06:23', 1, 14),
(581, '451', 'Bhavna Roi', '1970-01-01', '1970-01-01', 37, 19, 'Madam mahal', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 11:07:43', 1, 14),
(582, '451', 'O P Sahani', '1970-01-01', '1970-01-01', 29, 33, 'Madam mahal', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:08:39', 1, 14),
(583, '451', 'Arun Jain', '1970-01-01', '1970-01-01', 29, 17, 'Madam mahal', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:09:47', 1, 14),
(584, '451', 'Anubhav Shrivastava', '1970-01-01', '1970-01-01', 39, 0, 'Madam mahal', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:10:43', 1, 14),
(585, '451', 'Anubhuti Shrivasva', '1970-01-01', '1970-01-01', 3, 0, 'Madam mahal', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 11:11:23', 1, 14),
(586, '451', 'M L Jangir', '1970-01-01', '1970-01-01', 2, 17, 'Madam mahal', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:12:25', 1, 14),
(587, '451', 'Arun Saxena', '1970-01-01', '1970-01-01', 53, 33, 'Badi omti', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:14:19', 1, 14),
(588, '451', 'Kusumlata Saxena', '1970-01-01', '1970-01-01', 10, 19, 'Badi omti', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 11:15:23', 1, 14),
(589, '451', 'Sanjay Chhatani', '1970-01-01', '1970-01-01', 3, 0, 'Raght town', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:16:00', 1, 14),
(590, '451', 'A Viswas', '1970-01-01', '1970-01-01', 2, 0, 'Right town', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:16:57', 1, 14),
(591, '451', 'Pramod Sharma', '1970-01-01', '1970-01-01', 29, 17, 'Right town', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:17:48', 1, 14),
(592, '451', 'Hemlta Arora', '1970-01-01', '1970-01-01', 37, 33, 'Ranital Bharat hospital', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 11:19:45', 1, 14),
(593, '451', 'Dinesh Sarathe', '1970-01-01', '1970-01-01', 2, 0, 'Gwarighat', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:20:20', 1, 14),
(594, '451', 'Abha Gupta', '1970-01-01', '1970-01-01', 10, 19, 'Ranital', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 11:21:21', 1, 14),
(595, '451', 'Sunil Patel', '1970-01-01', '1970-01-01', 41, 0, 'Deendayal chowk', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:22:00', 1, 14),
(596, '451', 'Raza Khan', '1970-01-01', '1970-01-01', 2, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:22:43', 1, 14),
(597, '451', 'Priyank Chaturvedi', '1970-01-01', '1970-01-01', 53, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:23:42', 1, 14),
(598, '451', 'Devendra Shukla', '1970-01-01', '1970-01-01', 2, 0, 'Setlamai', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:30:13', 1, 14),
(599, '451', 'R K Sahu', '1970-01-01', '1970-01-01', 2, 0, 'Setlamai', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 11:30:41', 1, 14),
(600, '450', 'Dr Swati Jain', '1970-01-01', '1970-01-01', 44, 19, 'Done colony', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 13:58:54', 1, 6),
(601, '455', 'M P Yadav ', '1970-01-01', '1970-01-01', 36, 15, 'Parasiya road Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-06 15:41:00', 1, 13),
(602, '455', 'A Shukla', '1970-01-01', '1970-01-01', 56, 33, 'Budhwari bazar Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 15:43:28', 1, 13),
(603, '455', 'Neeti Batra', '1970-01-01', '1970-01-01', 10, 11, 'Anandhoshpital Chhindwara ', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-06 15:45:35', 1, 13),
(604, '451', 'B.s Choudhry', '1970-01-01', '1970-01-01', 0, 0, 'Gadarwara', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 14:50:55', 1, 14),
(605, '450', 'Dr Pradeep Soni', '1970-01-01', '1970-01-01', 41, 30, 'Sahid dwar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-07 18:04:43', 1, 6),
(606, '430', 'Dr.g.p.prajapati', '1970-01-01', '1970-01-01', 2, 17, 'GURH CHAORAHA REWA', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 03:44:21', 1, 5),
(607, '430', 'Dr.vidya P Tiwari', '1970-01-01', '1970-01-01', 2, 17, 'DHOBIYA TANKI', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-08 03:55:27', 1, 5),
(608, '430', 'Dr.y.s.baghel', '1970-01-01', '1970-01-01', 45, 14, 'TANSEN COMPLEX', 0, 23, 0, 0, '', 'male', '80', 0, 0, '', '', '', '2020-01-05 11:09:45', 1, 5),
(609, '430', 'Dr.harish Shrivastav', '1970-01-01', '1970-01-01', 2, 17, 'BODA BAG ', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:00:58', 1, 5),
(610, '430', 'Dr.nalini Mishra ', '1970-01-01', '1970-01-01', 3, 9, 'IN FRONT OF MEDICAL COLLEGE ', 430, 23, 3479, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-08 04:04:39', 1, 5),
(611, '430', 'Dr.m.m.l.gupta ', '1970-01-01', '1970-01-01', 37, 37, 'NEAR OLD BUS STAND', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:06:26', 1, 5),
(612, '430', 'Dr.r.r.mishra (m)', '1970-01-01', '1970-01-01', 36, 37, 'SIRMOUR CHOWK', 430, 23, 3479, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-08 04:07:54', 1, 5),
(613, '430', 'Dr.a.p.s.gaharwar', '1970-01-01', '1970-01-01', 42, 46, 'HOSPITAL CAMPUS', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-08 04:10:47', 1, 5),
(614, '430', 'Dr.n.k.gupta', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET DEVTALAB', 430, 23, 3478, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:13:49', 1, 5),
(615, '430', 'Dr.ram Rati', '1970-01-01', '1970-01-01', 10, 19, 'NAIGHARI HOSPITAL', 430, 23, 3478, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-08 04:15:52', 1, 5),
(616, '430', 'Dr.aditya Singh', '1970-01-01', '1970-01-01', 29, 17, 'NAIGHARI HOSPITAL', 430, 23, 3478, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:16:48', 1, 5),
(617, '430', 'Dr.sunita Verma', '1970-01-01', '1970-01-01', 10, 19, 'NAIGHARI HOSPITAL', 430, 23, 3478, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-08 04:18:46', 1, 5),
(618, '430', 'Dr.s.majumdar', '1970-01-01', '1970-01-01', 2, 17, 'NAIGHARI MARTEK', 430, 23, 3478, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-08 04:19:56', 1, 5),
(619, '430', 'Dr.m.k.mishra', '1970-01-01', '1970-01-01', 2, 17, 'CHARAK HOSPITAL KHATKHARI', 430, 23, 0, 0, '', 'male', '80', 0, 0, '', '', '', '2019-12-08 04:21:31', 1, 5),
(620, '430', 'Dr.b.p.tiwari', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET KHATKHARI', 430, 23, 0, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:22:23', 1, 5),
(621, '430', 'Dr.abhisek Tiwari', '1970-01-01', '1970-01-01', 29, 17, 'KHATKHARI', 430, 23, 0, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:23:22', 1, 5),
(622, '430', 'Dr.v.r.sailani', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET KHATKHARI', 430, 23, 0, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-08 04:24:31', 1, 5),
(623, '430', 'Dr.s.k.shukla', '1970-01-01', '1970-01-01', 2, 17, 'NAIGHARI', 430, 23, 3478, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:25:59', 1, 5),
(624, '430', 'Dr.vidyawati Tiwari', '1970-01-01', '1970-01-01', 2, 17, 'RAIPUR KARCHULIYAN', 430, 23, 3480, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-08 04:27:39', 1, 5),
(625, '430', 'Dr.b.b.singh', '1970-01-01', '1970-01-01', 2, 17, 'SAJAN HOSPITAL', 430, 23, 3477, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-08 04:29:17', 1, 5),
(626, '430', 'Dr.h.c.dwivedi', '1970-01-01', '1970-01-01', 2, 17, 'Raghunath gunj', 0, 23, 0, 0, '', 'male', '20', 0, 0, '', '', '', '2020-01-09 14:52:50', 1, 5),
(627, '430', 'Dr.pankaj Panday', '1970-01-01', '1970-01-01', 37, 17, 'MAUGANJ HOSPITAL', 430, 23, 3477, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:31:16', 1, 5),
(628, '430', 'Dr.s.d.kol', '1970-01-01', '1970-01-01', 29, 17, 'MAUGANJ', 430, 23, 3477, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-08 04:32:08', 1, 5),
(629, '430', 'Dr.pankaj Gharwar', '1970-01-01', '1970-01-01', 29, 17, 'MAUGANJ HOPITAL', 430, 23, 3477, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-08 04:33:07', 1, 5),
(630, '430', 'Dr.r.n.shrma', '1970-01-01', '1970-01-01', 10, 19, 'MAUGANG HOPITAL', 430, 23, 3477, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-08 04:34:11', 1, 5);
INSERT INTO `doctors` (`doctor_id`, `doctor_hq`, `doctor_fullname`, `doctor_dob`, `doctor_marriage`, `doctor_qualification`, `doctor_specialization`, `doctor_address`, `doctor_city`, `doctor_state`, `doctor_subdistrict`, `doctor_villages`, `doctor_locality`, `doctor_gender`, `doctor_dailyopd`, `doctor_phone`, `doctor_mobile`, `doctor_info`, `doctor_email`, `doctor_website`, `cust_entrydt`, `doctor_status`, `emp_id`) VALUES
(631, '430', 'Dr.k.diwakran', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET MAUGANJ', 430, 23, 3477, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-08 04:35:39', 1, 5),
(632, '430', 'Dr.m.w.mansoori', '1970-01-01', '1970-01-01', 37, 33, 'MAIN MARKET MAUGANJ', 430, 23, 3477, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-08 04:37:32', 1, 5),
(633, '428', 'Dr.r.k.sharma', '1970-01-01', '1970-01-01', 2, 17, 'MAIN MARKET MANGAWAN', 430, 23, 3474, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-08 04:38:35', 1, 5),
(634, '430', 'Dr.h.s.parihar', '1970-01-01', '1970-01-01', 29, 17, 'MAIN MARKET MANGAWAN', 430, 23, 3474, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-08 04:39:49', 1, 5),
(635, '430', 'Dr.c.m.mishra', '1970-01-01', '1970-01-01', 29, 17, 'MAIN MARKET MANGAWAN', 430, 23, 3474, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-08 04:40:40', 1, 5),
(636, '430', 'Dr.s.s.yadav', '1970-01-01', '1970-01-01', 1, 33, 'HOSPITAL CAMPUS ', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:43:33', 1, 5),
(637, '430', 'Dr.ashish Tiwari', '1970-01-01', '1970-01-01', 10, 19, 'BODA BAG RAOD', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-08 04:45:48', 1, 5),
(638, '430', 'Dr.tarik Kamal', '1970-01-01', '1970-01-01', 1, 33, 'BLOSOM CLINIC', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-08 04:47:56', 1, 5),
(639, '451', 'Anil Patel', '1970-01-01', '1970-01-01', 0, 0, 'GADARWARA', 452, 23, 3637, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 02:27:17', 1, 14),
(640, '450', 'Dr S K Mitra', '1970-01-01', '1970-01-01', 4, 15, 'Main road kanwara', 450, 23, 3624, 37159, '', 'male', '', 0, 0, '', '', '', '2019-12-09 13:07:53', 1, 6),
(641, '450', 'Dr Patel', '1970-01-01', '1970-01-01', 2, 15, 'Main market devsari', 450, 23, 3624, 37159, '', 'male', '', 0, 0, '', '', '', '2019-12-09 13:09:21', 1, 6),
(642, '451', 'Pankaj Tharwani', '1970-01-01', '1970-01-01', 29, 17, 'Gadarwara', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 14:57:22', 1, 14),
(643, '451', 'A P Singh', '1970-01-01', '1970-01-01', 2, 17, 'Gadarwara', 452, 23, 3635, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 14:55:10', 1, 14),
(644, '451', 'N K Bajpai', '1970-01-01', '1970-01-01', 29, 17, 'Gadarwara', 452, 23, 3635, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 14:56:57', 1, 14),
(645, '451', 'Vijay Dhanore', '1970-01-01', '1970-01-01', 29, 17, 'Gadarwara', 452, 23, 3635, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 14:59:19', 1, 14),
(646, '451', 'Sangeet Jain', '1970-01-01', '1970-01-01', 2, 17, 'Gadarwara', 452, 23, 3635, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 15:01:15', 1, 14),
(647, '451', 'V K Patel', '1970-01-01', '1970-01-01', 2, 17, 'Gadarwara', 452, 23, 3635, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 15:03:51', 1, 14),
(648, '451', 'Swati Kurchaniya', '1970-01-01', '1970-01-01', 29, 17, 'Gadarwara', 452, 23, 3635, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 15:05:56', 1, 14),
(649, '451', 'Raghvendra Puri', '1970-01-01', '1970-01-01', 2, 17, 'Gadarwara', 452, 23, 3635, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-09 15:07:23', 1, 14),
(650, '451', 'N K Pandey', '1970-01-01', '1970-01-01', 2, 17, 'Lalmati', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:54:47', 1, 14),
(651, '451', 'M L Vishwakarma', '1970-01-01', '1970-01-01', 2, 17, 'Karachi majhouli', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-11 02:51:40', 1, 14),
(652, '451', 'Ankit Agrwal', '1970-01-01', '1970-01-01', 3, 9, 'Majhouli', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-11 02:53:01', 1, 14),
(653, '451', 'A Viswas', '1970-01-01', '1970-01-01', 2, 17, 'Majhouli', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-11 02:55:34', 1, 14),
(654, '451', 'C L Dubey', '1970-01-01', '1970-01-01', 2, 17, 'Majhouli', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-11 02:57:50', 1, 14),
(655, '451', 'C P Tiwari', '1970-01-01', '1970-01-01', 29, 17, 'Majhouli', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-11 02:59:08', 1, 14),
(656, '450', 'Dr Ali Khan', '1970-01-01', '1970-01-01', 5, 15, 'Nkj', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-11 14:04:28', 1, 6),
(657, '450', 'Dr Anurag Gupta', '1970-01-01', '1970-01-01', 2, 15, 'Adarsh calony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-11 14:07:42', 1, 6),
(658, '430', 'Dr.amit Tiwari', '1970-01-01', '1970-01-01', 3, 9, 'TANSEN COMPLEX ', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-12 02:37:48', 1, 5),
(659, '430', 'Dr.mahendra Tilkhar', '1970-01-01', '1970-01-01', 37, 37, 'TANSEN COMPLEX', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 02:39:18', 1, 5),
(660, '430', 'Dr.kripa S. Mishra', '1970-01-01', '1970-01-01', 17, 30, 'TANSEN COMPLEX ', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-12 02:41:36', 1, 5),
(661, '430', 'Dr.a.s.pant', '1970-01-01', '1970-01-01', 1, 33, 'BESIDE MANAS BHAWAN', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 02:43:20', 1, 5),
(662, '430', 'Dr.pramod Jain', '1970-01-01', '1970-01-01', 1, 33, 'NEAR KALLA MANDIR ROAD REWA', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-12 02:46:27', 1, 5),
(663, '430', 'Dr.badri Singh', '1970-01-01', '1970-01-01', 37, 17, 'BAIDHAN', 463, 23, 3705, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-12 02:57:10', 1, 5),
(664, '430', 'Dr.santosh Kumar Singh', '1970-01-01', '1970-01-01', 37, 37, 'BAIDHAN', 463, 23, 3705, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-12 02:58:52', 1, 5),
(665, '430', 'Dr.o.p.jha', '1970-01-01', '1970-01-01', 3, 9, 'BAIDHAN', 463, 23, 3705, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-12 03:00:40', 1, 5),
(666, '430', 'Dr.r.b.singh', '1970-01-01', '1970-01-01', 17, 30, 'BAIDHAN', 463, 23, 3705, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-12 03:02:58', 1, 5),
(667, '430', 'Dr.d.k.mishra', '1970-01-01', '1970-01-01', 2, 17, 'MISHRA POLY CLINIC', 463, 23, 3705, 0, '', 'male', '60', 0, 0, '', '', '', '2019-12-12 03:13:54', 1, 5),
(668, '430', 'Dr.a.k.dubey', '1970-01-01', '1970-01-01', 37, 37, 'VINDHYA NAGAR ', 463, 23, 3705, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-12 03:15:28', 1, 5),
(669, '430', 'Dr.dr.s.k.mishra', '1970-01-01', '1970-01-01', 37, 37, 'NEHRU HOSPITAL ', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:17:16', 1, 5),
(670, '430', 'Dr.s.k.viswas', '1970-01-01', '1970-01-01', 37, 37, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:19:46', 1, 5),
(671, '430', 'Dr.shaurabh Kumar', '1970-01-01', '1970-01-01', 37, 37, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:20:51', 1, 5),
(672, '430', 'Dr.pratima Kumari', '1970-01-01', '1970-01-01', 24, 14, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:21:56', 1, 5),
(673, '430', 'Dr.u.k.singh', '1970-01-01', '1970-01-01', 42, 46, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-12 03:23:51', 1, 5),
(674, '430', 'Dr.rakesh Viswas', '1970-01-01', '1970-01-01', 17, 30, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:25:23', 1, 5),
(675, '430', 'Dr.s.k.gautam', '1970-01-01', '1970-01-01', 17, 30, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:26:09', 1, 5),
(676, '430', 'Dr.asif Ahmed', '1970-01-01', '1970-01-01', 12, 30, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:27:21', 1, 5),
(677, '430', 'Dr.shukh Sagar Vaisya', '1970-01-01', '1970-01-01', 17, 30, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:29:11', 1, 5),
(678, '430', 'Dr.manjari Mehta ', '1970-01-01', '1970-01-01', 1, 33, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-12 03:30:18', 1, 5),
(679, '430', 'Dr.vivek Khare', '1970-01-01', '1970-01-01', 1, 33, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:31:36', 1, 5),
(680, '430', 'Dr.sangeeta Prasad', '1970-01-01', '1970-01-01', 10, 19, 'NEHRU HOSPITAL', 463, 23, 3705, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-12 03:32:42', 1, 5),
(681, '430', 'Dr.p.k.jha ', '1970-01-01', '1970-01-01', 37, 37, 'GOLL BAZAR', 463, 23, 3705, 0, '', 'male', '40', 0, 0, '', '', '', '2019-12-12 03:34:14', 1, 5),
(682, '430', 'Dr.rishabh Shekhar ', '1970-01-01', '1970-01-01', 37, 37, 'GOLL BAZAR', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:35:46', 1, 5),
(683, '430', 'Dr.anuradh Sinha', '1970-01-01', '1970-01-01', 37, 37, 'GOLL BAZAR', 463, 23, 3705, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-12 03:39:05', 1, 5),
(684, '430', 'Dr.juri  Das Datta', '1970-01-01', '1970-01-01', 37, 37, 'N.T.P.C.', 463, 23, 3705, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-12 03:44:21', 1, 5),
(685, '430', 'Dr.antosh Kumar ', '1970-01-01', '1970-01-01', 37, 37, 'N.T.P.C', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:45:38', 1, 5),
(686, '430', 'Dr.deepak Day', '1970-01-01', '1970-01-01', 12, 32, 'N.T.P.C.', 463, 23, 3705, 0, '', 'male', '50', 0, 0, '', '', '', '2019-12-12 03:46:30', 1, 5),
(687, '430', 'Dr.manisha Bolbalkar', '1970-01-01', '1970-01-01', 10, 19, 'N.T.P.C', 463, 23, 3705, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-12 03:47:50', 1, 5),
(688, '430', 'Dr.hema Urrao', '1970-01-01', '1970-01-01', 10, 19, 'N.T.P.C', 463, 23, 3705, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-12 03:48:47', 1, 5),
(689, '430', 'Dr.nelli Neelima Rani', '1970-01-01', '1970-01-01', 10, 19, 'N.T.P.C.', 463, 23, 3705, 0, '', 'female', '30', 0, 0, '', '', '', '2019-12-12 03:49:58', 1, 5),
(690, '430', 'Dr.raj Pal Singh', '1970-01-01', '1970-01-01', 1, 33, 'N.T.P.C', 463, 23, 3705, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-12 03:51:20', 1, 5),
(691, '451', 'Sarfaraj Ansari', '1970-01-01', '1970-01-01', 2, 17, 'Raddi chowki', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-12 06:11:42', 1, 14),
(692, '451', 'A L Khan', '1970-01-01', '1970-01-01', 2, 17, 'Raddi chowki', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-12 06:13:46', 1, 14),
(693, '451', 'J M Nema', '1970-01-01', '1970-01-01', 29, 17, 'Suhagi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-12 06:15:04', 1, 14),
(694, '451', 'Suratna Chouhaan', '1970-01-01', '1970-01-01', 29, 17, 'Panagar', 451, 23, 3632, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-12 06:16:17', 1, 14),
(695, '451', 'Satrughan Dhahiya', '1970-01-01', '1970-01-01', 29, 17, 'Panagqr', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-12 06:18:00', 1, 14),
(696, '451', 'Lalita Dubey', '1970-01-01', '1970-01-01', 2, 17, 'Panagar', 451, 23, 3632, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-12 06:18:53', 1, 14),
(697, '451', 'Rashmi Jain', '1970-01-01', '1970-01-01', 29, 18, 'Panagqr', 451, 23, 3632, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-12 06:20:45', 1, 14),
(698, '451', 'Shalni Gupta', '1970-01-01', '1970-01-01', 29, 19, 'Shanti Nagar Damoh naka', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-12 06:25:33', 1, 14),
(699, '450', 'Dr Subba Rao', '1970-01-01', '1970-01-01', 11, 14, 'Sastri colony', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-12 14:18:24', 1, 6),
(700, '430', 'Dr.ashish Tripathi(d)', '1970-01-01', '1970-01-01', 3, 9, 'TANSEN COMPLEX', 430, 23, 3479, 0, '', 'male', '10', 0, 0, '', '', '', '2019-12-12 15:46:33', 1, 5),
(701, '430', 'Dr.sheetal Chaudhary', '1970-01-01', '1970-01-01', 10, 19, 'SIRMAOUR CHOWK', 430, 23, 3479, 0, '', 'female', '20', 0, 0, '', '', '', '2019-12-12 15:47:47', 1, 5),
(702, '430', 'Dr.nitin Panday', '1970-01-01', '1970-01-01', 37, 17, 'DEKHA ', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2019-12-12 15:48:50', 1, 5),
(703, '451', 'Shama Choudhery', '1970-01-01', '1970-01-01', 2, 16, '', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-12 17:54:08', 1, 7),
(704, '455', 'J C Sharma ', '1970-01-01', '1970-01-01', 2, 15, 'Main road chourai ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:01:14', 1, 13),
(705, '455', 'T Nusrat ', '1970-01-01', '1970-01-01', 4, 15, 'Main road chourai ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:02:19', 1, 13),
(706, '455', 'B L Biswas', '1970-01-01', '1970-01-01', 2, 15, 'Main road chourai ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:03:18', 1, 13),
(707, '455', 'H Chouksey', '1970-01-01', '1970-01-01', 2, 15, 'Main road chourai ', 455, 23, 3650, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-13 04:05:03', 1, 13),
(708, '455', 'Gopal Raghuvanshi ', '1970-01-01', '1970-01-01', 2, 15, 'Main road panjra chourai ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:06:20', 1, 13),
(709, '455', 'Sandeep Dubey ', '1970-01-01', '1970-01-01', 2, 15, 'Main road panjra chourai ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:07:34', 1, 13),
(710, '455', 'Hemant Chourasiya ', '1970-01-01', '1970-01-01', 2, 15, 'Main road chand ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:09:06', 1, 13),
(711, '455', 'Abid Ansari ', '1970-01-01', '1970-01-01', 2, 15, 'Main road chand chourai ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:10:18', 1, 13),
(712, '455', 'V Verma', '1970-01-01', '1970-01-01', 2, 15, 'Main road chand ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:11:18', 1, 13),
(713, '455', 'Madhur Jain', '1970-01-01', '1970-01-01', 4, 15, 'Monday market chand ', 455, 23, 3650, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 04:12:45', 1, 13),
(714, '451', 'Shubdha Tiwari', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-13 15:31:26', 1, 7),
(715, '451', 'S . Krrplani', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-13 15:37:35', 1, 7),
(716, '451', 'Jay Sahu', '1970-01-01', '1970-01-01', 2, 17, 'Bargi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 15:58:07', 1, 14),
(717, '451', 'Rajendra Kehri', '1970-01-01', '1970-01-01', 2, 17, 'GHANSORE', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 15:59:04', 1, 14),
(718, '451', 'Suraj Chouksey', '1970-01-01', '1970-01-01', 2, 17, 'GHANSORE', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 16:05:03', 1, 14),
(719, '451', 'Manoj Soni', '1970-01-01', '1970-01-01', 2, 17, 'GHANSORE', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 16:01:12', 1, 14),
(720, '451', 'Narmda Yadav', '1970-01-01', '1970-01-01', 2, 17, 'GHANSORE', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-13 16:02:07', 1, 14),
(721, '451', 'Urmila Chandravansi', '1970-01-01', '1970-01-01', 2, 17, 'GHANSORE', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-13 16:03:23', 1, 14),
(722, '451', 'Adam Teza', '1970-01-01', '1970-01-01', 44, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-14 15:31:32', 1, 7),
(723, '455', 'D K Shrivastava ', '1970-01-01', '1970-01-01', 2, 15, 'Main market Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:16:30', 1, 13),
(724, '455', 'R D Sharma', '1970-01-01', '1970-01-01', 29, 15, 'Harrai road Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:18:47', 1, 13),
(725, '455', 'Ashok Soni ', '1970-01-01', '1970-01-01', 2, 15, 'Main market Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:20:45', 1, 13),
(726, '455', 'Sharad Soni', '1970-01-01', '1970-01-01', 2, 15, 'Main market Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:25:21', 1, 13),
(727, '455', 'S K Dehriya ', '1970-01-01', '1970-01-01', 2, 15, 'Main road Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:33:17', 1, 13),
(728, '457', 'Dr.vinod Shukla', '1970-01-01', '1970-01-01', 29, 13, 'Malajkhand', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:34:17', 1, 9),
(729, '455', 'Sarita Dehriya ', '1970-01-01', '1970-01-01', 10, 19, 'Main hospital Amarwara ', 455, 23, 3648, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-16 04:35:01', 1, 13),
(730, '457', 'Dr.sangeeta Gupta', '1970-01-01', '1970-01-01', 49, 19, 'Malajkhand', 457, 23, 3674, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-16 04:36:52', 1, 9),
(731, '455', 'V K Jaat', '1970-01-01', '1970-01-01', 2, 15, 'Singodi Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:36:58', 1, 13),
(732, '457', 'Dr.rk.bala', '1970-01-01', '1970-01-01', 53, 17, 'Malajkhand', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:37:51', 1, 9),
(733, '455', 'G Yaduwanshi ', '1970-01-01', '1970-01-01', 2, 15, 'Singodi Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:38:39', 1, 13),
(734, '457', 'Dr.m.meshram', '1970-01-01', '1970-01-01', 53, 17, 'Birsa', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:39:16', 1, 9),
(735, '455', 'S K Biswas ', '1970-01-01', '1970-01-01', 5, 15, 'Singodi Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:40:03', 1, 13),
(736, '457', 'Dr.ms Turkar', '1970-01-01', '1970-01-01', 2, 15, 'Birsa', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:40:12', 1, 9),
(737, '457', 'Dr.kr. Bisen', '1970-01-01', '1970-01-01', 2, 17, 'Birsa', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:41:06', 1, 9),
(738, '455', 'A Ansari ', '1970-01-01', '1970-01-01', 2, 15, 'Singodi Amarwara ', 455, 23, 3648, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:41:22', 1, 13),
(739, '457', 'Dr.cm.singh', '1970-01-01', '1970-01-01', 54, 0, 'Damoh', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:42:03', 1, 9),
(740, '457', 'Dr.bs.bisen', '1970-01-01', '1970-01-01', 2, 15, 'Damoh', 457, 23, 3674, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 04:43:00', 1, 9),
(741, '451', 'Devendra Shukla', '1970-01-01', '1970-01-01', 2, 17, 'Jabalpur hai ka bageecha', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-16 14:28:35', 1, 14),
(742, '451', 'Adarsh Vishnoi', '1970-01-01', '1970-01-01', 29, 17, 'Patan', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:13:59', 1, 14),
(743, '451', 'Sharad Pandey', '1970-01-01', '1970-01-01', 2, 17, 'Patan', 451, 23, 3629, 0, '', 'male', '', 0, 9111020651, '', '', '', '2019-12-17 15:15:37', 1, 14),
(744, '451', 'Chintan Babele', '1970-01-01', '1970-01-01', 2, 17, 'Patan', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:17:34', 1, 14),
(745, '451', 'J.p Khare', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:19:58', 1, 14),
(746, '451', 'Rakesh Namdev', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:21:24', 1, 14),
(747, '451', 'S N Gupta', '1970-01-01', '1970-01-01', 29, 17, 'Tendukheda', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:22:41', 1, 14),
(748, '451', 'Girin Rawat', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:24:06', 1, 14),
(749, '451', 'Sandeep Rajak', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:25:36', 1, 14),
(750, '451', 'O P Patel', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:26:58', 1, 14),
(751, '451', 'Nitesh Namdev', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-17 15:28:18', 1, 14),
(752, '430', 'Dr.d.s.parahua', '1970-01-01', '1970-01-01', 37, 37, 'VINDHYA HOSPITAL ', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2019-12-17 16:54:46', 1, 5),
(753, '450', 'Dr Manish Gattani', '1970-01-01', '1970-01-01', 36, 4, 'Chandak chowk', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-18 13:07:46', 1, 6),
(754, '450', 'Dr Susma Gattani', '1970-01-01', '1970-01-01', 48, 33, 'Chandak chowk', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-18 13:09:14', 1, 6),
(755, '451', 'V K Shrivastva', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-18 17:40:44', 1, 14),
(756, '451', 'Subash Gajpale', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-18 17:46:04', 1, 14),
(757, '451', 'Sushil Patle', '1970-01-01', '1970-01-01', 44, 30, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-20 13:22:45', 1, 7),
(758, '451', 'R S Patel', '1970-01-01', '1970-01-01', 2, 17, 'Gotegaon khobi', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-21 16:48:29', 1, 14),
(759, '451', 'Prashant Patel', '1970-01-01', '1970-01-01', 2, 17, 'Gotegaon khobi', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:15', 1, 14),
(760, '451', 'M L Gupta', '1970-01-01', '1970-01-01', 2, 17, 'Gotegaon kamti', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:11', 1, 14),
(761, '451', 'Nilesh Jain', '1970-01-01', '1970-01-01', 2, 17, 'Gotegaon sehpura', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:50:06', 1, 14),
(762, '451', 'R Jain', '1970-01-01', '1970-01-01', 2, 17, 'Gotegaon Sehpura', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-21 16:53:46', 1, 14),
(763, '451', 'A Saini', '1970-01-01', '1970-01-01', 2, 17, 'Sehajpur', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-21 16:55:22', 1, 14),
(764, '428', 'Kedar Nath Sharma ', '1970-01-01', '1970-01-01', 2, 15, 'Damoh ', 428, 23, 3458, 0, '', 'male', '30', 0, 9406514973, '', '', '', '2019-12-23 12:48:56', 1, 4),
(765, '451', 'A K Patel', '1970-01-01', '1970-01-01', 2, 17, 'Madam mahal', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-23 17:19:22', 1, 14),
(766, '451', 'Bhavna Roy', '1970-01-01', '1970-01-01', 37, 19, 'Madam mahal', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-23 17:21:53', 1, 14),
(767, '428', 'D C Bajaj', '1970-01-01', '1970-01-01', 29, 37, '', 0, 23, 0, 0, '', 'male', '10', 0, 9584959695, '', '', '', '2019-12-24 07:28:19', 1, 0),
(768, '428', 'Brijesh Mishra ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3454, 0, '', 'male', '20', 0, 0, '', '', '', '2020-02-07 05:00:35', 1, 0),
(769, '428', 'Veerendra Modi ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 05:00:31', 1, 0),
(770, '428', 'Kedar Nath Sharma ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-25 04:50:42', 1, 0),
(771, '428', 'Raghunandan Chile ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-25 04:51:47', 1, 0),
(772, '455', 'Anshul Luhadiya', '1970-01-01', '1970-01-01', 36, 37, 'Anand hospital , bus stand, chhindwara', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-25 07:00:38', 1, 13),
(773, '455', 'Ratnesh Raghuwanshi', '1970-01-01', '1970-01-01', 29, 17, 'Anand hospital, bus stand, chhindwara', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-25 07:02:12', 1, 13),
(774, '455', 'Sachin Batra', '1970-01-01', '1970-01-01', 42, 46, 'Anand hospital, bus stand, chhindwara', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-25 07:03:23', 1, 13),
(775, '455', 'Niti Batra', '1970-01-01', '1970-01-01', 22, 18, 'Anand hospital, bus stand, chhindwara', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-25 07:05:53', 1, 13),
(776, '451', 'Virendra Sahu', '1970-01-01', '1970-01-01', 2, 17, 'Rampur chapar', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-25 16:32:52', 1, 14),
(777, '451', 'Lalita Dubey', '1970-01-01', '1970-01-01', 2, 17, 'Panagar', 451, 23, 3632, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-27 16:24:19', 1, 14),
(778, '451', ' Dr.rai', '1970-01-01', '1970-01-01', 29, 17, 'Panagar', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-27 16:26:13', 1, 14),
(779, '450', 'Dr Dharmendra Makhijani', '1970-01-01', '1970-01-01', 41, 30, 'Sahid dwar', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 13:55:50', 1, 6),
(780, '428', 'Dr.nand Lal Patel', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:35:20', 1, 0),
(781, '428', 'Dr.n Patel', '1970-01-01', '1970-01-01', 4, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:36:19', 1, 0),
(782, '428', 'Dr.neha Jatab ', '1970-01-01', '1970-01-01', 4, 15, '', 428, 23, 3457, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-30 15:37:06', 1, 0),
(783, '428', 'Dr.sinha', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:37:53', 1, 0),
(784, '428', 'Dr. P.s Mukhti', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:38:43', 1, 0),
(785, '428', 'Dr.m.s.shrivastav', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:39:43', 1, 0),
(786, '428', 'Dr.b.l Rathor', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:55', 1, 0),
(787, '428', 'Dr.rajendra Patel', '1970-01-01', '1970-01-01', 4, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:41:08', 1, 0),
(788, '428', 'Dr.puspendra Tripathi', '1970-01-01', '1970-01-01', 29, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:42:10', 1, 0),
(789, '428', 'Dr.rajesh Patel', '1970-01-01', '1970-01-01', 4, 0, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-30 15:43:01', 1, 0),
(790, '450', 'Dr Prachi Gupta', '1970-01-01', '1970-01-01', 3, 9, 'Near Govt hospital', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2019-12-31 16:31:30', 1, 6),
(791, '451', 'Raju Yadav', '1970-01-01', '1970-01-01', 2, 17, 'Ghansore', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2019-12-31 17:34:44', 1, 14),
(792, '451', 'Sapna Ghargavkar', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-02 15:16:44', 1, 7),
(793, '451', 'Mukesh Dudeja', '1970-01-01', '1970-01-01', 35, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 15:31:50', 1, 7),
(794, '430', 'Dr.subrat Singh', '1970-01-01', '1970-01-01', 29, 33, 'Bharat complex near hospital chowk', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2020-01-02 16:36:20', 1, 5),
(795, '428', 'Dr.mukhtyar Khan ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:19:51', 1, 0),
(796, '428', 'Dr.v.k.nema', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:20:42', 1, 0),
(797, '428', 'Dr.dileep Saraf', '1970-01-01', '1970-01-01', 4, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:22:04', 1, 0),
(798, '428', 'Dr.pradeep Shandey ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:23:19', 1, 0),
(799, '428', 'Dr.shrepad Shandey', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:24:36', 1, 0),
(800, '428', 'Dr.i.c Jain ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:25:29', 1, 0),
(801, '428', 'Dr.chaitan Jain ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:26:30', 1, 0),
(802, '428', 'Dr.a.l Raikwar', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-02 17:27:37', 1, 0),
(803, '428', 'Dr.j.p Ayachi', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 15:40:08', 1, 0),
(804, '450', 'Dr Sonali Mem', '1970-01-01', '1970-01-01', 2, 15, 'Main markit peprieakala', 450, 23, 3622, 36962, '', 'female', '', 0, 0, '', '', '', '2020-01-03 13:18:40', 1, 6),
(805, '450', 'Dr S K Lalwani', '1970-01-01', '1970-01-01', 2, 15, 'Azad chouk', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 13:26:28', 1, 6),
(806, '451', ' Tarun Patle', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3633, 38917, '', 'male', '', 0, 0, '', '', '', '2020-01-03 14:07:38', 1, 7),
(807, '428', 'Dr Jalaj Pasari ', '1970-01-01', '1970-01-01', 29, 0, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 15:35:16', 1, 0),
(808, '428', 'Dr Jaylaxmi Pasari', '1970-01-01', '1970-01-01', 29, 11, '', 428, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-03 15:36:09', 1, 0),
(809, '428', 'Dr Kalpna Ahirwal', '1970-01-01', '1970-01-01', 10, 11, '', 0, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-03 15:38:40', 1, 0),
(810, '428', 'Dr.devyanshu Awasthi', '1970-01-01', '1970-01-01', 29, 31, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 15:38:28', 1, 0),
(811, '428', 'Dr.a.k Tiwari', '1970-01-01', '1970-01-01', 29, 46, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 15:39:43', 1, 0),
(812, '428', 'Dr Rp Patel', '1970-01-01', '1970-01-01', 29, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 15:41:06', 1, 0),
(813, '428', 'Dr.devendra Jain ', '1970-01-01', '1970-01-01', 29, 4, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 15:42:03', 1, 0),
(814, '428', 'Dr.amit Jain ', '1970-01-01', '1970-01-01', 29, 4, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-03 15:43:26', 1, 0),
(815, '430', 'Dr.k.k.parahua', '1970-01-01', '1970-01-01', 37, 17, 'Guru chauraha', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2020-01-03 16:34:08', 1, 5),
(816, '451', 'Swaraj Naik', '1970-01-01', '1970-01-01', 59, 0, '', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:59:09', 1, 11),
(817, '451', 'Dainy Naik', '1970-01-01', '1970-01-01', 36, 21, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:07', 1, 11),
(818, '451', 'Sangeeta Shrivastava', '1970-01-01', '1970-01-01', 59, 0, '', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:59:05', 1, 11),
(819, '428', 'Dr.s.k Kureshi ', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, 'Patera ', 'male', '', 0, 0, '', '', '', '2020-01-04 14:48:06', 1, 0),
(820, '428', 'Dr.a.k Kureshi ', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:50:14', 1, 0),
(821, '428', 'Dr.s.k Khan ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:51:26', 1, 0),
(822, '428', 'Dr.ashok Patel ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:52:24', 1, 0),
(823, '428', 'Dr.s.khan ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:53:28', 1, 0),
(824, '428', 'Dr.m Khan ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:54:05', 1, 0),
(825, '428', 'Dr.d.s. Chaturwedi', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:56:04', 1, 0),
(826, '428', 'Dr.o.p.sharma ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:57:09', 1, 0),
(827, '428', 'Dr.b.r Biswash ', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:58:25', 1, 0),
(828, '428', 'Dr.bhart Patel ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 14:59:19', 1, 0),
(829, '428', 'Dr.priynka Chaturwedi', '1970-01-01', '1970-01-01', 29, 11, '', 428, 23, 3455, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 15:00:09', 1, 0),
(830, '428', 'Dr.r.k Viswkarma', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 15:02:13', 1, 0),
(831, '428', 'Dr.c.viswash ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 15:03:14', 1, 0),
(832, '428', 'Dr. Kusmarya Ji ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 15:04:02', 1, 0),
(833, '455', 'A Sarkar', '1970-01-01', '1970-01-01', 48, 8, 'Near MLB School   Chhindwara ', 455, 23, 3654, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:58:59', 1, 13),
(834, '455', 'R. Raghuvanshi ', '1970-01-01', '1970-01-01', 29, 15, 'Bus stand Chhindwara ', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 16:18:04', 1, 13),
(835, '451', 'Arun Gupta', '1970-01-01', '1970-01-01', 3, 9, 'Gotegaon', 452, 23, 3634, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 17:00:38', 1, 14),
(836, '451', 'Prateek Jain', '1970-01-01', '1970-01-01', 2, 17, 'Sehpura', 452, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-04 17:03:34', 1, 14),
(837, '451', 'H.s.verma', '1970-01-01', '1970-01-01', 41, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:58:50', 1, 11),
(838, '451', 'Rakesh Tirki', '1970-01-01', '1970-01-01', 41, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:58:48', 1, 11),
(839, '451', 'F.a.ansari', '1970-01-01', '1970-01-01', 29, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:58:40', 1, 11),
(840, '451', 'Roop Lekha Chauhan', '1970-01-01', '1970-01-01', 49, 0, '', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:58:38', 1, 11),
(841, '451', 'Rekha James', '1970-01-01', '1970-01-01', 50, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:58:34', 1, 11),
(842, '430', 'Dr.p.k.baghel', '1970-01-01', '1970-01-01', 37, 37, 'hospital campus ', 430, 23, 3479, 0, '', 'male', '50', 0, 0, '', '', '', '2020-01-05 11:03:13', 1, 5),
(843, '430', 'Dr.avneesh Mishra', '1970-01-01', '1970-01-01', 44, 46, 'college chowk rewa', 430, 23, 3479, 0, '', 'male', '20', 0, 0, '', '', '', '2020-01-05 11:07:27', 1, 5),
(844, '428', 'Dr.diwaker Patel', '1970-01-01', '1970-01-01', 29, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 03:58:44', 1, 0),
(845, '428', 'Dr.jalaj Bajaj ', '1970-01-01', '1970-01-01', 29, 33, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 03:59:39', 1, 0),
(846, '428', 'Veena Yadu ', '1970-01-01', '1970-01-01', 29, 11, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 04:00:15', 1, 0),
(847, '428', 'Dr.rajkumar Patel', '1970-01-01', '1970-01-01', 2, 15, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 04:01:15', 1, 0),
(848, '451', 'Dr.hemraj Sing ', '1970-01-01', '1970-01-01', 29, 31, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:58:17', 1, 0),
(849, '428', 'Dr.swati Jain ', '1970-01-01', '1970-01-01', 29, 11, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 04:02:41', 1, 0),
(850, '428', 'Dr.anuj Jain ', '1970-01-01', '1970-01-01', 29, 19, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 04:03:26', 1, 0),
(851, '428', 'Dr.geetanjali Siddam ', '1970-01-01', '1970-01-01', 29, 11, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 04:04:08', 1, 0),
(852, '428', 'Dr.saterndra Patel', '1970-01-01', '1970-01-01', 29, 0, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 04:06:50', 1, 0),
(853, '428', 'Dr.b.b Nimade ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 04:10:08', 1, 0),
(854, '430', 'Dr.a.r.yadav', '1970-01-01', '1970-01-01', 2, 17, 'rambag raod aitrailla ', 430, 23, 3472, 13945, '', 'male', '40', 0, 0, '', '', '', '2020-01-06 14:30:20', 1, 5),
(855, '428', 'Dr.maneesh Patel', '1970-01-01', '1970-01-01', 29, 12, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 15:26:17', 1, 0),
(856, '428', 'Dr.umesh Tantway', '1970-01-01', '1970-01-01', 29, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 15:27:17', 1, 0),
(857, '428', 'Dr.asok Mishra', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-06 15:28:28', 1, 0),
(858, '428', 'Dr.r.soni ', '1970-01-01', '1970-01-01', 2, 15, 'Futera ', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:26:55', 1, 0),
(859, '428', 'Dr.rakesh Sikdar', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:27:39', 1, 0),
(860, '428', 'Dr.n.shrivastva ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:28:23', 1, 0),
(861, '428', 'Dr. C.l Asathi ', '1970-01-01', '1970-01-01', 2, 0, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:29:18', 1, 0),
(862, '428', 'Dr.khan ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:29:55', 1, 0),
(863, '428', 'Dr.c.s Thakur ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:31:09', 1, 0),
(864, '428', 'Dr.gotam ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:31:44', 1, 0),
(865, '428', 'S.thakur ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-07 04:32:46', 1, 0),
(866, '428', 'Dr.m Chodhry ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:33:53', 1, 0),
(867, '428', 'Dr.devendra Jain ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:34:42', 1, 0),
(868, '428', 'Dr.manoj Songhai ', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:41:29', 1, 0),
(869, '428', 'Dr.vinod Kukreja ', '1970-01-01', '1970-01-01', 29, 14, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:42:18', 1, 0),
(870, '428', 'Dr.d.m Sangtani ', '1970-01-01', '1970-01-01', 29, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:42:58', 1, 0),
(871, '428', 'Dr.m Sangtani ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:43:37', 1, 0),
(872, '428', 'Dr S.hissamuddin ', '1970-01-01', '1970-01-01', 29, 4, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:44:26', 1, 0),
(873, '428', 'Dr Rajeev Panday ', '1970-01-01', '1970-01-01', 29, 33, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:45:09', 1, 0),
(874, '428', 'Dr.sadhna Panday ', '1970-01-01', '1970-01-01', 29, 19, '', 428, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-07 04:47:20', 1, 0),
(875, '428', 'Dr.m.m Shrivastava', '1970-01-01', '1970-01-01', 29, 33, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:48:43', 1, 0),
(876, '428', 'P.k Jain ', '1970-01-01', '1970-01-01', 2, 32, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:51:02', 1, 0),
(877, '428', 'Dr.r.s Varma ', '1970-01-01', '1970-01-01', 2, 15, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:51:34', 1, 0),
(878, '428', 'Dr.a.l Raikwar ', '1970-01-01', '1970-01-01', 2, 15, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:51:59', 1, 0),
(879, '428', 'Dr.r.g Soni ', '1970-01-01', '1970-01-01', 2, 15, 'Madiyado ', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-07 04:56:44', 1, 0),
(880, '457', 'Dr Kanchan Tejwani', '1970-01-01', '1970-01-01', 2, 19, 'Jain hospital balaghat', 457, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-07 07:09:31', 1, 9),
(881, '451', 'Sapna Ghargavkar', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-07 14:59:22', 1, 7),
(882, '451', 'Aruna Phadnis', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-07 15:00:15', 1, 7),
(883, '428', 'Dr.b.r Patel', '1970-01-01', '1970-01-01', 2, 15, 'Madiyado', 428, 23, 3454, 10347, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:15:25', 1, 0),
(884, '428', 'Dr.s.k Patel', '1970-01-01', '1970-01-01', 2, 15, 'Madiyado', 428, 23, 3454, 10347, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:16:20', 1, 0),
(885, '428', 'Dr.r.c Sahni', '1970-01-01', '1970-01-01', 2, 15, 'Madiyado', 428, 23, 3454, 10347, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:18:38', 1, 0),
(886, '428', 'Dr.s.s Namdev', '1970-01-01', '1970-01-01', 2, 15, 'Madiyado', 428, 23, 3454, 10347, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:19:42', 1, 0),
(887, '428', 'Dr.sanjo Roy', '1970-01-01', '1970-01-01', 4, 15, '', 428, 23, 3454, 10347, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:20:33', 1, 0),
(888, '428', 'Dr.chilorya ', '1970-01-01', '1970-01-01', 2, 15, 'Madiyado', 428, 23, 3454, 10347, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:21:20', 1, 0),
(889, '428', 'Dr.k.k Patel', '1970-01-01', '1970-01-01', 2, 15, 'Madiyado', 428, 23, 3454, 10347, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:22:42', 1, 0),
(890, '428', 'Dr.r.p.singh ', '1970-01-01', '1970-01-01', 2, 15, 'Hinota', 428, 23, 3454, 10422, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:24:54', 1, 0),
(891, '428', 'Dr.s.k Mahita ', '1970-01-01', '1970-01-01', 2, 15, 'Hinota', 428, 23, 3454, 10422, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:25:54', 1, 0),
(892, '428', 'Dr.yaswant Rawat ', '1970-01-01', '1970-01-01', 2, 15, 'Hinota', 428, 23, 3454, 10422, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:26:49', 1, 0),
(893, '428', 'Dr.biswash', '1970-01-01', '1970-01-01', 2, 15, 'Hinota', 428, 23, 3454, 10422, '', 'male', '', 0, 0, '', '', '', '2020-01-08 16:27:52', 1, 0),
(894, '428', 'Dr.r.p Kori ', '1970-01-01', '1970-01-01', 29, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 03:39:06', 1, 0),
(895, '428', 'Dr.pappu Viswkarma', '1970-01-01', '1970-01-01', 4, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 03:40:27', 1, 0),
(896, '428', 'Dr.vijay Rajpoot ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 03:41:08', 1, 0),
(897, '428', 'Dr Tilak Raj Duaa', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 03:41:50', 1, 0),
(898, '428', 'Dr.usha Nema ', '1970-01-01', '1970-01-01', 2, 16, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 03:42:47', 1, 0),
(899, '428', 'Dr.b.d Malik', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 03:43:25', 1, 0),
(900, '428', 'Dr.manoj Tantway', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 03:44:34', 1, 0),
(901, '430', 'Dr.g.p.soni', '1970-01-01', '1970-01-01', 2, 17, 'Main market mangawan', 430, 23, 3479, 0, '', 'male', '30', 0, 0, '', '', '', '2020-01-09 06:06:07', 1, 5),
(902, '451', 'Mukesh Dudeja', '1970-01-01', '1970-01-01', 35, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 14:23:35', 1, 7),
(903, '430', 'Dr.pardyuman Shukla', '1970-01-01', '1970-01-01', 29, 17, 'Hospital campus maugunj ', 430, 23, 3477, 0, '', 'male', '30', 0, 0, '', '', '', '2020-01-09 14:29:25', 1, 5),
(904, '450', 'Dr Prasant Agrawal', '1970-01-01', '1970-01-01', 3, 9, 'Main market', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-09 17:04:31', 1, 6),
(905, '450', 'Bo Dr K C Sarkar', '1970-01-01', '1970-01-01', 2, 15, 'Main markit', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:34:54', 1, 6),
(906, '450', 'Bo Dr K L Jain ', '1970-01-01', '1970-01-01', 4, 15, 'Main markit', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:35:57', 1, 6),
(907, '450', 'Bo Dr Z H Mansuri', '1970-01-01', '1970-01-01', 2, 15, 'Main markit', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:36:57', 1, 6),
(908, '450', 'Bo Dr A K Shrivastav', '1970-01-01', '1970-01-01', 2, 15, 'Main markit', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:38:00', 1, 6),
(909, '450', 'Bo Dr Sukla', '1970-01-01', '1970-01-01', 2, 15, 'Main markit', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:38:46', 1, 6),
(910, '450', 'Bo Dr Patel', '1970-01-01', '1970-01-01', 4, 15, 'Main markit', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:39:45', 1, 6),
(911, '450', 'Bo Dr M K Jain', '1970-01-01', '1970-01-01', 2, 15, 'Main road', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:42:09', 1, 6),
(912, '450', 'Bo Dr S K Prajpati', '1970-01-01', '1970-01-01', 4, 15, 'Main road', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:43:14', 1, 6),
(913, '450', 'Bo Dr Mukesh Jain', '1970-01-01', '1970-01-01', 4, 15, 'Main road', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:44:16', 1, 6),
(914, '450', 'Bo Dr R K Pandit', '1970-01-01', '1970-01-01', 4, 15, 'Main road', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:45:06', 1, 6),
(915, '450', 'Bo Dr U S Patel', '1970-01-01', '1970-01-01', 4, 15, 'Main road', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:46:11', 1, 6),
(916, '450', 'Bo Dr Arjun Patel', '1970-01-01', '1970-01-01', 4, 15, 'Main market', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:47:27', 1, 6),
(917, '450', 'Bo Dr Amit Shrivastav', '1970-01-01', '1970-01-01', 4, 15, 'Main road', 450, 23, 3625, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-10 16:48:35', 1, 6),
(918, '451', 'F A Ansari', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-12 15:08:49', 1, 7),
(919, '451', 'Dr.abrar', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-13 16:55:52', 1, 11),
(920, '451', 'Dr A. Vishwas', '1970-01-01', '1970-01-01', 2, 17, 'Near Ratan chemist jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:21:43', 1, 10),
(921, '451', 'Dr Virendra Shivhare', '1970-01-01', '1970-01-01', 2, 17, 'Dear supatal leck garha jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:30:44', 1, 10),
(922, '451', 'Dr Gulam Varish', '1970-01-01', '1970-01-01', 2, 17, 'Near damohnaka jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:32:31', 1, 10),
(923, '451', 'Dr Dinesh Sarathe', '1970-01-01', '1970-01-01', 4, 17, 'Gwarighat jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:33:36', 1, 10),
(924, '451', 'Dr Kusum Lata Saxena', '1970-01-01', '1970-01-01', 49, 19, 'Near subhi medical jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-14 09:36:36', 1, 10),
(925, '451', 'Dr Tularam Ladhiya', '1970-01-01', '1970-01-01', 2, 17, 'Agachouk jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:40', 1, 10),
(926, '451', 'Dr Abha Gupta', '1970-01-01', '1970-01-01', 50, 18, 'Uday nursing home jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-14 09:47:00', 1, 10),
(927, '451', 'Dr M. Khan', '1970-01-01', '1970-01-01', 37, 17, 'Madartekri jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:53:35', 1, 10),
(928, '451', 'Dr B. P. Gupta', '1970-01-01', '1970-01-01', 2, 17, 'Bada patthar jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:50:04', 1, 10),
(929, '451', 'Dr V. Shrivastava', '1970-01-01', '1970-01-01', 2, 17, 'Bada patthar ranjhi jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:54:00', 1, 10),
(930, '451', 'Dr S. A. Khan', '1970-01-01', '1970-01-01', 2, 17, 'Damohnaka jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:54:54', 1, 10),
(931, '451', 'Dr S. Samaddar', '1970-01-01', '1970-01-01', 43, 33, 'Ranjhi jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 09:59:26', 1, 10),
(932, '451', 'Dr Sameer Agarwal', '1970-01-01', '1970-01-01', 43, 33, 'Labour chouk jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:00:40', 1, 10),
(933, '451', 'Dr A. K. Patel', '1970-01-01', '1970-01-01', 2, 17, 'Amanpur madanmahal jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:03:00', 1, 10),
(934, '451', 'Dr Anubhav Shrivasta', '1970-01-01', '1970-01-01', 39, 9, 'Madan mahal jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:05:24', 1, 10),
(935, '451', 'Dr Hemant Singh', '1970-01-01', '1970-01-01', 43, 33, 'Jabalpur hospital jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:08:29', 1, 10),
(936, '451', 'Dr R. K. Mishra', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:10:39', 1, 10),
(937, '451', 'Dr N. D. Singh', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:11:29', 1, 10),
(938, '451', 'Dr Vivek Mahobiya', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:14:19', 1, 10),
(939, '451', 'Dr Abhijeet Pal', '1970-01-01', '1970-01-01', 36, 37, 'Aarogya Hospital ranjhi jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:15:41', 1, 10),
(940, '451', 'Dr Amita Jain', '1970-01-01', '1970-01-01', 29, 18, 'Sanjeevni nagar jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-14 10:17:11', 1, 10),
(941, '451', 'Dr R. S. Patel ', '1970-01-01', '1970-01-01', 2, 17, 'Khobi gotegaon ', 452, 23, 3634, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:18:19', 1, 10);
INSERT INTO `doctors` (`doctor_id`, `doctor_hq`, `doctor_fullname`, `doctor_dob`, `doctor_marriage`, `doctor_qualification`, `doctor_specialization`, `doctor_address`, `doctor_city`, `doctor_state`, `doctor_subdistrict`, `doctor_villages`, `doctor_locality`, `doctor_gender`, `doctor_dailyopd`, `doctor_phone`, `doctor_mobile`, `doctor_info`, `doctor_email`, `doctor_website`, `cust_entrydt`, `doctor_status`, `emp_id`) VALUES
(942, '451', 'Dr Prashant Patel', '1970-01-01', '1970-01-01', 2, 17, 'Khobi gotegaon', 452, 23, 3634, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:19:09', 1, 10),
(943, '451', 'Dr M. La. Gupta', '1970-01-01', '1970-01-01', 2, 17, 'Kamti gotegaon', 452, 23, 3634, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:20:01', 1, 10),
(944, '451', 'Dr A. Saini', '1970-01-01', '1970-01-01', 2, 17, 'Sahajpur gotegaon', 452, 23, 3634, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:21:42', 1, 10),
(945, '451', 'Dr Prateek Jain', '1970-01-01', '1970-01-01', 2, 17, 'Shahpura gotegaon', 452, 23, 3634, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:22:33', 1, 10),
(946, '451', 'Dr Arun Gupta', '1970-01-01', '1970-01-01', 3, 9, 'Gotegaon ', 452, 23, 3634, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:23:29', 1, 10),
(947, '451', 'Dr J. P. Khare', '1970-01-01', '1970-01-01', 29, 17, 'Tendukheda ', 428, 23, 3460, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:24:34', 1, 10),
(948, '451', 'Dr Girin Kewat', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 428, 23, 3460, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:25:23', 1, 10),
(949, '451', 'Dr Sandeep Rajak', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda', 428, 23, 3460, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 10:26:40', 1, 10),
(950, '451', 'Dr M. Dengra', '1970-01-01', '1970-01-01', 10, 18, 'Ranital  jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-14 10:54:53', 1, 10),
(951, '451', 'A. P Mukherjee', '1970-01-01', '1970-01-01', 37, 33, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 14:12:38', 1, 7),
(952, '451', 'Rajesh Agrawal Jbp', '1970-01-01', '1970-01-01', 24, 14, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 14:18:47', 1, 7),
(953, '450', 'Dr Nevin Karn ', '1970-01-01', '1970-01-01', 36, 13, 'Rabar Factory Road ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-14 15:15:21', 1, 6),
(954, '451', 'Dr.ashit Guin', '1970-01-01', '1970-01-01', 36, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 04:51:41', 1, 11),
(955, '451', 'Dr Gopal Son', '1970-01-01', '1970-01-01', 2, 17, 'Ghamapur chouk jabalpur', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 09:07:32', 1, 10),
(956, '451', 'Dr Priyank Chaturvedi', '1970-01-01', '1970-01-01', 36, 37, 'Kanchghar jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 08:02:16', 1, 10),
(957, '451', 'Dr Devendra Shukla', '1970-01-01', '1970-01-01', 2, 17, 'Kanchghar jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 08:08:32', 1, 10),
(958, '451', 'Dr A. K. Shukla', '1970-01-01', '1970-01-01', 2, 17, 'Kanchghar jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 08:31:24', 1, 10),
(959, '451', 'Dr.m A Khan', '1970-01-01', '1970-01-01', 2, 17, 'Bahorabag', 451, 23, 0, 0, '', 'male', '', 0, 0, 'Near Dr.raza khan', '', '', '2020-02-07 04:52:02', 1, 14),
(960, '451', 'Dr Sunil Patel', '1970-01-01', '1970-01-01', 17, 30, 'Deen dayal chouk jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 09:19:01', 1, 10),
(961, '451', 'Dr Chintan Babele', '1970-01-01', '1970-01-01', 2, 17, 'Patan ', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 09:20:19', 1, 10),
(962, '451', 'Dr.gopal Sone', '1970-01-01', '1970-01-01', 2, 17, 'Bhantalaiya', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:51:46', 1, 14),
(963, '428', 'Dr.ashok Mishra', '1970-01-01', '1970-01-01', 2, 15, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 11:27:58', 1, 0),
(964, '428', 'Dr.vinod Kukreja ', '1970-01-01', '1970-01-01', 24, 14, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 11:29:04', 1, 0),
(965, '451', 'M Dengra', '1970-01-01', '1970-01-01', 0, 0, 'Ranital jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-15 16:07:05', 1, 14),
(966, '451', 'A.k Shukla', '1970-01-01', '1970-01-01', 2, 17, 'Sitlamai lalmati', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 16:22:03', 1, 14),
(967, '451', 'R.s.sharma', '1970-01-01', '1970-01-01', 35, 13, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-15 17:46:24', 1, 11),
(968, '451', 'Ranju Sakiya', '1970-01-01', '1970-01-01', 56, 33, 'Yadav colony jabalpur', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-16 11:07:51', 1, 10),
(969, '451', 'T. K. Sakiya', '1970-01-01', '1970-01-01', 29, 17, 'Yadav colony jabalpur', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-16 11:08:42', 1, 10),
(970, '451', 'Ashok Pandey', '1970-01-01', '1970-01-01', 2, 17, 'Suhagi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-16 11:36:04', 1, 14),
(971, '451', 'M K Patel', '1970-01-01', '1970-01-01', 29, 17, 'Suhagi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-16 11:38:09', 1, 14),
(972, '451', 'Sunil Jain', '1970-01-01', '1970-01-01', 2, 17, 'Suhagi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-16 11:39:40', 1, 14),
(973, '451', 'Bharadwaj', '1970-01-01', '1970-01-01', 2, 17, 'Suhagi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-16 11:41:08', 1, 14),
(974, '451', 'N.k Jhariya', '1970-01-01', '1970-01-01', 2, 17, 'Suhagi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-16 11:42:19', 1, 14),
(975, '451', 'Neelesh Jain', '1970-01-01', '1970-01-01', 2, 15, '', 456, 23, 3662, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-16 12:48:03', 1, 7),
(976, '430', 'Dr.s. Samadar', '1970-01-01', '1970-01-01', 2, 17, 'Near masjid Khatkhari', 430, 23, 3478, 0, '', 'male', '30', 0, 0, '', '', '', '2020-01-17 03:15:59', 1, 5),
(977, '430', 'Dr. R. S. Panday', '1970-01-01', '1970-01-01', 29, 0, 'Naighari', 430, 23, 3478, 0, '', 'male', '30', 0, 0, '', '', '', '2020-01-17 03:17:02', 1, 5),
(978, '451', 'Paras Thakur', '1970-01-01', '1970-01-01', 29, 17, 'Majhouli', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-17 13:16:39', 1, 14),
(979, '451', 'Kamlesh Sen', '1970-01-01', '1970-01-01', 2, 17, 'Majhouli', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-17 13:18:11', 1, 14),
(980, '451', 'A Samajpati', '1970-01-01', '1970-01-01', 2, 17, 'Majhouli', 451, 23, 3628, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-17 13:19:17', 1, 14),
(981, '451', 'Pinky Garg', '1970-01-01', '1970-01-01', 2, 17, 'Majhouli', 451, 23, 3628, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-17 13:25:10', 1, 14),
(982, '428', 'Dr.u.k Mandal', '1970-01-01', '1970-01-01', 3, 9, 'Gadakota', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 05:57:52', 1, 0),
(983, '428', 'Dr.bhupendra Jain ', '1970-01-01', '1970-01-01', 29, 0, 'Gadakota', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 05:58:39', 1, 0),
(984, '428', 'Dr.rajkumari Jain ', '1970-01-01', '1970-01-01', 10, 11, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 16:26:28', 1, 0),
(985, '428', 'Dr.sikharchand Jain ', '1970-01-01', '1970-01-01', 29, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 16:27:47', 1, 0),
(986, '428', 'Dr.m.l Chauda', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 16:28:59', 1, 0),
(987, '428', 'Dr.lakhan Lal Patel ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 16:29:49', 1, 0),
(988, '428', 'Dr.madhu Parihar ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 16:30:47', 1, 0),
(989, '451', 'Surendra Kumar Jain', '1970-01-01', '1970-01-01', 2, 17, 'Sehpura bhitoni', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-18 16:41:59', 1, 14),
(990, '451', 'Sunil Deorhiya', '1970-01-01', '1970-01-01', 4, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 8839763399, '', '', '', '2020-01-20 14:06:45', 1, 7),
(991, '451', 'Dipendra Biswas', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-20 14:07:59', 1, 7),
(992, '451', 'Ajit Jain', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-20 14:08:38', 1, 7),
(993, '451', 'Anuj Jain', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-20 14:09:19', 1, 7),
(994, '451', 'N. K Rai', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-20 14:10:01', 1, 7),
(995, '451', 'Chakraj Singer', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-20 14:11:02', 1, 7),
(996, '451', 'Ashish Agrawal', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, 'Gosalpur', '', '', '2020-01-20 14:14:01', 1, 7),
(997, '451', 'Rajesh Chaudhari', '1970-01-01', '1970-01-01', 4, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, 'Gosalpur', '', '', '2020-01-20 14:14:48', 1, 7),
(998, '451', 'P. K Rai', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, 'Gosalpur', '', '', '2020-01-20 14:15:31', 1, 7),
(999, '451', 'S.r Soni', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3632, 0, '', 'male', '', 0, 0, 'Gosalpur', '', '', '2020-01-20 14:16:20', 1, 7),
(1000, '451', 'Deepak Gaikwar', '1970-01-01', '1970-01-01', 29, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, 'Gosalpur', '', '', '2020-01-20 14:20:28', 1, 7),
(1001, '451', 'S.k Motwani', '1970-01-01', '1970-01-01', 2, 15, '', 0, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-20 14:20:09', 1, 7),
(1002, '451', 'Rakesh Shrivastava', '1970-01-01', '1970-01-01', 29, 17, 'Suhagi Patel nagar', 451, 23, 3632, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-21 16:54:18', 1, 14),
(1003, '451', 'Rajendra Kehri', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38512, '', 'male', '', 0, 0, '', '', '', '2020-01-23 14:21:48', 1, 7),
(1004, '451', 'Suraj Choksay', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38512, '', 'male', '', 0, 0, '', '', '', '2020-01-23 14:22:52', 1, 7),
(1005, '451', 'Vikram Jain', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38512, '', 'male', '', 0, 0, '', '', '', '2020-01-23 14:23:39', 1, 7),
(1006, '451', 'Ritesh Pandey', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38512, '', 'male', '', 0, 0, '', '', '', '2020-01-23 14:24:34', 1, 7),
(1007, '451', 'Manoj Soni', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38512, '', 'male', '', 0, 0, '', '', '', '2020-01-23 14:25:26', 1, 7),
(1008, '451', 'Urmila Chandravanshi', '1970-01-01', '1970-01-01', 29, 19, '', 451, 23, 3631, 38512, '', 'female', '', 0, 0, '', '', '', '2020-01-23 14:26:55', 1, 7),
(1009, '451', 'Narmada Yadav', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38512, '', 'male', '', 0, 0, '', '', '', '2020-01-23 14:27:52', 1, 7),
(1010, '451', 'Y D Paliwal', '1970-01-01', '1970-01-01', 2, 17, 'Garha', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-23 16:58:27', 1, 14),
(1011, '451', 'Ranjay Dwivedi', '1970-01-01', '1970-01-01', 2, 17, 'GARHA', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-23 16:59:56', 1, 14),
(1012, '451', 'Rashmi Dwivedi', '1970-01-01', '1970-01-01', 2, 17, 'GARHA', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-23 17:01:11', 1, 14),
(1013, '451', 'S M Siddhe', '1970-01-01', '1970-01-01', 2, 17, 'GARHA', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-23 17:02:26', 1, 14),
(1014, '451', 'Swati Dubey', '1970-01-01', '1970-01-01', 2, 17, 'GARHA', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-23 17:03:36', 1, 14),
(1015, '428', 'Vivek Chudhri', '1970-01-01', '1970-01-01', 3, 9, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-24 17:02:37', 1, 0),
(1016, '428', 'Sanjay Paliwal ', '1970-01-01', '1970-01-01', 3, 9, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-24 17:03:13', 1, 0),
(1017, '428', 'Ritesh Bajaj', '1970-01-01', '1970-01-01', 2, 31, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-24 17:05:49', 1, 0),
(1018, '428', 'Dr.surwanshi ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3454, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-24 17:12:28', 1, 0),
(1019, '450', 'Dr Hamansu Kushwaha ', '1970-01-01', '1970-01-01', 3, 9, 'Main road ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-24 17:23:42', 1, 6),
(1020, '450', 'Dr Arti Sondiya ', '1970-01-01', '1970-01-01', 10, 19, 'Govt Ho. Katni ', 450, 23, 3620, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-25 09:35:57', 1, 6),
(1021, '450', 'Dr Ronak Raj ', '1970-01-01', '1970-01-01', 3, 9, 'Heragang ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-25 14:42:40', 1, 6),
(1022, '451', 'Amita Jain', '1970-01-01', '1970-01-01', 37, 19, 'Sanjeevni Nagar jabalpur', 0, 23, 0, 0, '', 'female', '10', 0, 9893019576, '', '', '', '2020-02-07 07:04:54', 1, 4),
(1023, '451', 'Jigyasa Kher', '1970-01-01', '1970-01-01', 3, 9, 'Bilhari Jabalpur', 0, 0, 0, 0, '', 'female', '', 0, 8349417545, '', '', '', '2020-02-07 07:56:11', 1, 4),
(1024, '451', 'Rakesh Shrivastava', '1970-01-01', '1970-01-01', 29, 15, 'Patel Nagar Maharajpur ', 0, 0, 0, 0, '', 'male', '', 0, 9329507033, '', '', '', '2020-01-26 16:59:51', 1, 4),
(1025, '451', 'Swati Kurchaniya', '1970-01-01', '1970-01-01', 10, 19, 'Gadarwara', 451, 23, 0, 0, '', 'female', '20', 0, 9407806370, '', '', '', '2020-01-27 09:43:04', 1, 4),
(1026, '451', 'Anil Patel', '1970-01-01', '1970-01-01', 29, 15, 'Gadarwara', 451, 23, 3631, 0, '', 'male', '10', 0, 9617858088, '', '', '', '2020-01-27 09:49:50', 1, 4),
(1027, '451', 'H.s.sabbagh', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 05:00:27', 1, 11),
(1028, '451', 'Yousuf', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 05:00:24', 1, 11),
(1029, '450', 'Dr Sanat Tiwari ', '1970-01-01', '1970-01-01', 3, 9, 'Ganesh Chowk ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-28 14:11:44', 1, 6),
(1030, '428', 'Dr.v.k.raikwar', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-28 16:59:28', 1, 0),
(1031, '428', 'Dr.p.s. Thakur ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-28 17:00:24', 1, 0),
(1032, '451', 'M.k.panday', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 05:00:22', 1, 11),
(1033, '455', 'Rashmi Saxena', '1970-01-01', '1970-01-01', 2, 17, 'Narsinghpurnaka', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-29 07:58:21', 1, 13),
(1034, '455', 'Indra Thakur', '1970-01-01', '1970-01-01', 4, 17, 'Narsinghpurnaka', 455, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-01-29 07:59:10', 1, 13),
(1035, '455', 'Ajay Rathore', '1970-01-01', '1970-01-01', 36, 0, 'Narsinghpur. Naka', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-29 08:02:29', 1, 13),
(1036, '455', 'Umesh Kumar Nayak', '1970-01-01', '1970-01-01', 29, 0, '', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-29 08:53:21', 1, 13),
(1037, '451', 'Sobha Tiwari', '1970-01-01', '1970-01-01', 2, 0, '', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 05:00:08', 1, 11),
(1038, '451', 'Sobha Chudhry', '1970-01-01', '1970-01-01', 10, 0, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 05:00:04', 1, 11),
(1039, '451', 'A K Rajput', '1970-01-01', '1970-01-01', 2, 17, 'Sobhapur jabalpur', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-30 10:50:50', 1, 14),
(1040, '451', 'N.a Ansari', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 05:00:00', 1, 11),
(1041, '451', 'Hasib Khan', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:57', 1, 11),
(1042, '428', 'Dr.sanjay Paliwal ', '1970-01-01', '1970-01-01', 3, 9, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-30 16:18:52', 1, 0),
(1043, '428', 'Dr.sorabh Paliwal ', '1970-01-01', '1970-01-01', 29, 33, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-30 16:19:52', 1, 0),
(1044, '428', 'Dr.monika Paliwal ', '1970-01-01', '1970-01-01', 10, 0, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-30 16:20:23', 1, 0),
(1045, '451', 'Vinod Duvedi', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:49', 1, 11),
(1046, '455', 'Dr.usha Kiran Jain', '1970-01-01', '1970-01-01', 50, 16, '', 455, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-31 07:39:29', 1, 13),
(1047, '428', 'Dr.sanjay Mandal ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-31 18:30:55', 1, 0),
(1048, '428', 'Dr.m.s Chabra ', '1970-01-01', '1970-01-01', 3, 0, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-01-31 18:31:27', 1, 0),
(1049, '457', 'Dr.s Banauthe', '1970-01-01', '1970-01-01', 4, 15, 'Lanji', 457, 23, 3676, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 11:57:02', 1, 9),
(1050, '451', 'Dr.soni', '1970-01-01', '1970-01-01', 0, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:48:11', 1, 14),
(1051, '451', 'Alok Kashiv', '1970-01-01', '1970-01-01', 0, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:49:28', 1, 14),
(1052, '451', 'Ashwin Kashiv', '1970-01-01', '1970-01-01', 0, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:50:52', 1, 14),
(1053, '451', 'Depak Tignath', '1970-01-01', '1970-01-01', 53, 12, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:52:30', 1, 14),
(1054, '451', 'Preeti Singhai', '1970-01-01', '1970-01-01', 0, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:53:38', 1, 14),
(1055, '451', 'Paradkar', '1970-01-01', '1970-01-01', 0, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:54:24', 1, 14),
(1056, '451', 'Dr.jain', '1970-01-01', '1970-01-01', 1, 33, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:56:25', 1, 14),
(1057, '451', 'S K Agrwal', '1970-01-01', '1970-01-01', 0, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-02 16:57:27', 1, 14),
(1058, '451', 'Sareeta Agrwal', '1970-01-01', '1970-01-01', 0, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-02 16:58:32', 1, 14),
(1059, '451', 'Arun Kumar Jain', '1970-01-01', '1970-01-01', 29, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:47', 1, 11),
(1060, '451', 'Padma Panday', '1970-01-01', '1970-01-01', 10, 0, '', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:59:45', 1, 11),
(1061, '451', 'Vivek Diwan', '1970-01-01', '1970-01-01', 48, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:43', 1, 11),
(1062, '451', 'Devika Jain', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 04:59:34', 1, 11),
(1063, '451', 'Keerti Kumar Jain', '1970-01-01', '1970-01-01', 56, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:23', 1, 11),
(1064, '451', 'Madhu Rai', '1970-01-01', '1970-01-01', 3, 9, 'Bilhari Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 9981197557, '', '', '', '2020-02-07 07:04:36', 1, 4),
(1065, '452', 'D C Dubey', '1970-01-01', '1970-01-01', 29, 37, 'Naringpur', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 07:04:17', 1, 4),
(1066, '451', 'Mohit Ansari', '1970-01-01', '1970-01-01', 29, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:21', 1, 11),
(1067, '451', 'H S Verma', '1970-01-01', '1970-01-01', 17, 31, 'Madan Mahal Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 9425152470, '', '', '', '2020-02-07 07:07:11', 1, 4),
(1068, '451', 'A.k.bakshi', '1970-01-01', '1970-01-01', 27, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:18', 1, 11),
(1069, '451', 'A.k.patel', '1970-01-01', '1970-01-01', 27, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:16', 1, 11),
(1070, '451', 'Santosh Sahu', '1970-01-01', '1970-01-01', 27, 0, '', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:13', 1, 11),
(1071, '451', 'G C Dubey', '1970-01-01', '1970-01-01', 37, 12, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-03 16:02:34', 1, 14),
(1072, '451', 'Abhijit Nikhra', '1970-01-01', '1970-01-01', 37, 12, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-03 16:03:56', 1, 14),
(1073, '451', 'Kanchan Nikhra', '1970-01-01', '1970-01-01', 49, 18, 'Narsinghpur', 452, 23, 3636, 39732, '', 'female', '', 0, 0, '', '', '', '2020-02-03 16:05:48', 1, 14),
(1074, '451', 'Ratna Apte', '1970-01-01', '1970-01-01', 49, 19, 'Narsinghpur', 452, 23, 3636, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-03 16:07:23', 1, 14),
(1075, '451', 'Abhisekh Chandorkar', '1970-01-01', '1970-01-01', 35, 0, 'Narsinghpur', 452, 23, 3636, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-03 16:10:38', 1, 14),
(1076, '428', 'Dr.greesh Jain ', '1970-01-01', '1970-01-01', 29, 47, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-03 16:41:29', 1, 0),
(1077, '428', 'Dr.sateesh Singhai', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-03 16:43:02', 1, 0),
(1078, '428', 'Dr.pretam Sahu ', '1970-01-01', '1970-01-01', 2, 15, '', 428, 23, 3457, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-04 09:26:20', 1, 0),
(1079, '451', 'J.p Mukherjee', '1970-01-01', '1970-01-01', 37, 33, '', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-04 17:34:01', 1, 7),
(1080, '451', 'Vikaram Singh Chauhan', '1970-01-01', '1970-01-01', 37, 0, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 04:59:02', 1, 11),
(1081, '451', 'R.namdeo', '1970-01-01', '1970-01-01', 2, 17, 'Tendukheda Hospital', 428, 23, 3460, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-05 13:40:55', 1, 10),
(1082, '451', 'Chintan Babele', '1970-01-01', '1970-01-01', 2, 17, 'Patan ', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-05 13:41:51', 1, 10),
(1083, '451', 'O. P. Patel', '1970-01-01', '1970-01-01', 2, 17, 'Patan ', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-05 13:42:33', 1, 10),
(1084, '451', 'Ajay Sahu', '1970-01-01', '1970-01-01', 3, 9, 'Tendukheda', 428, 23, 3460, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-05 13:43:26', 1, 10),
(1085, '451', 'Dr Gupta', '1970-01-01', '1970-01-01', 29, 17, 'Tendukheda', 428, 23, 3460, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-05 13:46:06', 1, 10),
(1086, '451', 'Sharad Pandey', '1970-01-01', '1970-01-01', 2, 17, 'Patan ', 451, 23, 3629, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-05 13:48:23', 1, 10),
(1087, '451', 'Nisha Sahu', '1970-01-01', '1970-01-01', 10, 19, 'Jabalpur', 0, 0, 0, 0, '', 'female', '10', 9826480879, 9425867225, '', '', '', '2020-02-05 14:13:44', 1, 4),
(1088, '451', 'Sadhna Parihar', '1970-01-01', '1970-01-01', 29, 16, '', 451, 23, 3631, 38643, '', 'female', '', 0, 0, '', '', '', '2020-02-05 14:26:49', 1, 7),
(1089, '451', 'Jai Sahu', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38643, '', 'male', '', 0, 0, '', '', '', '2020-02-05 14:31:37', 1, 7),
(1090, '451', 'S.k Parihar', '1970-01-01', '1970-01-01', 37, 21, '', 451, 23, 3631, 38643, '', 'male', '', 0, 0, '', '', '', '2020-02-05 14:34:54', 1, 7),
(1091, '451', 'Prateek Jain', '1970-01-01', '1970-01-01', 2, 17, 'Shahpura', 451, 23, 3630, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-06 11:17:04', 1, 10),
(1092, '451', 'B. P. Gupta', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-06 11:50:49', 1, 10),
(1093, '451', 'V. Shrivastava', '1970-01-01', '1970-01-01', 2, 17, 'Ranjhi', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-06 11:51:34', 1, 10),
(1094, '451', 'Chitra Jain', '1970-01-01', '1970-01-01', 10, 18, 'Right town', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-06 12:59:49', 1, 4),
(1095, '451', 'Rashmi Kurariya', '1970-01-01', '1970-01-01', 10, 19, 'Madan mahal', 0, 23, 0, 0, '', 'female', '', 8319734113, 9425362970, '', '', '', '2020-02-07 07:08:21', 1, 4),
(1096, '451', 'Chitra Jain', '1970-01-01', '1970-01-01', 10, 11, 'Raight town', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-06 13:11:13', 1, 14),
(1097, '451', 'Rashmi Kurariya', '1970-01-01', '1970-01-01', 10, 11, 'Ranital', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-06 13:12:23', 1, 14),
(1098, '451', 'Manju Nayak', '1970-01-01', '1970-01-01', 10, 11, 'Jabalpur', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-06 13:13:48', 1, 14),
(1099, '451', 'Sarathe', '1970-01-01', '1970-01-01', 2, 17, 'Gwarighat', 451, 23, 3631, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-06 13:15:41', 1, 14),
(1100, '451', 'Surendra Pandey', '1970-01-01', '1970-01-01', 29, 15, 'Bilhari Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 9826341831, '', '', '', '2020-02-07 07:08:57', 1, 4),
(1101, '451', 'Ramesh Sulakiya', '1970-01-01', '1970-01-01', 2, 15, 'Bilhari Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 07:02:00', 1, 4),
(1102, '451', 'Rishabh Sulakiya', '1970-01-01', '1970-01-01', 2, 15, 'Bilhari Jabalpur', 0, 0, 0, 0, '', 'male', '', 0, 8770462065, '', '', '', '2020-02-07 07:09:33', 1, 4),
(1103, '451', 'Meera Singhai', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 08:36:33', 1, 7),
(1104, '451', 'Anuradha Dang', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-07 08:39:46', 1, 7),
(1105, '', 'B.k Dang', '1970-01-01', '1970-01-01', 44, 32, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-07 08:40:36', 1, 7),
(1106, '450', 'Sh Dr G D Sing ', '1970-01-01', '1970-01-01', 3, 9, 'Main road ', 460, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:08:56', 1, 6),
(1107, '450', 'Sh Dr S C Traphati ', '1970-01-01', '1970-01-01', 42, 15, 'Main Road ', 460, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:11:00', 1, 6),
(1108, '450', 'Sh Dr K N Mittal ', '1970-01-01', '1970-01-01', 36, 15, 'Gayatri Nagar ', 460, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:13:15', 1, 6),
(1109, '450', 'Sh Dr Reena Gutam ', '1970-01-01', '1970-01-01', 10, 19, 'Gayatri Nagar ', 460, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 10:17:15', 1, 6),
(1110, '450', 'Sh Dr Durga Saraf ', '1970-01-01', '1970-01-01', 10, 19, 'Main Road ', 460, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 10:18:21', 1, 6),
(1111, '450', 'Sh Dr N K Soni ', '1970-01-01', '1970-01-01', 24, 14, 'Near Govt Hospital ', 460, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:19:40', 1, 6),
(1112, '450', 'Sh Dr Mukund Chaturvedi ', '1970-01-01', '1970-01-01', 27, 15, 'Main Road ', 460, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:20:53', 1, 6),
(1113, '450', 'Sh Dr Manju Panday ', '1970-01-01', '1970-01-01', 10, 19, 'Gayatri Nagar ', 460, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 10:22:11', 1, 6),
(1114, '450', 'Sh Dr Rajesh Panday ', '1970-01-01', '1970-01-01', 42, 15, 'Gayatri Nagar ', 460, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:23:07', 1, 6),
(1115, '450', 'Sh Dr Arpana Namdev ', '1970-01-01', '1970-01-01', 10, 19, 'Gayatri Nagar ', 460, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 10:24:41', 1, 6),
(1116, '450', 'Sh Dr Satish Visandsani ', '1970-01-01', '1970-01-01', 27, 8, 'Main Road ', 460, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:26:38', 1, 6),
(1117, '450', 'Sh Dr Anupama Jain ', '1970-01-01', '1970-01-01', 10, 19, 'Main Road ', 460, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 10:29:47', 1, 6),
(1118, '450', 'Bu Dr S K Jain ', '1970-01-01', '1970-01-01', 27, 15, 'Near Govt Hospital ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:35:28', 1, 6),
(1119, '450', 'Bu Dr N K Agrwal ', '1970-01-01', '1970-01-01', 24, 15, 'Main Road ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:36:37', 1, 6),
(1120, '450', 'Bu Asha Jain ', '1970-01-01', '1970-01-01', 37, 19, 'Main Road ', 460, 23, 3691, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 10:37:44', 1, 6),
(1121, '450', 'Bu Dr Ashok Jain ', '1970-01-01', '1970-01-01', 37, 33, 'Main Road ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:38:59', 1, 6),
(1122, '450', 'Bu Dr Pyush Sing ', '1970-01-01', '1970-01-01', 27, 15, 'Secl Hospital ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:40:32', 1, 6),
(1123, '450', 'Bu Dr Sadaf Sing ', '1970-01-01', '1970-01-01', 27, 15, 'Secl Hospital ', 460, 23, 3691, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 10:41:42', 1, 6),
(1124, '450', 'Bu Dr Sanjay Kumar ', '1970-01-01', '1970-01-01', 24, 14, 'Secl Hospital ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:43:05', 1, 6),
(1125, '450', 'Bu Dr R C Jain ', '1970-01-01', '1970-01-01', 41, 31, 'Secl Hospital ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:44:34', 1, 6),
(1126, '450', 'Bu Dr C Dakate ', '1970-01-01', '1970-01-01', 27, 15, 'Main Road ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:46:13', 1, 6),
(1127, '450', 'Bu Dr Dhanandra Gajbhey ', '1970-01-01', '1970-01-01', 41, 31, 'Secl Hospital ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:48:23', 1, 6),
(1128, '450', 'Bu Dr S K Das ', '1970-01-01', '1970-01-01', 3, 9, 'Main Road ', 460, 23, 3691, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 10:49:19', 1, 6),
(1129, '450', 'Dr N P Tiwari ', '1970-01-01', '1970-01-01', 2, 15, 'Ganesh Chowk ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 11:13:15', 1, 6),
(1130, '450', 'Dr Sameer Choudhary ', '1970-01-01', '1970-01-01', 48, 33, 'Main Road ', 450, 23, 3620, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 11:25:32', 1, 6),
(1131, '450', 'Dr Neelam Soni ', '1970-01-01', '1970-01-01', 48, 33, 'Sahid Dwar ', 450, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-08 11:37:04', 1, 6),
(1132, '450', 'Dr Deeraj Kraplani ', '1970-01-01', '1970-01-01', 3, 9, 'Main Road ', 450, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-08 11:38:16', 1, 6),
(1133, '455', 'Ravi Tandeker', '1970-01-01', '1970-01-01', 12, 32, 'G Maha sale chhindwara', 455, 23, 3654, 0, '', 'male', '50', 0, 0, '', '', '', '2020-02-08 13:22:58', 1, 13),
(1134, '455', 'Dr.abhay Bapat', '1970-01-01', '1970-01-01', 29, 15, 'Shrivastava kaloni', 455, 23, 0, 0, '', 'male', '50', 0, 0, 'Govt hospital dr', '', '', '2020-02-10 14:17:50', 1, 13),
(1135, '455', 'Dr.ram Goneker', '1970-01-01', '1970-01-01', 2, 15, 'Infront of Govt hospital', 455, 23, 3654, 0, '', 'male', '10', 0, 0, '', '', '', '2020-02-10 14:34:34', 1, 13),
(1136, '455', 'Dr. Yogiraj Patle', '1970-01-01', '1970-01-01', 2, 15, 'Sanichra bazar Chhindwara', 0, 23, 0, 0, '', 'male', '10', 0, 0, 'Dr.s.k Bindra clinic', '', '', '2020-02-10 14:36:05', 1, 13),
(1137, '451', 'C.s Sahu', '1970-01-01', '1970-01-01', 36, 37, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:09:37', 1, 7),
(1138, '451', 'Amita Sahu', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 3631, 38504, '', 'female', '', 0, 0, '', '', '', '2020-02-10 15:10:33', 1, 7),
(1139, '451', 'B.g Vyas', '1970-01-01', '1970-01-01', 36, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:13:29', 1, 7),
(1140, '451', 'Kamal Paliwal', '1970-01-01', '1970-01-01', 36, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:14:24', 1, 7),
(1141, '451', 'H.m Bohara', '1970-01-01', '1970-01-01', 17, 31, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:16:05', 1, 7),
(1142, '', 'Muneeya . H Bohera', '1970-01-01', '1970-01-01', 36, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:17:28', 1, 7),
(1143, '451', 'Ashok Yadav', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:19:21', 1, 7),
(1144, '451', 'C.p Paliwal', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:20:21', 1, 7),
(1145, '451', 'Nitesh Raghuvanshi', '1970-01-01', '1970-01-01', 2, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:21:22', 1, 7),
(1146, '451', 'Ugal Vardhani', '1970-01-01', '1970-01-01', 36, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:23:04', 1, 7),
(1147, '451', 'K.g Birseni', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:25:11', 1, 7),
(1148, '451', 'Veena Baseni', '1970-01-01', '1970-01-01', 44, 19, '', 451, 23, 3631, 38504, '', 'female', '', 0, 0, '', '', '', '2020-02-10 15:28:42', 1, 7),
(1149, '451', 'R. C Meshwani', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:30:23', 1, 7),
(1150, '451', 'R.d Sham Meshwani', '1970-01-01', '1970-01-01', 29, 15, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:31:46', 1, 7),
(1151, '451', 'Tane Surjan', '1970-01-01', '1970-01-01', 36, 37, '', 451, 23, 3631, 38504, '', 'male', '', 0, 0, '', '', '', '2020-02-10 15:33:02', 1, 7),
(1152, '455', 'Dr.mohit Dehriya', '1970-01-01', '1970-01-01', 1, 8, 'Parasia', 455, 23, 3652, 0, '', 'male', '', 0, 0, 'Dr.praveen Soni clinic', '', '', '2020-02-12 13:31:28', 1, 13),
(1153, '455', 'Dr.rajkumar Rai', '1970-01-01', '1970-01-01', 2, 15, 'Parasia', 455, 23, 3652, 0, '', 'male', '', 0, 0, 'Hi\r\n\r\n', '', '', '2020-02-12 13:34:30', 1, 13),
(1154, '451', 'Swaraj Naik', '1970-01-01', '1970-01-01', 29, 11, 'Jabalpur ranital', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-12 16:17:34', 1, 14),
(1155, '451', 'Dany Naik', '1970-01-01', '1970-01-01', 29, 17, 'Ranital', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-12 16:19:10', 1, 14),
(1156, '451', 'Manju Sanghi', '1970-01-01', '1970-01-01', 49, 19, 'Jabalpur', 451, 23, 3631, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-12 16:21:42', 1, 14),
(1157, '428', 'Dr?sanjay Soni ', '1970-01-01', '1970-01-01', 4, 15, '', 428, 23, 3456, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-13 06:21:38', 1, 0),
(1158, '', 'Abha Gupta', '1970-01-01', '1970-01-01', 44, 18, 'Uday nursing home, ranital', 451, 23, 0, 0, '', 'female', '', 0, 0, '', '', '', '2020-02-14 05:18:10', 1, 10),
(1159, '451', 'Mukesh Dudeja', '1970-01-01', '1970-01-01', 36, 4, '', 451, 23, 0, 0, '', 'male', '', 0, 0, '', '', '', '2020-02-14 06:04:27', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_first_name` varchar(50) NOT NULL,
  `emp_middle_name` varchar(50) NOT NULL,
  `emp_last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_first_name`, `emp_middle_name`, `emp_last_name`) VALUES
(1, '0', '0', '0'),
(2, 'mayank', '', ''),
(3, 'mayank', '', ''),
(4, 'mayank', '', ''),
(5, 'mayank', '', ''),
(6, 'mayank', '', ''),
(7, 'mayank', '', ''),
(8, 'mayank', '', ''),
(9, 'dsdf', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'Member', 'general user');

-- --------------------------------------------------------

--
-- Table structure for table `group_perm`
--

CREATE TABLE `group_perm` (
  `id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `perm_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_perm`
--

INSERT INTO `group_perm` (`id`, `group_id`, `perm_id`) VALUES
(487, 31, 10),
(488, 31, 11),
(489, 31, 12),
(542, 32, 10),
(543, 32, 11),
(544, 32, 14),
(545, 33, 13),
(546, 33, 14),
(547, 33, 15),
(548, 33, 16),
(549, 0, 10),
(550, 0, 11),
(551, 0, 13),
(568, 0, 10),
(569, 0, 11),
(575, 35, 10),
(590, 38, 10),
(591, 38, 11),
(592, 38, 12),
(593, 41, 12),
(594, 41, 13),
(595, 41, 14),
(596, 43, 10),
(597, 43, 11),
(598, 43, 12),
(599, 44, 16),
(611, 45, 17),
(622, 46, 10),
(623, 46, 11),
(624, 47, 10),
(625, 47, 11),
(626, 48, 10),
(627, 48, 11),
(628, 48, 12),
(629, 48, 14),
(630, 49, 11),
(631, 49, 12),
(635, 50, 10),
(636, 50, 13),
(660, 51, 12),
(661, 51, 13),
(662, 51, 16),
(663, 51, 17),
(702, 52, 10),
(703, 52, 11),
(704, 52, 17),
(725, 53, 10),
(726, 53, 11),
(727, 53, 14),
(752, 54, 10),
(753, 54, 16),
(754, 54, 17),
(783, 55, 12),
(1031, 56, 10),
(1032, 56, 11),
(1033, 56, 12),
(1034, 56, 13),
(1035, 56, 14),
(1036, 56, 15),
(1037, 56, 16),
(1062, 57, 10),
(1109, 58, 10),
(1110, 58, 11),
(1111, 58, 12),
(1112, 58, 20),
(1134, 59, 10),
(1135, 59, 11),
(1136, 59, 12),
(1137, 59, 13),
(1138, 59, 14),
(1139, 59, 15),
(1383, 60, 136),
(1384, 60, 148),
(1385, 60, 149),
(1386, 60, 150),
(1398, 2, 119),
(1399, 2, 120),
(1400, 2, 123),
(1401, 2, 124),
(1402, 2, 135),
(1403, 2, 136),
(1404, 2, 145),
(1405, 2, 146),
(1406, 2, 148),
(1407, 2, 149),
(1408, 2, 150),
(1409, 1, 119),
(1410, 1, 120),
(1411, 1, 123),
(1412, 1, 124),
(1413, 1, 125),
(1414, 1, 126),
(1415, 1, 127),
(1416, 1, 137),
(1417, 1, 138),
(1418, 1, 139),
(1419, 1, 140),
(1420, 1, 141),
(1421, 1, 142),
(1422, 1, 143),
(1423, 1, 144),
(1424, 1, 145),
(1425, 1, 146),
(1426, 1, 148),
(1427, 1, 149),
(1428, 1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `perm_id` int(10) UNSIGNED NOT NULL,
  `perm_name` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` text,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perm_id`, `perm_name`, `menu_name`, `slug`, `level`, `parent_id`, `url`, `icon`, `created_at`, `updated_at`) VALUES
(119, 'Dashboard', 'head', 'dashboard', 0, 0, 'dashboard/index', '<i class=\"fa fa-tachometer-alt\"></i>', '2020-05-19 12:19:15', '0000-00-00 00:00:00'),
(120, 'Users', 'head', 'users', 0, 0, '', '<i class=\"fa fa-users\"></i>', '2020-03-26 07:03:54', '0000-00-00 00:00:00'),
(123, 'Roles & Permissions', 'head', 'roles-permissions', 0, 0, '', '<i class=\"fa fa-users-cog\"></i>', '2020-03-26 07:04:57', '0000-00-00 00:00:00'),
(124, 'View Groups', 'sub', 'view-groups', 1, 123, 'users/User_groups', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:32:28', '0000-00-00 00:00:00'),
(125, 'Create Groups', 'sub', 'create-groups', 1, 123, 'users/User_groups/create_group', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:32:16', '0000-00-00 00:00:00'),
(126, 'Permissions', 'sub', 'permissions', 1, 123, 'users/permissions', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 07:11:07', '0000-00-00 00:00:00'),
(127, 'Email Members', 'head', 'email-members', 0, 0, 'users/email/email_members', '<i class=\"fa fa-envelope\"></i>', '2020-03-26 07:03:27', '0000-00-00 00:00:00'),
(136, 'Profile', 'head', 'profile', 0, 0, 'users/Profile', '<i class=\"typcn user tx-white mg-r-10\"></i>', '2020-03-22 09:49:27', '0000-00-00 00:00:00'),
(137, 'Setup', 'head', 'setup', 0, 0, '', '<i class=\"fa fa-cog\" aria-hidden=\"true\"></i>', '2020-03-26 06:46:17', '0000-00-00 00:00:00'),
(138, 'General', 'sub', 'general', 1, 137, 'site_config', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:39:03', '0000-00-00 00:00:00'),
(139, 'Login', 'sub', 'login', 1, 137, 'site_config/Login_setup', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:39:19', '0000-00-00 00:00:00'),
(140, 'Social Login', 'head', 'social-login', 0, 0, '', '<i class=\"fa fa-thumbs-up\" aria-hidden=\"true\"></i>', '2020-03-26 06:48:53', '0000-00-00 00:00:00'),
(141, 'Facebook Config', 'sub', 'facebook-config', 1, 140, 'site_config/fb_config', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:40:06', '0000-00-00 00:00:00'),
(142, 'Google Config', 'sub', 'google-config', 1, 140, 'site_config/google_config', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:40:30', '0000-00-00 00:00:00'),
(143, 'Instagram Config', 'sub', 'instagram-config', 1, 140, 'site_config/insta_config', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:40:47', '0000-00-00 00:00:00'),
(144, 'Linkedin Config', 'sub', 'linkedin-config', 1, 140, 'site_config/linkedin_config', '<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>', '2019-10-10 05:41:04', '0000-00-00 00:00:00'),
(145, 'Backup & Export Users', 'head', 'backup-export-users', 0, 0, 'site_config/backup', '<i class=\"fa fa-download\" aria-hidden=\"true\"></i>', '2020-03-26 06:50:06', '0000-00-00 00:00:00'),
(146, 'Documentation', 'head', 'documentation', 0, 0, 'userguide', '<i class=\"fa fa-file-alt\" aria-hidden=\"true\"></i>', '2020-03-26 06:51:19', '0000-00-00 00:00:00'),
(148, 'Employee', 'head', 'employee', 0, 0, '', '<i class=\"fa fa-user-tie\" aria-hidden=\"true\"></i>', '2020-03-26 06:56:26', '0000-00-00 00:00:00'),
(149, 'Employee List', 'sub', 'employee list', 1, 148, 'employee', '', '2020-03-23 13:49:36', '0000-00-00 00:00:00'),
(150, 'Employee Registraion', 'sub', 'employee registration', 1, 148, 'employee/registration', '', '2020-03-23 13:54:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `registration_status` tinyint(4) NOT NULL,
  `forgot_pass_status` tinyint(4) NOT NULL,
  `socail_login_status` tinyint(4) NOT NULL,
  `two_factor_auth` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `registration_status`, `forgot_pass_status`, `socail_login_status`, `two_factor_auth`) VALUES
(1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `task_img` text,
  `task_status` varchar(255) NOT NULL,
  `completed_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `description`, `task_img`, `task_status`, `completed_status`, `created_at`, `updated_at`) VALUES
(2, 'Aut voluptate assume', 'Suscipit ea voluptas', 'http://localhost/flatlab/uploads/task_images/7-ARISTOCRAT_HELIX_LOGIC_01.jpg', 'completed', 1, '2019-07-26 13:26:47', '2019-07-19 12:32:39'),
(8, 'sdfsd', 'sdfsdfsdf', 'http://localhost/login/uploads/task_images/1.jpg', 'completed', 1, '2019-07-30 13:12:09', '2019-07-26 10:43:30'),
(9, 'abdul', 'basit', 'http://localhost/login/uploads/task_images/44106497_1968762883211385_9032143776256098304_n.jpg', 'inprogress', 0, '2019-07-30 10:13:47', '2019-07-30 10:13:47'),
(11, 'sfjsdlkj', 'ljskldfjslkdf', 'http://localhost/login/uploads/task_images/43818242_1254830074669033_4818334841316329129_n.jpg', 'completed', 1, '2019-07-30 13:12:00', '2019-07-30 10:11:54'),
(12, 'gfhg', 'fhgfhgfh', 'http://localhost/login_guffy_new/uploads/task_images/doctor2.jpg', 'inprogress', 0, '2020-03-26 00:16:12', '2020-03-26 00:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` varchar(255) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `bio` text NOT NULL,
  `user_img` text NOT NULL,
  `verification_code` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `date`, `bio`, `user_img`, `verification_code`) VALUES
(1, '', '::1', 'administrator', '$2y$12$y2Aqzx85jLC.z3jo53C0d.6fRzwmrL2.Ccz122UXAAgKzAGYrtzsq', NULL, 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1551200379, '1590064024', 1, 'admin', 'panel', 'parexons', '0809809809', '2019-02-26', '', 'img1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_settings`
--
ALTER TABLE `blog_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_perm`
--
ALTER TABLE `group_perm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perm_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `blog_settings`
--
ALTER TABLE `blog_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1160;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_perm`
--
ALTER TABLE `group_perm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1429;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
