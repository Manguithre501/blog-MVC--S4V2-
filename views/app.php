<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= SITE_NAME ?></title>
    <link rel="stylesheet" href="public/css/bootstrap.css">
    <link rel="stylesheet" href="public/css/icon/all.css">

</head>

<body style="padding-top: 70px;">
    <?php require_once(VIEWS . 'Partials/navbar.php') ?>

    <div class="container">
        <?php require(CONTROLLERS . $page . 'Controller.php') ?>
    </div>


    <script src="public/js/jquery.min.js"></script>
    <script src="public/js/bootstrap.bundle.js"></script>
    <script src="public/js/timeAgo/jquery.timeago.js"></script>
    <script src="public/js/timeAgo/jquery.timeago.fr.js"></script>

    <?php if ($page === 'createArticle' || $page === 'editArticle') { ?>
        <script src="public/js/app.js"></script>
    <?php } ?>

    <script>
        $("time.timeago").timeago();
    </script>

</body>

</html>