<?php $site_name = 'BLOG EN MVC';

define('SITE_NAME', $site_name);

define('ROOT', "http://uph/mr%20Iano/blogMvc/");

$ds = DIRECTORY_SEPARATOR;


define('SCRIPT', __DIR__ . $ds);

define('VIEWS', dirname(__DIR__) . $ds . 'views/');
define('CONTROLLERS', dirname(__DIR__) . $ds . 'controllers/');

define('MODELS', dirname(__DIR__) . $ds . 'models/');


define('ROUTES', dirname(__DIR__) . $ds . 'routes/router.php');
