<?php
function get_connection(){
	return mysqli_connect('127.0.0.1','root','','myfirstshop');
}

function select($table, $what='*', $where='', $add=""){

	if (!empty($where))
	{

		foreach($where as $key=>$value){
			$where_sql.="$and $key='$value' ";
			
			if (!$and)
				$and=' and ';
		}
		
		$where_sql='where '.$where_sql;
	}
	
	$query="SELECT $what FROM $table $where_sql $add";

	$db_connection=get_connection();
	mysqli_set_charset($db_connection,'utf8');
	$result = mysqli_query($db_connection,$query);

	if ($result && mysqli_num_rows($result)){

		while ($row=mysqli_fetch_assoc($result))
			$rows[]=$row;
	}
	else {
		$rows='';
	}
	
	mysqli_close($db_connection);
	
	return $rows;
}

function query($query_str){
	
	$db_connection=get_connection();
	mysqli_set_charset($db_connection,'utf8');
	$result= mysqli_query($db_connection,$query_str);
	
	if (mysqli_num_rows($result)>0){
		while ($row=mysqli_fetch_assoc($result))
			$rows[]=$row;
	}
	
	
	mysqli_close($db_connection);
	
	return $rows;
	
}

function getRandom($table, $count){
	$count_items = select ($table,'count(*)'); 

	$result = array();
	if ($count<=$count_items[0]['count(*)']){
	for ($i=0; $i<$count; $i++){
		$curRand=rand(0, $count_items[0]['count(*)']-1);
		$item =  select ($table,'*','',"limit $curRand, 1");
		
		if (!in_array($item[0],$result))
			$result[]=$item[0];
		else 
			$i--;
	}
}
else 
 $result = select($table);
	return $result;

}


function getHashPassword($login)
{
	$db_connection = get_connection();

	$query   = "SELECT password FROM users WHERE login='$login'";
	$result  = mysqli_query($db_connection, $query);
	$row     = mysqli_fetch_assoc($result);
	
	mysqli_close($db_connection);
	
	return $row['password'];    
}


function registrUser($login, $password,$role)
{
	$db_connection = get_connection();

	$result = getHashPassword($login);
	
    //поверка есть ли логин в бд
	if (!$result) {
		
        // заполнение users
		$query = "INSERT INTO users (login,password,role)
		VALUES ('$login','$password','$role')";
		$result = mysqli_query($db_connection, $query);

		if (!$result)
			$result = null;
	} 	else
			$result = null;

	mysqli_close($db_connection);

	return $result;
}

function insert($table,$parameters,$return_id=false){
	$db_connection=get_connection();
	mysqli_set_charset($db_connection,'utf8');
	
	foreach ($parameters as $key=>$value){
		$key_sql.=$key.',';

		if (is_string($value)){
			$value= mysqli_real_escape_string ( $db_connection, $value );
		}

			$value_sql.="'".$value."'".',';
		}

		$key_sql=substr($key_sql,0,strlen($key_sql)-1);
		$value_sql=rtrim($value_sql,',');

		$query="INSERT INTO $table ($key_sql)
		VALUES ($value_sql)";
		$result=mysqli_query($db_connection,$query);

		if (!$result){
			echo mysqli_error($db_connection);		
		}

		if ($return_id==true)
		{
			$new_id=mysqli_insert_id($db_connection);
			mysqli_close($db_connection);

			return $new_id;
		}

		mysqli_close($db_connection);

	}


	function update($table,$parameters,$where){
	
	
	$coma="";

	foreach($parameters as $key=>$value){
		$what_sql.=" $coma $key='$value' ";
		if (empty($coma)){
			$coma=',';
		}
	}
	
		
	$where_sql= rtrim($where_sql,',');
	if (!empty($where))
	{
		foreach($where as $key=>$value){
			$where_sql.=" $and $key='$value' ";	

			if (!$and){
				$and=' and ';
			}
		}
		
		$where_sql=' WHERE '.$where_sql;
	}
	
	
	
	$query="UPDATE $table SET $what_sql $where_sql";
	
	$db_connection=get_connection();
	mysqli_set_charset($db_connection,'utf8');
	
	$result=mysqli_query($db_connection,$query);
	if (!$result){
		
		echo mysqli_error($db_connection);	
	mysqli_close($db_connection);
}
}

function delete($table,$where){
	

	if (!empty($where))
	{
		foreach($where as $key=>$value){
			$where_sql.=" $and $key='$value' ";	

			if (!$and){
				$and=' and ';
			}
		}
		
		$where_sql=' WHERE '.$where_sql;
	}
	
	$where_sql= rtrim($where_sql,' and ');
	
	$query="DELETE FROM $table $where_sql";
	$db_connection=get_connection();
	
	$result=mysqli_query($db_connection,$query);
	if (!$result){
		mysqli_close($db_connection);
		return false;
	
	}
mysqli_close($db_connection);
return true;
}