<?php

$where = array();
if ($categories){
	$where[0] = '(';
	foreach($categories as $category){
		$where[0].= "product.type='$category' or ";
	}

	$where[0] = rtrim($where[0],'or ');
	$where[0].=')';
}

$where[1] = "(price>=$price_from)";
$where[2] = "(price<=$price_to)";
$where = implode(' and ',$where);

$join = "";
switch($sortBy){
	case "id":$add_sort = " order by id ";
	break;
	case "price":$add_sort = " order by price ";
	break;
	case "model":$add_sort = " order by name ";
	break;
	case "category":$add_sort = " order by family ";
	$join = " join families on families.type = product.type ";
	break;
}

$add_sort.=" $sort_type";

$count_posts = "Select count(*) from product $join where $where";
$count_posts = query($count_posts);


list($current_page,
	$prev_page,
	$next_page,
	$count_pages) = navPages($navigate, $max_items_page,$where,$count_posts);

$startId = $max_items_page*($current_page-1);

$query = "Select product.id, product.price, product.type from product $join where $where $add_sort LIMIT $startId, $max_items_page";
$product_list = query($query);