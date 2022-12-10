<?php
function getLotsList (mixed $bd): array {
$sqlLot = 'SELECT `*` FROM lot LEFT JOIN category ON lot.category_id = category.id ORDER BY date_of_create DESC';
$resultLot = mysqli_query($bd, $sqlLot);
$lots = mysqli_fetch_all($resultLot, MYSQLI_ASSOC);

    return $lots;
}