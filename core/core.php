<?php
include_once 'core/routing.php';
include_once "core/functions.php";
function page_load(){
	
	$page = getPage();
	routing($page);

}

function getPage(){
		
	$array = explode('/',$_SERVER['REQUEST_URI']);
	$page = $array[1];
	$page = trim_parameters($page);
	
	if ($page){
		
		$result = $page;
	}
	else $result ='main';
	
	return $result;
}

function trim_parameters($page){
	$array = explode('?',$page);
	return $array[0];
}

?>