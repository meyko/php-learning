-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 29 2016 г., 00:05
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `myfirstshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `families`
--

CREATE TABLE IF NOT EXISTS `families` (
  `type` int(11) NOT NULL,
  `family` varchar(70) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `families`
--

INSERT INTO `families` (`type`, `family`, `category_name`) VALUES
(208, 'футболка', 'Футболки'),
(308, 'юбка', 'Юбки'),
(328, 'джинсы', 'Джинсы'),
(439, 'платье', 'Платья'),
(642, 'ботинки', 'Обувь');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page` varchar(50) NOT NULL,
  `page_name` varchar(50) NOT NULL,
  PRIMARY KEY (`page`),
  UNIQUE KEY `page_name` (`page_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`page`, `page_name`) VALUES
('add_admin', 'add_admin_controller.php'),
('add_product', 'add_product_controller.php'),
('autorization', 'autorization_controller.php'),
('category', 'category_contoller.php'),
('change_settings', 'change_settings_controller.php'),
('delete_admin', 'delete_admin_controller.php'),
('delete_product', 'delete_product_controller.php'),
('edit_product', 'edit_product_controller.php'),
('main', 'main_view_controller.php'),
('page', 'page_controller.php'),
('personal_cabinet', 'personal_cabinet_controller.php'),
('product', 'product_view_contoller.php'),
('registration', 'registration_controller.php');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `type` int(11) NOT NULL,
  `content` text NOT NULL,
  `header` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `date`, `type`, `content`, `header`) VALUES
(1, '2016-02-15 08:00:00', 2, '<div dir="ltr" style="text-align: left;" trbidi="on">\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="262" src="https://2.bp.blogspot.com/-BwAq7f96sco/VsgsQN8r7lI/AAAAAAAAAmQ/oJUb2SwV-DM/s640/1.jpg" width="640" /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<span style="font-size: large;"></span><br />\n<h3 style="text-align: center;">\n<span style="font-size: large;">\nФИНАЛЬНЫЕ ЦЕНЫ В PARFOIS</span></h3>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">Покупайте бижутерию по 49, 79 и 99 грн., Сумки по 299, 399 и 499 грн. Спешите, количество товаров ограничено.&nbsp;</span></div>\n<span style="font-size: large;">\n</span><br />\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Акция действует с 17.02 по 29.02.2016 во всех магазинах Parfois&nbsp;</span></div>\n</div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n</div>\n<div>\n<br /></div>\n<div>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="http://4.bp.blogspot.com/-xm452tKoIOA/VsgsQMStSPI/AAAAAAAAAmU/PYTmPobY5j8/s1600/2.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="640" src="https://4.bp.blogspot.com/-xm452tKoIOA/VsgsQMStSPI/AAAAAAAAAmU/PYTmPobY5j8/s640/2.jpg" width="640" /></a></div>\n<br />\n<h3 style="text-align: justify;">\n<span style="font-size: large;">И снова WALKER продолжает аттракцион невиданной щедрости:</span></h3>\n<div style="text-align: justify;">\n<span style="font-size: large;">Не пропустите!с 15 по 29 февраля -20% от последней цены с распродажи во всех магазинах<b> WALKER</b>!&nbsp;</span></div>\n</div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="556" src="https://4.bp.blogspot.com/-FqJQazlkoJM/VsgsP1mm4DI/AAAAAAAAAmA/9ly3Vb7FDWI/s640/3.jpg" width="640" /></div>\n<h3 style="text-align: left;">\n<span style="font-size: large;"><div style="text-align: center;">\n<br />\nВыгодное предложение сети СТОЛИЧНОЙ Ювелирной Фабрики!</div>\n</span></h3>\n<div>\n<span style="font-size: large;">Внимание! Количество комплектов ограничено.Комплект из золотой цепочки и нательного креста по специальной цене 1700 грн. Акция действительна до конца месяца.</span></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-ynbjvLqi8HI/VsgsQFT7SsI/AAAAAAAAAmE/0qoaSHAgi-s/s640/4.jpg" width="560" /></div>\n<h3 style="text-align: left;">\n<div style="text-align: center;">\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;"><div style="text-align: center;">\nПоследние дни распродажи в магазинах SPRINGFIELD! 10-18.02</div>\n</span></h3>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="http://1.bp.blogspot.com/-ygqANeZwK4g/VsgsP6N_CVI/AAAAAAAAAmc/aSo2LU6RsW0/s1600/5.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="320" src="https://1.bp.blogspot.com/-ygqANeZwK4g/VsgsP6N_CVI/AAAAAAAAAmc/aSo2LU6RsW0/s320/5.jpg" width="320" /></a></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div>\n<h3 style="text-align: center;">\n<span style="font-size: large;">&nbsp;Весна в Marc &amp; Andre </span></h3>\n<div>\n<span style="font-size: large;">Рады сообщить вам про Весеннюю акцию, которая продлится с 20 февраля по 8 марта!&nbsp;</span></div>\n<span style="font-size: large;">Каждая леди и прекрасная дама при покупке на сумму от 1500 грн., не считая положительных эмоций от шопинга, получает подарочную карту на 150 грн. Больше сумма покупки - более подарочных карт! Картами можно воспользоваться при осуществлении следующей покупки с 20 февраля по 8 марта 2016</span></div>\n<div>\n<span style="font-size: large;">Подробности акции уточняйте у сотрудников магазина.</span><br />\n<div>\n<br /></div>\n</div>\n</div>\n', 'Скидки в Киеве: 15-21 февраля 2016'),
(2, '2016-02-02 00:00:00', 1, '<div dir="ltr" style="text-align: left;" trbidi="on">\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="что такое флэтформы фото" border="0" height="600" src="https://1.bp.blogspot.com/-N4_OKTygWE8/VsXUqmdQ4uI/AAAAAAAAAjw/RFC-Y-9cyq0/s640/17.jpg" title="что такое флэтформы фото" width="640" /></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><b>Какие планы на весну-лето 2016? Продолжаем вспоминать 90-е и носить «хорошо забытое старое» в духе времени - в самых неожиданных сочетаниях</b>.</span></div>\n<span style="font-size: large;"><div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nПо-прежнему на пике <b>флэтформы</b>. Именно так называется модная сейчас обувь на толстой подошве - платформе. Их ещё называют криперы, хотя криперы &nbsp;- это закрытая обувь, а флетформы могут быть как сандалиями, так и сапогами. И вы уже наверняка видели множество их вариаций.</div>\n<div style="text-align: justify;">\n<br /></div>\n</span><div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://4.bp.blogspot.com/-jzVf-TwjkKs/VsXUkaFpO0I/AAAAAAAAAjo/aYceX9Gvosg/s640/10.jpg" width="424" /></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Чем хороши эти ультрамодные босоножки на высокой и плоской подошве? Они запросто прибавят вам от 3 до 10 сантиметров роста. При этом ноги в них устают не так сильно, как на шпильках, потому что нет такого сильного изгиба стопы. Хотя мой вам совет: все равно лучше пройдитесь туда-сюда дома перед зеркалом, прежде чем в первый раз выйти в них на улицу. Подошва у них не такая гибкая, как у любой другой обуви, и потому требует небольшой привычки, чтобы уверенно на них балансировать.&nbsp;</span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Ну а чтобы носить флэтформы было совсем просто, носите на каждый день модели с более легкой подошвой. Ультрамодные модели с тяжелой деревянной подошвой оставьте для случаев, когда вы выходите ненадолго, но вам надо выйти так, чтоб вас все увидели и запомнили.</span></div>\n<span style="font-size: large;"><div style="text-align: justify;">\n<br /></div>\n<br /></span><h3 style="text-align: center;">\n<span style="font-size: large;">С ЧЕМ НОСИТЬ ФЛЭТФОРМЫ?</span></h3>\n<span style="font-size: large;"><div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="480" src="https://2.bp.blogspot.com/-a4F3m431GgU/VsXU8FpaNdI/AAAAAAAAAj0/n_aDKBHBXD4/s640/18.jpg" width="640" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<b>С чем же носить флэтформы?</b> <b>Здесь все вообще просто. С чем угодно! Ваши ассоциации с 90-ми. Что это было? Протест, панк, блестки, объем... Экспериментируйте!&nbsp;</b></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nДизайнеры нам для этого на грядущий сезон все продумали, придумали и предложили на полках любимых магазинов. <b>Chanel</b> даже выпустили флэтформы с шипами и цепями еще в прошлом сезоне, и только сейчас "мода дошла до нас"</div>\n<div style="text-align: justify;">\n.</div>\n<div style="text-align: justify;">\nНе менее интересные варианты ищите у   <b>Louis Vuitton</b>, <b>Stella McCartney</b>, <b>Michael Kors</b>, <b>Giambattista Valli</b>, <b>Burberry</b>, <b>Dries Van Noten</b> и, в конце-то концов, даже у <b>Versace</b>. Форма, принт и текстура на любой вкус гарантированы.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nИ действительно: за счет того, что флэтформы в линейках брендов представлены уже очень широко и в самых разных стилях, в этом сезоне сочетать их будет одно удовольствие.&nbsp;</div>\n<div style="text-align: justify;">\nОни есть пластиковые, кожаные, тканевые, из природных материалов. Предпочитаете вы спортивный стиль или романтичный, строгие силуэты или небрежные – вы всё равно найдете свою пару.</div>\n<div style="text-align: justify;">\n<br /></div>\n<!--more--><br /><br /><h4 style="text-align: center;">\nЛуки с флэтформами - с чем их носят блоггеры</h4>\n<div style="text-align: center;">\n<i>Даем несколько примеров безотказных сочетаний.</i></div>\n<div style="text-align: center;">\n<br /></div>\n<br /><div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-ruBxox0hcEk/VsXVC74Fg8I/AAAAAAAAAj4/8pUSzMJbuzY/s640/1.jpg" width="428" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-zb6Vhygl2dc/VsXVCwl06XI/AAAAAAAAAj8/oQ7FNza8QII/s640/2.jpg" width="426" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n&nbsp;<b>Флэтформы отлично сочетаются с самыми разными юбками</b>: мини, миди, макси, даже ассиметрия. Не обращайте внимания на то, что обувь немного массивна. Прелесть её в том, что она придает вашему образу не грубости, а загадочного восточного колорита. Флэтформы внешне действительно немного напоминают обувь гейш, а что может быть женственнее?</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="флетформы с платьем" border="0" height="640" src="https://4.bp.blogspot.com/-mT71_ygFYms/VsXVtgnYnSI/AAAAAAAAAkI/3puTOm6s74M/s640/3.jpg" title="флетформы с платьем" width="426" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<b>Естественно, раз эти босоножки на платформе носят с юбками, то они сочетаются и с платьями</b>. Яркий летний лук можно создать в сочетании с платьями с принтами. Необычный, смелый, но в то же время сдержанный лук получается в сочетании с однотонным прямым платьем-футляром или платьем-трапецией. А это уже отличный вариант для офиса и деловых встреч.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-MGFL5TSKPXY/VsXWQ7ViA8I/AAAAAAAAAkQ/pRHIJVhDy6w/s640/4.jpg" width="538" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<b>Флэтформы и кюлоты тоже в паре дают интересный эффект.</b> Все зависит от общего образа. Носите кюлоты из классических материалов - и можно так отправиться в офис, выберите небрежный крой -  получайте стильный кэжуал-лук.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-dG0qqGNs9uM/VsXWi2JoRkI/AAAAAAAAAkk/fE1cTD0iWp8/s640/7.jpg" width="360" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<b>Отдельная тема – это флэтформы и деним</b>. Начнем с варианта в сочетании с шортами. Если ваши ножки позволяют, носите! Кстати, если носить шорты с завышенной талией, а босоножки - оттенка nude, то можно здорово визуально удлинить ноги. Вместо шорт так же круто может смотреться и комбинезон.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n</span></div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="https://3.bp.blogspot.com/-F9al9Yq3DwM/VsXWWoMuM6I/AAAAAAAAAkU/sjtCSvpx92E/s1600/6.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="640" src="https://3.bp.blogspot.com/-F9al9Yq3DwM/VsXWWoMuM6I/AAAAAAAAAkU/sjtCSvpx92E/s640/6.jpg" width="502" /></a></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><b>Удобный кэжуал можно получить, надев с босоножками-флетформами скинни или свободные джинсы с отворотом.</b></span></div>\n<span style="font-size: large;"><div style="text-align: justify;">\nНаверх можно надевать &nbsp;как свободные топы, майки, футболки, так и приталенные. Топы с открытым животом также остаются в тренде.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="https://3.bp.blogspot.com/-Xa0VEaa2uU0/VsXWg4thGVI/AAAAAAAAAkg/gwa8iC5Nzsk/s1600/8.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img alt="криперы с платьем" border="0" height="640" src="https://3.bp.blogspot.com/-Xa0VEaa2uU0/VsXWg4thGVI/AAAAAAAAAkg/gwa8iC5Nzsk/s640/8.jpg" title="криперы с платьем" width="426" /></a></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<b>Массивная обувь разрешает массивные аксессуары в</b> <a href="http://www.blog-moda.ru/2015/08/stil-boho-v-odejde-2015-2016-foto.html"><b><span style="color: #e06666;">стиле бохо</span></b></a>: <b>крупные украшения, шарфы, шляпы</b>. Просто соблюдайте стиль: босоножки-бохо будут хорошо сочетаться с сумкой с бахромой, а пластик - с геометричными деталями.</div>\n<div style="text-align: justify;">\n<span style="text-align: center;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="text-align: center;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="text-align: center;">&nbsp;</span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="флэтформы" border="0" height="375" src="https://2.bp.blogspot.com/-nHTqQMELud8/VsXXOWeZWRI/AAAAAAAAAk4/VhAO43fN7RA/s640/5.jpg" title="флэтформы" width="640" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nВ общем, все довольно просто. Поэтому, кто ещё не успел приобрести модную пару на платформе, смело отправляйтесь за покупками. В сезоне весна-лето 2016 обувь на толстой ровной подошве -  уже однозначный must-have. А с чем флэтформы носить - вы в своем шкафу и так найдете. Ну а если не найдете, то, будем считать, что шоппинга много не бывает.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<b>Напоследок, еще немного фото на тему - с чем можно носить флетформы.</b></div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="с чем носить флетформы" border="0" height="640" src="https://2.bp.blogspot.com/-BW5-1oFxt1M/VsXXkYhl7CI/AAAAAAAAAlg/PRjqt_thVng/s640/9.jpg" title="с чем носить флетформы" width="424" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://1.bp.blogspot.com/-mwi0czD81sM/VsXXiGbEPTI/AAAAAAAAAlE/kkeS8HG3Dl0/s640/11.jpg" width="428" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="426" src="https://1.bp.blogspot.com/-IXKDOPoEt-g/VsXXiOKDt0I/AAAAAAAAAlA/yA5TWZqQCT4/s640/12.jpg" width="640" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://3.bp.blogspot.com/-SIz_mirteto/VsXXiXQp61I/AAAAAAAAAlM/0pbjSAYjhK8/s640/13.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://3.bp.blogspot.com/-AhgYnbgYPDs/VsXXitJwKLI/AAAAAAAAAlQ/nMb7iyTM4ts/s640/14.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://4.bp.blogspot.com/-ddcH3T5tdOU/VsXXjnenzhI/AAAAAAAAAlU/ZGpF9_Wr7Wk/s640/15.jpg" width="374" /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-nzRCsGNfCwQ/VsXUn3mBm7I/AAAAAAAAAkA/VvPGOHNJOc8/s640/16.jpg" width="426" /></div>\n</span></div>\n</div>\n', ' С чем носить флетформы - модную обувь на толстой подошве'),
(5, '2016-02-16 08:00:00', 2, '<div dir="ltr" style="text-align: left;" trbidi="on">\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="320" src="https://1.bp.blogspot.com/-ikyCI8SzWGw/Vr8Z2QbBvdI/AAAAAAAAD2w/MWwEsncUgpQ/s320/1.jpg" width="320" /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Внимание! Специальное предложение ко Дню Св. Валентина во всех магазинах <b>COLIN''S</b> - сделайте покупки с 11.02 по 14.02.2016 включительно, и получите мгновенную скидку! Порадуйте себя и свою половинку ко Дню Влюбленных.Основные условия специального предложения:</span></div>\n<div style="text-align: justify;">\n<ol>\n<li><span style="font-size: large;">За каждые 1500 грн Вы моментально получаете скидку 300 грн.</span></li>\n<li><span style="font-size: large;">Возврат и обмен товара, приобретенный со скидкой осуществляется в соответствии с законодательством</span></li>\n<li><span style="font-size: large;">Скидкой по Глобальной карте можно воспользоваться только к сумме 1500, более 1500 грн действовать специальное предложение;&nbsp;</span></li>\n</ol>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div>\n<span style="font-size: large;"><br /></span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="400" src="https://2.bp.blogspot.com/-HXHHclb5Jpo/Vr8Z9oLyNQI/AAAAAAAAD20/Yo9Xjw-UscI/s320/2.jpg" width="400" /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n</div>\n<div style="text-align: justify;">\n<span style="font-size: large;">День именинника Февраля в Grandi Firme!BigSale в <b>LuckyLOOK</b>! Скидки на любимые модели до 50%. Последний шанс приобрести модные шапки, шарфы и перчатки по супер-ценам от 199 грн!</span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-rS1RxbYo78U/Vr8aLvTTK8I/AAAAAAAAD24/DVaVeqWlY7s/s640/3.jpg" width="562" /></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">&nbsp;Последние дни распродажи в магазинах <b>SPRINGFIELD</b>! 10-18.02 .</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://2.bp.blogspot.com/-YrHpoWFtt94/Vr8aYd1-AzI/AAAAAAAAD28/RAqoAE1TgSY/s1600/6.jpg" width="640" /></div>\n<span style="font-size: large;"><br /></span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Ко Дню Влюбленных <b>Women''secret</b> дарит скидку 30% на соблазнительное белье из новой коллекции!Его сердце будет биться чаще;)</span></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="https://2.bp.blogspot.com/-ZAE11R5iAp8/Vr8axI1l8lI/AAAAAAAAD3s/p1rkYGW7AVM/s1600/4.jpg" imageanchor="1"><img border="0" height="220" src="https://2.bp.blogspot.com/-ZAE11R5iAp8/Vr8axI1l8lI/AAAAAAAAD3s/p1rkYGW7AVM/s1600/4.jpg" width="400" /></a></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<a href="http://2.bp.blogspot.com/-diFJKLPoXic/Vr8bvqYCsXI/AAAAAAAAD4Y/6QFacIkksiE/s1600/5.jpg" imageanchor="1"><img border="0" height="400" src="https://2.bp.blogspot.com/-diFJKLPoXic/Vr8bvqYCsXI/AAAAAAAAD4Y/6QFacIkksiE/s400/5.jpg" width="400" /></a></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><b>Grandi Firme</b> поздравляет всех именинников февраля с Днём Рождения и предоставляет для Вас и Ваших друзей дополнительную скидку +10%, которая суммируется с распродажей до 80% только с 9 по 11 февраля.</span><br />\n<span style="font-size: large;">А распродажа до 80% в Grandi Firme на весь ассортимент только с 5 по 25 февраля.</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="https://4.bp.blogspot.com/-LitQ0fA_nQY/Vr8axnxThZI/AAAAAAAAD4M/k1WiFL02Ccc/s1600/7.jpg" imageanchor="1"><img border="0" height="400" src="https://4.bp.blogspot.com/-LitQ0fA_nQY/Vr8axnxThZI/AAAAAAAAD4M/k1WiFL02Ccc/s1600/7.jpg" width="400" /></a></div>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;">С 12 по 14 февраля в магазине <b>LACOSTE </b>-10% дополнительно на сезонную распродажу!&nbsp;</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"></span><br />\n<!--more--><br /><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://3.bp.blogspot.com/-a1lNK-F8yRs/Vr8ax8kzgwI/AAAAAAAAD4M/rgb5A93qnLw/s400/9.jpg" width="640" /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<span style="font-size: large;"><b>OSTIN</b> дарит 20% на покупку в День всех влюбленных! Только 13 и 14 февраля 2016 во всех магазинах «O''STIN» и двух магазинах «O''STIN ДИСКОНТ», осуществив покупку 2-х и более товаров Вы можете получить скидку 20% на каждую единицу в Вашем чеке.</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="https://3.bp.blogspot.com/-oJeUrcJYHGM/Vr8axtK_AQI/AAAAAAAAD4M/4LHFYtjrhrQ/s1600/8.jpg" imageanchor="1"><img border="0" height="640" src="https://3.bp.blogspot.com/-oJeUrcJYHGM/Vr8axtK_AQI/AAAAAAAAD4M/4LHFYtjrhrQ/s320/8.jpg" width="444" /></a></div>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;">Скидки до -50% на украшения Les Nereides! Большой зимний распродажа французских украшений бренда Les Nereides ждет Вас до 16 февраля! Любимые коллекции можно приобрести со скидками 40% и 50%.&nbsp;</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<div class="separator" style="clear: both; text-align: center;">\n<a href="https://3.bp.blogspot.com/-qubXrbFweBU/Vr8awIoYaBI/AAAAAAAAD4M/pxbO7SUOsao/s1600/10.jpg" imageanchor="1"><img border="0" height="324" src="https://3.bp.blogspot.com/-qubXrbFweBU/Vr8awIoYaBI/AAAAAAAAD4M/pxbO7SUOsao/s1600/10.jpg" width="640" /></a></div>\n<br /></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Праздники продолжаются! И мы тоже любим дарить подарки! Ко Дню Влюбленных le_Ciel ДАРИТ СЕРТИФИКАТ на 500грн при покупке любых 2-х украшений *! Удивляйте любимых вместе с нами! ;) * Предложение действительно с 9 до 20 февраля 2016.</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="https://3.bp.blogspot.com/-pSByE6RYwiA/Vr8awO6lXHI/AAAAAAAAD4M/j0-F6FZ5C2M/s1600/11.jpg" width="640" /></div>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;">&nbsp;All Red Sale -50% Красный - это не только цвет любви, но и цвет скидок!&nbsp;</span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">- Обязательно используй хештеги #sovagift #sovalove #oceanplazaТолько с 12 по 14 февраля у вас есть уникальная возможность получить скидку - 50% на все товары красного цвета в магазине Арена. Модная спортивная одежда, обувь и аксессуары - разве не об этом мечтает человек, полная энергии и любви к жизни?</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="400" src="https://1.bp.blogspot.com/-55LnfS7duag/Vr8awtmH0aI/AAAAAAAAD4M/rRhNxaVyFus/s400/14.jpg" width="400" /></div>\n<div style="text-align: center;">\n<br /></div>\n</div>\n<div style="text-align: justify;">\n<div style="text-align: center;">\n<span style="font-size: large;">Lee&amp;Wrangler &nbsp;распродажа до&nbsp;</span><span style="font-size: large;">-70%</span></div>\n</div>\n</div>\n', 'Скидки в Киеве: 8-14 февраля 2016 ');
INSERT INTO `posts` (`id`, `date`, `type`, `content`, `header`) VALUES
(6, '2016-01-12 07:14:00', 1, '<div dir="ltr" style="text-align: left;" trbidi="on">\n<h3 style="text-align: center;">\n<span style="color: #e06666; font-size: large;">Зачем нужен капсульный гардероб</span></h3>\n<div style="text-align: justify;">\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="гардероб" border="0" height="428" src="http://4.bp.blogspot.com/-VRa0S2Ysyzg/Vqnlut87uMI/AAAAAAAAAjI/xcoSmnhy_zo/s640/140829114650.jpeg" title="гардероб" width="640" /></div>\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">Каждый день мы просыпаемся с мыслью о том, что же сегодня надеть. Даже те, кто планирует это с вечера, утром могут изменить решение, опираясь как на настроение, так и на погоду. Ведь если предполагалось по прогнозу, что погода будет сухой и теплой, был приготовлен один комплект вещей, а если утром внезапно и неожиданно (что бывает нередко) пошел дождь, то стиль нужно срочно поменять. Кроме того часто возникает проблема, состоящая в том, что шкаф забит вещами, а надеть, на самом деле, нечего. И тут совершенно не имеет значения размер шкафа или вашей гардеробной комнаты.</span></div>\n<span style="font-size: large;">\n<div style="text-align: justify;">\n<br />\n<!--more--><br /></div>\n<div style="text-align: justify;">\nА все потому, что мы часто и не задумываясь покупаем вещи, которые между собой не сочетаются. Или даже сочетаются, но попробуйте-ка их отыскать в своем гардеробе утром, когда нужно срочно выбрать себе образ на день.</div>\n</span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Поэтому так трудно, не потратив огромное количество времени, подобрать себе подходящую одежду. И, как ни странно, чем больше ваш шкаф, тем сложнее это становится. Ведь часто мы даже не помним, что из одежды у нас есть, а чего нет.</span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span>\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="зачем нужен капсульный гардероб" border="0" height="424" src="http://3.bp.blogspot.com/-S0OXloSrs8s/Vqnlzx7ZOgI/AAAAAAAAAjQ/Luge_JG6Piw/s640/%25D0%25B6%25D0%25B5%25D0%25BD%25D1%2581%25D0%25BA%25D0%25B8%25D0%25B9-%25D0%25B3%25D0%25B0%25D1%2580%25D0%25B4%25D0%25B5%25D1%2580%25D0%25BE%25D0%25B1.jpg" title="" width="640" /></div>\n<br /></div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Поможет нам в этой ситуации <b>капсульный гардероб</b>. Одна капсула состоит из нескольких вещей, отлично сочетающихся между собой. Это значит, что верх и низ можно подобрать не глядя. Само собой, что капсулы должны быть подобраны по сезонам. Такой вариант будет служить долго, существенно сократит время подбора одежды, а, следовательно, настроение не будет портиться по таким мелочам, как нехватка времени на утренние сборы. Кроме того, в шкафу будут только необходимые вещи, а желание покупать что-то, что будет просто лежать на полке без дела, уйдет (...ну хорошо, не уйдет, а притупится).</span></div>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;">\n<div style="text-align: justify;">\nСледует понимать, что <b>капсульный гардероб</b> составляется не только из элементов одежды. Обувь и аксессуары подбираются или отдельно или сразу же добавляются в капсулы.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nНужно определиться с бюджетом, цветовой гаммой, желаниями, понять, в каких вещах будет удобно и в каких магазинах их стоит искать. Лучше не держать все это в голове, а составить список, разбив его по сезонам. Так будет намного нагляднее, а, значит, легче и быстрее подобрать всё необходимое и обновить свой гардероб, наполнив его только практичными и нужными вещами.&nbsp;</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nНа составление капсул придется потратить некоторое время и деньги, однако результат себя обязательно оправдает. А теперь подробнее о капсульном гардеробе и &nbsp;как его составить</div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n</span><br />\n<h3 style="text-align: center;">\n<span style="color: #e06666; font-size: large;">История появления капсульного гардероба</span></h3>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;">\n</span></div>\n<div style="text-align: justify;">\n\n<dl>\n<dt>\n<span style="font-size: large;"><i>Капсульный гардероб</i></span></dt>\n<dd>– набор предметов одежды и подходящих к ним аксессуаров (без сумок), предназначенных для определенной сферы жизни (для спорта, пляжа, офиса, вечеринки).</dd></dl>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">Владелица магазина «Wardrobe» в Лондоне <b>Сюзи Фо</b> считается первой, кто употребил данный термин в моде. По ее мнению, капсульный гардероб должен состоять из нескольких основных предметов одежды, не выходящих из моды (юбки, брюки, пиджаки), которые впоследствии дополняются модными вещами сезона.&nbsp;</span></div>\n<span style="font-size: large;">\n</span></div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">Затем идея капсульного гардероба была внесена в массы <b>Донной Каран</b>, нью-йоркским дизайнером, выпустившим в 1985 году капсульную коллекцию "7 Easy Pieces", состоявшую из семи предметов одежды для офиса. Вещи из коллекции полностью взаимозаменяли друг друга – в любой момент можно было заменить один предмет одежды на другой, что не вносило диссонанс в образ.</span><br />\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;">\n</span></div>\n<div>\n<div style="text-align: justify;">\n<table align="center" cellpadding="0" cellspacing="0" class="tr-caption-container" style="margin-left: auto; margin-right: auto; text-align: center;"><tbody>\n<tr><td style="text-align: center;"><img alt="капсульный гардероб" border="0" height="292" src="http://1.bp.blogspot.com/-MyjP2bA-1FQ/Vqnl5_EGa8I/AAAAAAAAAjY/b4BOb6wTAm8/s640/caran.jpg" style="margin-left: auto; margin-right: auto;" title="капсульный гардероб" width="640" /></td></tr>\n<tr><td class="tr-caption" style="text-align: center;">капсульный гардероб Донны Каран "7 easy Pieces"</td></tr>\n</tbody></table>\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">Отличие капсульного гардероба от <a href="http://www.blog-moda.ru/2015/07/chto-takoe-bazovyi-garderob.html" target="_blank"><b><span style="color: #e06666;">базового</span></b></a> в том, что капсула закрывает только одну сторону жизни (работа, отдых, семья), в то время как базовый гардероб, благодаря нейтральным вещам, служит основой для большинства случаев.</span></div>\n<span style="font-size: large;">\n</span></div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">По рекомендациям стилистов в капсульный гардероб должны входить классические вещи хорошего качества, дополненные сезонными новинками для свежести и яркости образа и аксессуарами для подчеркивания личного стиля.</span></div>\n<span style="font-size: large;">\n</span></div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">В капсульный гардероб может входить примерно от пяти до двенадцати вещей.</span></div>\n<span style="font-size: large;">\n</span></div>\n<div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<h4 style="text-align: center;">\n<span style="color: #e06666; font-size: large;">Как составить капсулу гардероба</span></h4>\n</div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<span style="font-size: large;"></span><br />\n<div style="text-align: justify;">\n<span style="font-size: large;">1. Разобраться с цветами и тонами, которые подходят к вашей внешности, для определения базовых оттенков основных вещей капсульного гардероба.</span></div>\n<span style="font-size: large;">\n<div style="text-align: justify;">\n2. Определить цвета, которые будут ярче базовых, но также, и гармонировать с ними. Данные оттенки можно будет использовать для дополнительных вещей капсульного гардероба: аксессуаров, платьев, топов.&nbsp;</div>\n<div style="text-align: justify;">\n3. Определить тип и форму фигуры, чтобы узнать, какие фасоны одежды являются подходящими.&nbsp;</div>\n<div style="text-align: justify;">\n4. Определить количество и вид предметов в капсульном гардеробе. В основном это зависит от человека и назначения капсулы. Возможно, также опереться на коллекции, созданные специально дизайнерами модных домов.</div>\n</span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;"><br /></span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Хоть в большинстве случае одна капсула гардероба - это до 10 вещей, существуют успешные варианты реализации капсульного гардероба &nbsp;в виде одной капсулы для целого сезона.</span></div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Отличный пример капсульного гардероба на весну ниже, с набором всех вещей и фотографиями с настоящими модными луками из этого гардероба.</span><br />\n<span style="font-size: large;"><br /></span>\n<span style="font-size: large;"><br /></span></div>\n<h4 style="text-align: center;">\n<span style="color: #e06666;">\nПример капусльного гардероба</span></h4>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="пример капсульного гардероба" border="0" height="640" src="http://2.bp.blogspot.com/-EzMaVn6Lelg/VqngSYZfh7I/AAAAAAAAAhs/_hDGONHDWok/s640/4.jpg" title="пример капсульного гардероба" width="425" /></div>\n<div style="text-align: left;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" src="http://4.bp.blogspot.com/-YVtip9t_XHM/VqngTbvn0xI/AAAAAAAAAiI/ceyEdmLiU4I/s1600/theeverygirl_spring_capsule2.jpg" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://1.bp.blogspot.com/-E9--WORzYlY/VqngR6pVH9I/AAAAAAAAAhk/eyWdcXsUF7w/s640/2.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://1.bp.blogspot.com/-cfOfxQwbEpQ/VqngSMDD_WI/AAAAAAAAAhg/uNTmgdDojWE/s640/3.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://1.bp.blogspot.com/-OW9xjB8VrGg/VqngQ-xAywI/AAAAAAAAAhQ/a6zmx1v5ihY/s640/1.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="пример капсульного гардероба" border="0" height="640" src="http://1.bp.blogspot.com/-DoQ4DmDrj1I/VqngSVdLDtI/AAAAAAAAAh0/6vCkJu7YQls/s640/5.jpg" title="пример капсульного гардероба" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://3.bp.blogspot.com/-iHxbq_7Si1g/VqngSqQAzDI/AAAAAAAAAhw/2PmZxilgHoU/s640/6.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://1.bp.blogspot.com/-MO1JkuGYygM/VqngS0WChsI/AAAAAAAAAh8/w3dEKuWNk7Q/s640/7.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://1.bp.blogspot.com/-sRPNGjF1oTw/VqngS_xRWHI/AAAAAAAAAiA/u9L-GH4O5Yg/s640/8.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img alt="фото пример капсульного гардероба" border="0" height="640" src="http://3.bp.blogspot.com/-cGkDxDkIdW8/VqngTPTEQ8I/AAAAAAAAAiE/btiDUdSOpvo/s640/9.jpg" title="фото пример капсульного гардероба" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://2.bp.blogspot.com/-BEWGLMsTDvg/VqngQ143MXI/AAAAAAAAAhM/MgLW40eXO7g/s640/10.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://4.bp.blogspot.com/-4Hho0krIGAo/VqngQ2t_3PI/AAAAAAAAAhI/HEu5Ylo5-sA/s640/11.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://4.bp.blogspot.com/-WWoN4kbdloU/VqngRWrjNqI/AAAAAAAAAhU/oCuM_QCzBIw/s640/12.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://4.bp.blogspot.com/-f6ygFfKoNqQ/VqngRkyk5JI/AAAAAAAAAhc/GBD9I1iLnzo/s640/13.jpg" width="426" /></div>\n<br />\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://2.bp.blogspot.com/-A3X8DG-Iiig/VqngRk4OMKI/AAAAAAAAAhY/VF0H-MXsCk4/s640/14.jpg" width="426" /></div>\n<br />\n<div style="text-align: left;">\n<br /></div>\n</div>\n', 'Капсульный гардероб'),
(7, '2015-10-16 08:18:19', 2, '<div dir="ltr" style="text-align: left;" trbidi="on">\n<h3 style="text-align: center;">\nСегодня началась сезонная распродажа в Манго. Скидка на все до 50%</h3>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://4.bp.blogspot.com/-iuYod8ipcBk/VnPObtmkQHI/AAAAAAAADxQ/PHSSFJtebwU/s640/VG6-i3MGL0I.jpg" width="582" /></div>\n<br /></div>\n', 'Начало распродажи в MANGO'),
(8, '2015-05-20 07:14:00', 1, '<div dir="ltr" style="text-align: left;" trbidi="on">\n<div style="text-align: left;">\n</div>\n<div style="text-align: justify;">\n<span style="font-size: large;">Мы&nbsp;полюбили джинсы за их практичность и удобство и не представляем свою жизнь без денима. Они давно уже стали неотъемлемой частью <a href="http://www.blog-moda.ru/2015/07/chto-takoe-bazovyi-garderob.html"><b><span style="color: #e06666;">базового гардероба</span></b></a> современной девушки. Однако идеальные джинсы должны быть не просто удобными или прочными. Они не только должны подчеркивать стиль, но и акцентировать внимание окружающих на достоинствах вашей фигуры, умело скрывая ее недостатки.</span></div>\n<span style="font-size: large;"></span><div style="text-align: justify;">\n<span style="font-size: large;"><span style="text-align: left;">&nbsp;</span></span></div>\n<span style="font-size: large;">\n<div class="separator" style="clear: both; text-align: center;">\n<a href="http://3.bp.blogspot.com/-IrvR9orgptU/VcIGBEU2P5I/AAAAAAAABu0/LRItgZakwes/s1600/%25D0%2591%25D0%25B5%25D0%25B7%2B%25D0%25B8%25D0%25BC%25D0%25B5%25D0%25BD%25D0%25B8-11.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="298" src="http://3.bp.blogspot.com/-IrvR9orgptU/VcIGBEU2P5I/AAAAAAAABu0/LRItgZakwes/s640/%25D0%2591%25D0%25B5%25D0%25B7%2B%25D0%25B8%25D0%25BC%25D0%25B5%25D0%25BD%25D0%25B8-11.jpg" width="640" /></a></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nЯ подготовила небольшую шпаргалку, которая поможет любой девушке подобрать подходящую ей модель джинсов. Данное руководство не является исчерпывающим, но достаточно полно охватывает современные модели.</div>\n<div style="text-align: justify;">\n<br /></div>\n<h3 style="text-align: center;">\n<span style="color: #e06666; font-size: large;">Как выбрать джинсы</span></h3>\n<h4 style="text-align: center;">\nСовет №1</h4>\n<div style="text-align: justify;">\nВы – счастливая обладательница осиной талии и узких щиколоток? Хотите выделить женственные формы, визуально уменьшив при этом широкие бедра? Выбирайте <b>джинсы средней посадки</b>, то есть немного ниже талии. Их брючины должны быть выбелены по центру.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="400" src="http://3.bp.blogspot.com/-hvZLGAeYOc0/VcIGBS5A2HI/AAAAAAAABu0/L3S13fnBkkc/s400/%25D0%2591%25D0%25B5%25D0%25B7%2B%25D0%25B8%25D0%25BC%25D0%25B5%25D0%25BD%25D0%25B8-14.jpg" width="312" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<h4 style="text-align: center;">\nСовет №2</h4>\n<div style="text-align: justify;">\nПрямые <b>джинсы темного цвета</b> визуально стройнят и вытягивают фигуру. Они подойдут девушкам среднего роста, вес которых преимущественно сосредоточен в средней части (талия, живот). Остановите выбор на  высокой посадке.</div>\n<div style="text-align: justify;">\nВажно! Обувь на высоком каблуке, а также пиджак свободного кроя отлично сочетаются с такой моделью.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="400" src="http://3.bp.blogspot.com/-ddTziRfZLqQ/VdxMCfGG8YI/AAAAAAAAB8s/X7umfIautko/s400/spodnie-topshop-14662435.jpg" width="351" /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<br /></div>\n<!--more--><br /><br />\n<div style="text-align: justify;">\n<br /></div>\n<h4 style="text-align: center;">\nСовет №3</h4>\n<div style="text-align: justify;">\nЖелаете похвастаться длинными стройными ногами? <b>Модели скинни</b> для вас! Такие джинсы отличаются узким кроем по всей их длине. Смело выбирайте деним светлого оттенка.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="476" src="http://2.bp.blogspot.com/-Zy9w4cDLHm8/VcIIRAevVAI/AAAAAAAABu0/Iykkb_FgJVo/s640/%25D0%2591%25D0%25B5%25D0%25B7%2B%25D0%25B8%25D0%25BC%25D0%25B5%25D0%25BD%25D0%25B8-1.jpg" width="640" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nЕсли вы, наоборот, желаете скрыть худобу, обратите внимание на светлые бойфренды. Бойфренды – потертая модель с длиной 7/8. Это комфортные, широкие джинсы, то есть полная противоположность джинсов скинни. Необычное название означает, что с ними вы должны выглядеть так, словно позаимствовали их у парня.</div>\n<div style="text-align: justify;">\nОсенью 2015 года <a href="http://www.blog-moda.ru/2015/08/s-chem-nosit-jeanse-boyfriendy.html"><b><span style="color: #e06666;">бойфренды</span></b></a> переходят в разряд базового гардероба и должны быть у каждой девушки.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="400" src="http://2.bp.blogspot.com/-VrHJ9MxsJoU/VdxJFolZOTI/AAAAAAAAB7Q/rfHGSE9NhPk/s400/6b.jpg" width="266" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<h4 style="text-align: center;">\nСовет №4</h4>\n<div style="text-align: justify;">\nВаш внешний вид похож на мальчишеский? Стесняетесь своей ярко-выраженной «плоскости»? Вас спасут искусственные потертости и выбеленные зоны. Благодаря таким хитростям, джинсы придадут фигуре женственную округлость. Подчеркнуть можно не только бедра, но и икры. Попробуйте новый джинсовый тренд этого года <a href="http://www.blog-moda.ru/2015/11/mom-jeans-s-chem-nosit.html"><b><span style="color: #e06666;">мом джинс</span></b></a>.</div>\n<div style="text-align: justify;">\n<b>Важно!</b> Элегантные лодочки на шпильке вместе с такими джинсами визуально удлиняют ноги.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="640" src="http://2.bp.blogspot.com/-3AVE1ZDwmYw/VkXI7iA4zQI/AAAAAAAADrY/opdTuImmOQA/s640/3.jpg" width="426" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<h4 style="text-align: center;">\nСовет №5</h4>\n<div style="text-align: justify;">\nШирокоплечие девушки с узкими бедрами могут уравновесить пропорции фигуры с помощью <b>джинсов клеш</b>. Обратите внимание на длину: край брючин должен совпадать с серединой каблука. Деним темно-синего цвета визуально добавит роста.</div>\n<div style="text-align: justify;">\n<b>Важно!</b> Чем уже бедра, тем шире может быть клеш.</div>\n<div style="text-align: justify;">\n<br /></div>\n<div class="separator" style="clear: both; text-align: center;">\n<img border="0" height="531" src="http://2.bp.blogspot.com/-D11PxPx7IBw/VcIGDfwCFbI/AAAAAAAABu0/u3IdVd9YHOU/s640/%25D0%2591%25D0%25B5%25D0%25B7%2B%25D0%25B8%25D0%25BC%25D0%25B5%25D0%25BD%25D0%25B8-8.jpg" width="640" /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\n<br /></div>\n<div style="text-align: justify;">\nИтак, объективно оцените свою фигуру. Определите ее плюсы и минусы. Подбирая конкретную модель, последуйте перечисленным советам. Тогда выбранные джинсы помогут вам стать еще привлекательнее.</div>\n<div style="text-align: justify;">\nУдачной покупки!</div>\n</span><br /></div>\n', 'Как выбрать джинсы');

-- --------------------------------------------------------

--
-- Структура таблицы `posts_type`
--

CREATE TABLE IF NOT EXISTS `posts_type` (
  `type` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `posts_type`
--

INSERT INTO `posts_type` (`type`, `name`) VALUES
(1, 'news'),
(2, 'actions');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` tinytext NOT NULL,
  `type` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `type`, `price`) VALUES
(2, 'Electra', 'Супер узкие джинсы, обтягивающие по всей длине. Вторая кожа', 328, 899),
(3, 'Belle', 'Джинсы Слим с напылением под кожу, обтягивающие по всей длине.', 208, 999),
(4, 'Lonny', 'Джинсы бойфренды, обтягивающие по всей длине.Отличный вариант на каждый день', 328, 1499),
(67, 'BABO', 'Струящаяся ткань, с фактурной выделкой, широкие бретели, круглый вырез горловины, декоративные пуговицы, внизу волан, на спине круглый выре', 208, 249),
(68, 'TEXTA', 'Цвет: меланжевый средний серый', 208, 199),
(69, 'NET', 'Сандалии со шнурами вокруг ноги', 642, 999.5),
(71, 'YOLA', 'Ткань с атласным блеском, узкие бретельки, v-образный вырез горловины с запáхом, детали из кружева, пояс, по бокам внизу разрезы.', 439, 1199),
(72, 'CHELSEA', 'Кожаные ботинки на каблуке<br>\r\nНаборный каблук, по бокам эластичные вставки, высота каблука 7 см, размеры изделия: с 35 по 42.', 642, 2000),
(73, 'CHELSEA', 'Кожаные ботинки на каблуке<br>\r\nНаборный каблук, по бокам эластичные вставки, высота каблука 7 см, размеры изделия: с 35 по 42.', 642, 2000),
(74, 'COTI', 'Пестрая ткань, воротник-стойка, длинные рукава, застежка на молнию.\r\n· Боковая длина (от проймы до низа) 82.0 cm<br>\r\n· Длина спинки 106.0 cm<br>\r\nДанные ', 439, 999.45),
(75, 'TUYI', 'Фасон "карандаш", трикотаж, связанный резинкой, эластичный пояс.<br>\r\n· Боковая длина (от проймы до низа) 74.0 cm<br>\r\n· Длина юбки 74.5 cm', 308, 649.88),
(78, 'Alice', 'Удобные джинсы', 328, 999),
(83, 'new', 'fgdfg', 308, 111),
(84, 'Test tovar', 'Тестовое описание  kl', 208, 800),
(86, 'цу', 'цу', 208, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_photo`
--

CREATE TABLE IF NOT EXISTS `product_photo` (
  `id` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  KEY `id_product` (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_photo`
--

INSERT INTO `product_photo` (`id`, `photo_url`) VALUES
(2, '/uploads/img/electra.jpg'),
(3, '/uploads/img/belle.jpg'),
(4, '/uploads/img/lonny.jpg'),
(2, '/uploads/img/electra2.jpg'),
(2, '/uploads/img/electra3.jpg'),
(2, '/uploads/img/electra4.jpg'),
(3, '/uploads/img/belle2.jpg'),
(3, '/uploads/img/belle3.jpg'),
(3, '/uploads/img/belle4.jpg'),
(4, '/uploads/img/lonny2.jpg'),
(4, '/uploads/img/lonni3.jpg'),
(4, '/uploads/img/lonni4.jpg'),
(67, './uploads/img/babo1.jpg'),
(67, './uploads/img/babo2.jpg'),
(67, './uploads/img/babo3.jpg'),
(67, './uploads/img/babo4.jpg'),
(68, './uploads/img/2081.jpg'),
(69, './uploads/img/net1.jpg'),
(71, './uploads/img/yola1.jpg'),
(71, './uploads/img/yola2.jpg'),
(71, './uploads/img/yola3.jpg'),
(71, './uploads/img/yola4.jpg'),
(72, './uploads/img/chelsea3.jpg'),
(72, './uploads/img/chelsea4.jpg'),
(73, './uploads/img/chelsea1.jpg'),
(73, './uploads/img/chelsea2.jpg'),
(74, './uploads/img/coti1.jpg'),
(74, './uploads/img/coti2.jpg'),
(74, './uploads/img/coti3.jpg'),
(74, './uploads/img/coti4.jpg'),
(75, './uploads/img/tuiy3.jpg'),
(75, './uploads/img/tuti2.jpg'),
(75, './uploads/img/tuyi1.jpg'),
(78, './uploads/img/alice.jpg'),
(78, './uploads/img/alice2.jpg'),
(78, './uploads/img/alice3.jpg'),
(78, './uploads/img/alice4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `right_sidebar`
--

CREATE TABLE IF NOT EXISTS `right_sidebar` (
  `main_page` varchar(50) NOT NULL,
  `sidebar_page` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `right_sidebar`
--

INSERT INTO `right_sidebar` (`main_page`, `sidebar_page`) VALUES
('personal_cabinet', 'cabinet_controller_sidebar.php'),
('main', 'main_view_sidebar_controller.php'),
('add_admin', 'cabinet_controller_sidebar.php'),
('edit_product', 'cabinet_controller_sidebar.php'),
('delete_product', 'cabinet_controller_sidebar.php'),
('change_settings', 'cabinet_controller_sidebar.php'),
('delete_admin', 'cabinet_controller_sidebar.php'),
('product', 'main_view_sidebar_controller.php');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `parameter` varchar(30) NOT NULL,
  `value` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`parameter`, `value`) VALUES
('addicional_prod_rows', '1'),
('max_rows_product', '4'),
('max_rows_posts', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(16, 'admin', '$2a$08$rXcZg82vlnhomptpnk1LmO904Rro5bh3HUSbVve0OE23CyTBWGAtW', 'a'),
(17, 'user', '$2a$08$hbjnDK7AQ7yrC86YdEl0ee7HhrWelU3aaENC.VmD.lxcGHbkKfb02', 'u'),
(18, 'user1', '$2a$08$fhpeDeyDaIL6CglJ4PuRfu20c8ekUiWBwsiJbdwcE6IuVr2xxCBK2', 'u'),
(19, 'user6', '$2a$08$RVZol7J6AV93C5L62y8XwuDf.rD6So7cB0xz.BRHMkHRGpREpDdAe', 'u'),
(20, 'open', '$2a$08$faUhqv0G6zgIDZax5dJ6fOzMOE5GDpIySNNIk0OWvIk/rx81WlqUK', 'u'),
(26, 'admin4', '$2a$08$pTYvFHEMvVK5IJgQpvFNt.3PFDyxYWeA/T2QujbIcSHln3ygaHHiy', 'r'),
(27, 'test', '$2a$08$0SIQqoa5as35rl1YuuinNObPDYMnqzZbh27.SjCrLXKGRmQd88Rwm', 'r'),
(28, 'test3333', '$2a$08$60QmPPg4QzkSUG8NHnHlNu2KBDYhp.1cPlV5VOxAEnGabABY14LAa', 'r'),
(29, 'test333', '$2a$08$4x5zUpAgwKBya4o6TbB2MOHRkquQ7hLUQpQ/Cs1z7AgYt1xcW9uuy', 'r'),
(30, 'test33', '$2a$08$1VG1V8mYuls58FrOSdE6BuaHPI70LjlFUMtby8ZvMAtwR988d0ZU.', 'r'),
(31, 'test3', '$2a$08$MKk4yUQ1Ca4yt8YL5Z68oOjZ6mcBeTOK4rKIu3q.BK04KbBqu56Em', 'r');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
