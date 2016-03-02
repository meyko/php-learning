<div class="row text-center">
	<p class="h2">Популярные товары</p>
</div>
<?php include "views/product_list_view.php";?>
<div class="row">
	<div class="col-md-1 pull-right">
		<a href="product?id=all"  class="btn btn-default all" role="button">Все товары</a>
	</div></div>
	<div class="row text-center">
		<p class="h2">Новые статьи</p>
	</div>
	<?php if ($posts) foreach ($posts as $post){?>
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><?=$post['header']?></h3>
			</div>
			<div class="panel-body">
				<?=$post['content']?> 
				<p>
					<a href="page?id=<?=$post['id']?>"  class="btn btn-default" role="button">Читать дальше</a></p>
				</div>
			</div>
		</div>
		<?php
	}
	if ($navigate=='posts')
		include "views/navigate_pages_view.php";
	
