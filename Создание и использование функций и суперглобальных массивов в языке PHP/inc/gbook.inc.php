<?php
/* Основные настройки */
$servername = "localhost";
$database = "gbook";
$username = "root";
$password = "root";


$conn = mysqli_connect($servername, $username, $password, $database);
if (!$conn) {
    die("Ошибка соединения: " . mysqli_connect_error());
}

echo "Соединение установлено";
/* Основные настройки */

/* Сохранение записи в БД */
if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['msg'])) {

    // Переменные с формы
    $name = $_POST['name'];
    $email = $_POST['email'];
    $msg = $_POST['msg'];

    $sql1 = "INSERT INTO `msgs` (name, email, msg) VALUES ('$name', '$email', '$msg')";
    mysqli_query($conn, $sql1);
}

/* Сохранение записи в БД */

/* Удаление записи из БД */
if (isset($_GET['del'])) {
    $id = $_GET['del'];
    $sql5 = "DELETE FROM msgs WHERE id = $id";
    mysqli_query($conn, $sql5);
}

/* Удаление записи из БД */
?>
<h3>Оставьте запись в нашей Гостевой книге</h3>

<form method="post" action="<?= $_SERVER['REQUEST_URI'] ?>">
    Имя: <br /><input type="text" name="name" /><br />
    Email: <br /><input type="text" name="email" /><br />
    Сообщение: <br /><textarea name="msg"></textarea><br />

    <br />

    <input type="submit" value="Отправить!" />
</form>



<?php
/* Вывод записей из БД */

$name = $_POST['name'];
$email = $_POST['email'];
$msg = $_POST['msg'];
$datetime = $_POST['datetime'];

$sql2 = "SELECT id, name, email, msg, UNIX_TIMESTAMP(datetime) as dt\n"

    . "FROM msgs\n"

    . "ORDER BY id DESC";
//$result = mysqli_query($conn, $sql2);


$sql3 = "SELECT COUNT(*) as kol\n"

    . "FROM `msgs`";
$count = mysqli_query($conn, $sql3);
while ($row = mysqli_fetch_array($count)) {
    $kol = $row['kol'];
    echo "<p>Всего записей в гостевой книге: $kol</p>";
}


$sql4 = "SELECT * FROM `gbook`.`msgs`";
$info = mysqli_query($conn, $sql4);
while ($row = mysqli_fetch_array($info)) {
    $id = $row['id'];
    $name = $row['name'];
    $email = $row['email'];
    $msg = $row['msg'];
    $datetime = $row['datetime'];


    echo <<<LABEL
    <hr><p>
    <a href="mailto:$email">Пользователь: $name</a> в $datetime</p>
    <p>Написал(-а):</p>
    <p>$msg</p>
    </p> <p align="right">  <a href="http://files2/index.php?id=gbook&del=$id"> Удалить</a></p>
LABEL;
}
mysqli_close($conn);

/* Вывод записей из БД */
?>