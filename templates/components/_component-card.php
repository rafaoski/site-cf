<?php namespace ProcessWire;
// Get items
$cardItems = $item->rep_card;
// You do not need smaller cards than the size of 3 columns
$cardColumn = count($cardItems ) > 4 ? 3 : 12 / count($cardItems);
?>

<div class="<?= $class ?>__content parent grid grid-gap-xs flex flex-center">
	<?php foreach($item->rep_card as $card): ?>
	<div class="component-card col-<?= $cardColumn ?>@md text-component">
		<h3><?= $card->text_1 ?></h3>
		<p><?= $card->body ?></p>
	</div>
	<?php endforeach; ?>
</div>
