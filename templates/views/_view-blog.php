<?php namespace ProcessWire;

//No Found
echo $noFound;
?>

<main id='main-content'>

	<h1 id='title' class='title margin-y-xs'>
		<?= page()->title ?>
	</h1>

	<?= $pagination ?>

	<div class='content grid grid-gap-md text-component'>

		<!-- CONTENT -->
		<div class='content__body col-8@md'>

			<?= $content ?>

			<?php
				if (page()->template != 'blog-post') {
					echo siteComponents(['components' => page()->components]);
				}
			?>

		</div>

		<!-- SIDEBAR -->
		<div class='content__sidebar col-4@md'>
			<?= $sidebar ?>
		</div>

	</div>

	<?= $pagination ?>

</main>