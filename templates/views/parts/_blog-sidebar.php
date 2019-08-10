<?php namespace ProcessWire;

$out = '';

// Content recent posts
if( $recentPosts ) {

	$out .= "<!-- RECENT POSTS -->\n" .
	simpleNav($recentPosts->children('limit=12, start=0'),
	[
		'countable' => false,
		'title' => setting('recent-posts'),
		'parent' => $recentPosts
	]);

}

// Content categories
if( $blogCategories ) {
	$out .= "<!-- CATEGORIES -->\n" .
	simpleNav($blogCategories->children('limit=12, start=0'),
	[
		'countable' => true,
		'title' => $blogCategories->title,
		'parent' => $blogCategories
	]);
}

// Content tags
if( $blogTags ) {

	$out .= "<!-- TAGS -->\n" .
	simpleNav($blogTags->children('limit=12, start=0'),
	[
		'countable' => true,
		'title' => $blogTags->title,
		'parent' => $blogTags
	]);

}
echo $out;