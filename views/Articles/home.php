<section class="text-center container">
    <div class="row">
        <div class="col-lg-6 col-md-8 mx-auto">
            <h1 class="fw-light">Tous les articles (<?= count($articles) ?>) </h1>
            <?php if (isset($_SESSION['success'])) { ?>
                <div class="alert alert-success mt-5">
                    <?= $_SESSION['success'] ?>
                </div>
            <?php }
            unset($_SESSION['success']);
            ?>
        </div>

    </div>
</section>


<div class="row mt-5">
    <?php
    foreach ($articles as $data) : ?>
        <div class="col-md-6 offset-md-3 mb-3">
            <div class="card shadow-sm">
                <div class="card-body">
                    <div class="card-title">
                        <h5><?= $data->title ?></h5>
                    </div>
                    <p class="text-muted"><?= substr($data->content, 0, 150) . '...' ?></p>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">

                            <a href="singleArticle&id=<?= $data->id ?>" class="btn btn-sm btn-outline-primary" title="Voir l'article"><i class="fas fa-eye"></i> Voir</a>

                            <?php if (!empty($_SESSION['email'])) { ?>
                                <a href="editArticle&id=<?= $data->id ?>" class="btn btn-sm btn-outline-secondary" title="Modifier l'article"><i class="fas fa-edit"></i></a>
                                <form method="POST">
                                    <input type="hidden" value="<?= $data->id ?>" name="article_id" hidden>
                                    <button type="submit" name="delete" class="btn btn-sm btn-outline-danger" title="Supprimer l'article"><i class="fas fa-trash"></i></button>
                                </form>
                            <?php } ?>
                        </div>
                        <small class="text-muted">Publier <time class="timeago" datetime="<?= $data->created_at ?>"></time></small>
                    </div>

                </div>

            </div>
        </div>

    <?php endforeach  ?>
</div>


<?php if (isset($_SESSION['success'])) { ?>
    <script>
        useSwallSuccess("ok", 'top-end');
        console.log('ok');
    </script>
<?php } ?>