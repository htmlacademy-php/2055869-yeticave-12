<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require('helpers.php');
require('data.php');
require('init.php');

$pageContent = include_template('main.php', [
    'categories' => $categories,
    'lots' => $lots
]);
$layoutContent = include_template('layout.php', [
    'content' => $pageContent,
    'categories' => $categories,
    'isAuth' => $isAuth,
    'userName' => $userName,
    'title' => 'Главная'
]);

print($layoutContent);