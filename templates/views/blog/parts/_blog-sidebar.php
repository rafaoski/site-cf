<?php namespace ProcessWire;

// Get Rexent Posts
$recentPosts = pages()->get("template=blog-posts");

// Get categories
$blogCategories = pages()->get('template=blog-categories');

// Get tags
$blogTags = pages()->get('template=blog-tags');


$out = '';

// Content recent posts
if( page() != $recentPosts && page()->template->name != 'blog'  ) {

	$out .= "<!-- RECENT POSTS -->\n" .
	simpleNav($recentPosts->children('limit=12, start=0'),
	[
		'countable' => false,
		'title' => setting('recent-posts'),
		'parent' => $recentPosts
	]);

}

// Content categories
if( page() != $blogCategories ) {
	$out .= "<!-- CATEGORIES -->\n" .
	simpleNav($blogCategories->children('limit=12, start=0'),
	[
		'countable' => true,
		'title' => $blogCategories->title,
		'parent' => $blogCategories
	]);
}

// Content tags
if( page() != $blogTags ) {

	$out .= "<!-- TAGS -->\n" .
	simpleNav($blogTags->children('limit=12, start=0'),
	[
		'countable' => true,
		'title' => $blogTags->title,
		'parent' => $blogTags
	]);

}
echo $out;