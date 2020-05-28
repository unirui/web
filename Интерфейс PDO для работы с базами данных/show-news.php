<?php
if (empty($_GET['id'])) {
    $errMsg = "ID не существует";
    echo $errMsg;
} else {
    $show = $news->showNews($_GET['id']);

    if (!$show) {
        echo "<h4>Запись отсутвует...</h4>";
        echo "<p><a href='{$_SERVER['PHP_SELF']}'>Вернуться</a>";
    } else {
        $dt = date("d-m-Y H:m:i", $show['datetime']);
        echo "<p>Номер записи: {$show['id']} ";
        echo "<h3> {$show['title']}</h3> ";
        echo "<p>Категория: {$show['category']}";
        echo "<hr>";
        echo "<p>Текст: <p>{$show['description']} ";
        echo "<hr>";
        echo "<p>Источник: {$show['source']} </p>";
        echo "<p align = right>Время: {$dt} </p>";
        echo "<p align = right><a href='{$_SERVER['PHP_SELF']}'>Вернуться</a></p> ";
    }
}