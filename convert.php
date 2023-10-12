<?php
require_once './config/connect.php';
global $connect_db;

$value = $_POST['value'];
$from = $_POST['from'];
$to = $_POST['to'];
$arr = array();
$arr['from'] = $from;
$arr['to'] = $to;

$sql = "SELECT * FROM `valutes` WHERE (`id_valutes` = '$from') ";
$result = mysqli_query($connect_db,$sql);
$result = mysqli_fetch_assoc($result);
$arr['валюта from'] = $result['Name'];
$arr['значение from'] = $result['VunitRate'];

$sql = "SELECT * FROM `valutes` WHERE (`id_valutes` = '$to') ";
$result = mysqli_query($connect_db,$sql);
$result = mysqli_fetch_assoc($result);
$arr['валюта to'] = $result['Name'];
$arr['значение to'] = $result['VunitRate'];

mysqli_close($connect_db);

$arr['rezult'] = round($value*$arr['значение from']/$arr['значение to'],4);

$textJSON = json_encode($arr);
echo $textJSON;

