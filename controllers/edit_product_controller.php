<?php
if (checkAdmin()){
//отображение формы для редактирования товара
	if ($_GET['id']){
		$id=$_GET['id'];
	}
	else
		// валидация формы и обновление информации о товаре
		if ($_SERVER['REQUEST_METHOD']=="POST"){
			$name		 	= $_POST['name'];
			$description 	= $_POST['description'];
			$type			= $_POST['type'];
			$price			= $_POST['price'];
			$id 			= $_POST['id'];
			$del_photo		= $_POST['del_photo'];
			$color 			= $_POST['color'];
			$sizes 			= $_POST['size'];
			$stock 			= $_POST['stock'];


			if (validateText($name,30)
				&&validateText($description,250)
				&&validateOptions($type,'families','type')
				&&validateFloat($price)
				&&validateOptions($color,'colors','code')
				){

				//добавление новых картинок товарам
				$copy_path='./uploads/img/';
				$photo_name_list=copyFiles($copy_path);

				include "models/update_prod_model.php";
				$new_id=$id;
				include "models/update_stock.php";

				if ($photo_name_list){

					foreach($photo_name_list as $photo_name){
						insert('product_photo',array('id'=>$id,
							'photo_url'=>$photo_name,
							'color'=>$color
							));
					}

				}

				//удаление файлов, если есть на удаление
				if ($del_photo){
					delFiles($del_photo);

					foreach ($del_photo as $photo){
						delete('product_photo',array('photo_url'=>$photo));
					}

				}	
				$result_text="Вы успешно обновили товар";
			}
			else
			{
				$result_text="Ошибка при обновлении товара";
			}

		}
		

		include "models/admin_cabinet_model.php";		
		include "models/edit_model.php";
		$action_tab = "add_product_view.php"; //вью для активной вкладки кабинета

		include  "views/admin_cabinet_view.php";
	}
	else 
		//если человек отправил любой запрос без админсих прав редирект на авторизацию
		echo '<meta http-equiv="refresh" content="0; url=autorization">'; 