<?
class SuperUser extends Users implements ISuperUser, IAuthorizeUser
{
    public $role;
    static public $SuperUserCounter = 0;

    public function __construct($name, $login, $password, $role)
    {
        $this->role = $role;
        ++self::$SuperUserCounter;
        parent::__construct($name, $login, $password);


        echo "Role: " . $this->role . "<br>";
    }

    function showInfo()
    {
        echo "<p>Name: " . $this->name . "<br>";
        echo "Login: " . $this->login . "<br>";
        echo "Password: " . $this->password . "<br>";
        echo "Role: " . $this->role . "<br>";
    }
    function getInfo()
    {
        $array = array(
            "name" => $this->name,
            "login" => $this->login,
            "password" => $this->password,
            "role" => $this->role

        );

        print_r($array);
    }

    public function auth($login, $password)
    {
        if ($login == $this->login && $password == $this->password) {

            echo "<p>Login: " . $login . "<br>";
            echo "<p>Password: " . $password . "<br>";
            echo "<p> Авторизация прошла успешно";
        } else {
            echo "<p>Login: " . $login . "<br>";
            echo "<p>Password: " . $password . "<br>";
            echo "<p> Неверный логин или пароль";
        }
    }
}