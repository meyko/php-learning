<?php
// определение настроек сайта перед загрузкой любой страницы
$_tmp = select('settings', '*' );
foreach ($_tmp as $v){
	extract($v);
	$parametr_array[$parameter]=$value;
}

extract($parametr_array);
//сейчас количество товаров в одном ряде 3, можно потом сделать настраиваемым
$addicional_prod_count=$addicional_prod_rows*3;
$max_items_page = $max_rows_product*3;
?>