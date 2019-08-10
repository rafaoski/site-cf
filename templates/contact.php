<?php namespace ProcessWire;

// E-Mail
$eMail = setting('e-mail');

// Warning E-mail
if( !isset($eMail->text_1) || $eMail->text_1 == false ) {

// Reset Form
	$form = '';

// Warning Text
	$eMail =  __('You must complete the E-mail adress on the options page !!!');

} else {

	// Set E-Mail Adress
	$eMail = sanitizer()->email( $eMail->text_1 );

	if( setting('advanced-form') ) {

		$form = files()->render('inc/_advanced-form'); // Get Advanced Contact Form

	} else {

		$form = files()->render('inc/_basic-form'); // Get Basic Contact Form
	}
}
?>

<head id='html-head' pw-append>
	<style>
		/* HONEYPOT */
		.hide-robot{
			display: none;
		}
	</style>
</head>

<div id="body">

	<div class='grid grid-gap-md'>
		<?php if (!$session->contactFormMessage ): ?>
			<div class='content-posts <?= $form ? 'col-5@md' : 'col-12' ?>'>
				<?php
					echo optionsNav(
					[
						'items' =>
						[
							setting('phone'),
							setting('e-mail'),
							setting('company-address')
						],
						'icons' =>
						[
							icon('phone', ['stroke' => 'var(--color-contrast-high)']),
							icon('mail', ['stroke' => 'var(--color-contrast-high)']),
							icon('map-pin', ['stroke' => 'var(--color-contrast-high)']),
						]
					]);
				?>

				<?= page()->body ?>
			</div>

			<?php if ($form): ?>
			<div id='content-form' class='content-form col-7@md'>
				<?= $form ?>
			</div>
			<?php endif ?>

		<?php else: ?>
		<div class='success-message'>
			<?php
				// Session contactFormMessage
				echo $session->contactFormMessage;
			?>
		</div>
		<?php endif ?>
	</div>

</div>

<?php if ( setting('advanced-form') ): ?>
<pw-region id='bottom-region'>
	<!--  FLATPICKR https://flatpickr.js.org/getting-started/ -->
	<link rel="stylesheet" href="<?= urls('flatpickr-css') ?>"/>
	<script src="<?= urls('flatpickr-js') ?>"></script>
	<!-- FLATPICKR LOCALE -->
	<!-- <script src="https://npmcdn.com/flatpickr/dist/l10n/de.js"></script> -->
	<!-- <script src="https://npmcdn.com/flatpickr/dist/l10n/ru.js"></script> -->
	<!-- <script src="https://npmcdn.com/flatpickr/dist/l10n/fr.js"></script> -->
	<!-- <script src="https://npmcdn.com/flatpickr/dist/l10n/pl.js"></script> -->
	<script>
		// https://flatpickr.js.org/examples/
		flatpickr("#start_date", {
			enableTime: false,
			mode: "range",
			minDate: "today",
			// defaultDate: ["<?php // echo date('Y,m,d') ?>"],
			dateFormat: "Y-m-d",
			// dateFormat: "Y-m-d H:i",
			// "locale": "de",
			// "locale": "ru",
			// "locale": "fr",
			// "locale": "pl",
		});
	</script>
</pw-region>
<?php endif;

// Remove contactFormMessage
$session->remove('contactFormMessage');
