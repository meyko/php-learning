<div class="row">
	<div class="col-xs-12" id="category-sidebar">
		<p class="h5 text-center">Категории</p>
		<div class="panel panel-default text-center">
			<div class="panel-body">
				<ul class="nav nav-pills nav-stacked">

					<?php if ($categories) foreach ($categories as $category){ ?>
					<li>
						<a href="product?cat=<?=$category['type']?>"><?=$category['category_name']?></a>
					</li>
					<?php }?>
					
				</ul>
			</div>
		</div>
		
	</div>
</div>