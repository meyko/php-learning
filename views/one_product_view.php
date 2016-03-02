<?php
extract($product[0]);
extract($family[0]);
?>
<div class="row">
	<div class="col-xs-4 col-sm-4 col-md-56 col-lg-6">
		<div class="thumbnail">
			<img src='<?=($images)?$images[0]['photo_url']:'uploads/img/no_photo.jpg';?>' alt="">
		</div>
	</div>
	<div class="col-xs-5 col-sm-5 col-md-4 col-lg-4">
	<p class="h3 text-center"> <?=$family;?> <?=$name;?></p>
	<p><?=$description;?></p>
	
	<form action="bakset" method="POST" role="form">
		<div class="form-group">
		<label for="color">Цвет</label>
		<div class="form-control" id='color'>
			<?php foreach ($colors as $k=>$v){$f=0;?>
			<label class="radio-inline">
 			<input type ='radio'name="color" value='<?=$k?>' <?php if ($f==0) echo 'checked'; $f++;?> ><?=$v?>
 			</label>
			<?php }?>
	
	</div>

	</div>
	<label for="size">Размер</label>
		<select name ='size' id="size">
			<?php foreach ($sizes as $k=>$v){?>
			<option value=<?=$k?>><?=$v?></option>
			<?php }?>

		</select>
	<p class="panel-default h3"> Цена <?=$price;?> ГРН </p>  
	<input type="hidden" name='id' value='<?=$id;?>'>
		<button type="submit" class="btn btn-primary">Добавить в корзину</button>
	</form>


		
		

	</div>
</div>




	<p class="h4 allphoto">Все фото</p>
	<?php if($images){?>
	<?php foreach($images as $image){ ?>
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 images" data-color="<?=$image['color']?>">
	<div class="thumbnail full-photo">
		<img src="<?=$image['photo_url']?>">
	</div>
	</div>
	

	<?php } }  ?>
	<div class="clearfix">
	
	</div>
	
<p class="h4">Всместе с этим также смотрят</p>
<script>
window.onload = init;
	function init(){

		var colorInput = document.getElementById("color");
		

		var photos = document.getElementsByClassName("images");
		showPhoto();

		colorInput.onchange = showPhoto;
		
	
	function showPhoto(){

		document.querySelector(".allphoto").style.display="block";
		var values = colorInput.getElementsByTagName("input");
		for (i=0;i<values.length;i++)
			if (values[i].checked){

				var value=values[i].value;
			}

		
		var firstImage = document.querySelector(".thumbnail img");
		var oldImage = true;
		for (i=0;i<photos.length;i++){
			if (photos[i].dataset.color==value){
				photos[i].style.display="block";
				if (oldImage){
					var newSrc = photos[i].querySelector("img").src;
					firstImage.setAttribute("src",newSrc);
					oldImage=false;
				}
			}
			else 
				photos[i].style.display="none";
		}

		if (oldImage){
			firstImage.setAttribute("src",'uploads/img/no_photo.jpg');
			document.querySelector(".allphoto").style.display="none";

			
		}

		
		var sizeList = document.querySelectorAll("#size option");
		changeChecked=true;
		for (i=0;i<sizeList.length;i++){
			var color = sizeList[i].value.slice(-2);
		
			if (color==value){
				if(changeChecked){
					sizeList[i].selected=true;
					changeChecked = false;
				}
				sizeList[i].style.display="block";
			}
			else{
				sizeList[i].style.display="none";

			}
		}

	}	
}
</script>