<?php
if (checkAdmin()){
	include "views/admin_sidebar_view.php";
}

elseif (checkUser()){
// тут будет вью сайдбара для кабинета обычного пользователя

}

else {

}
?>
