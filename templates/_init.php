<?php namespace ProcessWire;
/**
 * This _init.php file is called automatically by ProcessWire before every page render
 *
 */

/** @var ProcessWire $wire */

// Set jQuery
urls()->set('jquery', 'https://code.jquery.com/jquery-3.4.1.min.js');

// See Contact Form, Contact Page  https://flatpickr.js.org/getting-started/
urls()->set('flatpickr-css', 'https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css');
urls()->set('flatpickr-js', 'https://cdn.jsdelivr.net/npm/flatpickr');

setting([
// Basic options
	'home' => pages()->get('/'),
// Options Page
	'logo' => pages('options')->logo ? pages('options')->logo->url : '',
	'logo_alt' => pages('options')->logo ? pages('options')->logo->description : '',
	'favicon' => pages('options')->favicon ? pages('options')->favicon->url : '',
	'site-name' => pages('options')->site_name,
	'site-description' => pages('options')->site_description,
	'background-image' => pages('options')->site_options->get("name=background-image"),
	'gw-code' => pages('options')->site_options->get("name=gw-code"),
	'ga-code' => pages('options')->site_options->get("name=ga-code"),
// Contact Page
    'e-mail' => pages('options')->site_options->get("name=e-mail"),
	'phone' => pages('options')->site_options->get("name=phone"),
	'save-contact' => pages('options')->site_options->get("name=save-contact"),
	'advanced-form' => pages('options')->site_options->get("name=advanced-form"),
	'company-address' => pages('options')->site_options->get("name=company-address"),
// Custom body class
	'body-classes' => WireArray([
		'template-' . page()->template->name,
		'page-' . page()->id,
	]),
// Get Styles
	'css-files' => WireArray([
		// urls('templates') . 'assets/css/main.css',
	]),
// Get Scripts
	'js-files' => WireArray([
		// urls('templates') . 'assets/js/main.js',
		'https://unpkg.com/feather-icons'
	]),
// Blog Page
	'comments' => pages('options')->site_options->get("name=comments"),
	'to-any' => pages('options')->site_options->get("name=share-buttons"),
	'rss-title' => __('Recent Posts'),
	'rss-description' => __('The most recent pages updated on my site'),
	'update-profile' => __('Update your nickname on your profile'),
// Basic Translation
	'lang-code' => __('en'),
	'edit' => __('Edit'),
	'next' => __('Next'),
	'previous' => __('Previous'),
	'search-placeholder' => __('Search'),
	'search-label' => __('Search Word'),
	'found-pages' => __("Found %d page(s)."),
	'no-found' =>  __('Sorry, no results were found.'),
	'read-more' => __('Read more'),
	'also-like' => __('You might also like:'),
	'more-topic' => __('More pages about the topic'),
// Blog Translation
     'recent-posts' => __('Recent posts'),
// Comments Form Translation
	'post-comment' => __('Post a comment'),
	'comment-text' => __('Comments'),
	'comment-header' => __('Posted by %s on %s'),
	'success-message' => __('Thank you, your comment has been posted.'),
	'pending-message' => __('Your comment has been submitted and will appear once approved by the moderator.'),
	'error-message' => __('Your comment was not saved due to one or more errors.') . ' ' .
	__('Please check that you have completed all fields before submitting again.'),
	'comment-cite' => __('Your Name'),
	'comment-email' => __('Your E-Mail'),
	'comment-website' => __('Website'),
	'comment-stars' => __('Your Rating'),
	'comment-submit' => __('Submit'),
	'stars-required' => __('Please select a star rating'),
// Contact Page Translation
	'contact-name' => __('Name'),
	'contact-email' => __("Email"),
	'contact-advphone' => __("Phone"),
	'contact-message' => __("Message"),
	'contact-submit' => __("Submit"),
	'contact-acceptprivacy' => __("Accept Privacy Policy"),
	'contact-privacy' =>  __('Before checking, read our privacy policy'),
	'csrf-failed' => __('CSRF check failed!'),
	'contact-yourmessage' => __("Your Message"),
	'contact-startdate' => __("Start / End Date"),
	'contact-errorfix' => __('There were errors, please fix !!!'),
	'contact-return' => __('Return to contact page'),
	'contact-basicsubject' => __('Inquiry from the customer: %s %s'),
	'contact-basicsucces' => __('Thanks %s, we just received your message ... We will try to reply to your e-mail ( %s ) as soon as possible.'),
	'contact-advsubject' => __("Subject"),
	'contact-advsucces' => __('Thanks %s, we just received your message ... We will try to reply to your e-mail ( %s ) or call you back ( %s ) as soon as possible.'),
	'contact-advoptionsfirst' => __("New Website"),
	'contact-advoptionsnext' => __("Something else"),
	'contact-advwhatcan' => __("What can we do for you"),
	'contact-advexpdate' => __("Expected start and end date"),
]);

include_once('./_func.php');
