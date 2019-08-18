<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $noFound = $pagination = '';

// Get tags
$blogCategories = page()->children('limit=16');

// No found
if( !count($blogCategories) ) {
	$noFound .= files()->render('views/blog/parts/_no-found');
}

// Pagination
$pagination = pagination($blogCategories);

// Content
$content .= files()->render('views/blog/parts/_blog-categories', ['blogCategories' => $blogCategories]);

// Render all content
echo files()->render('views/layouts/_layout-blog',
[
	'noFound' => $noFound,
	'content' => $content,
	'sidebar' => '',
	'pagination' => $pagination,
]);