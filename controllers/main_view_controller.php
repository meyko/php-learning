<?php
// определение отображать на главной все сатьи или категорию статей
if ($_GET['category']){
	$where = array('type'=>$_GET['category']);
	$idPage = "&category=".$_GET['category'];
}
else {
	$where = '';
	$idPage='';
}


$link="product";	//адрес страницы в ссылке товаров в начале страницы
$navigate='posts';  //для постраничной наигации, из какой таблицы считать записи
include "models/main_view_model.php";
include "models/product_list_model.php";

include "views/main_view.php";



?>