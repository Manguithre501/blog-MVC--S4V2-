<?php

use Models\Article;
use Helpers\Redirect;

if (!isset($_SESSION['email'])) {
    Redirect::to('login');
}


if (isset($_POST['submit'])) {
    $article = (new Article())->setTitle($_POST['title'])->setContent($_POST['content']);
    $errors = $article->getErrors();

    $datas = [
        'title' => $article->getTitle(),
        'content' => $article->getContent()
    ];


    if (empty($errors)) {
        Article::create($datas);
        $_SESSION['success'] = "Votre article a été publié avec succès !";
        Redirect::to();
    }
}



require_once VIEWS . 'Articles/create.php';
