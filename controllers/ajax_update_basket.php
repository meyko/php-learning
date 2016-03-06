<?php 
if ($_SERVER['REQUEST_METHOD']=="POST"){

	if (checkUser()||checkAdmin()){
		$login 			= $_SESSION['login'];
		$id_product 	= $_POST['id_product'];
		$color 			= $_POST['color'];
		$size 			= $_POST['size'];
		$count 			= $_POST['count']; //разница между прежним кол-вом товара и новым
		$total_count	=$_POST['total_count'];//новое количество товара

		if ($count>0){
			if 	(checkStock($id_product,$color,$size,$total_count)){
				include "models/add_to_basket_model.php";
			}
			else {
				echo 'no'; // ответ потом обрабатывается в js 
			}
		}
		else
		{
			include "models/add_to_basket_model.php";

		}
	}

}