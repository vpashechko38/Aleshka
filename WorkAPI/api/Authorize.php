<?php
require_once 'DBquery.php';
$_POST = json_decode(file_get_contents('php://input'), true);
$email= $_POST['Email'];
$password = $_POST['Password'];
$sql = "SELECT 'Email', 'Password', 'INN' FROM 'Partners' WHERE 'Email'=:email";
$param = [
    ":email"=>$email ];
$db = new DBquery();
$query = $db->queryRow($sql, $param);
print_r($query);
var_dump($query);
?>