<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $sidebar = $noFound = $pagination = '';

// Reset variables ( Sidebar )
$recentPosts = $blogCategories = $blogTags = '';

// Get tags
$blogTags = page()->children('limit=40');

// No found
if( !count($blogTags) ) {
	$noFound .= files()->render('views/parts/_no-found');
}

// Get recent Posts
$recentPosts = pages()->get('template=blog-posts');

// Get categories
$blogCategories = pages()->get('template=blog-categories');

// Pagination
$pagination = pagination($blogTags);

// Content
$content .= files()->render('views/parts/_blog-tags', ['blogTags' => $blogTags]);

// Content sidebar
$sidebar .= files()->render('views/parts/_blog-sidebar.php',
[
	'recentPosts' => $recentPosts,
	'blogCategories' => $blogCategories,
	'blogTags' => ''
]);

// Render all content
echo files()->render('views/_view-blog',
[
	'noFound' => $noFound,
	'content' => $content,
	'sidebar' => $sidebar,
	'pagination' => $pagination,
]);
