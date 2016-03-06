<?php 
/*$stock = select('stock','stock',array('id'=>$id_product,'color'=>$color,'size'=>$size));
$stock = $stock[0]['stock'];
$stock = $stock-$count;
update('stock',array('stock'=>$stock),array('id'=>$id_product,'color'=>$color,'size'=>$size));
*/


$id_user = select('users','id',array('login'=>$login));
$id_user = $id_user[0]['id'];
$exists_count = select('basket','count',array('id_user'=>$id_user,'color_product'=>$color,'size'=>$size,'id_product'=>$id_product));

if ( $exists_count){	
	$count+=$exists_count[0]['count'];
	update('basket',array('count'=>$count),array('id_user'=>$id_user,'id_product'=>$id_product,'color_product'=>$color,'size'=>$size));

}
else 
{
	insert('basket',array('id_user'=>$id_user,'color_product'=>$color,'size'=>$size,'id_product'=>$id_product,'count'=>$count));
}