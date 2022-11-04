<?php

use Models\Article;

$article = Article::findOrFail($_GET['id']);




require_once VIEWS . 'Articles/single.php';
