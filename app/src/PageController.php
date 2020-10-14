<?php

namespace {

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\View\Requirements;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Control\Email\Email;

    class PageController extends ContentController
    {

    private static $allowed_actions = ['ContactForm'];

    public function ContactForm() 
    { 
        $fields = new FieldList( 
            TextField::create('Name','')->setAttribute('placeholder', 'Your name'),
            EmailField::create('Email', '')->setAttribute('placeholder', 'Your email'),
            TextareaField::create('Message', '')->setAttribute('placeholder', 'Your Message')
        ); 
        $actions = new FieldList( 
            new FormAction('submit', 'Submit') 
        ); 

    $validator = new RequiredFields('Name', 'Email', 'Message');
    $form = Form::create($this, 'ContactForm', $fields, $actions, $validator);
    $form->enableSpamProtection();
    return $form;
    }

     public function submit($data, $form) 
    { 
        $email = new Email(); 
        $email->setTo('stannard.tim@gmail.com'); 
        $email->setFrom($data['Email']); 
        $email->setSubject("Contact Message from {$data["Name"]} | TS Portfolio"); 
         
        $messageBody = " 
            <p><strong>Name:</strong> {$data['Name']}</p> 
            <p><strong>Message:</strong> {$data['Message']}</p> 
        "; 
        $email->setBody($messageBody); 
        $email->send(); 
        return [
            'ContactForm' => 'Submitted successfully. Thank you for your message!'
        ];
    }

        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */

        // private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            Requirements::css('css/bootstrap.min.css');
            Requirements::css('css/animate.css');
            Requirements::css('css/font-awesome.min.css');
            Requirements::css('css/style.css');
            Requirements::javascript('js/jquery.js');
            Requirements::javascript('js/bootstrap.min.js');
            Requirements::javascript('js/smoothscroll.js');
            Requirements::javascript('js/wow.min.js');
            Requirements::javascript('js/custom.js');
        }

    }
}

