<?php namespace ProcessWire;

//No Found
echo $noFound;
?>

<main id='main-content'>

	<h1 id='title' class='title margin-y-xs'>
		<?= page()->title ?>
	</h1>

	<?= $pagination ?>

	<div class='grid grid-gap-md text-component'>

		<!-- BODY -->
		<div class='body col-8@md'>

			<?= $content ?>

			<?php
				if (page()->template != 'blog-post') {
					echo siteComponents(['components' => page()->components]);
				}
			?>

		</div>

		<!-- SIDEBAR -->
		<div class='sidebar col-4@md'>

			<?= $sidebar ?>

			<?= files()->render('views/blog/parts/_blog-sidebar.php') ?>

		</div>

	</div>

	<?= $pagination ?>

</main>