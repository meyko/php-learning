
<div class="row">
	<div class="col-xs-12  col-md-8  col-md-offset-2">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><ul class="nav nav-tabs">
					<li role="presentation" <?=$activeAdd?> ><a href="personal_cabinet">Добавить товар</a></li>
					<li role="presentation" <?=$activeDelete?> ><a href="personal_cabinet?action=remove">Удалить товар</a></li>
					<li role="presentation" <?=$activeChange?>><a href="personal_cabinet?action=change">Изменить товар</a></li>
					<li role="presentation" <?=$activeSettings?>><a href="personal_cabinet?action=settings">Настройки</a></li>
				</ul></h3>
			</div>
			<div class="panel-body">
				<?php include "views/".$action_tab;?>
			</div>
		</div>
	</div>
</div>



