<?php
$product = select ('product','*',array('id'=>$id));
if ($product){
$images = select
(
	'product_photo',
	'photo_url, color',
	array('id'=>$id)
);
$_colors_exists = select('stock','DISTINCT color as code',array('id'=>$id),"and stock>0");



foreach ($_colors_exists as $value) {
	$_color_db = select('colors','code, value',$value);
	$_colors_db[] = $_color_db[0];
}


foreach ($_colors_db as $v){
	$colors[$v['code']]=$v['value'];
}

$family = select ('families','family', array('type'=>$product[0]['type']));

$_sizes =select('stock',
				'size,color',
				array('id'=>$id,
					  ),
				"and stock>0");


for($i=0;$i<count($_sizes);$i++) {
	
	$size_value = $_sizes[$i]['size'];
	$size = $_sizes[$i]['size'];
	$size_color=$size.$_sizes[$i]['color'];
	if ($size >17 and $size<25){
		$new_size = select('sizes','size',array('id'=>$size));
		 $sizes[$size_color] = $new_size [0]['size'];
	}

	else 
		 $sizes[$size_color] =$size_value;
}

}