<?php

use Models\Article;
use Helpers\Redirect;


if (!isset($_SESSION['email'])) {
    Redirect::to('login');
}


$article = Article::findOrFail($_GET['id']);

if (isset($_POST['submit'])) {
    $getArticle = (new Article())->setTitle($_POST['title'])->setContent($_POST['content']);
    $errors = $getArticle->getErrors();

    $datas = [
        'title' => $getArticle->getTitle(),
        'content' => $getArticle->getContent()
    ];


    if (empty($errors)) {
        Article::update((int) $_GET['id'], $datas);
        $_SESSION['success'] = "Votre article a été mise à jour avec succès !";
        Redirect::to();
    }
}


require_once VIEWS . 'Articles/edit.php';
