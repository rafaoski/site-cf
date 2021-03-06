<?php namespace ProcessWire;

if (page()->hasChildren): ?>
<div id='main-content' data-pw-append>

<h3><?= setting('more-topic') ?>:</h3>

	<div class="body__content parent grid grid-gap-xs flex flex-center">
		<?php foreach(page()->children as $item): ?>
		<div class='component-card col-4@md text-component'>
			<h3 class='text-md'><?= $item->title ?></h3>
			<p class='text-sm'><?= $item->intro ?></p>
			<a class='btn btn--primary' href="<?= $item->url ?>">
				<?= icon('chevrons-right', ['text_before' => setting('read-more')]) ?>
			</a>
		</div>
		<?php endforeach; ?>
	</div>

</div>
<?php endif;