<?php

require_once 'config/DB.php';

$con = mysqli_connect($DB['host'], $DB['user'], $DB['password'], $DB['database']);
mysqli_set_charset($con, "utf8mb4");

print("дырдык-дырдык, кусыралма Соединение установлено");

$lots = [];
$categories = [];

