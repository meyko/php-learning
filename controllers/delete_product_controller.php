<?php
if (checkAdmin()){
	$action_tab = "delete_product_view.php"; //активная вкладка кабинета

//вывод фломы и подтверждение удаления товара
	if ($_GET['id']){
		$id=$_GET['id'];
		$link="delete_product"; //ссылка в action в форме
	}

	//удаление товара
	if ($_POST['id']){
		$id=$_POST['id'];
		delete('product',array('id'=>$id));
		delete('stock',array('id'=>$id));
		//получение списка фото для удаления
		$delete_photos = select('product_photo','photo_url',array('id'=>$id));

		if ($delete_photos){

			foreach ($delete_photos as $file){
				$delete_files[]=$file['photo_url'];
			}

			delFiles($delete_files); // удаление фото на диске
		}

		delete('product_photo',array('id'=>$id)); //удаление фото из базы
		$deleted=true;
	}

	include "models/admin_cabinet_model.php";
	include  "views/admin_cabinet_view.php";
}
else 
	echo '<meta http-equiv="refresh" content="0; url=autorization">';