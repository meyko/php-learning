<?php
if (checkUser()||checkAdmin()){
	showArray($GLOBALS);
	include "models/add_to_basket_model.php";
	
}