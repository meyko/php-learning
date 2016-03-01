<?php
$activeChange='class="active"';
$link="edit_product";
$legend="Внесите изменения в товар $id";

$product = select('product','*',array('id'=>$id));
$images = select('product_photo','photo_url',array('id'=>$id));
extract($product[0]);

?>