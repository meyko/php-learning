<?php
$product = select ('product','*',array('id'=>$_GET['id']));
$photos = select
(
	'product_photo',
	'photo_url',
	array('id'=>$_GET['id'])
);

$family = select ('families','family', array('type'=>$product[0]['type']));

// список товаров, которые можно предложить доп-но
$product_list = getRandom('product', $addicional_prod_count);