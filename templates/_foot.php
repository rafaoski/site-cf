<?php namespace ProcessWire; ?>

<footer id='main-footer' class='main-footer padding-x-sm padding-y-xl'
		style='background-color: var(--color-contrast-higher-a80);'>

	<div class='main-footer__content flex flex-wrap flex-gap-md items-center'>

		<p class='main-footer__copyright'>
			<small style='color: var(--color-bg)'>&copy; <?= date('Y') ?> &bull;</small>
			<a href='https://processwire.com' class='color-warning text-sm' target='_blank' rel='noopener noreferrer'>
				Powered by ProcessWire CMS
			</a>
		</p>

		<div class='main-footer__search color-bg text-sm'>
			<?= searchForm() ?>
		</div>

	</div>

</footer>

<script src='<?= urls()->templates ?>assets/js/scripts.js'></script>

<script>
	feather.replace()
</script>

<pw-region id='bottom-region'></pw-region>
</body>
</html>