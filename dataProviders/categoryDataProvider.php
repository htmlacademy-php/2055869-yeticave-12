<?php

$sqlCategor = 'SELECT `*` FROM category';
$resultCategor = mysqli_query($con, $sqlCategor);
$categories = mysqli_fetch_all($resultCategor, MYSQLI_ASSOC);