<?php 
$salt          = generateSalt();
$hash_password = crypt($password, $salt);
$result        = registrUser($login, $hash_password,$user_role);

if ($result===null){
	$result_text = 'пользователь с таким логином уже существует';
	$error = 'empty';
}
elseif ($user_role=='u') {

	echo 'Регистрация успешно завершена, вы будете перенаправлены на страницу авторизации через 4 секунды';
	echo '<meta http-equiv="refresh" content="4; url=autorization">';
	
}

else {
	$result_text="Регистрация успешно завершена";
}
