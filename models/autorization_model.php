<?php 
$hash_password=getHashPassword($login);

if ($hash_password===NULL) {
	$result_text ='Пользователя с таким логином не существет';
	$error = 'empty';
}
else{
	$salt=substr($hash_password,0,strlen('$2a$o8$')+22);
	
	if ($result=crypt($password,$salt)===$hash_password){
		$user = select("users",'role, login', array('login'=>$login));
		$_SESSION['user_role'] = $user[0]['role'];
		$_SESSION['login'] = $user[0]['login'];
		echo '<meta http-equiv="refresh" content="0; url=personal_cabinet">';
	}
	else{
		$result_text ='Неправильный пароль';
		$error = 'password';
	}

}
?>