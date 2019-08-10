<?php namespace ProcessWire; ?>

<!DOCTYPE html>
<html lang='<?= setting('lang-code') ?>'>
<head id='html-head'>
<?php
// site head
echo siteHead();
// Google Analytics Code
if( setting('ga-code') ) echo gaCode( setting('ga-code')->text_1 );
// Google Webmaster Code
if( setting('gw-code') ) echo gwCode( setting('gw-code')->text_1 );
?>
</head>
<body id='html-body' class='<?= setting('body-classes')->implode(' ') ?>'<?= backgroundImage(page()->images) ?>>
<?= linkCss() // Get the link css if the file ( assets/css/templates/{template-name.css }) exists ?>

	<!-- MAIN HEADER -->
	<header id='main-header' class='main-header padding-y-md'
			style="background: var(--color-contrast-higher-a80); color: var(--color-bg)">

		<div class='container'>

			<?php
			echo langMenu(page(),
				[
					'class' => 'main-header__lang-menu padding-sm text-sm margin-bottom-sm',
					'style' => 'overflow: auto; white-space: nowrap;'
				]);
			?>

			<div class='main-header__social-profiles margin-y-sm'>
				<?= socialProfiles(pages()->get('/options/social-profiles/')->children()) ?>
			</div>

			<div class='main-header__privacy-policy text-sm'>
				<?= privacyPolicy(pages()->get("template=privacy-policy")) ?>
			</div>

			<div class='flex flex-center flex-column'>

				<div class='main-header__logo'>
					<a  href='<?= setting('home')->url ?>'>
						<img class='transition-bounce-s-r' src='<?= setting('logo') ?>'
							style='width: 180px; filter: drop-shadow( 1px 2px 2px var(--color-black) );' alt='<?= setting('logo_alt') ?>'>
					</a>
				</div>

				<p class='main-header__site-name text-xxxl' style='color: var(--color-contrast-lower)'>
					<?= setting('site-name') ?>
				</p>

			</div>

			<ul class='main-header__contact text-sm text-center margin-bottom-md'
					style='overflow: auto; white-space: nowrap;'>
				<?php // Options Nav
				echo optionsNav(
					[
						'items' => [
							setting('phone'),
							setting('e-mail'),
							setting('company-address'),
						],
						'icons' => [
							icon('phone', ['stroke' => 'var(--color-contrast-lower)', 'stroke_width' => 2]),
							icon('mail', ['stroke' => 'var(--color-contrast-lower)', 'stroke_width' => 2]),
							icon('map-pin', ['stroke' => 'var(--color-contrast-lower)', 'stroke_width' => 2]),
						],
						'mail_color' => 'color-warning',
						'list_inline' => true
					]);
				?>
			</ul>

			<nav class='main-header__nav main-nav margin-y-sm'>
				<?= navLinks() ?>
			</nav>

		</div>

	</header>