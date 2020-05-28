<?
class Users extends UserAbstract
{
    public $name;
    public $login;
    public $password;
    static public $UserCounter = 0;


    function showInfo()
    {
        echo "<p>Name: " . $this->name . "<br>";
        echo "Login: " . $this->login . "<br>";
        echo "Password: " . $this->password . "<br>";
    }

    public function __construct($name, $login, $password)
    {

        $this->name = $name;
        $this->login = $login;
        $this->password = $password;
        ++self::$UserCounter;
        echo "<p>Name: " . $this->name . "<br>";
        echo "Login: " . $this->login . "<br>";
        echo "Password: " . $this->password . "<br>";
    }

    function __destruct()
    {
        echo "<p>" . $this->name . "";
        echo "[" . $this->login . "] DELETED<br>";
    }
}