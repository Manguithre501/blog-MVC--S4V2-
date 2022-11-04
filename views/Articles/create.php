<div class="row mt-5">
    <div class="col-md-6 offset-md-3">
        <?php if (!empty($errors)) { ?>
            <div class="alert alert-danger">
                <div class="card-content white-text">
                    <?php
                    foreach ($errors as $error) {
                        echo $error . "<br/>";
                    }
                    ?>
                </div>
            </div>
        <?php } ?>
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Nouvelle article</h4>
            </div>
            <div class="card-body">
                <form method="POST" id="form">
                    <div class="form-group mb-3">
                        <label for="title">Titre</label>
                        <input type="text" name="title" class="form-control" placeholder="Titre de l'article..." value="<?= isset($_POST['title']) ? $_POST['title'] : '' ?>">
                    </div>
                    <div class="form-group mb-3">
                        <label for="content">Contenu</label>
                        <textarea name="content" rows="5" class="form-control" placeholder="Contenu de l'article..."><?= isset($_POST['content']) ? $_POST['content'] : '' ?></textarea>
                    </div>

                    <div class="form-group">
                        <button type="submit" id="submit" name="submit" class="btn btn-success btn-sm float-end"><i class="fas fa-save"></i> Publier l'article</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>