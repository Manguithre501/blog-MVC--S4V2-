<?php

use Models\Admin;
use Helpers\Redirect;

if (isset($_SESSION['email'])) {
    Redirect::to();
}
$login = (new Admin)->login();



require_once VIEWS . 'Auths/login.php';
