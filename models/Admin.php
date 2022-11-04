<?php

namespace Models;

use Helpers\Redirect;
use PDO;

class Admin extends Model
{
    private $errors;

    public function login()
    {
        if (isset($_POST['login'])) {
            if (!empty($_POST['email']) and !empty($_POST['pass'])) {
                $email = htmlspecialchars(trim($_POST['email']));
                $pass = htmlspecialchars(trim($_POST['pass']));

                $sql = "SELECT password,name FROM admins WHERE email = ?";
                $result = static::prepare($sql, [$email], true);
                @$hashedPassword = $result->password;

                if (password_verify(@$pass, $hashedPassword)) {
                    $_SESSION['email'] = $email;
                    $_SESSION['name'] =  $result->name;
                    $_SESSION['success'] = "Vous êtes connecté !";
                    Redirect::to();
                } else {
                    return $this->errors = "Ce compte n'existe pas !";
                }
            } else {
                return $this->errors = "Completez les formulaire";
            }
        }
    }

    /**
     * Get the value of errors
     */
    public function getErrors()
    {
        return $this->errors;
    }
}
