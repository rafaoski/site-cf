<?php namespace ProcessWire; ?>

<div class='container text-component'>
<?php
	// Get Comments
	$comments = page()->comments;
	// comment list
	if (count($comments)) {

			echo page()->comments->render(array(
				'headline' => '<h3>' . setting('comment-text') . '</h3>',
				'commentHeader' => sprintf( setting('comment-header'), user()->nick_name, page()->date ),
				'dateFormat' => 'm/d/y g:ia',
				'encoding' => 'UTF-8',
				'admin' => false, // shows unapproved comments if true
			));

		}

		// comments form with all options specified (these are the defaults)
		echo $page->comments->renderForm(array(
		'headline' => '<h3>' . setting('post-comment') . '</h3>',
		'successMessage' => "<p class='success'>" .  setting('success-message') . "</p>",
		'errorMessage' => "<p class='error'>" . setting('error-message') . "</p>",
		'processInput' => true,
		'encoding' => 'UTF-8',
		'attrs' => array(
			'id' => 'CommentForm',
			'action' => './',
			'method' => 'post',
			'class' => '',
			'rows' => 5,
			'cols' => 50,
			),
		'labels' => array(
			'cite' => setting('comment-cite'),
			'email' => setting('comment-email'),
			'text' => setting('comment-text'),
			'submit' => setting('comment-submit'),
		),
		// the name of a field that must be set (and have any non-blank value), typically set in Javascript to keep out spammers
		// to use it, YOU must set this with a <input hidden> field from your own javascript, somewhere in the form
		'requireSecurityField' => '', // not used by default
		));
?>

</div>
