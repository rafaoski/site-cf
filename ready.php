<?php namespace ProcessWire;

/**
 * ProcessWire Bootstrap API Ready
 * ===============================
 * This ready.php file is called during ProcessWire bootstrap initialization process.
 * This occurs after the current page has been determined and the API is fully ready
 * to use, but before the current page has started rendering. This file receives a
 * copy of all ProcessWire API variables. This file is an idea place for adding your
 * own hook methods.
 *
 */

/** @var ProcessWire $wire */


/** Admin Pages Custom CSS // Style inside head ( Clean Admin Tree ) */
	$wire->addHookAfter('Page::render', function($event) {

		$style = '';

		if(page()->template != 'admin') return; // Check if is Admin Panel
		$value  = $event->return; // Return Content
		$templates = urls()->templates; // Get Template folder URL

	if( pages('options')->site_options->get("name=clean-admin-tree") ) {
		$style .= "\n<link rel='stylesheet' href='{$templates}assets/admin/clean-admin-tree.css'>\n";
	}
		// $style .= "\n<link rel='stylesheet' href='{$templates}assets/admin/admin.css'>\n";

		$event->return = str_replace("</head>", "\n\t$style</head>", $value); // Return All Changes
	});


// Remove unnecessary Categories and Tags
$wire->addHook('Pages::save', function($event) {

	$page = $event->arguments('page');

	if($page->template != 'options' || $page->checkbox == 0) return;

	// Disable the check box after saving the page ( you do not need it the next time you edit the options page )
	$page->setAndSave('checkbox', 0);

	// Categories
	$cat_pages = '';

	// Tags
	$tag_pages = '';

	foreach (pages()->get("template=blog-categories")->children as $category) {
		if(!$category->references->count()) {
			$cat_pages .= $category->title . ' , ';
			$category->trash();
		}
	}

	foreach (pages()->get("template=blog-tags")->children as $tag) {

		if(!$tag->references->count()) {
			$tag_pages .= $tag->title . ' , ';
			$tag->trash();
		}

	}

	if( $cat_pages ) {
		$event->return = $this->message( __('You have removed the unnecessary Categories: ') . ' ' . $cat_pages );
	}

	if( $tag_pages ) {
		$event->return = $this->message( __('You have removed the unnecessary Tags: ') . ' ' . $tag_pages );
	}

	if( $cat_pages == '' && $tag_pages == '' ) {
		$event->return = $this->message( __('No pages found in Categories to be moved to trash') );
		$event->return = $this->message( __('No pages found in Tags to be moved to trash') );
	}

});

// https://processwire.com/docs/modules/hooks/
wire()->addHookProperty('Page::intro', function($event) {
	$page = $event->object;
	$intro = substr(strip_tags($page->body), 0, 255);
	$lastPeriodPos = strrpos($intro, '.');
	if($lastPeriodPos !== false) $intro = substr($intro, 0, $lastPeriodPos);
	$event->return = $intro . ' ... ';
  });

/** Custom filed body elemnt ( ul, li ) class */
// $wire->addHookAfter('Pages::saveReady', function(HookEvent $event) {
// 	$page = $event->arguments(0);

// // Replace ul class in body field
// 	$page->body = str_replace(
	// 		[
// 			"<ul>",
// 			// "<li>"
// 		],
// 		[
	// 			"<ul class='list'>",
	// 			// "<li class='custom-class'>"
	// 		],
	// 	$page->body);

// 	// $event->message("You saved page $page->path");
// });
