<div class="row">
	<div class="col-xs-12 category-sidebar">
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

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Подбор товара</h3>
	</div>
	<div class="panel-body">
		<form action="filter" method="GET" role="form">
			<legend></legend>

			<div class="form-group">
				<label>Цена</label>

				от <input type="number" name="price_from" min="100" max="5000" step="100"  <?php if($price_from) echo "value='$price_from'"; else  echo "value=100";?>> 
				до <input type="number" name="price_to" min="100" max="5000" step="100" <?php if($price_to) echo "value='$price_to'"; else  echo "value=5000";?> > 
			</div>
			<div class="form-group">
				<label for id="sort">Сортировка по</label>
				<select class="form-control" name ='sorting' id='sort'>
				<option value='category' <?php if($sortBy) if ($sortBy =='category') echo "selected";?>>Категория товара</option>
				<option value='model' <?php if($sortBy) if ($sortBy =='model') echo "selected";?>>Название модели</option>
				<option value='id' <?php if($sortBy) if ($sortBy =='id') echo "selected";?>>Время поступления товара</option>				
				<option value='price' <?php if($sortBy) if ($sortBy =='price') echo "selected";?>>Цена</option>			
						
			</select>		
				<div class="radio">
					<label>						
						<input  type='radio'  name = "sort" <?php if(!$sort_type||$sort_type=="asc") echo "checked";?>  value ="asc"> по возрастанию
					</label>
				</div>
				<div class="radio">
					<label>						
						<input  type='radio'  name = "sort" <?php if($sort_type) if ($sort_type=="desc") echo "checked";?>  value ="desc"> по убыванию
					</label>
				</div>


			 

</div>

		<div class="form-group">
			<label>Отобразить категории</label>
			<?php if ($categories) foreach ($categories as $category){ ?>

			<div class="form-group">
				<div class="checkbox">
					<label>						
						<input  type='checkbox' <?php if($cat)
						{if(in_array($category['type'],$cat)) echo "checked";} else echo "checked";?> name = "cat_filter[]"  value ="<?=$category['type']?>"><?=$category['category_name']?>
					</label>
				</div>
			</div>
			<?php }?>
		</div>

		<button type="submit" class="btn btn-primary">Применить фильтр</button>
	</form>
</div>
</div>

<div class="clearfix">

</div>
