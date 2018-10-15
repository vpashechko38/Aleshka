<?php
require_once 'DBquery.php';
$_POST = json_decode(file_get_contents('php://input'), true);
$email= $_POST['Email'];
$password = $_POST['Password'];
$param = [
 "Email"=>$email, 
 "Password"=>password_hash($password, PASSWORD_DEFAULT)];
$db = new DBquery();
$newUserId = $db->insert('Partners', $param);
$d= new DateTime();
$d->modify('+1 month');
$password = $password.$email.'pakaded';
$param = [
    "UserId"=>$newUserId, 
    "KeyLicense"=>password_hash($password, PASSWORD_DEFAULT),
    "LifeTime"=>$d->format('Y-m-d')];
$IdLicense = $db->insert('Licenses',$param);
print_r($IdLicense);
?>