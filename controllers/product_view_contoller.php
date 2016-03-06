<?php
// список всех товаров - id=all или только номер страницы
if ($_GET['id']=='all'||empty($_GET['cat'])&&empty($_GET['id'])){
	$navigate = 'product'; //для расчета страниц в навигации, имя бд
	$link='product';	   //страница, которая отображается в ссылке товара
}

//просмотр конкретного товара
else if ($_GET['id']){
	$id = $_GET['id'];
	if ($_GET['resalt_text']){
		$resalt_text = $_GET['resalt_text']; 
	}
	include "models/one_product_model.php";
	// список товаров, которые можно предложить доп-но
	$product_list = getRandom('product', $addicional_prod_count);
	if ($product)
	include "views/one_product_view.php";
}

//просмотр по категориям
if ($_GET['cat']){
	$category =  $_GET['cat'];
	$navigate = 'product';
	$link='product';
	$idPage = '&cat='.$category; //для навигации по страницам категорий
	$where = array('type'=>$category);

}

include "models/product_list_model.php";
include "views/product_list_view.php";	
