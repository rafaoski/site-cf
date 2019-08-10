<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $sidebar = $noFound = $pagination = '';

// Reset variables ( Sidebar )
$recentPosts = $blogCategories = $blogTags = '';

// Get all blog entries
$blogPosts = pages()->get("template=blog-posts")->children('limit=12');

// No found
if( !count($blogPosts) ) {
	$noFound .= files()->render('views/parts/_no-found');
}

// Get categories
$blogCategories = pages()->get('template=blog-categories');

// Get tags
$blogTags = pages()->get('template=blog-tags');

// Pagination
$pagination = pagination($blogPosts);

// Content articles
foreach ($blogPosts as $item) {
	$content .= files()->render('views/parts/_blog-article.php',
	[
		'item' => $item,
		'image' => false
	]);
}

// Content sidebar
$sidebar .= files()->render('views/parts/_blog-sidebar.php',
[
	'recentPosts' => '',
	'blogCategories' => $blogCategories,
	'blogTags' => $blogTags
]);

// Render all content
echo files()->render('views/_view-blog',
[
	'noFound' => $noFound,
	'content' => $content,
	'sidebar' => $sidebar,
	'pagination' => $pagination,
]);
