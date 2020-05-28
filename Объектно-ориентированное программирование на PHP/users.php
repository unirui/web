<?
function __autoload($class)
{
    include "$class.class.php";
}

$user1 = new Users("Администратор", "admin", "1111");
$user2 = new Users("Олег", "oleg", "2222");
$user3 = new Users("Ольга", "olga", "3333");

/*$user1 = new Users();
$user2 = new Users();
$user3 = new Users();

$user1->name = "Администратор";
$user1->login = "admin";
$user1->password = "1111";

$user2->name = "Олег";
$user2->login = "oleg";
$user2->password = "2222";

$user3->name = "Ольга";
$user3->login = "olga";
$user3->password = "3333";

$user1->showInfo();
$user2->showInfo();
$user3->showInfo();
*/



$user = new SuperUser("Александр", "alex", "4444", "суперпользователь");

//$user->showInfo();
$user->getInfo();

$user->auth("alex", "0");

unset($user1, $user2, $user3, $user);

interface IAuthorizeUser
{
    public function auth($login, $password);
}

echo "<p>Обычных  пользователей: " . (Users::$UserCounter -  SuperUser::$SuperUserCounter);
echo "<p>Суперпользователей: " . SuperUser::$SuperUserCounter;