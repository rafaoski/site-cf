<?php namespace ProcessWire; ?>

<div class="<?= $class ?>__content">
	<div class="<?= $class ?>__body text-component">
		<?= $item->body ?>
	</div>

	<div class="<?= $class ?>__button text-center margin-top-lg">
		<a href='<?= $item->url_1 ?>' class="btn btn--primary btn--lg"><?= $item->text_1 ?></a>
	</div>
</div>

