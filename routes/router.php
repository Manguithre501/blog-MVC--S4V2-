<?php
/* if (isset($_GET['action'])) {
    if (file_exists('controllers/controller' . ucfirst($_GET['action']) . '.php')) {
        require_once('controllers/controller' . ucfirst($_GET['action']) . '.php');
    } else {
        http_response_code(404);
        throw new Exception('Page introuvable');
    }
} */


$pages = scandir(CONTROLLERS);

if (isset($_GET['action']) && !empty($_GET['action'])) {
    if (in_array(ucfirst($_GET['action']) . 'Controller.php', $pages)) {
        $page = $_GET['action'];
    } else {
        $page = "404";
    }
} else {
    $page = "homeArticle";
}


if ($page != 'login') {
    require_once(VIEWS . 'app.php');
} else {
    require_once(VIEWS . 'guest.php');
}
