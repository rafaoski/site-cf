<?php namespace ProcessWire;

/**
 * _main.php template file, called after a page’s template file
 *
 */

files()->include('./_head') // Include header
?>

<?= editBtn() ?>

<!-- MAIN CONTENT -->
<main id='main-content' class='container max-width-lg margin-y-lg'>

	<h1 id='title' class='title margin-y-xs'>
		<?= page()->title ?>
	</h1>

	<div id='body' class='body text-component'>
		<?= page()->body ?>
	</div>

	<?= siteComponents(['components' => page()->components]) ?>

</main>

<?= debugInfo() ?>

<!--MAIN FOOTER -->
<?php
files()->include('./_foot'); // Include footer
