<?php
$activeChange='class="active"';
$link="edit_product";
$legend="Внесите изменения в товар $id";
if (isset($id)){
$product = select('product','*',array('id'=>$id));

if (isset($colors))
	unset($colors);

$_colors = select('stock','DISTINCT color',array('id'=>$id));

foreach ($_colors as $k=>$v){
	$colors[$v['color']]=$v['color'];
}


$images = select('product_photo','photo_url, color',array('id'=>$id));
extract($product[0]);

$stock = select ('stock','stock,color,size',array('id'=>$id));

foreach ($stock as $k=>$v){
	$size_name = select('sizes','size',array('id'=>$v['size']));

	if ($size_name){
		$stock[$k]['size'] = $size_name[0]['size'];
	} 
}

}
?>