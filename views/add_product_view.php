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
		<label for="color">Цвет</label>
		<select class="form-control" name ='color' id='color'>
			<?php foreach ($colors as $k=>$v){?>
			<option value=<?=$k?>><?=$k?></option>
			<?php }?>

		</select>
	</div>
	
	
	<div class="form-group">
		<label for="t">Тип товара</label>
		<select class="form-control" name ='type' id='t'>
			<?php foreach ($types as $k=>$v){?>
			<option value=<?=$k?>><?=$v?></option>
			<?php }?>

		</select>
	</div>
		<div class="form-group">
			<label for="p">Цена</label>
			<input class="form-control" id="p" name = "price" maxlength="6"placeholder="999.09" value ="<?=$price?>">
		</div>

		


		<div class="form-group">
			<label for="p">Добавть изображение</label>
			<input type='file' multiple class="form-control" id="f" name = "photo[]">
		</div>
	<label for="p">Сток товара (обновление количества)</label>
	<fieldset id="stock_field_js"> 
	
	<div class="form-group" id="clone">
		<label for="s">Размер</label>
		<select name ='size[]' id='s'>
			<?php foreach ($sizes as $k=>$v){?>
			<option value=<?=$k?>><?=$v?></option>
			<?php }?>

		</select>

			<label for="stock">В наличии единиц</label>
			<input type="number" id="stock" name = "stock[]" maxlength="6" >
			
	</div>
	</fieldset>
	<button class="btn btn-default" id="stock_ctrl_js">Добавить размер</button>
	<div class="clearfix">
	
	</div>

	<?php if ($link){ ?>
	<input name='id' type= "hidden" value="<?=$id;?>">

	<?php if($images){?>
	<p class='help-block'> Удалить существующие фото</p>
	<?php foreach($images as $image){ ?>
	<div class="form-group images" data-color="<?=$image['color']?>">
		<label>Удалить</label>
		<input type='checkbox'  name = "del_photo[]" value ="<?=$image['photo_url']?>">
		<img src="<?=$image['photo_url']?>" height=100px;>
	</div>

	<?php } } } ?>
	
	<button type="submit" class="btn btn-default">Выполнить</button>
</form>
<script>
	window.onload = init;
	function init(){

		var colorInput = document.getElementById("color");
		var photos = document.getElementsByClassName("images");
		showPhoto();

		colorInput.onchange = showPhoto;
		
		var btn = document.getElementById("stock_ctrl_js");
		btn.onclick = add_Field;
		
	function add_Field(){
		event.preventDefault();
		var node = document.getElementById("clone").cloneNode(true);
		node.removeAttribute('id');
		var fieldset = document.getElementById("stock_field_js")
		fieldset.appendChild(node);
	}
	

	function showPhoto(){
		
		for (i=0;i<photos.length;i++){
			if (photos[i].dataset.color==colorInput.value)
				photos[i].style.display="block";
			else 
				photos[i].style.display="none";
		}

	}	
}
</script>