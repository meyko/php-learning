<?php

update('product',array('name'=>$name,
						'description'=>$description,
						'price'=>$price,
						'type'=>$type),
				array('id'=>$id));

?>