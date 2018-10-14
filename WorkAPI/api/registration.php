<?php
require_once 'DBquery.php';
$_POST = json_decode(file_get_contents('php://input'), true);
$email= $_POST['Email'];
$password = $_POST['Password'];
print_r($_POST);
$sql = "INSERT INTO 'Partners' ('Email', 'Password') 
VALUES ('$login', '$password')";
$param = [
 "Email"=>$email, 
 "Password"=>sha1(md5($password."АлигнЦентер"))];
print_r($param);
$db = new DBquery();
$newUserId = $db->insert('Partners', $param);
print_r($name);
?>