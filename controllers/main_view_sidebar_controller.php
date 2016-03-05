<?php
if ($page = 'filter'){
	$cat = $_GET['cat_filter'];
	$price_from = $_GET['price_from'];
	$price_to = $_GET['price_to'];
	$sortBy = $_GET['sorting'];
	$sort_type = $_GET['sort'];
	print_r($categories);
}
include "models/category_model.php";


include "views/main_view_sidebar.php";
?>