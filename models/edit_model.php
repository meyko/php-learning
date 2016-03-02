<?php
$activeChange='class="active"';
$link="edit_product";
$legend="Внесите изменения в товар $id";
$product = select('product','*',array('id'=>$id));

if (isset($colors))
	unset($colors);

$_colors = select('stock','DISTINCT color',array('id'=>$id));

foreach ($_colors as $k=>$v){
	$colors[$v['color']]=$v['color'];
}


$images = select('product_photo','photo_url, color',array('id'=>$id));
extract($product[0]);
	
?>