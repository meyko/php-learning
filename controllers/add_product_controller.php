<?php 
if (checkAdmin()){

	if ($_SERVER['REQUEST_METHOD']=='POST'){
		$name		 	 = $_POST['name'];
		$description 	 = $_POST['description'];
		$type			 = $_POST['type'];
		$price			 = $_POST['price'];
		$color 			 = $_POST['color'];
		$sizes 				= $_POST['size'];
		$stock 				= $_POST['stock'];
	

		if (validateText($name,30)&&validateText($description,250)&&validateOptions($type,'families','type')&&validateFloat($price)){
			//копирование фото на диск
			$copy_path='./uploads/img/';
			$photo_name_list=copyFiles($copy_path);
			$key = 'name';
			$value = $name;
			include "models/select_params_model.php";
			if (!$product){
				include "models/add_product_model.php";
				$result_text="Вы успешно добавлили товар";
			}
			else{
				$result_text = "Модель существует, описание и цена не поменялись";
				$new_id = $product['id'];
			}	
			
			include "models/update_stock.php";
			
			
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