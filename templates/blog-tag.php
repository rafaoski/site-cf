<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $sidebar = $noFound = $pagination = '';

// Reset variables ( Sidebar )
$recentPosts = $blogCategories = $blogTags = '';

// Get all blog entries from tag name
$blogPosts = pages()->get('template=blog-posts')->children("tags=$page, limit=12");

// No found
if( !count($blogPosts) ) {
	$noFound .= files()->render('views/parts/_no-found');
}

// Recent posts
$recentPosts = pages()->get('template=blog-posts');

// Get categories
$blogCategories = pages()->get('template=blog-categories');

// Get tags
$blogTags = page()->parent;

// Pagination
$pagination = pagination($blogPosts);

// Content articles
foreach ($blogPosts as $item) {
	$content .= files()->render('views/parts/_blog-article.php',['item' => $item]);
}

// Content sidebar
$sidebar .= files()->render('views/parts/_blog-sidebar.php',
[
	'recentPosts' => $recentPosts,
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
