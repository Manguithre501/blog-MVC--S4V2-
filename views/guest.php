<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= SITE_NAME ?> | PAGE DE CONNEXION</title>
    <link rel="stylesheet" href="public/css/bootstrap.css">
    <link rel="stylesheet" href="public/css/icon/all.css">
</head>

<body>
    <?php require_once(VIEWS . 'Partials/navbar.php') ?>

    <div class="container">
        <?php require(CONTROLLERS . $page . 'Controller.php') ?>
    </div>
    <script src="public/js/bootstrap.bundle.js"></script>
</body>

</html>