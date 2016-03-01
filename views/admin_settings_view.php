<form action="change_settings" method="POST" role="form">
	<legend>Настройки системы</legend>
	<p class="help=block"><?=$result?></p>
	
	<div class="form-group">
		<label for="r">Количество рядов товара на странице</label>
		<input type="number" class="form-control" id="r" value="<?=$max_rows_product?>" max="4" min="1" name ='max_rows_product'>
	</div>

	<div class="form-group">
		<label for="p">Количество постов на странице</label>
		<input type="number" class="form-control" id="p" value="<?=$max_rows_posts?>" max="10" min="1" name ='max_rows_posts'>
	</div>

	<div class="form-group">
		<label for="add">Количество рядов товара на главной и в дополнительных товарах</label>
		<input type="number" class="form-control" id="add" value="<?=$addicional_prod_rows?>" max="10" min="1" name ='addicional_prod_rows' >
	</div>
	
	<button type="submit" class="btn btn-deafult">Submit</button>
</form>