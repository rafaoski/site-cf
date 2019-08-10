<?php namespace ProcessWire; ?>

<div id='main-content' data-pw-append>

	<div class='container text-component'>
		<?php
			$maxDepth = 4;
			renderNavTree($pages->get('/'), $maxDepth);
		?>
	</div>

</div>
