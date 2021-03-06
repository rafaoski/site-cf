<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $noFound = $pagination = '';

// Get all blog entries from tag name
$blogPosts = pages()->get('template=blog-posts')->children("tags=$page, limit=12");

// No found
if( !count($blogPosts) ) {
	$noFound .= files()->render('views/blog/parts/_no-found');
}

// Pagination
$pagination = pagination($blogPosts);

// Content articles
foreach ($blogPosts as $item) {
	$content .= files()->render('views/blog/parts/_blog-article.php',['item' => $item]);
}

// Render all content
echo files()->render('views/layouts/_layout-blog',
[
	'noFound' => $noFound,
	'content' => $content,
	'sidebar' => '',
	'pagination' => $pagination,
]);
