<?php namespace ProcessWire;
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// https://processwire.com/blog/posts/processwire-3.0.101-core-updates/

	echo sanitizer()->truncate($value, [
		'type' => 'punctuation',
		'maxLength' => 200,
		'visible' => true,
		'more' => '…'
	  ]);