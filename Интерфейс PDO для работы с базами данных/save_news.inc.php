<?php
if (empty($_POST['title']) || empty($_POST['description']) || empty($_POST['source'])) {
    $errMsg = "Не все поля заполнены";
} else {
    $t = strip_tags($_POST['title']);
    $c = $_POST['category'];
    $d = strip_tags($_POST['description']);
    $s = strip_tags($_POST['source']);

    if (!$news->saveNews($t, $c, $d, $s)) {
        $errMsg = "Ошибка при добавлении записи";
    } else {
        header("Location: news.php");
        exit;
    }
}