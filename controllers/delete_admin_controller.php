<?php 
if (checkAdmin()){

	if ($_SERVER['REQUEST_METHOD']=='POST'){
		$login		 = $_POST['login'];
		$error 		 = !validateName($login); //валидация логина

		if (!$error){
			$user = select('users','role',array('login'=>$login)); // поиск логина в бд

			if ($user){

				//удалить админа с правами a, а не r- redactor или u - user, невозможно
				if ($user[0]['role']!='a'){
					$error = !delete('users',array('login'=>$login));
				}
				else {
					$error = true;
				}

			}

		}

		if ($error||!$user){
			$result_text = "Ошибка";
		}
		else {
			$result_text = "Пользователь успешно удален";
		}
	}

	$action_tab = "delete_user_view.php";
	include "models/admin_cabinet_model.php";
	include  "views/admin_cabinet_view.php";
}
else 
	echo '<meta http-equiv="refresh" content="0; url=autorization">';