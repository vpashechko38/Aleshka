<?php
require_once 'DBquery.php';
$_POST = empty($_POST) ? json_decode(file_get_contents('php://input'), true) : $_POST; //Если отпрявляют постом в форме, то читает переменную, иначе берет из инпута
$email =  isset($_POST['email']) ?? "";
$password = isset($_POST['password']) ?? "";
$sql = "SELECT `email`, `password`, `INN` FROM `partner` WHERE email = :email";
$param = [ ":email" => $email ];
$db = new DBquery();
$query = $db->queryRow($sql, $param);
print_r($query);
$checkPas = password_verify($password, $query['password'])?'true':'false';
//$INN = $query['INN']==null?"goaddinfoorgan":"goaddorders";
print_r($checkPas);
?>