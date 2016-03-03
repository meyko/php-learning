<div class="row">
	<div class="col-xs-12 text-center">
		<?php if (!$deleted){ ?> 
		<p>Вы уверены, что хотите удалить товар <?=$id?>	? Он будет удален во всех цветах и размерах из базы ?</p>
		<form action="<?=$link?>" method="POST" role="form">
			<input type="hidden" name="id"  class="form-control" value="<?=$id?>">
			<input type="submit" class="btn btn-default"  value="Удалить">
		</form>
		<?php } else { ?> 
		<p>Товар успешно удален</p>
		<?php } ?>
	</div>
</div>