	<form action="action_basket" method="POST">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<table class="table table-hover table-responsive">
					<thead>
						<tr><th>Выбрать</th>
							<th>Товар</th>
							<th>Цвет</th>
							<th>Размер</th>
							<th>Количество</th>
							<th>Цена</th>
							<th>Итого</th>
						</tr>
					</thead>
					<tbody>
						<?php if ($basket) foreach ($basket as $item){?>
						<tr>
							<td>
								<input type="checkbox" class="chk" name="id_product[]" value=<?=$item['id_product'].";".$item['color_product'].";".$item['size_code']?>>

							</td>
							<td>
								<div>
									<a href='product?id=<?=$item['id_product'];?>'> 
										<div class="thumbnail">
											<img src='<?=($item['photo_url'])?$item['photo_url']:'uploads/img/no_photo.jpg';?>' class="prew"> 
											<div class="caption">
												<p class="h4 text-center"><?=$item['type']?> <?=$item['name']?></p>
											</div>

										</div>	
									</a>
								</div>
							</td>
							<td><?=$item['color_value']?></td>
							<td><?=$item['size']?></td>

							<td class="count"><input  type="number" min="1" value ="<?=$item['count']?>" data-id = "<?=$item['id_product'];?>" data-color="<?=$item['color_product']?>"  data-size="<?=$item['size_code']?>"><p class="help-block"></p></td>
							<td class="price"><?=$item['price']?></td>
							<td class="itog"><?=$item['price']*$item['count']?></td>
						</tr>
						<?php } ?>
					</tbody>
				</table>
				
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Действия с выбранными товарами</h3>
					</div>
					<div class="panel-body">
						<button type="submit" class="btn btn-default" name="del">Удалить из корзины</button>
						<button type="submit" class="btn btn-default btn-lg pull-right" name="buy">Купить</button>

					</div>
				</div>
			</div>
		</div>
	</form>

	<script>
		window.onload = init;
		function init(){

			var count = document.querySelectorAll("input[type='number']");
			for(i=0;i<count.length;i++)
				count[i].onchange = refreshBasket;

			var td = document.querySelectorAll("td");

			for(i=0;i<td.length;i++){
				td[i].onclick = toggleCheckBox;
			}

			function toggleCheckBox(e){
				if (e.target.localName=='td'){
					var  id = e.target.parentNode.rowIndex;
					var chcbx = document.querySelector( "tr:nth-child("+id+") .chk" );
					chcbx.checked = !chcbx.checked;
				}
			}

			function refreshBasket(e){

				var id = e.target.dataset.id;
				var count =  e.target.value;
				console.log(count);
				if (count<=0){
					e.target.value=e.target.defaultValue;
				}
				else{


					var color =  e.target.dataset.color;
					var size = e.target.dataset.size;
					var i =e.target.parentNode.parentNode.rowIndex;
					price = document.querySelector("tr:nth-child("+i+") td.price" ).innerText;
					document.querySelector("tr:nth-child("+i+") td.itog" ).innerText = price*count;
					var totalCount=count;
					count = count-e.target.defaultValue;

					var xhr = new XMLHttpRequest();

					xhr.open("POST", "change_basket");
					xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
					xhr.onreadystatechange = function () {
						if (xhr.readyState == 4 && xhr.status == 200) {
							if (xhr.responseText=="no"){
								document.querySelector("tr:nth-child("+i+") td.count p" ).innerHTML = "недостаточно товара для заказа";
								e.target.value=e.target.defaultValue;
							}
							else {
								document.querySelector("tr:nth-child("+i+") td.count p" ).innerHTML = "";
								e.target.defaultValue = e.target.value;
							}
						}
					}
					var request = "id_product="+id+"&count="+count+"&color="+color+"&size="+size+"&total_count="+totalCount;
					console.log(request);
        		    // отправка запроса с указанием данных.
        		    xhr.send(request);

        		}
        	}
        }
    </script>