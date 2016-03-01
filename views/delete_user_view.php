<div class="row">
	<div class="col-xs-12">
		<form action="delete_admin" method="POST" role="form">
			<legend>Удаление пользователя или редактора</legend>
			<p class="help-block"><?=$result_text?></p>
			<div class="form-group">
				<label for="user_delete">Введите логин пользователя</label>
				<input type="text" class="form-control" id="user_delete" placeholder="Login" name="login">
			</div>
			<button type="submit" class="btn btn-default">Удалить пользователя</button>
		</form>
	</div>
</div>