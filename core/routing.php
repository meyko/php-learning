<?php
include_once('core/db_script.php');
include_once('core/functions.php');
session_start();
header("Content-Type: text/html; charset=utf-8");

function routing($page){

	$controler  = select ('pages', 'page_name', array('page'=>$page));
	
	
	
	
	if (!$controler)
		$controler='not_found.php';
	else
		$controler=$controler[0]['page_name'];

	$sidebar_controler = select('right_sidebar','sidebar_page',array('main_page'=>$page));

	if ($sidebar_controler)
		$sidebar_controler=$sidebar_controler[0]['sidebar_page'];


	if ($_SESSION['login']){
		$user_name = $_SESSION['login'];
	}

include_once('models/parametres.php');
include_once('views/template_view.php');

}



?>