<?php
$id_user = select('users','id',array('login'=>$user_name));
$id_user = $id_user[0]['id'];

foreach ($items as $item){
	$item=explode(';',$item);
	list($id_product,$color_product,$size)= $item;
	delete('basket',array(
							'id_user'=>$id_user,
							'id_product'=>$id_product,
							'color_product'=>$color_product,
							'size'=>$size
						)
			);
}
