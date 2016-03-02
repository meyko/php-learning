<?php

foreach ($sizes as $k=>$size){
	if ($stock[$k]!==""){
	if (select('stock','id',array(	'id'=>$new_id,
									'color'=>$color,
									'size'=>$size))){
		update ('stock',
				array('stock'=>$stock[$k]),
				array('id'=>$new_id,
					   'color'=>$color,
					   'size'=>$size)
			);
	}
	else{
		insert('stock',array(		'id'=>$new_id,
									'color'=>$color,
									'size'=>$size,
									'stock'=>$stock[$k]));
	}

}

}



//добавление фото в базу
			if ($photo_name_list){

				foreach($photo_name_list as $photo_name){
					insert('product_photo',array('id'=>$new_id,
						'photo_url'=>$photo_name,
						'color'=>$color
						));
				}
			
			}
?>