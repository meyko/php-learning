<?php 
if (checkAdmin()){
	// изменение настроек отображения сайта
	if ($_SERVER['REQUEST_METHOD']=='POST'){
		$addicional_prod_rows = $_POST['addicional_prod_rows']; //кол-во рядов товара в дополнительных и на главной странице
		$max_rows_posts = $_POST['max_rows_posts'];				//кол-во записей на главной странице
		$max_rows_product = $_POST['max_rows_product'];			//кол-во рядов товара в списке товаров
		$_tmp_param = compact ('addicional_prod_rows','max_rows_posts','max_rows_product');
		
		foreach ($_tmp_param as $k=>$v){
			update('settings',array ('value'=>$v), array ('parameter'=>$k));
		}

		$result = "параметры успешно изменены";
	}

	$action_tab = "admin_settings_view.php";
	include "models/admin_cabinet_model.php";
	include  "views/admin_cabinet_view.php";
}
else 
	echo '<meta http-equiv="refresh" content="0; url=autorization">';
