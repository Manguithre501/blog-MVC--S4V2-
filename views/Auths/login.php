<div class="container mt-5">

	<div class="row">
		<div class="col-md-6 offset-md-2">
			<div class="bd-heading text-center">
				<h3>ESPACE ADMINISTRATEUR</h3>
			</div>

			<?php if ($login) { ?>
				<div class="alert alert-danger">
					<?= $login ?>
				</div>
			<?php } ?>

			<div class="card mt-5">
				<div class="card-body">
					<form method="POST">

						<div class="form-floating">
							<input type="text" class="form-control" name="email" placeholder="Email..." value="<?= isset($_POST['email']) ? $_POST['email'] : 'admin@gmail.com' ?>">
							<label for="email">Email...</label>
						</div>
						<div class="form-floating mt-4">
							<input type="password" class="form-control" name="pass" placeholder="Mot de passe...">
							<label for="pass">Mot de passe...</label>
						</div>

						<div class="mt-3">
							<button name="login" class="w-100 btn btn-lg btn-primary" type="submit">Connexion</button>
						</div>
					</form>


				</div>
			</div>
		</div>
	</div>
</div>