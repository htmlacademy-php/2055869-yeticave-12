<?php

$isAuth = rand(0, 1);

$currentTime = date("H:i");

$userName = 'erma4ina nenavidit git';

$categories = [
    'promo__item--boards' => 'Доски и лыжи',
    'promo__item--attachment' => 'Крепления',
    'promo__item--boots' => 'Ботинки',
    'promo__item--clothing' => 'Одежда',
    'promo__item--tools' => 'Инструменты',
    'promo__item--other' => 'Разное'
];


$lots = [
    [
        'name' => '2014 Rossignol District Snowboard',
        'category' => 'Доски и лыжи',
        'price' => 10999,
        'url' => 'img/lot-1.jpg',
        'dateLeft' => '2022-05-30'
    ],
    [
        'name' => 'DC Ply Mens 2016/2017 Snowboard',
        'category' => 'Доски и лыжи',
        'price' => 159999,
        'url' => 'img/lot-2.jpg',
        'dateLeft' => '2022-06-15'
    ],
    [
        'name' => 'Крепления Union Contact Pro 2015 года размер L/XL',
        'category' => 'Крепления',
        'price' => 8000,
        'url' => 'img/lot-3.jpg',
        'dateLeft' => '2022-07-20'
    ],
    [
        'name' => 'Ботинки для сноуборда DC Mutiny Charocal',
        'category' => 'Ботинки',
        'price' => 10999,
        'url' => 'img/lot-4.jpg',
        'dateLeft' => '2022-08-21'
    ],
    [
        'name' => 'Куртка для сноуборда DC Mutiny Charocal',
        'category' => 'Одежда',
        'price' => 7500,
        'url' => 'img/lot-5.jpg',
        'dateLeft' => '2022-09-09'
    ],
    [
        'name' => 'Маска Oakley Canopy',
        'category' => 'Разное',
        'price' => 5400,
        'url' => 'img/lot-6.jpg',
        'dateLeft' => '2022-10-10'
    ],
];