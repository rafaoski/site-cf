<?php namespace ProcessWire;

/**
 * https://processwire.com/talk/topic/352-creating-pages-via-api/
 * https://processwire.com/api/variables/pages/
 * https://processwire.com/talk/topic/4383-how-to-set-language-active-via-api/
 * https://processwire.com/api/ref/languages/get-default/
 *
 *
 */

if( !setting('save-contact') ) return;

// save to log that can be viewed via the pw backend
$p = new Page();
// remove fields formatting
$p->of(false);
// Page template single item
$p->template = 'contact-item';
// Page parent to save messages
$p->parent = page()->id; // or use id => $p->parent = 1140;
// Check if languages ​​exist
if(!page()->getLanguages()) {
// Save Page with e-mail, date time, user ip
$p->title = $name . ' - ' . $email . ' - ' . date("Y.m.d | H:i");
// Save Message
$p->body = $bodyHtml;

} else {
// Save Multi Language to default field
$default = $languages->get("default"); // retrive Default
// Save to field title with default Language. Page with prefix lang (EN, GB), e-mail, date time
$p->title->setLanguageValue($default, $name . ' - ' . $email . ' - ' . date("Y.m.d | H:i"));
// Save to field body with default Language
$p->body->setLanguageValue($default, $bodyHtml);
}
// Add status hidden ( no show pages in sitemap or sitemap.xml ), https://processwire.com/api/ref/page/add-status/
$p->addStatus(Page::statusHidden);
// Finish => Save Page
$p->save();