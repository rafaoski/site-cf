<?php namespace ProcessWire;

// Reset variables ( Content )
$content = $noFound = $pagination = '';

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

// Blog article
$content .= files()->render('views/blog/parts/_blog-article.php',['item' => page()]);

// Components
$content .= siteComponents(['components' => page()->components]);

// Simple nav
$content .= files()->render('views/blog/parts/_blog-nav');

// Page Links https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$content .= files()->render('views/parts/_page-links');

// if comments
if( setting('comments') ) {
	$content .= files()->render('views/blog/parts/_blog-comments.php');
}

// Render all content
echo files()->render('views/layouts/_layout-blog',
[
	'noFound' => $noFound,
	'content' => $content,
	'sidebar' => '',
	'pagination' => $pagination,
]);
