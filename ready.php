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

// https://processwire.com/talk/topic/19250-formbuilder-allow-html-in-label/
// $wire->addHookAfter("InputfieldCheckbox::render",function($event){
//     $field = $event->object;
//     $output = $event->return;
//     $policyUrl = pages()->get("template=privacy-policy")->url;
//     if($field->name == "privacy_policy"){
//         $output = str_replace("privacy policy","<a href='{$policyUrl}'>privacy policy</a>", $output);
//     }
//     $event->return = $output;
// });

// wire()->addHookAfter('InputfieldAsmSelect::render', function(HookEvent $event) {
	// Get the object the event occurred on, if needed
	// $InputfieldAsmSelect = $event->object;

	// An 'after' hook can retrieve and/or modify the return value
	// $return = $event->return;

	/* Your code here, perhaps modifying the return value */

	// Populate back return value, if you have modified it
	// $event->return = 'asmSelectTest';

//   });


/** On-demand mirroring of remote web server files to your dev environment ( https://processwire.com/blog/posts/pw-3.0.137/  )*/
// $wire->addHookAfter('Pagefile::url, Pagefile::filename', function($event) {

// 	$config = $event->wire('config');
// 	$file = $event->return;

// 	if($event->method == 'url') {
// 	  // convert url to disk path
// 	  $file = $config->paths->root . substr($file, strlen($config->urls->root));
// 	}

// 	if(!file_exists($file)) {
// 	  // download file from source if it doesn't exist here
// 	  $src = 'https://domain.com/site/assets/files/';
// 	  $url = str_replace($config->paths->files, $src, $file);
// 	  $http = new WireHttp();
// 	  $http->download($url, $file);
// 	}
//   });

/** Define toolbar for a particular role ( https://processwire.com/talk/topic/17195-customise-ckeditor-toolbar-per-role/ ) */
// wire()->addHookBefore('Field(name=body)::getInputfield', function(HookEvent $event) {
// $field = $event->object;
// if(wire()->user->hasRole('editor')) $field->toolbar = 'Format, Bold, Italic, -, NumberedList, BulletedList, Outdent, Indent';
// $field->toolbar = 'Format, Bold, Italic, -, NumberedList, BulletedList, Outdent, Indent';
// });

/** https://processwire.com/docs/modules/hooks/ */
// wire()->addHookProperty('Page::intro', function($event) {
// 	$page = $event->object;
// 	$intro = substr(strip_tags($page->body), 0, 255);
// 	$lastPeriodPos = strrpos($intro, '.');
// 	if($lastPeriodPos !== false) $intro = substr($intro, 0, $lastPeriodPos);
// 	$event->return = $intro;
//  });

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

	// 	// Replace ul class in hero field
	// 	$page->hero_text = str_replace(
		// 		[
			// 			"<ul>",
			// 			// "<li>"
			// 		],
			// 		[
// 			"<ul class='list'>",
// 			// "<li class='custom-class'>"
// 		],
// 	$page->hero_text);

// 	// $event->message("You saved page $page->path");
// });
