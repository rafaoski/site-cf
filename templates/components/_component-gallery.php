<?php namespace ProcessWire; ?>

<h3><?= $item->title ?></h3>

<div class="<?= $class ?>__gallery my-gallery" itemscope itemtype="http://schema.org/ImageGallery">
	<div class='parent grid grid-gap-xs flex flex-center'>
		<?php foreach($item->images as $img): ?>
		<figure class='col-4@md transition-bounce-s' itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<a href="<?= $img->url ?>" itemprop="contentUrl" data-size="<?= $img->width ?>x<?= $img->height ?>">
				<img src="<?= $img->url ?>" itemprop="thumbnail" alt="<?= $img->description ?>" />
			</a>
			<figcaption itemprop="caption description"><?= $img->description ?></figcaption>
		</figure>
		<?php endforeach; ?>
	</div>
</div>