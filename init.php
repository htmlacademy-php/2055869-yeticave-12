<?php

require_once 'config/configDB.php';

$con = mysqli_connect(DB_host, DB_user, DB_password, DB_database);
mysqli_set_charset($con, "utf8mb4");

print("дырдык-дырдык, кусыралма Соединение установлено");

$lots = [];
$categories = [];

