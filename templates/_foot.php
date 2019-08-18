<?php namespace ProcessWire; ?>

<footer id='main-footer' class='main-footer padding-x-sm padding-y-lg'
		style='background-color: var(--color-contrast-higher-a80);'>

	<div class='main-footer__content grid grid-gap-xs flex flex-center'>

		<p class='main-footer__social-profiles text-center'>
			<?= socialProfiles(pages()->get('/options/social-profiles/')->children()) ?>
		</p>

		<div class='main-footer__search margin-y-sm color-bg col-6@sm text-sm'>
			<?= searchForm() ?>
		</div>

		<p class="main-footer__copyright text-md text-center margin-top-sm" style='color: var(--color-bg)'>
			<?php  echo files()->render('views/parts/_footer-demo-copyright.php') ?>
			<?php  // echo files()->render('views/parts/_footer-copyright.php') ?>
		</p>

	</div>

</footer>

<script src='<?= urls()->templates ?>assets/js/scripts.js'></script>

<script>
	feather.replace()
</script>

<pw-region id='bottom-region'></pw-region>
</body>
</html>
