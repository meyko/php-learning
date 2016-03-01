<?php

if ($_SERVER['REQUEST_METHOD']=='POST'){
	$login		 = $_POST['login'];
	$password 	 = $_POST['password'];
	list($result_text,$error) = validate($login, $password);
	if ($result_text===true){
		include "models/autorization_model.php";
		
	}
	if ($error)
		include "views/autorization_view.php";

}
else {
	include "views/autorization_view.php";
}