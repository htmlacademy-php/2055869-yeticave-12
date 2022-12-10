<?php

function getCategoryList(mixed $bd): array
{
    $sqlCategor = 'SELECT `*` FROM category';
    $resultCategor = mysqli_query($bd, $sqlCategor);
    $categories = mysqli_fetch_all($resultCategor, MYSQLI_ASSOC);

    return $categories;
}