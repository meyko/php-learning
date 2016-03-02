<?php
$product_list = getRandom('product', $addicional_prod_count);
// вычисляем номера текущих страниц

list($current_page,
	$prev_page,
	$next_page,
	$count_pages) = navPages($navigate, $max_rows_posts, $where);

// формируем запрос необх. постов
$startId = $max_rows_posts*($current_page-1);

$posts = select ($navigate,
	'*',
	$where,
	"ORDER BY  date desc
	LIMIT $startId, $max_rows_posts"
	);	

if ($posts)
$posts = cut($posts); //обрезка статей до превью
?>
