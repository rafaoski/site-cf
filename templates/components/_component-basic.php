<?php namespace ProcessWire; ?>

<div class="<?= $class ?>__content grid grid-gap-xs flex items-center">
	<div class="<?= $class ?>__body text-component <?php if( count($item->images) ) echo 'col-5@sm' ?>">
		<?= $item->body ?>
	</div>

	<?php if ( count($item->images) ): ?>
	<div class="<?= $class ?>__image col-7@sm">
		<img src="<?= $item->images->first->url ?>" alt="<?= $item->images->first->description ?>">
	</div>
	<?php endif ?>

</div>
