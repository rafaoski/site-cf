<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $noFound = $pagination = '';

// Get tags
$blogTags = page()->children('limit=40');

// No found
if( !count($blogTags) ) {
	$noFound .= files()->render('views/blog/parts/_no-found');
}

// Pagination
$pagination = pagination($blogTags);

// Content
$content .= files()->render('views/blog/parts/_blog-tags', ['blogTags' => $blogTags]);

// Render all content
echo files()->render('views/layouts/_layout-blog',
[
	'noFound' => $noFound,
	'content' => $content,
	'sidebar' => '',
	'pagination' => $pagination,
]);
