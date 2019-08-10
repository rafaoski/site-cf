# --- WireDatabaseBackup {"time":"2019-08-08 22:39:57","user":"","dbName":"cf-blank","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1024', '<h3>About CF Site Profile</h3>\n\n<p>This is the site profile that was created using the modern lightweight <a href=\"https://codyhouse.co/blog/post/codyhouse-framework-2-0\" target=\"_blank\" rel=\"noreferrer noopener\">CodyHouse Framework </a></p>\n\n<ul>\n	<li><a href=\"https://codyhouse.co/ds/docs/framework\" target=\"_blank\" rel=\"noreferrer noopener\">Framework Docs</a></li>\n	<li><a href=\"https://codyhouse.co/ds/docs/components\" target=\"_blank\" rel=\"noreferrer noopener\">Components</a></li>\n	<li><a href=\"https://codyhouse.co/ds/docs/globals\" target=\"_blank\" rel=\"noreferrer noopener\">Global Editors</a></li>\n	<li><a href=\"https://codyhouse.co/ds/docs/extensions\" target=\"_blank\" rel=\"noreferrer noopener\">Extensions</a></li>\n	<li><a href=\"https://codyhouse.co/ds/components\" target=\"_blank\" rel=\"noreferrer noopener\">Components</a></li>\n	<li><a href=\"https://codyhouse.co/ds/docs/tutorials\" target=\"_blank\" rel=\"noreferrer noopener\">Tutorials</a></li>\n	<li><a href=\"https://codyhouse.co/blog\" target=\"_blank\" rel=\"noreferrer noopener\">Blog</a></li>\n	<li><a href=\"https://codyhouse.co/blog/post/css-custom-properties-vs-sass-variables\" target=\"_blank\" rel=\"noreferrer noopener\">Why we prefer CSS Custom Properties to SASS variables</a></li>\n	<li><a href=\"https://codyhouse.co/blog/post/100-components\" target=\"_blank\" rel=\"noreferrer noopener\">100x Components + Download Virgo, a (free) HTML, CSS, JS Template</a></li>\n</ul>\n\n<h3>License</h3>\n\n<p>All the content made available through CodyHouse.co is copyrighted material owned by Amber Creative Lab, Ltd.</p>\n\n<p>The <a href=\"https://codyhouse.co/ds/docs/framework\">CodyHouse Framework</a> are released under the <a href=\"https://github.com/CodyHouse/codyhouse-framework/blob/master/LICENSE.md\">MIT license</a> and can be used for free on anything you\'d like.</p>\n\n<p><a href=\"https://codyhouse.co/license/#framework-experiments\">https://codyhouse.co/license</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1027', '<h3>Components</h3>\n\n<p>The structure of this profile does not use any components from <a href=\"https://codyhouse.co/blog/post/codyhouse-framework-2-0\" target=\"_blank\" rel=\"noreferrer noopener\">CodyHouse</a> ... You have to download them yourself and add to the components folder ...</p>\n\n<p>Familiarize yourself with the license:</p>\n\n<p><a href=\"https://codyhouse.co/license/#components\">https://codyhouse.co/license/#components</a></p>\n\n<p>Design a web page in 6 minutes using the CodyHouse Framework and Components:</p>\n\n<p><a href=\"https://www.youtube.com/watch?v=8NLRhaSnQS0\">https://www.youtube.com/watch?v=8NLRhaSnQS0</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1032', '<h3>Learn more about ProcessWire</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/docs/start/variables/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire API variables</a></li>\n	<li><a href=\"https://processwire.com/docs/start/variables/page/\" target=\"_blank\" rel=\"noreferrer noopener\">Page</a></li>\n	<li><a href=\"https://processwire.com/docs/start/variables/pages/\" target=\"_blank\" rel=\"noreferrer noopener\">Pages</a></li>\n	<li><a href=\"https://processwire.com/docs/fields/images/\" target=\"_blank\" rel=\"noreferrer noopener\">Images</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.39-core-updates/#new-functions-api\" target=\"_blank\" rel=\"noreferrer noopener\">New functions API</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.40-core-updates/\" target=\"_blank\" rel=\"noreferrer noopener\">More on the Functions API</a></li>\n	<li><a href=\"https://processwire.com/docs/front-end/output/markup-regions/\" target=\"_blank\" rel=\"noreferrer noopener\">Markup regions</a></li>\n	<li><a href=\"https://processwire.com/api/ref/functions/setting/\" target=\"_blank\" rel=\"noreferrer noopener\">Get or set a runtime site setting</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/pw-3.0.126/\" target=\"_blank\" rel=\"noreferrer noopener\">New $page-&gt;if() method</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/making-efficient-use-of-fields-in-processwire/\" target=\"_blank\" rel=\"noreferrer noopener\">Optimize field use</a></li>\n	<li><a href=\"https://processwire.com/api/ref/wire-file-tools/render/\" target=\"_blank\" rel=\"noreferrer noopener\">$files-&gt;render() method</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/processwire-3.0.107-core-updates/#page-gt-links\" target=\"_blank\" rel=\"noreferrer noopener\">$page-&gt;links() method</a></li>\n	<li><a href=\"https://processwire.com/docs/multi-language-support/\" target=\"_blank\" rel=\"noreferrer noopener\">Multi language</a></li>\n</ul>\n\n<h3>Modules and Hooks</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/docs/modules/\" target=\"_blank\" rel=\"noreferrer noopener\">Modules ( plugins ) and hooks</a></li>\n	<li><a href=\"https://processwire.com/blog/posts/building-custom-admin-pages-with-process-modules/\" target=\"_blank\" rel=\"noreferrer noopener\">Yes, it’s that simple! ;)</a></li>\n	<li><a href=\"https://modules.processwire.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Modules Plugins Directory</a></li>\n	<li><a href=\"https://processwire.com/store/\" target=\"_blank\" rel=\"noreferrer noopener\">Pro Modules</a></li>\n</ul>\n\n<h3>Community</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/talk/\" target=\"_blank\" rel=\"noreferrer noopener\">Forums</a></li>\n	<li><a href=\"https://weekly.pw/\" target=\"_blank\" rel=\"noreferrer noopener\">ProcessWire Weekly</a></li>\n</ul>\n\n<h3>Download</h3>\n\n<ul>\n	<li><a href=\"https://processwire.com/download/\" target=\"_blank\" rel=\"noreferrer noopener\">Download the ProcessWire core from GitHub or 3rd party modules</a></li>\n	<li><a href=\"https://github.com/rafaoski/site-uk3-minimal\" target=\"_blank\" rel=\"noreferrer noopener\">DOWNLOAD THIS PROFILE</a></li>\n	<li><a href=\"https://modules.processwire.com/modules/uikit3-minimal-profile/\" target=\"_blank\" rel=\"noreferrer noopener\">DOWNLOAD THIS PROFILE FROM THE PROCESSWIRE MODULE CATALOG</a></li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1063', '<h3>Who we are</h3>\n\n<p>Our website address is: https://cf-site.com</p>\n\n<h3>What personal data we collect and why we collect it</h3>\n\n<h4>Comments</h4>\n\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n\n<h4>Media</h4>\n\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n\n<h4>Contact forms</h4>\n\n<h4>Cookies</h4>\n\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n\n<p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n\n<h4>Embedded content from other websites</h4>\n\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n\n<h3>Analytics</h3>\n\n<h3>Who we share your data with</h3>\n\n<h3>How long we retain your data</h3>\n\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n\n<h3>What rights you have over your data</h3>\n\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n\n<h3>Where we send your data</h3>\n\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n\n<h3>Your contact information</h3>\n\n<h3>Additional information</h3>\n\n<h3>How we protect your data</h3>\n\n<h3>What data breach procedures we have in place</h3>\n\n<h3>What third parties we receive data from</h3>\n\n<h3>What automated decision making and/or profiling we do with user data</h3>\n\n<h3>Industry regulatory disclosure requirement</h3>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1124', '<p>Board marquis estate career blissfull treasure saphire. Delegate cultered regal marquis cigar sterling penthouse.</p>\n\n<p>Sterling butler solid penthouse gilded gilded pedigree wine using investments cigar. Cultered doctoral symphony extra accredited. Private benefactor monogram high-rise a.</p>\n\n<blockquote>\n<p>Career gilded extra aristocratic cruise brilliant impresario. European ambassador acumen ambassador. Rare suite cruise club crafted butler grande.</p>\n</blockquote>\n\n<p>Distinctly rich auction penthouse travel.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1125', '<p>Fixed effect pulse current remote integer potentiometer anomoly. Gigabyte recognition deviation active sequential bypass echo distributed. Embedded encapsulated mainframe reducer logarithmic potentiometer duplex. Software metafile reducer deviation boolean overflow bridgeware.</p>\n\n<p>Patch internet nano. Converter a inversion recursive adaptive encapsulated transport floating-point transistorized plasma microscopic node. PC duplex partitioned. Network scalar dithering encapsulated generator normalizing. Remote interval fixed plasma normalizing microscopic procedural scalar dynamic read-only high boolean.</p>\n\n<h3>Reducer hybrid force key</h3>\n\n<p>Cascading wave network logarithmic digital powered scan. Frequency coordinated particle transmission supporting. Log distributed bus scan force particle computer inversion servicing reverberated device. In coordinated services backbone silicon hyperlinked. Scalar error fiber transponder digital.</p>\n\n<p>Vector developer connectivity connectivity modular supporting broadband solution. For modular vector timer indeterminate debugged optical kilohertz procedural procedural. Infrared fuzzy procedural capacitance fiber. Algorithm direct procedural echo. Digital bridgeware by timer fragmentation ethernet inducer phase network.</p>\n\n<p>Transaction active by. Effect partitioned by timer system services computer. Spawned coordinated developer fuzzy. Technician fuzzy supporting protocol coordinated ethernet. Bridgeware video remote prototype development.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1126', '<p>Think affordable artificial blast while choice. Appetizing available really thank-you out proven desire fresh rich. Natural and flash power effective grand premium. Secret lifetime grand quenches by ocean as comfort golden youthful fast. Disposable zesty dazzling open sure spacious multi-purpose the super market rare.</p>\n\n<p>Spring special bigger wherever only this comfort tummy extravaganza save. Very messy keen leading incredible.</p>\n\n<p>Hearty brand <a	data-pwid=1125	href=\"/uk3-min/blog/posts/phase-data-extended-transaction/\">chocolatey</a> comfort admire ultra. Want kids touch discount love appetizing talking inside buttery. For keeps admire youthful. Wherever super thirsty lasting limited discover picky can\'t.</p>\n\n<p>Good appreciate flexible product best. Full-bodied don\'t customer gigantic also.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1140', '<h3>What is Lorem Ipsum?</h3>\n\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1126', '1116', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1124', '1117', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1125', '1118', '0');

DROP TABLE IF EXISTS `field_checkbox`;
CREATE TABLE `field_checkbox` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1124', 'Test Comment', '1', '2', '1', 'rafaoski', 'test@gmail.com', '1563137848', '40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '', '0', '0', 'yuypS6ndeHsWj3TnuOQk_a0XbD7vjKNj6R4rH_5fI40L6LSJviYTR0PAPMLzd2RHjpNAGhoBO9A3BxGwluxYHz4T_CRK86_13XkNYWxn6GMGxMDonJQ6G647BLNWsd_G', 'B0oe8sUBtG8oCUMNaiaGUVRe5DTdsDu3Dg9cmDM2', '0', '0', NULL);
INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1124', 'Test Comment 2', '2', '3', '1', 'rafaoski', 'test@gmail.com', '1563137946', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '', '0', '0', '05pGd3WXTeEx88doFB3bdAoSAdCComeXk9H9rxTTrGG8i3E6u4Y26xdGnhEfxjKbVYBW2Q_jVC1iHDjBve137M0pqRjDjZG4xYxmexI422Uco1eCRm6IDde7wi9KoLec', 'vucBSTLFF4bW7LqI0gDaifjXH11PWqOyfrngAx2U', '0', '0', NULL);

DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_components`;
CREATE TABLE `field_components` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_components` (`pages_id`, `data`, `sort`) VALUES('1', '1024', '0');
INSERT INTO `field_components` (`pages_id`, `data`, `sort`) VALUES('1', '1027', '1');
INSERT INTO `field_components` (`pages_id`, `data`, `sort`) VALUES('1030', '1032', '0');

DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1124', '2019-07-13 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1125', '2019-07-13 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1126', '2019-07-13 00:00:00');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_favicon`;
CREATE TABLE `field_favicon` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_favicon` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'favicon.png', '0', '', '2019-07-31 21:53:44', '2019-07-31 21:53:44', '');

DROP TABLE IF EXISTS `field_fieldset_document`;
CREATE TABLE `field_fieldset_document` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_document_end`;
CREATE TABLE `field_fieldset_document_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_seo`;
CREATE TABLE `field_fieldset_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fieldset_seo_end`;
CREATE TABLE `field_fieldset_seo_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'polygonal.svg', '0', '', '2019-08-01 21:45:11', '2019-08-01 21:45:11', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('27', 'bug.svg', '0', '', '2019-08-01 21:48:40', '2019-08-01 21:48:40', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'site-map.svg', '0', '', '2019-08-01 21:47:25', '2019-08-01 21:47:25', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1024', 'bulb-alt.svg', '0', '', '2019-08-01 15:59:39', '2019-08-01 15:59:39', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1030', 'processwire.svg', '0', '', '2019-08-01 21:55:08', '2019-08-01 21:55:08', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1063', 'ssl-security.svg', '0', '', '2019-08-02 18:20:26', '2019-08-02 18:20:26', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1094', 'rocket.svg', '0', '', '2019-08-06 06:52:33', '2019-08-06 06:52:33', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1095', 'layers.svg', '0', '', '2019-08-06 14:37:06', '2019-08-06 14:37:06', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1096', 'pixels.svg', '0', '', '2019-08-06 14:37:35', '2019-08-06 14:37:35', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1124', 'bell.svg', '0', '', '2019-08-06 12:00:24', '2019-08-06 12:00:24', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1125', 'lens.svg', '0', '', '2019-08-06 12:00:24', '2019-08-06 12:00:24', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1126', 'bomb.svg', '0', '', '2019-08-06 12:00:24', '2019-08-06 12:00:24', '');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1140', 'email.svg', '0', '', '2019-08-07 12:45:49', '2019-08-07 12:45:49', '');

DROP TABLE IF EXISTS `field_logo`;
CREATE TABLE `field_logo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_logo` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'polygonal.svg', '0', 'Logo', '2019-08-02 20:53:54', '2019-08-02 20:53:54', '');

DROP TABLE IF EXISTS `field_meta_description`;
CREATE TABLE `field_meta_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1', 'This is the site profile that was created using the modern lightweight CodyHouse Framework');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1063', 'What personal data we collect and why we collect it');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1124', 'Using gilded member silk dignified gilded panoramic art politically. Diamond upper brokerage pleasure society reserved. First-class topiary treasure travel is the best wishlist vacation solid penthouse world.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1125', 'Patch internet nano. Converter a inversion recursive adaptive encapsulated transport floating-point transistorized plasma microscopic node. PC duplex partitioned. Network scalar dithering encapsulated generator normalizing. Remote interval fixed plasma normalizing microscopic procedural scalar dynamic read-only high boolean.');
INSERT INTO `field_meta_description` (`pages_id`, `data`) VALUES('1126', 'Grown plus industry open for when when sharpest ordinary offer by. Better huggable opportunity too. Rosy sleek while exclusive gentle not on. Offer colossal silky this sweet magically ...');

DROP TABLE IF EXISTS `field_meta_title`;
CREATE TABLE `field_meta_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1', 'ProcessWire + CodyHouse Framework');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1063', 'By using this site, you accept our privacy policy');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1124', 'Genuine symphony solid educated de-jour regal gifted guests.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1125', 'Fixed effect pulse current remote integer potentiometer anomoly.');
INSERT INTO `field_meta_title` (`pages_id`, `data`) VALUES('1126', 'Think affordable artificial blast');

DROP TABLE IF EXISTS `field_nick_name`;
CREATE TABLE `field_nick_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_nick_name` (`pages_id`, `data`) VALUES('41', 'rafaoski');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1137', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1020', '164');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1100', '173');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1102', '174');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1115', '177');

DROP TABLE IF EXISTS `field_rep_card`;
CREATE TABLE `field_rep_card` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_site_name`;
CREATE TABLE `field_site_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_site_name` (`pages_id`, `data`) VALUES('1018', 'CF Site Profile');

DROP TABLE IF EXISTS `field_site_options`;
CREATE TABLE `field_site_options` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_site_options` (`pages_id`, `data`, `sort`) VALUES('1018', '1082', '4');
INSERT INTO `field_site_options` (`pages_id`, `data`, `sort`) VALUES('1018', '1106', '6');
INSERT INTO `field_site_options` (`pages_id`, `data`, `sort`) VALUES('1018', '1111', '5');
INSERT INTO `field_site_options` (`pages_id`, `data`, `sort`) VALUES('1018', '1143', '2');
INSERT INTO `field_site_options` (`pages_id`, `data`, `sort`) VALUES('1018', '1144', '3');
INSERT INTO `field_site_options` (`pages_id`, `data`, `sort`) VALUES('1018', '1150', '0');
INSERT INTO `field_site_options` (`pages_id`, `data`, `sort`) VALUES('1018', '1157', '1');

DROP TABLE IF EXISTS `field_social_profiles`;
CREATE TABLE `field_social_profiles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_social_profiles` (`pages_id`, `data`, `sort`) VALUES('1018', '1129', '0');
INSERT INTO `field_social_profiles` (`pages_id`, `data`, `sort`) VALUES('1018', '1130', '1');
INSERT INTO `field_social_profiles` (`pages_id`, `data`, `sort`) VALUES('1018', '1131', '2');
INSERT INTO `field_social_profiles` (`pages_id`, `data`, `sort`) VALUES('1018', '1132', '3');
INSERT INTO `field_social_profiles` (`pages_id`, `data`, `sort`) VALUES('1018', '1133', '4');

DROP TABLE IF EXISTS `field_tags`;
CREATE TABLE `field_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1126', '1119', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1124', '1120', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1125', '1122', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1125', '1127', '0');

DROP TABLE IF EXISTS `field_text_1`;
CREATE TABLE `field_text_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1032', 'ProcessWire Site');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1083', 'Code 1');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1084', 'Code 2');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1129', 'https://twitter.com/processwire');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1130', 'https://facebook.com/');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1131', 'https://youtube.com/');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1132', 'https://instagram.com/');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1133', 'https://github.com/processwire/processwire');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1143', 'admin@gmail.com');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1144', '12-89-007');
INSERT INTO `field_text_1` (`pages_id`, `data`) VALUES('1157', 'Plac Defilad 1, 00-901 Warszawa');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Sitemap');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Components');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'About CF Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'About Components');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'About Processwire');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Call Processwire');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'rep_card');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1063', 'Privacy Policy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1081', 'Site Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1082', 'Body - Background Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1083', 'Google - Site Verification Code');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1084', 'Google - Analytics  Tracking Code');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1086', 'Admin - Clean Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1094', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1095', 'Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1096', 'Tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1100', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1101', 'Use the comments manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1102', 'Clone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1103', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1104', 'Clone a tree of pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1106', 'Blog - Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1111', 'Blog - Share Buttons ( AddToAny )');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1115', 'Export/Import');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1116', 'Explosion');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1117', 'Symphony');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1118', 'Data');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1119', 'Bomb');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1120', 'Geniue');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1122', 'Pulse');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1124', 'Genuine symphony');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1125', 'Phase data extended transaction');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1126', 'Think affordable artificial blast');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1127', 'Conver');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1128', 'Social Profiles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1129', 'Twitter');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1130', 'Facebook');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1131', 'Youtube');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1132', 'Instagram');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1133', 'Github');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1137', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1139', 'RSS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1140', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1142', 'Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1143', 'Contact - E-Mail');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1144', 'Contact - Phone');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1150', 'Contact - Save Messages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1154', 'Contact - Advanced Contact Form');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1157', 'Contact - Company address');

DROP TABLE IF EXISTS `field_url_1`;
CREATE TABLE `field_url_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1032', 'https://processwire.com/');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('90', '404');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('95', 'blog');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('96', 'blog-categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'blog-category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'blog-post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'blog-posts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'blog-rss');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'blog-tag');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'blog-tags');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'contact-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('87', 'custom_options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('86', 'options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('93', 'privacy-policy');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('92', 'repeater_rep_card');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('84', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('85', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('89', '_component-action');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', '_component-basic');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('91', '_component-card');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('94', '_component-gallery');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '116', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('84', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('84', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('84', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('84', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('84', '107', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('84', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('85', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('85', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('85', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('85', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('85', '107', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('85', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('86', '1', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('86', '99', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('86', '100', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('86', '101', '1', '{\"themeOffset\":\"s\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('86', '114', '5', '{\"themeOffset\":\"s\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('86', '123', '4', '{\"themeOffset\":\"s\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('86', '124', '6', '{\"description\":\"Delete unnecessary categories and tags that are not assigned to any blog entries\",\"label\":\"Delete unnecessary categories and tags\",\"themeOffset\":\"s\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('87', '1', '0', '{\"collapsed\":\"1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('87', '111', '1', '{\"description\":\"Additional options if required like analytics code or page url\",\"label\":\"Additional options\",\"themeOffset\":\"s\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '98', '1', '{\"collapsed\":\"0\",\"columnWidth\":60,\"rows\":15}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '104', '2', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('89', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('89', '98', '1', '{\"collapsed\":\"0\",\"rows\":8}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('89', '111', '2', '{\"columnWidth\":50,\"label\":\"Button Text\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('89', '112', '3', '{\"columnWidth\":50,\"label\":\"Button URL\",\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('90', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('90', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('91', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('91', '113', '1', '{\"themeOffset\":\"s\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('92', '98', '1', '{\"rows\":5}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('92', '111', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('93', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('94', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('94', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('95', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('96', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('96', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('96', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('96', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('96', '107', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('96', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '102', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '103', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '107', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '108', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '117', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '118', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '120', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '121', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '122', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '107', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '107', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '102', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '103', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '107', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '108', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '107', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '108', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '110', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '98', '1', '{\"rows\":15}');

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":2,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":9,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraAllowedContent\":\"ul(list)\\nli(custom-class)\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"htmlOptions\":[2]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeImage', 'logo', '0', 'Logo', '{\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"textformatters\":[\"TextformatterEntities\"],\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeImage', 'favicon', '0', 'Favicon', '{\"extensions\":\"gif jpg jpeg png ico\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"textformatters\":[\"TextformatterEntities\"],\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeText', 'site_name', '0', 'Site Name', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeTextarea', 'meta_description', '0', 'Meta Description', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":1,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'meta_title', '0', 'Meta Title', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":1,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png svg\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeFieldsetTabOpen', 'fieldset_seo', '0', 'SEO', '{\"closeFieldID\":108,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeFieldsetClose', 'fieldset_seo_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_seo\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":107}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypePageTable', 'components', '0', 'Custom content', '{\"template_id\":[34,37,35,40],\"parent_id\":1022,\"trashOnDelete\":1,\"unpubOnTrash\":0,\"unpubOnUnpub\":1,\"collapsed\":0,\"noclose\":0,\"columns\":\"title\\ntemplate.label\",\"icon\":\"plus-square\",\"nameFormat\":\"Ymd:His\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeText', 'text_1', '0', 'Text', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeURL', 'url_1', '0', 'URL 1', '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeRepeater', 'rep_card', '0', 'Repeater Card', '{\"template_id\":38,\"parent_id\":1035,\"repeaterFields\":[111,98],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"accordionMode\":1,\"repeaterTitle\":\"{text_1}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypePage', 'site_options', '0', 'Site Options', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1081,\"labelFieldName\":\"title\",\"collapsed\":0,\"size\":10,\"icon\":\"cogs\",\"usePageEdit\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeText', 'nick_name', '0', 'Nick Name', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypePage', 'tags', '0', 'Tags', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1096,\"template_id\":46,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"moderate\":0,\"useNotify\":0,\"deleteSpamDays\":3,\"depth\":0,\"dateFormat\":\"relative\",\"useVotes\":0,\"useStars\":0,\"schemaVersion\":6,\"redirectAfterPost\":1,\"useGravatar\":\"g\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypePage', 'categories', '0', 'Categories', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1095,\"template_id\":44,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"usePageEdit\":0,\"size\":10}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeFieldsetTabOpen', 'fieldset_document', '0', 'Document', '{\"closeFieldID\":121,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeFieldsetClose', 'fieldset_document_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fieldset_document\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":120}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeDatetime', 'date', '0', 'Date', '{\"dateOutputFormat\":\"j F Y\",\"collapsed\":0,\"size\":25,\"datepicker\":0,\"timeInputSelect\":0,\"dateInputFormat\":\"j F Y\",\"defaultToday\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypePage', 'social_profiles', '0', 'Social Profiles', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":1128,\"labelFieldName\":\"title\",\"collapsed\":0,\"usePageEdit\":1,\"icon\":\"twitter\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeCheckbox', 'checkbox', '0', 'Checkbox', '');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50,\"useTrash\":\"\",\"speed\":200,\"qtyType\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '{\"shortcutSort\":[43,44,46],\"noAutoPublish\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\",\"bookmarks\":{\"_0\":[]}}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"admin_theme\",\"email\",\"nick_name\",\"pass\"]}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":17,\"coreVersion\":\"3.0.137\"}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2019-07-31 13:00:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2019-07-31 13:00:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2019-07-31 13:00:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2019-07-31 13:00:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2019-07-31 13:00:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'InputfieldPageAutocomplete', '0', '', '2019-07-31 19:29:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'FieldtypePageTable', '3', '', '2019-08-01 13:49:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'InputfieldPageTable', '0', '', '2019-08-01 13:49:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1034,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-08-02 09:53:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'InputfieldRepeater', '0', '', '2019-08-02 09:53:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'FieldtypeComments', '1', '', '2019-08-05 18:11:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'InputfieldCommentsAdmin', '0', '', '2019-08-05 18:11:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'MarkupRSS', '0', '{\"title\":\"Untitled RSS Feed\",\"url\":\"\",\"description\":\"\",\"xsl\":\"\",\"css\":\"\",\"copyright\":\"\",\"ttl\":60,\"itemTitleField\":\"title\",\"itemDescriptionField\":\"\",\"itemDescriptionLength\":1024,\"itemDateField\":\"created\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-08-05 18:12:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'FieldtypeOptions', '1', '', '2019-08-05 18:13:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessCommentsManager', '1', '', '2019-08-05 18:14:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'ProcessPageClone', '11', '', '2019-08-05 18:14:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'ProcessPagesExportImport', '1', '', '2019-08-06 11:54:18');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=1164 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2019-08-07 20:33:03', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'proc', '1035', '2019-08-06 21:41:41', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2019-07-31 13:00:42', '40', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2019-07-31 13:00:44', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2019-07-31 13:00:43', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '36', 'http404', '1039', '2019-08-01 21:49:02', '41', '2019-07-31 13:00:19', '3', '2019-07-31 13:00:19', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'test', '1', '2019-08-04 16:10:06', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '2', '2019-07-31 13:00:19', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '41', '2019-07-31 13:00:19', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2019-07-31 13:00:19', '40', '2019-07-31 13:00:19', '40', '2019-07-31 13:00:19', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2019-07-31 13:00:19', '40', '2019-07-31 13:00:19', '40', '2019-07-31 13:00:19', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2019-07-31 13:00:37', '40', '2019-07-31 13:00:37', '40', '2019-07-31 13:00:37', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2019-07-31 13:00:37', '40', '2019-07-31 13:00:37', '40', '2019-07-31 13:00:37', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2019-07-31 13:00:40', '40', '2019-07-31 13:00:40', '40', '2019-07-31 13:00:40', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2019-07-31 13:00:40', '40', '2019-07-31 13:00:40', '40', '2019-07-31 13:00:40', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2019-07-31 13:00:40', '40', '2019-07-31 13:00:40', '40', '2019-07-31 13:00:40', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1', '30', 'search', '1029', '2019-07-31 22:12:54', '41', '2019-07-31 19:04:32', '41', '2019-07-31 19:04:34', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1', '31', 'sitemap', '1', '2019-08-01 21:47:25', '41', '2019-07-31 19:04:43', '41', '2019-07-31 19:04:44', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1', '32', 'options', '1057', '2019-08-08 22:38:46', '41', '2019-07-31 21:48:34', '41', '2019-07-31 21:48:36', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '2', '2', 'admin_options', '1', '2019-07-31 21:52:02', '41', '2019-07-31 21:51:53', '41', '2019-07-31 21:52:02', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '1018', '33', 'components', '1029', '2019-08-04 14:19:45', '41', '2019-08-01 13:40:54', '41', '2019-08-01 13:41:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1022', '34', 'about-cf-site-profile', '1', '2019-08-08 22:34:42', '41', '2019-08-01 15:59:05', '41', '2019-08-01 15:59:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1022', '34', 'components', '1', '2019-08-08 22:34:42', '41', '2019-08-01 17:54:47', '41', '2019-08-01 17:54:50', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1', '29', 'about-processwire', '1', '2019-08-02 12:27:49', '41', '2019-08-01 21:50:07', '41', '2019-08-01 21:50:17', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1022', '35', 'call-processwire', '1', '2019-08-08 22:34:42', '41', '2019-08-01 21:53:31', '41', '2019-08-01 21:53:36', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '2', '2', 'repeaters', '1036', '2019-08-02 09:53:48', '41', '2019-08-02 09:53:48', '41', '2019-08-02 09:53:48', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1034', '2', 'for-field-113', '17', '2019-08-02 09:54:20', '41', '2019-08-02 09:54:20', '41', '2019-08-02 09:54:20', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1063', '1', '39', 'privacy-policy', '1', '2019-08-07 20:19:10', '41', '2019-08-02 12:45:27', '41', '2019-08-02 13:06:16', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1081', '1018', '33', 'site-options', '1029', '2019-08-08 22:37:52', '41', '2019-08-04 08:19:35', '41', '2019-08-04 08:19:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1082', '1081', '33', 'background-image', '1029', '2019-08-08 13:09:44', '41', '2019-08-04 08:21:12', '41', '2019-08-04 08:21:12', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1083', '1081', '33', 'gw-code', '1025', '2019-08-08 13:08:39', '41', '2019-08-04 08:38:30', '41', '2019-08-04 08:38:33', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1084', '1081', '33', 'ga-code', '1025', '2019-08-08 13:08:52', '41', '2019-08-04 08:39:37', '41', '2019-08-04 08:39:44', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1086', '1081', '33', 'clean-admin-tree', '1029', '2019-08-08 22:37:52', '41', '2019-08-04 14:19:15', '41', '2019-08-04 14:19:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1094', '1', '41', 'blog', '1', '2019-08-07 20:33:03', '41', '2019-08-05 07:44:11', '41', '2019-08-05 07:44:13', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1095', '1094', '42', 'categories', '1', '2019-08-07 20:45:21', '41', '2019-08-05 07:44:32', '41', '2019-08-05 07:44:34', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1096', '1094', '45', 'tags', '1', '2019-08-07 20:45:24', '41', '2019-08-05 07:44:52', '41', '2019-08-05 07:44:54', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1100', '22', '2', 'comments', '1', '2019-08-05 18:14:16', '41', '2019-08-05 18:14:16', '41', '2019-08-05 18:14:16', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1101', '31', '5', 'comments-manager', '1', '2019-08-05 18:14:16', '41', '2019-08-05 18:14:16', '41', '2019-08-05 18:14:16', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1102', '3', '2', 'clone', '1024', '2019-08-05 18:14:28', '41', '2019-08-05 18:14:28', '41', '2019-08-05 18:14:28', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1103', '31', '5', 'page-clone', '1', '2019-08-05 18:14:28', '41', '2019-08-05 18:14:28', '41', '2019-08-05 18:14:28', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1104', '31', '5', 'page-clone-tree', '1', '2019-08-05 18:14:28', '41', '2019-08-05 18:14:28', '41', '2019-08-05 18:14:28', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1106', '1081', '33', 'comments', '1029', '2019-08-08 13:06:47', '41', '2019-08-05 21:20:40', '41', '2019-08-05 21:20:49', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1111', '1081', '33', 'share-buttons', '1029', '2019-08-08 13:06:19', '41', '2019-08-05 22:39:36', '41', '2019-08-05 22:39:44', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1115', '3', '2', 'export-import', '1', '2019-08-06 11:54:18', '41', '2019-08-06 11:54:18', '41', '2019-08-06 11:54:18', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1116', '1095', '44', 'explosion', '1', '2019-08-06 11:56:17', '41', '2019-08-06 11:56:15', '41', '2019-08-06 11:56:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1117', '1095', '44', 'symphony', '1', '2019-08-06 11:56:34', '41', '2019-08-06 11:56:30', '41', '2019-08-06 11:56:34', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1118', '1095', '44', 'data', '1', '2019-08-06 11:56:48', '41', '2019-08-06 11:56:46', '41', '2019-08-06 11:56:48', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1119', '1096', '46', 'bomb', '1', '2019-08-06 11:57:17', '41', '2019-08-06 11:57:13', '41', '2019-08-06 11:57:17', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1120', '1096', '46', 'geniue', '1', '2019-08-06 11:57:32', '41', '2019-08-06 11:57:28', '41', '2019-08-06 11:57:32', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1122', '1096', '46', 'pulse', '1', '2019-08-06 11:57:54', '41', '2019-08-06 11:57:50', '41', '2019-08-06 11:57:54', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1124', '1142', '43', 'genuine-symphony', '1', '2019-08-07 20:23:15', '41', '2019-07-13 21:36:05', '41', '2019-08-06 12:00:24', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1125', '1142', '43', 'phase-data-extended-transaction', '1', '2019-08-07 20:23:18', '41', '2019-07-13 21:55:35', '41', '2019-08-06 12:00:24', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1126', '1142', '43', 'think-affordable-artificial-blast', '1', '2019-08-08 22:34:42', '41', '2019-07-13 21:21:57', '41', '2019-08-06 12:00:24', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1127', '1096', '46', 'conver', '1', '2019-08-06 12:01:46', '41', '2019-08-06 12:01:46', '41', '2019-08-06 12:01:46', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1128', '1018', '33', 'social-profiles', '1029', '2019-08-06 16:44:39', '41', '2019-08-06 16:43:05', '41', '2019-08-06 16:43:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1129', '1128', '33', 'twitter', '1', '2019-08-06 17:06:10', '41', '2019-08-06 16:43:26', '41', '2019-08-06 16:43:30', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1130', '1128', '33', 'facebook', '1', '2019-08-06 17:06:13', '41', '2019-08-06 16:44:53', '41', '2019-08-06 16:44:57', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1131', '1128', '33', 'youtube', '1', '2019-08-06 17:06:25', '41', '2019-08-06 16:46:18', '41', '2019-08-06 17:06:22', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1132', '1128', '33', 'instagram', '1', '2019-08-06 17:06:18', '41', '2019-08-06 16:46:55', '41', '2019-08-06 16:46:58', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1133', '1128', '33', 'github', '1', '2019-08-06 17:06:28', '41', '2019-08-06 16:47:20', '41', '2019-08-06 16:47:23', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1137', '2', '2', 'admin_blog', '1', '2019-08-06 21:58:23', '41', '2019-08-06 21:41:06', '41', '2019-08-06 21:41:16', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1139', '1094', '47', 'rss', '1029', '2019-08-07 20:19:47', '41', '2019-08-06 21:53:18', '41', '2019-08-06 21:53:20', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1140', '1', '48', 'contact', '1', '2019-08-08 08:10:28', '41', '2019-08-07 10:13:21', '41', '2019-08-07 10:13:29', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1142', '1094', '49', 'posts', '1', '2019-08-07 20:45:19', '41', '2019-08-07 20:21:31', '41', '2019-08-07 20:21:37', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1143', '1081', '33', 'e-mail', '1025', '2019-08-08 18:22:39', '41', '2019-08-08 06:55:08', '41', '2019-08-08 06:55:20', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1144', '1081', '33', 'phone', '1025', '2019-08-08 18:22:47', '41', '2019-08-08 06:56:06', '41', '2019-08-08 06:56:22', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1150', '1081', '33', 'save-contact', '1029', '2019-08-08 13:07:30', '41', '2019-08-08 12:58:36', '41', '2019-08-08 12:58:47', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1154', '1081', '33', 'advanced-form', '1029', '2019-08-08 13:35:01', '41', '2019-08-08 13:34:41', '41', '2019-08-08 13:34:50', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1157', '1081', '33', 'company-address', '1025', '2019-08-08 19:25:14', '41', '2019-08-08 18:47:47', '41', '2019-08-08 18:47:53', '9');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '1', '2019-08-01 19:05:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2019-07-31 13:00:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2019-07-31 13:00:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2019-07-31 13:00:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2019-07-31 13:00:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2019-07-31 19:04:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2019-07-31 19:04:43');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '1', '2019-07-31 21:48:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '1', '2019-08-01 13:40:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2019-08-01 15:59:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2019-08-01 17:54:47');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2019-08-01 21:50:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '1', '2019-08-01 21:53:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1063', '1', '2019-08-02 12:45:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1081', '1', '2019-08-04 08:19:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1082', '1', '2019-08-04 08:21:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1083', '1', '2019-08-04 08:38:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1084', '1', '2019-08-04 08:39:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1086', '1', '2019-08-04 14:19:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1094', '1', '2019-08-05 07:44:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1095', '1', '2019-08-05 07:44:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1096', '1', '2019-08-05 07:44:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1101', '2', '2019-08-05 18:14:16');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1103', '2', '2019-08-05 18:14:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1104', '2', '2019-08-05 18:14:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1106', '1', '2019-08-05 21:20:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1111', '1', '2019-08-05 22:39:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1124', '1', '2019-08-06 12:00:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1125', '1', '2019-08-06 12:00:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1126', '1', '2019-08-06 12:00:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1128', '1', '2019-08-06 16:43:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1129', '1', '2019-08-06 16:43:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1130', '1', '2019-08-06 16:44:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1131', '1', '2019-08-06 16:46:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1132', '1', '2019-08-06 16:46:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1133', '1', '2019-08-06 16:47:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1139', '1', '2019-08-06 21:53:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1140', '1', '2019-08-07 10:13:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1142', '1', '2019-08-07 20:21:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1143', '1', '2019-08-08 07:33:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1144', '1', '2019-08-08 06:56:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1150', '1', '2019-08-08 12:58:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1154', '1', '2019-08-08 13:34:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1157', '1', '2019-08-08 18:47:47');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1022', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1034', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1035', '1034');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1081', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1095', '1094');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1096', '1094');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1128', '1018');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1142', '1094');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-home title\",\"compile\":3,\"modified\":1565083032,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1565120412,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1564927793}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"fa-book title\",\"compile\":3,\"modified\":1565081952,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('30', 'search', '84', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-search title\",\"compile\":3,\"modified\":1565082741,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('31', 'sitemap', '85', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-globe title\",\"compile\":3,\"modified\":1565082750,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('32', 'options', '86', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"compile\":3,\"tags\":\"-options\",\"modified\":1565295787}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('33', 'custom_options', '87', '0', '0', '{\"parentTemplates\":[32,33],\"slashUrls\":1,\"pageLabelField\":\"fa-cog title\",\"compile\":3,\"tags\":\"-options\",\"modified\":1565093577}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', '_component-basic', '88', '0', '0', '{\"parentTemplates\":[33],\"slashUrls\":1,\"pageLabelField\":\"fa-file-text-o title\",\"compile\":3,\"label\":\"Basic Content\",\"tags\":\"-components\",\"modified\":1564772120}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('35', '_component-action', '89', '0', '0', '{\"parentTemplates\":[33],\"slashUrls\":1,\"pageLabelField\":\"fa-paper-plane title\",\"compile\":3,\"label\":\"Call To Action\",\"tags\":\"-components\",\"modified\":1564759274}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('36', '404', '90', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-exclamation-circle title\",\"compile\":3,\"modified\":1565082037,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('37', '_component-card', '91', '0', '0', '{\"parentTemplates\":[33],\"slashUrls\":1,\"pageLabelField\":\"fa-clone title\",\"compile\":3,\"label\":\"Card\",\"tags\":\"-components\",\"modified\":1564759303}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('38', 'repeater_rep_card', '92', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1564732460}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('39', 'privacy-policy', '93', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-expeditedssl title\",\"compile\":3,\"modified\":1565093412,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('40', '_component-gallery', '94', '0', '0', '{\"parentTemplates\":[33],\"slashUrls\":1,\"pageLabelField\":\"fa-file-image-o title\",\"compile\":3,\"label\":\"Gallery\",\"tags\":\"-components\",\"modified\":1564841229}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('41', 'blog', '95', '0', '0', '{\"noParents\":-1,\"childTemplates\":[49,42,45,47],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-paw title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1565202605,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('42', 'blog-categories', '96', '0', '0', '{\"noParents\":-1,\"childTemplates\":[44],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-plus-square title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1565207857,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'blog-post', '97', '0', '0', '{\"parentTemplates\":[49],\"slashUrls\":1,\"pageLabelField\":\"fa-quote-left title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1565296447,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'blog-category', '98', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[42],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-plus-circle title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1565207805,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'blog-tags', '99', '0', '0', '{\"noParents\":-1,\"childTemplates\":[46],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-tags title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1565207821,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'blog-tag', '100', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[45],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-tag title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1565207813,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'blog-rss', '101', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-rss title\",\"compile\":3,\"modified\":1565121145,\"noAppendTemplateFile\":1,\"contentType\":\"xml\",\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'contact', '102', '0', '0', '{\"sortfield\":\"-created\",\"noParents\":-1,\"childTemplates\":[50],\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-o title\",\"compile\":3,\"tags\":\"-contact\",\"modified\":1565294231,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'blog-posts', '103', '0', '0', '{\"noParents\":-1,\"childTemplates\":[43],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-rocket title\",\"compile\":3,\"tags\":\"-blog\",\"modified\":1565203432,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'contact-item', '104', '0', '0', '{\"parentTemplates\":[48],\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-open title\",\"compile\":3,\"tags\":\"-contact\",\"modified\":1565279663}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":37,"numCreateTables":43,"numInserts":692,"numSeconds":0}