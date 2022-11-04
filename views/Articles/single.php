<div class="row">
    <div class="col-md-6 offset-md-3">
        <div class="card shadow-sm">
            <?php if ($article != false) : ?>
                <div class="card-body">
                    <div class="card-title">
                        <h5><?= $article->title ?></h5>
                    </div>
                    <p class="card-text"><?= nl2br($article->content) ?>
                    </p>
                    <hr>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                            <small class="text-muted">Publier <time class="timeago" datetime="<?= $article->created_at ?>"></time></small>
                        </div>

                    </div>

                </div>
            <?php else : ?>
                <div class="alert alert-danger">
                    Cette article n'existe pas !
                </div>

            <?php endif ?>
        </div>


    </div>
</div>