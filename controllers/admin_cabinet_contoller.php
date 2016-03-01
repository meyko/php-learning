<?php  
if (checkAdmin()){
	// одинаковый вид вкладок для удаления и изменения товара
	if ($_GET['action']=='change'||($_GET['action']=='remove')){

		if ($_GET['action']=='change'){
			$activeChange='class="active"';
			$link='edit_product';
		}
		//подставляются только разные ссылки в товары
		else {
			$link = 'delete_product';
			$activeDelete='class="active"';
		}
		// параметры для формирования постраничной навигации
		$idPage = "&action=".$_GET['action'];
		$navigate = 'product';
		
		include "models/product_list_model.php";
		$action_tab="product_list_view.php";

	}

	//вкладка настроек системы
	if ($_GET['action']=='settings'){
		$activeSettings = 'class="active"';
		$action_tab="admin_settings_view.php";
	}

	//по умолчанию выводится вкладка добавления товара
	if (!$_GET['action'])
	{
		$link="add_product";
		$activeAdd='class="active"';
		$action_tab = "add_product_view.php";

	} 	

	include "models/admin_cabinet_model.php";
	include  "views/admin_cabinet_view.php";

}
else 
	echo '<meta http-equiv="refresh" content="0; url=autorization">';