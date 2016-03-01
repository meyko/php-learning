<form  action="<?=$link?>" method="POST" role="form" enctype='multipart/form-data'>
	<legend><?=$legend?></legend>
	<p class="help-block bg-info"><?=$result_text?></p>
	<div class="form-group">
		<label for="n">Название</label>
		<input type="text" class="form-control" id="n" name = "name" placeholder="Имя модели" value ="<?=$name?>" maxlength="28">
	</div>

	<div class="form-group">
		<label for="d">Описание</label>
		<textarea class="form-control" id="d" name = "description"
		maxlength="245"><?=$description?></textarea>
	</div>
	
	<div class="form-group">
		<label for="t"></label>
		<select class="form-control" name ='type' id='t'>
			<?php foreach ($types as $type){?>
			<option value=<?=$type['type']?>><?=$type['family']?></option>
			<?php }?>

		</select>

		<div class="form-group">
			<label for="p">Цена</label>
			<input class="form-control" id="p" name = "price" maxlength="6"placeholder="999.09" value ="<?=$price?>">
		</div>
		<div class="form-group">
			<label for="p">Добавть изображение</label>
			<input type='file' multiple class="form-control" id="f" name = "photo[]">
		</div>
	</div>
	
	<?php if ($link){ ?>
	<input name='id' type= "hidden" value="<?=$id;?>">

	<?php if($images){?>
	<p class='help-block'> Удалить существующие фото</p>
	<?php foreach($images as $image){ ?>
	<div class="form-group">
		<label>Удалить</label>
		<input type='checkbox'  name = "del_photo[]" value ="<?=$image['photo_url']?>">
		<img src="<?=$image['photo_url']?>" height=100px;>
	</div>

	<?php } } } ?>
	
	<button type="submit" class="btn btn-default">Выполнить</button>
</form>