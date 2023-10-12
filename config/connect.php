<?php

$connect_db = mysqli_connect('localhost', 'root', '', 'fmc');
if (!$connect_db){
    echo('Ошибка подключения к БД')."<br/>";
}

