<?php

use Models\Article;
use Helpers\Redirect;

$articles = Article::all();


if (isset($_POST['delete'])) {
    $article_id = (int) htmlspecialchars(trim($_POST['article_id']));
    Article::delete($article_id);
    $_SESSION['success'] = "Votre article a été suprimmé avec succès !";
    Redirect::to();
}

require_once VIEWS . 'Articles/home.php';
