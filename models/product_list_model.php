<?php 
//формируем список товаров 
if (!$where){
	$where='';
}

if ($navigate=='product'){
// получение информации для постраничной навигации
	list($current_page,
		$prev_page,
		$next_page,
		$count_pages) = navPages($navigate, $max_items_page,$where);
	$startId = $max_items_page*($current_page-1);}

	if (!$product_list)
		$product_list = select('product','*',$where,"ORDER BY id asc
			LIMIT $startId, $max_items_page");
	if ($product_list){

	foreach($product_list as $k=>$v){
		$family = select ('families','family', array('type'=>$v['type']));
		$photo = select
		(
			'product_photo',
			'photo_url',
			array('id'=>$v['id']),
			"LIMIT 1"
			);

		if (!$photo){
			$product_list[$k]['photo'] = "";
		}
		else{
			$product_list[$k]['photo'] = $photo[0]['photo_url'];
		}
		

		$product_list[$k]['type']  = $family[0]['family'];
	}
}
	?>