<?php
// подключение библиотек
require "inc/lib.inc.php";
require "inc/config.inc.php";

if (isset($_GET['del'])) {
	$id = (int) (trim(strip_tags($_GET['del'])));
	deleteItemFromBasket($id);
}
header('Location: basket.php');