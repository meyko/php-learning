<?php 

if ($_SERVER['REQUEST_METHOD']=='GET'){
	$categories = $_GET['cat_filter'];
	$price_from = $_GET['price_from'];
	$price_to = $_GET['price_to'];

	if ($price_from>$price_to){
		$price_to = $price_to + $price_from;
		$price_from = $price_to - $price_from; 
		$price_to = $price_to- $price_from; 
	}

	
$sortBy = $_GET['sorting'];
$sort_type = $_GET['sort'];
$navigate ="";

$idPage = $_SERVER['QUERY_STRING'];

if ($_GET['page']){
	$current_page = $_GET['page'];
	$old_page_len = strlen("page=$current_page");
	if (strpos($idPage,"page=$current_page")!==false)
		{
			$idPage = substr($idPage,$old_page_len);
		}
}
else
$idPage='&'.$idPage;

include "models/filter_model.php";
	
	

if ($product_list){
include "models/product_list_model.php";
include "views/product_list_view.php";
include "views/navigate_pages_view.php";
}

else
	echo "<h3>по вашим параметрам ничего не найдено</h3>";

}
?>