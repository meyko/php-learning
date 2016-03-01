<?php
// вывод отдельной статьи или переход на главную, если статья не задана
if ($_GET['id']){
	$id = $_GET['id'];
	include "models/article_model.php";
	include "views/article_view.php";
} 
else{
	include "main_view_controller.php";
}

?>