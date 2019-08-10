<?php namespace ProcessWire;

/**
 * Return site head
 *
 * @param array|string $options Options to modify default behavior:
 *  - `css` (url): CSS files url.
 *  - `js` (url): JS files url.
 *  - `favicon` (url): Favicon url.
 *  - `title` (string): Meta title.
 *  - `description` (string): Meta description.
 *
 */
function siteHead($options = array())
{

	// $out is where we store the markup we are creating in this function
	$out = '';
	// Template folder url
	$templateUrl = urls()->templates;

	// Default Options
	$defaults = array(
		'css' => setting('css-files'),
		'js' => setting('js-files'),
		'favicon' => setting('favicon'),
		'title' => page('meta_title|title'),
		'description' => page('meta_description')
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	$out .= "<meta http-equiv='content-type' content='text/html; charset=utf-8'>\n";
	$out .= "<meta name='viewport' content='width=device-width, initial-scale=1.0'>\n";
	$out .= "<link rel='icon' href='$options[favicon]'/>\n";
	$out .= "<title id='head-title'>$options[title]</title>\n";
	if( $options['description'] ) {
	$out .= "<meta id='head-description' name='description' content='$options[description]'/>\n";
	}
	$out .= $options['css']->each("<link rel='stylesheet' href='{value}'>\n");
	$out .= $options['js']->each("<script src='{value}'></script>\n");
$out .= <<<EOT
<script>document.getElementsByTagName("html")[0].className += " js";</script>
<script>
  if('CSS' in window && CSS.supports('color', 'var(--color-var)')) {
    document.write('<link rel="stylesheet" href="{$templateUrl}assets/css/style.css">');
  } else {
    document.write('<link rel="stylesheet" href="{$templateUrl}assets/css/style-fallback.css">');
  }
</script>
<noscript>
  <link rel='stylesheet' href='{$templateUrl}assets/css/style-fallback.css'>
</noscript>\n
EOT;
	$out .= hreflang(page()); // the hreflang parameter
	$out .= seoPagination(); // seo meta robots ( 'noindex, follow' ) or seo pagination
// return all
	return $out;
}

/**
 * Return the hreflang parameter
 *
 * @param Page $page
 *
 */
function hreflang($page)
{
  if(!$page->getLanguages()) return;
  if (!modules()->isInstalled("LanguageSupportPageNames")) return;

  // $out is where we store the markup we are creating in this function
  $out = '';

  // handle output of 'hreflang' link tags for multi-language
  foreach(languages() as $language) {
	// if this page is not viewable in the language, skip it
	if(!$page->viewable($language)) continue;
	// get the http URL for this page in the given language
	$url = $page->localHttpUrl($language);
	// hreflang code for language uses language name from homepage
	$hreflang = setting('home')->getLanguageValue($language, 'name');
	if($hreflang == 'home') $hreflang = setting('lang-code');
	// output the <link> tag: note that this assumes your language names are the same as required by hreflang.
	$out .= "<link rel='alternate' hreflang='$hreflang' href='$url' />\n";
  }
  return $out;
}

/**
 * Return seo meta robots ( 'noindex, follow' ) or seo pagination
 *
 * @return mixed
 *
 */
function seoPagination()
{
	// If not any pageNum or pageHeaderTags
	if( input()->pageNum == null || config()->pagerHeadTags == null ) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

	// https://processwire.com/blog/posts/processwire-2.6.18-updates-pagination-and-seo/
	if (input()->pageNum > 1) {
			$out .= "<meta name='robots' content='noindex,follow'>\n";
	}
	// https://weekly.pw/issue/222/
	if (config()->pagerHeadTags) {
			$out .= config()->pagerHeadTags . "\n";
	}
	return $out;
}

/**
 * Return page links.
 *
 */
function pageLinks()
{
	// $out is where we store the markup we are creating in this function
	$out = '';
	// https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
	$links = page()->links();
	// if another page has links to this page
	if (!$links->count()) return;

	$out .= '<h3>' . setting('also-like') . '</h3>';
	$out .= '<ul>' . $links->each("<li><a href={url}>{title}</a></li>") . '</ul>';
}

/**
 * Return basic information
 *
 * @param array|string $options Options to modify default behavior:
 *  - `items` (array): Pages from options page field( site_options ) like ( pages('options')->site_options->get("name=company-address") ).
 *  - `icons` (array): Icons.
 *  - `mail_color` (string): Selector class to color link mail
 *  - `list_inline` (bool): if true show list type inline
 *
 */
function optionsNav($options = array())
{
	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
		'items' => array(),
		'icons' => array(),
		'mail_color' => '',
		'list_inline' => false,
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	if( !count($options['items'])) return;

	$options['list_inline'] ? $options['list_inline'] = "style='display: inline;'" : '';

	foreach ($options['items'] as $key => $item) {

		$out .= "<li class='margin-xs' $options[list_inline]>";

		if( isset($item->text_1) ) {

			if( strpos($item->text_1, '@') ) {
				$out .= "<a class='$options[mail_color]' href='mailto:$item->text_1'>";
				$out .= ' ' . $options['icons'][$key] . ' ' . $item->text_1 . ' ';
				$out .= "</a>";
			} else {
				$out .= '<span>' . $options['icons'][$key];
				$out .= sanitizer()->text($item->text_1) . '</span>';
			}
		}

		$out .= '</li>';

	}

	return $out;
}

/**
 * Given a group of pages render a tree of navigation
 *
 * @param Page|PageArray $items Page to start the navigation tree from or pages to render
 * @param int $maxDepth How many levels of navigation below current should it go?
 *
 */
function renderNavTree($items, $maxDepth = 3) {

	$currentPage = setting('current-page');

	// if we've been given just one item, convert it to an array of items
	if($items instanceof Page) $items = array($items);

	// if there aren't any items to output, exit now
	if(!count($items)) return;

	// $out is where we store the markup we are creating in this function
	// start our <ul> markup
	echo "<ul class='list'>";

	// cycle through all the items
	foreach($items as $item) {

		// markup for the list item...
		// if current item is the same as the page being viewed, add a "current" class and
		// visually hidden text for screen readers to it
		if($item->id == wire('page')->id) {
			echo "<li class='current' aria-current='true'><span class='visually-hidden'>$currentPage</span>";
		} else {
			echo "<li>";
		}

		// markup for the link
		echo "<a href='$item->url'>$item->title</a>";

		// if the item has children and we're allowed to output tree navigation (maxDepth)
		// then call this same function again for the item's children
		if($item->hasChildren() && $maxDepth) {
			renderNavTree($item->children, $maxDepth-1);
		}

		// close the list item
		echo "</li>";
	}

	// end our <ul> markup
	echo "</ul>";
}

/**
 * Return Navigation Links
 *
 * @param array|string $options Options to modify default behavior:
 *  - `root_url` (link): Home Page URL.
 *
 */
function navLinks($options = array())
{

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
		'root_url' => pages('/')->and(pages('/')->children)
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	foreach($options['root_url'] as $item) {
		$class = $item->id == page()->id ? 'current-item color-warning' : 'color-inherit';
		$out .= "<a class='$class' href='$item->url'>$item->title</a>\n";
	}

  return $out;
}

/**
 * Return Language Menu
 *
 * @param Page $page
 * @param array|string $options Options to modify default behavior:
 *  - `id` (string): Selector div id.
 *  - `class` (string): Selector div class.
 *  - `current_class` (string): Selector class current item.
 *  - `no_current` (string): Selector class no current item.
 *  - `style` (string): CSS style for the div element.
 *
 */
function langMenu($page, $options = array())
{

	if(!$page->getLanguages()) return;

	if (!modules()->isInstalled("LanguageSupportPageNames")) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
	'id' => 'lang-menu',
	'class' => 'main-header__lang-menu',
	'current_class' => 'color-warning',
	'no_current' => 'color-inherit',
	'style' => ''
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	$style = $options['style'] ? " style='$options[style]'" : '';

	// $out is where we store the markup we are creating in this function
	$out = "\n\t<div id='$options[id]' class='$options[class]'$style>\n";

	foreach(languages() as $language) {

		if(!$page->viewable($language)) continue; // is page viewable in this language?

		$current = $language->id == user()->language->id ? $options['current_class'] : $options['no_current'];

		$url = $page->localUrl($language);

		$hreflang = setting('home')->getLanguageValue($language, 'name');

		if($hreflang == 'home') $hreflang = setting('lang-code');

		$out .= "\t\t<a class='lang-item $current' hreflang='$hreflang' href='$url'>$language->title</a>\n";
	}

	$out .= "\t</div>\n\n";

	return $out;
}

/**
 * Return navigation
 * @param Page $item page item
 * @param array|string $options Options to modify default behavior:
 *  - `class` (string): list class.
 *  - `comment_icon` (string): String.
 *
 */
function countComments($item, $options = array())
{
	if( !count($item->comments) || !setting('comments') ) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
	'class' => 'comments',
	'icon' => ''
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

 	// num comments
	$out .= ' | ' . $options['icon'] . " <a class='$options[class]' href='{$item->url}#CommentForm'>";
	$out .= count($item->comments) . '</a>';

	return $out;
}

/**
 * Return unordered HTML list
 *
 * @param PageArray $items
 * @param array|string $options Options to modify default behavior:
 *  - `class` (string): list class.
 *  - `countable` (bool): Count of item references to blog post ( categories, tags ).
 *  - `title` (string): Name of item.
 *  - `parent` (page): Parent Page.
 *
 */
function simpleNav($items, $options = array() )
{
	// $out is where we store the markup we are creating in this function
	$out = '';

	if( !count($items) ) return;

  // Default Options
	$defaults = array(
		'class' => 'nav-items text-component',
		'countable' => false,
		'title' => '',
		'parent' => ''
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	$out .= "<ul class='$options[class]'>";

	$out .= "<li style='list-style: none'><h4>";

	if( $options['parent'] ) {

	$out .= "<a href='" . $options['parent']->url . "'>";
	$out .= icon('arrow-right') . ' ' . $options['title'];
	$out .=  "</a>";

	} else {

	$out .=  $options['title'];

	}

	$out .= "</h4></li>";

	foreach ($items as $item) {

	$count = "<span class='text-xs'>( " . count($item->references()) . " )</span>";

		if ($options['countable']) {

			if( count($item->references()) ) {
				$out .= "<li><a href='$item->url' title='$item->name'>$item->title $count </a></li>";
			}

		} else {

			$out .= "<li><a href='$item->url' title='$item->name'>$item->title</a></li>";
		}
  	}

  	$out .= "</ul>";

	return $out;
}

/**
 * Return site components
 *
 * @param array|string $options Options to modify default behavior:
 *  - `components` (page table field): Page Table field.
 *
 */
function siteComponents($options = array())
{
	// $out is where we store the markup we are creating in this function
	$out = '';
	// Reset template files
	$templateParts = '';
	$files = '';

	// Default Options
	$defaults = array(
		'components' => page()->components,
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	if ( $options['components'] && count($options['components']) ) {

		foreach ($options['components'] as $item) {

			// Get some important parts
			$templateParts .= 'components/parts/' . $item->template . '-parts.php ';

			// basic class remove first 11 characters (_components-) of text
			$primaryClass = substr($item->template, 11);

			// id or class
			$secondaryClass = sanitizer()->pageName($item->title) . '-' . $item->id;

			$title = strtoupper($primaryClass . ' / ' . $secondaryClass);

			$out .= "\n<!-- $title  -->\n";
			$out .= "<section id='$secondaryClass' class='$primaryClass $secondaryClass margin-y-sm'>";
			$out .= files()->render('components/' . $item->template,
					[
						'item' => $item,
						'class' => $primaryClass
					]);
			$out .= "</section>\n";
		}

	// Filter array ( remove unused array )
		$templateParts = array_filter( explode(' ', $templateParts) );
    // Array must be unique
		$templateParts = WireArray( array_unique($templateParts) );
    // Get files to render
		foreach ($templateParts as $file) {
			if( file_exists(paths()->templates . $file) ) {
				$files .= files()->render($file);
			}
		}
		return $out . $files;
	}
}

/**
 * Return css / js files.
 *
 * @param array|string $options Options to modify default behavior:
 *  - `css` ( WireArray() ): CSS files url.
 *  - `js` ( WireArray() ): JS files url.
 *
 */
function loadfiles($options = array())
{

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
		'css' => WireArray(),
		'js' => WireArray(),
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	if( count($options['css']) ) $out .= $options['css']->each("\n<link rel='stylesheet' href='{value}'>\n");

	if( count($options['js']) ) $out .= $options['js']->each("<script src='{value}'></script>\n");

	return $out;
}

/**
 * Return background image
 *
 * @param WireArray $image page images field ( https://processwire.com/api/ref/pageimages/ )
 * @param array|string $options Options to modify default behavior:
 *  - `background_size` (string): CSS background-size property ( cover or contain ).
 *
 */
function backgroundImage($images, $options = array())
{

	if( !setting('background-image') ) return;

	if( !$images || !count($images) ) return;

// Default Options
	$defaults = array(
		'background_size' => 'cover',
	);
// Merge Options
	$options = _mergeOptions($defaults, $options);

	if ($images) {
		return  " style='background: no-repeat center center fixed; background-size: $options[background_size];
				background-image: linear-gradient( rgba(255, 255, 255, 0.92), rgba(216, 216, 216, 0.88) ),
				url({$images->first->url});'";
	}
}

/**
 * Return link href if the file ( assets/css/templates/{template-name.css }) exists
 *
 * @param array|string $options Options to modify default behavior:
 *  - `link_href` (link): link href to css file.
 *  - `file_location` (link): Check is a file exists.
 *
 */
function linkCss($options = array())
{

// File location
$fileLocation = 'assets/css/templates/' . page()->template->name . '.css';

// Default Options
$defaults = array(
	// get url to css
		'link_href' => urls('templates') . $fileLocation,
		'file_location' => __DIR__ . '/' . $fileLocation,
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	if( !file_exists($options['file_location']) ) return;

	return "\n\t<link rel='stylesheet' href='$options[link_href]'>\n";
}

/**
 * Return search form
 *
 * @param array|string $options Options to modify default behavior:
 *  - `search_page` (link): search page URL.
 *  - `input_placeholder` (string): input placeholder text.
 *  - `search_label` (string): label text.
 *
 */
function searchForm($options = array())
{

// Default Options
$defaults = array(
  'search_page' => pages()->get('template=search')->url,
  'input_placeholder' => setting('search-placeholder'),
  'search_label' => setting('search-label')
);
// Merge Options
$options = _mergeOptions($defaults, $options);

// return search form
return "
  <form action='$options[search_page]' method='get'>
	<label style='color: var(--color-bg)' class='form-label color-inherit ' for='q'>$options[search_label]</label>
	<input type='search' name='q' class='form-control' id='q' placeholder='$options[input_placeholder] &hellip;' required>
  </form>";
}

/**
 *  Return Basic Pagination
 *  https://processwire.com/docs/front-end/markup-pager-nav/
 *
 * @param PageArray $results
 *
 */
function pagination($results)
{
	if ( !count($results) ) return;

	return $results->renderPager(array(
		'nextItemLabel' => setting('next') . ' ' . icon('arrow-right'),
		'previousItemLabel' => icon('arrow-left') . ' ' . setting('previous'),
		'listMarkup' => "<ul class='MarkupPagerNav flex flex-wrap flex-center' style='list-style: none'>{out}</ul>",
		'itemMarkup' => "<li class='{class} margin-xs'>{out}</li>",
		'linkMarkup' => "<a href='{url}'><span>{out}</span></a>"
	));
}

/**
 * Return Previous Next Button Page
 * @param Page $item
 *
 */
function navPage($item)
{
// If  item is empty return null
if(!$item) return;
// $out is where we store the markup we are creating in this function
$out = '';
// Prev Next Button
		$p_next = $item->next();
		$p_prev = $item->prev();
// link to the prev blog post, if there is one
		if ($p_prev->id) {
		$out .= "<a href='$p_prev->url'>";
		$out .= icon('arrow-left') . $p_prev->title . "</a>";
		}
// link to the next blog post, if there is one
		if ($p_next->id) {
				$out .= "<a href='$p_next->url'>";
				$out .= $p_next->title . icon('arrow-right') . "</a>";
		}
		return $out;
}

/**
 * Return Privacy Policy Page
 *
 * @param array|string $options Options to modify default behavior:
 *  - `privacy_page` (link): URL to privacy page.
 *  - `read_more` (string): Read more text.
 *
 */
function privacyPolicy($privacyPage, $options = array())
{
	if ( !$privacyPage ) return;

	// Default Options
	$defaults = array(
		'read_more' => setting('read-more'),
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);
	  return "
	<span class='privacy-text'>
		{$privacyPage->meta_title}
	</span>
	<a class='color-warning' href='{$privacyPage->url}'>
		$options[read_more]
	</a>
  ";
}

/**
 * Return Google Webmaster Tools Verification Code
 *
 * @param string $code
 *
 */
function gwCode($code)
{
// If code is empty return null
if(!$code) return;

// Return Google Verification Code
return "<!-- Google Site Verification Code -->
<meta name='google-site-verification' content='$code' />\n";
}

/**
 * Return Google Analytics Tracking Code
 * https://developers.google.com/analytics/devguides/collection/analyticsjs/
 *
 * @param string $code {your-google-analytics-code}
 *
 */
function gaCode($code)
{
// If code is empty return null
if(!$code) return;

// Return Google Analytics Tracking Code
return "<!-- Google Analytics Tracking Code -->
<script defer src='https://www.googletagmanager.com/gtag/js?id=UA-{$code}'></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'UA-{$code}');
</script>\n";
}

/**
 * Return Social Profiles
 *
 * @param PageArray $items processwire page children
 *
 */
function socialProfiles($items)
{
	// If  item is empty return null
	if( !count($items) ) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

	foreach($items as $item) {

		// link to social profile
		$out .= "<a href='$item->text_1' aria-label='$item->name' target='_blank' rel='noopener noreferrer'>";

		// get icon ( https://feathericons.com/ )
		$out .= icon($item->name,
		[
			'stroke' => 'var(--color-warning)',
			'stroke_width' => 1.3,
			'width' => 35,
			'height' => 35,
			'class' => 'transition-bounce-s'
		]) . "</a>";
	}

	// return all social profiles
	return $out;
}

/**
 * Return AddToAny social share buttons script
 * https://www.addtoany.com/
 *
 * @param array $options Basic Usage toAny(['twitter' => true'])
 * 'twitter' => true,
 * 'facebook' => true,
 * 'google_plus' => false,
 * 'linkedin' => false,
 * 'rreddit' => false,
 * 'email' => false,
 * 'google_gmail' => false,
 * 'share_all' => true,
 *
 */
function toAny($options = array())
{
// If setting 'to-any' is not set true ( see _init.php setting() ) return null
	if( setting('to-any') == false ) return;
// $out is where we store the markup we are creating in this function
	$out = '';
// Reset variables
	$buttonLinks = '';
// Default share links
	$links = [
		'twitter' => "<a class='a2a_button_twitter'></a>",
		'facebook' => "<a class='a2a_button_facebook'></a>",
		'google_plus' => "<a class='a2a_button_google_plus'></a>",
		'linkedin' => "<a class='a2a_button_linkedin'></a>",
		'rreddit' => "<a class='a2a_button_reddit'></a>",
		'email' => "<a class='a2a_button_email'></a>",
		'google_gmail' => "<a class='a2a_button_google_gmail'></a>",
		'share_all' => "<a class='a2a_dd' href='https://www.addtoany.com/share'></a>"
	];
// Foreach Items
	foreach ($options as $key => $value) {
		if($options[$key] == true) {
			$buttonLinks .= $links[$key];
		}
	}
// Start Content
	$out .= "<!-- AddToAny BEGIN -->
	<div class='a2a_kit a2a_kit_size_32 a2a_floating_style a2a_vertical_style'
			 style='left:0px; top:160px; background-color: #2e2d2d99;'>";
	$out .= $buttonLinks; // Show Links
	$out .= "</div>
	<script async src='https://static.addtoany.com/menu/page.js'></script>
	<!-- /AddToAny END -->";
	return $out;
}

/**
 * Return icon ( https://feathericons.com/ )
 *
 * @param string $icon icon
 * @param array|string $options Options to modify default behavior:
 *  - `class` (string): css class property.
 *  - `width` (int): css property width.
 *  - `height` (int): css property height.
 *  - `stroke_width` (int): css property stroke_width.
 *  - `stroke` (string): css property stroke ( color ).
 *  - `text_after` (string): text after link.
 *
 */
function icon($icon, $options = array())
{
	// If  item is empty return null
	if(!$icon) return;

	// $out is where we store the markup we are creating in this function
	$out = '';

	// Default Options
	$defaults = array(
		'class' => '',
		'width' => 25,
		'height' => 25,
		'stroke_width' => 1,
		'stroke' => 'black',
		'text_after' => ''
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	$style = "width: $options[width]px;
			  height: $options[height]px;
			  stroke-width: $options[stroke_width];
			  stroke: $options[stroke]";

	$out .= "<i style='$style' class='feather-icon $options[class]' data-feather='$icon'></i> ";
	$out .= $options['text_after'];

	return $out;
}

/**
 * Return Link to Edit Page
 *
 * @param array|string $options Options to modify default behavior:
 *  - `id` (string): Selector id.
 *  - `div_class` (string): Selector div class.
 *  - `link_class` (string): Selector link class.
 *  - `edit_text` (string): The name of the buttont.
 *  - `edit_url` (link): Url to edit the page
 *
 */
function editBtn($options = array())
{
	// if not Page Editable return null
	if(!page()->editable()) return;

	// Default Options
	$defaults = array(
	'id' => 'edit-btn',
	'div_class' => 'edit-btn container margin-y-md',
	'link_class' => 'link-button btn btn--primary btn--lg',
	'edit_text' => setting('edit'),
	'edit_url' => page()->editURL,
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	// Display region debugging info
	return "<div id='$options[id]' class='$options[div_class]'>
	<a class='$options[link_class]' href='$options[edit_url]'>$options[edit_text]</a></div>";
}

/**
 * Return region debugging info
 *
 * @param array|string $options Options to modify default behavior:
 *  - `id` (string): Selector id.
 *  - `class` (string): Selector class.
 *
 */
function debugInfo($options = array())
{
	// Default Options
	$defaults = array(
		'id' => 'debug-bar',
		'class' => 'debug-bar container margin-y-md'
	);
	// Merge Options
	$options = _mergeOptions($defaults, $options);

	// display region debugging info
	if(config()->debug && user()->isSuperuser()) {
		return "\n\t<div id='$options[id]' class='$options[class]'>
			<!--PW-REGION-DEBUG-->
		</div>\n";
	}
}

/*****************************************************************************************
 * Internal support functions
 *
 */

/**
 * Prepare and merge an $options argument
 *
 * - This converts PW selector strings data attribute strings to associative arrays.
 * - This converts non-associative attributes to associative boolean attributes.
 * - This merges $defaults with $options.
 *
 * @param array $defaults
 * @param array|string $options
 * @return array
 * @internal
 *
 */
function _mergeOptions(array $defaults, $options) {

	// allow for ProcessWire selector style strings
	// allow for Uikit data attribute strings
	if(is_string($options)) {
		$options = str_replace(';', ',', $options);
		$o = explode(',', $options);
		$options = array();
		foreach($o as $value) {
			if(strpos($value, '=')) {
				// key=value
				list($key, $value) = explode('=', $value, 2);
			} else if(strpos($value, ':')) {
				// key: value
				list($key, $value) = explode(':', $value, 2);
			} else {
				// boolean
				$key = $value;
				$value = true;
			}
			$key = trim($key);
			if(is_string($value)) {
				$value = trim($value);
				// convert boolean strings to real booleans
				$v = strtolower($value);
				if($v === 'false') $value = false;
				if($v === 'true') $value = true;
			}
			$options[$key] = $value;
		}
	}

	if(!is_array($options)) {
		$options = array();
	}

	foreach($options as $key => $value) {
		if(is_int($key) && is_string($value)) {
			// non-associative options convert to boolean attribute
			$defaults[$value] = true;
		}
	}

	return array_merge($defaults, $options);
}
