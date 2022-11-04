<?php

use Helpers\Redirect;

if (isset($_POST['logout'])) {
    session_destroy();
    Redirect::to();
} ?>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="<?= ROOT ?>"><?= SITE_NAME ?></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">


                <li class="nav-item">
                    <a class="nav-link <?= $page === 'homeArticle' ? 'active' : ''; ?>" href="<?= ROOT ?>"> <i class="fas fa-home"></i> Accueil</a>
                </li>
                <?php if (!empty($_SESSION['email'])) { ?>
                    <li class="nav-item">
                        <a class="nav-link <?= $page === 'createArticle' ? 'active' : ''; ?>" href="createArticle"> <i class="fas fa-plus-circle"></i> Créer un article</a>
                    </li>

                    <li class="nav-item">
                        <form method="POST">
                            <button type="submit" name="logout" class="nav-link btn btn-danger btn-sm"> <i class="fas fa-power-off"></i> Déconnexion</button>
                        </form>
                    </li>
                <?php } ?>
            </ul>
            <div class="d-flex align-items-center">
                <?php if (!empty($_SESSION['email'])) { ?>
                    <div class="text-white">
                        <a href="profile.php?id=" class="btn btn-warning btn-sm"><i class="fas fa-user-circle"></i>
                            <?= ucfirst($_SESSION['name']) ?>
                        </a>

                    </div>
                <?php } else { ?>
                    <a href="login" class="btn btn-outline-light btn-sm me-2">Espace administrateur</a>
                <?php } ?>
            </div>


        </div>
    </div>
</nav>