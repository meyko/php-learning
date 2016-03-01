<?php
extract($product[0]);
extract($family[0]);
?>
<div class="row">
	<div class="col-xs-4 col-sm-4 col-md-56 col-lg-6">
		<div class="thumbnail">
			<img src='<?=($photos)?$photos[0]['photo_url']:'uploads/img/no_photo.jpg';?>' alt="">
		</div>
	</div>
	<div class="col-xs-5 col-sm-5 col-md-4 col-lg-4">
		<p class="h3 text-center"> <?=$family;?> <?=$name;?></p>
		<p><?=$description;?></p>
		<p class="panel-default h3"> Цена <?=$price;?> ГРН </p>  
		<a href="buy?id=<?=$id;?>"  class="btn btn-default" role="button">Купить</a>
		<a href="busket?id=<?=$id;?>"  class="btn btn-default" role="button">Добавить в корзину</a>

	</div>
</div>

<div class="row">
	<?php if($photos){ ?>
	<p class="h4">Все фото товара</p>
	<?php foreach ($photos as $photo) {?>
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
		<div class="thumbnail full-photo">
			<img src="<?=$photo['photo_url']?>" alt="">
		</div>
	</div>
	<?php } } ?>
</div>

<p class="h4">Всместе с этим также смотрят</p>

