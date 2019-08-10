<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $sidebar = $noFound = $pagination = '';

// Reset variables ( Sidebar )
$recentPosts = $blogCategories = $blogTags = '';

// Get tags
$blogCategories = page()->children('limit=16');

// No found
if( !count($blogCategories) ) {
	$noFound .= files()->render('views/parts/_no-found');
}

// Get recent Posts
$recentPosts = pages()->get('template=blog-posts');

// Get tags
$blogTags = pages()->get('template=blog-tags');

// Pagination
$pagination = pagination($blogCategories);

// Content
$content .= files()->render('views/parts/_blog-categories', ['blogCategories' => $blogCategories]);

// Content sidebar
$sidebar .= files()->render('views/parts/_blog-sidebar.php',
[
	'recentPosts' => $recentPosts,
	'blogCategories' => '',
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