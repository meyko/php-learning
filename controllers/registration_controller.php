<?php 
$registration_type = 'registration'; //страница, которая вызвала контроллер
$user_role = 'u';
if ($_SERVER['REQUEST_METHOD']=='POST'){
	$login		 = $_POST['login'];
	$password 	 = $_POST['password'];
	$password2	 =$_POST['password2'];

	list($result_text,$error) = validate($login, $password,$password2);
	
	if ($result_text===true){
		include "models/registration_model.php";
	}
	if ($error)
		include "views/registration_view.php";
}

else
{
	include "views/registration_view.php";
}
