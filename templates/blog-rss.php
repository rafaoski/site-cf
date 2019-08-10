<?php namespace ProcessWire;

// retrieve the RSS module$rss = $modules->get("MarkupRSS");
$rss = modules()->get('MarkupRSS');

// RSS title
$rss->title = setting('rss-title');

// RSS description
$rss->description = setting('rss-description');

// find the pages you want to appear in the feed.
// this can be any group of pages returned by $pages->find() or $page->children(), etc.
$items = $pages->find('template=blog-post, limit=10, sort=-modified');

// send the output of the RSS feed, and you are done
$rss->render($items);
