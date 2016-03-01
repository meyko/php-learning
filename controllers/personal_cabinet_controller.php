<?php 

if ($_POST['logout']==1){
	session_destroy();
	echo '<meta http-equiv="refresh" content="0; url=autorization">';
}

if ($_GET['res'])
	$result_text=$_GET['res'];

switch ($_SESSION['user_role']){
	case 'u':
	include "controllers/user_cabinet_contoller.php";
	break;
	case 'r':
	case 'a':
	include "controllers/admin_cabinet_contoller.php";
	break;
	default : echo '<meta http-equiv="refresh" content="0; url=autorization">';
}

