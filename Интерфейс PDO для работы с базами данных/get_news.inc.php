<?php
$items = $news->getNews();
if (!is_array($items)) {
    $errMsg = "Ошибка при выводе записей";
    echo $errMsg;
} elseif (!count($items)) {
    $errMsg = "Новостей нет";
    echo "<h3 align=center>$errMsg</h3>";
} else {
    echo "Записей в ленте: " . count($items);

    foreach ($items as $item) {
        $dt = date("d-m-Y H:i:s", $item['datetime']);
        $desc = nl2br($item['description']);
        echo "
        <h3> {$item['title']} </h3>
        <p>Текст новости: $desc <br>Категория: {$item['category']}<br> Дата/Время: $dt</p>
        <p><a href='news.php?id={$item['id']}'>Просмотреть новость</a>
        </p><hr>";
    }
}