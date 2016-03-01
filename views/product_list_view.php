<?php
if ($product_list){?>

<?php foreach($product_list as $product){
	extract($product);
	?>	
	<div class='col-md-4'>
		<a href='<?=$link?>?id=<?=$id;?>'> 
			<div class="thumbnail">
				<img src='<?=($photo)?$photo:'uploads/img/no_photo.jpg';?>' class="prew"> 
				<div class="caption">
					<p class="h4 text-center"><?=$type?> <?=$price;?> грн</p>
				</div>
				
			</div>	
		</a>	
	</div>
	
	<?php
}	

}

if ($navigate=='product')
	include "views/navigate_pages_view.php";