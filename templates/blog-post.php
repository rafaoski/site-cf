<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $sidebar = $noFound = $pagination = '';

// Reset variables ( Sidebar )
$recentPosts = $blogCategories = $blogTags = '';

// Recent posts
$recentPosts = page()->parent();

// Get categories
$blogCategories = pages()->get('template=blog-categories');

// Get tags
$blogTags = pages()->get('template=blog-tags');

// Custom styles / scripts
$content .= loadfiles(
[
	'css' => WireArray([urls()->FieldtypeComments . 'comments.css']),
	'js' => WireArray([urls('jquery'), urls()->FieldtypeComments . 'comments.min.js'])
]);

// Universal Sharing Buttons ( https://www.addtoany.com/ )
$content .= toAny(
[
	'twitter' => true,
	'facebook' => true,
	'email' => true
]);

// blog article
$content .= files()->render('views/parts/_blog-article.php',['item' => page()]);

// Components
$content .= siteComponents(['components' => page()->components]);

// Simple nav
$content .= files()->render('views/parts/_blog-nav');

// https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$content .= files()->render('views/parts/_page-links');

// if comments
if( setting('comments') ) {
	$content .= files()->render('views/parts/_blog-comments.php');
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
