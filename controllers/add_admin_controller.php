<?php 
if (checkAdmin()){

	$registration_type = 'add_admin'; //action формы
	$user_role = 'r';

	if ($_SERVER['REQUEST_METHOD']=='POST'){
		$login		 = $_POST['login'];
		$password 	 = $_POST['password'];
		$password2	 = $_POST['password2'];

		list($result_text,$error) = validate($login, $password,$password2);

		if ($result_text===true){
			include "models/registration_model.php";
		}
	}
	
	$action_tab = "registration_view.php";
	include "models/admin_cabinet_model.php";
	include  "views/admin_cabinet_view.php";
}

else 
	echo '<meta http-equiv="refresh" content="0; url=autorization">';