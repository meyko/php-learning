<form action="<?=$registration_type?>" method="POST" class="form-horizontal" role="form">
	<div class="row">
		<div class="col-xs-8 col-sm-4  col-sm-offset-4 col-xs	-offset-2" >
		
			<?php if(!$error){?>
			<p class="help-block"><?=$result_text?></p>
			<?php } ?>

			<div class="form-group">
				<legend>Регистрация</legend>
			</div>

			<div class="form-group">
				<Label for="nm"  class="control-label"> Логин </label>
					
					<input type="text" maxlength="30" name='login' id='nm' class="form-control" value="<?=$login?>">
					<?php if($error=='login'){?>
					<p class="help-block"><?=$result_text?></p><?php		} ?>
					
				</div>

				<div class="form-group">
					<Label for="pas" class="control-label"> Пароль </label>
						<input type="password" class="form-control" maxlength="20" name='password' id='pas'>
						<?php if($error=='password'){?>
						<p class="help-block"><?=$result_text?></p><?php		} ?>
					</div>	

					<div class="form-group">
						<Label for="pas" class="control-label"> Повторите пароль</label>

							<input type="password" class="form-control" maxlength="20" name='password2' id='pas' >
							<?php if($error=='password2'){?>
							<p class="help-block"><?=$result_text?></p><?php		} ?>

						</div>
						<?php if($error=='empty'){?>
						<p class="help-block"><?=$result_text?></p><?php		} ?>

						<div class="form-group">
							
							<button type="submit" class="btn btn-deafult">Зарегистрироваться </button>
							
						</div>
					</div>
				</div>
			</form>
		</div>