<?php
$_types = select('families');
foreach ($_types as $k=>$v){
	$types[$v['type']]=$v['family'];
}
if (isset($sizes))
	unset($sizes);

$_sizes = select ('sizes');
foreach ($_sizes as $k=>$v){
	$sizes[$v['id']]=$v['size'];
}


 for ($i=32;$i<=52;$i++){
 	$sizes[$i]=$i;
 }

$_colors = select ('colors');
foreach ($_colors as $k=>$v){
	$colors[$v['code']]=$v['value'];
}
?>