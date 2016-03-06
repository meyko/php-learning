<?php
if ($_SERVER['REQUEST_METHOD']=="POST"){

	if (checkUser()||checkAdmin()){
		$last_url	 = $_SERVER['HTTP_REFERER'];
		$index		 = strrpos($last_url,'/');
		$last_url	 = substr($last_url,$index);
		$last_url 	 = getPage($last_url);

		if ($_POST['id_product']){
			$items = $_POST['id_product'];

			if (isset($_POST['buy'])){
 			/*future buy model*/
			}
			elseif (isset($_POST['del'])){
				include "models/del_from_basket.php";
				echo "<meta http-equiv='refresh' content='0; url=$last_url'>";
			}

		}
		else			
			echo "<meta http-equiv='refresh' content='0; url=$last_url'>";
	}
	
}
