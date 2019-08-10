<?php namespace ProcessWire; ?>

<div class="cat-items flex flex-wrap">
	<?php foreach($blogCategories as $category): if (count($category->references())): ?>
	<a href='<?= $category->url ?>' class='component-card' style='margin: var(--space-xs)'>
		<div>
			<h4 style='margin: 0'><?= $category->title ?>
			<span class='text-xs'>( <?= count($category->references()) ?> )</span></ style='margin: 0'>
		</div>
	</a>
	<?php
		endif;
	endforeach;
	?>
</div>