<?php
function createSelect($current_option, &$array, $select_name)
{
	$select_str = "<select name=\"$select_name\">";	
	
	for ($i=0;$i<count($array);$i++)
	{
		$id  =$array[$i]["id"];
		$name=$array[$i]["name"];

		if ($current_option==$array[$i]["id"])
			$select_str.="<option value=\"$id\" selected \">".$name."</option>";
		else
			$select_str.="<option value=\"$id\" \>".$name."</option>";
	}
	
	$select_str.="</select>";	
	
	return $select_str;
}



function navPages($table, $max_items_page, $where=''){
	//считаем кол-во страниц
	$count_posts = select ($table,'count(*)',$where); 
	$count_pages = ceil($count_posts[0]['count(*)'] / $max_items_page) ;


	$current_page=1;
	if ($_GET['page'] ){
		$current_page=$_GET['page'] ;
	}

	$prev_page = ($current_page==1)?
	1:$current_page-1;
	$next_page = ($current_page==$count_pages)?
	$count_pages:$current_page+1;
	return array($current_page, $prev_page, $next_page, $count_pages);
}

function cut($posts){
	foreach($posts as $key=>$post){
		$_tmp = $post['content'];
		$_tmp = explode(' ', $_tmp);
		array_splice($_tmp, 200);
		
		$posts[$key]['content'] = strip_tags(implode(' ',$_tmp)); 
	} 
	return $posts;
}

function generateSalt()
{
	$salt = '$2a$08$';

	for ($i = 0; $i < 22; $i++) {
		$r = mt_rand(0, 61);
		if ($r < 10) {
			$c = ord('0') + $r;
		} else if ($r < 36) {
			$c = ord('A') + $r - 10;
		} else {
			$c = ord('a') + $r - 36;
		}
		$salt.= chr($c);
	}


	return $salt;
}



function validate($login , $password, $password2=NULL){

	if (empty($login) or empty($password) or $password2==='')
		return array("заполните все поля",'empty');


	
	
	if (!validateName($login))
		return array ("имя пользователя может содержать только буквы латинского алфавита и цифры, не меньше 3х символов","login");

	if (!validatePass($password))
		return array ("пароль может содержать только буквы латинского алфавита и цифры, не меньше 8 символов", "password");
	if ($password2!=$password and $password2!==NULL)
		return array ("пароли не совпадают", "password2");

	return array (true, '');
}

function validateName($name)
{
	if (preg_match('/^[a-zA-Z0-9]{3,20}$/u', $name))
		return true;
	else
		return false;
}

function validatePass($pass)
{
	if (preg_match('/^[a-zA-Z0-9]{8,20}$/u', $pass))
		return true;
	else
		return false;
}


function validateText($text,$size){
	if (mb_strlen($text, 'UTF-8')>$size || strlen($text)==0){
		return false;
	}
	else {
		return true;
	}
}

function validatePlusInt($number){
	$resalt = true;
	showArray($number);
	if (is_array($number)){
		foreach ($number as $one_number){
			if (!preg_match('/^[0-9]{1,7}$/u',$one_number)||$one_number>8388607||$one_number<0){
			$resalt = false;
			echo $resalt."123";
		}
		}

	}
	else{
		if (is_integer($number)&&$number<8388607&&$number>=0)
			return true;
		else 
			return false;
	}

if ($resalt)
		return true;
	else 
		return false;


}


function validateOptions($option, $tableOption,$key){
	$tmp_array = select ($tableOption);
	$options=array();
	$resalt=true;
	foreach ($tmp_array as $v){
		$options[]=$v[$key];
	}

	if (is_array($option)){
		foreach ($option as $item){
			
			if (!in_array($option,$options)){
		 	$resalt=false;
			}
		}
	}
	elseif (in_array($option,$options)){
		return true;
	}

	else
		return false;


	if ($resalt)
		return true;
	else 
		return false;
}

function validateFloat($number){
	if (preg_match('/^(0|([1-9]\\d*?))(\\.\\d{1,2})?$/', $number)){
		return true;
	}
	else
		return false;
}


function copyFiles($copy_path){
	$photo_count=count($_FILES['photo']['tmp_name']);
	if (!$_FILES['photo']['name'][0])
		$photo_count=0;
		

		for ($i=0;$i<$photo_count;$i++)	{

			$tmp_name=$_FILES['photo']['tmp_name'][$i];
			
			$name=$_FILES['photo']['name'][$i];
			$new_name=$copy_path.$name;
			
			if (copy($tmp_name,$new_name))
			{
				$photo_name_list[]=$new_name;
			}	
		}	

		
return $photo_name_list;

}

function delFiles($delete_files){
	foreach ($delete_files as $file){
			unlink($file);
		}

}

function showArray($param){
	echo "<pre>";
	print_r($param);
	echo "</pre>";
}


function checkAdmin(){
	if ($_SESSION['user_role']=='a'||$_SESSION['user_role']=='r')
		return true;
	return false;
}

function checkUser(){
	if ($_SESSION['user_role']=='u')
		return true;
	return false;
}
