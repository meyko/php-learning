<?php
$id_user = select('users','id',array('login'=>$login));
$id_user = $id_user[0]['id'];
$basket = select('basket','id_product, color_product, size, count', array('id_user'=>$id_user));
if ($basket){
foreach ($basket as $i => $item){
	$photo = select('product_photo','photo_url', array('id'=>$item['id_product'],'color'=>$item['color_product']),"LIMIT 1");
	if ($photo){
		$photo = $photo[0]['photo_url'];
		$basket[$i]['photo_url'] = $photo;}
		else $basket[$i]['photo_url']='';
	$info = select ('product','price,type,name', array('id'=>$item['id_product']));
	$price = $info[0]['price'];
	$name = $info[0]['name'];
	$type = $info[0]['type'];

	$type_name = select ('families','family',array('type'=>$type));
	$type = $type_name[0]['family'];

	$basket[$i]['type'] = $type;
	$basket[$i]['price'] = $price;
	$basket[$i]['name'] = $name;

	$basket[$i]['size_code'] = $item['size'];
	if ($item['size']>17&&$item['size']<25){
		$size = select('sizes','size',array('id'=>$item['size']));
		$basket[$i]['size'] = $size[0]['size'];
	}


	$color_value = select('colors','value', array('code'=>$item['color_product']));
	$color_value = $color_value[0]['value'];
	$basket[$i]['color_value'] = $color_value;
	}
	


}