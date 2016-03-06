<?php
if ($_SERVER['REQUEST_METHOD']=="POST"){
	$id_product = $_POST['id'];

	if (checkUser()||checkAdmin()){
		$login 	= $_SESSION['login'];
		$color 	= $_POST['color'];
		$size 	= $_POST['size'];
		$count 	= $_POST['count'];

		if ($count>0){
			$size = substr($size,0,2);//размер передается с цветом		

			if 	(checkStock($id_product,$color,$size,$count)){
				include "models/add_to_basket_model.php";
				$resalt_text = "Товр добавлен в корзину";
			}
			else{
				$resalt_text = "Недостаточный сток для заказа товара. попробуйте меньшее количество";
			}

		}

	}

	else {
		$resalt_text = "Войдите в свой аккаунт для добавления товара";
	}
	?>
	<meta http-equiv="refresh" content="0; url=product?id=<?=$id_product?>&resalt_text=<?=$resalt_text?>">
	<?php }
	else
	{

		if (checkUser()||checkAdmin()){
			$login = $_SESSION['login'];// для наглядности, вообще логин есть всегда в user_name
			include "models/show_basket.php";
			include "views/show_basket_view.php";
		}
		else 
			$resalt_text= "Вы не авторизированы для просмотра корзины";
			echo $resalt_text;
	}