<?php 
if (checkAdmin()){

	if ($_SERVER['REQUEST_METHOD']=='POST'){
		$name		 	 = $_POST['name'];
		$description 	 = $_POST['description'];
		$type			 = $_POST['type'];
		$price			 = $_POST['price'];
		$photo_count	 =count($_FILES['photo']['tmp_name']);

		if (validateText($name,30)&&validateText($description,250)&&validateOptions($type,'families','type')&&validateFloat($price)){

			$new_id=insert('product',array('name'=>$name,
				'description'=>$description,
				'price'=>$price,
				'type'=>$type),
			true);
			
			//копирование фото на диск
			$copy_path='./uploads/img/';
			$photo_name_list=copyFiles($copy_path);

			//добавление фото в базу
			if ($photo_name_list){

				foreach($photo_name_list as $photo_name){
					insert('product_photo',array('id'=>$new_id,
						'photo_url'=>$photo_name
						));
				}
			
			}

			$result_text="Вы успешно добавлили товар";
		}
		else
		{
			$result_text="Ошибка при добавлении товара";
		}

	}
	?>

	<meta http-equiv="refresh" content="0; url=personal_cabinet?res=<?=$result_text?>">
	<?php } 
	else 
		echo '<meta http-equiv="refresh" content="0; url=autorization">';