<?php namespace ProcessWire; ?>

<div class="cat-items flex flex-wrap">

<?php foreach($blogTags as $tag):

	if (count($tag->references())): ?>
	<a class='btn btn--primary' style='margin: 10px' href='<?= $tag->url ?>'>
		<div>
			<h4 class='color-inherit' style='margin: 0'><?= $tag->title ?>
			<span class='text-xs'>( <?= count($tag->references()) ?> )</span></h4>
		</div>
	</a>
	<?php endif;

endforeach; ?>

</div>